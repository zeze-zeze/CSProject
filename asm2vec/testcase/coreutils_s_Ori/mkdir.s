	.file	"mkdir.c"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC0:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.text
	.type	emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
.LFB36:
	.file 1 "src/system.h"
	.loc 1 589 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 590 3
	movq	stdout(%rip), %rbx
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 1 593 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	emit_mandatory_arg_note, .-emit_mandatory_arg_note
	.section	.rodata
.LC1:
	.string	"["
.LC2:
	.string	"test invocation"
.LC3:
	.string	"coreutils"
.LC4:
	.string	"Multi-call invocation"
.LC5:
	.string	"sha224sum"
.LC6:
	.string	"sha2 utilities"
.LC7:
	.string	"sha256sum"
.LC8:
	.string	"sha384sum"
.LC9:
	.string	"sha512sum"
.LC10:
	.string	"\n%s online help: <%s>\n"
	.align 8
.LC11:
	.string	"https://www.gnu.org/software/coreutils/"
.LC12:
	.string	"GNU coreutils"
.LC13:
	.string	"en_"
	.align 8
.LC14:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
.LC15:
	.string	"Full documentation <%s%s>\n"
.LC16:
	.string	" invocation"
.LC17:
	.string	""
	.align 8
.LC18:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.type	emit_ancillary_info, @function
emit_ancillary_info:
.LFB40:
	.loc 1 635 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	.loc 1 635 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 636 67
	leaq	.LC1(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	.loc 1 646 15
	movq	-184(%rbp), %rax
	movq	%rax, -168(%rbp)
	.loc 1 647 25
	leaq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	.loc 1 649 9
	jmp	.L3
.L5:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L3:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L4
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L5
.L4:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L6
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L6:
	.loc 1 655 11
	leaq	.LC10(%rip), %rdi
	call	gettext@PLT
	.loc 1 655 3
	leaq	.LC11(%rip), %rdx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 659 29
	movl	$0, %esi
	movl	$5, %edi
	call	setlocale@PLT
	movq	%rax, -152(%rbp)
	.loc 1 660 6
	cmpq	$0, -152(%rbp)
	je	.L7
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L7
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L7:
	.loc 1 669 11
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 669 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 671 3
	movq	-168(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.L8
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC16(%rip), %rbx
	jmp	.L9
.L8:
	.loc 1 671 3 discriminator 2
	leaq	.LC17(%rip), %rbx
.L9:
	.loc 1 671 11 is_stmt 1 discriminator 4
	leaq	.LC18(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 671 3 discriminator 4
	movq	-168(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 673 1 discriminator 4
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L10
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L10:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.type	ignorable_ctx_err, @function
ignorable_ctx_err:
.LFB48:
	.file 2 "src/selinux.h"
	.loc 2 28 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 29 25
	cmpl	$95, -4(%rbp)
	je	.L12
	.loc 2 29 25 is_stmt 0 discriminator 2
	cmpl	$61, -4(%rbp)
	jne	.L13
.L12:
	.loc 2 29 25 discriminator 3
	movl	$1, %eax
	jmp	.L14
.L13:
	.loc 2 29 25 discriminator 4
	movl	$0, %eax
.L14:
	.loc 2 29 25 discriminator 6
	andl	$1, %eax
	.loc 2 30 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	ignorable_ctx_err, .-ignorable_ctx_err
	.type	smack_set_label_for_self, @function
smack_set_label_for_self:
.LFB50:
	.file 3 "./lib/smack.h"
	.loc 3 33 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 3 34 10
	movl	$-1, %eax
	.loc 3 35 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	smack_set_label_for_self, .-smack_set_label_for_self
	.type	is_smack_enabled, @function
is_smack_enabled:
.LFB51:
	.loc 3 40 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 44 10
	movl	$0, %eax
	.loc 3 46 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	is_smack_enabled, .-is_smack_enabled
	.section	.rodata
.LC19:
	.string	"context"
.LC20:
	.string	"mode"
.LC21:
	.string	"parents"
.LC22:
	.string	"verbose"
.LC23:
	.string	"help"
.LC24:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 224
longopts:
	.quad	.LC19
	.long	2
	.zero	4
	.quad	0
	.long	90
	.zero	4
	.quad	.LC20
	.long	1
	.zero	4
	.quad	0
	.long	109
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC24
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
	.section	.rodata
	.align 8
.LC25:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC26:
	.string	"Usage: %s [OPTION]... DIRECTORY...\n"
	.align 8
.LC27:
	.string	"Create the DIRECTORY(ies), if they do not already exist.\n"
	.align 8
.LC28:
	.string	"  -m, --mode=MODE   set file mode (as in chmod), not a=rwx - umask\n  -p, --parents     no error if existing, make parent directories as needed\n  -v, --verbose     print a message for each created directory\n"
	.align 8
.LC29:
	.ascii	" "
	.string	" -Z                   set SELinux security context of each created directory\n                         to the default type\n      --context[=CTX]  like -Z, or if CTX is specified then set the SELinux\n                         or SMACK security context to CTX\n"
	.align 8
.LC30:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC31:
	.string	"      --version  output version information and exit\n"
.LC32:
	.string	"mkdir"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB52:
	.file 4 "src/mkdir.c"
	.loc 4 54 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	.loc 4 55 6
	cmpl	$0, -20(%rbp)
	je	.L21
	.loc 4 56 5
	movq	program_name(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L22
.L21:
	.loc 4 59 7
	movq	program_name(%rip), %rbx
	.loc 4 59 15
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	.loc 4 59 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 4 60 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 64 7
	call	emit_mandatory_arg_note
	.loc 4 66 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 71 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 77 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 78 7
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 79 7
	leaq	.LC32(%rip), %rdi
	call	emit_ancillary_info
.L22:
	.loc 4 81 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE52:
	.size	usage, .-usage
	.type	announce_mkdir, @function
announce_mkdir:
.LFB53:
	.loc 4 110 1
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
	.loc 4 111 31
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 4 112 8
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc 4 112 6
	testq	%rax, %rax
	je	.L25
	.loc 4 113 5
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movq	stdout(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	prog_fprintf@PLT
.L25:
	.loc 4 114 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	announce_mkdir, .-announce_mkdir
	.section	.rodata
	.align 8
.LC33:
	.string	"failed to set default creation context for %s"
	.text
	.type	make_ancestor, @function
make_ancestor:
.LFB54:
	.loc 4 123 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 4 124 31
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 4 126 8
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	.loc 4 126 6
	testq	%rax, %rax
	je	.L27
	.loc 4 127 10
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rcx
	movl	$16384, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	defaultcon@PLT
	.loc 4 127 7
	testl	%eax, %eax
	jns	.L27
	.loc 4 128 31
	call	__errno_location@PLT
	.loc 4 128 12
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ignorable_ctx_err
	.loc 4 128 10
	xorl	$1, %eax
	.loc 4 128 7
	testb	%al, %al
	je	.L27
	.loc 4 129 5
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 4 129 22
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 4 129 15
	call	__errno_location@PLT
	.loc 4 129 5
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L27:
	.loc 4 132 10
	movl	$192, -32(%rbp)
	.loc 4 133 31
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 4 133 45
	andl	-32(%rbp), %eax
	.loc 4 133 8
	testl	%eax, %eax
	setne	%al
	movb	%al, -37(%rbp)
	.loc 4 134 6
	cmpb	$0, -37(%rbp)
	je	.L28
	.loc 4 135 13
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 4 135 29
	movl	-32(%rbp), %edx
	notl	%edx
	.loc 4 135 5
	andl	%edx, %eax
	movl	%eax, %edi
	call	umask@PLT
.L28:
	.loc 4 136 11
	movq	-64(%rbp), %rax
	movl	$511, %esi
	movq	%rax, %rdi
	call	mkdir@PLT
	movl	%eax, -36(%rbp)
	.loc 4 137 6
	cmpb	$0, -37(%rbp)
	je	.L29
.LBB2:
	.loc 4 139 25
	call	__errno_location@PLT
	.loc 4 139 11
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 4 140 7
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edi
	call	umask@PLT
	.loc 4 141 7
	call	__errno_location@PLT
	.loc 4 141 13
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
.L29:
.LBE2:
	.loc 4 143 6
	cmpl	$0, -36(%rbp)
	jne	.L30
	.loc 4 145 13
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 4 145 27
	andl	$256, %eax
	.loc 4 145 38
	testl	%eax, %eax
	setne	%al
	.loc 4 145 9
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	.loc 4 146 7
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	announce_mkdir
.L30:
	.loc 4 148 10
	movl	-36(%rbp), %eax
	.loc 4 149 1
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	make_ancestor, .-make_ancestor
	.section	.rodata
	.align 8
.LC34:
	.string	"failed to restore context for %s"
	.text
	.type	process_dir, @function
process_dir:
.LFB55:
	.loc 4 154 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 4 155 31
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 4 158 8
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	.loc 4 158 6
	testq	%rax, %rax
	je	.L33
	.loc 4 160 14
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 160 10
	testq	%rax, %rax
	jne	.L33
	.loc 4 161 14
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	$16384, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	defaultcon@PLT
	.loc 4 161 11
	testl	%eax, %eax
	jns	.L33
	.loc 4 162 35
	call	__errno_location@PLT
	.loc 4 162 16
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ignorable_ctx_err
	.loc 4 162 14
	xorl	$1, %eax
	.loc 4 162 11
	testb	%al, %al
	je	.L33
	.loc 4 163 9
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 4 163 26
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 4 163 19
	call	__errno_location@PLT
	.loc 4 163 9
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L33:
	.loc 4 167 14
	movq	-24(%rbp), %rax
	movl	16(%rax), %edi
	movq	-24(%rbp), %rax
	movl	12(%rax), %r8d
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	$1
	pushq	$-1
	pushq	$-1
	pushq	%rdi
	leaq	announce_mkdir(%rip), %r9
	movq	%rax, %rdi
	call	make_dir_parents@PLT
	addq	$32, %rsp
	.loc 4 171 14
	xorl	$1, %eax
	.loc 4 167 7
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	.loc 4 178 6
	cmpl	$0, -28(%rbp)
	jne	.L34
	.loc 4 178 31 discriminator 1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	.loc 4 178 27 discriminator 1
	testq	%rax, %rax
	je	.L34
	.loc 4 179 11
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 179 7
	testq	%rax, %rax
	je	.L34
	.loc 4 181 50
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	movq	%rax, %rcx
	.loc 4 181 13
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	restorecon@PLT
	.loc 4 181 11
	xorl	$1, %eax
	.loc 4 181 10
	testb	%al, %al
	je	.L34
	.loc 4 182 35
	call	__errno_location@PLT
	.loc 4 182 16
	movl	(%rax), %eax
	movl	%eax, %edi
	call	ignorable_ctx_err
	.loc 4 182 14
	xorl	$1, %eax
	.loc 4 182 11
	testb	%al, %al
	je	.L34
	.loc 4 183 9
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 4 183 26
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 4 183 19
	call	__errno_location@PLT
	.loc 4 183 9
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L34:
	.loc 4 187 10
	movl	-28(%rbp), %eax
	.loc 4 188 1
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	process_dir, .-process_dir
	.section	.rodata
.LC35:
	.string	"/usr/local/share/locale"
.LC36:
	.string	"created directory %s"
.LC37:
	.string	"warning: ignoring --context"
	.align 8
.LC38:
	.string	"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel"
.LC39:
	.string	"David MacKenzie"
.LC40:
	.string	"pm:vZ"
.LC41:
	.string	"missing operand"
	.align 8
.LC42:
	.string	"failed to set default file creation context to %s"
.LC43:
	.string	"invalid mode %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB56:
	.loc 4 192 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	.loc 4 192 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 4 193 15
	movq	$0, -88(%rbp)
	.loc 4 195 15
	movq	$0, -80(%rbp)
	.loc 4 198 34
	movq	$0, -64(%rbp)
	.loc 4 199 16
	movl	$511, -52(%rbp)
	.loc 4 200 21
	movl	$0, -48(%rbp)
	.loc 4 201 36
	movq	$0, -32(%rbp)
	.loc 4 202 32
	movq	$0, -40(%rbp)
	.loc 4 205 3
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 4 206 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 4 207 3
	leaq	.LC35(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 4 208 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 4 210 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 4 212 9
	jmp	.L37
.L49:
	.loc 4 214 7
	cmpl	$118, -96(%rbp)
	je	.L38
	cmpl	$118, -96(%rbp)
	jg	.L39
	cmpl	$112, -96(%rbp)
	je	.L40
	cmpl	$112, -96(%rbp)
	jg	.L39
	cmpl	$109, -96(%rbp)
	je	.L41
	cmpl	$109, -96(%rbp)
	jg	.L39
	cmpl	$90, -96(%rbp)
	je	.L42
	cmpl	$90, -96(%rbp)
	jg	.L39
	cmpl	$-131, -96(%rbp)
	je	.L43
	cmpl	$-130, -96(%rbp)
	je	.L44
	jmp	.L39
.L40:
	.loc 4 217 42
	leaq	make_ancestor(%rip), %rax
	movq	%rax, -64(%rbp)
	.loc 4 218 11
	jmp	.L37
.L41:
	.loc 4 220 26
	movq	optarg(%rip), %rax
	movq	%rax, -88(%rbp)
	.loc 4 221 11
	jmp	.L37
.L38:
	.loc 4 223 46
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	.loc 4 223 44
	movq	%rax, -32(%rbp)
	.loc 4 224 11
	jmp	.L37
.L42:
	.loc 4 226 15
	call	is_smack_enabled
	.loc 4 226 14
	testb	%al, %al
	je	.L45
	.loc 4 229 24
	movq	optarg(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L37
.L45:
	.loc 4 231 20
	call	is_selinux_enabled@PLT
	.loc 4 231 19
	testl	%eax, %eax
	jle	.L47
	.loc 4 233 19
	movq	optarg(%rip), %rax
	.loc 4 233 18
	testq	%rax, %rax
	je	.L48
	.loc 4 234 26
	movq	optarg(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L37
.L48:
	.loc 4 237 50
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	selabel_open@PLT
	.loc 4 237 48
	movq	%rax, -40(%rbp)
	.loc 4 239 32
	movq	-40(%rbp), %rax
	.loc 4 239 22
	testq	%rax, %rax
	jne	.L37
	.loc 4 240 38
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 4 240 31
	call	__errno_location@PLT
	.loc 4 240 21
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L37
.L47:
	.loc 4 243 20
	movq	optarg(%rip), %rax
	.loc 4 243 19
	testq	%rax, %rax
	je	.L37
	.loc 4 246 22
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	.loc 4 245 15
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 4 249 11
	jmp	.L37
.L44:
	.loc 4 250 9
	movl	$0, %edi
	call	usage
.L43:
	.loc 4 251 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC39(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L39:
	.loc 4 253 11
	movl	$1, %edi
	call	usage
.L37:
	.loc 4 212 18
	movq	-128(%rbp), %rsi
	movl	-116(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -96(%rbp)
	.loc 4 212 9
	cmpl	$-1, -96(%rbp)
	jne	.L49
	.loc 4 257 14
	movl	optind(%rip), %eax
	.loc 4 257 6
	cmpl	%eax, -116(%rbp)
	jne	.L50
	.loc 4 259 20
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	.loc 4 259 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 4 260 7
	movl	$1, %edi
	call	usage
.L50:
	.loc 4 266 6
	cmpq	$0, -80(%rbp)
	je	.L51
.LBB3:
	.loc 4 268 11
	movl	$0, -100(%rbp)
	.loc 4 269 11
	call	is_smack_enabled
	.loc 4 269 10
	testb	%al, %al
	je	.L52
	.loc 4 270 15
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	smack_set_label_for_self
	movl	%eax, -100(%rbp)
	jmp	.L53
.L52:
	.loc 4 272 15
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	setfscreatecon@PLT
	movl	%eax, -100(%rbp)
.L53:
	.loc 4 274 10
	cmpl	$0, -100(%rbp)
	jns	.L51
.LBB4:
	.loc 4 275 9
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L51:
.LBE4:
.LBE3:
	.loc 4 281 14
	movq	-64(%rbp), %rax
	.loc 4 281 6
	testq	%rax, %rax
	jne	.L54
	.loc 4 281 38 discriminator 1
	cmpq	$0, -88(%rbp)
	je	.L55
.L54:
.LBB5:
	.loc 4 283 28
	movl	$0, %edi
	call	umask@PLT
	movl	%eax, -92(%rbp)
	.loc 4 284 7
	movl	-92(%rbp), %eax
	movl	%eax, %edi
	call	umask@PLT
	.loc 4 285 27
	movl	-92(%rbp), %eax
	movl	%eax, -56(%rbp)
	.loc 4 287 10
	cmpq	$0, -88(%rbp)
	je	.L56
.LBB6:
	.loc 4 289 40
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	mode_compile@PLT
	movq	%rax, -72(%rbp)
	.loc 4 290 14
	cmpq	$0, -72(%rbp)
	jne	.L57
.LBB7:
	.loc 4 291 13
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L57:
.LBE7:
	.loc 4 293 26
	leaq	-64(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-72(%rbp), %rdx
	movl	-92(%rbp), %eax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%eax, %edx
	movl	$1, %esi
	movl	$511, %edi
	call	mode_adjust@PLT
	.loc 4 293 24
	movl	%eax, -52(%rbp)
	.loc 4 295 11
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE6:
	jmp	.L55
.L56:
	.loc 4 298 22
	movl	$511, -52(%rbp)
.L55:
.LBE5:
	.loc 4 301 52
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 4 301 10
	movq	-128(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	optind(%rip), %eax
	movl	-116(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %edi
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	leaq	process_dir(%rip), %rdx
	call	savewd_process_files@PLT
	.loc 4 303 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L59
	call	__stack_chk_fail@PLT
.L59:
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	main, .-main
.Letext0:
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 11 "/usr/include/x86_64-linux-gnu/sys/types.h"
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
	.file 23 "./lib/version-etc.h"
	.file 24 "./lib/progname.h"
	.file 25 "./lib/quotearg.h"
	.file 26 "./lib/error.h"
	.file 27 "./lib/quote.h"
	.file 28 "./lib/savewd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb85
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF160
	.byte	0xc
	.long	.LASF161
	.long	.LASF162
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x5
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
	.byte	0x6
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF9
	.byte	0x6
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF10
	.byte	0x6
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF12
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF13
	.byte	0x6
	.byte	0x9a
	.byte	0x19
	.long	0x65
	.uleb128 0x2
	.long	.LASF14
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xd2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x8
	.long	0xd2
	.uleb128 0x9
	.long	.LASF69
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x265
	.uleb128 0xa
	.long	.LASF16
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0xcc
	.byte	0x8
	.uleb128 0xa
	.long	.LASF18
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0xcc
	.byte	0x10
	.uleb128 0xa
	.long	.LASF19
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0xcc
	.byte	0x18
	.uleb128 0xa
	.long	.LASF20
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0xcc
	.byte	0x20
	.uleb128 0xa
	.long	.LASF21
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0xcc
	.byte	0x28
	.uleb128 0xa
	.long	.LASF22
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0xcc
	.byte	0x30
	.uleb128 0xa
	.long	.LASF23
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0xcc
	.byte	0x38
	.uleb128 0xa
	.long	.LASF24
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0xcc
	.byte	0x40
	.uleb128 0xa
	.long	.LASF25
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0xcc
	.byte	0x48
	.uleb128 0xa
	.long	.LASF26
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0xcc
	.byte	0x50
	.uleb128 0xa
	.long	.LASF27
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0xcc
	.byte	0x58
	.uleb128 0xa
	.long	.LASF28
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x27e
	.byte	0x60
	.uleb128 0xa
	.long	.LASF29
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x284
	.byte	0x68
	.uleb128 0xa
	.long	.LASF30
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF31
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x9c
	.byte	0x78
	.uleb128 0xa
	.long	.LASF33
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF34
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x28a
	.byte	0x83
	.uleb128 0xa
	.long	.LASF36
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x29a
	.byte	0x88
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0xa8
	.byte	0x90
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x2a5
	.byte	0x98
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x2b0
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x284
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF43
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF44
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x2b6
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF45
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0xde
	.uleb128 0xb
	.long	.LASF163
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF46
	.uleb128 0x7
	.byte	0x8
	.long	0x279
	.uleb128 0x7
	.byte	0x8
	.long	0xde
	.uleb128 0xd
	.long	0xd2
	.long	0x29a
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x271
	.uleb128 0xc
	.long	.LASF47
	.uleb128 0x7
	.byte	0x8
	.long	0x2a0
	.uleb128 0xc
	.long	.LASF48
	.uleb128 0x7
	.byte	0x8
	.long	0x2ab
	.uleb128 0xd
	.long	0xd2
	.long	0x2c6
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xd9
	.uleb128 0x8
	.long	0x2c6
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x2dd
	.uleb128 0x7
	.byte	0x8
	.long	0x265
	.uleb128 0xf
	.long	.LASF50
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x2dd
	.uleb128 0xf
	.long	.LASF51
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x2dd
	.uleb128 0xf
	.long	.LASF52
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2cc
	.long	0x312
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x307
	.uleb128 0xf
	.long	.LASF53
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x312
	.uleb128 0xf
	.long	.LASF54
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF55
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x312
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF56
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF57
	.uleb128 0x2
	.long	.LASF58
	.byte	0xb
	.byte	0x40
	.byte	0x11
	.long	0x84
	.uleb128 0x2
	.long	.LASF59
	.byte	0xb
	.byte	0x45
	.byte	0x12
	.long	0x90
	.uleb128 0x2
	.long	.LASF60
	.byte	0xb
	.byte	0x4f
	.byte	0x11
	.long	0x78
	.uleb128 0x2
	.long	.LASF61
	.byte	0xb
	.byte	0x61
	.byte	0x11
	.long	0xb4
	.uleb128 0x2
	.long	.LASF62
	.byte	0xc
	.byte	0x7
	.byte	0x12
	.long	0xc0
	.uleb128 0x11
	.long	.LASF63
	.byte	0xd
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF64
	.uleb128 0xf
	.long	.LASF65
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0xcc
	.uleb128 0xf
	.long	.LASF66
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF67
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF68
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF70
	.byte	0x20
	.byte	0xf
	.byte	0x32
	.byte	0x8
	.long	0x40b
	.uleb128 0xa
	.long	.LASF71
	.byte	0xf
	.byte	0x34
	.byte	0xf
	.long	0x2c6
	.byte	0
	.uleb128 0xa
	.long	.LASF72
	.byte	0xf
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF73
	.byte	0xf
	.byte	0x38
	.byte	0x8
	.long	0x410
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xf
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x3c9
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0x7
	.byte	0x8
	.long	0xcc
	.uleb128 0xd
	.long	0xcc
	.long	0x42c
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF74
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x41c
	.uleb128 0xf
	.long	.LASF75
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF76
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF77
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x41c
	.uleb128 0xf
	.long	.LASF78
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF79
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF80
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x481
	.uleb128 0xd
	.long	0x2cc
	.long	0x498
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x488
	.uleb128 0x11
	.long	.LASF81
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x498
	.uleb128 0x11
	.long	.LASF82
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x498
	.uleb128 0x11
	.long	.LASF83
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x416
	.uleb128 0x11
	.long	.LASF84
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x416
	.uleb128 0xf
	.long	.LASF85
	.byte	0x13
	.byte	0x2d
	.byte	0xe
	.long	0xcc
	.uleb128 0xf
	.long	.LASF86
	.byte	0x13
	.byte	0x2e
	.byte	0xe
	.long	0xcc
	.uleb128 0xf
	.long	.LASF87
	.byte	0x14
	.byte	0x1
	.byte	0x14
	.long	0x2c6
	.uleb128 0xf
	.long	.LASF88
	.byte	0x15
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.long	0x519
	.uleb128 0x15
	.long	.LASF89
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x52e
	.uleb128 0x16
	.long	.LASF90
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x54c
	.uleb128 0x18
	.long	.LASF91
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF92
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xd9
	.long	0x557
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x54c
	.uleb128 0xf
	.long	.LASF93
	.byte	0x17
	.byte	0x19
	.byte	0x13
	.long	0x557
	.uleb128 0xf
	.long	.LASF94
	.byte	0x18
	.byte	0x20
	.byte	0x14
	.long	0x2c6
	.uleb128 0x19
	.long	.LASF164
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x20
	.byte	0x6
	.long	0x5c9
	.uleb128 0x16
	.long	.LASF95
	.byte	0
	.uleb128 0x16
	.long	.LASF96
	.byte	0x1
	.uleb128 0x16
	.long	.LASF97
	.byte	0x2
	.uleb128 0x16
	.long	.LASF98
	.byte	0x3
	.uleb128 0x16
	.long	.LASF99
	.byte	0x4
	.uleb128 0x16
	.long	.LASF100
	.byte	0x5
	.uleb128 0x16
	.long	.LASF101
	.byte	0x6
	.uleb128 0x16
	.long	.LASF102
	.byte	0x7
	.uleb128 0x16
	.long	.LASF103
	.byte	0x8
	.uleb128 0x16
	.long	.LASF104
	.byte	0x9
	.uleb128 0x16
	.long	.LASF105
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x574
	.uleb128 0x11
	.long	.LASF106
	.byte	0x19
	.value	0x10b
	.byte	0x1a
	.long	0x312
	.uleb128 0xd
	.long	0x5c9
	.long	0x5e6
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5db
	.uleb128 0x11
	.long	.LASF107
	.byte	0x19
	.value	0x10c
	.byte	0x21
	.long	0x5e6
	.uleb128 0xf
	.long	.LASF108
	.byte	0x1a
	.byte	0x32
	.byte	0xf
	.long	0x482
	.uleb128 0xf
	.long	.LASF109
	.byte	0x1a
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF110
	.byte	0x1a
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF111
	.uleb128 0xf
	.long	.LASF112
	.byte	0x1b
	.byte	0x19
	.byte	0x1f
	.long	0x61c
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x28
	.byte	0x5
	.long	0x660
	.uleb128 0x16
	.long	.LASF113
	.byte	0
	.uleb128 0x16
	.long	.LASF114
	.byte	0x1
	.uleb128 0x16
	.long	.LASF115
	.byte	0x2
	.uleb128 0x16
	.long	.LASF116
	.byte	0x3
	.uleb128 0x16
	.long	.LASF117
	.byte	0x4
	.uleb128 0x16
	.long	.LASF118
	.byte	0x5
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.byte	0x1c
	.byte	0x45
	.byte	0x3
	.long	0x68d
	.uleb128 0x1b
	.string	"fd"
	.byte	0x1c
	.byte	0x47
	.byte	0x9
	.long	0x65
	.uleb128 0x1c
	.long	.LASF119
	.byte	0x1c
	.byte	0x48
	.byte	0x9
	.long	0x65
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x1c
	.byte	0x49
	.byte	0xb
	.long	0x36d
	.byte	0
	.uleb128 0x9
	.long	.LASF121
	.byte	0x8
	.byte	0x1c
	.byte	0x24
	.byte	0x8
	.long	0x6b5
	.uleb128 0xa
	.long	.LASF122
	.byte	0x1c
	.byte	0x42
	.byte	0x7
	.long	0x62d
	.byte	0
	.uleb128 0x12
	.string	"val"
	.byte	0x1c
	.byte	0x4a
	.byte	0x5
	.long	0x660
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	0x40b
	.long	0x6c5
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x6b5
	.uleb128 0x1d
	.long	.LASF133
	.byte	0x4
	.byte	0x29
	.byte	0x1c
	.long	0x6c5
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x9
	.long	.LASF123
	.byte	0x28
	.byte	0x4
	.byte	0x55
	.byte	0x8
	.long	0x73c
	.uleb128 0xa
	.long	.LASF124
	.byte	0x4
	.byte	0x59
	.byte	0x9
	.long	0x75a
	.byte	0
	.uleb128 0xa
	.long	.LASF125
	.byte	0x4
	.byte	0x5c
	.byte	0xa
	.long	0x355
	.byte	0x8
	.uleb128 0xa
	.long	.LASF126
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x355
	.byte	0xc
	.uleb128 0xa
	.long	.LASF127
	.byte	0x4
	.byte	0x62
	.byte	0xa
	.long	0x355
	.byte	0x10
	.uleb128 0xa
	.long	.LASF128
	.byte	0x4
	.byte	0x65
	.byte	0x1a
	.long	0x765
	.byte	0x18
	.uleb128 0xa
	.long	.LASF129
	.byte	0x4
	.byte	0x68
	.byte	0xf
	.long	0x2c6
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.long	0x6e0
	.uleb128 0x1e
	.long	0x65
	.long	0x75a
	.uleb128 0x1f
	.long	0x2c6
	.uleb128 0x1f
	.long	0x2c6
	.uleb128 0x1f
	.long	0x47
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x741
	.uleb128 0xc
	.long	.LASF130
	.uleb128 0x7
	.byte	0x8
	.long	0x760
	.uleb128 0x20
	.long	.LASF147
	.byte	0x4
	.byte	0xbf
	.byte	0x1
	.long	0x65
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x87d
	.uleb128 0x21
	.long	.LASF131
	.byte	0x4
	.byte	0xbf
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x21
	.long	.LASF132
	.byte	0x4
	.byte	0xbf
	.byte	0x18
	.long	0x416
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1d
	.long	.LASF134
	.byte	0x4
	.byte	0xc1
	.byte	0xf
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1d
	.long	.LASF135
	.byte	0x4
	.byte	0xc2
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1d
	.long	.LASF136
	.byte	0x4
	.byte	0xc3
	.byte	0xf
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.long	.LASF137
	.byte	0x4
	.byte	0xc4
	.byte	0x18
	.long	0x6e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x825
	.uleb128 0x23
	.string	"ret"
	.byte	0x4
	.value	0x10c
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x24
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x26
	.long	.LASF125
	.byte	0x4
	.value	0x11b
	.byte	0xe
	.long	0x355
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x25
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x26
	.long	.LASF138
	.byte	0x4
	.value	0x121
	.byte	0x1f
	.long	0x882
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF139
	.uleb128 0x7
	.byte	0x8
	.long	0x87d
	.uleb128 0x27
	.long	.LASF140
	.byte	0x4
	.byte	0x99
	.byte	0x1
	.long	0x65
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f4
	.uleb128 0x28
	.string	"dir"
	.byte	0x4
	.byte	0x99
	.byte	0x14
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"wd"
	.byte	0x4
	.byte	0x99
	.byte	0x28
	.long	0x8f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF137
	.byte	0x4
	.byte	0x99
	.byte	0x32
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"o"
	.byte	0x4
	.byte	0x9b
	.byte	0x1f
	.long	0x8fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"ret"
	.byte	0x4
	.byte	0xa7
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x68d
	.uleb128 0x7
	.byte	0x8
	.long	0x73c
	.uleb128 0x27
	.long	.LASF141
	.byte	0x4
	.byte	0x7a
	.byte	0x1
	.long	0x65
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ac
	.uleb128 0x28
	.string	"dir"
	.byte	0x4
	.byte	0x7a
	.byte	0x1c
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF142
	.byte	0x4
	.byte	0x7a
	.byte	0x2d
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF137
	.byte	0x4
	.byte	0x7a
	.byte	0x3e
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"o"
	.byte	0x4
	.byte	0x7c
	.byte	0x1f
	.long	0x8fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF143
	.byte	0x4
	.byte	0x84
	.byte	0xa
	.long	0x355
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF144
	.byte	0x4
	.byte	0x85
	.byte	0x8
	.long	0x9ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x29
	.string	"r"
	.byte	0x4
	.byte	0x88
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1d
	.long	.LASF145
	.byte	0x4
	.byte	0x8b
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF146
	.uleb128 0x2a
	.long	.LASF153
	.byte	0x4
	.byte	0x6d
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x9fd
	.uleb128 0x28
	.string	"dir"
	.byte	0x4
	.byte	0x6d
	.byte	0x1d
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF137
	.byte	0x4
	.byte	0x6d
	.byte	0x28
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"o"
	.byte	0x4
	.byte	0x6f
	.byte	0x1f
	.long	0x8fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF148
	.byte	0x4
	.byte	0x35
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xa2b
	.uleb128 0x21
	.long	.LASF149
	.byte	0x4
	.byte	0x35
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2c
	.long	.LASF165
	.byte	0x3
	.byte	0x27
	.byte	0x1
	.long	0x9ac
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF150
	.byte	0x3
	.byte	0x20
	.byte	0x1
	.long	0x65
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xa7b
	.uleb128 0x21
	.long	.LASF151
	.byte	0x3
	.byte	0x20
	.byte	0x27
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF152
	.byte	0x2
	.byte	0x1b
	.byte	0x1
	.long	0x9ac
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xaad
	.uleb128 0x28
	.string	"err"
	.byte	0x2
	.byte	0x1b
	.byte	0x18
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF154
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xb52
	.uleb128 0x2f
	.long	.LASF155
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x30
	.long	.LASF156
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xb08
	.uleb128 0x31
	.long	.LASF155
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2c6
	.byte	0
	.uleb128 0x31
	.long	.LASF157
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2c6
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xadd
	.uleb128 0x26
	.long	.LASF156
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xb62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF157
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.long	.LASF158
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xb67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x26
	.long	.LASF159
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0xb08
	.long	0xb62
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xb52
	.uleb128 0x7
	.byte	0x8
	.long	0xb08
	.uleb128 0x32
	.long	.LASF166
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2b
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2116
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
.LASF9:
	.string	"__gid_t"
.LASF17:
	.string	"_IO_read_ptr"
.LASF103:
	.string	"locale_quoting_style"
.LASF29:
	.string	"_chain"
.LASF92:
	.string	"GETOPT_VERSION_CHAR"
.LASF123:
	.string	"mkdir_options"
.LASF164:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF90:
	.string	"LOG10_TIMESPEC_HZ"
.LASF150:
	.string	"smack_set_label_for_self"
.LASF35:
	.string	"_shortbuf"
.LASF96:
	.string	"shell_quoting_style"
.LASF91:
	.string	"GETOPT_HELP_CHAR"
.LASF23:
	.string	"_IO_buf_base"
.LASF138:
	.string	"change"
.LASF64:
	.string	"long long unsigned int"
.LASF134:
	.string	"specified_mode"
.LASF38:
	.string	"_codecvt"
.LASF133:
	.string	"longopts"
.LASF76:
	.string	"__timezone"
.LASF86:
	.string	"program_invocation_short_name"
.LASF56:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF107:
	.string	"quoting_style_vals"
.LASF155:
	.string	"program"
.LASF102:
	.string	"escape_quoting_style"
.LASF10:
	.string	"__mode_t"
.LASF95:
	.string	"literal_quoting_style"
.LASF30:
	.string	"_fileno"
.LASF18:
	.string	"_IO_read_end"
.LASF140:
	.string	"process_dir"
.LASF122:
	.string	"state"
.LASF82:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF63:
	.string	"_gl_cxxalias_dummy"
.LASF16:
	.string	"_flags"
.LASF39:
	.string	"_wide_data"
.LASF24:
	.string	"_IO_buf_end"
.LASF33:
	.string	"_cur_column"
.LASF136:
	.string	"scontext"
.LASF100:
	.string	"c_quoting_style"
.LASF47:
	.string	"_IO_codecvt"
.LASF115:
	.string	"FD_POST_CHDIR_STATE"
.LASF85:
	.string	"program_invocation_name"
.LASF32:
	.string	"_old_offset"
.LASF37:
	.string	"_offset"
.LASF127:
	.string	"mode_bits"
.LASF89:
	.string	"TIMESPEC_HZ"
.LASF99:
	.string	"shell_escape_always_quoting_style"
.LASF79:
	.string	"timezone"
.LASF125:
	.string	"umask_value"
.LASF124:
	.string	"make_ancestor_function"
.LASF94:
	.string	"program_name"
.LASF113:
	.string	"INITIAL_STATE"
.LASF46:
	.string	"_IO_marker"
.LASF49:
	.string	"stdin"
.LASF126:
	.string	"mode"
.LASF1:
	.string	"unsigned int"
.LASF145:
	.string	"mkdir_errno"
.LASF130:
	.string	"selabel_handle"
.LASF0:
	.string	"long unsigned int"
.LASF21:
	.string	"_IO_write_ptr"
.LASF71:
	.string	"name"
.LASF52:
	.string	"sys_nerr"
.LASF156:
	.string	"infomap"
.LASF60:
	.string	"uid_t"
.LASF160:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF105:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF110:
	.string	"error_one_per_line"
.LASF87:
	.string	"Version"
.LASF25:
	.string	"_IO_save_base"
.LASF84:
	.string	"environ"
.LASF151:
	.string	"label"
.LASF36:
	.string	"_lock"
.LASF31:
	.string	"_flags2"
.LASF43:
	.string	"_mode"
.LASF50:
	.string	"stdout"
.LASF135:
	.string	"optc"
.LASF93:
	.string	"version_etc_copyright"
.LASF153:
	.string	"announce_mkdir"
.LASF118:
	.string	"FINAL_STATE"
.LASF65:
	.string	"optarg"
.LASF139:
	.string	"mode_change"
.LASF158:
	.string	"map_prog"
.LASF80:
	.string	"getdate_err"
.LASF114:
	.string	"FD_STATE"
.LASF22:
	.string	"_IO_write_end"
.LASF128:
	.string	"set_security_context"
.LASF163:
	.string	"_IO_lock_t"
.LASF69:
	.string	"_IO_FILE"
.LASF108:
	.string	"error_print_progname"
.LASF121:
	.string	"savewd"
.LASF11:
	.string	"__off_t"
.LASF83:
	.string	"__environ"
.LASF62:
	.string	"time_t"
.LASF53:
	.string	"sys_errlist"
.LASF28:
	.string	"_markers"
.LASF129:
	.string	"created_directory_format"
.LASF101:
	.string	"c_maybe_quoting_style"
.LASF146:
	.string	"_Bool"
.LASF161:
	.string	"src/mkdir.c"
.LASF2:
	.string	"unsigned char"
.LASF120:
	.string	"child"
.LASF157:
	.string	"node"
.LASF13:
	.string	"__pid_t"
.LASF5:
	.string	"short int"
.LASF70:
	.string	"option"
.LASF112:
	.string	"quote_quoting_options"
.LASF73:
	.string	"flag"
.LASF54:
	.string	"_sys_nerr"
.LASF77:
	.string	"tzname"
.LASF45:
	.string	"FILE"
.LASF88:
	.string	"exit_failure"
.LASF143:
	.string	"user_wx"
.LASF66:
	.string	"optind"
.LASF98:
	.string	"shell_escape_quoting_style"
.LASF106:
	.string	"quoting_style_args"
.LASF68:
	.string	"optopt"
.LASF78:
	.string	"daylight"
.LASF144:
	.string	"self_denying_umask"
.LASF57:
	.string	"long double"
.LASF15:
	.string	"char"
.LASF97:
	.string	"shell_always_quoting_style"
.LASF104:
	.string	"clocale_quoting_style"
.LASF55:
	.string	"_sys_errlist"
.LASF67:
	.string	"opterr"
.LASF8:
	.string	"__uid_t"
.LASF12:
	.string	"__off64_t"
.LASF111:
	.string	"quoting_options"
.LASF19:
	.string	"_IO_read_base"
.LASF27:
	.string	"_IO_save_end"
.LASF81:
	.string	"_sys_siglist"
.LASF141:
	.string	"make_ancestor"
.LASF72:
	.string	"has_arg"
.LASF148:
	.string	"usage"
.LASF42:
	.string	"__pad5"
.LASF14:
	.string	"__time_t"
.LASF117:
	.string	"ERROR_STATE"
.LASF44:
	.string	"_unused2"
.LASF51:
	.string	"stderr"
.LASF132:
	.string	"argv"
.LASF75:
	.string	"__daylight"
.LASF165:
	.string	"is_smack_enabled"
.LASF149:
	.string	"status"
.LASF162:
	.string	"/root/coreutils"
.LASF142:
	.string	"component"
.LASF59:
	.string	"mode_t"
.LASF41:
	.string	"_freeres_buf"
.LASF26:
	.string	"_IO_backup_base"
.LASF119:
	.string	"errnum"
.LASF58:
	.string	"gid_t"
.LASF109:
	.string	"error_message_count"
.LASF159:
	.string	"lc_messages"
.LASF34:
	.string	"_vtable_offset"
.LASF137:
	.string	"options"
.LASF131:
	.string	"argc"
.LASF61:
	.string	"pid_t"
.LASF40:
	.string	"_freeres_list"
.LASF48:
	.string	"_IO_wide_data"
.LASF166:
	.string	"emit_mandatory_arg_note"
.LASF74:
	.string	"__tzname"
.LASF147:
	.string	"main"
.LASF20:
	.string	"_IO_write_base"
.LASF154:
	.string	"emit_ancillary_info"
.LASF152:
	.string	"ignorable_ctx_err"
.LASF116:
	.string	"FORKING_STATE"
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
