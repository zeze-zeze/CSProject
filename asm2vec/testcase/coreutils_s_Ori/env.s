	.file	"env.c"
	.text
.Ltext0:
	.type	initialize_exit_failure, @function
initialize_exit_failure:
.LFB21:
	.file 1 "src/system.h"
	.loc 1 100 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 101 6
	cmpl	$1, -4(%rbp)
	je	.L3
	.loc 1 102 18
	movl	-4(%rbp), %eax
	movl	%eax, exit_failure(%rip)
.L3:
	.loc 1 103 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	initialize_exit_failure, .-initialize_exit_failure
	.section	.rodata
	.align 8
.LC0:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.text
	.type	emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
.LFB51:
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
.LFE51:
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
.LFB55:
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
	jmp	.L6
.L8:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L6:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L7
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L8
.L7:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L9
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L9:
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
	je	.L10
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L10
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L10:
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
	jne	.L11
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC16(%rip), %rbx
	jmp	.L12
.L11:
	.loc 1 671 3 discriminator 2
	leaq	.LC17(%rip), %rbx
.L12:
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
	je	.L13
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L13:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.local	usvars
	.comm	usvars,8,8
	.local	usvars_alloc
	.comm	usvars_alloc,8,8
	.local	usvars_used
	.comm	usvars_used,8,8
	.local	dev_debug
	.comm	dev_debug,1,1
	.local	varname
	.comm	varname,8,8
	.local	vnlen
	.comm	vnlen,8,8
	.local	signals
	.comm	signals,8,8
	.local	block_signals
	.comm	block_signals,128,32
	.local	unblock_signals
	.comm	unblock_signals,128,32
	.local	sig_mask_changed
	.comm	sig_mask_changed,1,1
	.local	report_signal_handling
	.comm	report_signal_handling,1,1
	.section	.rodata
	.align 8
	.type	shortopts, @object
	.size	shortopts, 13
shortopts:
	.string	"+C:iS:u:v0 \t"
.LC19:
	.string	"ignore-environment"
.LC20:
	.string	"null"
.LC21:
	.string	"unset"
.LC22:
	.string	"chdir"
.LC23:
	.string	"default-signal"
.LC24:
	.string	"ignore-signal"
.LC25:
	.string	"block-signal"
.LC26:
	.string	"list-signal-handling"
.LC27:
	.string	"debug"
.LC28:
	.string	"split-string"
.LC29:
	.string	"help"
.LC30:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 416
longopts:
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	48
	.zero	4
	.quad	.LC21
	.long	1
	.zero	4
	.quad	0
	.long	117
	.zero	4
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.long	67
	.zero	4
	.quad	.LC23
	.long	2
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC24
	.long	2
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC25
	.long	2
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC28
	.long	1
	.zero	4
	.quad	0
	.long	83
	.zero	4
	.quad	.LC29
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC30
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
.LC31:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC32:
	.string	"Usage: %s [OPTION]... [-] [NAME=VALUE]... [COMMAND [ARG]...]\n"
	.align 8
.LC33:
	.string	"Set each NAME to VALUE in the environment and run COMMAND.\n"
	.align 8
.LC34:
	.string	"  -i, --ignore-environment  start with an empty environment\n  -0, --null           end each output line with NUL, not newline\n  -u, --unset=NAME     remove variable from the environment\n"
	.align 8
.LC35:
	.string	"  -C, --chdir=DIR      change working directory to DIR\n"
	.align 8
.LC36:
	.string	"  -S, --split-string=S  process and split S into separate arguments;\n                        used to pass multiple arguments on shebang lines\n"
	.align 8
.LC37:
	.string	"      --block-signal[=SIG]    block delivery of SIG signal(s) to COMMAND\n"
	.align 8
.LC38:
	.string	"      --default-signal[=SIG]  reset handling of SIG signal(s) to the default\n"
	.align 8
.LC39:
	.string	"      --ignore-signal[=SIG]   set handling of SIG signals(s) to do nothing\n"
	.align 8
.LC40:
	.string	"      --list-signal-handling  list non default signal handling to stderr\n"
	.align 8
.LC41:
	.string	"  -v, --debug          print verbose information for each processing step\n"
	.align 8
.LC42:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC43:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC44:
	.string	"\nA mere - implies -i.  If no COMMAND, print the resulting environment.\n"
	.align 8
.LC45:
	.string	"\nSIG may be a signal name like 'PIPE', or a signal number like '13'.\nWithout SIG, all known signals are included.  Multiple signals can be\ncomma-separated.\n"
.LC46:
	.string	"env"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB61:
	.file 2 "src/env.c"
	.loc 2 107 1 is_stmt 1
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
	.loc 2 108 6
	cmpl	$0, -20(%rbp)
	je	.L15
	.loc 2 109 5
	movq	program_name(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L16
.L15:
	.loc 2 112 7
	movq	program_name(%rip), %rbx
	.loc 2 112 15
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	.loc 2 112 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 115 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 119 7
	call	emit_mandatory_arg_note
	.loc 2 121 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 126 7
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 129 7
	movq	stdout(%rip), %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 133 7
	movq	stdout(%rip), %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 136 7
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 139 7
	movq	stdout(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 142 7
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 145 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 148 7
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 149 7
	movq	stdout(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 150 7
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 154 7
	movq	stdout(%rip), %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 160 7
	leaq	.LC46(%rip), %rdi
	call	emit_ancillary_info
.L16:
	.loc 2 162 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE61:
	.size	usage, .-usage
	.type	append_unset_var, @function
append_unset_var:
.LFB62:
	.loc 2 167 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 168 19
	movq	usvars_used(%rip), %rdx
	movq	usvars_alloc(%rip), %rax
	.loc 2 168 6
	cmpq	%rax, %rdx
	jne	.L18
	.loc 2 169 14
	movq	usvars(%rip), %rax
	movl	$8, %edx
	leaq	usvars_alloc(%rip), %rsi
	movq	%rax, %rdi
	call	x2nrealloc@PLT
	.loc 2 169 12
	movq	%rax, usvars(%rip)
.L18:
	.loc 2 170 9
	movq	usvars(%rip), %rcx
	.loc 2 170 21
	movq	usvars_used(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, usvars_used(%rip)
	.loc 2 170 9
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	.loc 2 170 25
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 2 171 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	append_unset_var, .-append_unset_var
	.section	.rodata
.LC47:
	.string	"unset:    %s\n"
.LC48:
	.string	"cannot unset %s"
	.text
	.type	unset_envvars, @function
unset_envvars:
.LFB63:
	.loc 2 175 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
.LBB2:
	.loc 2 176 15
	movq	$0, -24(%rbp)
	.loc 2 176 3
	jmp	.L20
.L23:
	.loc 2 178 7
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L21
	.loc 2 178 7 is_stmt 0 discriminator 1
	movq	usvars(%rip), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L21:
	.loc 2 180 27 is_stmt 1
	movq	usvars(%rip), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 180 11
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	unsetenv@PLT
	.loc 2 180 10
	testl	%eax, %eax
	je	.L22
.LBB3:
	.loc 2 181 9
	movq	usvars(%rip), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L22:
.LBE3:
	.loc 2 176 39 discriminator 2
	addq	$1, -24(%rbp)
.L20:
	.loc 2 176 24 discriminator 1
	movq	usvars_used(%rip), %rax
	.loc 2 176 3 discriminator 1
	cmpq	%rax, -24(%rbp)
	jb	.L23
.LBE2:
	.loc 2 185 3
	movq	usvars(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 186 3
	movq	$0, usvars(%rip)
	.loc 2 187 3
	movq	$0, usvars_used(%rip)
	.loc 2 188 3
	movq	$0, usvars_alloc(%rip)
	.loc 2 189 1
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	unset_envvars, .-unset_envvars
	.type	valid_escape_sequence, @function
valid_escape_sequence:
.LFB64:
	.loc 2 193 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 196 11
	cmpb	$99, -4(%rbp)
	je	.L25
	.loc 2 194 20
	cmpb	$102, -4(%rbp)
	je	.L25
	.loc 2 194 32 discriminator 1
	cmpb	$110, -4(%rbp)
	je	.L25
	.loc 2 194 44 discriminator 2
	cmpb	$114, -4(%rbp)
	je	.L25
	.loc 2 194 56 discriminator 3
	cmpb	$116, -4(%rbp)
	je	.L25
	.loc 2 194 68 discriminator 4
	cmpb	$118, -4(%rbp)
	je	.L25
	.loc 2 195 11
	cmpb	$35, -4(%rbp)
	je	.L25
	.loc 2 195 23 discriminator 1
	cmpb	$36, -4(%rbp)
	je	.L25
	.loc 2 195 35 discriminator 2
	cmpb	$95, -4(%rbp)
	je	.L25
	.loc 2 195 47 discriminator 3
	cmpb	$34, -4(%rbp)
	je	.L25
	.loc 2 195 59 discriminator 4
	cmpb	$39, -4(%rbp)
	je	.L25
	.loc 2 196 11 discriminator 2
	cmpb	$92, -4(%rbp)
	jne	.L26
.L25:
	.loc 2 196 11 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L27
.L26:
	.loc 2 196 11 discriminator 3
	movl	$0, %eax
.L27:
	.loc 2 196 11 discriminator 5
	andl	$1, %eax
	.loc 2 197 1 is_stmt 1 discriminator 5
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	valid_escape_sequence, .-valid_escape_sequence
	.section	.rodata
.LC49:
	.string	"src/env.c"
.LC50:
	.string	"0"
	.text
	.type	escape_char, @function
escape_char:
.LFB65:
	.loc 2 201 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 2 202 3
	movsbl	-4(%rbp), %eax
	subl	$102, %eax
	cmpl	$16, %eax
	ja	.L38
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L32(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L32(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L32:
	.long	.L36-.L32
	.long	.L38-.L32
	.long	.L38-.L32
	.long	.L38-.L32
	.long	.L38-.L32
	.long	.L38-.L32
	.long	.L38-.L32
	.long	.L38-.L32
	.long	.L35-.L32
	.long	.L38-.L32
	.long	.L38-.L32
	.long	.L38-.L32
	.long	.L34-.L32
	.long	.L38-.L32
	.long	.L33-.L32
	.long	.L38-.L32
	.long	.L31-.L32
	.text
.L36:
	.loc 2 205 22
	movl	$12, %eax
	jmp	.L37
.L35:
	.loc 2 206 22
	movl	$10, %eax
	jmp	.L37
.L34:
	.loc 2 207 22
	movl	$13, %eax
	jmp	.L37
.L33:
	.loc 2 208 22
	movl	$9, %eax
	jmp	.L37
.L31:
	.loc 2 209 22
	movl	$11, %eax
	jmp	.L37
.L38:
	.loc 2 210 15 discriminator 1
	leaq	__PRETTY_FUNCTION__.6992(%rip), %rcx
	movl	$210, %edx
	leaq	.LC49(%rip), %rsi
	leaq	.LC50(%rip), %rdi
	call	__assert_fail@PLT
.L37:
	.loc 2 212 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	escape_char, .-escape_char
	.section	.rodata
.LC51:
	.string	"str && *str == '$'"
	.text
	.type	scan_varname, @function
scan_varname:
.LFB66:
	.loc 2 220 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 221 3
	cmpq	$0, -24(%rbp)
	je	.L40
	.loc 2 221 3 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$36, %al
	je	.L47
.L40:
	.loc 2 221 3 discriminator 3
	leaq	__PRETTY_FUNCTION__.6996(%rip), %rcx
	movl	$221, %edx
	leaq	.LC49(%rip), %rsi
	leaq	.LC51(%rip), %rdi
	call	__assert_fail@PLT
.L47:
	.loc 2 222 13 is_stmt 1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	.loc 2 222 8
	movzbl	(%rax), %eax
	.loc 2 222 6
	cmpb	$123, %al
	jne	.L42
	.loc 2 222 44 discriminator 1
	movq	-24(%rbp), %rax
	addq	$2, %rax
	.loc 2 222 39 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 222 28 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	c_isalpha@PLT
	.loc 2 222 24 discriminator 1
	testb	%al, %al
	jne	.L43
	.loc 2 222 57 discriminator 2
	movq	-24(%rbp), %rax
	addq	$2, %rax
	.loc 2 222 52 discriminator 2
	movzbl	(%rax), %eax
	.loc 2 222 49 discriminator 2
	cmpb	$95, %al
	jne	.L42
.L43:
.LBB4:
	.loc 2 224 19
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -8(%rbp)
	.loc 2 225 13
	jmp	.L44
.L45:
	.loc 2 226 9
	addq	$1, -8(%rbp)
.L44:
	.loc 2 225 25
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 225 14
	movsbl	%al, %eax
	movl	%eax, %edi
	call	c_isalnum@PLT
	.loc 2 225 13
	testb	%al, %al
	jne	.L45
	.loc 2 225 34 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 225 31 discriminator 1
	cmpb	$95, %al
	je	.L45
	.loc 2 227 11
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 227 10
	cmpb	$125, %al
	jne	.L42
	.loc 2 228 16
	movq	-8(%rbp), %rax
	jmp	.L46
.L42:
.LBE4:
	.loc 2 231 10
	movl	$0, %eax
.L46:
	.loc 2 232 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	scan_varname, .-scan_varname
	.type	extract_varname, @function
extract_varname:
.LFB67:
	.loc 2 241 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 245 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	scan_varname
	movq	%rax, -16(%rbp)
	.loc 2 246 6
	cmpq	$0, -16(%rbp)
	jne	.L49
	.loc 2 247 12
	movl	$0, %eax
	jmp	.L50
.L49:
	.loc 2 250 9
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	.loc 2 250 5
	subq	$2, %rax
	movq	%rax, -8(%rbp)
	.loc 2 252 9
	movq	-8(%rbp), %rdx
	movq	vnlen(%rip), %rax
	.loc 2 252 6
	cmpq	%rax, %rdx
	jb	.L51
	.loc 2 254 17
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 254 13
	movq	%rax, vnlen(%rip)
	.loc 2 255 17
	movq	vnlen(%rip), %rdx
	movq	varname(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc@PLT
	.loc 2 255 15
	movq	%rax, varname(%rip)
.L51:
	.loc 2 258 3
	movq	-8(%rbp), %rdx
	.loc 2 258 23
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rcx
	.loc 2 258 3
	movq	varname(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 259 10
	movq	varname(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 259 13
	movb	$0, (%rax)
	.loc 2 261 10
	movq	varname(%rip), %rax
.L50:
	.loc 2 262 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	extract_varname, .-extract_varname
	.section	.rodata
	.align 8
.LC52:
	.string	"str && str[0] && !isspace (str[0])"
.LC53:
	.string	"!(sq && dq)"
	.align 8
.LC54:
	.string	"'\\c' must not appear in double-quoted -S string"
	.align 8
.LC55:
	.string	"invalid backslash at end of string in -S"
.LC56:
	.string	"invalid sequence '\\%c' in -S"
	.align 8
.LC57:
	.string	"only ${VARNAME} expansion is supported, error at: %s"
	.align 8
.LC58:
	.string	"no terminating quote in -S string"
	.text
	.type	validate_split_str, @function
validate_split_str:
.LFB68:
	.loc 2 274 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 2 278 7
	movl	$1, -36(%rbp)
	.loc 2 280 3
	cmpq	$0, -56(%rbp)
	je	.L53
	.loc 2 280 3 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L53
	.loc 2 280 3 discriminator 3
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L80
.L53:
	.loc 2 280 3 discriminator 5
	leaq	__PRETTY_FUNCTION__.7017(%rip), %rcx
	movl	$280, %edx
	leaq	.LC49(%rip), %rsi
	leaq	.LC52(%rip), %rdi
	call	__assert_fail@PLT
.L80:
	.loc 2 282 16 is_stmt 1
	movb	$0, -38(%rbp)
	.loc 2 282 11
	movzbl	-38(%rbp), %eax
	movb	%al, -39(%rbp)
	.loc 2 282 6
	movzbl	-39(%rbp), %eax
	movb	%al, -40(%rbp)
	.loc 2 283 12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 283 10
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	.loc 2 285 9
	jmp	.L55
.L77:
.LBB5:
	.loc 2 287 18
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, -37(%rbp)
	.loc 2 289 11
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	.loc 2 289 10
	testl	%eax, %eax
	je	.L56
	.loc 2 289 29 discriminator 1
	movzbl	-40(%rbp), %eax
	xorl	$1, %eax
	.loc 2 289 26 discriminator 1
	testb	%al, %al
	je	.L56
	.loc 2 289 36 discriminator 2
	movzbl	-39(%rbp), %eax
	xorl	$1, %eax
	.loc 2 289 33 discriminator 2
	testb	%al, %al
	je	.L56
	.loc 2 291 14
	movb	$1, -38(%rbp)
	jmp	.L57
.L56:
	.loc 2 295 14
	cmpb	$0, -38(%rbp)
	je	.L58
	.loc 2 296 13
	addl	$1, -36(%rbp)
.L58:
	.loc 2 297 14
	movb	$0, -38(%rbp)
.L57:
	.loc 2 300 15
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 300 7
	cmpl	$92, %eax
	je	.L59
	cmpl	$92, %eax
	jg	.L60
	cmpl	$39, %eax
	je	.L61
	cmpl	$39, %eax
	jg	.L60
	cmpl	$34, %eax
	je	.L62
	cmpl	$36, %eax
	je	.L63
	jmp	.L60
.L61:
	.loc 2 303 11
	movzbl	-39(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L64
	.loc 2 303 11 is_stmt 0 discriminator 1
	movzbl	-40(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L64
	.loc 2 303 11 discriminator 2
	leaq	__PRETTY_FUNCTION__.7017(%rip), %rcx
	movl	$303, %edx
	leaq	.LC49(%rip), %rsi
	leaq	.LC53(%rip), %rdi
	call	__assert_fail@PLT
.L64:
	.loc 2 304 16 is_stmt 1
	movzbl	-39(%rbp), %eax
	xorl	$1, %eax
	.loc 2 304 20
	testb	%al, %al
	je	.L65
	.loc 2 304 23 discriminator 1
	movzbl	-40(%rbp), %eax
	xorl	$1, %eax
	.loc 2 304 20 discriminator 1
	testb	%al, %al
	je	.L65
	.loc 2 304 20 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L66
.L65:
	.loc 2 304 20 discriminator 4
	movl	$0, %eax
.L66:
	.loc 2 304 14 is_stmt 1 discriminator 6
	movb	%al, -39(%rbp)
	andb	$1, -39(%rbp)
	.loc 2 305 11 discriminator 6
	jmp	.L60
.L62:
	.loc 2 308 11
	movzbl	-39(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L67
	.loc 2 308 11 is_stmt 0 discriminator 1
	movzbl	-40(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L67
	.loc 2 308 11 discriminator 2
	leaq	__PRETTY_FUNCTION__.7017(%rip), %rcx
	movl	$308, %edx
	leaq	.LC49(%rip), %rsi
	leaq	.LC53(%rip), %rdi
	call	__assert_fail@PLT
.L67:
	.loc 2 309 16 is_stmt 1
	movzbl	-39(%rbp), %eax
	xorl	$1, %eax
	.loc 2 309 20
	testb	%al, %al
	je	.L68
	.loc 2 309 23 discriminator 1
	movzbl	-40(%rbp), %eax
	xorl	$1, %eax
	.loc 2 309 20 discriminator 1
	testb	%al, %al
	je	.L68
	.loc 2 309 20 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L69
.L68:
	.loc 2 309 20 discriminator 4
	movl	$0, %eax
.L69:
	.loc 2 309 14 is_stmt 1 discriminator 6
	movb	%al, -40(%rbp)
	andb	$1, -40(%rbp)
	.loc 2 310 11 discriminator 6
	jmp	.L60
.L59:
	.loc 2 313 14
	cmpb	$0, -40(%rbp)
	je	.L70
	.loc 2 313 18 discriminator 1
	cmpb	$99, -37(%rbp)
	jne	.L70
.LBB6:
	.loc 2 314 13
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L70:
.LBE6:
	.loc 2 317 14
	cmpb	$0, -37(%rbp)
	jne	.L71
.LBB7:
	.loc 2 318 13
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L71:
.LBE7:
	.loc 2 321 16
	movsbl	-37(%rbp), %eax
	movl	%eax, %edi
	call	valid_escape_sequence
	.loc 2 321 15
	xorl	$1, %eax
	.loc 2 321 14
	testb	%al, %al
	je	.L72
.LBB8:
	.loc 2 322 13
	movsbl	-37(%rbp), %ebx
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L72:
.LBE8:
	.loc 2 324 14
	cmpb	$95, -37(%rbp)
	jne	.L73
	.loc 2 325 13
	addl	$1, -36(%rbp)
.L73:
	.loc 2 327 11
	addq	$1, -56(%rbp)
	.loc 2 328 11
	jmp	.L60
.L63:
	.loc 2 332 14
	cmpb	$0, -39(%rbp)
	jne	.L81
	.loc 2 335 23
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	extract_varname
	movq	%rax, -24(%rbp)
	.loc 2 335 14
	cmpq	$0, -24(%rbp)
	jne	.L75
.LBB9:
	.loc 2 336 13
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L75:
.LBE9:
	.loc 2 339 22
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -24(%rbp)
	.loc 2 339 14
	cmpq	$0, -24(%rbp)
	je	.L82
	.loc 2 340 23
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 340 20
	addq	%rax, -32(%rbp)
	.loc 2 341 11
	jmp	.L82
.L81:
	.loc 2 333 13
	nop
	jmp	.L60
.L82:
	.loc 2 341 11
	nop
.L60:
	.loc 2 343 7
	addq	$1, -56(%rbp)
.L55:
.LBE5:
	.loc 2 285 10
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 285 9
	testb	%al, %al
	jne	.L77
	.loc 2 346 6
	cmpb	$0, -40(%rbp)
	jne	.L78
	.loc 2 346 10 discriminator 1
	cmpb	$0, -39(%rbp)
	je	.L79
.L78:
.LBB10:
	.loc 2 347 5
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L79:
.LBE10:
	.loc 2 349 12
	movq	-72(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	.loc 2 350 12
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 351 1
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	validate_split_str, .-validate_split_str
	.section	.rodata
.LC59:
	.string	" \t"
.LC60:
	.string	"n"
.LC61:
	.string	"expanding ${%s} into %s\n"
	.align 8
.LC62:
	.string	"replacing ${%s} with null string\n"
	.text
	.type	build_argv, @function
build_argv:
.LFB69:
	.loc 2 374 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	.loc 2 374 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 375 8
	movb	$0, -64(%rbp)
	.loc 2 375 20
	movb	$0, -63(%rbp)
	.loc 2 375 32
	movb	$1, -62(%rbp)
	.loc 2 379 7
	movl	$0, -60(%rbp)
	.loc 2 380 10
	movq	$0, -56(%rbp)
	.loc 2 395 3
	cmpq	$0, -72(%rbp)
	je	.L84
	.loc 2 395 3 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L84
	.loc 2 395 3 discriminator 3
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L119
.L84:
	.loc 2 395 3 discriminator 5
	leaq	__PRETTY_FUNCTION__.7049(%rip), %rcx
	movl	$395, %edx
	leaq	.LC49(%rip), %rsi
	leaq	.LC52(%rip), %rdi
	call	__assert_fail@PLT
.L119:
	.loc 2 397 3 is_stmt 1
	leaq	-60(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	validate_split_str
	.loc 2 400 10
	movq	-56(%rbp), %rax
	addq	$7, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -48(%rbp)
	.loc 2 404 42
	movl	-60(%rbp), %edx
	movl	-76(%rbp), %eax
	addl	%edx, %eax
	.loc 2 404 55
	addl	$2, %eax
	cltq
	.loc 2 404 24
	salq	$3, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -32(%rbp)
	.loc 2 404 12
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 407 3
	movq	-48(%rbp), %rax
	movl	$1296913732, (%rax)
	movw	$89, 4(%rax)
	.loc 2 408 12
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 408 15
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 409 8
	addq	$6, -48(%rbp)
	.loc 2 414 9
	jmp	.L86
.L116:
.LBB11:
	.loc 2 416 12
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -61(%rbp)
	.loc 2 418 15
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 418 7
	cmpl	$39, %eax
	jg	.L87
	cmpl	$9, %eax
	jl	.L88
	subl	$9, %eax
	cmpl	$30, %eax
	ja	.L88
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L90(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L90(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L90:
	.long	.L94-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L94-.L90
	.long	.L88-.L90
	.long	.L93-.L90
	.long	.L92-.L90
	.long	.L91-.L90
	.long	.L88-.L90
	.long	.L88-.L90
	.long	.L89-.L90
	.text
.L87:
	cmpl	$92, %eax
	je	.L95
	jmp	.L88
.L89:
	.loc 2 421 14
	cmpb	$0, -64(%rbp)
	jne	.L120
	.loc 2 423 11
	movzbl	-63(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 423 14
	movb	%al, -63(%rbp)
	andb	$1, -63(%rbp)
	.loc 2 424 11
	cmpb	$0, -62(%rbp)
	je	.L97
	.loc 2 424 11 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movb	$0, -62(%rbp)
.L97:
	.loc 2 425 11 is_stmt 1
	addq	$1, -72(%rbp)
	.loc 2 426 11
	jmp	.L86
.L93:
	.loc 2 429 14
	cmpb	$0, -63(%rbp)
	jne	.L121
	.loc 2 431 11
	movzbl	-64(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 431 14
	movb	%al, -64(%rbp)
	andb	$1, -64(%rbp)
	.loc 2 432 11
	cmpb	$0, -62(%rbp)
	je	.L99
	.loc 2 432 11 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movb	$0, -62(%rbp)
.L99:
	.loc 2 433 11 is_stmt 1
	addq	$1, -72(%rbp)
	.loc 2 434 11
	jmp	.L86
.L94:
	.loc 2 439 14
	cmpb	$0, -63(%rbp)
	jne	.L122
	.loc 2 439 18 discriminator 1
	cmpb	$0, -64(%rbp)
	jne	.L122
	.loc 2 441 15
	movb	$1, -62(%rbp)
	.loc 2 442 18
	movq	-72(%rbp), %rax
	leaq	.LC59(%rip), %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	.loc 2 442 15
	addq	%rax, -72(%rbp)
	.loc 2 443 11
	jmp	.L86
.L92:
	.loc 2 446 15
	movzbl	-62(%rbp), %eax
	xorl	$1, %eax
	.loc 2 446 14
	testb	%al, %al
	je	.L123
	.loc 2 447 13
	jmp	.L88
.L95:
	.loc 2 452 14
	cmpb	$0, -63(%rbp)
	je	.L102
	.loc 2 452 26 discriminator 1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	.loc 2 452 21 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 452 18 discriminator 1
	cmpb	$92, %al
	je	.L102
	.loc 2 452 46 discriminator 2
	movq	-72(%rbp), %rax
	addq	$1, %rax
	.loc 2 452 41 discriminator 2
	movzbl	(%rax), %eax
	.loc 2 452 38 discriminator 2
	cmpb	$39, %al
	jne	.L124
.L102:
	.loc 2 456 16
	addq	$1, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -61(%rbp)
	.loc 2 457 14
	cmpb	$92, -61(%rbp)
	je	.L125
	.loc 2 457 29 discriminator 1
	cmpb	$39, -61(%rbp)
	je	.L125
	.loc 2 458 19
	movzbl	-63(%rbp), %eax
	xorl	$1, %eax
	.loc 2 458 15
	testb	%al, %al
	je	.L104
	.loc 2 458 23 discriminator 1
	cmpb	$35, -61(%rbp)
	je	.L126
	.loc 2 458 39 discriminator 2
	cmpb	$36, -61(%rbp)
	je	.L126
	.loc 2 458 54 discriminator 3
	cmpb	$34, -61(%rbp)
	je	.L126
.L104:
	.loc 2 462 19
	cmpb	$95, -61(%rbp)
	jne	.L106
	.loc 2 464 19
	movzbl	-64(%rbp), %eax
	xorl	$1, %eax
	.loc 2 464 18
	testb	%al, %al
	je	.L107
	.loc 2 466 19
	addq	$1, -72(%rbp)
	.loc 2 467 23
	movb	$1, -62(%rbp)
	.loc 2 468 19
	jmp	.L86
.L107:
	.loc 2 471 24
	movb	$32, -61(%rbp)
	.loc 2 477 11
	jmp	.L125
.L106:
	.loc 2 473 19
	cmpb	$99, -61(%rbp)
	je	.L127
	.loc 2 476 22
	movsbl	-61(%rbp), %eax
	movl	%eax, %edi
	call	escape_char
	movb	%al, -61(%rbp)
	.loc 2 477 11
	jmp	.L125
.L126:
	.loc 2 457 29
	nop
	.loc 2 477 11
	jmp	.L125
.L91:
	.loc 2 481 14
	cmpb	$0, -63(%rbp)
	jne	.L128
.LBB12:
	.loc 2 486 23
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	extract_varname
	movq	%rax, -24(%rbp)
	.loc 2 487 13
	cmpq	$0, -24(%rbp)
	jne	.L110
	.loc 2 487 13 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7049(%rip), %rcx
	movl	$487, %edx
	leaq	.LC49(%rip), %rsi
	leaq	.LC60(%rip), %rdi
	call	__assert_fail@PLT
.L110:
	.loc 2 488 23 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -16(%rbp)
	.loc 2 489 16
	cmpq	$0, -16(%rbp)
	je	.L111
	.loc 2 491 17
	cmpb	$0, -62(%rbp)
	je	.L112
	.loc 2 491 17 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movb	$0, -62(%rbp)
.L112:
	.loc 2 492 17 is_stmt 1
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L113
	.loc 2 492 17 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC61(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L113:
	.loc 2 493 24 is_stmt 1
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	movq	%rax, -48(%rbp)
	jmp	.L114
.L111:
	.loc 2 496 15
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L114
	.loc 2 496 15 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC62(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L114:
	.loc 2 498 19 is_stmt 1
	movq	-72(%rbp), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 2 498 17
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	.loc 2 499 13
	jmp	.L86
.L120:
.LBE12:
	.loc 2 422 13
	nop
	jmp	.L88
.L121:
	.loc 2 430 13
	nop
	jmp	.L88
.L122:
	.loc 2 504 7
	nop
	jmp	.L88
.L124:
	.loc 2 453 13
	nop
	jmp	.L88
.L125:
	.loc 2 477 11
	nop
	jmp	.L88
.L128:
	.loc 2 482 13
	nop
.L88:
	.loc 2 504 7
	cmpb	$0, -62(%rbp)
	je	.L115
	.loc 2 504 7 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movb	$0, -62(%rbp)
.L115:
	.loc 2 505 12 is_stmt 1
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 2 505 15
	movzbl	-61(%rbp), %edx
	movb	%dl, (%rax)
	.loc 2 506 7
	addq	$1, -72(%rbp)
.L86:
.LBE11:
	.loc 2 414 10
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 414 9
	testb	%al, %al
	jne	.L116
	.loc 2 509 2
	jmp	.L101
.L123:
.LBB13:
	.loc 2 448 11
	nop
	jmp	.L101
.L127:
	.loc 2 474 15
	nop
.L101:
.LBE13:
	.loc 2 510 9
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 511 13
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 513 10
	movq	-32(%rbp), %rax
	.loc 2 514 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L118
	call	__stack_chk_fail@PLT
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	build_argv, .-build_argv
	.section	.rodata
.LC63:
	.string	"split -S:  %s\n"
.LC64:
	.string	" into:    %s\n"
.LC65:
	.string	"     &    %s\n"
	.text
	.type	parse_split_string, @function
parse_split_string:
.LFB70:
	.loc 2 538 1
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
	.loc 2 543 9
	jmp	.L130
.L131:
	.loc 2 544 8
	addq	$1, -40(%rbp)
.L130:
	.loc 2 543 10
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	.loc 2 543 9
	testl	%eax, %eax
	jne	.L131
	.loc 2 545 7
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 545 6
	testb	%al, %al
	je	.L146
	.loc 2 548 30
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	.loc 2 548 43
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 548 13
	subl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	build_argv
	movq	%rax, -8(%rbp)
	.loc 2 551 15
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 551 26
	movq	(%rax), %rdx
	.loc 2 551 12
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 554 12
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	.loc 2 557 7
	movzbl	dev_debug(%rip), %eax
	.loc 2 557 6
	testb	%al, %al
	je	.L140
	.loc 2 557 20 discriminator 1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 557 17 discriminator 1
	testq	%rax, %rax
	je	.L140
	.loc 2 559 7
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L135
	.loc 2 559 7 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC63(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L135:
	.loc 2 560 7 is_stmt 1
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L137
	.loc 2 560 7 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC64(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 561 13 is_stmt 1 discriminator 1
	jmp	.L137
.L138:
	.loc 2 562 9
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L137
	.loc 2 562 9 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC65(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L137:
	.loc 2 561 14 is_stmt 1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 561 13
	testq	%rax, %rax
	jne	.L138
	.loc 2 557 6
	jmp	.L139
.L141:
	.loc 2 568 9
	addq	$8, -16(%rbp)
.L140:
	.loc 2 567 14
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 567 13
	testq	%rax, %rax
	jne	.L141
.L139:
	.loc 2 572 10
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	.loc 2 572 3
	jmp	.L142
.L143:
	.loc 2 573 20 discriminator 3
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 573 31 discriminator 3
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	.loc 2 573 14 discriminator 3
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 573 31 discriminator 3
	movq	(%rcx), %rdx
	.loc 2 573 17 discriminator 3
	movq	%rdx, (%rax)
	.loc 2 572 42 discriminator 3
	addl	$1, -24(%rbp)
.L142:
	.loc 2 572 30 discriminator 1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 572 3 discriminator 1
	cmpl	%eax, -24(%rbp)
	jl	.L143
	.loc 2 574 13
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 577 11
	movl	$0, -20(%rbp)
	.loc 2 578 17
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 578 3
	jmp	.L144
.L145:
	.loc 2 579 5 discriminator 3
	addl	$1, -20(%rbp)
	.loc 2 578 39 discriminator 3
	addq	$8, -16(%rbp)
.L144:
	.loc 2 578 28 discriminator 1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 578 3 discriminator 1
	testq	%rax, %rax
	jne	.L145
	.loc 2 582 14
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	.loc 2 583 14
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 584 16
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L129
.L146:
	.loc 2 546 5
	nop
.L129:
	.loc 2 585 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	parse_split_string, .-parse_split_string
	.section	.rodata
.LC66:
	.string	","
.LC67:
	.string	"%s: invalid signal"
	.text
	.type	parse_signal_action_params, @function
parse_signal_action_params:
.LFB71:
	.loc 2 589 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movl	%esi, %eax
	movb	%al, -92(%rbp)
	.loc 2 589 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 594 6
	cmpq	$0, -88(%rbp)
	jne	.L148
.LBB14:
	.loc 2 599 16
	movl	$1, -72(%rbp)
	.loc 2 599 7
	jmp	.L149
.L153:
	.loc 2 600 13
	leaq	-48(%rbp), %rdx
	movl	-72(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	sig2str@PLT
	.loc 2 600 12
	testl	%eax, %eax
	jne	.L150
	.loc 2 601 52
	cmpb	$0, -92(%rbp)
	je	.L151
	.loc 2 601 52 is_stmt 0 discriminator 1
	movl	$2, %ecx
	jmp	.L152
.L151:
	.loc 2 601 52 discriminator 2
	movl	$4, %ecx
.L152:
	.loc 2 601 18 is_stmt 1 discriminator 4
	movq	signals(%rip), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 2 601 22 discriminator 4
	movl	%ecx, (%rax)
.L150:
	.loc 2 599 44 discriminator 2
	addl	$1, -72(%rbp)
.L149:
	.loc 2 599 7 discriminator 1
	cmpl	$64, -72(%rbp)
	jle	.L153
.LBE14:
	.loc 2 602 7
	jmp	.L147
.L148:
	.loc 2 605 21
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -56(%rbp)
	.loc 2 607 13
	movq	-56(%rbp), %rax
	leaq	.LC66(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -64(%rbp)
	.loc 2 608 9
	jmp	.L155
.L160:
.LBB15:
	.loc 2 610 20
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	operand2sig@PLT
	movl	%eax, -68(%rbp)
	.loc 2 612 10
	cmpl	$0, -68(%rbp)
	jne	.L156
	.loc 2 613 9
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 613 22
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	.loc 2 613 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L156:
	.loc 2 614 10
	cmpl	$0, -68(%rbp)
	jg	.L157
	.loc 2 615 9
	movl	exit_failure(%rip), %eax
	movl	%eax, %edi
	call	usage
.L157:
	.loc 2 617 47
	cmpb	$0, -92(%rbp)
	je	.L158
	.loc 2 617 47 is_stmt 0 discriminator 1
	movl	$1, %ecx
	jmp	.L159
.L158:
	.loc 2 617 47 discriminator 2
	movl	$3, %ecx
.L159:
	.loc 2 617 14 is_stmt 1 discriminator 4
	movq	signals(%rip), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 2 617 23 discriminator 4
	movl	%ecx, (%rax)
	.loc 2 619 17 discriminator 4
	leaq	.LC66(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -64(%rbp)
.L155:
.LBE15:
	.loc 2 608 9
	cmpq	$0, -64(%rbp)
	jne	.L160
	.loc 2 622 3
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L147:
	.loc 2 623 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L161
	call	__stack_chk_fail@PLT
.L161:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	parse_signal_action_params, .-parse_signal_action_params
	.section	.rodata
	.align 8
.LC68:
	.string	"failed to get signal action for signal %d"
	.align 8
.LC69:
	.string	"failed to set signal action for signal %d"
.LC70:
	.string	" (failure ignored)"
.LC71:
	.string	"DEFAULT"
.LC72:
	.string	"IGNORE"
.LC73:
	.string	"Reset signal %s (%d) to %s%s\n"
	.text
	.type	reset_signal_handlers, @function
reset_signal_handlers:
.LFB72:
	.loc 2 627 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	.loc 2 627 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
.LBB16:
	.loc 2 628 12
	movl	$1, -216(%rbp)
	.loc 2 628 3
	jmp	.L163
.L182:
.LBB17:
	.loc 2 632 18
	movq	signals(%rip), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 2 632 10
	testl	%eax, %eax
	je	.L184
	.loc 2 635 36
	movq	signals(%rip), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 2 636 29
	cmpl	$2, %eax
	je	.L166
	.loc 2 636 39 discriminator 2
	movq	signals(%rip), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 2 636 29 discriminator 2
	cmpl	$4, %eax
	jne	.L167
.L166:
	.loc 2 636 29 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L168
.L167:
	.loc 2 636 29 discriminator 4
	movl	$0, %eax
.L168:
	.loc 2 635 12 is_stmt 1
	movb	%al, -218(%rbp)
	andb	$1, -218(%rbp)
	.loc 2 638 37
	movq	signals(%rip), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 2 639 30
	cmpl	$1, %eax
	je	.L169
	.loc 2 639 40 discriminator 2
	movq	signals(%rip), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 2 639 30 discriminator 2
	cmpl	$2, %eax
	jne	.L170
.L169:
	.loc 2 639 30 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L171
.L170:
	.loc 2 639 30 discriminator 4
	movl	$0, %eax
.L171:
	.loc 2 638 12 is_stmt 1
	movb	%al, -217(%rbp)
	andb	$1, -217(%rbp)
	.loc 2 641 21
	leaq	-208(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	sigaction@PLT
	movl	%eax, -212(%rbp)
	.loc 2 643 10
	cmpl	$0, -212(%rbp)
	je	.L172
	.loc 2 643 22 discriminator 1
	movzbl	-218(%rbp), %eax
	xorl	$1, %eax
	.loc 2 643 19 discriminator 1
	testb	%al, %al
	je	.L172
.LBB18:
	.loc 2 644 9
	leaq	.LC68(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	-216(%rbp), %edx
	movl	%edx, %ecx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L172:
.LBE18:
	.loc 2 647 10
	cmpl	$0, -212(%rbp)
	jne	.L173
	.loc 2 649 53
	cmpb	$0, -217(%rbp)
	jne	.L174
	.loc 2 649 53 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L175
.L174:
	.loc 2 649 53 discriminator 2
	movl	$0, %eax
.L175:
	.loc 2 649 26 is_stmt 1 discriminator 4
	movq	%rax, -208(%rbp)
	.loc 2 651 26 discriminator 4
	leaq	-208(%rbp), %rcx
	movl	-216(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	sigaction@PLT
	movl	%eax, -212(%rbp)
	.loc 2 651 14 discriminator 4
	cmpl	$0, -212(%rbp)
	je	.L173
	.loc 2 651 56 discriminator 1
	movzbl	-218(%rbp), %eax
	xorl	$1, %eax
	.loc 2 651 53 discriminator 1
	testb	%al, %al
	je	.L173
.LBB19:
	.loc 2 652 13
	leaq	.LC69(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	-216(%rbp), %edx
	movl	%edx, %ecx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L173:
.LBE19:
	.loc 2 656 11
	movzbl	dev_debug(%rip), %eax
	.loc 2 656 10
	testb	%al, %al
	je	.L165
.LBB20:
	.loc 2 659 11
	leaq	-48(%rbp), %rdx
	movl	-216(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	sig2str@PLT
	.loc 2 660 11
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L165
	.loc 2 660 11 is_stmt 0 discriminator 1
	cmpl	$0, -212(%rbp)
	je	.L178
	.loc 2 660 11 discriminator 2
	leaq	.LC70(%rip), %rdx
	jmp	.L179
.L178:
	.loc 2 660 11 discriminator 3
	leaq	.LC17(%rip), %rdx
.L179:
	.loc 2 660 11 discriminator 5
	cmpb	$0, -217(%rbp)
	je	.L180
	.loc 2 660 11 discriminator 6
	leaq	.LC71(%rip), %rax
	jmp	.L181
.L180:
	.loc 2 660 11 discriminator 7
	leaq	.LC72(%rip), %rax
.L181:
	.loc 2 660 11 discriminator 9
	movq	stderr(%rip), %rdi
	movl	-216(%rbp), %ecx
	leaq	-48(%rbp), %rsi
	movq	%rdx, %r9
	movq	%rax, %r8
	movq	%rsi, %rdx
	leaq	.LC73(%rip), %rsi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L165
.L184:
.LBE20:
	.loc 2 633 9 is_stmt 1
	nop
.L165:
.LBE17:
	.loc 2 628 39 discriminator 2
	addl	$1, -216(%rbp)
.L163:
	.loc 2 628 3 discriminator 1
	cmpl	$64, -216(%rbp)
	jle	.L182
.LBE16:
	.loc 2 666 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L183
	call	__stack_chk_fail@PLT
.L183:
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	reset_signal_handlers, .-reset_signal_handlers
	.type	parse_block_signal_params, @function
parse_block_signal_params:
.LFB73:
	.loc 2 671 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movl	%esi, %eax
	movb	%al, -92(%rbp)
	.loc 2 671 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 676 6
	cmpq	$0, -88(%rbp)
	jne	.L186
	.loc 2 679 7
	cmpb	$0, -92(%rbp)
	je	.L187
	.loc 2 679 7 is_stmt 0 discriminator 1
	leaq	block_signals(%rip), %rax
	jmp	.L188
.L187:
	.loc 2 679 7 discriminator 2
	leaq	unblock_signals(%rip), %rax
.L188:
	.loc 2 679 7 discriminator 4
	movq	%rax, %rdi
	call	sigfillset@PLT
	.loc 2 680 7 is_stmt 1 discriminator 4
	cmpb	$0, -92(%rbp)
	je	.L189
	.loc 2 680 7 is_stmt 0 discriminator 1
	leaq	unblock_signals(%rip), %rax
	jmp	.L190
.L189:
	.loc 2 680 7 discriminator 2
	leaq	block_signals(%rip), %rax
.L190:
	.loc 2 680 7 discriminator 4
	movq	%rax, %rdi
	call	sigemptyset@PLT
	jmp	.L191
.L186:
	.loc 2 682 12 is_stmt 1
	movzbl	sig_mask_changed(%rip), %eax
	xorl	$1, %eax
	.loc 2 682 11
	testb	%al, %al
	je	.L191
	.loc 2 685 7
	leaq	block_signals(%rip), %rdi
	call	sigemptyset@PLT
	.loc 2 686 7
	leaq	unblock_signals(%rip), %rdi
	call	sigemptyset@PLT
.L191:
	.loc 2 689 20
	movb	$1, sig_mask_changed(%rip)
	.loc 2 691 6
	cmpq	$0, -88(%rbp)
	je	.L203
	.loc 2 694 21
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -56(%rbp)
	.loc 2 696 13
	movq	-56(%rbp), %rax
	leaq	.LC66(%rip), %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -64(%rbp)
	.loc 2 697 9
	jmp	.L194
.L201:
.LBB21:
	.loc 2 699 20
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	operand2sig@PLT
	movl	%eax, -68(%rbp)
	.loc 2 701 10
	cmpl	$0, -68(%rbp)
	jne	.L195
	.loc 2 702 9
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 702 22
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	.loc 2 702 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L195:
	.loc 2 703 10
	cmpl	$0, -68(%rbp)
	jg	.L196
	.loc 2 704 9
	movl	exit_failure(%rip), %eax
	movl	%eax, %edi
	call	usage
.L196:
	.loc 2 706 7
	cmpb	$0, -92(%rbp)
	je	.L197
	.loc 2 706 7 is_stmt 0 discriminator 1
	leaq	block_signals(%rip), %rax
	jmp	.L198
.L197:
	.loc 2 706 7 discriminator 2
	leaq	unblock_signals(%rip), %rax
.L198:
	.loc 2 706 7 discriminator 4
	movl	-68(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sigaddset@PLT
	.loc 2 707 7 is_stmt 1 discriminator 4
	cmpb	$0, -92(%rbp)
	je	.L199
	.loc 2 707 7 is_stmt 0 discriminator 1
	leaq	unblock_signals(%rip), %rax
	jmp	.L200
.L199:
	.loc 2 707 7 discriminator 2
	leaq	block_signals(%rip), %rax
.L200:
	.loc 2 707 7 discriminator 4
	movl	-68(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sigdelset@PLT
	.loc 2 709 17 is_stmt 1 discriminator 4
	leaq	.LC66(%rip), %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -64(%rbp)
.L194:
.LBE21:
	.loc 2 697 9
	cmpq	$0, -64(%rbp)
	jne	.L201
	.loc 2 712 3
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L185
.L203:
	.loc 2 692 5
	nop
.L185:
	.loc 2 713 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L202
	call	__stack_chk_fail@PLT
.L202:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	parse_block_signal_params, .-parse_block_signal_params
	.section	.rodata
	.align 8
.LC74:
	.string	"failed to get signal process mask"
.LC75:
	.string	"BLOCK"
.LC76:
	.string	"UNBLOCK"
	.align 8
.LC77:
	.string	"signal %s (%d) mask set to %s\n"
	.align 8
.LC78:
	.string	"failed to set signal process mask"
	.text
	.type	set_signal_proc_mask, @function
set_signal_proc_mask:
.LFB74:
	.loc 2 717 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	.loc 2 717 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 722 3
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	sigemptyset@PLT
	.loc 2 724 7
	leaq	-176(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	sigprocmask@PLT
	.loc 2 724 6
	testl	%eax, %eax
	je	.L205
.LBB22:
	.loc 2 725 5
	leaq	.LC74(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L205:
.LBE22:
.LBB23:
	.loc 2 727 12
	movl	$1, -188(%rbp)
	.loc 2 727 3
	jmp	.L206
.L212:
	.loc 2 729 11
	movl	-188(%rbp), %eax
	movl	%eax, %esi
	leaq	block_signals(%rip), %rdi
	call	sigismember@PLT
	.loc 2 729 10
	testl	%eax, %eax
	je	.L207
	.loc 2 731 11
	movl	-188(%rbp), %edx
	leaq	-176(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sigaddset@PLT
	.loc 2 732 21
	leaq	.LC75(%rip), %rax
	movq	%rax, -184(%rbp)
	jmp	.L208
.L207:
	.loc 2 734 16
	movl	-188(%rbp), %eax
	movl	%eax, %esi
	leaq	unblock_signals(%rip), %rdi
	call	sigismember@PLT
	.loc 2 734 15
	testl	%eax, %eax
	je	.L209
	.loc 2 736 11
	movl	-188(%rbp), %edx
	leaq	-176(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sigdelset@PLT
	.loc 2 737 21
	leaq	.LC76(%rip), %rax
	movq	%rax, -184(%rbp)
	jmp	.L208
.L209:
	.loc 2 741 21
	movq	$0, -184(%rbp)
.L208:
	.loc 2 744 11
	movzbl	dev_debug(%rip), %eax
	.loc 2 744 10
	testb	%al, %al
	je	.L210
	.loc 2 744 21 discriminator 1
	cmpq	$0, -184(%rbp)
	je	.L210
.LBB24:
	.loc 2 747 11
	leaq	-48(%rbp), %rdx
	movl	-188(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	sig2str@PLT
	.loc 2 748 11
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L210
	.loc 2 748 11 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	movq	-184(%rbp), %rsi
	movl	-188(%rbp), %ecx
	leaq	-48(%rbp), %rdx
	movq	%rsi, %r8
	leaq	.LC77(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L210:
.LBE24:
	.loc 2 727 39 is_stmt 1 discriminator 2
	addl	$1, -188(%rbp)
.L206:
	.loc 2 727 3 discriminator 1
	cmpl	$64, -188(%rbp)
	jle	.L212
.LBE23:
	.loc 2 753 7
	leaq	-176(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$2, %edi
	call	sigprocmask@PLT
	.loc 2 753 6
	testl	%eax, %eax
	je	.L215
.LBB25:
	.loc 2 754 5
	leaq	.LC78(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L215:
.LBE25:
	.loc 2 755 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L214
	call	__stack_chk_fail@PLT
.L214:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	set_signal_proc_mask, .-set_signal_proc_mask
	.section	.rodata
.LC79:
	.string	"%-10s (%2d): %s%s%s\n"
	.text
	.type	list_signal_handling, @function
list_signal_handling:
.LFB75:
	.loc 2 759 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$360, %rsp
	.cfi_offset 3, -24
	.loc 2 759 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 763 3
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	sigemptyset@PLT
	.loc 2 764 7
	leaq	-336(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	sigprocmask@PLT
	.loc 2 764 6
	testl	%eax, %eax
	je	.L217
.LBB26:
	.loc 2 765 5
	leaq	.LC74(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L217:
.LBE26:
.LBB27:
	.loc 2 767 12
	movl	$1, -364(%rbp)
	.loc 2 767 3
	jmp	.L218
.L229:
.LBB28:
	.loc 2 770 11
	leaq	-208(%rbp), %rdx
	movl	-364(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	sigaction@PLT
	.loc 2 770 10
	testl	%eax, %eax
	jne	.L231
	.loc 2 773 33
	movq	-208(%rbp), %rax
	.loc 2 773 66
	cmpq	$1, %rax
	jne	.L221
	.loc 2 773 66 is_stmt 0 discriminator 1
	leaq	.LC72(%rip), %rax
	jmp	.L222
.L221:
	.loc 2 773 66 discriminator 2
	leaq	.LC17(%rip), %rax
.L222:
	.loc 2 773 19 is_stmt 1 discriminator 4
	movq	%rax, -360(%rbp)
	.loc 2 774 29 discriminator 4
	movl	-364(%rbp), %edx
	leaq	-336(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sigismember@PLT
	.loc 2 774 61 discriminator 4
	testl	%eax, %eax
	je	.L223
	.loc 2 774 61 is_stmt 0 discriminator 1
	leaq	.LC75(%rip), %rax
	jmp	.L224
.L223:
	.loc 2 774 61 discriminator 2
	leaq	.LC17(%rip), %rax
.L224:
	.loc 2 774 19 is_stmt 1 discriminator 4
	movq	%rax, -352(%rbp)
	.loc 2 775 29 discriminator 4
	movq	-360(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 775 56 discriminator 4
	testb	%al, %al
	je	.L225
	.loc 2 775 41 discriminator 1
	movq	-352(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 775 38 discriminator 1
	testb	%al, %al
	je	.L225
	.loc 2 775 56 discriminator 3
	leaq	.LC66(%rip), %rax
	jmp	.L226
.L225:
	.loc 2 775 56 is_stmt 0 discriminator 4
	leaq	.LC17(%rip), %rax
.L226:
	.loc 2 775 19 is_stmt 1 discriminator 6
	movq	%rax, -344(%rbp)
	.loc 2 777 13 discriminator 6
	movq	-360(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 777 10 discriminator 6
	testb	%al, %al
	jne	.L227
	.loc 2 777 27 discriminator 1
	movq	-352(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 777 22 discriminator 1
	testb	%al, %al
	je	.L232
.L227:
	.loc 2 780 7
	leaq	-48(%rbp), %rdx
	movl	-364(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	sig2str@PLT
	.loc 2 781 7
	movq	stderr(%rip), %rax
	movq	-344(%rbp), %rdi
	movq	-352(%rbp), %rsi
	movl	-364(%rbp), %ecx
	leaq	-48(%rbp), %rdx
	subq	$8, %rsp
	pushq	-360(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	jmp	.L228
.L231:
	.loc 2 771 9
	nop
	jmp	.L228
.L232:
	.loc 2 778 9
	nop
.L228:
.LBE28:
	.loc 2 767 39 discriminator 2
	addl	$1, -364(%rbp)
.L218:
	.loc 2 767 3 discriminator 1
	cmpl	$64, -364(%rbp)
	jle	.L229
.LBE27:
	.loc 2 784 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L230
	call	__stack_chk_fail@PLT
.L230:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	list_signal_handling, .-list_signal_handling
	.type	initialize_signals, @function
initialize_signals:
.LFB76:
	.loc 2 788 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 789 13
	movl	$260, %edi
	call	xmalloc@PLT
	.loc 2 789 11
	movq	%rax, signals(%rip)
.LBB29:
	.loc 2 791 12
	movl	$0, -4(%rbp)
	.loc 2 791 3
	jmp	.L234
.L235:
	.loc 2 792 12 discriminator 3
	movq	signals(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 2 792 16 discriminator 3
	movl	$0, (%rax)
	.loc 2 791 40 discriminator 3
	addl	$1, -4(%rbp)
.L234:
	.loc 2 791 3 discriminator 1
	cmpl	$64, -4(%rbp)
	jle	.L235
.LBE29:
	.loc 2 794 3
	nop
	.loc 2 795 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	initialize_signals, .-initialize_signals
	.section	.rodata
.LC80:
	.string	"/usr/local/share/locale"
.LC81:
	.string	"invalid option -- '%c'"
	.align 8
.LC82:
	.string	"use -[v]S to pass options in shebang lines"
.LC83:
	.string	"David MacKenzie"
.LC84:
	.string	"Richard Mlynarik"
.LC85:
	.string	"Assaf Gordon"
.LC86:
	.string	"-"
.LC87:
	.string	"cleaning environ\n"
.LC88:
	.string	"setenv:   %s\n"
.LC89:
	.string	"cannot set %s"
	.align 8
.LC90:
	.string	"cannot specify --null (-0) with command"
	.align 8
.LC91:
	.string	"must specify command with --chdir (-C)"
.LC92:
	.string	"%s%c"
.LC93:
	.string	"chdir:    %s\n"
.LC94:
	.string	"cannot change directory to %s"
.LC95:
	.string	"executing: %s\n"
.LC96:
	.string	"   arg[%d]= %s\n"
.LC97:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB77:
	.loc 2 799 1
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
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 2 801 8
	movb	$0, -55(%rbp)
	.loc 2 802 8
	movb	$0, -54(%rbp)
	.loc 2 803 15
	movq	$0, -40(%rbp)
	.loc 2 806 3
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 807 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 808 3
	leaq	.LC80(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 809 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 811 3
	movl	$125, %edi
	call	initialize_exit_failure
	.loc 2 812 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 814 3
	call	initialize_signals
	.loc 2 816 9
	jmp	.L238
.L255:
	.loc 2 818 7
	cmpl	$131, -48(%rbp)
	jg	.L239
	cmpl	$67, -48(%rbp)
	jge	.L240
	cmpl	$48, -48(%rbp)
	je	.L241
	cmpl	$48, -48(%rbp)
	jg	.L239
	cmpl	$32, -48(%rbp)
	je	.L242
	cmpl	$32, -48(%rbp)
	jg	.L239
	cmpl	$9, -48(%rbp)
	je	.L242
	cmpl	$9, -48(%rbp)
	jg	.L239
	cmpl	$-131, -48(%rbp)
	je	.L243
	cmpl	$-130, -48(%rbp)
	je	.L244
	jmp	.L239
.L240:
	movl	-48(%rbp), %eax
	subl	$67, %eax
	cmpl	$64, %eax
	ja	.L239
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L246(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L246(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L246:
	.long	.L254-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L253-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L252-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L251-.L246
	.long	.L250-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L239-.L246
	.long	.L249-.L246
	.long	.L248-.L246
	.long	.L247-.L246
	.long	.L245-.L246
	.text
.L252:
	.loc 2 821 30
	movb	$1, -55(%rbp)
	.loc 2 822 11
	jmp	.L238
.L251:
	.loc 2 824 11
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	append_unset_var
	.loc 2 825 11
	jmp	.L238
.L250:
	.loc 2 827 21
	movb	$1, dev_debug(%rip)
	.loc 2 828 11
	jmp	.L238
.L241:
	.loc 2 830 36
	movb	$1, -54(%rbp)
	.loc 2 831 11
	jmp	.L238
.L249:
	.loc 2 833 11
	movq	optarg(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	parse_signal_action_params
	.loc 2 834 11
	movq	optarg(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	parse_block_signal_params
	.loc 2 835 11
	jmp	.L238
.L248:
	.loc 2 837 11
	movq	optarg(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	parse_signal_action_params
	.loc 2 838 11
	jmp	.L238
.L247:
	.loc 2 840 11
	movq	optarg(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	parse_block_signal_params
	.loc 2 841 11
	jmp	.L238
.L245:
	.loc 2 843 34
	movb	$1, report_signal_handling(%rip)
	.loc 2 844 11
	jmp	.L238
.L254:
	.loc 2 846 18
	movq	optarg(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 847 11
	jmp	.L238
.L253:
	.loc 2 849 11
	movq	optarg(%rip), %rax
	leaq	-80(%rbp), %rcx
	leaq	-68(%rbp), %rdx
	leaq	optind(%rip), %rsi
	movq	%rax, %rdi
	call	parse_split_string
	.loc 2 850 11
	jmp	.L238
.L242:
	.loc 2 857 24
	leaq	.LC81(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 857 11
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 858 24
	leaq	.LC82(%rip), %rdi
	call	gettext@PLT
	.loc 2 858 11
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 859 11
	movl	$125, %edi
	call	usage
.L244:
	.loc 2 861 9
	movl	$0, %edi
	call	usage
.L243:
	.loc 2 862 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	pushq	$0
	leaq	.LC85(%rip), %rcx
	pushq	%rcx
	leaq	.LC83(%rip), %r9
	leaq	.LC84(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L239:
	.loc 2 864 11
	movl	$125, %edi
	call	usage
.L238:
	.loc 2 816 18
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	shortopts(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -48(%rbp)
	.loc 2 816 9
	cmpl	$-1, -48(%rbp)
	jne	.L255
	.loc 2 868 14
	movl	optind(%rip), %edx
	movl	-68(%rbp), %eax
	.loc 2 868 6
	cmpl	%eax, %edx
	jge	.L256
	.loc 2 868 24 discriminator 1
	movq	-80(%rbp), %rax
	movl	optind(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC86(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 868 21 discriminator 1
	testl	%eax, %eax
	jne	.L256
	.loc 2 870 26
	movb	$1, -55(%rbp)
	.loc 2 871 7
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L256:
	.loc 2 874 6
	cmpb	$0, -55(%rbp)
	je	.L257
.LBB30:
	.loc 2 876 7
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L258
	.loc 2 876 7 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$17, %edx
	movl	$1, %esi
	leaq	.LC87(%rip), %rdi
	call	fwrite@PLT
.L258:
	.loc 2 878 15 is_stmt 1
	leaq	dummy_environ.7197(%rip), %rax
	movq	%rax, environ(%rip)
.LBE30:
	jmp	.L260
.L257:
	.loc 2 881 5
	call	unset_envvars
	.loc 2 884 9
	jmp	.L260
.L264:
	.loc 2 886 7
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L261
	.loc 2 886 7 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax
	movl	optind(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC88(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L261:
	.loc 2 888 23 is_stmt 1
	movq	-80(%rbp), %rax
	movl	optind(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 888 11
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	putenv@PLT
	.loc 2 888 10
	testl	%eax, %eax
	je	.L262
.LBB31:
	.loc 2 890 15
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 891 11
	movq	-80(%rbp), %rax
	movl	optind(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC89(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L262:
.LBE31:
	.loc 2 894 13
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L260:
	.loc 2 884 17
	movl	optind(%rip), %edx
	movl	-68(%rbp), %eax
	.loc 2 884 9
	cmpl	%eax, %edx
	jge	.L263
	.loc 2 884 45 discriminator 1
	movq	-80(%rbp), %rax
	movl	optind(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 884 33 discriminator 1
	movq	(%rax), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -24(%rbp)
	.loc 2 884 24 discriminator 1
	cmpq	$0, -24(%rbp)
	jne	.L264
.L263:
	.loc 2 897 35
	movl	optind(%rip), %edx
	movl	-68(%rbp), %eax
	.loc 2 897 8
	cmpl	%eax, %edx
	setl	%al
	movb	%al, -53(%rbp)
	.loc 2 899 6
	cmpb	$0, -54(%rbp)
	je	.L265
	.loc 2 899 32 discriminator 1
	cmpb	$0, -53(%rbp)
	je	.L265
	.loc 2 901 20
	leaq	.LC90(%rip), %rdi
	call	gettext@PLT
	.loc 2 901 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 902 7
	movl	$125, %edi
	call	usage
.L265:
	.loc 2 905 6
	cmpq	$0, -40(%rbp)
	je	.L266
	.loc 2 905 17 discriminator 1
	movzbl	-53(%rbp), %eax
	xorl	$1, %eax
	.loc 2 905 14 discriminator 1
	testb	%al, %al
	je	.L266
	.loc 2 907 20
	leaq	.LC91(%rip), %rdi
	call	gettext@PLT
	.loc 2 907 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 908 7
	movl	$125, %edi
	call	usage
.L266:
	.loc 2 911 7
	movzbl	-53(%rbp), %eax
	xorl	$1, %eax
	.loc 2 911 6
	testb	%al, %al
	je	.L267
.LBB32:
	.loc 2 914 20
	movq	environ(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 915 13
	jmp	.L268
.L271:
	.loc 2 916 9
	cmpb	$0, -54(%rbp)
	je	.L269
	.loc 2 916 9 is_stmt 0 discriminator 1
	movl	$0, %ecx
	jmp	.L270
.L269:
	.loc 2 916 9 discriminator 2
	movl	$10, %ecx
.L270:
	.loc 2 916 27 is_stmt 1 discriminator 4
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 2 916 9 discriminator 4
	movq	(%rax), %rax
	movl	%ecx, %edx
	movq	%rax, %rsi
	leaq	.LC92(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L268:
	.loc 2 915 14
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 915 13
	testq	%rax, %rax
	jne	.L271
	.loc 2 917 14
	movl	$0, %eax
	jmp	.L272
.L267:
.LBE32:
	.loc 2 920 3
	call	reset_signal_handlers
	.loc 2 921 7
	movzbl	sig_mask_changed(%rip), %eax
	.loc 2 921 6
	testb	%al, %al
	je	.L273
	.loc 2 922 5
	call	set_signal_proc_mask
.L273:
	.loc 2 924 7
	movzbl	report_signal_handling(%rip), %eax
	.loc 2 924 6
	testb	%al, %al
	je	.L274
	.loc 2 925 5
	call	list_signal_handling
.L274:
	.loc 2 927 6
	cmpq	$0, -40(%rbp)
	je	.L275
	.loc 2 929 7
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L276
	.loc 2 929 7 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC93(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L276:
	.loc 2 931 11 is_stmt 1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	chdir@PLT
	.loc 2 931 10
	testl	%eax, %eax
	je	.L275
.LBB33:
	.loc 2 932 9
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC94(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$125, %edi
	movl	$0, %eax
	call	error@PLT
.L275:
.LBE33:
	.loc 2 936 7
	movzbl	dev_debug(%rip), %eax
	.loc 2 936 6
	testb	%al, %al
	je	.L277
	.loc 2 938 7
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L278
	.loc 2 938 7 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax
	movl	optind(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC95(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L278:
.LBB34:
	.loc 2 939 16 is_stmt 1
	movl	optind(%rip), %eax
	movl	%eax, -52(%rbp)
	.loc 2 939 7
	jmp	.L279
.L281:
	.loc 2 940 9
	movzbl	dev_debug(%rip), %eax
	testb	%al, %al
	je	.L280
	.loc 2 940 9 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rcx
	movl	optind(%rip), %eax
	movl	-52(%rbp), %edx
	subl	%eax, %edx
	movq	stderr(%rip), %rax
	leaq	.LC96(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L280:
	.loc 2 939 34 is_stmt 1 discriminator 2
	addl	$1, -52(%rbp)
.L279:
	.loc 2 939 27 discriminator 1
	movl	-68(%rbp), %eax
	.loc 2 939 7 discriminator 1
	cmpl	%eax, -52(%rbp)
	jl	.L281
.L277:
.LBE34:
	.loc 2 943 3
	movq	-80(%rbp), %rax
	.loc 2 943 30
	movl	optind(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	.loc 2 943 25
	addq	%rax, %rdx
	.loc 2 943 15
	movq	-80(%rbp), %rax
	movl	optind(%rip), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	.loc 2 943 3
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	execvp@PLT
	.loc 2 945 21
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 945 51
	cmpl	$2, %eax
	jne	.L282
	.loc 2 945 51 is_stmt 0 discriminator 1
	movl	$127, %eax
	jmp	.L283
.L282:
	.loc 2 945 51 discriminator 2
	movl	$126, %eax
.L283:
	.loc 2 945 7 is_stmt 1 discriminator 4
	movl	%eax, -44(%rbp)
	.loc 2 946 37 discriminator 4
	movq	-80(%rbp), %rax
	movl	optind(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 946 3 discriminator 4
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 946 13 discriminator 4
	call	__errno_location@PLT
	.loc 2 946 3 discriminator 4
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC97(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 948 6 discriminator 4
	cmpl	$127, -44(%rbp)
	jne	.L284
	.loc 2 948 49 discriminator 1
	movq	-80(%rbp), %rax
	movl	optind(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 948 37 discriminator 1
	movq	(%rax), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 2 948 34 discriminator 1
	testq	%rax, %rax
	je	.L284
	.loc 2 949 18
	leaq	.LC82(%rip), %rdi
	call	gettext@PLT
	.loc 2 949 5
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L284:
	.loc 2 951 10
	movl	-44(%rbp), %eax
.L272:
	.loc 2 952 1
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	main, .-main
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.6992, @object
	.size	__PRETTY_FUNCTION__.6992, 12
__PRETTY_FUNCTION__.6992:
	.string	"escape_char"
	.align 8
	.type	__PRETTY_FUNCTION__.6996, @object
	.size	__PRETTY_FUNCTION__.6996, 13
__PRETTY_FUNCTION__.6996:
	.string	"scan_varname"
	.align 16
	.type	__PRETTY_FUNCTION__.7017, @object
	.size	__PRETTY_FUNCTION__.7017, 19
__PRETTY_FUNCTION__.7017:
	.string	"validate_split_str"
	.align 8
	.type	__PRETTY_FUNCTION__.7049, @object
	.size	__PRETTY_FUNCTION__.7049, 11
__PRETTY_FUNCTION__.7049:
	.string	"build_argv"
	.local	dummy_environ.7197
	.comm	dummy_environ.7197,8,8
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h"
	.file 12 "./lib/sys/select.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h"
	.file 17 "/usr/include/signal.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/sigaction.h"
	.file 19 "/usr/include/time.h"
	.file 20 "/usr/include/unistd.h"
	.file 21 "/usr/include/errno.h"
	.file 22 "src/version.h"
	.file 23 "./lib/exitfail.h"
	.file 24 "./lib/timespec.h"
	.file 25 "/usr/include/ctype.h"
	.file 26 "./lib/version-etc.h"
	.file 27 "./lib/progname.h"
	.file 28 "./lib/quotearg.h"
	.file 29 "./lib/error.h"
	.file 30 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1749
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF258
	.byte	0xc
	.long	.LASF259
	.long	.LASF260
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF6
	.byte	0x3
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
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
	.byte	0x2a
	.byte	0x16
	.long	0x40
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x7d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x7d
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x9a
	.byte	0x19
	.long	0x65
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x9c
	.byte	0x1b
	.long	0x7d
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x7d
	.uleb128 0x7
	.byte	0x8
	.long	0xd7
	.uleb128 0x8
	.long	0xcc
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x8
	.long	0xd7
	.uleb128 0x9
	.long	.LASF69
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x26a
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xcc
	.byte	0x8
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xcc
	.byte	0x10
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xcc
	.byte	0x18
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xcc
	.byte	0x20
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xcc
	.byte	0x28
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xcc
	.byte	0x30
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xcc
	.byte	0x38
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xcc
	.byte	0x40
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xcc
	.byte	0x48
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xcc
	.byte	0x50
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xcc
	.byte	0x58
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x283
	.byte	0x60
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x289
	.byte	0x68
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x90
	.byte	0x78
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x28f
	.byte	0x83
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x29f
	.byte	0x88
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x9c
	.byte	0x90
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2aa
	.byte	0x98
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2b5
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x289
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2bb
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF45
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xe3
	.uleb128 0xb
	.long	.LASF261
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF46
	.uleb128 0x7
	.byte	0x8
	.long	0x27e
	.uleb128 0x7
	.byte	0x8
	.long	0xe3
	.uleb128 0xd
	.long	0xd7
	.long	0x29f
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x276
	.uleb128 0xc
	.long	.LASF47
	.uleb128 0x7
	.byte	0x8
	.long	0x2a5
	.uleb128 0xc
	.long	.LASF48
	.uleb128 0x7
	.byte	0x8
	.long	0x2b0
	.uleb128 0xd
	.long	0xd7
	.long	0x2cb
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xde
	.uleb128 0x8
	.long	0x2cb
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2e2
	.uleb128 0x7
	.byte	0x8
	.long	0x26a
	.uleb128 0xf
	.long	.LASF50
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2e2
	.uleb128 0xf
	.long	.LASF51
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2e2
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2d1
	.long	0x317
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x30c
	.uleb128 0xf
	.long	.LASF53
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x317
	.uleb128 0xf
	.long	.LASF54
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF55
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x317
	.uleb128 0x2
	.long	.LASF56
	.byte	0x3
	.byte	0x8f
	.byte	0x1a
	.long	0x7d
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF57
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF58
	.uleb128 0x2
	.long	.LASF59
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0xc0
	.uleb128 0x11
	.byte	0x80
	.byte	0xa
	.byte	0x5
	.byte	0x9
	.long	0x37d
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x7
	.byte	0x15
	.long	0x37d
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x39
	.long	0x38d
	.uleb128 0xe
	.long	0x39
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.long	.LASF61
	.byte	0xa
	.byte	0x8
	.byte	0x3
	.long	0x366
	.uleb128 0x2
	.long	.LASF62
	.byte	0xb
	.byte	0x7
	.byte	0x14
	.long	0x38d
	.uleb128 0x12
	.long	.LASF63
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF64
	.uleb128 0xf
	.long	.LASF65
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0xcc
	.uleb128 0xf
	.long	.LASF66
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF67
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF68
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF70
	.byte	0x20
	.byte	0xe
	.byte	0x32
	.byte	0x8
	.long	0x42b
	.uleb128 0xa
	.long	.LASF71
	.byte	0xe
	.byte	0x34
	.byte	0xf
	.long	0x2cb
	.byte	0
	.uleb128 0xa
	.long	.LASF72
	.byte	0xe
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF73
	.byte	0xe
	.byte	0x38
	.byte	0x8
	.long	0x430
	.byte	0x10
	.uleb128 0x13
	.string	"val"
	.byte	0xe
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x3e9
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0x14
	.long	.LASF262
	.byte	0x8
	.byte	0xf
	.byte	0x18
	.byte	0x7
	.long	0x45c
	.uleb128 0x15
	.long	.LASF74
	.byte	0xf
	.byte	0x1a
	.byte	0x7
	.long	0x65
	.uleb128 0x15
	.long	.LASF75
	.byte	0xf
	.byte	0x1b
	.byte	0x9
	.long	0x47
	.byte	0
	.uleb128 0x2
	.long	.LASF76
	.byte	0xf
	.byte	0x1e
	.byte	0x16
	.long	0x436
	.uleb128 0x11
	.byte	0x8
	.byte	0x10
	.byte	0x38
	.byte	0x2
	.long	0x48c
	.uleb128 0xa
	.long	.LASF77
	.byte	0x10
	.byte	0x3a
	.byte	0xe
	.long	0xa8
	.byte	0
	.uleb128 0xa
	.long	.LASF78
	.byte	0x10
	.byte	0x3b
	.byte	0xe
	.long	0x84
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0x10
	.byte	0x3f
	.byte	0x2
	.long	0x4bd
	.uleb128 0xa
	.long	.LASF79
	.byte	0x10
	.byte	0x41
	.byte	0xa
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF80
	.byte	0x10
	.byte	0x42
	.byte	0xa
	.long	0x65
	.byte	0x4
	.uleb128 0xa
	.long	.LASF81
	.byte	0x10
	.byte	0x43
	.byte	0x11
	.long	0x45c
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0x10
	.byte	0x47
	.byte	0x2
	.long	0x4ee
	.uleb128 0xa
	.long	.LASF77
	.byte	0x10
	.byte	0x49
	.byte	0xe
	.long	0xa8
	.byte	0
	.uleb128 0xa
	.long	.LASF78
	.byte	0x10
	.byte	0x4a
	.byte	0xe
	.long	0x84
	.byte	0x4
	.uleb128 0xa
	.long	.LASF81
	.byte	0x10
	.byte	0x4b
	.byte	0x11
	.long	0x45c
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.byte	0x20
	.byte	0x10
	.byte	0x4f
	.byte	0x2
	.long	0x539
	.uleb128 0xa
	.long	.LASF77
	.byte	0x10
	.byte	0x51
	.byte	0xe
	.long	0xa8
	.byte	0
	.uleb128 0xa
	.long	.LASF78
	.byte	0x10
	.byte	0x52
	.byte	0xe
	.long	0x84
	.byte	0x4
	.uleb128 0xa
	.long	.LASF82
	.byte	0x10
	.byte	0x53
	.byte	0xa
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF83
	.byte	0x10
	.byte	0x54
	.byte	0x13
	.long	0xb4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF84
	.byte	0x10
	.byte	0x55
	.byte	0x13
	.long	0xb4
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0x10
	.byte	0x61
	.byte	0x3
	.long	0x55d
	.uleb128 0xa
	.long	.LASF85
	.byte	0x10
	.byte	0x63
	.byte	0xd
	.long	0x47
	.byte	0
	.uleb128 0xa
	.long	.LASF86
	.byte	0x10
	.byte	0x64
	.byte	0xd
	.long	0x47
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.byte	0x10
	.byte	0x10
	.byte	0x5e
	.byte	0x6
	.long	0x57f
	.uleb128 0x15
	.long	.LASF87
	.byte	0x10
	.byte	0x65
	.byte	0x7
	.long	0x539
	.uleb128 0x15
	.long	.LASF88
	.byte	0x10
	.byte	0x67
	.byte	0xe
	.long	0x71
	.byte	0
	.uleb128 0x11
	.byte	0x20
	.byte	0x10
	.byte	0x59
	.byte	0x2
	.long	0x5b0
	.uleb128 0xa
	.long	.LASF89
	.byte	0x10
	.byte	0x5b
	.byte	0xc
	.long	0x47
	.byte	0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x10
	.byte	0x5d
	.byte	0x10
	.long	0x5e
	.byte	0x8
	.uleb128 0xa
	.long	.LASF91
	.byte	0x10
	.byte	0x68
	.byte	0xa
	.long	0x55d
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0x10
	.byte	0x6c
	.byte	0x2
	.long	0x5d4
	.uleb128 0xa
	.long	.LASF92
	.byte	0x10
	.byte	0x6e
	.byte	0x15
	.long	0x7d
	.byte	0
	.uleb128 0xa
	.long	.LASF93
	.byte	0x10
	.byte	0x6f
	.byte	0xa
	.long	0x65
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0x10
	.byte	0x74
	.byte	0x2
	.long	0x605
	.uleb128 0xa
	.long	.LASF94
	.byte	0x10
	.byte	0x76
	.byte	0xc
	.long	0x47
	.byte	0
	.uleb128 0xa
	.long	.LASF95
	.byte	0x10
	.byte	0x77
	.byte	0xa
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF96
	.byte	0x10
	.byte	0x78
	.byte	0x13
	.long	0x40
	.byte	0xc
	.byte	0
	.uleb128 0x16
	.byte	0x70
	.byte	0x10
	.byte	0x33
	.byte	0x5
	.long	0x66f
	.uleb128 0x15
	.long	.LASF97
	.byte	0x10
	.byte	0x35
	.byte	0x6
	.long	0x66f
	.uleb128 0x15
	.long	.LASF98
	.byte	0x10
	.byte	0x3c
	.byte	0x6
	.long	0x468
	.uleb128 0x15
	.long	.LASF99
	.byte	0x10
	.byte	0x44
	.byte	0x6
	.long	0x48c
	.uleb128 0x17
	.string	"_rt"
	.byte	0x10
	.byte	0x4c
	.byte	0x6
	.long	0x4bd
	.uleb128 0x15
	.long	.LASF100
	.byte	0x10
	.byte	0x56
	.byte	0x6
	.long	0x4ee
	.uleb128 0x15
	.long	.LASF101
	.byte	0x10
	.byte	0x69
	.byte	0x6
	.long	0x57f
	.uleb128 0x15
	.long	.LASF102
	.byte	0x10
	.byte	0x70
	.byte	0x6
	.long	0x5b0
	.uleb128 0x15
	.long	.LASF103
	.byte	0x10
	.byte	0x79
	.byte	0x6
	.long	0x5d4
	.byte	0
	.uleb128 0xd
	.long	0x65
	.long	0x67f
	.uleb128 0xe
	.long	0x39
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.byte	0x80
	.byte	0x10
	.byte	0x24
	.byte	0x9
	.long	0x6ca
	.uleb128 0xa
	.long	.LASF104
	.byte	0x10
	.byte	0x26
	.byte	0x9
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF105
	.byte	0x10
	.byte	0x28
	.byte	0x9
	.long	0x65
	.byte	0x4
	.uleb128 0xa
	.long	.LASF106
	.byte	0x10
	.byte	0x2a
	.byte	0x9
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF107
	.byte	0x10
	.byte	0x30
	.byte	0x9
	.long	0x65
	.byte	0xc
	.uleb128 0xa
	.long	.LASF108
	.byte	0x10
	.byte	0x7b
	.byte	0x9
	.long	0x605
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF109
	.byte	0x10
	.byte	0x7c
	.byte	0x5
	.long	0x67f
	.uleb128 0x2
	.long	.LASF110
	.byte	0x11
	.byte	0x48
	.byte	0x10
	.long	0x6e2
	.uleb128 0x7
	.byte	0x8
	.long	0x6e8
	.uleb128 0x18
	.long	0x6f3
	.uleb128 0x19
	.long	0x65
	.byte	0
	.uleb128 0x16
	.byte	0x8
	.byte	0x12
	.byte	0x1f
	.byte	0x5
	.long	0x715
	.uleb128 0x15
	.long	.LASF111
	.byte	0x12
	.byte	0x22
	.byte	0x11
	.long	0x6d6
	.uleb128 0x15
	.long	.LASF112
	.byte	0x12
	.byte	0x24
	.byte	0x9
	.long	0x730
	.byte	0
	.uleb128 0x18
	.long	0x72a
	.uleb128 0x19
	.long	0x65
	.uleb128 0x19
	.long	0x72a
	.uleb128 0x19
	.long	0x47
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x6ca
	.uleb128 0x7
	.byte	0x8
	.long	0x715
	.uleb128 0x9
	.long	.LASF113
	.byte	0x98
	.byte	0x12
	.byte	0x1b
	.byte	0x8
	.long	0x778
	.uleb128 0xa
	.long	.LASF114
	.byte	0x12
	.byte	0x26
	.byte	0x5
	.long	0x6f3
	.byte	0
	.uleb128 0xa
	.long	.LASF115
	.byte	0x12
	.byte	0x2e
	.byte	0x10
	.long	0x38d
	.byte	0x8
	.uleb128 0xa
	.long	.LASF116
	.byte	0x12
	.byte	0x31
	.byte	0x9
	.long	0x65
	.byte	0x88
	.uleb128 0xa
	.long	.LASF117
	.byte	0x12
	.byte	0x34
	.byte	0xc
	.long	0x779
	.byte	0x90
	.byte	0
	.uleb128 0x1a
	.uleb128 0x7
	.byte	0x8
	.long	0x778
	.uleb128 0xd
	.long	0x2d1
	.long	0x78f
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x77f
	.uleb128 0x12
	.long	.LASF118
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x78f
	.uleb128 0x12
	.long	.LASF119
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x78f
	.uleb128 0xd
	.long	0xcc
	.long	0x7be
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF120
	.byte	0x13
	.byte	0x9f
	.byte	0xe
	.long	0x7ae
	.uleb128 0xf
	.long	.LASF121
	.byte	0x13
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF122
	.byte	0x13
	.byte	0xa1
	.byte	0x11
	.long	0x7d
	.uleb128 0xf
	.long	.LASF123
	.byte	0x13
	.byte	0xa6
	.byte	0xe
	.long	0x7ae
	.uleb128 0xf
	.long	.LASF124
	.byte	0x13
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF125
	.byte	0x13
	.byte	0xaf
	.byte	0x11
	.long	0x7d
	.uleb128 0x12
	.long	.LASF126
	.byte	0x13
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.long	.LASF127
	.byte	0x14
	.value	0x21f
	.byte	0xf
	.long	0x820
	.uleb128 0x7
	.byte	0x8
	.long	0xcc
	.uleb128 0x12
	.long	.LASF128
	.byte	0x14
	.value	0x221
	.byte	0xf
	.long	0x820
	.uleb128 0xf
	.long	.LASF129
	.byte	0x15
	.byte	0x2d
	.byte	0xe
	.long	0xcc
	.uleb128 0xf
	.long	.LASF130
	.byte	0x15
	.byte	0x2e
	.byte	0xe
	.long	0xcc
	.uleb128 0xf
	.long	.LASF131
	.byte	0x16
	.byte	0x1
	.byte	0x14
	.long	0x2cb
	.uleb128 0x1b
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x87e
	.uleb128 0x1c
	.long	.LASF132
	.byte	0x7c
	.uleb128 0x1c
	.long	.LASF133
	.byte	0x7d
	.uleb128 0x1c
	.long	.LASF134
	.byte	0x7e
	.uleb128 0x1c
	.long	.LASF135
	.byte	0x7f
	.byte	0
	.uleb128 0xf
	.long	.LASF136
	.byte	0x17
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x1b
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x29
	.byte	0x6
	.long	0x8a2
	.uleb128 0x1d
	.long	.LASF137
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x1b
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x2a
	.byte	0x6
	.long	0x8b7
	.uleb128 0x1c
	.long	.LASF138
	.byte	0x9
	.byte	0
	.uleb128 0x1b
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x2f
	.byte	0x1
	.long	0x916
	.uleb128 0x1e
	.long	.LASF139
	.value	0x100
	.uleb128 0x1e
	.long	.LASF140
	.value	0x200
	.uleb128 0x1e
	.long	.LASF141
	.value	0x400
	.uleb128 0x1e
	.long	.LASF142
	.value	0x800
	.uleb128 0x1e
	.long	.LASF143
	.value	0x1000
	.uleb128 0x1e
	.long	.LASF144
	.value	0x2000
	.uleb128 0x1e
	.long	.LASF145
	.value	0x4000
	.uleb128 0x1e
	.long	.LASF146
	.value	0x8000
	.uleb128 0x1c
	.long	.LASF147
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF148
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF149
	.byte	0x4
	.uleb128 0x1c
	.long	.LASF150
	.byte	0x8
	.byte	0
	.uleb128 0x1f
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x934
	.uleb128 0x20
	.long	.LASF151
	.sleb128 -130
	.uleb128 0x20
	.long	.LASF152
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xde
	.long	0x93f
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x934
	.uleb128 0xf
	.long	.LASF153
	.byte	0x1a
	.byte	0x19
	.byte	0x13
	.long	0x93f
	.uleb128 0xf
	.long	.LASF154
	.byte	0x1b
	.byte	0x20
	.byte	0x14
	.long	0x2cb
	.uleb128 0x21
	.long	.LASF180
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x20
	.byte	0x6
	.long	0x9b1
	.uleb128 0x1c
	.long	.LASF155
	.byte	0
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF157
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF158
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF159
	.byte	0x4
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF161
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF162
	.byte	0x7
	.uleb128 0x1c
	.long	.LASF163
	.byte	0x8
	.uleb128 0x1c
	.long	.LASF164
	.byte	0x9
	.uleb128 0x1c
	.long	.LASF165
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x95c
	.uleb128 0x12
	.long	.LASF166
	.byte	0x1c
	.value	0x10b
	.byte	0x1a
	.long	0x317
	.uleb128 0xd
	.long	0x9b1
	.long	0x9ce
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x9c3
	.uleb128 0x12
	.long	.LASF167
	.byte	0x1c
	.value	0x10c
	.byte	0x21
	.long	0x9ce
	.uleb128 0xf
	.long	.LASF168
	.byte	0x1d
	.byte	0x32
	.byte	0xf
	.long	0x779
	.uleb128 0xf
	.long	.LASF169
	.byte	0x1d
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF170
	.byte	0x1d
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF171
	.uleb128 0xf
	.long	.LASF172
	.byte	0x1e
	.byte	0x19
	.byte	0x1f
	.long	0xa04
	.uleb128 0x22
	.long	.LASF173
	.byte	0x2
	.byte	0x2b
	.byte	0x15
	.long	0xa2b
	.uleb128 0x9
	.byte	0x3
	.quad	usvars
	.uleb128 0x7
	.byte	0x8
	.long	0x2cb
	.uleb128 0x22
	.long	.LASF174
	.byte	0x2
	.byte	0x2c
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	usvars_alloc
	.uleb128 0x22
	.long	.LASF175
	.byte	0x2
	.byte	0x2d
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	usvars_used
	.uleb128 0x22
	.long	.LASF176
	.byte	0x2
	.byte	0x30
	.byte	0xd
	.long	0xa73
	.uleb128 0x9
	.byte	0x3
	.quad	dev_debug
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF177
	.uleb128 0x22
	.long	.LASF178
	.byte	0x2
	.byte	0x33
	.byte	0xe
	.long	0xcc
	.uleb128 0x9
	.byte	0x3
	.quad	varname
	.uleb128 0x22
	.long	.LASF179
	.byte	0x2
	.byte	0x34
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	vnlen
	.uleb128 0x21
	.long	.LASF181
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x37
	.byte	0x6
	.long	0xad7
	.uleb128 0x1c
	.long	.LASF182
	.byte	0
	.uleb128 0x1c
	.long	.LASF183
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF184
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF185
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF186
	.byte	0x4
	.byte	0
	.uleb128 0x22
	.long	.LASF187
	.byte	0x2
	.byte	0x3e
	.byte	0x1a
	.long	0xaed
	.uleb128 0x9
	.byte	0x3
	.quad	signals
	.uleb128 0x7
	.byte	0x8
	.long	0xaa6
	.uleb128 0x22
	.long	.LASF188
	.byte	0x2
	.byte	0x41
	.byte	0x11
	.long	0x399
	.uleb128 0x9
	.byte	0x3
	.quad	block_signals
	.uleb128 0x22
	.long	.LASF189
	.byte	0x2
	.byte	0x44
	.byte	0x11
	.long	0x399
	.uleb128 0x9
	.byte	0x3
	.quad	unblock_signals
	.uleb128 0x22
	.long	.LASF190
	.byte	0x2
	.byte	0x47
	.byte	0xd
	.long	0xa73
	.uleb128 0x9
	.byte	0x3
	.quad	sig_mask_changed
	.uleb128 0x22
	.long	.LASF191
	.byte	0x2
	.byte	0x4a
	.byte	0xd
	.long	0xa73
	.uleb128 0x9
	.byte	0x3
	.quad	report_signal_handling
	.uleb128 0xd
	.long	0xde
	.long	0xb5b
	.uleb128 0xe
	.long	0x39
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0xb4b
	.uleb128 0x22
	.long	.LASF192
	.byte	0x2
	.byte	0x4c
	.byte	0x13
	.long	0xb5b
	.uleb128 0x9
	.byte	0x3
	.quad	shortopts
	.uleb128 0x1b
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x51
	.byte	0x1
	.long	0xb9d
	.uleb128 0x1c
	.long	.LASF193
	.byte	0x80
	.uleb128 0x1c
	.long	.LASF194
	.byte	0x81
	.uleb128 0x1c
	.long	.LASF195
	.byte	0x82
	.uleb128 0x1c
	.long	.LASF196
	.byte	0x83
	.byte	0
	.uleb128 0xd
	.long	0x42b
	.long	0xbad
	.uleb128 0xe
	.long	0x39
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0xb9d
	.uleb128 0x22
	.long	.LASF197
	.byte	0x2
	.byte	0x58
	.byte	0x1c
	.long	0xbad
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x23
	.long	.LASF249
	.byte	0x2
	.value	0x31e
	.byte	0x1
	.long	0x65
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0xd14
	.uleb128 0x24
	.long	.LASF198
	.byte	0x2
	.value	0x31e
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x24
	.long	.LASF199
	.byte	0x2
	.value	0x31e
	.byte	0x18
	.long	0x820
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.long	.LASF200
	.byte	0x2
	.value	0x320
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF201
	.byte	0x2
	.value	0x321
	.byte	0x8
	.long	0xa73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -71
	.uleb128 0x25
	.long	.LASF202
	.byte	0x2
	.value	0x322
	.byte	0x8
	.long	0xa73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x25
	.long	.LASF203
	.byte	0x2
	.value	0x323
	.byte	0xf
	.long	0x2cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"eq"
	.byte	0x2
	.value	0x373
	.byte	0x9
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF204
	.byte	0x2
	.value	0x381
	.byte	0x8
	.long	0xa73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x25
	.long	.LASF205
	.byte	0x2
	.value	0x3b1
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0xcac
	.uleb128 0x25
	.long	.LASF206
	.byte	0x2
	.value	0x36d
	.byte	0x14
	.long	0xd14
	.uleb128 0x9
	.byte	0x3
	.quad	dummy_environ.7197
	.byte	0
	.uleb128 0x28
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x27
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0xce1
	.uleb128 0x26
	.string	"e"
	.byte	0x2
	.value	0x392
	.byte	0x14
	.long	0xd24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x29
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x3ab
	.byte	0x10
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xcc
	.long	0xd24
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xd2
	.uleb128 0x2a
	.long	.LASF207
	.byte	0x2
	.value	0x313
	.byte	0x1
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0xd6a
	.uleb128 0x29
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x317
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF208
	.byte	0x2
	.value	0x2f6
	.byte	0x1
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0xe33
	.uleb128 0x26
	.string	"set"
	.byte	0x2
	.value	0x2f8
	.byte	0xc
	.long	0x399
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x25
	.long	.LASF209
	.byte	0x2
	.value	0x2f9
	.byte	0x8
	.long	0xe33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x29
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x2ff
	.byte	0xc
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x29
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x26
	.string	"act"
	.byte	0x2
	.value	0x301
	.byte	0x18
	.long	0x736
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x25
	.long	.LASF210
	.byte	0x2
	.value	0x305
	.byte	0x13
	.long	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x25
	.long	.LASF211
	.byte	0x2
	.value	0x306
	.byte	0x13
	.long	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x25
	.long	.LASF212
	.byte	0x2
	.value	0x307
	.byte	0x13
	.long	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xd7
	.long	0xe43
	.uleb128 0xe
	.long	0x39
	.byte	0x12
	.byte	0
	.uleb128 0x2a
	.long	.LASF213
	.byte	0x2
	.value	0x2cc
	.byte	0x1
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0xeee
	.uleb128 0x26
	.string	"set"
	.byte	0x2
	.value	0x2cf
	.byte	0xc
	.long	0x399
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x25
	.long	.LASF214
	.byte	0x2
	.value	0x2d0
	.byte	0xf
	.long	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x28
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x27
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0xedc
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x2d7
	.byte	0xc
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x29
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x25
	.long	.LASF209
	.byte	0x2
	.value	0x2ea
	.byte	0x10
	.long	0xe33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.byte	0
	.uleb128 0x2a
	.long	.LASF215
	.byte	0x2
	.value	0x29e
	.byte	0x1
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0xf85
	.uleb128 0x24
	.long	.LASF65
	.byte	0x2
	.value	0x29e
	.byte	0x28
	.long	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF216
	.byte	0x2
	.value	0x29e
	.byte	0x35
	.long	0xa73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x25
	.long	.LASF209
	.byte	0x2
	.value	0x2a0
	.byte	0x8
	.long	0xe33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF217
	.byte	0x2
	.value	0x2a1
	.byte	0x9
	.long	0xcc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF218
	.byte	0x2
	.value	0x2a2
	.byte	0x9
	.long	0xcc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x25
	.long	.LASF219
	.byte	0x2
	.value	0x2bb
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF220
	.byte	0x2
	.value	0x272
	.byte	0x1
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x1060
	.uleb128 0x29
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x274
	.byte	0xc
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x26
	.string	"act"
	.byte	0x2
	.value	0x276
	.byte	0x18
	.long	0x736
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x25
	.long	.LASF221
	.byte	0x2
	.value	0x27b
	.byte	0xc
	.long	0xa73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -234
	.uleb128 0x25
	.long	.LASF222
	.byte	0x2
	.value	0x27e
	.byte	0xc
	.long	0xa73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -233
	.uleb128 0x25
	.long	.LASF223
	.byte	0x2
	.value	0x281
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x28
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x28
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x29
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x25
	.long	.LASF209
	.byte	0x2
	.value	0x292
	.byte	0x10
	.long	0xe33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF224
	.byte	0x2
	.value	0x24c
	.byte	0x1
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x111c
	.uleb128 0x24
	.long	.LASF65
	.byte	0x2
	.value	0x24c
	.byte	0x29
	.long	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF225
	.byte	0x2
	.value	0x24c
	.byte	0x36
	.long	0xa73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x25
	.long	.LASF209
	.byte	0x2
	.value	0x24e
	.byte	0x8
	.long	0xe33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF217
	.byte	0x2
	.value	0x24f
	.byte	0x9
	.long	0xcc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF218
	.byte	0x2
	.value	0x250
	.byte	0x9
	.long	0xcc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x10f8
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x257
	.byte	0x10
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x29
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x25
	.long	.LASF219
	.byte	0x2
	.value	0x262
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF226
	.byte	0x2
	.value	0x218
	.byte	0x1
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x11bc
	.uleb128 0x2b
	.string	"str"
	.byte	0x2
	.value	0x218
	.byte	0x21
	.long	0x2cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF227
	.byte	0x2
	.value	0x218
	.byte	0x33
	.long	0x430
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF228
	.byte	0x2
	.value	0x219
	.byte	0x22
	.long	0x430
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF229
	.byte	0x2
	.value	0x219
	.byte	0x3d
	.long	0x11bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x21b
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF230
	.byte	0x2
	.value	0x21b
	.byte	0xa
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.long	.LASF231
	.byte	0x2
	.value	0x21c
	.byte	0xa
	.long	0x820
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF232
	.byte	0x2
	.value	0x21c
	.byte	0x15
	.long	0x820
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x820
	.uleb128 0x2c
	.long	.LASF242
	.byte	0x2
	.value	0x175
	.byte	0x1
	.long	0x820
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x12f4
	.uleb128 0x2b
	.string	"str"
	.byte	0x2
	.value	0x175
	.byte	0x19
	.long	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF233
	.byte	0x2
	.value	0x175
	.byte	0x22
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.string	"dq"
	.byte	0x2
	.value	0x177
	.byte	0x8
	.long	0xa73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.string	"sq"
	.byte	0x2
	.value	0x177
	.byte	0x14
	.long	0xa73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -79
	.uleb128 0x26
	.string	"sep"
	.byte	0x2
	.value	0x177
	.byte	0x20
	.long	0xa73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x25
	.long	.LASF234
	.byte	0x2
	.value	0x178
	.byte	0x9
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF231
	.byte	0x2
	.value	0x17a
	.byte	0xa
	.long	0x820
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF232
	.byte	0x2
	.value	0x17a
	.byte	0x15
	.long	0x820
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF230
	.byte	0x2
	.value	0x17b
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.long	.LASF235
	.byte	0x2
	.value	0x17c
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF240
	.long	0x1304
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7049
	.uleb128 0x2e
	.string	"eos"
	.byte	0x2
	.value	0x1fd
	.byte	0x2
	.quad	.L101
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0
	.uleb128 0x25
	.long	.LASF236
	.byte	0x2
	.value	0x1a0
	.byte	0xc
	.long	0xd7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x29
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x26
	.string	"n"
	.byte	0x2
	.value	0x1e6
	.byte	0x13
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"v"
	.byte	0x2
	.value	0x1e8
	.byte	0x13
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xde
	.long	0x1304
	.uleb128 0xe
	.long	0x39
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x12f4
	.uleb128 0x2a
	.long	.LASF237
	.byte	0x2
	.value	0x110
	.byte	0x1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x1447
	.uleb128 0x2b
	.string	"str"
	.byte	0x2
	.value	0x110
	.byte	0x21
	.long	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF238
	.byte	0x2
	.value	0x110
	.byte	0x36
	.long	0x1447
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF239
	.byte	0x2
	.value	0x111
	.byte	0x22
	.long	0x430
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"dq"
	.byte	0x2
	.value	0x113
	.byte	0x8
	.long	0xa73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"sq"
	.byte	0x2
	.value	0x113
	.byte	0xc
	.long	0xa73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -55
	.uleb128 0x26
	.string	"sp"
	.byte	0x2
	.value	0x113
	.byte	0x10
	.long	0xa73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x26
	.string	"pch"
	.byte	0x2
	.value	0x114
	.byte	0xf
	.long	0x2cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF235
	.byte	0x2
	.value	0x115
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"cnt"
	.byte	0x2
	.value	0x116
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LASF240
	.long	0x145d
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7017
	.uleb128 0x27
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1435
	.uleb128 0x25
	.long	.LASF241
	.byte	0x2
	.value	0x11f
	.byte	0x12
	.long	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x28
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x28
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x28
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x28
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.byte	0
	.uleb128 0x28
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2d
	.uleb128 0xd
	.long	0xde
	.long	0x145d
	.uleb128 0xe
	.long	0x39
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.long	0x144d
	.uleb128 0x30
	.long	.LASF243
	.byte	0x2
	.byte	0xf0
	.byte	0x1
	.long	0xcc
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x14ae
	.uleb128 0x31
	.string	"str"
	.byte	0x2
	.byte	0xf0
	.byte	0x1e
	.long	0x2cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"i"
	.byte	0x2
	.byte	0xf2
	.byte	0xd
	.long	0x340
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"p"
	.byte	0x2
	.byte	0xf3
	.byte	0xf
	.long	0x2cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.long	.LASF244
	.byte	0x2
	.byte	0xdb
	.byte	0x1
	.long	0x2cb
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x1514
	.uleb128 0x31
	.string	"str"
	.byte	0x2
	.byte	0xdb
	.byte	0x1b
	.long	0x2cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF240
	.long	0xb5b
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6996
	.uleb128 0x29
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x32
	.string	"end"
	.byte	0x2
	.byte	0xe0
	.byte	0x13
	.long	0x2cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF245
	.byte	0x2
	.byte	0xc8
	.byte	0x1
	.long	0xd7
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1557
	.uleb128 0x31
	.string	"c"
	.byte	0x2
	.byte	0xc8
	.byte	0x19
	.long	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF240
	.long	0x1567
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6992
	.byte	0
	.uleb128 0xd
	.long	0xde
	.long	0x1567
	.uleb128 0xe
	.long	0x39
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.long	0x1557
	.uleb128 0x33
	.long	.LASF246
	.byte	0x2
	.byte	0xc0
	.byte	0x1
	.long	0xa73
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x159c
	.uleb128 0x31
	.string	"c"
	.byte	0x2
	.byte	0xc0
	.byte	0x23
	.long	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.long	.LASF247
	.byte	0x2
	.byte	0xae
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x15eb
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x32
	.string	"i"
	.byte	0x2
	.byte	0xb0
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF248
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x1619
	.uleb128 0x31
	.string	"var"
	.byte	0x2
	.byte	0xa6
	.byte	0x1f
	.long	0x2cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF250
	.byte	0x2
	.byte	0x6a
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x1647
	.uleb128 0x36
	.long	.LASF251
	.byte	0x2
	.byte	0x6a
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.long	.LASF252
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x16ec
	.uleb128 0x24
	.long	.LASF253
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x37
	.long	.LASF254
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x16a2
	.uleb128 0x38
	.long	.LASF253
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2cb
	.byte	0
	.uleb128 0x38
	.long	.LASF255
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2cb
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x1677
	.uleb128 0x25
	.long	.LASF254
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x16fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x25
	.long	.LASF255
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x25
	.long	.LASF256
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x1701
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x25
	.long	.LASF257
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x16a2
	.long	0x16fc
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x16ec
	.uleb128 0x7
	.byte	0x8
	.long	0x16a2
	.uleb128 0x39
	.long	.LASF263
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.long	.LASF264
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x36
	.long	.LASF251
	.byte	0x1
	.byte	0x63
	.byte	0x1e
	.long	0x65
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
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2b
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"size_t"
.LASF151:
	.string	"GETOPT_HELP_CHAR"
.LASF146:
	.string	"_ISgraph"
.LASF230:
	.string	"newargc"
.LASF182:
	.string	"UNCHANGED"
.LASF47:
	.string	"_IO_codecvt"
.LASF231:
	.string	"newargv"
.LASF27:
	.string	"_IO_save_end"
.LASF258:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF205:
	.string	"exit_status"
.LASF118:
	.string	"_sys_siglist"
.LASF59:
	.string	"time_t"
.LASF20:
	.string	"_IO_write_base"
.LASF195:
	.string	"BLOCK_SIGNAL_OPTION"
.LASF170:
	.string	"error_one_per_line"
.LASF36:
	.string	"_lock"
.LASF106:
	.string	"si_code"
.LASF92:
	.string	"si_band"
.LASF187:
	.string	"signals"
.LASF120:
	.string	"__tzname"
.LASF25:
	.string	"_IO_save_base"
.LASF226:
	.string	"parse_split_string"
.LASF233:
	.string	"extra_argc"
.LASF185:
	.string	"IGNORE"
.LASF264:
	.string	"initialize_exit_failure"
.LASF238:
	.string	"bufsize"
.LASF29:
	.string	"_chain"
.LASF117:
	.string	"sa_restorer"
.LASF33:
	.string	"_cur_column"
.LASF52:
	.string	"sys_nerr"
.LASF96:
	.string	"_arch"
.LASF193:
	.string	"DEFAULT_SIGNAL_OPTION"
.LASF204:
	.string	"program_specified"
.LASF54:
	.string	"_sys_nerr"
.LASF127:
	.string	"__environ"
.LASF213:
	.string	"set_signal_proc_mask"
.LASF8:
	.string	"long int"
.LASF222:
	.string	"set_to_default"
.LASF72:
	.string	"has_arg"
.LASF218:
	.string	"optarg_writable"
.LASF46:
	.string	"_IO_marker"
.LASF249:
	.string	"main"
.LASF145:
	.string	"_ISprint"
.LASF4:
	.string	"signed char"
.LASF69:
	.string	"_IO_FILE"
.LASF122:
	.string	"__timezone"
.LASF242:
	.string	"build_argv"
.LASF48:
	.string	"_IO_wide_data"
.LASF104:
	.string	"si_signo"
.LASF240:
	.string	"__PRETTY_FUNCTION__"
.LASF207:
	.string	"initialize_signals"
.LASF91:
	.string	"_bounds"
.LASF166:
	.string	"quoting_style_args"
.LASF128:
	.string	"environ"
.LASF109:
	.string	"siginfo_t"
.LASF2:
	.string	"unsigned char"
.LASF40:
	.string	"_freeres_list"
.LASF115:
	.string	"sa_mask"
.LASF181:
	.string	"SIGNAL_MODE"
.LASF169:
	.string	"error_message_count"
.LASF111:
	.string	"sa_handler"
.LASF177:
	.string	"_Bool"
.LASF86:
	.string	"_upper"
.LASF132:
	.string	"EXIT_TIMEDOUT"
.LASF227:
	.string	"orig_optind"
.LASF188:
	.string	"block_signals"
.LASF15:
	.string	"char"
.LASF99:
	.string	"_timer"
.LASF223:
	.string	"sig_err"
.LASF248:
	.string	"append_unset_var"
.LASF201:
	.string	"ignore_environment"
.LASF261:
	.string	"_IO_lock_t"
.LASF191:
	.string	"report_signal_handling"
.LASF135:
	.string	"EXIT_ENOENT"
.LASF125:
	.string	"timezone"
.LASF159:
	.string	"shell_escape_always_quoting_style"
.LASF84:
	.string	"si_stime"
.LASF179:
	.string	"vnlen"
.LASF17:
	.string	"_IO_read_ptr"
.LASF224:
	.string	"parse_signal_action_params"
.LASF245:
	.string	"escape_char"
.LASF239:
	.string	"maxargc"
.LASF56:
	.string	"ptrdiff_t"
.LASF105:
	.string	"si_errno"
.LASF49:
	.string	"stdin"
.LASF53:
	.string	"sys_errlist"
.LASF94:
	.string	"_call_addr"
.LASF192:
	.string	"shortopts"
.LASF214:
	.string	"debug_act"
.LASF28:
	.string	"_markers"
.LASF154:
	.string	"program_name"
.LASF149:
	.string	"_ISpunct"
.LASF190:
	.string	"sig_mask_changed"
.LASF189:
	.string	"unblock_signals"
.LASF161:
	.string	"c_maybe_quoting_style"
.LASF88:
	.string	"_pkey"
.LASF133:
	.string	"EXIT_CANCELED"
.LASF129:
	.string	"program_invocation_name"
.LASF37:
	.string	"_offset"
.LASF75:
	.string	"sival_ptr"
.LASF66:
	.string	"optind"
.LASF255:
	.string	"node"
.LASF184:
	.string	"DEFAULT_NOERR"
.LASF164:
	.string	"clocale_quoting_style"
.LASF168:
	.string	"error_print_progname"
.LASF0:
	.string	"long unsigned int"
.LASF251:
	.string	"status"
.LASF31:
	.string	"_flags2"
.LASF19:
	.string	"_IO_read_base"
.LASF70:
	.string	"option"
.LASF44:
	.string	"_unused2"
.LASF176:
	.string	"dev_debug"
.LASF221:
	.string	"ignore_errors"
.LASF90:
	.string	"si_addr_lsb"
.LASF232:
	.string	"nextargv"
.LASF143:
	.string	"_ISxdigit"
.LASF198:
	.string	"argc"
.LASF101:
	.string	"_sigfault"
.LASF32:
	.string	"_old_offset"
.LASF254:
	.string	"infomap"
.LASF199:
	.string	"argv"
.LASF156:
	.string	"shell_quoting_style"
.LASF220:
	.string	"reset_signal_handlers"
.LASF114:
	.string	"__sigaction_handler"
.LASF7:
	.string	"__uint32_t"
.LASF57:
	.string	"long long int"
.LASF212:
	.string	"connect"
.LASF253:
	.string	"program"
.LASF131:
	.string	"Version"
.LASF247:
	.string	"unset_envvars"
.LASF136:
	.string	"exit_failure"
.LASF63:
	.string	"_gl_cxxalias_dummy"
.LASF139:
	.string	"_ISupper"
.LASF82:
	.string	"si_status"
.LASF174:
	.string	"usvars_alloc"
.LASF160:
	.string	"c_quoting_style"
.LASF148:
	.string	"_IScntrl"
.LASF208:
	.string	"list_signal_handling"
.LASF22:
	.string	"_IO_write_end"
.LASF216:
	.string	"block"
.LASF217:
	.string	"opt_sig"
.LASF119:
	.string	"sys_siglist"
.LASF87:
	.string	"_addr_bnd"
.LASF152:
	.string	"GETOPT_VERSION_CHAR"
.LASF23:
	.string	"_IO_buf_base"
.LASF85:
	.string	"_lower"
.LASF200:
	.string	"optc"
.LASF1:
	.string	"unsigned int"
.LASF237:
	.string	"validate_split_str"
.LASF153:
	.string	"version_etc_copyright"
.LASF235:
	.string	"buflen"
.LASF108:
	.string	"_sifields"
.LASF167:
	.string	"quoting_style_vals"
.LASF155:
	.string	"literal_quoting_style"
.LASF107:
	.string	"__pad0"
.LASF123:
	.string	"tzname"
.LASF102:
	.string	"_sigpoll"
.LASF42:
	.string	"__pad5"
.LASF73:
	.string	"flag"
.LASF252:
	.string	"emit_ancillary_info"
.LASF100:
	.string	"_sigchld"
.LASF171:
	.string	"quoting_options"
.LASF16:
	.string	"_flags"
.LASF246:
	.string	"valid_escape_sequence"
.LASF257:
	.string	"lc_messages"
.LASF172:
	.string	"quote_quoting_options"
.LASF13:
	.string	"__clock_t"
.LASF43:
	.string	"_mode"
.LASF38:
	.string	"_codecvt"
.LASF225:
	.string	"set_default"
.LASF138:
	.string	"LOG10_TIMESPEC_HZ"
.LASF210:
	.string	"ignored"
.LASF241:
	.string	"next"
.LASF58:
	.string	"long double"
.LASF93:
	.string	"si_fd"
.LASF45:
	.string	"FILE"
.LASF12:
	.string	"__pid_t"
.LASF98:
	.string	"_kill"
.LASF197:
	.string	"longopts"
.LASF141:
	.string	"_ISalpha"
.LASF68:
	.string	"optopt"
.LASF163:
	.string	"locale_quoting_style"
.LASF64:
	.string	"long long unsigned int"
.LASF244:
	.string	"scan_varname"
.LASF147:
	.string	"_ISblank"
.LASF10:
	.string	"__off_t"
.LASF180:
	.string	"quoting_style"
.LASF183:
	.string	"DEFAULT"
.LASF150:
	.string	"_ISalnum"
.LASF130:
	.string	"program_invocation_short_name"
.LASF81:
	.string	"si_sigval"
.LASF79:
	.string	"si_tid"
.LASF263:
	.string	"emit_mandatory_arg_note"
.LASF41:
	.string	"_freeres_buf"
.LASF62:
	.string	"sigset_t"
.LASF144:
	.string	"_ISspace"
.LASF215:
	.string	"parse_block_signal_params"
.LASF206:
	.string	"dummy_environ"
.LASF67:
	.string	"opterr"
.LASF260:
	.string	"/root/coreutils"
.LASF14:
	.string	"__time_t"
.LASF113:
	.string	"sigaction"
.LASF243:
	.string	"extract_varname"
.LASF178:
	.string	"varname"
.LASF26:
	.string	"_IO_backup_base"
.LASF35:
	.string	"_shortbuf"
.LASF116:
	.string	"sa_flags"
.LASF234:
	.string	"dest"
.LASF157:
	.string	"shell_always_quoting_style"
.LASF11:
	.string	"__off64_t"
.LASF259:
	.string	"src/env.c"
.LASF80:
	.string	"si_overrun"
.LASF194:
	.string	"IGNORE_SIGNAL_OPTION"
.LASF74:
	.string	"sival_int"
.LASF162:
	.string	"escape_quoting_style"
.LASF24:
	.string	"_IO_buf_end"
.LASF78:
	.string	"si_uid"
.LASF95:
	.string	"_syscall"
.LASF71:
	.string	"name"
.LASF140:
	.string	"_ISlower"
.LASF256:
	.string	"map_prog"
.LASF173:
	.string	"usvars"
.LASF51:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF250:
	.string	"usage"
.LASF211:
	.string	"blocked"
.LASF158:
	.string	"shell_escape_quoting_style"
.LASF203:
	.string	"newdir"
.LASF34:
	.string	"_vtable_offset"
.LASF55:
	.string	"_sys_errlist"
.LASF110:
	.string	"__sighandler_t"
.LASF97:
	.string	"_pad"
.LASF186:
	.string	"IGNORE_NOERR"
.LASF60:
	.string	"__val"
.LASF137:
	.string	"TIMESPEC_HZ"
.LASF89:
	.string	"si_addr"
.LASF103:
	.string	"_sigsys"
.LASF121:
	.string	"__daylight"
.LASF209:
	.string	"signame"
.LASF76:
	.string	"__sigval_t"
.LASF9:
	.string	"__uid_t"
.LASF112:
	.string	"sa_sigaction"
.LASF134:
	.string	"EXIT_CANNOT_INVOKE"
.LASF18:
	.string	"_IO_read_end"
.LASF126:
	.string	"getdate_err"
.LASF262:
	.string	"sigval"
.LASF30:
	.string	"_fileno"
.LASF77:
	.string	"si_pid"
.LASF39:
	.string	"_wide_data"
.LASF228:
	.string	"orig_argc"
.LASF65:
	.string	"optarg"
.LASF175:
	.string	"usvars_used"
.LASF142:
	.string	"_ISdigit"
.LASF229:
	.string	"orig_argv"
.LASF3:
	.string	"short unsigned int"
.LASF50:
	.string	"stdout"
.LASF236:
	.string	"newc"
.LASF196:
	.string	"LIST_SIGNAL_HANDLING_OPTION"
.LASF202:
	.string	"opt_nul_terminate_output"
.LASF21:
	.string	"_IO_write_ptr"
.LASF219:
	.string	"signum"
.LASF124:
	.string	"daylight"
.LASF61:
	.string	"__sigset_t"
.LASF165:
	.string	"custom_quoting_style"
.LASF83:
	.string	"si_utime"
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
