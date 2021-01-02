	.file	"force-link.c"
	.text
.Ltext0:
	.section	.rodata
	.align 8
	.type	simple_pattern, @object
	.size	simple_pattern, 9
simple_pattern:
	.string	"CuXXXXXX"
	.text
	.type	samedir_template, @function
samedir_template:
.LFB46:
	.file 1 "src/force-link.c"
	.loc 1 52 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 53 25
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	.loc 1 53 13
	subq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 54 33
	movq	-16(%rbp), %rax
	.loc 1 54 10
	addq	$9, %rax
	movq	%rax, -8(%rbp)
	.loc 1 56 6
	cmpq	$256, -8(%rbp)
	ja	.L2
	.loc 1 57 12
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L3
.L2:
	.loc 1 60 16
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	.loc 1 61 10
	cmpq	$0, -24(%rbp)
	jne	.L3
	.loc 1 62 16
	movq	-24(%rbp), %rax
	jmp	.L4
.L3:
	.loc 1 64 11
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mempcpy@PLT
	.loc 1 64 3
	movq	simple_pattern(%rip), %rdx
	movq	%rdx, (%rax)
	movzbl	8+simple_pattern(%rip), %edx
	movb	%dl, 8(%rax)
	.loc 1 65 10
	movq	-24(%rbp), %rax
.L4:
	.loc 1 66 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	samedir_template, .-samedir_template
	.type	try_link, @function
try_link:
.LFB47:
	.loc 1 81 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 82 20
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 83 10
	movq	-8(%rbp), %rax
	movl	20(%rax), %edi
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	%edi, %r8d
	movl	%eax, %edi
	call	linkat@PLT
	.loc 1 84 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	try_link, .-try_link
	.globl	force_linkat
	.type	force_linkat, @function
force_linkat:
.LFB48:
	.loc 1 98 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movl	%edi, -324(%rbp)
	movq	%rsi, -336(%rbp)
	movl	%edx, -328(%rbp)
	movq	%rcx, -344(%rbp)
	movl	%r8d, -348(%rbp)
	movl	%r9d, %eax
	movb	%al, -352(%rbp)
	.loc 1 98 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 99 6
	cmpl	$0, 16(%rbp)
	jns	.L8
	.loc 1 100 21
	movl	-348(%rbp), %edi
	movq	-344(%rbp), %rcx
	movl	-328(%rbp), %edx
	movq	-336(%rbp), %rsi
	movl	-324(%rbp), %eax
	movl	%edi, %r8d
	movl	%eax, %edi
	call	linkat@PLT
	.loc 1 101 25
	testl	%eax, %eax
	je	.L9
	.loc 1 101 27 discriminator 1
	call	__errno_location@PLT
	.loc 1 101 25 discriminator 1
	movl	(%rax), %eax
	jmp	.L10
.L9:
	.loc 1 101 25 is_stmt 0 discriminator 2
	movl	$0, %eax
.L10:
	.loc 1 100 18 is_stmt 1
	movl	%eax, 16(%rbp)
.L8:
	.loc 1 102 7
	movzbl	-352(%rbp), %eax
	xorl	$1, %eax
	.loc 1 102 6
	testb	%al, %al
	jne	.L11
	.loc 1 102 14 discriminator 1
	cmpl	$17, 16(%rbp)
	je	.L12
.L11:
	.loc 1 103 12
	movl	16(%rbp), %eax
	jmp	.L20
.L12:
	.loc 1 106 18
	leaq	-272(%rbp), %rdx
	movq	-344(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	samedir_template
	movq	%rax, -312(%rbp)
	.loc 1 107 6
	cmpq	$0, -312(%rbp)
	jne	.L14
	.loc 1 108 12
	call	__errno_location@PLT
	movl	(%rax), %eax
	jmp	.L20
.L14:
	.loc 1 109 19
	movl	-324(%rbp), %eax
	movl	%eax, -304(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -296(%rbp)
	movl	-328(%rbp), %eax
	movl	%eax, -288(%rbp)
	movl	-348(%rbp), %eax
	movl	%eax, -284(%rbp)
	.loc 1 112 7
	leaq	-304(%rbp), %rdx
	movq	-312(%rbp), %rax
	movl	$6, %r8d
	leaq	try_link(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	try_tempname_len@PLT
	.loc 1 112 6
	testl	%eax, %eax
	je	.L15
	.loc 1 113 11
	call	__errno_location@PLT
	.loc 1 113 9
	movl	(%rax), %eax
	movl	%eax, -316(%rbp)
	jmp	.L16
.L15:
	.loc 1 116 13
	movq	-344(%rbp), %rcx
	movl	-328(%rbp), %edx
	movq	-312(%rbp), %rsi
	movl	-328(%rbp), %eax
	movl	%eax, %edi
	call	renameat@PLT
	.loc 1 116 66
	testl	%eax, %eax
	je	.L17
	.loc 1 116 68 discriminator 1
	call	__errno_location@PLT
	.loc 1 116 66 discriminator 1
	movl	(%rax), %eax
	jmp	.L18
.L17:
	.loc 1 116 66 is_stmt 0 discriminator 2
	movl	$-1, %eax
.L18:
	.loc 1 116 11 is_stmt 1 discriminator 4
	movl	%eax, -316(%rbp)
	.loc 1 120 7 discriminator 4
	movq	-312(%rbp), %rcx
	movl	-328(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	unlinkat@PLT
.L16:
	.loc 1 123 6
	leaq	-272(%rbp), %rax
	cmpq	%rax, -312(%rbp)
	je	.L19
	.loc 1 124 5
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L19:
	.loc 1 125 10
	movl	-316(%rbp), %eax
.L20:
	.loc 1 126 1 discriminator 1
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L21
	.loc 1 126 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	force_linkat, .-force_linkat
	.type	try_symlink, @function
try_symlink:
.LFB49:
	.loc 1 139 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 140 23
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 141 10
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	symlinkat@PLT
	.loc 1 142 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	try_symlink, .-try_symlink
	.globl	force_symlinkat
	.type	force_symlinkat, @function
force_symlinkat:
.LFB50:
	.loc 1 154 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -312(%rbp)
	movl	%esi, -316(%rbp)
	movq	%rdx, -328(%rbp)
	movl	%ecx, %eax
	movl	%r8d, -332(%rbp)
	movb	%al, -320(%rbp)
	.loc 1 154 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 155 6
	cmpl	$0, -332(%rbp)
	jns	.L25
	.loc 1 156 23
	movq	-328(%rbp), %rdx
	movl	-316(%rbp), %ecx
	movq	-312(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	symlinkat@PLT
	.loc 1 156 69
	testl	%eax, %eax
	je	.L26
	.loc 1 156 71 discriminator 1
	call	__errno_location@PLT
	.loc 1 156 69 discriminator 1
	movl	(%rax), %eax
	jmp	.L27
.L26:
	.loc 1 156 69 is_stmt 0 discriminator 2
	movl	$0, %eax
.L27:
	.loc 1 156 21 is_stmt 1 discriminator 4
	movl	%eax, -332(%rbp)
.L25:
	.loc 1 157 7
	movzbl	-320(%rbp), %eax
	xorl	$1, %eax
	.loc 1 157 6
	testb	%al, %al
	jne	.L28
	.loc 1 157 14 discriminator 1
	cmpl	$17, -332(%rbp)
	je	.L29
.L28:
	.loc 1 158 12
	movl	-332(%rbp), %eax
	jmp	.L36
.L29:
	.loc 1 161 18
	leaq	-272(%rbp), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	samedir_template
	movq	%rax, -296(%rbp)
	.loc 1 162 6
	cmpq	$0, -296(%rbp)
	jne	.L31
	.loc 1 163 12
	call	__errno_location@PLT
	movl	(%rax), %eax
	jmp	.L36
.L31:
	.loc 1 164 22
	movq	-312(%rbp), %rax
	movq	%rax, -288(%rbp)
	movl	-316(%rbp), %eax
	movl	%eax, -280(%rbp)
	.loc 1 167 7
	leaq	-288(%rbp), %rdx
	movq	-296(%rbp), %rax
	movl	$6, %r8d
	leaq	try_symlink(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	try_tempname_len@PLT
	.loc 1 167 6
	testl	%eax, %eax
	je	.L32
	.loc 1 168 11
	call	__errno_location@PLT
	.loc 1 168 9
	movl	(%rax), %eax
	movl	%eax, -300(%rbp)
	jmp	.L33
.L32:
	.loc 1 169 12
	movq	-328(%rbp), %rcx
	movl	-316(%rbp), %edx
	movq	-296(%rbp), %rsi
	movl	-316(%rbp), %eax
	movl	%eax, %edi
	call	renameat@PLT
	.loc 1 169 11
	testl	%eax, %eax
	je	.L34
	.loc 1 171 13
	call	__errno_location@PLT
	.loc 1 171 11
	movl	(%rax), %eax
	movl	%eax, -300(%rbp)
	.loc 1 172 7
	movq	-296(%rbp), %rcx
	movl	-316(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	unlinkat@PLT
	jmp	.L33
.L34:
	.loc 1 178 11
	movl	$-1, -300(%rbp)
.L33:
	.loc 1 181 6
	leaq	-272(%rbp), %rax
	cmpq	%rax, -296(%rbp)
	je	.L35
	.loc 1 182 5
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L35:
	.loc 1 183 10
	movl	-300(%rbp), %eax
.L36:
	.loc 1 184 1 discriminator 1
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L37
	.loc 1 184 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	force_symlinkat, .-force_symlinkat
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 5 "./lib/sys/select.h"
	.file 6 "/usr/include/time.h"
	.file 7 "/usr/include/signal.h"
	.file 8 "/usr/include/unistd.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 10 "/usr/include/errno.h"
	.file 11 "src/version.h"
	.file 12 "./lib/exitfail.h"
	.file 13 "./lib/timespec.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 18 "./lib/version-etc.h"
	.file 19 "./lib/progname.h"
	.file 20 "./lib/quotearg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x89d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF117
	.byte	0xc
	.long	.LASF118
	.long	.LASF119
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
	.byte	0x98
	.byte	0x19
	.long	0x63
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x63
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xa0
	.byte	0x1a
	.long	0x63
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0x96
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x8
	.long	0x96
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0x7
	.byte	0x12
	.long	0x82
	.uleb128 0x5
	.long	.LASF12
	.byte	0x4
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0x7
	.byte	0x8
	.long	0x9d
	.uleb128 0x8
	.long	0xd5
	.uleb128 0xa
	.long	0x90
	.long	0xf0
	.uleb128 0xb
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	.LASF16
	.byte	0x6
	.byte	0x9f
	.byte	0xe
	.long	0xe0
	.uleb128 0xc
	.long	.LASF17
	.byte	0x6
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF18
	.byte	0x6
	.byte	0xa1
	.byte	0x11
	.long	0x63
	.uleb128 0xc
	.long	.LASF19
	.byte	0x6
	.byte	0xa6
	.byte	0xe
	.long	0xe0
	.uleb128 0xc
	.long	.LASF20
	.byte	0x6
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF21
	.byte	0x6
	.byte	0xaf
	.byte	0x11
	.long	0x63
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x5
	.long	.LASF23
	.byte	0x4
	.byte	0x8f
	.byte	0x1a
	.long	0x63
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF24
	.uleb128 0xa
	.long	0xdb
	.long	0x168
	.uleb128 0xb
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x158
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.value	0x11e
	.byte	0x1a
	.long	0x168
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.value	0x11f
	.byte	0x1a
	.long	0x168
	.uleb128 0x9
	.long	.LASF27
	.byte	0x8
	.value	0x21f
	.byte	0xf
	.long	0x194
	.uleb128 0x7
	.byte	0x8
	.long	0x90
	.uleb128 0x9
	.long	.LASF28
	.byte	0x8
	.value	0x221
	.byte	0xf
	.long	0x194
	.uleb128 0xc
	.long	.LASF29
	.byte	0x9
	.byte	0x24
	.byte	0xe
	.long	0x90
	.uleb128 0xc
	.long	.LASF30
	.byte	0x9
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF31
	.byte	0x9
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF32
	.byte	0x9
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF33
	.byte	0xa
	.byte	0x2d
	.byte	0xe
	.long	0x90
	.uleb128 0xc
	.long	.LASF34
	.byte	0xa
	.byte	0x2e
	.byte	0xe
	.long	0x90
	.uleb128 0xc
	.long	.LASF35
	.byte	0xb
	.byte	0x1
	.byte	0x14
	.long	0xd5
	.uleb128 0xc
	.long	.LASF36
	.byte	0xc
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0xa
	.long	0x96
	.long	0x217
	.uleb128 0xb
	.long	0x42
	.byte	0xff
	.byte	0
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0xd
	.byte	0x29
	.byte	0x6
	.long	0x22f
	.uleb128 0xe
	.long	.LASF37
	.long	0x3b9aca00
	.byte	0
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0xd
	.byte	0x2a
	.byte	0x6
	.long	0x244
	.uleb128 0xf
	.long	.LASF38
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.long	.LASF96
	.byte	0xd8
	.byte	0xe
	.byte	0x31
	.byte	0x8
	.long	0x3cb
	.uleb128 0x11
	.long	.LASF39
	.byte	0xe
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x11
	.long	.LASF40
	.byte	0xe
	.byte	0x36
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0x11
	.long	.LASF41
	.byte	0xe
	.byte	0x37
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0x11
	.long	.LASF42
	.byte	0xe
	.byte	0x38
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0x11
	.long	.LASF43
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0x11
	.long	.LASF44
	.byte	0xe
	.byte	0x3a
	.byte	0x9
	.long	0x90
	.byte	0x28
	.uleb128 0x11
	.long	.LASF45
	.byte	0xe
	.byte	0x3b
	.byte	0x9
	.long	0x90
	.byte	0x30
	.uleb128 0x11
	.long	.LASF46
	.byte	0xe
	.byte	0x3c
	.byte	0x9
	.long	0x90
	.byte	0x38
	.uleb128 0x11
	.long	.LASF47
	.byte	0xe
	.byte	0x3d
	.byte	0x9
	.long	0x90
	.byte	0x40
	.uleb128 0x11
	.long	.LASF48
	.byte	0xe
	.byte	0x40
	.byte	0x9
	.long	0x90
	.byte	0x48
	.uleb128 0x11
	.long	.LASF49
	.byte	0xe
	.byte	0x41
	.byte	0x9
	.long	0x90
	.byte	0x50
	.uleb128 0x11
	.long	.LASF50
	.byte	0xe
	.byte	0x42
	.byte	0x9
	.long	0x90
	.byte	0x58
	.uleb128 0x11
	.long	.LASF51
	.byte	0xe
	.byte	0x44
	.byte	0x16
	.long	0x3e4
	.byte	0x60
	.uleb128 0x11
	.long	.LASF52
	.byte	0xe
	.byte	0x46
	.byte	0x14
	.long	0x3ea
	.byte	0x68
	.uleb128 0x11
	.long	.LASF53
	.byte	0xe
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x11
	.long	.LASF54
	.byte	0xe
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x11
	.long	.LASF55
	.byte	0xe
	.byte	0x4a
	.byte	0xb
	.long	0x6a
	.byte	0x78
	.uleb128 0x11
	.long	.LASF56
	.byte	0xe
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0x11
	.long	.LASF57
	.byte	0xe
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0x11
	.long	.LASF58
	.byte	0xe
	.byte	0x4f
	.byte	0x8
	.long	0x3f0
	.byte	0x83
	.uleb128 0x11
	.long	.LASF59
	.byte	0xe
	.byte	0x51
	.byte	0xf
	.long	0x400
	.byte	0x88
	.uleb128 0x11
	.long	.LASF60
	.byte	0xe
	.byte	0x59
	.byte	0xd
	.long	0x76
	.byte	0x90
	.uleb128 0x11
	.long	.LASF61
	.byte	0xe
	.byte	0x5b
	.byte	0x17
	.long	0x40b
	.byte	0x98
	.uleb128 0x11
	.long	.LASF62
	.byte	0xe
	.byte	0x5c
	.byte	0x19
	.long	0x416
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF63
	.byte	0xe
	.byte	0x5d
	.byte	0x14
	.long	0x3ea
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF64
	.byte	0xe
	.byte	0x5e
	.byte	0x9
	.long	0x8e
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF65
	.byte	0xe
	.byte	0x5f
	.byte	0xa
	.long	0xae
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF66
	.byte	0xe
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF67
	.byte	0xe
	.byte	0x62
	.byte	0x8
	.long	0x41c
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF68
	.byte	0xf
	.byte	0x7
	.byte	0x19
	.long	0x244
	.uleb128 0x12
	.long	.LASF120
	.byte	0xe
	.byte	0x2b
	.byte	0xe
	.uleb128 0x13
	.long	.LASF69
	.uleb128 0x7
	.byte	0x8
	.long	0x3df
	.uleb128 0x7
	.byte	0x8
	.long	0x244
	.uleb128 0xa
	.long	0x96
	.long	0x400
	.uleb128 0xb
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x3d7
	.uleb128 0x13
	.long	.LASF70
	.uleb128 0x7
	.byte	0x8
	.long	0x406
	.uleb128 0x13
	.long	.LASF71
	.uleb128 0x7
	.byte	0x8
	.long	0x411
	.uleb128 0xa
	.long	0x96
	.long	0x42c
	.uleb128 0xb
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.long	.LASF72
	.byte	0x10
	.byte	0x89
	.byte	0xe
	.long	0x438
	.uleb128 0x7
	.byte	0x8
	.long	0x3cb
	.uleb128 0xc
	.long	.LASF73
	.byte	0x10
	.byte	0x8a
	.byte	0xe
	.long	0x438
	.uleb128 0xc
	.long	.LASF74
	.byte	0x10
	.byte	0x8b
	.byte	0xe
	.long	0x438
	.uleb128 0xc
	.long	.LASF75
	.byte	0x11
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	0xdb
	.long	0x46d
	.uleb128 0x14
	.byte	0
	.uleb128 0x8
	.long	0x462
	.uleb128 0xc
	.long	.LASF76
	.byte	0x11
	.byte	0x1b
	.byte	0x1a
	.long	0x46d
	.uleb128 0xc
	.long	.LASF77
	.byte	0x11
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF78
	.byte	0x11
	.byte	0x1f
	.byte	0x1a
	.long	0x46d
	.uleb128 0xa
	.long	0x9d
	.long	0x4a1
	.uleb128 0x14
	.byte	0
	.uleb128 0x8
	.long	0x496
	.uleb128 0xc
	.long	.LASF79
	.byte	0x12
	.byte	0x19
	.byte	0x13
	.long	0x4a1
	.uleb128 0xc
	.long	.LASF80
	.byte	0x13
	.byte	0x20
	.byte	0x14
	.long	0xd5
	.uleb128 0x15
	.long	.LASF121
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x14
	.byte	0x20
	.byte	0x6
	.long	0x513
	.uleb128 0xf
	.long	.LASF81
	.byte	0
	.uleb128 0xf
	.long	.LASF82
	.byte	0x1
	.uleb128 0xf
	.long	.LASF83
	.byte	0x2
	.uleb128 0xf
	.long	.LASF84
	.byte	0x3
	.uleb128 0xf
	.long	.LASF85
	.byte	0x4
	.uleb128 0xf
	.long	.LASF86
	.byte	0x5
	.uleb128 0xf
	.long	.LASF87
	.byte	0x6
	.uleb128 0xf
	.long	.LASF88
	.byte	0x7
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.uleb128 0xf
	.long	.LASF90
	.byte	0x9
	.uleb128 0xf
	.long	.LASF91
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x4be
	.uleb128 0x9
	.long	.LASF92
	.byte	0x14
	.value	0x10b
	.byte	0x1a
	.long	0x46d
	.uleb128 0xa
	.long	0x513
	.long	0x530
	.uleb128 0x14
	.byte	0
	.uleb128 0x8
	.long	0x525
	.uleb128 0x9
	.long	.LASF93
	.byte	0x14
	.value	0x10c
	.byte	0x21
	.long	0x530
	.uleb128 0xa
	.long	0x9d
	.long	0x552
	.uleb128 0xb
	.long	0x42
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x542
	.uleb128 0x16
	.long	.LASF106
	.byte	0x1
	.byte	0x26
	.byte	0x13
	.long	0x552
	.uleb128 0x9
	.byte	0x3
	.quad	simple_pattern
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1
	.byte	0x27
	.byte	0x6
	.long	0x582
	.uleb128 0xf
	.long	.LASF94
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1
	.byte	0x2c
	.byte	0x6
	.long	0x598
	.uleb128 0x17
	.long	.LASF95
	.value	0x100
	.byte	0
	.uleb128 0x10
	.long	.LASF97
	.byte	0x18
	.byte	0x1
	.byte	0x47
	.byte	0x8
	.long	0x5da
	.uleb128 0x11
	.long	.LASF98
	.byte	0x1
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x11
	.long	.LASF99
	.byte	0x1
	.byte	0x4a
	.byte	0xf
	.long	0xd5
	.byte	0x8
	.uleb128 0x11
	.long	.LASF100
	.byte	0x1
	.byte	0x4b
	.byte	0x7
	.long	0x57
	.byte	0x10
	.uleb128 0x11
	.long	.LASF101
	.byte	0x1
	.byte	0x4c
	.byte	0x7
	.long	0x57
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.long	.LASF102
	.byte	0x10
	.byte	0x1
	.byte	0x83
	.byte	0x8
	.long	0x602
	.uleb128 0x11
	.long	.LASF99
	.byte	0x1
	.byte	0x85
	.byte	0xf
	.long	0xd5
	.byte	0
	.uleb128 0x11
	.long	.LASF100
	.byte	0x1
	.byte	0x86
	.byte	0x7
	.long	0x57
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.long	.LASF110
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	0x57
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b5
	.uleb128 0x19
	.long	.LASF99
	.byte	0x1
	.byte	0x98
	.byte	0x1e
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x19
	.long	.LASF100
	.byte	0x1
	.byte	0x98
	.byte	0x2b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x19
	.long	.LASF103
	.byte	0x1
	.byte	0x98
	.byte	0x3f
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x19
	.long	.LASF104
	.byte	0x1
	.byte	0x99
	.byte	0x17
	.long	0x6b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x19
	.long	.LASF105
	.byte	0x1
	.byte	0x99
	.byte	0x22
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0xa0
	.byte	0x8
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x16
	.long	.LASF107
	.byte	0x1
	.byte	0xa1
	.byte	0x9
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x1a
	.string	"arg"
	.byte	0x1
	.byte	0xa4
	.byte	0x16
	.long	0x5da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.byte	0xa5
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF108
	.uleb128 0x1b
	.long	.LASF113
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.long	0x57
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x70a
	.uleb128 0x19
	.long	.LASF109
	.byte	0x1
	.byte	0x8a
	.byte	0x14
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.byte	0x8a
	.byte	0x20
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"a"
	.byte	0x1
	.byte	0x8c
	.byte	0x17
	.long	0x70a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x5da
	.uleb128 0x18
	.long	.LASF111
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.long	0x57
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e2
	.uleb128 0x19
	.long	.LASF98
	.byte	0x1
	.byte	0x5f
	.byte	0x13
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x19
	.long	.LASF99
	.byte	0x1
	.byte	0x5f
	.byte	0x27
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x19
	.long	.LASF100
	.byte	0x1
	.byte	0x60
	.byte	0x13
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x19
	.long	.LASF103
	.byte	0x1
	.byte	0x60
	.byte	0x27
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x19
	.long	.LASF101
	.byte	0x1
	.byte	0x60
	.byte	0x34
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x19
	.long	.LASF104
	.byte	0x1
	.byte	0x60
	.byte	0x40
	.long	0x6b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x19
	.long	.LASF112
	.byte	0x1
	.byte	0x61
	.byte	0x13
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x69
	.byte	0x8
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x16
	.long	.LASF107
	.byte	0x1
	.byte	0x6a
	.byte	0x9
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x1a
	.string	"arg"
	.byte	0x1
	.byte	0x6d
	.byte	0x13
	.long	0x598
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.byte	0x6e
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.byte	0
	.uleb128 0x1b
	.long	.LASF114
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	0x57
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x830
	.uleb128 0x19
	.long	.LASF109
	.byte	0x1
	.byte	0x50
	.byte	0x11
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.byte	0x50
	.byte	0x1d
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"a"
	.byte	0x1
	.byte	0x52
	.byte	0x14
	.long	0x830
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x598
	.uleb128 0x1d
	.long	.LASF122
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	0x90
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF103
	.byte	0x1
	.byte	0x33
	.byte	0x1f
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.byte	0x33
	.byte	0x2d
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.long	.LASF115
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.long	0x145
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.byte	0x36
	.byte	0xa
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF107
	.byte	0x1
	.byte	0x37
	.byte	0x9
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
.LASF7:
	.string	"__off_t"
.LASF5:
	.string	"short int"
.LASF40:
	.string	"_IO_read_ptr"
.LASF89:
	.string	"locale_quoting_style"
.LASF52:
	.string	"_chain"
.LASF99:
	.string	"srcname"
.LASF121:
	.string	"quoting_style"
.LASF12:
	.string	"size_t"
.LASF38:
	.string	"LOG10_TIMESPEC_HZ"
.LASF58:
	.string	"_shortbuf"
.LASF82:
	.string	"shell_quoting_style"
.LASF46:
	.string	"_IO_buf_base"
.LASF13:
	.string	"long long unsigned int"
.LASF61:
	.string	"_codecvt"
.LASF100:
	.string	"dstdir"
.LASF111:
	.string	"force_linkat"
.LASF18:
	.string	"__timezone"
.LASF14:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF93:
	.string	"quoting_style_vals"
.LASF116:
	.string	"dsttmpsize"
.LASF88:
	.string	"escape_quoting_style"
.LASF81:
	.string	"literal_quoting_style"
.LASF53:
	.string	"_fileno"
.LASF41:
	.string	"_IO_read_end"
.LASF26:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF15:
	.string	"_gl_cxxalias_dummy"
.LASF39:
	.string	"_flags"
.LASF68:
	.string	"FILE"
.LASF62:
	.string	"_wide_data"
.LASF47:
	.string	"_IO_buf_end"
.LASF56:
	.string	"_cur_column"
.LASF34:
	.string	"program_invocation_short_name"
.LASF86:
	.string	"c_quoting_style"
.LASF70:
	.string	"_IO_codecvt"
.LASF78:
	.string	"_sys_errlist"
.LASF118:
	.string	"src/force-link.c"
.LASF33:
	.string	"program_invocation_name"
.LASF55:
	.string	"_old_offset"
.LASF60:
	.string	"_offset"
.LASF37:
	.string	"TIMESPEC_HZ"
.LASF85:
	.string	"shell_escape_always_quoting_style"
.LASF21:
	.string	"timezone"
.LASF80:
	.string	"program_name"
.LASF69:
	.string	"_IO_marker"
.LASF72:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF64:
	.string	"_freeres_buf"
.LASF97:
	.string	"link_arg"
.LASF3:
	.string	"long unsigned int"
.LASF44:
	.string	"_IO_write_ptr"
.LASF113:
	.string	"try_symlink"
.LASF75:
	.string	"sys_nerr"
.LASF115:
	.string	"dstdirlen"
.LASF117:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF91:
	.string	"custom_quoting_style"
.LASF1:
	.string	"short unsigned int"
.LASF35:
	.string	"Version"
.LASF48:
	.string	"_IO_save_base"
.LASF28:
	.string	"environ"
.LASF59:
	.string	"_lock"
.LASF54:
	.string	"_flags2"
.LASF66:
	.string	"_mode"
.LASF73:
	.string	"stdout"
.LASF114:
	.string	"try_link"
.LASF23:
	.string	"ptrdiff_t"
.LASF79:
	.string	"version_etc_copyright"
.LASF29:
	.string	"optarg"
.LASF22:
	.string	"getdate_err"
.LASF30:
	.string	"optind"
.LASF45:
	.string	"_IO_write_end"
.LASF105:
	.string	"symlinkat_errno"
.LASF120:
	.string	"_IO_lock_t"
.LASF96:
	.string	"_IO_FILE"
.LASF109:
	.string	"dest"
.LASF27:
	.string	"__environ"
.LASF11:
	.string	"time_t"
.LASF76:
	.string	"sys_errlist"
.LASF51:
	.string	"_markers"
.LASF87:
	.string	"c_maybe_quoting_style"
.LASF108:
	.string	"_Bool"
.LASF0:
	.string	"unsigned char"
.LASF102:
	.string	"symlink_arg"
.LASF77:
	.string	"_sys_nerr"
.LASF57:
	.string	"_vtable_offset"
.LASF19:
	.string	"tzname"
.LASF95:
	.string	"smallsize"
.LASF36:
	.string	"exit_failure"
.LASF98:
	.string	"srcdir"
.LASF84:
	.string	"shell_escape_quoting_style"
.LASF92:
	.string	"quoting_style_args"
.LASF32:
	.string	"optopt"
.LASF20:
	.string	"daylight"
.LASF24:
	.string	"long double"
.LASF10:
	.string	"char"
.LASF107:
	.string	"dsttmp"
.LASF83:
	.string	"shell_always_quoting_style"
.LASF90:
	.string	"clocale_quoting_style"
.LASF31:
	.string	"opterr"
.LASF106:
	.string	"simple_pattern"
.LASF103:
	.string	"dstname"
.LASF110:
	.string	"force_symlinkat"
.LASF8:
	.string	"__off64_t"
.LASF42:
	.string	"_IO_read_base"
.LASF50:
	.string	"_IO_save_end"
.LASF25:
	.string	"_sys_siglist"
.LASF65:
	.string	"__pad5"
.LASF9:
	.string	"__time_t"
.LASF67:
	.string	"_unused2"
.LASF74:
	.string	"stderr"
.LASF17:
	.string	"__daylight"
.LASF119:
	.string	"/root/coreutils"
.LASF122:
	.string	"samedir_template"
.LASF49:
	.string	"_IO_backup_base"
.LASF101:
	.string	"flags"
.LASF112:
	.string	"linkat_errno"
.LASF94:
	.string	"x_suffix_len"
.LASF63:
	.string	"_freeres_list"
.LASF71:
	.string	"_IO_wide_data"
.LASF104:
	.string	"force"
.LASF16:
	.string	"__tzname"
.LASF43:
	.string	"_IO_write_base"
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
