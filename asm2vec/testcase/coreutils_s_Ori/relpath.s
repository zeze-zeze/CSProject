	.file	"relpath.c"
	.text
.Ltext0:
	.type	path_common_prefix, @function
path_common_prefix:
.LFB46:
	.file 1 "src/relpath.c"
	.loc 1 31 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 32 7
	movl	$0, -8(%rbp)
	.loc 1 33 7
	movl	$0, -4(%rbp)
	.loc 1 38 13
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 38 25
	cmpb	$47, %al
	sete	%dl
	.loc 1 38 34
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 38 25
	cmpb	$47, %al
	sete	%al
	xorl	%edx, %eax
	.loc 1 38 6
	testb	%al, %al
	je	.L4
	.loc 1 39 12
	movl	$0, %eax
	jmp	.L3
.L8:
	.loc 1 43 11
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 1 43 21
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 43 10
	cmpb	%al, %dl
	jne	.L13
	.loc 1 45 11
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 45 10
	cmpb	$47, %al
	jne	.L7
	.loc 1 46 13
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.L7:
	.loc 1 47 12
	addq	$1, -24(%rbp)
	.loc 1 48 12
	addq	$1, -32(%rbp)
	.loc 1 49 8
	addl	$1, -8(%rbp)
.L4:
	.loc 1 41 10
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 41 9
	testb	%al, %al
	je	.L6
	.loc 1 41 20 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 41 17 discriminator 1
	testb	%al, %al
	jne	.L8
	jmp	.L6
.L13:
	.loc 1 44 9
	nop
.L6:
	.loc 1 52 9
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 52 6
	testb	%al, %al
	jne	.L9
	.loc 1 52 20 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 52 16 discriminator 1
	testb	%al, %al
	je	.L10
.L9:
	.loc 1 53 12
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 53 7
	testb	%al, %al
	jne	.L11
	.loc 1 53 22 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 53 19 discriminator 1
	cmpb	$47, %al
	je	.L10
.L11:
	.loc 1 54 12
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 54 7
	testb	%al, %al
	jne	.L12
	.loc 1 54 22 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 54 19 discriminator 1
	cmpb	$47, %al
	jne	.L12
.L10:
	.loc 1 55 9
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.L12:
	.loc 1 57 10
	movl	-4(%rbp), %eax
.L3:
	.loc 1 58 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	path_common_prefix, .-path_common_prefix
	.type	buffer_or_output, @function
buffer_or_output:
.LFB47:
	.loc 1 67 1
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
	.loc 1 68 7
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 68 6
	testq	%rax, %rax
	je	.L15
.LBB2:
	.loc 1 70 21
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -8(%rbp)
	.loc 1 71 19
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 71 10
	cmpq	%rax, -8(%rbp)
	jb	.L16
	.loc 1 72 16
	movl	$1, %eax
	jmp	.L17
.L16:
	.loc 1 73 7
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 1 74 13
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 75 13
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.LBE2:
	jmp	.L18
.L15:
	.loc 1 79 7
	movq	stdout(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L18:
	.loc 1 82 10
	movl	$0, %eax
.L17:
	.loc 1 83 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	buffer_or_output, .-buffer_or_output
	.section	.rodata
.LC0:
	.string	".."
.LC1:
	.string	"/.."
.LC2:
	.string	"/"
.LC3:
	.string	"."
.LC4:
	.string	"generating relative path"
.LC5:
	.string	"%s"
	.text
	.globl	relpath
	.type	relpath, @function
relpath:
.LFB48:
	.loc 1 89 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	.loc 1 90 8
	movb	$0, -21(%rbp)
	.loc 1 93 22
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	path_common_prefix
	movl	%eax, -20(%rbp)
	.loc 1 94 6
	cmpl	$0, -20(%rbp)
	jne	.L20
	.loc 1 95 12
	movl	$0, %eax
	jmp	.L21
.L20:
	.loc 1 97 41
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 97 15
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 98 40
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	.loc 1 98 15
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 101 7
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 101 6
	cmpb	$47, %al
	jne	.L22
	.loc 1 102 17
	addq	$1, -16(%rbp)
.L22:
	.loc 1 103 7
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 103 6
	cmpb	$47, %al
	jne	.L23
	.loc 1 104 17
	addq	$1, -8(%rbp)
.L23:
	.loc 1 108 7
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 108 6
	testb	%al, %al
	je	.L24
	.loc 1 110 18
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	call	buffer_or_output
	.loc 1 110 15
	orb	-21(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -21(%rbp)
	.loc 1 111 7
	jmp	.L25
.L27:
	.loc 1 113 15
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 113 14
	cmpb	$47, %al
	jne	.L26
	.loc 1 114 24
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	call	buffer_or_output
	.loc 1 114 21
	orb	-21(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -21(%rbp)
.L26:
	.loc 1 111 29
	addq	$1, -16(%rbp)
.L25:
	.loc 1 111 14 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 111 7 discriminator 1
	testb	%al, %al
	jne	.L27
	.loc 1 117 11
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 117 10
	testb	%al, %al
	je	.L28
	.loc 1 119 22
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	call	buffer_or_output
	.loc 1 119 19
	orb	-21(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -21(%rbp)
	.loc 1 120 22
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	buffer_or_output
	.loc 1 120 19
	orb	-21(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -21(%rbp)
	jmp	.L28
.L24:
	.loc 1 125 38
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 125 20
	testb	%al, %al
	je	.L29
	.loc 1 125 20 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	jmp	.L30
.L29:
	.loc 1 125 20 discriminator 2
	leaq	.LC3(%rip), %rax
.L30:
	.loc 1 125 20 discriminator 4
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	buffer_or_output
	.loc 1 125 17 is_stmt 1 discriminator 4
	orb	-21(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -21(%rbp)
.L28:
	.loc 1 129 6
	cmpb	$0, -21(%rbp)
	je	.L31
	.loc 1 130 5
	leaq	.LC4(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rdx
	movl	$36, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L31:
	.loc 1 132 3
	movzbl	-21(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 1 132 10
	andl	$1, %eax
.L21:
	.loc 1 133 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	relpath, .-relpath
.Letext0:
	.file 2 "./lib/error.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 5 "./lib/sys/select.h"
	.file 6 "/usr/include/time.h"
	.file 7 "/usr/include/signal.h"
	.file 8 "/usr/include/unistd.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 10 "/usr/include/errno.h"
	.file 11 "src/version.h"
	.file 12 "./lib/exitfail.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 15 "/usr/include/stdio.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 17 "./lib/version-etc.h"
	.file 18 "./lib/progname.h"
	.file 19 "./lib/quotearg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x67d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF104
	.byte	0xc
	.long	.LASF105
	.long	.LASF106
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.uleb128 0x3
	.long	.LASF0
	.byte	0x2
	.byte	0x32
	.byte	0xf
	.long	0x3a
	.uleb128 0x4
	.byte	0x8
	.long	0x2d
	.uleb128 0x3
	.long	.LASF1
	.byte	0x2
	.byte	0x35
	.byte	0x15
	.long	0x4c
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x39
	.byte	0xc
	.long	0x5f
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	0x5f
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x8
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x8e
	.uleb128 0x8
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x8e
	.uleb128 0x9
	.byte	0x8
	.uleb128 0x4
	.byte	0x8
	.long	0xb5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xa
	.long	0xb5
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xd1
	.byte	0x17
	.long	0x79
	.uleb128 0xb
	.long	.LASF14
	.byte	0x5
	.value	0x30c
	.byte	0x1
	.long	0x5f
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x4
	.byte	0x8
	.long	0xbc
	.uleb128 0xa
	.long	0xe8
	.uleb128 0xc
	.long	0xaf
	.long	0x103
	.uleb128 0xd
	.long	0x79
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF17
	.byte	0x6
	.byte	0x9f
	.byte	0xe
	.long	0xf3
	.uleb128 0x3
	.long	.LASF18
	.byte	0x6
	.byte	0xa0
	.byte	0xc
	.long	0x5f
	.uleb128 0x3
	.long	.LASF19
	.byte	0x6
	.byte	0xa1
	.byte	0x11
	.long	0x8e
	.uleb128 0x3
	.long	.LASF20
	.byte	0x6
	.byte	0xa6
	.byte	0xe
	.long	0xf3
	.uleb128 0x3
	.long	.LASF21
	.byte	0x6
	.byte	0xae
	.byte	0xc
	.long	0x5f
	.uleb128 0x3
	.long	.LASF22
	.byte	0x6
	.byte	0xaf
	.byte	0x11
	.long	0x8e
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.value	0x112
	.byte	0xc
	.long	0x5f
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.long	.LASF24
	.uleb128 0xc
	.long	0xee
	.long	0x16f
	.uleb128 0xd
	.long	0x79
	.byte	0x40
	.byte	0
	.uleb128 0xa
	.long	0x15f
	.uleb128 0xb
	.long	.LASF25
	.byte	0x7
	.value	0x11e
	.byte	0x1a
	.long	0x16f
	.uleb128 0xb
	.long	.LASF26
	.byte	0x7
	.value	0x11f
	.byte	0x1a
	.long	0x16f
	.uleb128 0xb
	.long	.LASF27
	.byte	0x8
	.value	0x21f
	.byte	0xf
	.long	0x19b
	.uleb128 0x4
	.byte	0x8
	.long	0xaf
	.uleb128 0xb
	.long	.LASF28
	.byte	0x8
	.value	0x221
	.byte	0xf
	.long	0x19b
	.uleb128 0x3
	.long	.LASF29
	.byte	0x9
	.byte	0x24
	.byte	0xe
	.long	0xaf
	.uleb128 0x3
	.long	.LASF30
	.byte	0x9
	.byte	0x32
	.byte	0xc
	.long	0x5f
	.uleb128 0x3
	.long	.LASF31
	.byte	0x9
	.byte	0x37
	.byte	0xc
	.long	0x5f
	.uleb128 0x3
	.long	.LASF32
	.byte	0x9
	.byte	0x3b
	.byte	0xc
	.long	0x5f
	.uleb128 0x3
	.long	.LASF33
	.byte	0xa
	.byte	0x2d
	.byte	0xe
	.long	0xaf
	.uleb128 0x3
	.long	.LASF34
	.byte	0xa
	.byte	0x2e
	.byte	0xe
	.long	0xaf
	.uleb128 0x3
	.long	.LASF35
	.byte	0xb
	.byte	0x1
	.byte	0x14
	.long	0xe8
	.uleb128 0x3
	.long	.LASF36
	.byte	0xc
	.byte	0x12
	.byte	0x15
	.long	0x66
	.uleb128 0xe
	.long	.LASF107
	.byte	0xd8
	.byte	0xd
	.byte	0x31
	.byte	0x8
	.long	0x395
	.uleb128 0xf
	.long	.LASF37
	.byte	0xd
	.byte	0x33
	.byte	0x7
	.long	0x5f
	.byte	0
	.uleb128 0xf
	.long	.LASF38
	.byte	0xd
	.byte	0x36
	.byte	0x9
	.long	0xaf
	.byte	0x8
	.uleb128 0xf
	.long	.LASF39
	.byte	0xd
	.byte	0x37
	.byte	0x9
	.long	0xaf
	.byte	0x10
	.uleb128 0xf
	.long	.LASF40
	.byte	0xd
	.byte	0x38
	.byte	0x9
	.long	0xaf
	.byte	0x18
	.uleb128 0xf
	.long	.LASF41
	.byte	0xd
	.byte	0x39
	.byte	0x9
	.long	0xaf
	.byte	0x20
	.uleb128 0xf
	.long	.LASF42
	.byte	0xd
	.byte	0x3a
	.byte	0x9
	.long	0xaf
	.byte	0x28
	.uleb128 0xf
	.long	.LASF43
	.byte	0xd
	.byte	0x3b
	.byte	0x9
	.long	0xaf
	.byte	0x30
	.uleb128 0xf
	.long	.LASF44
	.byte	0xd
	.byte	0x3c
	.byte	0x9
	.long	0xaf
	.byte	0x38
	.uleb128 0xf
	.long	.LASF45
	.byte	0xd
	.byte	0x3d
	.byte	0x9
	.long	0xaf
	.byte	0x40
	.uleb128 0xf
	.long	.LASF46
	.byte	0xd
	.byte	0x40
	.byte	0x9
	.long	0xaf
	.byte	0x48
	.uleb128 0xf
	.long	.LASF47
	.byte	0xd
	.byte	0x41
	.byte	0x9
	.long	0xaf
	.byte	0x50
	.uleb128 0xf
	.long	.LASF48
	.byte	0xd
	.byte	0x42
	.byte	0x9
	.long	0xaf
	.byte	0x58
	.uleb128 0xf
	.long	.LASF49
	.byte	0xd
	.byte	0x44
	.byte	0x16
	.long	0x3ae
	.byte	0x60
	.uleb128 0xf
	.long	.LASF50
	.byte	0xd
	.byte	0x46
	.byte	0x14
	.long	0x3b4
	.byte	0x68
	.uleb128 0xf
	.long	.LASF51
	.byte	0xd
	.byte	0x48
	.byte	0x7
	.long	0x5f
	.byte	0x70
	.uleb128 0xf
	.long	.LASF52
	.byte	0xd
	.byte	0x49
	.byte	0x7
	.long	0x5f
	.byte	0x74
	.uleb128 0xf
	.long	.LASF53
	.byte	0xd
	.byte	0x4a
	.byte	0xb
	.long	0x95
	.byte	0x78
	.uleb128 0xf
	.long	.LASF54
	.byte	0xd
	.byte	0x4d
	.byte	0x12
	.long	0x72
	.byte	0x80
	.uleb128 0xf
	.long	.LASF55
	.byte	0xd
	.byte	0x4e
	.byte	0xf
	.long	0x80
	.byte	0x82
	.uleb128 0xf
	.long	.LASF56
	.byte	0xd
	.byte	0x4f
	.byte	0x8
	.long	0x3ba
	.byte	0x83
	.uleb128 0xf
	.long	.LASF57
	.byte	0xd
	.byte	0x51
	.byte	0xf
	.long	0x3ca
	.byte	0x88
	.uleb128 0xf
	.long	.LASF58
	.byte	0xd
	.byte	0x59
	.byte	0xd
	.long	0xa1
	.byte	0x90
	.uleb128 0xf
	.long	.LASF59
	.byte	0xd
	.byte	0x5b
	.byte	0x17
	.long	0x3d5
	.byte	0x98
	.uleb128 0xf
	.long	.LASF60
	.byte	0xd
	.byte	0x5c
	.byte	0x19
	.long	0x3e0
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF61
	.byte	0xd
	.byte	0x5d
	.byte	0x14
	.long	0x3b4
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF62
	.byte	0xd
	.byte	0x5e
	.byte	0x9
	.long	0xad
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF63
	.byte	0xd
	.byte	0x5f
	.byte	0xa
	.long	0xc1
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF64
	.byte	0xd
	.byte	0x60
	.byte	0x7
	.long	0x5f
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF65
	.byte	0xd
	.byte	0x62
	.byte	0x8
	.long	0x3e6
	.byte	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0xe
	.byte	0x7
	.byte	0x19
	.long	0x20e
	.uleb128 0x10
	.long	.LASF108
	.byte	0xd
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF67
	.uleb128 0x4
	.byte	0x8
	.long	0x3a9
	.uleb128 0x4
	.byte	0x8
	.long	0x20e
	.uleb128 0xc
	.long	0xb5
	.long	0x3ca
	.uleb128 0xd
	.long	0x79
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x3a1
	.uleb128 0x11
	.long	.LASF68
	.uleb128 0x4
	.byte	0x8
	.long	0x3d0
	.uleb128 0x11
	.long	.LASF69
	.uleb128 0x4
	.byte	0x8
	.long	0x3db
	.uleb128 0xc
	.long	0xb5
	.long	0x3f6
	.uleb128 0xd
	.long	0x79
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.long	.LASF70
	.byte	0xf
	.byte	0x89
	.byte	0xe
	.long	0x402
	.uleb128 0x4
	.byte	0x8
	.long	0x395
	.uleb128 0x3
	.long	.LASF71
	.byte	0xf
	.byte	0x8a
	.byte	0xe
	.long	0x402
	.uleb128 0x3
	.long	.LASF72
	.byte	0xf
	.byte	0x8b
	.byte	0xe
	.long	0x402
	.uleb128 0x3
	.long	.LASF73
	.byte	0x10
	.byte	0x1a
	.byte	0xc
	.long	0x5f
	.uleb128 0xc
	.long	0xee
	.long	0x437
	.uleb128 0x12
	.byte	0
	.uleb128 0xa
	.long	0x42c
	.uleb128 0x3
	.long	.LASF74
	.byte	0x10
	.byte	0x1b
	.byte	0x1a
	.long	0x437
	.uleb128 0x3
	.long	.LASF75
	.byte	0x10
	.byte	0x1e
	.byte	0xc
	.long	0x5f
	.uleb128 0x3
	.long	.LASF76
	.byte	0x10
	.byte	0x1f
	.byte	0x1a
	.long	0x437
	.uleb128 0xc
	.long	0xbc
	.long	0x46b
	.uleb128 0x12
	.byte	0
	.uleb128 0xa
	.long	0x460
	.uleb128 0x3
	.long	.LASF77
	.byte	0x11
	.byte	0x19
	.byte	0x13
	.long	0x46b
	.uleb128 0x3
	.long	.LASF78
	.byte	0x12
	.byte	0x20
	.byte	0x14
	.long	0xe8
	.uleb128 0x13
	.long	.LASF109
	.byte	0x7
	.byte	0x4
	.long	0x4c
	.byte	0x13
	.byte	0x20
	.byte	0x6
	.long	0x4dd
	.uleb128 0x14
	.long	.LASF79
	.byte	0
	.uleb128 0x14
	.long	.LASF80
	.byte	0x1
	.uleb128 0x14
	.long	.LASF81
	.byte	0x2
	.uleb128 0x14
	.long	.LASF82
	.byte	0x3
	.uleb128 0x14
	.long	.LASF83
	.byte	0x4
	.uleb128 0x14
	.long	.LASF84
	.byte	0x5
	.uleb128 0x14
	.long	.LASF85
	.byte	0x6
	.uleb128 0x14
	.long	.LASF86
	.byte	0x7
	.uleb128 0x14
	.long	.LASF87
	.byte	0x8
	.uleb128 0x14
	.long	.LASF88
	.byte	0x9
	.uleb128 0x14
	.long	.LASF89
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.long	0x488
	.uleb128 0xb
	.long	.LASF90
	.byte	0x13
	.value	0x10b
	.byte	0x1a
	.long	0x437
	.uleb128 0xc
	.long	0x4dd
	.long	0x4fa
	.uleb128 0x12
	.byte	0
	.uleb128 0xa
	.long	0x4ef
	.uleb128 0xb
	.long	.LASF91
	.byte	0x13
	.value	0x10c
	.byte	0x21
	.long	0x4fa
	.uleb128 0x15
	.long	.LASF110
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x5a9
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a9
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.byte	0x58
	.byte	0x16
	.long	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.byte	0x58
	.byte	0x2d
	.long	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x58
	.byte	0x3f
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.byte	0x58
	.byte	0x4b
	.long	0xc1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.long	.LASF94
	.byte	0x1
	.byte	0x5a
	.byte	0x8
	.long	0x5a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x18
	.long	.LASF95
	.byte	0x1
	.byte	0x5d
	.byte	0x7
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF96
	.byte	0x1
	.byte	0x61
	.byte	0xf
	.long	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF97
	.byte	0x1
	.byte	0x62
	.byte	0xf
	.long	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.long	.LASF98
	.uleb128 0x19
	.long	.LASF111
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.long	0x5a9
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x621
	.uleb128 0x17
	.string	"str"
	.byte	0x1
	.byte	0x42
	.byte	0x1f
	.long	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF99
	.byte	0x1
	.byte	0x42
	.byte	0x2b
	.long	0x19b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF100
	.byte	0x1
	.byte	0x42
	.byte	0x39
	.long	0x621
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x18
	.long	.LASF101
	.byte	0x1
	.byte	0x46
	.byte	0xe
	.long	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xc1
	.uleb128 0x1b
	.long	.LASF112
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.long	0x5f
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF102
	.byte	0x1
	.byte	0x1e
	.byte	0x21
	.long	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF103
	.byte	0x1
	.byte	0x1e
	.byte	0x34
	.long	0xe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x20
	.byte	0x7
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.byte	0x21
	.byte	0x7
	.long	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x17
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
.LASF83:
	.string	"shell_escape_always_quoting_style"
.LASF30:
	.string	"optind"
.LASF29:
	.string	"optarg"
.LASF53:
	.string	"_old_offset"
.LASF28:
	.string	"environ"
.LASF96:
	.string	"relto_suffix"
.LASF78:
	.string	"program_name"
.LASF91:
	.string	"quoting_style_vals"
.LASF73:
	.string	"sys_nerr"
.LASF48:
	.string	"_IO_save_end"
.LASF5:
	.string	"short unsigned int"
.LASF8:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF108:
	.string	"_IO_lock_t"
.LASF58:
	.string	"_offset"
.LASF17:
	.string	"__tzname"
.LASF42:
	.string	"_IO_write_ptr"
.LASF97:
	.string	"fname_suffix"
.LASF112:
	.string	"path_common_prefix"
.LASF44:
	.string	"_IO_buf_base"
.LASF62:
	.string	"_freeres_buf"
.LASF27:
	.string	"__environ"
.LASF105:
	.string	"src/relpath.c"
.LASF49:
	.string	"_markers"
.LASF26:
	.string	"sys_siglist"
.LASF22:
	.string	"timezone"
.LASF110:
	.string	"relpath"
.LASF21:
	.string	"daylight"
.LASF31:
	.string	"opterr"
.LASF76:
	.string	"_sys_errlist"
.LASF90:
	.string	"quoting_style_args"
.LASF72:
	.string	"stderr"
.LASF32:
	.string	"optopt"
.LASF16:
	.string	"long long int"
.LASF106:
	.string	"/root/coreutils"
.LASF19:
	.string	"__timezone"
.LASF57:
	.string	"_lock"
.LASF18:
	.string	"__daylight"
.LASF9:
	.string	"long int"
.LASF93:
	.string	"can_reldir"
.LASF86:
	.string	"escape_quoting_style"
.LASF54:
	.string	"_cur_column"
.LASF1:
	.string	"error_message_count"
.LASF75:
	.string	"_sys_nerr"
.LASF88:
	.string	"clocale_quoting_style"
.LASF55:
	.string	"_vtable_offset"
.LASF107:
	.string	"_IO_FILE"
.LASF24:
	.string	"long double"
.LASF33:
	.string	"program_invocation_name"
.LASF4:
	.string	"unsigned char"
.LASF81:
	.string	"shell_always_quoting_style"
.LASF111:
	.string	"buffer_or_output"
.LASF89:
	.string	"custom_quoting_style"
.LASF95:
	.string	"common_index"
.LASF7:
	.string	"signed char"
.LASF0:
	.string	"error_print_progname"
.LASF15:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF67:
	.string	"_IO_marker"
.LASF56:
	.string	"_shortbuf"
.LASF109:
	.string	"quoting_style"
.LASF41:
	.string	"_IO_write_base"
.LASF65:
	.string	"_unused2"
.LASF77:
	.string	"version_etc_copyright"
.LASF38:
	.string	"_IO_read_ptr"
.LASF51:
	.string	"_fileno"
.LASF25:
	.string	"_sys_siglist"
.LASF45:
	.string	"_IO_buf_end"
.LASF80:
	.string	"shell_quoting_style"
.LASF82:
	.string	"shell_escape_quoting_style"
.LASF84:
	.string	"c_quoting_style"
.LASF12:
	.string	"char"
.LASF92:
	.string	"can_fname"
.LASF2:
	.string	"error_one_per_line"
.LASF60:
	.string	"_wide_data"
.LASF61:
	.string	"_freeres_list"
.LASF35:
	.string	"Version"
.LASF98:
	.string	"_Bool"
.LASF63:
	.string	"__pad5"
.LASF100:
	.string	"plen"
.LASF34:
	.string	"program_invocation_short_name"
.LASF23:
	.string	"getdate_err"
.LASF6:
	.string	"long unsigned int"
.LASF43:
	.string	"_IO_write_end"
.LASF11:
	.string	"__off64_t"
.LASF79:
	.string	"literal_quoting_style"
.LASF10:
	.string	"__off_t"
.LASF20:
	.string	"tzname"
.LASF50:
	.string	"_chain"
.LASF69:
	.string	"_IO_wide_data"
.LASF104:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF47:
	.string	"_IO_backup_base"
.LASF70:
	.string	"stdin"
.LASF87:
	.string	"locale_quoting_style"
.LASF52:
	.string	"_flags2"
.LASF64:
	.string	"_mode"
.LASF40:
	.string	"_IO_read_base"
.LASF101:
	.string	"slen"
.LASF59:
	.string	"_codecvt"
.LASF46:
	.string	"_IO_save_base"
.LASF74:
	.string	"sys_errlist"
.LASF14:
	.string	"_gl_cxxalias_dummy"
.LASF36:
	.string	"exit_failure"
.LASF66:
	.string	"FILE"
.LASF39:
	.string	"_IO_read_end"
.LASF85:
	.string	"c_maybe_quoting_style"
.LASF37:
	.string	"_flags"
.LASF94:
	.string	"buf_err"
.LASF71:
	.string	"stdout"
.LASF68:
	.string	"_IO_codecvt"
.LASF99:
	.string	"pbuf"
.LASF102:
	.string	"path1"
.LASF103:
	.string	"path2"
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
