	.file	"who.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"["
.LC1:
	.string	"test invocation"
.LC2:
	.string	"coreutils"
.LC3:
	.string	"Multi-call invocation"
.LC4:
	.string	"sha224sum"
.LC5:
	.string	"sha2 utilities"
.LC6:
	.string	"sha256sum"
.LC7:
	.string	"sha384sum"
.LC8:
	.string	"sha512sum"
.LC9:
	.string	"\n%s online help: <%s>\n"
	.align 8
.LC10:
	.string	"https://www.gnu.org/software/coreutils/"
.LC11:
	.string	"GNU coreutils"
.LC12:
	.string	"en_"
	.align 8
.LC13:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
.LC14:
	.string	"Full documentation <%s%s>\n"
.LC15:
	.string	" invocation"
.LC16:
	.string	""
	.align 8
.LC17:
	.string	"or available locally via: info '(coreutils) %s%s'\n"
	.text
	.type	emit_ancillary_info, @function
emit_ancillary_info:
.LFB40:
	.file 1 "src/system.h"
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
	leaq	.LC0(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC5(%rip), %rax
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
	jmp	.L2
.L4:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L2:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L3
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L4
.L3:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L5
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L5:
	.loc 1 655 11
	leaq	.LC9(%rip), %rdi
	call	gettext@PLT
	.loc 1 655 3
	leaq	.LC10(%rip), %rdx
	leaq	.LC11(%rip), %rsi
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
	je	.L6
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L6
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L6:
	.loc 1 669 11
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 669 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC10(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 671 3
	movq	-168(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.L7
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L8
.L7:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L8:
	.loc 1 671 11 is_stmt 1 discriminator 4
	leaq	.LC17(%rip), %rdi
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
	je	.L9
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L9:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.type	timetostr, @function
timetostr:
.LFB41:
	.loc 1 691 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 694 11
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	imaxtostr@PLT
	.loc 1 695 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	timetostr, .-timetostr
	.type	stzncpy, @function
stzncpy:
.LFB44:
	.loc 1 742 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 743 15
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 744 9
	jmp	.L13
.L15:
	.loc 1 745 19
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	.loc 1 745 10
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	.loc 1 745 15
	movzbl	(%rdx), %edx
	.loc 1 745 13
	movb	%dl, (%rax)
.L13:
	.loc 1 744 9
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L14
	.loc 1 744 27 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 744 24 discriminator 1
	testb	%al, %al
	jne	.L15
.L14:
	.loc 1 746 9
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	.loc 1 747 10
	movq	-24(%rbp), %rax
	.loc 1 748 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	stzncpy, .-stzncpy
	.local	do_lookup
	.comm	do_lookup,1,1
	.local	short_list
	.comm	short_list,1,1
	.local	short_output
	.comm	short_output,1,1
	.local	include_idle
	.comm	include_idle,1,1
	.local	include_heading
	.comm	include_heading,1,1
	.local	include_mesg
	.comm	include_mesg,1,1
	.local	include_exit
	.comm	include_exit,1,1
	.local	need_boottime
	.comm	need_boottime,1,1
	.local	need_deadprocs
	.comm	need_deadprocs,1,1
	.local	need_login
	.comm	need_login,1,1
	.local	need_initspawn
	.comm	need_initspawn,1,1
	.local	need_clockchange
	.comm	need_clockchange,1,1
	.local	need_runlevel
	.comm	need_runlevel,1,1
	.local	need_users
	.comm	need_users,1,1
	.local	my_line_only
	.comm	my_line_only,1,1
	.local	time_format
	.comm	time_format,8,8
	.local	time_format_width
	.comm	time_format_width,4,4
	.section	.rodata
.LC18:
	.string	"all"
.LC19:
	.string	"boot"
.LC20:
	.string	"count"
.LC21:
	.string	"dead"
.LC22:
	.string	"heading"
.LC23:
	.string	"login"
.LC24:
	.string	"lookup"
.LC25:
	.string	"message"
.LC26:
	.string	"mesg"
.LC27:
	.string	"process"
.LC28:
	.string	"runlevel"
.LC29:
	.string	"short"
.LC30:
	.string	"time"
.LC31:
	.string	"users"
.LC32:
	.string	"writable"
.LC33:
	.string	"help"
.LC34:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 576
longopts:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	113
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	72
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	108
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC29
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC31
	.long	0
	.zero	4
	.quad	0
	.long	117
	.zero	4
	.quad	.LC32
	.long	0
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	.LC33
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC34
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
.LC35:
	.string	"  .  "
.LC36:
	.string	"src/who.c"
.LC37:
	.string	"seconds_idle / (60 * 60) < 24"
.LC38:
	.string	"%02d:%02d"
.LC39:
	.string	" old "
	.text
	.type	idle_string, @function
idle_string:
.LFB61:
	.file 2 "src/who.c"
	.loc 2 189 1
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
	.loc 2 192 11
	movq	now.7079(%rip), %rax
	.loc 2 192 6
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	jne	.L18
	.loc 2 193 5
	leaq	now.7079(%rip), %rdi
	call	time@PLT
.L18:
	.loc 2 195 6
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.L19
	.loc 2 195 45 discriminator 1
	movq	now.7079(%rip), %rax
	subq	$86399, %rax
	.loc 2 195 23 discriminator 1
	cmpq	%rax, -24(%rbp)
	jl	.L19
	.loc 2 195 60 discriminator 2
	movq	now.7079(%rip), %rax
	.loc 2 195 52 discriminator 2
	cmpq	%rax, -24(%rbp)
	jg	.L19
.LBB2:
	.loc 2 197 30
	movq	now.7079(%rip), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 197 11
	movl	%eax, -4(%rbp)
	.loc 2 198 10
	cmpl	$59, -4(%rbp)
	jg	.L20
	.loc 2 199 16
	leaq	.LC35(%rip), %rax
	jmp	.L21
.L20:
.LBB3:
	.loc 2 205 11
	cmpl	$86399, -4(%rbp)
	jle	.L22
	.loc 2 205 11 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7082(%rip), %rcx
	movl	$205, %edx
	leaq	.LC36(%rip), %rsi
	leaq	.LC37(%rip), %rdi
	call	__assert_fail@PLT
.L22:
	.loc 2 208 34 is_stmt 1
	movl	-4(%rbp), %edx
	movslq	%edx, %rax
	imulq	$-1851608123, %rax, %rax
	shrq	$32, %rax
	addl	%edx, %eax
	sarl	$11, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	imull	$3600, %eax, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 206 11
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$5, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$-1851608123, %rcx, %rcx
	shrq	$32, %rcx
	addl	%eax, %ecx
	sarl	$11, %ecx
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	leaq	.LC38(%rip), %rsi
	leaq	idle_hhmm.7081(%rip), %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 209 18
	leaq	idle_hhmm.7081(%rip), %rax
	jmp	.L21
.L19:
.LBE3:
.LBE2:
	.loc 2 213 10
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
.L21:
	.loc 2 214 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	idle_string, .-idle_string
	.type	time_string, @function
time_string:
.LFB62:
	.loc 2 219 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 219 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 228 14
	movq	-40(%rbp), %rax
	movl	340(%rax), %eax
	cltq
	.loc 2 228 10
	movq	%rax, -24(%rbp)
	.loc 2 229 20
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	movq	%rax, -16(%rbp)
	.loc 2 231 6
	cmpq	$0, -16(%rbp)
	je	.L24
	.loc 2 233 7
	movq	time_format(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$33, %esi
	leaq	buf.7086(%rip), %rdi
	call	strftime@PLT
	.loc 2 234 14
	leaq	buf.7086(%rip), %rax
	jmp	.L26
.L24:
	.loc 2 237 12
	movq	-24(%rbp), %rax
	leaq	buf.7086(%rip), %rsi
	movq	%rax, %rdi
	call	timetostr
.L26:
	.loc 2 238 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L27
	.loc 2 238 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	time_string, .-time_string
	.section	.rodata
.LC40:
	.string	" %-6s"
.LC41:
	.string	" %10s"
.LC42:
	.string	" %-12s"
.LC43:
	.string	"   ."
	.align 8
.LC44:
	.string	"%-8.*s%s %-12.*s %-*s%s%s %-8s%s"
	.text
	.type	print_line, @function
print_line:
.LFB63:
	.loc 2 248 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, %eax
	movl	%ecx, -100(%rbp)
	movq	%r8, -112(%rbp)
	movq	%r9, -120(%rbp)
	movb	%al, -88(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -152(%rbp)
	.loc 2 248 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 256 11
	movzbl	-88(%rbp), %eax
	movb	%al, 1+mesg.7101(%rip)
	.loc 2 258 7
	movzbl	include_idle(%rip), %eax
	.loc 2 258 6
	testb	%al, %al
	je	.L29
	.loc 2 258 23 discriminator 1
	movzbl	short_output(%rip), %eax
	xorl	$1, %eax
	.loc 2 258 20 discriminator 1
	testb	%al, %al
	je	.L29
	.loc 2 258 40 discriminator 2
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 258 37 discriminator 2
	cmpq	$6, %rax
	ja	.L29
	.loc 2 259 5
	movq	-128(%rbp), %rdx
	leaq	-45(%rbp), %rax
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L30
.L29:
	.loc 2 261 13
	movb	$0, -45(%rbp)
.L30:
	.loc 2 263 7
	movzbl	short_output(%rip), %eax
	xorl	$1, %eax
	.loc 2 263 6
	testb	%al, %al
	je	.L31
	.loc 2 263 24 discriminator 1
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 263 21 discriminator 1
	cmpq	$11, %rax
	ja	.L31
	.loc 2 264 5
	movq	-136(%rbp), %rdx
	leaq	-37(%rbp), %rax
	leaq	.LC41(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L32
.L31:
	.loc 2 266 12
	movb	$0, -37(%rbp)
.L32:
	.loc 2 268 37
	movzbl	include_exit(%rip), %eax
	.loc 2 268 15
	testb	%al, %al
	je	.L33
	.loc 2 268 43 discriminator 1
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 268 70 discriminator 1
	cmpq	$11, %rax
	jbe	.L34
	.loc 2 268 43 discriminator 3
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 268 70 discriminator 3
	addq	$2, %rax
	jmp	.L36
.L34:
	.loc 2 268 70 is_stmt 0 discriminator 4
	movl	$14, %eax
	jmp	.L36
.L33:
	.loc 2 268 15 is_stmt 1 discriminator 2
	movl	$1, %eax
.L36:
	.loc 2 268 15 is_stmt 0 discriminator 8
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -56(%rbp)
	.loc 2 269 7 is_stmt 1 discriminator 8
	movzbl	include_exit(%rip), %eax
	.loc 2 269 6 discriminator 8
	testb	%al, %al
	je	.L37
	.loc 2 270 5
	movq	-152(%rbp), %rdx
	movq	-56(%rbp), %rax
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L38
.L37:
	.loc 2 272 16
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
.L38:
	.loc 2 274 9
	movl	time_format_width(%rip), %ecx
	.loc 2 285 32
	movzbl	include_mesg(%rip), %eax
	.loc 2 274 9
	testb	%al, %al
	je	.L39
	.loc 2 274 9 is_stmt 0 discriminator 1
	leaq	mesg.7101(%rip), %rdx
	jmp	.L40
.L39:
	.loc 2 274 9 discriminator 2
	leaq	.LC16(%rip), %rdx
.L40:
	.loc 2 274 9 discriminator 4
	cmpq	$0, -96(%rbp)
	je	.L41
	.loc 2 274 9 discriminator 5
	movq	-96(%rbp), %rax
	jmp	.L42
.L41:
	.loc 2 274 9 discriminator 6
	leaq	.LC43(%rip), %rax
.L42:
	.loc 2 274 9 discriminator 8
	movl	-100(%rbp), %r9d
	movl	-84(%rbp), %esi
	leaq	-72(%rbp), %rdi
	subq	$8, %rsp
	pushq	-56(%rbp)
	pushq	-144(%rbp)
	leaq	-37(%rbp), %r8
	pushq	%r8
	leaq	-45(%rbp), %r8
	pushq	%r8
	pushq	-120(%rbp)
	pushq	%rcx
	pushq	-112(%rbp)
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	%esi, %edx
	leaq	.LC44(%rip), %rsi
	movl	$0, %eax
	call	rpl_asprintf@PLT
	addq	$64, %rsp
	movl	%eax, -76(%rbp)
	.loc 2 298 6 is_stmt 1 discriminator 8
	cmpl	$-1, -76(%rbp)
	jne	.L43
	.loc 2 299 5
	call	xalloc_die@PLT
.L43:
.LBB4:
	.loc 2 303 19
	movq	-72(%rbp), %rbx
	.loc 2 303 21
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 303 11
	addq	%rbx, %rax
	movq	%rax, -64(%rbp)
.L44:
	.loc 2 304 11 discriminator 1
	subq	$1, -64(%rbp)
	.loc 2 304 12 discriminator 1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 304 11 discriminator 1
	cmpb	$32, %al
	je	.L44
	.loc 2 306 9
	movq	-64(%rbp), %rax
	addq	$1, %rax
	.loc 2 306 14
	movb	$0, (%rax)
.LBE4:
	.loc 2 309 3
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 310 3
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 311 3
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 312 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L45
	call	__stack_chk_fail@PLT
.L45:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	print_line, .-print_line
	.type	is_tty_writable, @function
is_tty_writable:
.LFB64:
	.loc 2 318 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 327 15
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	.loc 2 327 25
	andl	$16, %eax
	testl	%eax, %eax
	setne	%al
	.loc 2 328 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	is_tty_writable, .-is_tty_writable
	.section	.rodata
.LC45:
	.string	"%ld"
.LC46:
	.string	"%.*s"
.LC47:
	.string	"  ?"
.LC48:
	.string	"(%s:%s)"
.LC49:
	.string	"(%s)"
	.text
	.type	print_user, @function
print_user:
.LFB65:
	.loc 2 334 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$568, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -568(%rbp)
	movq	%rsi, -576(%rbp)
	.loc 2 334 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 348 9
	leaq	-336(%rbp), %rax
	movq	%rax, -536(%rbp)
	.loc 2 349 3
	movq	-568(%rbp), %rax
	movl	4(%rax), %eax
	movslq	%eax, %rdx
	leaq	-348(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 354 10
	movq	-568(%rbp), %rax
	movzbl	8(%rax), %eax
	.loc 2 354 6
	cmpb	$47, %al
	je	.L49
	movq	-536(%rbp), %rax
	movl	$1986356271, (%rax)
	movw	$47, 4(%rax)
	.loc 2 355 9
	addq	$5, -536(%rbp)
.L49:
	.loc 2 356 23
	movq	-568(%rbp), %rax
	leaq	8(%rax), %rcx
	.loc 2 356 3
	movq	-536(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stzncpy
	.loc 2 358 7
	leaq	-512(%rbp), %rdx
	leaq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 358 6
	testl	%eax, %eax
	jne	.L50
	.loc 2 360 14
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	is_tty_writable
	.loc 2 360 12
	testb	%al, %al
	je	.L51
	.loc 2 360 12 is_stmt 0 discriminator 1
	movl	$43, %eax
	jmp	.L52
.L51:
	.loc 2 360 12 discriminator 2
	movl	$45, %eax
.L52:
	.loc 2 360 12 discriminator 4
	movb	%al, -545(%rbp)
	.loc 2 361 19 is_stmt 1 discriminator 4
	movq	-440(%rbp), %rax
	movq	%rax, -544(%rbp)
	jmp	.L53
.L50:
	.loc 2 365 12
	movb	$63, -545(%rbp)
	.loc 2 366 19
	movq	$0, -544(%rbp)
.L53:
	.loc 2 369 6
	cmpq	$0, -544(%rbp)
	je	.L54
	.loc 2 370 5
	movq	-576(%rbp), %rdx
	movq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	idle_string
	movq	%rax, %rdx
	leaq	-355(%rbp), %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L55
.L54:
	.loc 2 372 5
	leaq	-355(%rbp), %rax
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L55:
	.loc 2 375 24
	movq	-568(%rbp), %rax
	movzbl	76(%rax), %eax
	.loc 2 375 6
	testb	%al, %al
	je	.L56
.LBB5:
	.loc 2 378 13
	movq	$0, -528(%rbp)
	.loc 2 379 13
	movq	$0, -520(%rbp)
	.loc 2 382 33
	movq	-568(%rbp), %rax
	leaq	76(%rax), %rcx
	.loc 2 382 7
	leaq	-288(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stzncpy
	.loc 2 385 17
	leaq	-288(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -520(%rbp)
	.loc 2 386 10
	cmpq	$0, -520(%rbp)
	je	.L57
	.loc 2 387 17
	movq	-520(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -520(%rbp)
	.loc 2 387 20
	movb	$0, (%rax)
.L57:
	.loc 2 389 11
	movzbl	-288(%rbp), %eax
	.loc 2 389 10
	testb	%al, %al
	je	.L58
	.loc 2 389 20 discriminator 1
	movzbl	do_lookup(%rip), %eax
	testb	%al, %al
	je	.L58
	.loc 2 392 18
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	canon_host@PLT
	movq	%rax, -528(%rbp)
.L58:
	.loc 2 395 10
	cmpq	$0, -528(%rbp)
	jne	.L59
	.loc 2 396 14
	leaq	-288(%rbp), %rax
	movq	%rax, -528(%rbp)
.L59:
	.loc 2 398 10
	cmpq	$0, -520(%rbp)
	je	.L60
	.loc 2 400 25
	movq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 2 400 41
	movq	-520(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 400 39
	addq	%rbx, %rax
	.loc 2 400 58
	leaq	4(%rax), %rdx
	.loc 2 400 23
	movq	hostlen.7123(%rip), %rax
	.loc 2 400 14
	cmpq	%rax, %rdx
	jbe	.L61
	.loc 2 402 25
	movq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 2 402 41
	movq	-520(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 402 39
	addq	%rbx, %rax
	.loc 2 402 58
	addq	$4, %rax
	.loc 2 402 23
	movq	%rax, hostlen.7123(%rip)
	.loc 2 403 15
	movq	hoststr.7122(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 404 25
	movq	hostlen.7123(%rip), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 404 23
	movq	%rax, hoststr.7122(%rip)
.L61:
	.loc 2 406 11
	movq	hoststr.7122(%rip), %rax
	movq	-520(%rbp), %rcx
	movq	-528(%rbp), %rdx
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L62
.L60:
	.loc 2 410 25
	movq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 410 39
	leaq	3(%rax), %rdx
	.loc 2 410 23
	movq	hostlen.7123(%rip), %rax
	.loc 2 410 14
	cmpq	%rax, %rdx
	jbe	.L63
	.loc 2 412 25
	movq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 412 39
	addq	$3, %rax
	.loc 2 412 23
	movq	%rax, hostlen.7123(%rip)
	.loc 2 413 15
	movq	hoststr.7122(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 414 25
	movq	hostlen.7123(%rip), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 414 23
	movq	%rax, hoststr.7122(%rip)
.L63:
	.loc 2 416 11
	movq	hoststr.7122(%rip), %rax
	movq	-528(%rbp), %rdx
	leaq	.LC49(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L62:
	.loc 2 419 10
	leaq	-288(%rbp), %rax
	cmpq	%rax, -528(%rbp)
	je	.L65
	.loc 2 420 9
	movq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L65
.L56:
.LBE5:
	.loc 2 424 19
	movq	hostlen.7123(%rip), %rax
	.loc 2 424 10
	testq	%rax, %rax
	jne	.L66
	.loc 2 426 19
	movq	$1, hostlen.7123(%rip)
	.loc 2 427 11
	movq	hoststr.7122(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 428 21
	movq	hostlen.7123(%rip), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 428 19
	movq	%rax, hoststr.7122(%rip)
.L66:
	.loc 2 430 7
	movq	hoststr.7122(%rip), %rax
	.loc 2 430 16
	movb	$0, (%rax)
.L65:
	.loc 2 437 23
	movq	hoststr.7122(%rip), %rax
	.loc 2 434 3
	testq	%rax, %rax
	je	.L67
	.loc 2 434 3 is_stmt 0 discriminator 1
	movq	hoststr.7122(%rip), %rbx
	jmp	.L68
.L67:
	.loc 2 434 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L68:
	.loc 2 434 3 discriminator 4
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	time_string
	movq	%rax, %rcx
	.loc 2 435 49 is_stmt 1 discriminator 4
	movq	-568(%rbp), %rax
	leaq	8(%rax), %rdi
	.loc 2 434 3 discriminator 4
	movsbl	-545(%rbp), %eax
	.loc 2 434 42 discriminator 4
	movq	-568(%rbp), %rdx
	leaq	44(%rdx), %rsi
	.loc 2 434 3 discriminator 4
	leaq	.LC16(%rip), %rdx
	pushq	%rdx
	pushq	%rbx
	leaq	-348(%rbp), %rdx
	pushq	%rdx
	leaq	-355(%rbp), %rdx
	pushq	%rdx
	movq	%rcx, %r9
	movq	%rdi, %r8
	movl	$32, %ecx
	movl	%eax, %edx
	movl	$32, %edi
	call	print_line
	addq	$32, %rsp
	.loc 2 438 1 discriminator 4
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L69
	.loc 2 438 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L69:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	print_user, .-print_user
	.section	.rodata
.LC50:
	.string	"system boot"
	.text
	.type	print_boottime, @function
print_boottime:
.LFB66:
	.loc 2 442 1 is_stmt 1
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
	movq	%rdi, -24(%rbp)
	.loc 2 443 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	time_string
	movq	%rax, %rbx
	.loc 2 443 32
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	.loc 2 443 3
	leaq	.LC16(%rip), %rdx
	pushq	%rdx
	leaq	.LC16(%rip), %rdx
	pushq	%rdx
	leaq	.LC16(%rip), %rdx
	pushq	%rdx
	leaq	.LC16(%rip), %rdx
	pushq	%rdx
	movq	%rbx, %r9
	movq	%rax, %r8
	movl	$-1, %ecx
	movl	$32, %edx
	leaq	.LC16(%rip), %rsi
	movl	$-1, %edi
	call	print_line
	addq	$32, %rsp
	.loc 2 445 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	print_boottime, .-print_boottime
	.section	.rodata
.LC51:
	.string	"id="
	.text
	.type	make_id_equals_comment, @function
make_id_equals_comment:
.LFB67:
	.loc 2 449 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 450 10
	movq	$4, -24(%rbp)
	.loc 2 451 36
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	.loc 2 451 28
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 451 46
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	.loc 2 451 19
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -16(%rbp)
	.loc 2 453 30
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 453 13
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	movq	%rax, -8(%rbp)
	.loc 2 454 15
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rcx
	.loc 2 454 3
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stzncpy
	.loc 2 455 10
	movq	-16(%rbp), %rax
	.loc 2 456 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	make_id_equals_comment, .-make_id_equals_comment
	.section	.rodata
.LC52:
	.string	"term="
.LC53:
	.string	"exit="
.LC54:
	.string	"%s%d %s%d"
	.text
	.type	print_deadprocs, @function
print_deadprocs:
.LFB68:
	.loc 2 460 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	.loc 2 460 1
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	.loc 2 462 19
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	make_id_equals_comment
	movq	%rax, -64(%rbp)
	.loc 2 463 3
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movslq	%eax, %rdx
	leaq	-52(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 465 7
	movq	exitstr.7142(%rip), %rax
	.loc 2 465 6
	testq	%rax, %rax
	jne	.L74
	.loc 2 466 32
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	.loc 2 466 24
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 2 468 34
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	.loc 2 468 26
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 468 24
	addq	%rbx, %rax
	.loc 2 466 15
	addq	$14, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 466 13
	movq	%rax, exitstr.7142(%rip)
.L74:
	.loc 2 472 24
	movq	-72(%rbp), %rax
	movzwl	334(%rax), %eax
	.loc 2 471 3
	movswl	%ax, %r13d
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %r12
	.loc 2 471 46
	movq	-72(%rbp), %rax
	movzwl	332(%rax), %eax
	.loc 2 471 3
	movswl	%ax, %ebx
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	exitstr.7142(%rip), %rax
	movl	%r13d, %r9d
	movq	%r12, %r8
	movl	%ebx, %ecx
	leaq	.LC54(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 476 3
	movq	exitstr.7142(%rip), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	time_string
	movq	%rax, %rdx
	.loc 2 476 62
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	.loc 2 476 3
	pushq	%rbx
	pushq	-64(%rbp)
	leaq	-52(%rbp), %rax
	pushq	%rax
	leaq	.LC16(%rip), %rax
	pushq	%rax
	movq	%rdx, %r9
	movq	%rcx, %r8
	movl	$32, %ecx
	movl	$32, %edx
	leaq	.LC16(%rip), %rsi
	movl	$-1, %edi
	call	print_line
	addq	$32, %rsp
	.loc 2 478 3
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 479 1
	nop
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L75
	call	__stack_chk_fail@PLT
.L75:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	print_deadprocs, .-print_deadprocs
	.section	.rodata
.LC55:
	.string	"LOGIN"
	.text
	.type	print_login, @function
print_login:
.LFB69:
	.loc 2 483 1
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
	movq	%rdi, -56(%rbp)
	.loc 2 483 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 484 19
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	make_id_equals_comment
	movq	%rax, -48(%rbp)
	.loc 2 485 3
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	movslq	%eax, %rdx
	leaq	-36(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 489 3
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	time_string
	movq	%rax, %rbx
	.loc 2 489 70
	movq	-56(%rbp), %rax
	leaq	8(%rax), %r12
	.loc 2 489 19
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 489 3
	leaq	.LC16(%rip), %rax
	pushq	%rax
	pushq	-48(%rbp)
	leaq	-36(%rbp), %rax
	pushq	%rax
	leaq	.LC16(%rip), %rax
	pushq	%rax
	movq	%rbx, %r9
	movq	%r12, %r8
	movl	$32, %ecx
	movl	$32, %edx
	movl	$-1, %edi
	call	print_line
	addq	$32, %rsp
	.loc 2 491 3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 492 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L77
	call	__stack_chk_fail@PLT
.L77:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	print_login, .-print_login
	.type	print_initspawn, @function
print_initspawn:
.LFB70:
	.loc 2 496 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 496 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 497 19
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	make_id_equals_comment
	movq	%rax, -32(%rbp)
	.loc 2 498 3
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movslq	%eax, %rdx
	leaq	-20(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 500 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	time_string
	movq	%rax, %rdx
	.loc 2 500 62
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rcx
	.loc 2 500 3
	leaq	.LC16(%rip), %rax
	pushq	%rax
	pushq	-32(%rbp)
	leaq	-20(%rbp), %rax
	pushq	%rax
	leaq	.LC16(%rip), %rax
	pushq	%rax
	movq	%rdx, %r9
	movq	%rcx, %r8
	movl	$32, %ecx
	movl	$32, %edx
	leaq	.LC16(%rip), %rsi
	movl	$-1, %edi
	call	print_line
	addq	$32, %rsp
	.loc 2 502 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 503 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L79
	call	__stack_chk_fail@PLT
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	print_initspawn, .-print_initspawn
	.section	.rodata
.LC56:
	.string	"clock change"
	.text
	.type	print_clockchange, @function
print_clockchange:
.LFB71:
	.loc 2 507 1
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
	movq	%rdi, -24(%rbp)
	.loc 2 509 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	time_string
	movq	%rax, %rbx
	.loc 2 509 32
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	.loc 2 509 3
	leaq	.LC16(%rip), %rdx
	pushq	%rdx
	leaq	.LC16(%rip), %rdx
	pushq	%rdx
	leaq	.LC16(%rip), %rdx
	pushq	%rdx
	leaq	.LC16(%rip), %rdx
	pushq	%rdx
	movq	%rbx, %r9
	movq	%rax, %r8
	movl	$-1, %ecx
	movl	$32, %edx
	leaq	.LC16(%rip), %rsi
	movl	$-1, %edi
	call	print_line
	addq	$32, %rsp
	.loc 2 511 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	print_clockchange, .-print_clockchange
	.section	.rodata
.LC57:
	.string	"run-level"
.LC58:
	.string	"%s %c"
.LC59:
	.string	"last="
.LC60:
	.string	"%s%c"
	.text
	.type	print_runlevel, @function
print_runlevel:
.LFB72:
	.loc 2 515 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	.loc 2 517 24
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 517 42
	leal	255(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$8, %eax
	.loc 2 517 17
	movb	%al, -18(%rbp)
	.loc 2 518 24
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 518 42
	cltd
	shrl	$24, %edx
	addl	%edx, %eax
	movzbl	%al, %eax
	subl	%edx, %eax
	.loc 2 518 17
	movb	%al, -17(%rbp)
	.loc 2 520 7
	movq	runlevline.7161(%rip), %rax
	.loc 2 520 6
	testq	%rax, %rax
	jne	.L82
	.loc 2 521 35
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	.loc 2 521 27
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 521 18
	addq	$3, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 521 16
	movq	%rax, runlevline.7161(%rip)
.L82:
	.loc 2 522 3
	movzbl	-17(%rbp), %ebx
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	runlevline.7161(%rip), %rax
	movl	%ebx, %ecx
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 524 7
	movq	comment.7162(%rip), %rax
	.loc 2 524 6
	testq	%rax, %rax
	jne	.L83
	.loc 2 525 32
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	.loc 2 525 24
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 525 15
	addq	$2, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 525 13
	movq	%rax, comment.7162(%rip)
.L83:
	.loc 2 526 3
	cmpb	$78, -18(%rbp)
	je	.L84
	.loc 2 526 3 is_stmt 0 discriminator 1
	movzbl	-18(%rbp), %ebx
	jmp	.L85
.L84:
	.loc 2 526 3 discriminator 2
	movl	$83, %ebx
.L85:
	.loc 2 526 3 discriminator 4
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	comment.7162(%rip), %rax
	movl	%ebx, %ecx
	leaq	.LC60(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 2 529 23 is_stmt 1 discriminator 4
	movzbl	-18(%rbp), %eax
	movl	%eax, %edi
	call	c_isprint@PLT
	.loc 2 528 3 discriminator 4
	testb	%al, %al
	je	.L86
	.loc 2 528 3 is_stmt 0 discriminator 1
	movq	comment.7162(%rip), %rbx
	jmp	.L87
.L86:
	.loc 2 528 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L87:
	.loc 2 528 3 discriminator 4
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	time_string
	movq	runlevline.7161(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	pushq	%rdx
	pushq	%rbx
	leaq	.LC16(%rip), %rdx
	pushq	%rdx
	leaq	.LC16(%rip), %rdx
	pushq	%rdx
	movq	%rax, %r9
	movq	%rcx, %r8
	movl	$-1, %ecx
	movl	$32, %edx
	leaq	.LC16(%rip), %rsi
	movl	$-1, %edi
	call	print_line
	addq	$32, %rsp
	.loc 2 531 3 is_stmt 1 discriminator 4
	nop
	.loc 2 532 1 discriminator 4
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	print_runlevel, .-print_runlevel
	.section	.rodata
.LC61:
	.string	"%s%s"
.LC62:
	.string	" "
.LC63:
	.string	"\n# users=%lu\n"
	.text
	.type	list_entries_who, @function
list_entries_who:
.LFB73:
	.loc 2 538 1
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
	.loc 2 539 21
	movq	$0, -24(%rbp)
	.loc 2 540 15
	leaq	.LC16(%rip), %rax
	movq	%rax, -16(%rbp)
	.loc 2 542 9
	jmp	.L90
.L92:
	.loc 2 544 11
	movq	-48(%rbp), %rax
	movzbl	44(%rax), %eax
	.loc 2 544 10
	testb	%al, %al
	je	.L91
	.loc 2 544 11 discriminator 1
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$7, %ax
	jne	.L91
.LBB6:
	.loc 2 548 26
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	extract_trimmed_name@PLT
	movq	%rax, -8(%rbp)
	.loc 2 550 11
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC61(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 551 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 552 21
	leaq	.LC62(%rip), %rax
	movq	%rax, -16(%rbp)
	.loc 2 553 18
	addq	$1, -24(%rbp)
.L91:
.LBE6:
	.loc 2 555 15
	addq	$384, -48(%rbp)
.L90:
	.loc 2 542 11
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 2 542 9
	testq	%rax, %rax
	jne	.L92
	.loc 2 557 11
	leaq	.LC63(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 557 3
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 558 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	list_entries_who, .-list_entries_who
	.section	.rodata
.LC64:
	.string	"EXIT"
.LC65:
	.string	"COMMENT"
.LC66:
	.string	"PID"
.LC67:
	.string	"IDLE"
.LC68:
	.string	"TIME"
.LC69:
	.string	"LINE"
.LC70:
	.string	"NAME"
	.text
	.type	print_heading, @function
print_heading:
.LFB74:
	.loc 2 562 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	.loc 2 564 39
	leaq	.LC64(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %r14
	.loc 2 564 25
	leaq	.LC65(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %r13
	.loc 2 564 15
	leaq	.LC66(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %r12
	.loc 2 563 61
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 563 50
	leaq	.LC68(%rip), %rdi
	call	gettext@PLT
	movq	%rax, -56(%rbp)
	.loc 2 563 39
	leaq	.LC69(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %r15
	.loc 2 563 19
	leaq	.LC70(%rip), %rdi
	call	gettext@PLT
	.loc 2 563 3
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	-56(%rbp), %r9
	movq	%r15, %r8
	movl	$-1, %ecx
	movl	$32, %edx
	movq	%rax, %rsi
	movl	$-1, %edi
	call	print_line
	addq	$32, %rsp
	.loc 2 565 1
	nop
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	print_heading, .-print_heading
	.section	.rodata
.LC71:
	.string	"/dev/"
	.text
	.type	scan_entries, @function
scan_entries:
.LFB75:
	.loc 2 570 1
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
	.loc 2 571 9
	movq	$0, -16(%rbp)
	.loc 2 572 10
	movabsq	$-9223372036854775808, %rax
	movq	%rax, -8(%rbp)
	.loc 2 574 7
	movzbl	include_heading(%rip), %eax
	.loc 2 574 6
	testb	%al, %al
	je	.L95
	.loc 2 575 5
	call	print_heading
.L95:
	.loc 2 577 7
	movzbl	my_line_only(%rip), %eax
	.loc 2 577 6
	testb	%al, %al
	je	.L99
	.loc 2 579 19
	movl	$0, %edi
	call	ttyname@PLT
	movq	%rax, -16(%rbp)
	.loc 2 580 10
	cmpq	$0, -16(%rbp)
	je	.L110
	.loc 2 582 11
	movq	-16(%rbp), %rax
	movl	$5, %edx
	leaq	.LC71(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 2 582 10
	testl	%eax, %eax
	jne	.L99
	.loc 2 583 19
	addq	$5, -16(%rbp)
	.loc 2 586 9
	jmp	.L99
.L109:
	.loc 2 588 11
	movzbl	my_line_only(%rip), %eax
	xorl	$1, %eax
	.loc 2 588 10
	testb	%al, %al
	jne	.L100
	.loc 2 589 14
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 2 589 11
	testl	%eax, %eax
	jne	.L101
.L100:
	.loc 2 592 15
	movzbl	need_users(%rip), %eax
	.loc 2 592 14
	testb	%al, %al
	je	.L102
	.loc 2 592 29 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	44(%rax), %eax
	.loc 2 592 26 discriminator 1
	testb	%al, %al
	je	.L102
	.loc 2 592 29 discriminator 2
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$7, %ax
	jne	.L102
	.loc 2 593 13
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_user
	jmp	.L101
.L102:
	.loc 2 594 20
	movzbl	need_runlevel(%rip), %eax
	.loc 2 594 19
	testb	%al, %al
	je	.L103
	.loc 2 594 37 discriminator 1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 2 594 34 discriminator 1
	cmpw	$1, %ax
	jne	.L103
	.loc 2 595 13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_runlevel
	jmp	.L101
.L103:
	.loc 2 596 20
	movzbl	need_boottime(%rip), %eax
	.loc 2 596 19
	testb	%al, %al
	je	.L104
	.loc 2 596 37 discriminator 1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 2 596 34 discriminator 1
	cmpw	$2, %ax
	jne	.L104
	.loc 2 597 13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_boottime
	jmp	.L101
.L104:
	.loc 2 601 20
	movzbl	need_clockchange(%rip), %eax
	.loc 2 601 19
	testb	%al, %al
	je	.L105
	.loc 2 601 40 discriminator 1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 2 601 37 discriminator 1
	cmpw	$3, %ax
	jne	.L105
	.loc 2 602 13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_clockchange
	jmp	.L101
.L105:
	.loc 2 603 20
	movzbl	need_initspawn(%rip), %eax
	.loc 2 603 19
	testb	%al, %al
	je	.L106
	.loc 2 603 38 discriminator 1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 2 603 35 discriminator 1
	cmpw	$5, %ax
	jne	.L106
	.loc 2 604 13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_initspawn
	jmp	.L101
.L106:
	.loc 2 605 20
	movzbl	need_login(%rip), %eax
	.loc 2 605 19
	testb	%al, %al
	je	.L107
	.loc 2 605 34 discriminator 1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 2 605 31 discriminator 1
	cmpw	$6, %ax
	jne	.L107
	.loc 2 606 13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_login
	jmp	.L101
.L107:
	.loc 2 607 20
	movzbl	need_deadprocs(%rip), %eax
	.loc 2 607 19
	testb	%al, %al
	je	.L101
	.loc 2 607 38 discriminator 1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 2 607 35 discriminator 1
	cmpw	$8, %ax
	jne	.L101
	.loc 2 608 13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_deadprocs
.L101:
	.loc 2 611 11
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 2 611 10
	cmpw	$2, %ax
	jne	.L108
	.loc 2 612 20
	movq	-32(%rbp), %rax
	movl	340(%rax), %eax
	.loc 2 612 18
	cltq
	movq	%rax, -8(%rbp)
.L108:
	.loc 2 614 15
	addq	$384, -32(%rbp)
.L99:
	.loc 2 586 11
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 586 9
	testq	%rax, %rax
	jne	.L109
	jmp	.L94
.L110:
	.loc 2 581 9
	nop
.L94:
	.loc 2 616 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	scan_entries, .-scan_entries
	.section	.rodata
.LC72:
	.string	"%s"
	.text
	.type	who, @function
who:
.LFB76:
	.loc 2 622 1
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
	movl	%esi, -60(%rbp)
	.loc 2 622 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 626 7
	movl	-60(%rbp), %ecx
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	read_utmp@PLT
	.loc 2 626 6
	testl	%eax, %eax
	je	.L112
.LBB7:
	.loc 2 627 5
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC72(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L112:
.LBE7:
	.loc 2 629 7
	movzbl	short_list(%rip), %eax
	.loc 2 629 6
	testb	%al, %al
	je	.L113
	.loc 2 630 5
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_entries_who
	jmp	.L114
.L113:
	.loc 2 632 5
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	scan_entries
.L114:
	.loc 2 634 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 635 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L115
	call	__stack_chk_fail@PLT
.L115:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	who, .-who
	.section	.rodata
	.align 8
.LC73:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC74:
	.string	"Usage: %s [OPTION]... [ FILE | ARG1 ARG2 ]\n"
	.align 8
.LC75:
	.string	"Print information about users who are currently logged in.\n"
	.align 8
.LC76:
	.string	"\n  -a, --all         same as -b -d --login -p -r -t -T -u\n  -b, --boot        time of last system boot\n  -d, --dead        print dead processes\n  -H, --heading     print line of column headings\n"
	.align 8
.LC77:
	.string	"  -l, --login       print system login processes\n"
	.align 8
.LC78:
	.string	"      --lookup      attempt to canonicalize hostnames via DNS\n  -m                only hostname and user associated with stdin\n  -p, --process     print active processes spawned by init\n"
	.align 8
.LC79:
	.string	"  -q, --count       all login names and number of users logged on\n  -r, --runlevel    print current runlevel\n  -s, --short       print only name, line, and time (default)\n  -t, --time        print last system clock change\n"
	.align 8
.LC80:
	.string	"  -T, -w, --mesg    add user's message status as +, - or ?\n  -u, --users       list users logged in\n      --message     same as -T\n      --writable    same as -T\n"
	.align 8
.LC81:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC82:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC83:
	.string	"\nIf FILE is not specified, use %s.  %s as FILE is common.\nIf ARG1 ARG2 given, -m presumed: 'am i' or 'mom likes' are usual.\n"
.LC84:
	.string	"/var/log/wtmp"
.LC85:
	.string	"/var/run/utmp"
.LC86:
	.string	"who"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB77:
	.loc 2 639 1
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
	.loc 2 640 6
	cmpl	$0, -20(%rbp)
	je	.L117
	.loc 2 641 5
	movq	program_name(%rip), %rbx
	leaq	.LC73(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L118
.L117:
	.loc 2 644 7
	movq	program_name(%rip), %rbx
	.loc 2 644 15
	leaq	.LC74(%rip), %rdi
	call	gettext@PLT
	.loc 2 644 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 645 7
	movq	stdout(%rip), %rbx
	leaq	.LC75(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 648 7
	movq	stdout(%rip), %rbx
	leaq	.LC76(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 655 7
	movq	stdout(%rip), %rbx
	leaq	.LC77(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 658 7
	movq	stdout(%rip), %rbx
	leaq	.LC78(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 663 7
	movq	stdout(%rip), %rbx
	leaq	.LC79(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 669 7
	movq	stdout(%rip), %rbx
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 675 7
	movq	stdout(%rip), %rbx
	leaq	.LC81(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 676 7
	movq	stdout(%rip), %rbx
	leaq	.LC82(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 677 15
	leaq	.LC83(%rip), %rdi
	call	gettext@PLT
	.loc 2 677 7
	leaq	.LC84(%rip), %rdx
	leaq	.LC85(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 682 7
	leaq	.LC86(%rip), %rdi
	call	emit_ancillary_info
.L118:
	.loc 2 684 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE77:
	.size	usage, .-usage
	.section	.rodata
.LC87:
	.string	"/usr/local/share/locale"
.LC88:
	.string	"David MacKenzie"
.LC89:
	.string	"Joseph Arceneaux"
.LC90:
	.string	"Michael Stone"
.LC91:
	.string	"abdlmpqrstuwHT"
.LC92:
	.string	"%Y-%m-%d %H:%M"
.LC93:
	.string	"%b %e %H:%M"
.LC94:
	.string	"extra operand %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB78:
	.loc 2 689 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 691 8
	movb	$1, -21(%rbp)
	.loc 2 694 3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 695 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 696 3
	leaq	.LC87(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 697 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 699 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 701 9
	jmp	.L120
.L140:
	.loc 2 704 7
	cmpl	$128, -20(%rbp)
	jg	.L121
	cmpl	$72, -20(%rbp)
	jge	.L122
	cmpl	$-131, -20(%rbp)
	je	.L123
	cmpl	$-130, -20(%rbp)
	je	.L124
	jmp	.L121
.L122:
	movl	-20(%rbp), %eax
	subl	$72, %eax
	cmpl	$56, %eax
	ja	.L121
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L126(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L126(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L126:
	.long	.L139-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L127-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L138-.L126
	.long	.L137-.L126
	.long	.L121-.L126
	.long	.L136-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L135-.L126
	.long	.L134-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L133-.L126
	.long	.L132-.L126
	.long	.L131-.L126
	.long	.L130-.L126
	.long	.L129-.L126
	.long	.L128-.L126
	.long	.L121-.L126
	.long	.L127-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L121-.L126
	.long	.L125-.L126
	.text
.L138:
	.loc 2 707 25
	movb	$1, need_boottime(%rip)
	.loc 2 708 26
	movb	$1, need_deadprocs(%rip)
	.loc 2 709 22
	movb	$1, need_login(%rip)
	.loc 2 710 26
	movb	$1, need_initspawn(%rip)
	.loc 2 711 25
	movb	$1, need_runlevel(%rip)
	.loc 2 712 28
	movb	$1, need_clockchange(%rip)
	.loc 2 713 22
	movb	$1, need_users(%rip)
	.loc 2 714 24
	movb	$1, include_mesg(%rip)
	.loc 2 715 24
	movb	$1, include_idle(%rip)
	.loc 2 716 24
	movb	$1, include_exit(%rip)
	.loc 2 717 23
	movb	$0, -21(%rbp)
	.loc 2 718 11
	jmp	.L120
.L137:
	.loc 2 721 25
	movb	$1, need_boottime(%rip)
	.loc 2 722 23
	movb	$0, -21(%rbp)
	.loc 2 723 11
	jmp	.L120
.L136:
	.loc 2 726 26
	movb	$1, need_deadprocs(%rip)
	.loc 2 727 24
	movb	$1, include_idle(%rip)
	.loc 2 728 24
	movb	$1, include_exit(%rip)
	.loc 2 729 23
	movb	$0, -21(%rbp)
	.loc 2 730 11
	jmp	.L120
.L139:
	.loc 2 733 27
	movb	$1, include_heading(%rip)
	.loc 2 734 11
	jmp	.L120
.L135:
	.loc 2 737 22
	movb	$1, need_login(%rip)
	.loc 2 738 24
	movb	$1, include_idle(%rip)
	.loc 2 739 23
	movb	$0, -21(%rbp)
	.loc 2 740 11
	jmp	.L120
.L134:
	.loc 2 743 24
	movb	$1, my_line_only(%rip)
	.loc 2 744 11
	jmp	.L120
.L133:
	.loc 2 747 26
	movb	$1, need_initspawn(%rip)
	.loc 2 748 23
	movb	$0, -21(%rbp)
	.loc 2 749 11
	jmp	.L120
.L132:
	.loc 2 752 22
	movb	$1, short_list(%rip)
	.loc 2 753 11
	jmp	.L120
.L131:
	.loc 2 756 25
	movb	$1, need_runlevel(%rip)
	.loc 2 757 24
	movb	$1, include_idle(%rip)
	.loc 2 758 23
	movb	$0, -21(%rbp)
	.loc 2 759 11
	jmp	.L120
.L130:
	.loc 2 762 24
	movb	$1, short_output(%rip)
	.loc 2 763 11
	jmp	.L120
.L129:
	.loc 2 766 28
	movb	$1, need_clockchange(%rip)
	.loc 2 767 23
	movb	$0, -21(%rbp)
	.loc 2 768 11
	jmp	.L120
.L127:
	.loc 2 772 24
	movb	$1, include_mesg(%rip)
	.loc 2 773 11
	jmp	.L120
.L128:
	.loc 2 776 22
	movb	$1, need_users(%rip)
	.loc 2 777 24
	movb	$1, include_idle(%rip)
	.loc 2 778 23
	movb	$0, -21(%rbp)
	.loc 2 779 11
	jmp	.L120
.L125:
	.loc 2 782 21
	movb	$1, do_lookup(%rip)
	.loc 2 783 11
	jmp	.L120
.L124:
	.loc 2 785 9
	movl	$0, %edi
	call	usage
.L123:
	.loc 2 787 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	pushq	$0
	leaq	.LC90(%rip), %rcx
	pushq	%rcx
	leaq	.LC88(%rip), %r9
	leaq	.LC89(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC86(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L121:
	.loc 2 790 11
	movl	$1, %edi
	call	usage
.L120:
	.loc 2 701 18
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC91(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -20(%rbp)
	.loc 2 701 9
	cmpl	$-1, -20(%rbp)
	jne	.L140
	.loc 2 794 6
	cmpb	$0, -21(%rbp)
	je	.L141
	.loc 2 796 18
	movb	$1, need_users(%rip)
	.loc 2 797 20
	movb	$1, short_output(%rip)
.L141:
	.loc 2 800 7
	movzbl	include_exit(%rip), %eax
	.loc 2 800 6
	testb	%al, %al
	je	.L142
	.loc 2 802 20
	movb	$0, short_output(%rip)
.L142:
	.loc 2 805 7
	movl	$2, %edi
	call	hard_locale@PLT
	.loc 2 805 6
	testb	%al, %al
	je	.L143
	.loc 2 807 19
	leaq	.LC92(%rip), %rax
	movq	%rax, time_format(%rip)
	.loc 2 808 25
	movl	$16, time_format_width(%rip)
	jmp	.L144
.L143:
	.loc 2 812 19
	leaq	.LC93(%rip), %rax
	movq	%rax, time_format(%rip)
	.loc 2 813 25
	movl	$12, time_format_width(%rip)
.L144:
	.loc 2 816 16
	movl	optind(%rip), %eax
	movl	-36(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 816 3
	cmpl	$2, %eax
	je	.L145
	cmpl	$2, %eax
	jg	.L146
	testl	%eax, %eax
	jg	.L147
	cmpl	$-1, %eax
	jge	.L148
	jmp	.L146
.L147:
	cmpl	$1, %eax
	je	.L149
	jmp	.L146
.L145:
	.loc 2 819 20
	movb	$1, my_line_only(%rip)
.L148:
	.loc 2 823 7
	movl	$1, %esi
	leaq	.LC85(%rip), %rdi
	call	who
	.loc 2 824 7
	jmp	.L150
.L149:
	.loc 2 827 16
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 827 7
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	who
	.loc 2 828 7
	jmp	.L150
.L146:
	.loc 2 831 54
	movl	optind(%rip), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 831 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 831 20
	leaq	.LC94(%rip), %rdi
	call	gettext@PLT
	.loc 2 831 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 832 7
	movl	$1, %edi
	call	usage
.L150:
	.loc 2 835 10
	movl	$0, %eax
	.loc 2 836 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	main, .-main
	.data
	.align 8
	.type	now.7079, @object
	.size	now.7079, 8
now.7079:
	.quad	-9223372036854775808
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.7082, @object
	.size	__PRETTY_FUNCTION__.7082, 12
__PRETTY_FUNCTION__.7082:
	.string	"idle_string"
	.local	idle_hhmm.7081
	.comm	idle_hhmm.7081,6,1
	.local	buf.7086
	.comm	buf.7086,33,32
	.data
	.type	mesg.7101, @object
	.size	mesg.7101, 3
mesg.7101:
	.string	" x"
	.local	hostlen.7123
	.comm	hostlen.7123,8,8
	.local	hoststr.7122
	.comm	hoststr.7122,8,8
	.local	exitstr.7142
	.comm	exitstr.7142,8,8
	.local	runlevline.7161
	.comm	runlevline.7161,8,8
	.local	comment.7162
	.comm	comment.7162,8,8
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
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 14 "./lib/sys/select.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 16 "/usr/include/time.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 18 "/usr/include/signal.h"
	.file 19 "/usr/include/unistd.h"
	.file 20 "/usr/include/errno.h"
	.file 21 "src/version.h"
	.file 22 "./lib/exitfail.h"
	.file 23 "/usr/include/stdint.h"
	.file 24 "./lib/timespec.h"
	.file 25 "./lib/version-etc.h"
	.file 26 "./lib/progname.h"
	.file 27 "./lib/quotearg.h"
	.file 28 "/usr/include/x86_64-linux-gnu/bits/utmpx.h"
	.file 29 "./lib/readutmp.h"
	.file 30 "./lib/error.h"
	.file 31 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1566
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF257
	.byte	0xc
	.long	.LASF258
	.long	.LASF259
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
	.long	0x44
	.uleb128 0x4
	.long	0x39
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x6
	.long	0x44
	.uleb128 0x2
	.long	.LASF1
	.byte	0x3
	.byte	0x32
	.byte	0xc
	.long	0x5c
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.long	0x5c
	.uleb128 0x2
	.long	.LASF3
	.byte	0x3
	.byte	0x37
	.byte	0xc
	.long	0x5c
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
	.byte	0x3b
	.byte	0xc
	.long	0x5c
	.uleb128 0x9
	.long	.LASF31
	.byte	0x20
	.byte	0x4
	.byte	0x32
	.byte	0x8
	.long	0xc2
	.uleb128 0xa
	.long	.LASF5
	.byte	0x4
	.byte	0x34
	.byte	0xf
	.long	0xc7
	.byte	0
	.uleb128 0xa
	.long	.LASF6
	.byte	0x4
	.byte	0x37
	.byte	0x7
	.long	0x5c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF7
	.byte	0x4
	.byte	0x38
	.byte	0x8
	.long	0xd7
	.byte	0x10
	.uleb128 0xb
	.string	"val"
	.byte	0x4
	.byte	0x39
	.byte	0x7
	.long	0x5c
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.long	0x80
	.uleb128 0x3
	.byte	0x8
	.long	0x4b
	.uleb128 0x6
	.long	0xc7
	.uleb128 0x4
	.long	0xc7
	.uleb128 0x3
	.byte	0x8
	.long	0x5c
	.uleb128 0xc
	.long	.LASF14
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0xe9
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0xd
	.byte	0x8
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF11
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF13
	.uleb128 0xc
	.long	.LASF15
	.byte	0x6
	.byte	0x29
	.byte	0x14
	.long	0x5c
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF17
	.byte	0x6
	.byte	0x48
	.byte	0x12
	.long	0x121
	.uleb128 0xc
	.long	.LASF18
	.byte	0x6
	.byte	0x91
	.byte	0x19
	.long	0xe9
	.uleb128 0xc
	.long	.LASF19
	.byte	0x6
	.byte	0x92
	.byte	0x19
	.long	0xf0
	.uleb128 0xc
	.long	.LASF20
	.byte	0x6
	.byte	0x93
	.byte	0x19
	.long	0xf0
	.uleb128 0xc
	.long	.LASF21
	.byte	0x6
	.byte	0x94
	.byte	0x19
	.long	0xe9
	.uleb128 0xc
	.long	.LASF22
	.byte	0x6
	.byte	0x96
	.byte	0x1a
	.long	0xf0
	.uleb128 0xc
	.long	.LASF23
	.byte	0x6
	.byte	0x97
	.byte	0x1b
	.long	0xe9
	.uleb128 0xc
	.long	.LASF24
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0x121
	.uleb128 0xc
	.long	.LASF25
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0x121
	.uleb128 0xc
	.long	.LASF26
	.byte	0x6
	.byte	0x9a
	.byte	0x19
	.long	0x5c
	.uleb128 0xc
	.long	.LASF27
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0x121
	.uleb128 0xc
	.long	.LASF28
	.byte	0x6
	.byte	0xae
	.byte	0x1d
	.long	0x121
	.uleb128 0xc
	.long	.LASF29
	.byte	0x6
	.byte	0xb3
	.byte	0x1c
	.long	0x121
	.uleb128 0xc
	.long	.LASF30
	.byte	0x6
	.byte	0xc4
	.byte	0x21
	.long	0x121
	.uleb128 0xe
	.long	0x44
	.long	0x1e0
	.uleb128 0xf
	.long	0xe9
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF32
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x367
	.uleb128 0xa
	.long	.LASF33
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x5c
	.byte	0
	.uleb128 0xa
	.long	.LASF34
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0xa
	.long	.LASF36
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0xa
	.long	.LASF40
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0xa
	.long	.LASF41
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0xa
	.long	.LASF42
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0xa
	.long	.LASF43
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0xa
	.long	.LASF44
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0xa
	.long	.LASF45
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x380
	.byte	0x60
	.uleb128 0xa
	.long	.LASF46
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x386
	.byte	0x68
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x5c
	.byte	0x70
	.uleb128 0xa
	.long	.LASF48
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x5c
	.byte	0x74
	.uleb128 0xa
	.long	.LASF49
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0x17c
	.byte	0x78
	.uleb128 0xa
	.long	.LASF50
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x100
	.byte	0x80
	.uleb128 0xa
	.long	.LASF51
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x107
	.byte	0x82
	.uleb128 0xa
	.long	.LASF52
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x38c
	.byte	0x83
	.uleb128 0xa
	.long	.LASF53
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x39c
	.byte	0x88
	.uleb128 0xa
	.long	.LASF54
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0x188
	.byte	0x90
	.uleb128 0xa
	.long	.LASF55
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x3a7
	.byte	0x98
	.uleb128 0xa
	.long	.LASF56
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x3b2
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF57
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x386
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF58
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0xf7
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF59
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0xdd
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF60
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x5c
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF61
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x3b8
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF62
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x1e0
	.uleb128 0x10
	.long	.LASF260
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF63
	.uleb128 0x3
	.byte	0x8
	.long	0x37b
	.uleb128 0x3
	.byte	0x8
	.long	0x1e0
	.uleb128 0xe
	.long	0x44
	.long	0x39c
	.uleb128 0xf
	.long	0xe9
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x373
	.uleb128 0x11
	.long	.LASF64
	.uleb128 0x3
	.byte	0x8
	.long	0x3a2
	.uleb128 0x11
	.long	.LASF65
	.uleb128 0x3
	.byte	0x8
	.long	0x3ad
	.uleb128 0xe
	.long	0x44
	.long	0x3c8
	.uleb128 0xf
	.long	0xe9
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x3d4
	.uleb128 0x3
	.byte	0x8
	.long	0x367
	.uleb128 0x2
	.long	.LASF67
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x3d4
	.uleb128 0x2
	.long	.LASF68
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x3d4
	.uleb128 0x2
	.long	.LASF69
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0x5c
	.uleb128 0xe
	.long	0xcd
	.long	0x409
	.uleb128 0x12
	.byte	0
	.uleb128 0x6
	.long	0x3fe
	.uleb128 0x2
	.long	.LASF70
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x409
	.uleb128 0x2
	.long	.LASF71
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0x5c
	.uleb128 0x2
	.long	.LASF72
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x409
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF73
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.long	.LASF74
	.uleb128 0xc
	.long	.LASF75
	.byte	0xb
	.byte	0x61
	.byte	0x11
	.long	0x194
	.uleb128 0xc
	.long	.LASF76
	.byte	0xc
	.byte	0x7
	.byte	0x12
	.long	0x1a0
	.uleb128 0x9
	.long	.LASF77
	.byte	0x10
	.byte	0xd
	.byte	0xa
	.byte	0x8
	.long	0x480
	.uleb128 0xa
	.long	.LASF78
	.byte	0xd
	.byte	0xc
	.byte	0xc
	.long	0x1a0
	.byte	0
	.uleb128 0xa
	.long	.LASF79
	.byte	0xd
	.byte	0x10
	.byte	0x15
	.long	0x1c4
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	.LASF80
	.byte	0xe
	.value	0x30c
	.byte	0x1
	.long	0x5c
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF81
	.uleb128 0xe
	.long	0x44
	.long	0x4a4
	.uleb128 0xf
	.long	0xe9
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	0x44
	.long	0x4b4
	.uleb128 0xf
	.long	0xe9
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"tm"
	.byte	0x38
	.byte	0xf
	.byte	0x7
	.byte	0x8
	.long	0x550
	.uleb128 0xa
	.long	.LASF82
	.byte	0xf
	.byte	0x9
	.byte	0x7
	.long	0x5c
	.byte	0
	.uleb128 0xa
	.long	.LASF83
	.byte	0xf
	.byte	0xa
	.byte	0x7
	.long	0x5c
	.byte	0x4
	.uleb128 0xa
	.long	.LASF84
	.byte	0xf
	.byte	0xb
	.byte	0x7
	.long	0x5c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF85
	.byte	0xf
	.byte	0xc
	.byte	0x7
	.long	0x5c
	.byte	0xc
	.uleb128 0xa
	.long	.LASF86
	.byte	0xf
	.byte	0xd
	.byte	0x7
	.long	0x5c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF87
	.byte	0xf
	.byte	0xe
	.byte	0x7
	.long	0x5c
	.byte	0x14
	.uleb128 0xa
	.long	.LASF88
	.byte	0xf
	.byte	0xf
	.byte	0x7
	.long	0x5c
	.byte	0x18
	.uleb128 0xa
	.long	.LASF89
	.byte	0xf
	.byte	0x10
	.byte	0x7
	.long	0x5c
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xf
	.byte	0x11
	.byte	0x7
	.long	0x5c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF91
	.byte	0xf
	.byte	0x14
	.byte	0xc
	.long	0x121
	.byte	0x28
	.uleb128 0xa
	.long	.LASF92
	.byte	0xf
	.byte	0x15
	.byte	0xf
	.long	0xc7
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.long	0x39
	.long	0x560
	.uleb128 0xf
	.long	0xe9
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF93
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x550
	.uleb128 0x2
	.long	.LASF94
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x5c
	.uleb128 0x2
	.long	.LASF95
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x121
	.uleb128 0x2
	.long	.LASF96
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x550
	.uleb128 0x2
	.long	.LASF97
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x5c
	.uleb128 0x2
	.long	.LASF98
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x121
	.uleb128 0x13
	.long	.LASF99
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x5c
	.uleb128 0x9
	.long	.LASF100
	.byte	0x90
	.byte	0x11
	.byte	0x2e
	.byte	0x8
	.long	0x686
	.uleb128 0xa
	.long	.LASF101
	.byte	0x11
	.byte	0x30
	.byte	0xd
	.long	0x134
	.byte	0
	.uleb128 0xa
	.long	.LASF102
	.byte	0x11
	.byte	0x35
	.byte	0xd
	.long	0x158
	.byte	0x8
	.uleb128 0xa
	.long	.LASF103
	.byte	0x11
	.byte	0x3d
	.byte	0xf
	.long	0x170
	.byte	0x10
	.uleb128 0xa
	.long	.LASF104
	.byte	0x11
	.byte	0x3e
	.byte	0xe
	.long	0x164
	.byte	0x18
	.uleb128 0xa
	.long	.LASF105
	.byte	0x11
	.byte	0x40
	.byte	0xd
	.long	0x140
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF106
	.byte	0x11
	.byte	0x41
	.byte	0xd
	.long	0x14c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF107
	.byte	0x11
	.byte	0x43
	.byte	0x9
	.long	0x5c
	.byte	0x24
	.uleb128 0xa
	.long	.LASF108
	.byte	0x11
	.byte	0x45
	.byte	0xd
	.long	0x134
	.byte	0x28
	.uleb128 0xa
	.long	.LASF109
	.byte	0x11
	.byte	0x4a
	.byte	0xd
	.long	0x17c
	.byte	0x30
	.uleb128 0xa
	.long	.LASF110
	.byte	0x11
	.byte	0x4e
	.byte	0x11
	.long	0x1ac
	.byte	0x38
	.uleb128 0xa
	.long	.LASF111
	.byte	0x11
	.byte	0x50
	.byte	0x10
	.long	0x1b8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF112
	.byte	0x11
	.byte	0x5b
	.byte	0x15
	.long	0x458
	.byte	0x48
	.uleb128 0xa
	.long	.LASF113
	.byte	0x11
	.byte	0x5c
	.byte	0x15
	.long	0x458
	.byte	0x58
	.uleb128 0xa
	.long	.LASF114
	.byte	0x11
	.byte	0x5d
	.byte	0x15
	.long	0x458
	.byte	0x68
	.uleb128 0xa
	.long	.LASF115
	.byte	0x11
	.byte	0x6a
	.byte	0x17
	.long	0x68b
	.byte	0x78
	.byte	0
	.uleb128 0x6
	.long	0x5b5
	.uleb128 0xe
	.long	0x1c4
	.long	0x69b
	.uleb128 0xf
	.long	0xe9
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.uleb128 0x3
	.byte	0x8
	.long	0x69b
	.uleb128 0xe
	.long	0xcd
	.long	0x6b2
	.uleb128 0xf
	.long	0xe9
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.long	0x6a2
	.uleb128 0x13
	.long	.LASF116
	.byte	0x12
	.value	0x11e
	.byte	0x1a
	.long	0x6b2
	.uleb128 0x13
	.long	.LASF117
	.byte	0x12
	.value	0x11f
	.byte	0x1a
	.long	0x6b2
	.uleb128 0x13
	.long	.LASF118
	.byte	0x13
	.value	0x21f
	.byte	0xf
	.long	0x6de
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0x13
	.long	.LASF119
	.byte	0x13
	.value	0x221
	.byte	0xf
	.long	0x6de
	.uleb128 0x2
	.long	.LASF120
	.byte	0x14
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF121
	.byte	0x14
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF122
	.byte	0x15
	.byte	0x1
	.byte	0x14
	.long	0xc7
	.uleb128 0x2
	.long	.LASF123
	.byte	0x16
	.byte	0x12
	.byte	0x15
	.long	0x63
	.uleb128 0xe
	.long	0x44
	.long	0x731
	.uleb128 0xf
	.long	0xe9
	.byte	0xff
	.byte	0
	.uleb128 0xc
	.long	.LASF124
	.byte	0x17
	.byte	0x65
	.byte	0x15
	.long	0x128
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xf0
	.byte	0x18
	.byte	0x29
	.byte	0x6
	.long	0x755
	.uleb128 0x17
	.long	.LASF125
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xf0
	.byte	0x18
	.byte	0x2a
	.byte	0x6
	.long	0x76a
	.uleb128 0x18
	.long	.LASF126
	.byte	0x9
	.byte	0
	.uleb128 0x19
	.byte	0x5
	.byte	0x4
	.long	0x5c
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x788
	.uleb128 0x1a
	.long	.LASF127
	.sleb128 -130
	.uleb128 0x1a
	.long	.LASF128
	.sleb128 -131
	.byte	0
	.uleb128 0xe
	.long	0x4b
	.long	0x793
	.uleb128 0x12
	.byte	0
	.uleb128 0x6
	.long	0x788
	.uleb128 0x2
	.long	.LASF129
	.byte	0x19
	.byte	0x19
	.byte	0x13
	.long	0x793
	.uleb128 0x2
	.long	.LASF130
	.byte	0x1a
	.byte	0x20
	.byte	0x14
	.long	0xc7
	.uleb128 0x1b
	.long	.LASF261
	.byte	0x7
	.byte	0x4
	.long	0xf0
	.byte	0x1b
	.byte	0x20
	.byte	0x6
	.long	0x805
	.uleb128 0x18
	.long	.LASF131
	.byte	0
	.uleb128 0x18
	.long	.LASF132
	.byte	0x1
	.uleb128 0x18
	.long	.LASF133
	.byte	0x2
	.uleb128 0x18
	.long	.LASF134
	.byte	0x3
	.uleb128 0x18
	.long	.LASF135
	.byte	0x4
	.uleb128 0x18
	.long	.LASF136
	.byte	0x5
	.uleb128 0x18
	.long	.LASF137
	.byte	0x6
	.uleb128 0x18
	.long	.LASF138
	.byte	0x7
	.uleb128 0x18
	.long	.LASF139
	.byte	0x8
	.uleb128 0x18
	.long	.LASF140
	.byte	0x9
	.uleb128 0x18
	.long	.LASF141
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	0x7b0
	.uleb128 0x13
	.long	.LASF142
	.byte	0x1b
	.value	0x10b
	.byte	0x1a
	.long	0x409
	.uleb128 0xe
	.long	0x805
	.long	0x822
	.uleb128 0x12
	.byte	0
	.uleb128 0x6
	.long	0x817
	.uleb128 0x13
	.long	.LASF143
	.byte	0x1b
	.value	0x10c
	.byte	0x21
	.long	0x822
	.uleb128 0x9
	.long	.LASF144
	.byte	0x4
	.byte	0x1c
	.byte	0x2a
	.byte	0x8
	.long	0x85c
	.uleb128 0xa
	.long	.LASF145
	.byte	0x1c
	.byte	0x2d
	.byte	0xf
	.long	0x10e
	.byte	0
	.uleb128 0xa
	.long	.LASF146
	.byte	0x1c
	.byte	0x2e
	.byte	0xf
	.long	0x10e
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.byte	0x8
	.byte	0x1c
	.byte	0x4b
	.byte	0x3
	.long	0x880
	.uleb128 0xa
	.long	.LASF78
	.byte	0x1c
	.byte	0x4d
	.byte	0xf
	.long	0x115
	.byte	0
	.uleb128 0xa
	.long	.LASF147
	.byte	0x1c
	.byte	0x4e
	.byte	0xf
	.long	0x115
	.byte	0x4
	.byte	0
	.uleb128 0x1d
	.long	.LASF148
	.value	0x180
	.byte	0x1c
	.byte	0x37
	.byte	0x8
	.long	0x923
	.uleb128 0xa
	.long	.LASF149
	.byte	0x1c
	.byte	0x39
	.byte	0xd
	.long	0x10e
	.byte	0
	.uleb128 0xa
	.long	.LASF150
	.byte	0x1c
	.byte	0x3a
	.byte	0xb
	.long	0x194
	.byte	0x4
	.uleb128 0xa
	.long	.LASF151
	.byte	0x1c
	.byte	0x3b
	.byte	0x8
	.long	0x4a4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF152
	.byte	0x1c
	.byte	0x3d
	.byte	0x8
	.long	0x1d0
	.byte	0x28
	.uleb128 0xa
	.long	.LASF153
	.byte	0x1c
	.byte	0x3f
	.byte	0x8
	.long	0x4a4
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF154
	.byte	0x1c
	.byte	0x41
	.byte	0x8
	.long	0x721
	.byte	0x4c
	.uleb128 0x1e
	.long	.LASF155
	.byte	0x1c
	.byte	0x43
	.byte	0x18
	.long	0x834
	.value	0x14c
	.uleb128 0x1e
	.long	.LASF156
	.byte	0x1c
	.byte	0x4a
	.byte	0xd
	.long	0x115
	.value	0x150
	.uleb128 0x1e
	.long	.LASF157
	.byte	0x1c
	.byte	0x4f
	.byte	0x5
	.long	0x85c
	.value	0x154
	.uleb128 0x1e
	.long	.LASF158
	.byte	0x1c
	.byte	0x54
	.byte	0xd
	.long	0x923
	.value	0x15c
	.uleb128 0x1e
	.long	.LASF115
	.byte	0x1c
	.byte	0x55
	.byte	0x8
	.long	0x3b8
	.value	0x16c
	.byte	0
	.uleb128 0xe
	.long	0x115
	.long	0x933
	.uleb128 0xf
	.long	0xe9
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF159
	.byte	0x1d
	.byte	0x92
	.byte	0x21
	.long	0x880
	.uleb128 0x6
	.long	0x933
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xf0
	.byte	0x1d
	.byte	0xd1
	.byte	0x3
	.long	0x95f
	.uleb128 0x18
	.long	.LASF160
	.byte	0x1
	.uleb128 0x18
	.long	.LASF161
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF162
	.byte	0x1e
	.byte	0x32
	.byte	0xf
	.long	0x69c
	.uleb128 0x2
	.long	.LASF163
	.byte	0x1e
	.byte	0x35
	.byte	0x15
	.long	0xf0
	.uleb128 0x2
	.long	.LASF164
	.byte	0x1e
	.byte	0x39
	.byte	0xc
	.long	0x5c
	.uleb128 0x11
	.long	.LASF165
	.uleb128 0x2
	.long	.LASF166
	.byte	0x1f
	.byte	0x19
	.byte	0x1f
	.long	0x983
	.uleb128 0x1f
	.long	.LASF168
	.byte	0x2
	.byte	0x66
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	do_lookup
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.long	.LASF167
	.uleb128 0x1f
	.long	.LASF169
	.byte	0x2
	.byte	0x6b
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	short_list
	.uleb128 0x1f
	.long	.LASF170
	.byte	0x2
	.byte	0x6e
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	short_output
	.uleb128 0x1f
	.long	.LASF171
	.byte	0x2
	.byte	0x73
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	include_idle
	.uleb128 0x1f
	.long	.LASF172
	.byte	0x2
	.byte	0x76
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	include_heading
	.uleb128 0x1f
	.long	.LASF173
	.byte	0x2
	.byte	0x7a
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	include_mesg
	.uleb128 0x1f
	.long	.LASF174
	.byte	0x2
	.byte	0x7d
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	include_exit
	.uleb128 0x1f
	.long	.LASF175
	.byte	0x2
	.byte	0x80
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	need_boottime
	.uleb128 0x1f
	.long	.LASF176
	.byte	0x2
	.byte	0x83
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	need_deadprocs
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x2
	.byte	0x86
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	need_login
	.uleb128 0x1f
	.long	.LASF178
	.byte	0x2
	.byte	0x89
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	need_initspawn
	.uleb128 0x1f
	.long	.LASF179
	.byte	0x2
	.byte	0x8c
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	need_clockchange
	.uleb128 0x1f
	.long	.LASF180
	.byte	0x2
	.byte	0x8f
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	need_runlevel
	.uleb128 0x1f
	.long	.LASF181
	.byte	0x2
	.byte	0x92
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	need_users
	.uleb128 0x1f
	.long	.LASF182
	.byte	0x2
	.byte	0x95
	.byte	0xd
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	my_line_only
	.uleb128 0x1f
	.long	.LASF183
	.byte	0x2
	.byte	0x99
	.byte	0x14
	.long	0xc7
	.uleb128 0x9
	.byte	0x3
	.quad	time_format
	.uleb128 0x1f
	.long	.LASF184
	.byte	0x2
	.byte	0x9a
	.byte	0xc
	.long	0x5c
	.uleb128 0x9
	.byte	0x3
	.quad	time_format_width
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xf0
	.byte	0x2
	.byte	0x9e
	.byte	0x1
	.long	0xb26
	.uleb128 0x18
	.long	.LASF185
	.byte	0x80
	.byte	0
	.uleb128 0xe
	.long	0xc2
	.long	0xb36
	.uleb128 0xf
	.long	0xe9
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.long	0xb26
	.uleb128 0x1f
	.long	.LASF186
	.byte	0x2
	.byte	0xa2
	.byte	0x1c
	.long	0xb36
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x20
	.long	.LASF191
	.byte	0x2
	.value	0x2b0
	.byte	0x1
	.long	0x5c
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0xbb5
	.uleb128 0x21
	.long	.LASF187
	.byte	0x2
	.value	0x2b0
	.byte	0xb
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.long	.LASF188
	.byte	0x2
	.value	0x2b0
	.byte	0x18
	.long	0x6de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF189
	.byte	0x2
	.value	0x2b2
	.byte	0x7
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LASF190
	.byte	0x2
	.value	0x2b3
	.byte	0x8
	.long	0x9aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.uleb128 0x23
	.long	.LASF192
	.byte	0x2
	.value	0x27e
	.byte	0x1
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0xbe5
	.uleb128 0x21
	.long	.LASF193
	.byte	0x2
	.value	0x27e
	.byte	0xc
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.string	"who"
	.byte	0x2
	.value	0x26d
	.byte	0x1
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0xc58
	.uleb128 0x21
	.long	.LASF194
	.byte	0x2
	.value	0x26d
	.byte	0x12
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF195
	.byte	0x2
	.value	0x26d
	.byte	0x20
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x22
	.long	.LASF196
	.byte	0x2
	.value	0x26f
	.byte	0xa
	.long	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF197
	.byte	0x2
	.value	0x270
	.byte	0x10
	.long	0xc58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x933
	.uleb128 0x26
	.long	.LASF198
	.byte	0x2
	.value	0x239
	.byte	0x1
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0xcbc
	.uleb128 0x27
	.string	"n"
	.byte	0x2
	.value	0x239
	.byte	0x16
	.long	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF197
	.byte	0x2
	.value	0x239
	.byte	0x2c
	.long	0xcbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF199
	.byte	0x2
	.value	0x23b
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF200
	.byte	0x2
	.value	0x23c
	.byte	0xa
	.long	0x44c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x93f
	.uleb128 0x28
	.long	.LASF262
	.byte	0x2
	.value	0x231
	.byte	0x1
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF201
	.byte	0x2
	.value	0x219
	.byte	0x1
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0xd5d
	.uleb128 0x27
	.string	"n"
	.byte	0x2
	.value	0x219
	.byte	0x1a
	.long	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF197
	.byte	0x2
	.value	0x219
	.byte	0x30
	.long	0xcbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF202
	.byte	0x2
	.value	0x21b
	.byte	0x15
	.long	0xe9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF203
	.byte	0x2
	.value	0x21c
	.byte	0xf
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x22
	.long	.LASF204
	.byte	0x2
	.value	0x222
	.byte	0x11
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF205
	.byte	0x2
	.value	0x202
	.byte	0x1
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0xddb
	.uleb128 0x21
	.long	.LASF206
	.byte	0x2
	.value	0x202
	.byte	0x24
	.long	0xcbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF207
	.byte	0x2
	.value	0x204
	.byte	0x10
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	runlevline.7161
	.uleb128 0x22
	.long	.LASF208
	.byte	0x2
	.value	0x204
	.byte	0x1d
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	comment.7162
	.uleb128 0x22
	.long	.LASF209
	.byte	0x2
	.value	0x205
	.byte	0x11
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x22
	.long	.LASF210
	.byte	0x2
	.value	0x206
	.byte	0x11
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x26
	.long	.LASF211
	.byte	0x2
	.value	0x1fa
	.byte	0x1
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0xe0b
	.uleb128 0x21
	.long	.LASF206
	.byte	0x2
	.value	0x1fa
	.byte	0x27
	.long	0xcbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x26
	.long	.LASF212
	.byte	0x2
	.value	0x1ef
	.byte	0x1
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0xe5b
	.uleb128 0x21
	.long	.LASF206
	.byte	0x2
	.value	0x1ef
	.byte	0x25
	.long	0xcbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF208
	.byte	0x2
	.value	0x1f1
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF213
	.byte	0x2
	.value	0x1f2
	.byte	0x3
	.long	0xe5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xe
	.long	0x44
	.long	0xe6b
	.uleb128 0xf
	.long	0xe9
	.byte	0xb
	.byte	0
	.uleb128 0x26
	.long	.LASF214
	.byte	0x2
	.value	0x1e2
	.byte	0x1
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0xebc
	.uleb128 0x21
	.long	.LASF206
	.byte	0x2
	.value	0x1e2
	.byte	0x21
	.long	0xcbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF208
	.byte	0x2
	.value	0x1e4
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF213
	.byte	0x2
	.value	0x1e5
	.byte	0x3
	.long	0xe5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x26
	.long	.LASF215
	.byte	0x2
	.value	0x1cb
	.byte	0x1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0xf26
	.uleb128 0x21
	.long	.LASF206
	.byte	0x2
	.value	0x1cb
	.byte	0x25
	.long	0xcbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF216
	.byte	0x2
	.value	0x1cd
	.byte	0x10
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	exitstr.7142
	.uleb128 0x22
	.long	.LASF208
	.byte	0x2
	.value	0x1ce
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF213
	.byte	0x2
	.value	0x1cf
	.byte	0x3
	.long	0xe5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x2a
	.long	.LASF229
	.byte	0x2
	.value	0x1c0
	.byte	0x1
	.long	0x39
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0xf88
	.uleb128 0x21
	.long	.LASF206
	.byte	0x2
	.value	0x1c0
	.byte	0x2c
	.long	0xcbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF217
	.byte	0x2
	.value	0x1c2
	.byte	0xa
	.long	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF208
	.byte	0x2
	.value	0x1c3
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"p"
	.byte	0x2
	.value	0x1c5
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF218
	.byte	0x2
	.value	0x1b9
	.byte	0x1
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0xfb8
	.uleb128 0x21
	.long	.LASF206
	.byte	0x2
	.value	0x1b9
	.byte	0x24
	.long	0xcbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x26
	.long	.LASF219
	.byte	0x2
	.value	0x14d
	.byte	0x1
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x10e2
	.uleb128 0x21
	.long	.LASF206
	.byte	0x2
	.value	0x14d
	.byte	0x20
	.long	0xcbc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x21
	.long	.LASF200
	.byte	0x2
	.value	0x14d
	.byte	0x31
	.long	0x44c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x22
	.long	.LASF220
	.byte	0x2
	.value	0x14f
	.byte	0xf
	.long	0x5b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x22
	.long	.LASF221
	.byte	0x2
	.value	0x150
	.byte	0xa
	.long	0x44c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x22
	.long	.LASF222
	.byte	0x2
	.value	0x151
	.byte	0x8
	.long	0x44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -561
	.uleb128 0x22
	.long	.LASF223
	.byte	0x2
	.value	0x152
	.byte	0x8
	.long	0x10e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -371
	.uleb128 0x22
	.long	.LASF224
	.byte	0x2
	.value	0x153
	.byte	0x10
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	hoststr.7122
	.uleb128 0x22
	.long	.LASF225
	.byte	0x2
	.value	0x155
	.byte	0x11
	.long	0xdd
	.uleb128 0x9
	.byte	0x3
	.quad	hostlen.7123
	.uleb128 0x22
	.long	.LASF226
	.byte	0x2
	.value	0x15b
	.byte	0x8
	.long	0x10f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2b
	.string	"p"
	.byte	0x2
	.value	0x15c
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x22
	.long	.LASF213
	.byte	0x2
	.value	0x15d
	.byte	0x3
	.long	0xe5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x29
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x22
	.long	.LASF154
	.byte	0x2
	.value	0x179
	.byte	0xc
	.long	0x1102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x22
	.long	.LASF227
	.byte	0x2
	.value	0x17a
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x22
	.long	.LASF228
	.byte	0x2
	.value	0x17b
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x44
	.long	0x10f2
	.uleb128 0xf
	.long	0xe9
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.long	0x44
	.long	0x1102
	.uleb128 0xf
	.long	0xe9
	.byte	0x25
	.byte	0
	.uleb128 0xe
	.long	0x44
	.long	0x1113
	.uleb128 0x2c
	.long	0xe9
	.value	0x100
	.byte	0
	.uleb128 0x2d
	.long	.LASF230
	.byte	0x2
	.value	0x13d
	.byte	0x1
	.long	0x9aa
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x1147
	.uleb128 0x21
	.long	.LASF231
	.byte	0x2
	.value	0x13d
	.byte	0x25
	.long	0x1147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x686
	.uleb128 0x2e
	.long	.LASF232
	.byte	0x2
	.byte	0xf4
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x1291
	.uleb128 0x2f
	.long	.LASF233
	.byte	0x2
	.byte	0xf4
	.byte	0x11
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.long	.LASF234
	.byte	0x2
	.byte	0xf4
	.byte	0x26
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF235
	.byte	0x2
	.byte	0xf4
	.byte	0x37
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF236
	.byte	0x2
	.byte	0xf5
	.byte	0x11
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2f
	.long	.LASF226
	.byte	0x2
	.byte	0xf5
	.byte	0x26
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF237
	.byte	0x2
	.byte	0xf6
	.byte	0x19
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF238
	.byte	0x2
	.byte	0xf6
	.byte	0x2f
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x30
	.string	"pid"
	.byte	0x2
	.byte	0xf6
	.byte	0x41
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF208
	.byte	0x2
	.byte	0xf7
	.byte	0x19
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF216
	.byte	0x2
	.byte	0xf7
	.byte	0x2e
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1f
	.long	.LASF222
	.byte	0x2
	.byte	0xf9
	.byte	0xf
	.long	0x1291
	.uleb128 0x9
	.byte	0x3
	.quad	mesg.7101
	.uleb128 0x31
	.string	"buf"
	.byte	0x2
	.byte	0xfa
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.long	.LASF239
	.byte	0x2
	.byte	0xfb
	.byte	0x8
	.long	0x494
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x1f
	.long	.LASF240
	.byte	0x2
	.byte	0xfc
	.byte	0x8
	.long	0x12a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x1f
	.long	.LASF241
	.byte	0x2
	.byte	0xfd
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"err"
	.byte	0x2
	.byte	0xfe
	.byte	0x7
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2b
	.string	"p"
	.byte	0x2
	.value	0x12f
	.byte	0xb
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x44
	.long	0x12a1
	.uleb128 0xf
	.long	0xe9
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0x44
	.long	0x12b1
	.uleb128 0xf
	.long	0xe9
	.byte	0xc
	.byte	0
	.uleb128 0x32
	.long	.LASF242
	.byte	0x2
	.byte	0xda
	.byte	0x1
	.long	0xc7
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x1315
	.uleb128 0x2f
	.long	.LASF206
	.byte	0x2
	.byte	0xda
	.byte	0x21
	.long	0xcbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"buf"
	.byte	0x2
	.byte	0xdc
	.byte	0xf
	.long	0x1315
	.uleb128 0x9
	.byte	0x3
	.quad	buf.7086
	.uleb128 0x31
	.string	"t"
	.byte	0x2
	.byte	0xe4
	.byte	0xa
	.long	0x44c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"tmp"
	.byte	0x2
	.byte	0xe5
	.byte	0xe
	.long	0x1325
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xe
	.long	0x44
	.long	0x1325
	.uleb128 0xf
	.long	0xe9
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4b4
	.uleb128 0x32
	.long	.LASF243
	.byte	0x2
	.byte	0xbc
	.byte	0x1
	.long	0xc7
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x13de
	.uleb128 0x2f
	.long	.LASF244
	.byte	0x2
	.byte	0xbc
	.byte	0x15
	.long	0x44c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF200
	.byte	0x2
	.byte	0xbc
	.byte	0x22
	.long	0x44c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"now"
	.byte	0x2
	.byte	0xbe
	.byte	0x11
	.long	0x44c
	.uleb128 0x9
	.byte	0x3
	.quad	now.7079
	.uleb128 0x33
	.long	.LASF263
	.long	0x13ee
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7082
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1f
	.long	.LASF245
	.byte	0x2
	.byte	0xc5
	.byte	0xb
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1f
	.long	.LASF246
	.byte	0x2
	.byte	0xca
	.byte	0x17
	.long	0x13f3
	.uleb128 0x9
	.byte	0x3
	.quad	idle_hhmm.7081
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x4b
	.long	0x13ee
	.uleb128 0xf
	.long	0xe9
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.long	0x13de
	.uleb128 0xe
	.long	0x44
	.long	0x1403
	.uleb128 0xf
	.long	0xe9
	.byte	0x5
	.byte	0
	.uleb128 0x2d
	.long	.LASF247
	.byte	0x1
	.value	0x2e5
	.byte	0x1
	.long	0x39
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x1467
	.uleb128 0x21
	.long	.LASF248
	.byte	0x1
	.value	0x2e5
	.byte	0x19
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"src"
	.byte	0x1
	.value	0x2e5
	.byte	0x34
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x2e5
	.byte	0x40
	.long	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF249
	.byte	0x1
	.value	0x2e7
	.byte	0xf
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF250
	.byte	0x1
	.value	0x2b2
	.byte	0x1
	.long	0x39
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x14a9
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.value	0x2b2
	.byte	0x13
	.long	0x44c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x2b2
	.byte	0x1c
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x26
	.long	.LASF251
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x154e
	.uleb128 0x21
	.long	.LASF252
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x34
	.long	.LASF253
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1504
	.uleb128 0x35
	.long	.LASF252
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc7
	.byte	0
	.uleb128 0x35
	.long	.LASF254
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc7
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0x14d9
	.uleb128 0x22
	.long	.LASF253
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x155e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.long	.LASF254
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.long	.LASF255
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x1563
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x22
	.long	.LASF256
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xe
	.long	0x1504
	.long	0x155e
	.uleb128 0xf
	.long	0xe9
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.long	0x154e
	.uleb128 0x3
	.byte	0x8
	.long	0x1504
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
	.uleb128 0x37
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x35
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x1e
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
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
.LASF115:
	.string	"__glibc_reserved"
.LASF114:
	.string	"st_ctim"
.LASF14:
	.string	"size_t"
.LASF84:
	.string	"tm_hour"
.LASF262:
	.string	"print_heading"
.LASF127:
	.string	"GETOPT_HELP_CHAR"
.LASF223:
	.string	"idlestr"
.LASF110:
	.string	"st_blksize"
.LASF111:
	.string	"st_blocks"
.LASF64:
	.string	"_IO_codecvt"
.LASF234:
	.string	"user"
.LASF44:
	.string	"_IO_save_end"
.LASF257:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF205:
	.string	"print_runlevel"
.LASF20:
	.string	"__gid_t"
.LASF116:
	.string	"_sys_siglist"
.LASF113:
	.string	"st_mtim"
.LASF76:
	.string	"time_t"
.LASF37:
	.string	"_IO_write_base"
.LASF235:
	.string	"state"
.LASF197:
	.string	"utmp_buf"
.LASF164:
	.string	"error_one_per_line"
.LASF53:
	.string	"_lock"
.LASF220:
	.string	"stats"
.LASF100:
	.string	"stat"
.LASF93:
	.string	"__tzname"
.LASF42:
	.string	"_IO_save_base"
.LASF179:
	.string	"need_clockchange"
.LASF46:
	.string	"_chain"
.LASF172:
	.string	"include_heading"
.LASF50:
	.string	"_cur_column"
.LASF69:
	.string	"sys_nerr"
.LASF18:
	.string	"__dev_t"
.LASF158:
	.string	"ut_addr_v6"
.LASF168:
	.string	"do_lookup"
.LASF243:
	.string	"idle_string"
.LASF71:
	.string	"_sys_nerr"
.LASF118:
	.string	"__environ"
.LASF16:
	.string	"long int"
.LASF90:
	.string	"tm_isdst"
.LASF6:
	.string	"has_arg"
.LASF63:
	.string	"_IO_marker"
.LASF202:
	.string	"entries"
.LASF191:
	.string	"main"
.LASF159:
	.string	"STRUCT_UTMP"
.LASF153:
	.string	"ut_user"
.LASF190:
	.string	"assumptions"
.LASF146:
	.string	"e_exit"
.LASF242:
	.string	"time_string"
.LASF12:
	.string	"signed char"
.LASF28:
	.string	"__blksize_t"
.LASF32:
	.string	"_IO_FILE"
.LASF95:
	.string	"__timezone"
.LASF65:
	.string	"_IO_wide_data"
.LASF105:
	.string	"st_uid"
.LASF263:
	.string	"__PRETTY_FUNCTION__"
.LASF142:
	.string	"quoting_style_args"
.LASF119:
	.string	"environ"
.LASF10:
	.string	"unsigned char"
.LASF57:
	.string	"_freeres_list"
.LASF108:
	.string	"st_rdev"
.LASF232:
	.string	"print_line"
.LASF216:
	.string	"exitstr"
.LASF213:
	.string	"pidstr"
.LASF199:
	.string	"ttyname_b"
.LASF251:
	.string	"emit_ancillary_info"
.LASF155:
	.string	"ut_exit"
.LASF163:
	.string	"error_message_count"
.LASF149:
	.string	"ut_type"
.LASF221:
	.string	"last_change"
.LASF30:
	.string	"__syscall_slong_t"
.LASF167:
	.string	"_Bool"
.LASF2:
	.string	"char"
.LASF249:
	.string	"src_end"
.LASF154:
	.string	"ut_host"
.LASF260:
	.string	"_IO_lock_t"
.LASF201:
	.string	"list_entries_who"
.LASF194:
	.string	"filename"
.LASF175:
	.string	"need_boottime"
.LASF98:
	.string	"timezone"
.LASF222:
	.string	"mesg"
.LASF135:
	.string	"shell_escape_always_quoting_style"
.LASF22:
	.string	"__mode_t"
.LASF83:
	.string	"tm_min"
.LASF34:
	.string	"_IO_read_ptr"
.LASF182:
	.string	"my_line_only"
.LASF230:
	.string	"is_tty_writable"
.LASF66:
	.string	"stdin"
.LASF70:
	.string	"sys_errlist"
.LASF184:
	.string	"time_format_width"
.LASF45:
	.string	"_markers"
.LASF130:
	.string	"program_name"
.LASF85:
	.string	"tm_mday"
.LASF215:
	.string	"print_deadprocs"
.LASF240:
	.string	"x_pid"
.LASF137:
	.string	"c_maybe_quoting_style"
.LASF120:
	.string	"program_invocation_name"
.LASF148:
	.string	"utmpx"
.LASF254:
	.string	"node"
.LASF147:
	.string	"tv_usec"
.LASF157:
	.string	"ut_tv"
.LASF82:
	.string	"tm_sec"
.LASF224:
	.string	"hoststr"
.LASF54:
	.string	"_offset"
.LASF106:
	.string	"st_gid"
.LASF250:
	.string	"timetostr"
.LASF233:
	.string	"userlen"
.LASF1:
	.string	"optind"
.LASF140:
	.string	"clocale_quoting_style"
.LASF162:
	.string	"error_print_progname"
.LASF8:
	.string	"long unsigned int"
.LASF177:
	.string	"need_login"
.LASF193:
	.string	"status"
.LASF48:
	.string	"_flags2"
.LASF109:
	.string	"st_size"
.LASF36:
	.string	"_IO_read_base"
.LASF226:
	.string	"line"
.LASF31:
	.string	"option"
.LASF174:
	.string	"include_exit"
.LASF61:
	.string	"_unused2"
.LASF210:
	.string	"curr"
.LASF214:
	.string	"print_login"
.LASF200:
	.string	"boottime"
.LASF206:
	.string	"utmp_ent"
.LASF187:
	.string	"argc"
.LASF49:
	.string	"_old_offset"
.LASF180:
	.string	"need_runlevel"
.LASF253:
	.string	"infomap"
.LASF188:
	.string	"argv"
.LASF29:
	.string	"__blkcnt_t"
.LASF225:
	.string	"hostlen"
.LASF132:
	.string	"shell_quoting_style"
.LASF21:
	.string	"__ino_t"
.LASF211:
	.string	"print_clockchange"
.LASF73:
	.string	"long long int"
.LASF252:
	.string	"program"
.LASF122:
	.string	"Version"
.LASF123:
	.string	"exit_failure"
.LASF80:
	.string	"_gl_cxxalias_dummy"
.LASF86:
	.string	"tm_mon"
.LASF219:
	.string	"print_user"
.LASF218:
	.string	"print_boottime"
.LASF208:
	.string	"comment"
.LASF247:
	.string	"stzncpy"
.LASF136:
	.string	"c_quoting_style"
.LASF171:
	.string	"include_idle"
.LASF39:
	.string	"_IO_write_end"
.LASF207:
	.string	"runlevline"
.LASF245:
	.string	"seconds_idle"
.LASF258:
	.string	"src/who.c"
.LASF117:
	.string	"sys_siglist"
.LASF17:
	.string	"__intmax_t"
.LASF128:
	.string	"GETOPT_VERSION_CHAR"
.LASF40:
	.string	"_IO_buf_base"
.LASF189:
	.string	"optc"
.LASF9:
	.string	"unsigned int"
.LASF129:
	.string	"version_etc_copyright"
.LASF143:
	.string	"quoting_style_vals"
.LASF131:
	.string	"literal_quoting_style"
.LASF107:
	.string	"__pad0"
.LASF96:
	.string	"tzname"
.LASF59:
	.string	"__pad5"
.LASF75:
	.string	"pid_t"
.LASF7:
	.string	"flag"
.LASF229:
	.string	"make_id_equals_comment"
.LASF165:
	.string	"quoting_options"
.LASF33:
	.string	"_flags"
.LASF256:
	.string	"lc_messages"
.LASF166:
	.string	"quote_quoting_options"
.LASF60:
	.string	"_mode"
.LASF170:
	.string	"short_output"
.LASF55:
	.string	"_codecvt"
.LASF126:
	.string	"LOG10_TIMESPEC_HZ"
.LASF103:
	.string	"st_nlink"
.LASF178:
	.string	"need_initspawn"
.LASF124:
	.string	"intmax_t"
.LASF74:
	.string	"long double"
.LASF62:
	.string	"FILE"
.LASF26:
	.string	"__pid_t"
.LASF186:
	.string	"longopts"
.LASF101:
	.string	"st_dev"
.LASF77:
	.string	"timespec"
.LASF237:
	.string	"time_str"
.LASF246:
	.string	"idle_hhmm"
.LASF4:
	.string	"optopt"
.LASF139:
	.string	"locale_quoting_style"
.LASF81:
	.string	"long long unsigned int"
.LASF24:
	.string	"__off_t"
.LASF261:
	.string	"quoting_style"
.LASF121:
	.string	"program_invocation_short_name"
.LASF58:
	.string	"_freeres_buf"
.LASF88:
	.string	"tm_wday"
.LASF212:
	.string	"print_initspawn"
.LASF89:
	.string	"tm_yday"
.LASF3:
	.string	"opterr"
.LASF145:
	.string	"e_termination"
.LASF259:
	.string	"/root/coreutils"
.LASF27:
	.string	"__time_t"
.LASF241:
	.string	"x_exitstr"
.LASF43:
	.string	"_IO_backup_base"
.LASF52:
	.string	"_shortbuf"
.LASF217:
	.string	"utmpsize"
.LASF144:
	.string	"__exit_status"
.LASF150:
	.string	"ut_pid"
.LASF248:
	.string	"dest"
.LASF133:
	.string	"shell_always_quoting_style"
.LASF25:
	.string	"__off64_t"
.LASF138:
	.string	"escape_quoting_style"
.LASF228:
	.string	"display"
.LASF41:
	.string	"_IO_buf_end"
.LASF227:
	.string	"host"
.LASF5:
	.string	"name"
.LASF255:
	.string	"map_prog"
.LASF91:
	.string	"tm_gmtoff"
.LASF161:
	.string	"READ_UTMP_USER_PROCESS"
.LASF68:
	.string	"stderr"
.LASF13:
	.string	"short int"
.LASF244:
	.string	"when"
.LASF79:
	.string	"tv_nsec"
.LASF192:
	.string	"usage"
.LASF196:
	.string	"n_users"
.LASF134:
	.string	"shell_escape_quoting_style"
.LASF51:
	.string	"_vtable_offset"
.LASF72:
	.string	"_sys_errlist"
.LASF238:
	.string	"idle"
.LASF204:
	.string	"trimmed_name"
.LASF236:
	.string	"linelen"
.LASF125:
	.string	"TIMESPEC_HZ"
.LASF94:
	.string	"__daylight"
.LASF92:
	.string	"tm_zone"
.LASF183:
	.string	"time_format"
.LASF160:
	.string	"READ_UTMP_CHECK_PIDS"
.LASF104:
	.string	"st_mode"
.LASF19:
	.string	"__uid_t"
.LASF35:
	.string	"_IO_read_end"
.LASF99:
	.string	"getdate_err"
.LASF47:
	.string	"_fileno"
.LASF239:
	.string	"x_idle"
.LASF56:
	.string	"_wide_data"
.LASF151:
	.string	"ut_line"
.LASF198:
	.string	"scan_entries"
.LASF0:
	.string	"optarg"
.LASF176:
	.string	"need_deadprocs"
.LASF185:
	.string	"LOOKUP_OPTION"
.LASF231:
	.string	"pstat"
.LASF87:
	.string	"tm_year"
.LASF11:
	.string	"short unsigned int"
.LASF67:
	.string	"stdout"
.LASF181:
	.string	"need_users"
.LASF38:
	.string	"_IO_write_ptr"
.LASF203:
	.string	"separator"
.LASF15:
	.string	"__int32_t"
.LASF195:
	.string	"options"
.LASF156:
	.string	"ut_session"
.LASF97:
	.string	"daylight"
.LASF102:
	.string	"st_ino"
.LASF23:
	.string	"__nlink_t"
.LASF173:
	.string	"include_mesg"
.LASF78:
	.string	"tv_sec"
.LASF141:
	.string	"custom_quoting_style"
.LASF169:
	.string	"short_list"
.LASF209:
	.string	"last"
.LASF112:
	.string	"st_atim"
.LASF152:
	.string	"ut_id"
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
