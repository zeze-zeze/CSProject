	.file	"find-mount-point.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"cannot get current directory"
.LC1:
	.string	"cannot change to directory %s"
.LC2:
	.string	"."
	.align 8
.LC3:
	.string	"cannot stat current directory (now %s)"
.LC4:
	.string	".."
.LC5:
	.string	"cannot stat %s"
	.align 8
.LC6:
	.string	"failed to return to initial working directory"
	.text
	.globl	find_mount_point
	.type	find_mount_point, @function
find_mount_point:
.LFB46:
	.file 1 "src/find-mount-point.c"
	.loc 1 33 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$400, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -408(%rbp)
	movq	%rsi, -416(%rbp)
	.loc 1 33 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 36 9
	movq	$0, -384(%rbp)
	.loc 1 38 7
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	save_cwd@PLT
	.loc 1 38 6
	testl	%eax, %eax
	je	.L2
	.loc 1 40 24
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 1 40 17
	call	__errno_location@PLT
	.loc 1 40 7
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 1 41 14
	movl	$0, %eax
	jmp	.L17
.L2:
	.loc 1 44 7
	movq	-416(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 44 6
	cmpl	$16384, %eax
	jne	.L4
	.loc 1 47 17
	movq	-416(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -320(%rbp)
	movq	%rbx, -312(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -304(%rbp)
	movq	%rbx, -296(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -288(%rbp)
	movq	%rbx, -280(%rbp)
	movq	48(%rax), %rcx
	movq	56(%rax), %rbx
	movq	%rcx, -272(%rbp)
	movq	%rbx, -264(%rbp)
	movq	64(%rax), %rcx
	movq	72(%rax), %rbx
	movq	%rcx, -256(%rbp)
	movq	%rbx, -248(%rbp)
	movq	80(%rax), %rcx
	movq	88(%rax), %rbx
	movq	%rcx, -240(%rbp)
	movq	%rbx, -232(%rbp)
	movq	96(%rax), %rcx
	movq	104(%rax), %rbx
	movq	%rcx, -224(%rbp)
	movq	%rbx, -216(%rbp)
	movq	112(%rax), %rcx
	movq	120(%rax), %rbx
	movq	%rcx, -208(%rbp)
	movq	%rbx, -200(%rbp)
	movq	136(%rax), %rdx
	movq	128(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
	.loc 1 48 11
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	chdir@PLT
	.loc 1 48 10
	testl	%eax, %eax
	jns	.L15
	.loc 1 50 11
	movq	-408(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 1 50 28
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 1 50 21
	call	__errno_location@PLT
	.loc 1 50 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 1 51 18
	movl	$0, %eax
	jmp	.L17
.L4:
.LBB2:
	.loc 1 57 20
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	dir_name@PLT
	movq	%rax, -376(%rbp)
.LBB3:
	.loc 1 59 7
	movq	-376(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
.L6:
	cmpq	%rdx, %rsp
	je	.L7
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L6
.L7:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L8
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L8:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -352(%rbp)
	movq	-360(%rbp), %rdx
	movq	-368(%rbp), %rcx
	movq	-352(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.LBE3:
	movq	%rax, -344(%rbp)
	.loc 1 60 7
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 62 11
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	chdir@PLT
	.loc 1 62 10
	testl	%eax, %eax
	jns	.L9
	.loc 1 64 11
	movq	-344(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 1 64 28
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 1 64 21
	call	__errno_location@PLT
	.loc 1 64 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 1 65 18
	movl	$0, %eax
	jmp	.L17
.L9:
	.loc 1 68 11
	leaq	-320(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	call	stat@PLT
	.loc 1 68 10
	testl	%eax, %eax
	jns	.L15
	.loc 1 70 11
	movq	-344(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 1 70 28
	leaq	.LC3(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 1 70 21
	call	__errno_location@PLT
	.loc 1 70 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 1 72 11
	jmp	.L10
.L15:
.LBE2:
.LBB4:
	.loc 1 82 11
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	call	stat@PLT
	.loc 1 82 10
	testl	%eax, %eax
	jns	.L11
	.loc 1 84 11
	leaq	.LC4(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 1 84 28
	leaq	.LC5(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 1 84 21
	call	__errno_location@PLT
	.loc 1 84 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 1 85 11
	jmp	.L10
.L11:
	.loc 1 87 13
	movq	-176(%rbp), %rdx
	.loc 1 87 33
	movq	-320(%rbp), %rax
	.loc 1 87 10
	cmpq	%rax, %rdx
	jne	.L13
	.loc 1 87 46 discriminator 1
	movq	-168(%rbp), %rdx
	.loc 1 87 66 discriminator 1
	movq	-312(%rbp), %rax
	.loc 1 87 41 discriminator 1
	cmpq	%rax, %rdx
	je	.L13
	.loc 1 90 11
	leaq	.LC4(%rip), %rdi
	call	chdir@PLT
	.loc 1 90 10
	testl	%eax, %eax
	jns	.L14
	.loc 1 92 11
	leaq	.LC4(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 1 92 28
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 1 92 21
	call	__errno_location@PLT
	.loc 1 92 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 1 93 11
	jmp	.L10
.L14:
	.loc 1 95 17
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -320(%rbp)
	movq	%rdx, -312(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
.LBE4:
	.loc 1 80 5
	jmp	.L15
.L13:
	.loc 1 99 8
	call	xgetcwd@PLT
	movq	%rax, -384(%rbp)
.L10:
.LBB5:
	.loc 1 104 22
	call	__errno_location@PLT
	.loc 1 104 9
	movl	(%rax), %eax
	movl	%eax, -388(%rbp)
	.loc 1 105 9
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	restore_cwd@PLT
	.loc 1 105 8
	testl	%eax, %eax
	je	.L16
.LBB6:
	.loc 1 106 7
	leaq	.LC6(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L16:
.LBE6:
	.loc 1 108 5
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	free_cwd@PLT
	.loc 1 109 5
	call	__errno_location@PLT
	.loc 1 109 11
	movl	-388(%rbp), %edx
	movl	%edx, (%rax)
.LBE5:
	.loc 1 112 10
	movq	-384(%rbp), %rax
.L17:
	.loc 1 113 1 discriminator 2
	movq	-24(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L18
	.loc 1 113 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L18:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	find_mount_point, .-find_mount_point
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 5 "./lib/sys/select.h"
	.file 6 "/usr/include/time.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 8 "/usr/include/signal.h"
	.file 9 "/usr/include/unistd.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 11 "/usr/include/errno.h"
	.file 12 "src/version.h"
	.file 13 "./lib/exitfail.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 16 "/usr/include/stdio.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 18 "./lib/version-etc.h"
	.file 19 "./lib/progname.h"
	.file 20 "./lib/quotearg.h"
	.file 21 "./lib/error.h"
	.file 22 "./lib/save-cwd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x80f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF133
	.byte	0xc
	.long	.LASF134
	.long	.LASF135
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
	.byte	0x91
	.byte	0x19
	.long	0x42
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0x92
	.byte	0x19
	.long	0x3b
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0x93
	.byte	0x19
	.long	0x3b
	.uleb128 0x5
	.long	.LASF10
	.byte	0x2
	.byte	0x94
	.byte	0x19
	.long	0x42
	.uleb128 0x5
	.long	.LASF11
	.byte	0x2
	.byte	0x96
	.byte	0x1a
	.long	0x3b
	.uleb128 0x5
	.long	.LASF12
	.byte	0x2
	.byte	0x97
	.byte	0x1b
	.long	0x42
	.uleb128 0x5
	.long	.LASF13
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x63
	.uleb128 0x5
	.long	.LASF14
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x63
	.uleb128 0x5
	.long	.LASF15
	.byte	0x2
	.byte	0xa0
	.byte	0x1a
	.long	0x63
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x5
	.long	.LASF16
	.byte	0x2
	.byte	0xae
	.byte	0x1d
	.long	0x63
	.uleb128 0x5
	.long	.LASF17
	.byte	0x2
	.byte	0xb3
	.byte	0x1c
	.long	0x63
	.uleb128 0x5
	.long	.LASF18
	.byte	0x2
	.byte	0xc4
	.byte	0x21
	.long	0x63
	.uleb128 0x7
	.byte	0x8
	.long	0x102
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF19
	.uleb128 0x8
	.long	0x102
	.uleb128 0x5
	.long	.LASF20
	.byte	0x3
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x9
	.long	.LASF34
	.byte	0x10
	.byte	0x4
	.byte	0xa
	.byte	0x8
	.long	0x142
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.byte	0xc
	.byte	0xc
	.long	0xca
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.byte	0x10
	.byte	0x15
	.long	0xf0
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF25
	.byte	0x5
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
	.uleb128 0x7
	.byte	0x8
	.long	0x109
	.uleb128 0x8
	.long	0x15d
	.uleb128 0xc
	.long	0xfc
	.long	0x178
	.uleb128 0xd
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF26
	.byte	0x6
	.byte	0x9f
	.byte	0xe
	.long	0x168
	.uleb128 0xe
	.long	.LASF27
	.byte	0x6
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF28
	.byte	0x6
	.byte	0xa1
	.byte	0x11
	.long	0x63
	.uleb128 0xe
	.long	.LASF29
	.byte	0x6
	.byte	0xa6
	.byte	0xe
	.long	0x168
	.uleb128 0xe
	.long	.LASF30
	.byte	0x6
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF31
	.byte	0x6
	.byte	0xaf
	.byte	0x11
	.long	0x63
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF33
	.uleb128 0x9
	.long	.LASF35
	.byte	0x90
	.byte	0x7
	.byte	0x2e
	.byte	0x8
	.long	0x2a5
	.uleb128 0xa
	.long	.LASF36
	.byte	0x7
	.byte	0x30
	.byte	0xd
	.long	0x6a
	.byte	0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x35
	.byte	0xd
	.long	0x8e
	.byte	0x8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.byte	0x3d
	.byte	0xf
	.long	0xa6
	.byte	0x10
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.byte	0x3e
	.byte	0xe
	.long	0x9a
	.byte	0x18
	.uleb128 0xa
	.long	.LASF40
	.byte	0x7
	.byte	0x40
	.byte	0xd
	.long	0x76
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF41
	.byte	0x7
	.byte	0x41
	.byte	0xd
	.long	0x82
	.byte	0x20
	.uleb128 0xa
	.long	.LASF42
	.byte	0x7
	.byte	0x43
	.byte	0x9
	.long	0x57
	.byte	0x24
	.uleb128 0xa
	.long	.LASF43
	.byte	0x7
	.byte	0x45
	.byte	0xd
	.long	0x6a
	.byte	0x28
	.uleb128 0xa
	.long	.LASF44
	.byte	0x7
	.byte	0x4a
	.byte	0xd
	.long	0xb2
	.byte	0x30
	.uleb128 0xa
	.long	.LASF45
	.byte	0x7
	.byte	0x4e
	.byte	0x11
	.long	0xd8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF46
	.byte	0x7
	.byte	0x50
	.byte	0x10
	.long	0xe4
	.byte	0x40
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.byte	0x5b
	.byte	0x15
	.long	0x11a
	.byte	0x48
	.uleb128 0xa
	.long	.LASF48
	.byte	0x7
	.byte	0x5c
	.byte	0x15
	.long	0x11a
	.byte	0x58
	.uleb128 0xa
	.long	.LASF49
	.byte	0x7
	.byte	0x5d
	.byte	0x15
	.long	0x11a
	.byte	0x68
	.uleb128 0xa
	.long	.LASF50
	.byte	0x7
	.byte	0x6a
	.byte	0x17
	.long	0x2aa
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x1d4
	.uleb128 0xc
	.long	0xf0
	.long	0x2ba
	.uleb128 0xd
	.long	0x42
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.uleb128 0x7
	.byte	0x8
	.long	0x2ba
	.uleb128 0xc
	.long	0x163
	.long	0x2d1
	.uleb128 0xd
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x2c1
	.uleb128 0xb
	.long	.LASF51
	.byte	0x8
	.value	0x11e
	.byte	0x1a
	.long	0x2d1
	.uleb128 0xb
	.long	.LASF52
	.byte	0x8
	.value	0x11f
	.byte	0x1a
	.long	0x2d1
	.uleb128 0xb
	.long	.LASF53
	.byte	0x9
	.value	0x21f
	.byte	0xf
	.long	0x2fd
	.uleb128 0x7
	.byte	0x8
	.long	0xfc
	.uleb128 0xb
	.long	.LASF54
	.byte	0x9
	.value	0x221
	.byte	0xf
	.long	0x2fd
	.uleb128 0xe
	.long	.LASF55
	.byte	0xa
	.byte	0x24
	.byte	0xe
	.long	0xfc
	.uleb128 0xe
	.long	.LASF56
	.byte	0xa
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF57
	.byte	0xa
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF58
	.byte	0xa
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF59
	.byte	0xb
	.byte	0x2d
	.byte	0xe
	.long	0xfc
	.uleb128 0xe
	.long	.LASF60
	.byte	0xb
	.byte	0x2e
	.byte	0xe
	.long	0xfc
	.uleb128 0xe
	.long	.LASF61
	.byte	0xc
	.byte	0x1
	.byte	0x14
	.long	0x15d
	.uleb128 0xe
	.long	.LASF62
	.byte	0xd
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x9
	.long	.LASF63
	.byte	0xd8
	.byte	0xe
	.byte	0x31
	.byte	0x8
	.long	0x4f7
	.uleb128 0xa
	.long	.LASF64
	.byte	0xe
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF65
	.byte	0xe
	.byte	0x36
	.byte	0x9
	.long	0xfc
	.byte	0x8
	.uleb128 0xa
	.long	.LASF66
	.byte	0xe
	.byte	0x37
	.byte	0x9
	.long	0xfc
	.byte	0x10
	.uleb128 0xa
	.long	.LASF67
	.byte	0xe
	.byte	0x38
	.byte	0x9
	.long	0xfc
	.byte	0x18
	.uleb128 0xa
	.long	.LASF68
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.long	0xfc
	.byte	0x20
	.uleb128 0xa
	.long	.LASF69
	.byte	0xe
	.byte	0x3a
	.byte	0x9
	.long	0xfc
	.byte	0x28
	.uleb128 0xa
	.long	.LASF70
	.byte	0xe
	.byte	0x3b
	.byte	0x9
	.long	0xfc
	.byte	0x30
	.uleb128 0xa
	.long	.LASF71
	.byte	0xe
	.byte	0x3c
	.byte	0x9
	.long	0xfc
	.byte	0x38
	.uleb128 0xa
	.long	.LASF72
	.byte	0xe
	.byte	0x3d
	.byte	0x9
	.long	0xfc
	.byte	0x40
	.uleb128 0xa
	.long	.LASF73
	.byte	0xe
	.byte	0x40
	.byte	0x9
	.long	0xfc
	.byte	0x48
	.uleb128 0xa
	.long	.LASF74
	.byte	0xe
	.byte	0x41
	.byte	0x9
	.long	0xfc
	.byte	0x50
	.uleb128 0xa
	.long	.LASF75
	.byte	0xe
	.byte	0x42
	.byte	0x9
	.long	0xfc
	.byte	0x58
	.uleb128 0xa
	.long	.LASF76
	.byte	0xe
	.byte	0x44
	.byte	0x16
	.long	0x510
	.byte	0x60
	.uleb128 0xa
	.long	.LASF77
	.byte	0xe
	.byte	0x46
	.byte	0x14
	.long	0x516
	.byte	0x68
	.uleb128 0xa
	.long	.LASF78
	.byte	0xe
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0xa
	.long	.LASF79
	.byte	0xe
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0xa
	.long	.LASF80
	.byte	0xe
	.byte	0x4a
	.byte	0xb
	.long	0xb2
	.byte	0x78
	.uleb128 0xa
	.long	.LASF81
	.byte	0xe
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0xa
	.long	.LASF82
	.byte	0xe
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0xa
	.long	.LASF83
	.byte	0xe
	.byte	0x4f
	.byte	0x8
	.long	0x51c
	.byte	0x83
	.uleb128 0xa
	.long	.LASF84
	.byte	0xe
	.byte	0x51
	.byte	0xf
	.long	0x52c
	.byte	0x88
	.uleb128 0xa
	.long	.LASF85
	.byte	0xe
	.byte	0x59
	.byte	0xd
	.long	0xbe
	.byte	0x90
	.uleb128 0xa
	.long	.LASF86
	.byte	0xe
	.byte	0x5b
	.byte	0x17
	.long	0x537
	.byte	0x98
	.uleb128 0xa
	.long	.LASF87
	.byte	0xe
	.byte	0x5c
	.byte	0x19
	.long	0x542
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF88
	.byte	0xe
	.byte	0x5d
	.byte	0x14
	.long	0x516
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF89
	.byte	0xe
	.byte	0x5e
	.byte	0x9
	.long	0xd6
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF90
	.byte	0xe
	.byte	0x5f
	.byte	0xa
	.long	0x10e
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF91
	.byte	0xe
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF92
	.byte	0xe
	.byte	0x62
	.byte	0x8
	.long	0x548
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF93
	.byte	0xf
	.byte	0x7
	.byte	0x19
	.long	0x370
	.uleb128 0x10
	.long	.LASF136
	.byte	0xe
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF94
	.uleb128 0x7
	.byte	0x8
	.long	0x50b
	.uleb128 0x7
	.byte	0x8
	.long	0x370
	.uleb128 0xc
	.long	0x102
	.long	0x52c
	.uleb128 0xd
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x503
	.uleb128 0x11
	.long	.LASF95
	.uleb128 0x7
	.byte	0x8
	.long	0x532
	.uleb128 0x11
	.long	.LASF96
	.uleb128 0x7
	.byte	0x8
	.long	0x53d
	.uleb128 0xc
	.long	0x102
	.long	0x558
	.uleb128 0xd
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF97
	.byte	0x10
	.byte	0x89
	.byte	0xe
	.long	0x564
	.uleb128 0x7
	.byte	0x8
	.long	0x4f7
	.uleb128 0xe
	.long	.LASF98
	.byte	0x10
	.byte	0x8a
	.byte	0xe
	.long	0x564
	.uleb128 0xe
	.long	.LASF99
	.byte	0x10
	.byte	0x8b
	.byte	0xe
	.long	0x564
	.uleb128 0xe
	.long	.LASF100
	.byte	0x11
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	0x163
	.long	0x599
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.long	0x58e
	.uleb128 0xe
	.long	.LASF101
	.byte	0x11
	.byte	0x1b
	.byte	0x1a
	.long	0x599
	.uleb128 0xe
	.long	.LASF102
	.byte	0x11
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF103
	.byte	0x11
	.byte	0x1f
	.byte	0x1a
	.long	0x599
	.uleb128 0xc
	.long	0x109
	.long	0x5cd
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.long	0x5c2
	.uleb128 0xe
	.long	.LASF104
	.byte	0x12
	.byte	0x19
	.byte	0x13
	.long	0x5cd
	.uleb128 0xe
	.long	.LASF105
	.byte	0x13
	.byte	0x20
	.byte	0x14
	.long	0x15d
	.uleb128 0x13
	.long	.LASF137
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x14
	.byte	0x20
	.byte	0x6
	.long	0x63f
	.uleb128 0x14
	.long	.LASF106
	.byte	0
	.uleb128 0x14
	.long	.LASF107
	.byte	0x1
	.uleb128 0x14
	.long	.LASF108
	.byte	0x2
	.uleb128 0x14
	.long	.LASF109
	.byte	0x3
	.uleb128 0x14
	.long	.LASF110
	.byte	0x4
	.uleb128 0x14
	.long	.LASF111
	.byte	0x5
	.uleb128 0x14
	.long	.LASF112
	.byte	0x6
	.uleb128 0x14
	.long	.LASF113
	.byte	0x7
	.uleb128 0x14
	.long	.LASF114
	.byte	0x8
	.uleb128 0x14
	.long	.LASF115
	.byte	0x9
	.uleb128 0x14
	.long	.LASF116
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x5ea
	.uleb128 0xb
	.long	.LASF117
	.byte	0x14
	.value	0x10b
	.byte	0x1a
	.long	0x599
	.uleb128 0xc
	.long	0x63f
	.long	0x65c
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.long	0x651
	.uleb128 0xb
	.long	.LASF118
	.byte	0x14
	.value	0x10c
	.byte	0x21
	.long	0x65c
	.uleb128 0xe
	.long	.LASF119
	.byte	0x15
	.byte	0x32
	.byte	0xf
	.long	0x2bb
	.uleb128 0xe
	.long	.LASF120
	.byte	0x15
	.byte	0x35
	.byte	0x15
	.long	0x3b
	.uleb128 0xe
	.long	.LASF121
	.byte	0x15
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.long	.LASF122
	.byte	0x10
	.byte	0x16
	.byte	0x18
	.byte	0x8
	.long	0x6ba
	.uleb128 0xa
	.long	.LASF123
	.byte	0x16
	.byte	0x1a
	.byte	0x9
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF124
	.byte	0x16
	.byte	0x1b
	.byte	0xb
	.long	0xfc
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.long	.LASF138
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.long	0xfc
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x80c
	.uleb128 0x16
	.long	.LASF125
	.byte	0x1
	.byte	0x20
	.byte	0x1f
	.long	0x15d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x16
	.long	.LASF126
	.byte	0x1
	.byte	0x20
	.byte	0x38
	.long	0x80c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x17
	.string	"cwd"
	.byte	0x1
	.byte	0x22
	.byte	0x14
	.long	0x692
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x18
	.long	.LASF127
	.byte	0x1
	.byte	0x23
	.byte	0xf
	.long	0x1d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x17
	.string	"mp"
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x19
	.long	.LASF139
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.quad	.L10
	.uleb128 0x1a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x7b3
	.uleb128 0x18
	.long	.LASF128
	.byte	0x1
	.byte	0x39
	.byte	0xd
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x17
	.string	"dir"
	.byte	0x1
	.byte	0x3a
	.byte	0xd
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x18
	.long	.LASF129
	.byte	0x1
	.byte	0x3b
	.byte	0x7
	.long	0x15d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x18
	.long	.LASF130
	.byte	0x1
	.byte	0x3b
	.byte	0x7
	.long	0x10e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x18
	.long	.LASF131
	.byte	0x1
	.byte	0x3b
	.byte	0x7
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.byte	0
	.byte	0
	.uleb128 0x1a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x7d8
	.uleb128 0x17
	.string	"st"
	.byte	0x1
	.byte	0x51
	.byte	0x13
	.long	0x1d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x1b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x18
	.long	.LASF132
	.byte	0x1
	.byte	0x68
	.byte	0x9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x1c
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2a5
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
	.uleb128 0xf
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
.LASF137:
	.string	"quoting_style"
.LASF20:
	.string	"size_t"
.LASF129:
	.string	"__old"
.LASF83:
	.string	"_shortbuf"
.LASF107:
	.string	"shell_quoting_style"
.LASF139:
	.string	"done"
.LASF71:
	.string	"_IO_buf_base"
.LASF23:
	.string	"long long unsigned int"
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
.LASF132:
	.string	"save_errno"
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
.LASF89:
	.string	"_freeres_buf"
.LASF131:
	.string	"__new"
.LASF3:
	.string	"long unsigned int"
.LASF69:
	.string	"_IO_write_ptr"
.LASF138:
	.string	"find_mount_point"
.LASF124:
	.string	"name"
.LASF100:
	.string	"sys_nerr"
.LASF133:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF116:
	.string	"custom_quoting_style"
.LASF1:
	.string	"short unsigned int"
.LASF121:
	.string	"error_one_per_line"
.LASF61:
	.string	"Version"
.LASF73:
	.string	"_IO_save_base"
.LASF12:
	.string	"__nlink_t"
.LASF54:
	.string	"environ"
.LASF84:
	.string	"_lock"
.LASF134:
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
.LASF55:
	.string	"optarg"
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
.LASF126:
	.string	"file_stat"
.LASF136:
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
.LASF93:
	.string	"FILE"
.LASF109:
	.string	"shell_escape_quoting_style"
.LASF10:
	.string	"__ino_t"
.LASF117:
	.string	"quoting_style_args"
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
.LASF57:
	.string	"opterr"
.LASF8:
	.string	"__uid_t"
.LASF14:
	.string	"__off64_t"
.LASF67:
	.string	"_IO_read_base"
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
.LASF135:
	.string	"/root/coreutils"
.LASF36:
	.string	"st_dev"
.LASF74:
	.string	"_IO_backup_base"
.LASF48:
	.string	"st_mtim"
.LASF120:
	.string	"error_message_count"
.LASF88:
	.string	"_freeres_list"
.LASF96:
	.string	"_IO_wide_data"
.LASF26:
	.string	"__tzname"
.LASF68:
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
