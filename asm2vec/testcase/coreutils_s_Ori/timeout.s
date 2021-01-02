	.file	"timeout.c"
	.text
.Ltext0:
	.type	initialize_exit_failure, @function
initialize_exit_failure:
.LFB6:
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
.LFE6:
	.size	initialize_exit_failure, .-initialize_exit_failure
	.section	.rodata
	.align 8
.LC0:
	.string	"\nMandatory arguments to long options are mandatory for short options too.\n"
	.text
	.type	emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
.LFB36:
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
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.local	timed_out
	.comm	timed_out,4,4
	.data
	.align 4
	.type	term_signal, @object
	.size	term_signal, 4
term_signal:
	.long	15
	.local	monitored_pid
	.comm	monitored_pid,4,4
	.local	kill_after
	.comm	kill_after,8,8
	.local	foreground
	.comm	foreground,1,1
	.local	preserve_status
	.comm	preserve_status,1,1
	.local	verbose
	.comm	verbose,1,1
	.local	command
	.comm	command,8,8
	.section	.rodata
.LC19:
	.string	"kill-after"
.LC20:
	.string	"signal"
.LC21:
	.string	"verbose"
.LC22:
	.string	"foreground"
.LC23:
	.string	"preserve-status"
.LC24:
	.string	"help"
.LC25:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 256
long_options:
	.quad	.LC19
	.long	1
	.zero	4
	.quad	0
	.long	107
	.zero	4
	.quad	.LC20
	.long	1
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC25
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
.LC26:
	.string	"warning: timer_settime"
.LC27:
	.string	"warning: timer_create"
	.text
	.type	settimeout, @function
settimeout:
.LFB46:
	.file 2 "src/timeout.c"
	.loc 2 115 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movsd	%xmm0, -104(%rbp)
	movl	%edi, %eax
	movb	%al, -108(%rbp)
	.loc 2 115 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 120 24
	movq	-104(%rbp), %rax
	movq	%rax, %xmm0
	call	dtotimespec@PLT
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 2 121 21
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 2 123 7
	leaq	-88(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	timer_create@PLT
	.loc 2 123 6
	testl	%eax, %eax
	jne	.L15
	.loc 2 125 11
	movq	-88(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	timer_settime@PLT
	.loc 2 125 10
	testl	%eax, %eax
	je	.L28
	.loc 2 129 14
	cmpb	$0, -108(%rbp)
	je	.L18
	.loc 2 130 30
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 130 23
	call	__errno_location@PLT
	.loc 2 130 13
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L18:
	.loc 2 131 11
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	timer_delete@PLT
	jmp	.L19
.L15:
	.loc 2 134 11
	cmpb	$0, -108(%rbp)
	je	.L19
	.loc 2 134 20 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 134 17 discriminator 1
	cmpl	$38, %eax
	je	.L19
	.loc 2 135 22
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 135 15
	call	__errno_location@PLT
	.loc 2 135 5
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L19:
	.loc 2 168 6
	movsd	-104(%rbp), %xmm0
	comisd	.LC28(%rip), %xmm0
	jb	.L27
	.loc 2 169 13
	movl	$-1, -96(%rbp)
	jmp	.L22
.L27:
.LBB2:
	.loc 2 172 20
	movsd	-104(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -92(%rbp)
	.loc 2 173 50
	movl	-92(%rbp), %eax
	testq	%rax, %rax
	js	.L23
	cvtsi2sdq	%rax, %xmm0
	jmp	.L24
.L23:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L24:
	movsd	-104(%rbp), %xmm1
	comisd	%xmm0, %xmm1
	seta	%al
	movzbl	%al, %edx
	.loc 2 173 15
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -96(%rbp)
.L22:
.LBE2:
	.loc 2 175 3
	movl	-96(%rbp), %eax
	movl	%eax, %edi
	call	alarm@PLT
	jmp	.L14
.L28:
	.loc 2 126 9
	nop
.L14:
	.loc 2 176 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	settimeout, .-settimeout
	.type	send_sig, @function
send_sig:
.LFB47:
	.loc 2 182 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc 2 190 6
	cmpl	$0, -4(%rbp)
	jne	.L30
	.loc 2 191 5
	movl	-8(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	signal@PLT
.L30:
	.loc 2 192 10
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	kill@PLT
	.loc 2 193 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	send_sig, .-send_sig
	.type	chld, @function
chld:
.LFB48:
	.loc 2 199 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 200 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	chld, .-chld
	.section	.rodata
.LC30:
	.string	"%d"
	.align 8
.LC31:
	.string	"sending signal %s to command %s"
	.text
	.type	cleanup, @function
cleanup:
.LFB49:
	.loc 2 205 1
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
	movl	%edi, -68(%rbp)
	.loc 2 205 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 206 6
	cmpl	$14, -68(%rbp)
	jne	.L34
	.loc 2 208 17
	movl	$1, timed_out(%rip)
	.loc 2 209 11
	movl	term_signal(%rip), %eax
	movl	%eax, -68(%rbp)
.L34:
	.loc 2 211 7
	movl	monitored_pid(%rip), %eax
	.loc 2 211 6
	testl	%eax, %eax
	je	.L35
	.loc 2 213 11
	movsd	kill_after(%rip), %xmm0
	.loc 2 213 10
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L42
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	je	.L36
.L42:
.LBB3:
	.loc 2 215 29
	call	__errno_location@PLT
	.loc 2 215 15
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	.loc 2 217 23
	movl	$9, term_signal(%rip)
	.loc 2 218 11
	movq	kill_after(%rip), %rax
	movl	$0, %edi
	movq	%rax, %xmm0
	call	settimeout
	.loc 2 219 22
	pxor	%xmm0, %xmm0
	movsd	%xmm0, kill_after(%rip)
	.loc 2 220 11
	call	__errno_location@PLT
	.loc 2 220 17
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
.L36:
.LBE3:
	.loc 2 226 11
	movzbl	verbose(%rip), %eax
	.loc 2 226 10
	testb	%al, %al
	je	.L38
.LBB4:
	.loc 2 229 15
	leaq	-48(%rbp), %rdx
	movl	-68(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	sig2str@PLT
	.loc 2 229 14
	testl	%eax, %eax
	je	.L39
	.loc 2 230 13
	movl	-68(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %ecx
	leaq	.LC30(%rip), %rdx
	movl	$19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
.L39:
	.loc 2 231 11
	movq	command(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 231 24
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 231 11
	leaq	-48(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L38:
.LBE4:
	.loc 2 234 7
	movl	monitored_pid(%rip), %eax
	movl	-68(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	send_sig
	.loc 2 238 11
	movzbl	foreground(%rip), %eax
	xorl	$1, %eax
	.loc 2 238 10
	testb	%al, %al
	je	.L43
	.loc 2 240 11
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	send_sig
	.loc 2 241 14
	cmpl	$9, -68(%rbp)
	je	.L43
	.loc 2 241 30 discriminator 1
	cmpl	$18, -68(%rbp)
	je	.L43
	.loc 2 243 15
	movl	monitored_pid(%rip), %eax
	movl	$18, %esi
	movl	%eax, %edi
	call	send_sig
	.loc 2 244 15
	movl	$18, %esi
	movl	$0, %edi
	call	send_sig
	.loc 2 250 1
	jmp	.L43
.L35:
	.loc 2 249 5
	movl	-68(%rbp), %eax
	subl	$-128, %eax
	movl	%eax, %edi
	call	_exit@PLT
.L43:
	.loc 2 250 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L41
	call	__stack_chk_fail@PLT
.L41:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	cleanup, .-cleanup
	.section	.rodata
	.align 8
.LC32:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC33:
	.string	"Usage: %s [OPTION] DURATION COMMAND [ARG]...\n  or:  %s [OPTION]\n"
	.align 8
.LC34:
	.string	"Start COMMAND, and kill it if still running after DURATION.\n"
	.align 8
.LC35:
	.ascii	"      --preserve-status\n                 exit with the same"
	.ascii	" status as COMMAND, even when the\n                   comman"
	.ascii	"d times out\n      --foreground\n                 when not r"
	.ascii	"unning timeout directly from a shell prompt,\n              "
	.ascii	"     allow COMMAND to read from the TTY and get TTY signals;"
	.ascii	"\n                   in this mode, children of COMMAND will "
	.ascii	"not be timed out\n  -k, --kill-after=DURATION\n             "
	.ascii	"    also send a KILL signal if COMMAND is still running\n   "
	.ascii	"    "
	.string	"            this long after the initial signal was sent\n  -s, --signal=SIGNAL\n                 specify the signal to be sent on timeout;\n                   SIGNAL may be a name like 'HUP' or a number;\n                   see 'kill -l' for a list of signals\n"
	.align 8
.LC36:
	.string	"  -v, --verbose  diagnose to stderr any signal sent upon timeout\n"
	.align 8
.LC37:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC38:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC39:
	.string	"\nDURATION is a floating point number with an optional suffix:\n's' for seconds (the default), 'm' for minutes, 'h' for hours or 'd' for days.\nA duration of 0 disables the associated timeout.\n"
	.align 8
.LC40:
	.string	"\nUpon timeout, send the TERM signal to COMMAND, if no other SIGNAL specified.\nThe TERM signal kills any process that does not block or catch that signal.\nIt may be necessary to use the KILL signal, since this signal can't be caught.\n"
	.align 8
.LC41:
	.ascii	"\nEXIT status:\n  124  if COMMAND times out, and --preserve-"
	.ascii	"status is no"
	.string	"t specified\n  125  if the timeout command itself fails\n  126  if COMMAND is found but cannot be invoked\n  127  if COMMAND cannot be found\n  137  if COMMAND (or timeout itself) is sent the KILL (9) signal (128+9)\n  -    the exit status of COMMAND otherwise\n"
.LC42:
	.string	"timeout"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB50:
	.loc 2 254 1
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
	movl	%edi, -20(%rbp)
	.loc 2 255 6
	cmpl	$0, -20(%rbp)
	je	.L45
	.loc 2 256 5
	movq	program_name(%rip), %rbx
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L46
.L45:
	.loc 2 259 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 259 15
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	.loc 2 259 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 263 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 267 7
	call	emit_mandatory_arg_note
	.loc 2 269 7
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 284 7
	movq	stdout(%rip), %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 287 7
	movq	stdout(%rip), %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 288 7
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 290 7
	movq	stdout(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 295 7
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 301 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 311 7
	leaq	.LC42(%rip), %rdi
	call	emit_ancillary_info
.L46:
	.loc 2 313 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE50:
	.size	usage, .-usage
	.type	apply_time_suffix, @function
apply_time_suffix:
.LFB51:
	.loc 2 324 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	.loc 2 327 3
	movsbl	-28(%rbp), %eax
	cmpl	$115, %eax
	je	.L48
	cmpl	$115, %eax
	jg	.L49
	cmpl	$109, %eax
	je	.L50
	cmpl	$109, %eax
	jg	.L49
	cmpl	$104, %eax
	je	.L51
	cmpl	$104, %eax
	jg	.L49
	testl	%eax, %eax
	je	.L48
	cmpl	$100, %eax
	je	.L52
	jmp	.L49
.L48:
	.loc 2 331 18
	movl	$1, -4(%rbp)
	.loc 2 332 7
	jmp	.L53
.L50:
	.loc 2 334 18
	movl	$60, -4(%rbp)
	.loc 2 335 7
	jmp	.L53
.L51:
	.loc 2 337 18
	movl	$3600, -4(%rbp)
	.loc 2 338 7
	jmp	.L53
.L52:
	.loc 2 340 18
	movl	$86400, -4(%rbp)
	.loc 2 341 7
	jmp	.L53
.L49:
	.loc 2 343 14
	movl	$0, %eax
	jmp	.L54
.L53:
	.loc 2 346 6
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1
	cvtsi2sdl	-4(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	.loc 2 348 10
	movl	$1, %eax
.L54:
	.loc 2 349 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	apply_time_suffix, .-apply_time_suffix
	.section	.rodata
.LC43:
	.string	"invalid time interval %s"
	.text
	.type	parse_duration, @function
parse_duration:
.LFB52:
	.loc 2 353 1
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
	movq	%rdi, -56(%rbp)
	.loc 2 353 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 357 10
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	cl_strtod@GOTPCREL(%rip), %rcx
	movq	%rax, %rdi
	call	xstrtod@PLT
	xorl	$1, %eax
	.loc 2 357 6
	testb	%al, %al
	je	.L56
	.loc 2 357 54 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 357 7 discriminator 1
	cmpl	$34, %eax
	jne	.L57
.L56:
	.loc 2 359 15
	movsd	-40(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	setnb	%al
	.loc 2 359 10
	xorl	$1, %eax
	.loc 2 359 7
	testb	%al, %al
	jne	.L57
	.loc 2 361 11
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 361 7
	testb	%al, %al
	je	.L58
	.loc 2 361 23 discriminator 1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	.loc 2 361 18 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 361 15 discriminator 1
	testb	%al, %al
	jne	.L57
.L58:
	.loc 2 363 41
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 363 11
	movsbl	%al, %edx
	leaq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apply_time_suffix
	.loc 2 363 10
	xorl	$1, %eax
	.loc 2 363 7
	testb	%al, %al
	je	.L59
.L57:
	.loc 2 365 7
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 365 20
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	.loc 2 365 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 366 7
	movl	$125, %edi
	call	usage
.L59:
	.loc 2 369 10
	movsd	-40(%rbp), %xmm0
	.loc 2 370 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L61
	call	__stack_chk_fail@PLT
.L61:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	parse_duration, .-parse_duration
	.section	.rodata
.LC44:
	.string	"warning: sigprocmask"
	.text
	.type	unblock_signal, @function
unblock_signal:
.LFB53:
	.loc 2 374 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movl	%edi, -164(%rbp)
	.loc 2 374 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 376 3
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	sigemptyset@PLT
	.loc 2 377 3
	movl	-164(%rbp), %edx
	leaq	-160(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sigaddset@PLT
	.loc 2 378 7
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	sigprocmask@PLT
	.loc 2 378 6
	testl	%eax, %eax
	je	.L65
	.loc 2 379 22
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 379 15
	call	__errno_location@PLT
	.loc 2 379 5
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L65:
	.loc 2 380 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L64
	call	__stack_chk_fail@PLT
.L64:
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	unblock_signal, .-unblock_signal
	.type	install_sigchld, @function
install_sigchld:
.LFB54:
	.loc 2 384 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	.loc 2 384 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 386 3
	leaq	-160(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	sigemptyset@PLT
	.loc 2 387 17
	leaq	chld(%rip), %rax
	movq	%rax, -160(%rbp)
	.loc 2 388 15
	movl	$268435456, -24(%rbp)
	.loc 2 391 3
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$17, %edi
	call	sigaction@PLT
	.loc 2 395 3
	movl	$17, %edi
	call	unblock_signal
	.loc 2 396 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L67
	call	__stack_chk_fail@PLT
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	install_sigchld, .-install_sigchld
	.type	install_cleanup, @function
install_cleanup:
.LFB55:
	.loc 2 400 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movl	%edi, -164(%rbp)
	.loc 2 400 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 402 3
	leaq	-160(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	sigemptyset@PLT
	.loc 2 403 17
	leaq	cleanup(%rip), %rax
	movq	%rax, -160(%rbp)
	.loc 2 404 15
	movl	$268435456, -24(%rbp)
	.loc 2 407 3
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$14, %edi
	call	sigaction@PLT
	.loc 2 408 3
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$2, %edi
	call	sigaction@PLT
	.loc 2 409 3
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$3, %edi
	call	sigaction@PLT
	.loc 2 410 3
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	sigaction@PLT
	.loc 2 411 3
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$15, %edi
	call	sigaction@PLT
	.loc 2 412 3
	leaq	-160(%rbp), %rcx
	movl	-164(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	sigaction@PLT
	.loc 2 413 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L69
	call	__stack_chk_fail@PLT
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	install_cleanup, .-install_cleanup
	.type	block_cleanup_and_chld, @function
block_cleanup_and_chld:
.LFB56:
	.loc 2 422 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	.loc 2 422 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 424 3
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	sigemptyset@PLT
	.loc 2 426 3
	leaq	-160(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
	call	sigaddset@PLT
	.loc 2 427 3
	leaq	-160(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	sigaddset@PLT
	.loc 2 428 3
	leaq	-160(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	sigaddset@PLT
	.loc 2 429 3
	leaq	-160(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	sigaddset@PLT
	.loc 2 430 3
	leaq	-160(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	sigaddset@PLT
	.loc 2 431 3
	movl	-164(%rbp), %edx
	leaq	-160(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sigaddset@PLT
	.loc 2 433 3
	leaq	-160(%rbp), %rax
	movl	$17, %esi
	movq	%rax, %rdi
	call	sigaddset@PLT
	.loc 2 435 7
	movq	-176(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	sigprocmask@PLT
	.loc 2 435 6
	testl	%eax, %eax
	je	.L73
	.loc 2 436 22
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 436 15
	call	__errno_location@PLT
	.loc 2 436 5
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L73:
	.loc 2 437 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L72
	call	__stack_chk_fail@PLT
.L72:
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	block_cleanup_and_chld, .-block_cleanup_and_chld
	.section	.rodata
	.align 8
.LC45:
	.string	"warning: disabling core dumps failed"
	.text
	.type	disable_core_dumps, @function
disable_core_dumps:
.LFB57:
	.loc 2 443 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 2 445 7
	movl	$0, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	prctl@PLT
	.loc 2 445 6
	testl	%eax, %eax
	jne	.L75
	.loc 2 446 12
	movl	$1, %eax
	jmp	.L76
.L75:
	.loc 2 458 20
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 458 13
	call	__errno_location@PLT
	.loc 2 458 3
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 459 10
	movl	$0, %eax
.L76:
	.loc 2 460 1
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	disable_core_dumps, .-disable_core_dumps
	.section	.rodata
.LC46:
	.string	"/usr/local/share/locale"
.LC47:
	.string	"Padraig Brady"
.LC48:
	.string	"+k:s:v"
.LC49:
	.string	"fork system call failed"
.LC50:
	.string	"failed to run command %s"
.LC51:
	.string	"error waiting for command"
	.align 8
.LC52:
	.string	"the monitored command dumped core"
	.align 8
.LC53:
	.string	"unknown status from command (%d)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB58:
	.loc 2 464 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -212(%rbp)
	movq	%rsi, -224(%rbp)
	.loc 2 464 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 470 3
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 471 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 472 3
	leaq	.LC46(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 473 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 475 3
	movl	$125, %edi
	call	initialize_exit_failure
	.loc 2 476 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 478 9
	jmp	.L78
.L90:
	.loc 2 480 7
	cmpl	$129, -200(%rbp)
	jg	.L79
	cmpl	$107, -200(%rbp)
	jge	.L80
	cmpl	$-131, -200(%rbp)
	je	.L81
	cmpl	$-130, -200(%rbp)
	je	.L82
	jmp	.L79
.L80:
	movl	-200(%rbp), %eax
	subl	$107, %eax
	cmpl	$22, %eax
	ja	.L79
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L84(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L84(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L84:
	.long	.L88-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L87-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L86-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L79-.L84
	.long	.L85-.L84
	.long	.L83-.L84
	.text
.L88:
	.loc 2 483 24
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	parse_duration
	movq	%xmm0, %rax
	.loc 2 483 22
	movq	%rax, kill_after(%rip)
	.loc 2 484 11
	jmp	.L78
.L87:
	.loc 2 487 25
	movq	optarg(%rip), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	operand2sig@PLT
	.loc 2 487 23
	movl	%eax, term_signal(%rip)
	.loc 2 488 27
	movl	term_signal(%rip), %eax
	.loc 2 488 14
	cmpl	$-1, %eax
	jne	.L78
	.loc 2 489 13
	movl	$125, %edi
	call	usage
.L86:
	.loc 2 493 19
	movb	$1, verbose(%rip)
	.loc 2 494 11
	jmp	.L78
.L85:
	.loc 2 497 22
	movb	$1, foreground(%rip)
	.loc 2 498 11
	jmp	.L78
.L83:
	.loc 2 501 27
	movb	$1, preserve_status(%rip)
	.loc 2 502 11
	jmp	.L78
.L82:
	.loc 2 504 9
	movl	$0, %edi
	call	usage
.L81:
	.loc 2 506 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC47(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L79:
	.loc 2 509 11
	movl	$125, %edi
	call	usage
.L78:
	.loc 2 478 15
	movq	-224(%rbp), %rsi
	movl	-212(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -200(%rbp)
	.loc 2 478 9
	cmpl	$-1, -200(%rbp)
	jne	.L90
	.loc 2 514 12
	movl	optind(%rip), %eax
	movl	-212(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 514 6
	cmpl	$1, %eax
	jg	.L91
	.loc 2 515 5
	movl	$125, %edi
	call	usage
.L91:
	.loc 2 517 40
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 2 517 33
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 517 13
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	parse_duration
	movq	%xmm0, %rax
	movq	%rax, -184(%rbp)
	.loc 2 519 8
	movl	optind(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -224(%rbp)
	.loc 2 520 17
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 520 11
	movq	%rax, command(%rip)
	.loc 2 526 7
	movzbl	foreground(%rip), %eax
	xorl	$1, %eax
	.loc 2 526 6
	testb	%al, %al
	je	.L92
	.loc 2 527 5
	movl	$0, %esi
	movl	$0, %edi
	call	setpgid@PLT
.L92:
	.loc 2 531 3
	movl	term_signal(%rip), %eax
	movl	%eax, %edi
	call	install_cleanup
	.loc 2 532 3
	movl	$1, %esi
	movl	$21, %edi
	call	signal@PLT
	.loc 2 533 3
	movl	$1, %esi
	movl	$22, %edi
	call	signal@PLT
	.loc 2 534 3
	call	install_sigchld
	.loc 2 536 19
	call	fork@PLT
	.loc 2 536 17
	movl	%eax, monitored_pid(%rip)
	.loc 2 537 21
	movl	monitored_pid(%rip), %eax
	.loc 2 537 6
	cmpl	$-1, %eax
	jne	.L93
	.loc 2 539 24
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 539 17
	call	__errno_location@PLT
	.loc 2 539 7
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 540 14
	movl	$125, %eax
	jmp	.L107
.L93:
	.loc 2 542 26
	movl	monitored_pid(%rip), %eax
	.loc 2 542 11
	testl	%eax, %eax
	jne	.L95
.LBB5:
	.loc 2 545 7
	movl	$0, %esi
	movl	$21, %edi
	call	signal@PLT
	.loc 2 546 7
	movl	$0, %esi
	movl	$22, %edi
	call	signal@PLT
	.loc 2 548 7
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	execvp@PLT
	.loc 2 551 25
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 551 55
	cmpl	$2, %eax
	jne	.L96
	.loc 2 551 55 is_stmt 0 discriminator 1
	movl	$127, %eax
	jmp	.L97
.L96:
	.loc 2 551 55 discriminator 2
	movl	$126, %eax
.L97:
	.loc 2 551 11 is_stmt 1 discriminator 4
	movl	%eax, -188(%rbp)
	.loc 2 552 7 discriminator 4
	movq	command(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	.loc 2 552 24 discriminator 4
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 552 17 discriminator 4
	call	__errno_location@PLT
	.loc 2 552 7 discriminator 4
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 553 14 discriminator 4
	movl	-188(%rbp), %eax
	jmp	.L107
.L95:
.LBE5:
.LBB6:
	.loc 2 562 7
	movl	$14, %edi
	call	unblock_signal
	.loc 2 564 7
	movq	-184(%rbp), %rax
	movl	$1, %edi
	movq	%rax, %xmm0
	call	settimeout
	.loc 2 569 7
	movl	term_signal(%rip), %eax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	block_cleanup_and_chld
	.loc 2 571 13
	jmp	.L98
.L99:
	.loc 2 572 9
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	sigsuspend@PLT
.L98:
	.loc 2 571 29
	movl	monitored_pid(%rip), %eax
	leaq	-204(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	waitpid@PLT
	movl	%eax, -196(%rbp)
	.loc 2 571 13
	cmpl	$0, -196(%rbp)
	je	.L99
	.loc 2 574 10
	cmpl	$0, -196(%rbp)
	jns	.L100
	.loc 2 577 28
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 577 21
	call	__errno_location@PLT
	.loc 2 577 11
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 578 18
	movl	$125, -204(%rbp)
	jmp	.L101
.L100:
	.loc 2 582 15
	movl	-204(%rbp), %eax
	andl	$127, %eax
	.loc 2 582 14
	testl	%eax, %eax
	jne	.L102
	.loc 2 583 22
	movl	-204(%rbp), %eax
	sarl	$8, %eax
	movzbl	%al, %eax
	.loc 2 583 20
	movl	%eax, -204(%rbp)
	jmp	.L101
.L102:
	.loc 2 584 20
	movl	-204(%rbp), %eax
	andl	$127, %eax
	addl	$1, %eax
	sarb	%al
	.loc 2 584 19
	testb	%al, %al
	jle	.L103
.LBB7:
	.loc 2 586 25
	movl	-204(%rbp), %eax
	.loc 2 586 19
	andl	$127, %eax
	movl	%eax, -192(%rbp)
	.loc 2 587 19
	movl	-204(%rbp), %eax
	andl	$128, %eax
	.loc 2 587 18
	testl	%eax, %eax
	je	.L104
	.loc 2 588 30
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	.loc 2 588 17
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L104:
	.loc 2 589 19
	movl	timed_out(%rip), %eax
	.loc 2 589 18
	testl	%eax, %eax
	jne	.L105
	.loc 2 589 33 discriminator 1
	call	disable_core_dumps
	.loc 2 589 30 discriminator 1
	testb	%al, %al
	je	.L105
	.loc 2 592 19
	movl	-192(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	signal@PLT
	.loc 2 593 19
	movl	-192(%rbp), %eax
	movl	%eax, %edi
	call	unblock_signal
	.loc 2 594 19
	movl	-192(%rbp), %eax
	movl	%eax, %edi
	call	raise@PLT
.L105:
	.loc 2 596 28
	movl	-192(%rbp), %eax
	subl	$-128, %eax
	.loc 2 596 22
	movl	%eax, -204(%rbp)
.LBE7:
	jmp	.L101
.L103:
	.loc 2 601 15
	movl	-204(%rbp), %ebx
	.loc 2 601 28
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	.loc 2 601 15
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 602 22
	movl	$1, -204(%rbp)
.L101:
	.loc 2 606 11
	movl	timed_out(%rip), %eax
	.loc 2 606 10
	testl	%eax, %eax
	je	.L106
	.loc 2 606 24 discriminator 1
	movzbl	preserve_status(%rip), %eax
	xorl	$1, %eax
	.loc 2 606 21 discriminator 1
	testb	%al, %al
	je	.L106
	.loc 2 607 16
	movl	$124, -204(%rbp)
.L106:
	.loc 2 608 14
	movl	-204(%rbp), %eax
.L107:
.LBE6:
	.loc 2 610 1 discriminator 2
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L108
	.loc 2 610 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L108:
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC28:
	.long	4292870144
	.long	1106247679
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 11 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 17 "./lib/sys/select.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h"
	.file 20 "/usr/include/signal.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/sigaction.h"
	.file 22 "/usr/include/x86_64-linux-gnu/bits/types/struct_itimerspec.h"
	.file 23 "/usr/include/time.h"
	.file 24 "/usr/include/unistd.h"
	.file 25 "/usr/include/errno.h"
	.file 26 "src/version.h"
	.file 27 "./lib/exitfail.h"
	.file 28 "./lib/timespec.h"
	.file 29 "./lib/version-etc.h"
	.file 30 "./lib/progname.h"
	.file 31 "./lib/quotearg.h"
	.file 32 "./lib/error.h"
	.file 33 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10ca
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF222
	.byte	0xc
	.long	.LASF223
	.long	.LASF224
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x3
	.byte	0x24
	.byte	0xe
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.long	0x3f
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x5
	.long	0x3f
	.uleb128 0x2
	.long	.LASF1
	.byte	0x3
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	0x57
	.uleb128 0x2
	.long	.LASF3
	.byte	0x3
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0x8
	.long	.LASF25
	.byte	0x20
	.byte	0x4
	.byte	0x32
	.byte	0x8
	.long	0xbd
	.uleb128 0x9
	.long	.LASF5
	.byte	0x4
	.byte	0x34
	.byte	0xf
	.long	0xc2
	.byte	0
	.uleb128 0x9
	.long	.LASF6
	.byte	0x4
	.byte	0x37
	.byte	0x7
	.long	0x57
	.byte	0x8
	.uleb128 0x9
	.long	.LASF7
	.byte	0x4
	.byte	0x38
	.byte	0x8
	.long	0xcd
	.byte	0x10
	.uleb128 0xa
	.string	"val"
	.byte	0x4
	.byte	0x39
	.byte	0x7
	.long	0x57
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	0x7b
	.uleb128 0x3
	.byte	0x8
	.long	0x46
	.uleb128 0x5
	.long	0xc2
	.uleb128 0x3
	.byte	0x8
	.long	0x57
	.uleb128 0xb
	.long	.LASF14
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0xdf
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0xc
	.byte	0x8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF13
	.uleb128 0xb
	.long	.LASF15
	.byte	0x6
	.byte	0x2a
	.byte	0x16
	.long	0xe6
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0xb
	.long	.LASF17
	.byte	0x6
	.byte	0x92
	.byte	0x19
	.long	0xe6
	.uleb128 0xb
	.long	.LASF18
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x117
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x117
	.uleb128 0xb
	.long	.LASF20
	.byte	0x6
	.byte	0x9a
	.byte	0x19
	.long	0x57
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.byte	0x9c
	.byte	0x1b
	.long	0x117
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x117
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.byte	0xab
	.byte	0x1b
	.long	0xed
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.byte	0xc4
	.byte	0x21
	.long	0x117
	.uleb128 0x8
	.long	.LASF26
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x305
	.uleb128 0x9
	.long	.LASF27
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF28
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF32
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF33
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF34
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF35
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF36
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF37
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF38
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF39
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x31e
	.byte	0x60
	.uleb128 0x9
	.long	.LASF40
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x324
	.byte	0x68
	.uleb128 0x9
	.long	.LASF41
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF42
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF43
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x12a
	.byte	0x78
	.uleb128 0x9
	.long	.LASF44
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0xf6
	.byte	0x80
	.uleb128 0x9
	.long	.LASF45
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0xfd
	.byte	0x82
	.uleb128 0x9
	.long	.LASF46
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x32a
	.byte	0x83
	.uleb128 0x9
	.long	.LASF47
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x33a
	.byte	0x88
	.uleb128 0x9
	.long	.LASF48
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x136
	.byte	0x90
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x345
	.byte	0x98
	.uleb128 0x9
	.long	.LASF50
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x350
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF51
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x324
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF52
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0xed
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF53
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0xd3
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF54
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF55
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x356
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF56
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x17e
	.uleb128 0xd
	.long	.LASF225
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF57
	.uleb128 0x3
	.byte	0x8
	.long	0x319
	.uleb128 0x3
	.byte	0x8
	.long	0x17e
	.uleb128 0xf
	.long	0x3f
	.long	0x33a
	.uleb128 0x10
	.long	0xdf
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x311
	.uleb128 0xe
	.long	.LASF58
	.uleb128 0x3
	.byte	0x8
	.long	0x340
	.uleb128 0xe
	.long	.LASF59
	.uleb128 0x3
	.byte	0x8
	.long	0x34b
	.uleb128 0xf
	.long	0x3f
	.long	0x366
	.uleb128 0x10
	.long	0xdf
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x372
	.uleb128 0x3
	.byte	0x8
	.long	0x305
	.uleb128 0x2
	.long	.LASF61
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x372
	.uleb128 0x2
	.long	.LASF62
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x372
	.uleb128 0x2
	.long	.LASF63
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	0xc8
	.long	0x3a7
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x39c
	.uleb128 0x2
	.long	.LASF64
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x3a7
	.uleb128 0x2
	.long	.LASF65
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF66
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x3a7
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF67
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF68
	.uleb128 0xb
	.long	.LASF69
	.byte	0xb
	.byte	0x61
	.byte	0x11
	.long	0x142
	.uleb128 0xb
	.long	.LASF70
	.byte	0xc
	.byte	0x7
	.byte	0x12
	.long	0x15a
	.uleb128 0xb
	.long	.LASF71
	.byte	0xd
	.byte	0x7
	.byte	0x13
	.long	0x166
	.uleb128 0x12
	.byte	0x80
	.byte	0xe
	.byte	0x5
	.byte	0x9
	.long	0x419
	.uleb128 0x9
	.long	.LASF72
	.byte	0xe
	.byte	0x7
	.byte	0x15
	.long	0x419
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xdf
	.long	0x429
	.uleb128 0x10
	.long	0xdf
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.long	.LASF73
	.byte	0xe
	.byte	0x8
	.byte	0x3
	.long	0x402
	.uleb128 0xb
	.long	.LASF74
	.byte	0xf
	.byte	0x7
	.byte	0x14
	.long	0x429
	.uleb128 0x8
	.long	.LASF75
	.byte	0x10
	.byte	0x10
	.byte	0xa
	.byte	0x8
	.long	0x469
	.uleb128 0x9
	.long	.LASF76
	.byte	0x10
	.byte	0xc
	.byte	0xc
	.long	0x15a
	.byte	0
	.uleb128 0x9
	.long	.LASF77
	.byte	0x10
	.byte	0x10
	.byte	0x15
	.long	0x172
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	.LASF78
	.byte	0x11
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF79
	.uleb128 0x14
	.long	.LASF226
	.byte	0x8
	.byte	0x12
	.byte	0x18
	.byte	0x7
	.long	0x4a3
	.uleb128 0x15
	.long	.LASF80
	.byte	0x12
	.byte	0x1a
	.byte	0x7
	.long	0x57
	.uleb128 0x15
	.long	.LASF81
	.byte	0x12
	.byte	0x1b
	.byte	0x9
	.long	0xed
	.byte	0
	.uleb128 0xb
	.long	.LASF82
	.byte	0x12
	.byte	0x1e
	.byte	0x16
	.long	0x47d
	.uleb128 0x12
	.byte	0x8
	.byte	0x13
	.byte	0x38
	.byte	0x2
	.long	0x4d3
	.uleb128 0x9
	.long	.LASF83
	.byte	0x13
	.byte	0x3a
	.byte	0xe
	.long	0x142
	.byte	0
	.uleb128 0x9
	.long	.LASF84
	.byte	0x13
	.byte	0x3b
	.byte	0xe
	.long	0x11e
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0x13
	.byte	0x3f
	.byte	0x2
	.long	0x504
	.uleb128 0x9
	.long	.LASF85
	.byte	0x13
	.byte	0x41
	.byte	0xa
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF86
	.byte	0x13
	.byte	0x42
	.byte	0xa
	.long	0x57
	.byte	0x4
	.uleb128 0x9
	.long	.LASF87
	.byte	0x13
	.byte	0x43
	.byte	0x11
	.long	0x4a3
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0x13
	.byte	0x47
	.byte	0x2
	.long	0x535
	.uleb128 0x9
	.long	.LASF83
	.byte	0x13
	.byte	0x49
	.byte	0xe
	.long	0x142
	.byte	0
	.uleb128 0x9
	.long	.LASF84
	.byte	0x13
	.byte	0x4a
	.byte	0xe
	.long	0x11e
	.byte	0x4
	.uleb128 0x9
	.long	.LASF87
	.byte	0x13
	.byte	0x4b
	.byte	0x11
	.long	0x4a3
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.byte	0x20
	.byte	0x13
	.byte	0x4f
	.byte	0x2
	.long	0x580
	.uleb128 0x9
	.long	.LASF83
	.byte	0x13
	.byte	0x51
	.byte	0xe
	.long	0x142
	.byte	0
	.uleb128 0x9
	.long	.LASF84
	.byte	0x13
	.byte	0x52
	.byte	0xe
	.long	0x11e
	.byte	0x4
	.uleb128 0x9
	.long	.LASF88
	.byte	0x13
	.byte	0x53
	.byte	0xa
	.long	0x57
	.byte	0x8
	.uleb128 0x9
	.long	.LASF89
	.byte	0x13
	.byte	0x54
	.byte	0x13
	.long	0x14e
	.byte	0x10
	.uleb128 0x9
	.long	.LASF90
	.byte	0x13
	.byte	0x55
	.byte	0x13
	.long	0x14e
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0x13
	.byte	0x61
	.byte	0x3
	.long	0x5a4
	.uleb128 0x9
	.long	.LASF91
	.byte	0x13
	.byte	0x63
	.byte	0xd
	.long	0xed
	.byte	0
	.uleb128 0x9
	.long	.LASF92
	.byte	0x13
	.byte	0x64
	.byte	0xd
	.long	0xed
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.byte	0x10
	.byte	0x13
	.byte	0x5e
	.byte	0x6
	.long	0x5c6
	.uleb128 0x15
	.long	.LASF93
	.byte	0x13
	.byte	0x65
	.byte	0x7
	.long	0x580
	.uleb128 0x15
	.long	.LASF94
	.byte	0x13
	.byte	0x67
	.byte	0xe
	.long	0x10b
	.byte	0
	.uleb128 0x12
	.byte	0x20
	.byte	0x13
	.byte	0x59
	.byte	0x2
	.long	0x5f7
	.uleb128 0x9
	.long	.LASF95
	.byte	0x13
	.byte	0x5b
	.byte	0xc
	.long	0xed
	.byte	0
	.uleb128 0x9
	.long	.LASF96
	.byte	0x13
	.byte	0x5d
	.byte	0x10
	.long	0x104
	.byte	0x8
	.uleb128 0x9
	.long	.LASF97
	.byte	0x13
	.byte	0x68
	.byte	0xa
	.long	0x5a4
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0x13
	.byte	0x6c
	.byte	0x2
	.long	0x61b
	.uleb128 0x9
	.long	.LASF98
	.byte	0x13
	.byte	0x6e
	.byte	0x15
	.long	0x117
	.byte	0
	.uleb128 0x9
	.long	.LASF99
	.byte	0x13
	.byte	0x6f
	.byte	0xa
	.long	0x57
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0x13
	.byte	0x74
	.byte	0x2
	.long	0x64c
	.uleb128 0x9
	.long	.LASF100
	.byte	0x13
	.byte	0x76
	.byte	0xc
	.long	0xed
	.byte	0
	.uleb128 0x9
	.long	.LASF101
	.byte	0x13
	.byte	0x77
	.byte	0xa
	.long	0x57
	.byte	0x8
	.uleb128 0x9
	.long	.LASF102
	.byte	0x13
	.byte	0x78
	.byte	0x13
	.long	0xe6
	.byte	0xc
	.byte	0
	.uleb128 0x16
	.byte	0x70
	.byte	0x13
	.byte	0x33
	.byte	0x5
	.long	0x6b6
	.uleb128 0x15
	.long	.LASF103
	.byte	0x13
	.byte	0x35
	.byte	0x6
	.long	0x6b6
	.uleb128 0x15
	.long	.LASF104
	.byte	0x13
	.byte	0x3c
	.byte	0x6
	.long	0x4af
	.uleb128 0x15
	.long	.LASF105
	.byte	0x13
	.byte	0x44
	.byte	0x6
	.long	0x4d3
	.uleb128 0x17
	.string	"_rt"
	.byte	0x13
	.byte	0x4c
	.byte	0x6
	.long	0x504
	.uleb128 0x15
	.long	.LASF106
	.byte	0x13
	.byte	0x56
	.byte	0x6
	.long	0x535
	.uleb128 0x15
	.long	.LASF107
	.byte	0x13
	.byte	0x69
	.byte	0x6
	.long	0x5c6
	.uleb128 0x15
	.long	.LASF108
	.byte	0x13
	.byte	0x70
	.byte	0x6
	.long	0x5f7
	.uleb128 0x15
	.long	.LASF109
	.byte	0x13
	.byte	0x79
	.byte	0x6
	.long	0x61b
	.byte	0
	.uleb128 0xf
	.long	0x57
	.long	0x6c6
	.uleb128 0x10
	.long	0xdf
	.byte	0x1b
	.byte	0
	.uleb128 0x12
	.byte	0x80
	.byte	0x13
	.byte	0x24
	.byte	0x9
	.long	0x711
	.uleb128 0x9
	.long	.LASF110
	.byte	0x13
	.byte	0x26
	.byte	0x9
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF111
	.byte	0x13
	.byte	0x28
	.byte	0x9
	.long	0x57
	.byte	0x4
	.uleb128 0x9
	.long	.LASF112
	.byte	0x13
	.byte	0x2a
	.byte	0x9
	.long	0x57
	.byte	0x8
	.uleb128 0x9
	.long	.LASF113
	.byte	0x13
	.byte	0x30
	.byte	0x9
	.long	0x57
	.byte	0xc
	.uleb128 0x9
	.long	.LASF114
	.byte	0x13
	.byte	0x7b
	.byte	0x9
	.long	0x64c
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF115
	.byte	0x13
	.byte	0x7c
	.byte	0x5
	.long	0x6c6
	.uleb128 0xb
	.long	.LASF116
	.byte	0x14
	.byte	0x48
	.byte	0x10
	.long	0x729
	.uleb128 0x3
	.byte	0x8
	.long	0x72f
	.uleb128 0x18
	.long	0x73a
	.uleb128 0x19
	.long	0x57
	.byte	0
	.uleb128 0x16
	.byte	0x8
	.byte	0x15
	.byte	0x1f
	.byte	0x5
	.long	0x75c
	.uleb128 0x15
	.long	.LASF117
	.byte	0x15
	.byte	0x22
	.byte	0x11
	.long	0x71d
	.uleb128 0x15
	.long	.LASF118
	.byte	0x15
	.byte	0x24
	.byte	0x9
	.long	0x777
	.byte	0
	.uleb128 0x18
	.long	0x771
	.uleb128 0x19
	.long	0x57
	.uleb128 0x19
	.long	0x771
	.uleb128 0x19
	.long	0xed
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x711
	.uleb128 0x3
	.byte	0x8
	.long	0x75c
	.uleb128 0x8
	.long	.LASF119
	.byte	0x98
	.byte	0x15
	.byte	0x1b
	.byte	0x8
	.long	0x7bf
	.uleb128 0x9
	.long	.LASF120
	.byte	0x15
	.byte	0x26
	.byte	0x5
	.long	0x73a
	.byte	0
	.uleb128 0x9
	.long	.LASF121
	.byte	0x15
	.byte	0x2e
	.byte	0x10
	.long	0x429
	.byte	0x8
	.uleb128 0x9
	.long	.LASF122
	.byte	0x15
	.byte	0x31
	.byte	0x9
	.long	0x57
	.byte	0x88
	.uleb128 0x9
	.long	.LASF123
	.byte	0x15
	.byte	0x34
	.byte	0xc
	.long	0x7c0
	.byte	0x90
	.byte	0
	.uleb128 0x1a
	.uleb128 0x3
	.byte	0x8
	.long	0x7bf
	.uleb128 0xf
	.long	0xc8
	.long	0x7d6
	.uleb128 0x10
	.long	0xdf
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x7c6
	.uleb128 0x13
	.long	.LASF124
	.byte	0x14
	.value	0x11e
	.byte	0x1a
	.long	0x7d6
	.uleb128 0x13
	.long	.LASF125
	.byte	0x14
	.value	0x11f
	.byte	0x1a
	.long	0x7d6
	.uleb128 0x8
	.long	.LASF126
	.byte	0x20
	.byte	0x16
	.byte	0x8
	.byte	0x8
	.long	0x81d
	.uleb128 0x9
	.long	.LASF127
	.byte	0x16
	.byte	0xa
	.byte	0x15
	.long	0x441
	.byte	0
	.uleb128 0x9
	.long	.LASF128
	.byte	0x16
	.byte	0xb
	.byte	0x15
	.long	0x441
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	0x39
	.long	0x82d
	.uleb128 0x10
	.long	0xdf
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF129
	.byte	0x17
	.byte	0x9f
	.byte	0xe
	.long	0x81d
	.uleb128 0x2
	.long	.LASF130
	.byte	0x17
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF131
	.byte	0x17
	.byte	0xa1
	.byte	0x11
	.long	0x117
	.uleb128 0x2
	.long	.LASF132
	.byte	0x17
	.byte	0xa6
	.byte	0xe
	.long	0x81d
	.uleb128 0x2
	.long	.LASF133
	.byte	0x17
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF134
	.byte	0x17
	.byte	0xaf
	.byte	0x11
	.long	0x117
	.uleb128 0x13
	.long	.LASF135
	.byte	0x17
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x13
	.long	.LASF136
	.byte	0x18
	.value	0x21f
	.byte	0xf
	.long	0x88f
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0x13
	.long	.LASF137
	.byte	0x18
	.value	0x221
	.byte	0xf
	.long	0x88f
	.uleb128 0x2
	.long	.LASF138
	.byte	0x19
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF139
	.byte	0x19
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF140
	.byte	0x1a
	.byte	0x1
	.byte	0x14
	.long	0xc2
	.uleb128 0x1b
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	0x8ed
	.uleb128 0x1c
	.long	.LASF141
	.byte	0x7c
	.uleb128 0x1c
	.long	.LASF142
	.byte	0x7d
	.uleb128 0x1c
	.long	.LASF143
	.byte	0x7e
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x7f
	.byte	0
	.uleb128 0x2
	.long	.LASF145
	.byte	0x1b
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x1b
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1c
	.byte	0x29
	.byte	0x6
	.long	0x911
	.uleb128 0x1d
	.long	.LASF146
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x1b
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1c
	.byte	0x2a
	.byte	0x6
	.long	0x926
	.uleb128 0x1c
	.long	.LASF147
	.byte	0x9
	.byte	0
	.uleb128 0x1e
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x944
	.uleb128 0x1f
	.long	.LASF148
	.sleb128 -130
	.uleb128 0x1f
	.long	.LASF149
	.sleb128 -131
	.byte	0
	.uleb128 0xf
	.long	0x46
	.long	0x94f
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x944
	.uleb128 0x2
	.long	.LASF150
	.byte	0x1d
	.byte	0x19
	.byte	0x13
	.long	0x94f
	.uleb128 0x2
	.long	.LASF151
	.byte	0x1e
	.byte	0x20
	.byte	0x14
	.long	0xc2
	.uleb128 0x20
	.long	.LASF227
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x1f
	.byte	0x20
	.byte	0x6
	.long	0x9c1
	.uleb128 0x1c
	.long	.LASF152
	.byte	0
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF154
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF155
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x4
	.uleb128 0x1c
	.long	.LASF157
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF158
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF159
	.byte	0x7
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x8
	.uleb128 0x1c
	.long	.LASF161
	.byte	0x9
	.uleb128 0x1c
	.long	.LASF162
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x96c
	.uleb128 0x13
	.long	.LASF163
	.byte	0x1f
	.value	0x10b
	.byte	0x1a
	.long	0x3a7
	.uleb128 0xf
	.long	0x9c1
	.long	0x9de
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x9d3
	.uleb128 0x13
	.long	.LASF164
	.byte	0x1f
	.value	0x10c
	.byte	0x21
	.long	0x9de
	.uleb128 0x2
	.long	.LASF165
	.byte	0x20
	.byte	0x32
	.byte	0xf
	.long	0x7c0
	.uleb128 0x2
	.long	.LASF166
	.byte	0x20
	.byte	0x35
	.byte	0x15
	.long	0xe6
	.uleb128 0x2
	.long	.LASF167
	.byte	0x20
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF168
	.uleb128 0x2
	.long	.LASF169
	.byte	0x21
	.byte	0x19
	.byte	0x1f
	.long	0xa14
	.uleb128 0x21
	.long	.LASF170
	.byte	0x2
	.byte	0x50
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	timed_out
	.uleb128 0x21
	.long	.LASF171
	.byte	0x2
	.byte	0x51
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	term_signal
	.uleb128 0x21
	.long	.LASF172
	.byte	0x2
	.byte	0x52
	.byte	0xe
	.long	0x3de
	.uleb128 0x9
	.byte	0x3
	.quad	monitored_pid
	.uleb128 0x21
	.long	.LASF173
	.byte	0x2
	.byte	0x53
	.byte	0xf
	.long	0xa7d
	.uleb128 0x9
	.byte	0x3
	.quad	kill_after
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF174
	.uleb128 0x21
	.long	.LASF175
	.byte	0x2
	.byte	0x54
	.byte	0xd
	.long	0xa9a
	.uleb128 0x9
	.byte	0x3
	.quad	foreground
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF176
	.uleb128 0x21
	.long	.LASF177
	.byte	0x2
	.byte	0x55
	.byte	0xd
	.long	0xa9a
	.uleb128 0x9
	.byte	0x3
	.quad	preserve_status
	.uleb128 0x21
	.long	.LASF178
	.byte	0x2
	.byte	0x56
	.byte	0xd
	.long	0xa9a
	.uleb128 0x9
	.byte	0x3
	.quad	verbose
	.uleb128 0x21
	.long	.LASF179
	.byte	0x2
	.byte	0x57
	.byte	0x14
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	command
	.uleb128 0x1b
	.byte	0x7
	.byte	0x4
	.long	0xe6
	.byte	0x2
	.byte	0x5b
	.byte	0x1
	.long	0xafe
	.uleb128 0x1c
	.long	.LASF180
	.byte	0x80
	.uleb128 0x1c
	.long	.LASF181
	.byte	0x81
	.byte	0
	.uleb128 0xf
	.long	0xbd
	.long	0xb0e
	.uleb128 0x10
	.long	0xdf
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0xafe
	.uleb128 0x21
	.long	.LASF182
	.byte	0x2
	.byte	0x60
	.byte	0x1c
	.long	0xb0e
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x22
	.long	.LASF204
	.byte	0x2
	.value	0x1cf
	.byte	0x1
	.long	0x57
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0xc2e
	.uleb128 0x23
	.long	.LASF183
	.byte	0x2
	.value	0x1cf
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x23
	.long	.LASF184
	.byte	0x2
	.value	0x1cf
	.byte	0x18
	.long	0x88f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x24
	.long	.LASF185
	.byte	0x2
	.value	0x1d1
	.byte	0xa
	.long	0xa7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x24
	.long	.LASF186
	.byte	0x2
	.value	0x1d2
	.byte	0x8
	.long	0xc2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"c"
	.byte	0x2
	.value	0x1d3
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x26
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xbc5
	.uleb128 0x24
	.long	.LASF187
	.byte	0x2
	.value	0x227
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.byte	0
	.uleb128 0x27
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x24
	.long	.LASF188
	.byte	0x2
	.value	0x22d
	.byte	0xd
	.long	0x3de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x24
	.long	.LASF189
	.byte	0x2
	.value	0x22e
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x24
	.long	.LASF190
	.byte	0x2
	.value	0x238
	.byte	0x10
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x27
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x25
	.string	"sig"
	.byte	0x2
	.value	0x24a
	.byte	0x13
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x3f
	.long	0xc3e
	.uleb128 0x10
	.long	0xdf
	.byte	0x12
	.byte	0
	.uleb128 0x28
	.long	.LASF228
	.byte	0x2
	.value	0x1ba
	.byte	0x1
	.long	0xa9a
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.long	.LASF194
	.byte	0x2
	.value	0x1a5
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xcb0
	.uleb128 0x23
	.long	.LASF191
	.byte	0x2
	.value	0x1a5
	.byte	0x1d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x23
	.long	.LASF192
	.byte	0x2
	.value	0x1a5
	.byte	0x30
	.long	0xcb0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x24
	.long	.LASF193
	.byte	0x2
	.value	0x1a7
	.byte	0xc
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x435
	.uleb128 0x29
	.long	.LASF195
	.byte	0x2
	.value	0x18f
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xcf7
	.uleb128 0x23
	.long	.LASF191
	.byte	0x2
	.value	0x18f
	.byte	0x16
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x25
	.string	"sa"
	.byte	0x2
	.value	0x191
	.byte	0x14
	.long	0x77d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x29
	.long	.LASF196
	.byte	0x2
	.value	0x17f
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xd27
	.uleb128 0x25
	.string	"sa"
	.byte	0x2
	.value	0x181
	.byte	0x14
	.long	0x77d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x29
	.long	.LASF197
	.byte	0x2
	.value	0x175
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xd69
	.uleb128 0x2a
	.string	"sig"
	.byte	0x2
	.value	0x175
	.byte	0x15
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x24
	.long	.LASF198
	.byte	0x2
	.value	0x177
	.byte	0xc
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x2b
	.long	.LASF200
	.byte	0x2
	.value	0x160
	.byte	0x1
	.long	0xa7d
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xdbd
	.uleb128 0x2a
	.string	"str"
	.byte	0x2
	.value	0x160
	.byte	0x1d
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF199
	.byte	0x2
	.value	0x162
	.byte	0xa
	.long	0xa7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"ep"
	.byte	0x2
	.value	0x163
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2c
	.long	.LASF201
	.byte	0x2
	.value	0x143
	.byte	0x1
	.long	0xa9a
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xe0f
	.uleb128 0x2a
	.string	"x"
	.byte	0x2
	.value	0x143
	.byte	0x1c
	.long	0xe0f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF202
	.byte	0x2
	.value	0x143
	.byte	0x24
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LASF203
	.byte	0x2
	.value	0x145
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xa7d
	.uleb128 0x2d
	.long	.LASF205
	.byte	0x2
	.byte	0xfd
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xe43
	.uleb128 0x2e
	.long	.LASF189
	.byte	0x2
	.byte	0xfd
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2f
	.long	.LASF206
	.byte	0x2
	.byte	0xcc
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xeb9
	.uleb128 0x30
	.string	"sig"
	.byte	0x2
	.byte	0xcc
	.byte	0xe
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xe97
	.uleb128 0x21
	.long	.LASF207
	.byte	0x2
	.byte	0xd7
	.byte	0xf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x27
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x21
	.long	.LASF186
	.byte	0x2
	.byte	0xe4
	.byte	0x10
	.long	0xc2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF208
	.byte	0x2
	.byte	0xc6
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xee7
	.uleb128 0x30
	.string	"sig"
	.byte	0x2
	.byte	0xc6
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF209
	.byte	0x2
	.byte	0xb5
	.byte	0x1
	.long	0x57
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xf28
	.uleb128 0x2e
	.long	.LASF210
	.byte	0x2
	.byte	0xb5
	.byte	0x11
	.long	0x3de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.string	"sig"
	.byte	0x2
	.byte	0xb5
	.byte	0x1c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF211
	.byte	0x2
	.byte	0x72
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xfc8
	.uleb128 0x2e
	.long	.LASF199
	.byte	0x2
	.byte	0x72
	.byte	0x14
	.long	0xa7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.long	.LASF212
	.byte	0x2
	.byte	0x72
	.byte	0x23
	.long	0xa9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x33
	.string	"ts"
	.byte	0x2
	.byte	0x78
	.byte	0x13
	.long	0x441
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.string	"its"
	.byte	0x2
	.byte	0x79
	.byte	0x15
	.long	0x7f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF213
	.byte	0x2
	.byte	0x7a
	.byte	0xb
	.long	0x3f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.long	.LASF214
	.byte	0x2
	.byte	0xa7
	.byte	0x10
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x21
	.long	.LASF215
	.byte	0x2
	.byte	0xac
	.byte	0x14
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF216
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x106d
	.uleb128 0x23
	.long	.LASF217
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x34
	.long	.LASF218
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1023
	.uleb128 0x35
	.long	.LASF217
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc2
	.byte	0
	.uleb128 0x35
	.long	.LASF219
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0xff8
	.uleb128 0x24
	.long	.LASF218
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x107d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.long	.LASF219
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x24
	.long	.LASF220
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x1082
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.long	.LASF221
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xf
	.long	0x1023
	.long	0x107d
	.uleb128 0x10
	.long	0xdf
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x106d
	.uleb128 0x3
	.byte	0x8
	.long	0x1023
	.uleb128 0x36
	.long	.LASF229
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF230
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF189
	.byte	0x1
	.byte	0x63
	.byte	0x1e
	.long	0x57
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
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF145:
	.string	"exit_failure"
.LASF18:
	.string	"__off_t"
.LASF28:
	.string	"_IO_read_ptr"
.LASF94:
	.string	"_pkey"
.LASF144:
	.string	"EXIT_ENOENT"
.LASF128:
	.string	"it_value"
.LASF181:
	.string	"PRESERVE_STATUS_OPTION"
.LASF146:
	.string	"TIMESPEC_HZ"
.LASF227:
	.string	"quoting_style"
.LASF14:
	.string	"size_t"
.LASF95:
	.string	"si_addr"
.LASF74:
	.string	"sigset_t"
.LASF210:
	.string	"where"
.LASF46:
	.string	"_shortbuf"
.LASF177:
	.string	"preserve_status"
.LASF122:
	.string	"sa_flags"
.LASF153:
	.string	"shell_quoting_style"
.LASF148:
	.string	"GETOPT_HELP_CHAR"
.LASF23:
	.string	"__timer_t"
.LASF202:
	.string	"suffix_char"
.LASF116:
	.string	"__sighandler_t"
.LASF91:
	.string	"_lower"
.LASF79:
	.string	"long long unsigned int"
.LASF90:
	.string	"si_stime"
.LASF188:
	.string	"wait_result"
.LASF102:
	.string	"_arch"
.LASF172:
	.string	"monitored_pid"
.LASF180:
	.string	"FOREGROUND_OPTION"
.LASF101:
	.string	"_syscall"
.LASF49:
	.string	"_codecvt"
.LASF171:
	.string	"term_signal"
.LASF131:
	.string	"__timezone"
.LASF82:
	.string	"__sigval_t"
.LASF139:
	.string	"program_invocation_short_name"
.LASF67:
	.string	"long long int"
.LASF12:
	.string	"signed char"
.LASF164:
	.string	"quoting_style_vals"
.LASF217:
	.string	"program"
.LASF159:
	.string	"escape_quoting_style"
.LASF143:
	.string	"EXIT_CANNOT_INVOKE"
.LASF152:
	.string	"literal_quoting_style"
.LASF41:
	.string	"_fileno"
.LASF208:
	.string	"chld"
.LASF106:
	.string	"_sigchld"
.LASF125:
	.string	"sys_siglist"
.LASF16:
	.string	"long int"
.LASF78:
	.string	"_gl_cxxalias_dummy"
.LASF182:
	.string	"long_options"
.LASF27:
	.string	"_flags"
.LASF196:
	.string	"install_sigchld"
.LASF50:
	.string	"_wide_data"
.LASF215:
	.string	"duration_floor"
.LASF44:
	.string	"_cur_column"
.LASF92:
	.string	"_upper"
.LASF157:
	.string	"c_quoting_style"
.LASF58:
	.string	"_IO_codecvt"
.LASF97:
	.string	"_bounds"
.LASF170:
	.string	"timed_out"
.LASF174:
	.string	"double"
.LASF138:
	.string	"program_invocation_name"
.LASF43:
	.string	"_old_offset"
.LASF48:
	.string	"_offset"
.LASF141:
	.string	"EXIT_TIMEDOUT"
.LASF96:
	.string	"si_addr_lsb"
.LASF87:
	.string	"si_sigval"
.LASF111:
	.string	"si_errno"
.LASF207:
	.string	"saved_errno"
.LASF15:
	.string	"__uint32_t"
.LASF83:
	.string	"si_pid"
.LASF156:
	.string	"shell_escape_always_quoting_style"
.LASF88:
	.string	"si_status"
.LASF19:
	.string	"__off64_t"
.LASF134:
	.string	"timezone"
.LASF226:
	.string	"sigval"
.LASF199:
	.string	"duration"
.LASF213:
	.string	"timerid"
.LASF151:
	.string	"program_name"
.LASF57:
	.string	"_IO_marker"
.LASF60:
	.string	"stdin"
.LASF9:
	.string	"unsigned int"
.LASF221:
	.string	"lc_messages"
.LASF179:
	.string	"command"
.LASF89:
	.string	"si_utime"
.LASF8:
	.string	"long unsigned int"
.LASF212:
	.string	"warn"
.LASF25:
	.string	"option"
.LASF185:
	.string	"timeout"
.LASF32:
	.string	"_IO_write_ptr"
.LASF73:
	.string	"__sigset_t"
.LASF5:
	.string	"name"
.LASF63:
	.string	"sys_nerr"
.LASF198:
	.string	"unblock_set"
.LASF135:
	.string	"getdate_err"
.LASF222:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF162:
	.string	"custom_quoting_style"
.LASF11:
	.string	"short unsigned int"
.LASF140:
	.string	"Version"
.LASF167:
	.string	"error_one_per_line"
.LASF37:
	.string	"_IO_backup_base"
.LASF127:
	.string	"it_interval"
.LASF115:
	.string	"siginfo_t"
.LASF36:
	.string	"_IO_save_base"
.LASF80:
	.string	"sival_int"
.LASF195:
	.string	"install_cleanup"
.LASF137:
	.string	"environ"
.LASF220:
	.string	"map_prog"
.LASF21:
	.string	"__clock_t"
.LASF47:
	.string	"_lock"
.LASF173:
	.string	"kill_after"
.LASF42:
	.string	"_flags2"
.LASF54:
	.string	"_mode"
.LASF61:
	.string	"stdout"
.LASF150:
	.string	"version_etc_copyright"
.LASF17:
	.string	"__uid_t"
.LASF103:
	.string	"_pad"
.LASF228:
	.string	"disable_core_dumps"
.LASF29:
	.string	"_IO_read_end"
.LASF0:
	.string	"optarg"
.LASF77:
	.string	"tv_nsec"
.LASF108:
	.string	"_sigpoll"
.LASF197:
	.string	"unblock_signal"
.LASF194:
	.string	"block_cleanup_and_chld"
.LASF1:
	.string	"optind"
.LASF24:
	.string	"__syscall_slong_t"
.LASF214:
	.string	"timeint"
.LASF114:
	.string	"_sifields"
.LASF186:
	.string	"signame"
.LASF33:
	.string	"_IO_write_end"
.LASF203:
	.string	"multiplier"
.LASF119:
	.string	"sigaction"
.LASF225:
	.string	"_IO_lock_t"
.LASF206:
	.string	"cleanup"
.LASF26:
	.string	"_IO_FILE"
.LASF165:
	.string	"error_print_progname"
.LASF85:
	.string	"si_tid"
.LASF117:
	.string	"sa_handler"
.LASF136:
	.string	"__environ"
.LASF70:
	.string	"time_t"
.LASF62:
	.string	"stderr"
.LASF201:
	.string	"apply_time_suffix"
.LASF64:
	.string	"sys_errlist"
.LASF190:
	.string	"cleanup_set"
.LASF149:
	.string	"GETOPT_VERSION_CHAR"
.LASF39:
	.string	"_markers"
.LASF209:
	.string	"send_sig"
.LASF192:
	.string	"old_set"
.LASF107:
	.string	"_sigfault"
.LASF158:
	.string	"c_maybe_quoting_style"
.LASF147:
	.string	"LOG10_TIMESPEC_HZ"
.LASF176:
	.string	"_Bool"
.LASF10:
	.string	"unsigned char"
.LASF187:
	.string	"exit_status"
.LASF230:
	.string	"initialize_exit_failure"
.LASF219:
	.string	"node"
.LASF35:
	.string	"_IO_buf_end"
.LASF93:
	.string	"_addr_bnd"
.LASF20:
	.string	"__pid_t"
.LASF13:
	.string	"short int"
.LASF211:
	.string	"settimeout"
.LASF40:
	.string	"_chain"
.LASF100:
	.string	"_call_addr"
.LASF169:
	.string	"quote_quoting_options"
.LASF7:
	.string	"flag"
.LASF65:
	.string	"_sys_nerr"
.LASF75:
	.string	"timespec"
.LASF45:
	.string	"_vtable_offset"
.LASF132:
	.string	"tzname"
.LASF56:
	.string	"FILE"
.LASF155:
	.string	"shell_escape_quoting_style"
.LASF163:
	.string	"quoting_style_args"
.LASF4:
	.string	"optopt"
.LASF133:
	.string	"daylight"
.LASF68:
	.string	"long double"
.LASF175:
	.string	"foreground"
.LASF2:
	.string	"char"
.LASF154:
	.string	"shell_always_quoting_style"
.LASF76:
	.string	"tv_sec"
.LASF178:
	.string	"verbose"
.LASF126:
	.string	"itimerspec"
.LASF66:
	.string	"_sys_errlist"
.LASF3:
	.string	"opterr"
.LASF223:
	.string	"src/timeout.c"
.LASF200:
	.string	"parse_duration"
.LASF120:
	.string	"__sigaction_handler"
.LASF168:
	.string	"quoting_options"
.LASF110:
	.string	"si_signo"
.LASF30:
	.string	"_IO_read_base"
.LASF104:
	.string	"_kill"
.LASF38:
	.string	"_IO_save_end"
.LASF191:
	.string	"sigterm"
.LASF124:
	.string	"_sys_siglist"
.LASF218:
	.string	"infomap"
.LASF118:
	.string	"sa_sigaction"
.LASF121:
	.string	"sa_mask"
.LASF160:
	.string	"locale_quoting_style"
.LASF113:
	.string	"__pad0"
.LASF6:
	.string	"has_arg"
.LASF205:
	.string	"usage"
.LASF53:
	.string	"__pad5"
.LASF22:
	.string	"__time_t"
.LASF55:
	.string	"_unused2"
.LASF123:
	.string	"sa_restorer"
.LASF184:
	.string	"argv"
.LASF130:
	.string	"__daylight"
.LASF189:
	.string	"status"
.LASF224:
	.string	"/root/coreutils"
.LASF52:
	.string	"_freeres_buf"
.LASF161:
	.string	"clocale_quoting_style"
.LASF105:
	.string	"_timer"
.LASF84:
	.string	"si_uid"
.LASF99:
	.string	"si_fd"
.LASF166:
	.string	"error_message_count"
.LASF71:
	.string	"timer_t"
.LASF34:
	.string	"_IO_buf_base"
.LASF183:
	.string	"argc"
.LASF69:
	.string	"pid_t"
.LASF86:
	.string	"si_overrun"
.LASF51:
	.string	"_freeres_list"
.LASF109:
	.string	"_sigsys"
.LASF81:
	.string	"sival_ptr"
.LASF59:
	.string	"_IO_wide_data"
.LASF98:
	.string	"si_band"
.LASF142:
	.string	"EXIT_CANCELED"
.LASF229:
	.string	"emit_mandatory_arg_note"
.LASF129:
	.string	"__tzname"
.LASF204:
	.string	"main"
.LASF31:
	.string	"_IO_write_base"
.LASF216:
	.string	"emit_ancillary_info"
.LASF72:
	.string	"__val"
.LASF193:
	.string	"block_set"
.LASF112:
	.string	"si_code"
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
