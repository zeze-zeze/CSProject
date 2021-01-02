	.file	"uptime.c"
	.text
.Ltext0:
	.type	select_plural, @function
select_plural:
.LFB17:
	.file 1 "src/system.h"
	.loc 1 184 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 188 30
	movq	-8(%rbp), %rax
	.loc 1 189 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	select_plural, .-select_plural
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
	jmp	.L4
.L6:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L4:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L5
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L6
.L5:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L7
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L7:
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
	je	.L8
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L8
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L8:
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
	jne	.L9
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L10
.L9:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L10:
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
	je	.L11
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L11:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.section	.rodata
.LC18:
	.string	"r"
.LC19:
	.string	"/proc/uptime"
.LC22:
	.string	"couldn't get boot time"
.LC23:
	.string	" %H:%M:%S  "
.LC24:
	.string	" ??:????  "
.LC25:
	.string	"up ???? days ??:??,  "
.LC26:
	.string	"up %ld days %2d:%02d,  "
.LC27:
	.string	"up %ld day %2d:%02d,  "
.LC28:
	.string	"up  %2d:%02d,  "
.LC29:
	.string	"%lu users"
.LC30:
	.string	"%lu user"
.LC31:
	.string	",  load average: %.2f"
.LC32:
	.string	", %.2f"
	.text
	.type	print_uptime, @function
print_uptime:
.LFB46:
	.file 2 "src/uptime.c"
	.loc 2 51 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -8360(%rbp)
	movq	%rsi, -8368(%rbp)
	.loc 2 51 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 52 10
	movq	$0, -8320(%rbp)
	.loc 2 53 10
	movq	$0, -8312(%rbp)
	.loc 2 55 10
	movq	$0, -8304(%rbp)
	.loc 2 65 8
	leaq	.LC18(%rip), %rsi
	leaq	.LC19(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -8296(%rbp)
	.loc 2 66 6
	cmpq	$0, -8296(%rbp)
	je	.L20
.LBB2:
	.loc 2 69 17
	movq	-8296(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	fgets_unlocked@PLT
	movq	%rax, -8288(%rbp)
	.loc 2 70 10
	leaq	-8224(%rbp), %rax
	cmpq	%rax, -8288(%rbp)
	jne	.L14
.LBB3:
	.loc 2 73 27
	leaq	-8328(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	c_strtod@PLT
	movq	%xmm0, %rax
	movq	%rax, -8280(%rbp)
	.loc 2 74 19
	movq	-8328(%rbp), %rdx
	.loc 2 74 14
	leaq	-8224(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L14
	.loc 2 75 20
	movsd	-8280(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jb	.L16
	.loc 2 75 35 discriminator 1
	movsd	.LC21(%rip), %xmm0
	comisd	-8280(%rbp), %xmm0
	jbe	.L16
	.loc 2 75 20 discriminator 3
	movsd	-8280(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	jmp	.L19
.L16:
	.loc 2 75 20 is_stmt 0 discriminator 4
	movq	$-1, %rax
.L19:
	.loc 2 75 20 discriminator 6
	movq	%rax, -8304(%rbp)
.L14:
.LBE3:
	.loc 2 79 7 is_stmt 1 discriminator 1
	movq	-8296(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
.LBE2:
	.loc 2 108 9 discriminator 1
	jmp	.L20
.L24:
	.loc 2 110 18
	movq	-8368(%rbp), %rax
	movzbl	44(%rax), %eax
	testb	%al, %al
	je	.L21
	.loc 2 110 18 is_stmt 0 discriminator 1
	movq	-8368(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$7, %ax
	jne	.L21
	.loc 2 110 18 discriminator 3
	movl	$1, %eax
	jmp	.L22
.L21:
	.loc 2 110 18 discriminator 4
	movl	$0, %eax
.L22:
	.loc 2 110 18 discriminator 6
	cltq
	.loc 2 110 15 is_stmt 1 discriminator 6
	addq	%rax, -8320(%rbp)
	.loc 2 111 11 discriminator 6
	movq	-8368(%rbp), %rax
	movzwl	(%rax), %eax
	.loc 2 111 10 discriminator 6
	cmpw	$2, %ax
	jne	.L23
	.loc 2 112 21
	movq	-8368(%rbp), %rax
	movl	340(%rax), %eax
	.loc 2 112 19
	cltq
	movq	%rax, -8312(%rbp)
.L23:
	.loc 2 113 7
	addq	$384, -8368(%rbp)
.L20:
	.loc 2 108 11
	movq	-8360(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -8360(%rbp)
	.loc 2 108 9
	testq	%rax, %rax
	jne	.L24
	.loc 2 120 14
	movl	$0, %edi
	call	time@PLT
	.loc 2 120 12
	movq	%rax, -8328(%rbp)
	.loc 2 122 6
	cmpq	$0, -8304(%rbp)
	jne	.L25
	.loc 2 125 10
	cmpq	$0, -8312(%rbp)
	jne	.L26
.LBB4:
	.loc 2 126 9
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L26:
.LBE4:
	.loc 2 127 25
	movq	-8328(%rbp), %rax
	.loc 2 127 14
	subq	-8312(%rbp), %rax
	movq	%rax, -8304(%rbp)
.L25:
	.loc 2 129 10
	movq	-8304(%rbp), %rcx
	movabsq	$1749024623285053783, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$13, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8272(%rbp)
	.loc 2 130 31
	movq	-8272(%rbp), %rax
	imulq	$-86400, %rax, %rdx
	.loc 2 130 21
	movq	-8304(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 130 41
	movabsq	$5247073869855161349, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$10, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 130 11
	movl	%eax, -8340(%rbp)
	.loc 2 131 30
	movq	-8272(%rbp), %rax
	imulq	$-86400, %rax, %rdx
	.loc 2 131 20
	movq	-8304(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 131 50
	movl	-8340(%rbp), %eax
	imull	$3600, %eax, %eax
	cltq
	.loc 2 131 39
	movq	%rdx, %rcx
	subq	%rax, %rcx
	.loc 2 131 59
	movabsq	$-8608480567731124087, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	leaq	(%rdx,%rcx), %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 131 10
	movl	%eax, -8336(%rbp)
	.loc 2 132 9
	leaq	-8328(%rbp), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	movq	%rax, -8264(%rbp)
	.loc 2 135 6
	cmpq	$0, -8264(%rbp)
	je	.L27
	.loc 2 137 26
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 137 5
	movq	stdout(%rip), %rax
	movq	-8264(%rbp), %rdx
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	fprintftime@PLT
	jmp	.L28
.L27:
	.loc 2 139 13
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	.loc 2 139 5
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L28:
	.loc 2 140 6
	cmpq	$-1, -8304(%rbp)
	jne	.L29
	.loc 2 141 13
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	.loc 2 141 5
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L30
.L29:
	.loc 2 144 10
	cmpq	$0, -8272(%rbp)
	jle	.L31
	.loc 2 145 17
	movq	-8272(%rbp), %rax
	movq	%rax, %rdi
	call	select_plural
	movq	%rax, %rdx
	leaq	.LC26(%rip), %rsi
	leaq	.LC27(%rip), %rdi
	call	ngettext@PLT
	movq	%rax, %rdi
	.loc 2 145 9
	movl	-8336(%rbp), %ecx
	movl	-8340(%rbp), %edx
	movq	-8272(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L30
.L31:
	.loc 2 150 17
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 2 150 9
	movl	-8336(%rbp), %edx
	movl	-8340(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
.L30:
	.loc 2 152 11
	movq	-8320(%rbp), %rax
	movq	%rax, %rdi
	call	select_plural
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rsi
	leaq	.LC30(%rip), %rdi
	call	ngettext@PLT
	movq	%rax, %rdx
	.loc 2 152 3
	movq	-8320(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 155 11
	leaq	-8256(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	getloadavg@PLT
	movl	%eax, -8332(%rbp)
	.loc 2 157 6
	cmpl	$-1, -8332(%rbp)
	jne	.L32
	.loc 2 158 5
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 170 1
	jmp	.L40
.L32:
	.loc 2 161 10
	cmpl	$0, -8332(%rbp)
	jle	.L34
	.loc 2 162 9
	movq	-8256(%rbp), %rbx
	.loc 2 162 17
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	.loc 2 162 9
	movq	%rbx, %xmm0
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
.L34:
	.loc 2 163 10
	cmpl	$1, -8332(%rbp)
	jle	.L35
	.loc 2 164 9
	movq	-8248(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC32(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
.L35:
	.loc 2 165 10
	cmpl	$2, -8332(%rbp)
	jle	.L36
	.loc 2 166 9
	movq	-8240(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC32(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
.L36:
	.loc 2 167 10
	cmpl	$0, -8332(%rbp)
	jle	.L40
	.loc 2 168 9
	movl	$10, %edi
	call	putchar_unlocked@PLT
.L40:
	.loc 2 170 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L37
	call	__stack_chk_fail@PLT
.L37:
	addq	$8360, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	print_uptime, .-print_uptime
	.section	.rodata
.LC33:
	.string	"%s"
	.text
	.type	uptime, @function
uptime:
.LFB47:
	.loc 2 178 1
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
	.loc 2 178 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 180 16
	movq	$0, -32(%rbp)
	.loc 2 183 7
	movl	-60(%rbp), %ecx
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	read_utmp@PLT
	.loc 2 183 6
	testl	%eax, %eax
	je	.L42
.LBB5:
	.loc 2 184 5
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC33(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L42:
.LBE5:
	.loc 2 187 3
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_uptime
	.loc 2 189 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 190 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L43
	call	__stack_chk_fail@PLT
.L43:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	uptime, .-uptime
	.section	.rodata
	.align 8
.LC34:
	.string	"Try '%s --help' for more information.\n"
.LC35:
	.string	"Usage: %s [OPTION]... [FILE]\n"
	.align 8
.LC36:
	.string	"Print the current time, the length of time the system has been up,\nthe number of users on the system, and the average number of jobs\nin the run queue over the last 1, 5 and 15 minutes."
	.align 8
.LC37:
	.string	"  Processes in\nan uninterruptible sleep state also contribute to the load average.\n"
	.align 8
.LC38:
	.string	"If FILE is not specified, use %s.  %s as FILE is common.\n\n"
.LC39:
	.string	"/var/log/wtmp"
.LC40:
	.string	"/var/run/utmp"
	.align 8
.LC41:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC42:
	.string	"      --version  output version information and exit\n"
.LC43:
	.string	"uptime"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB48:
	.loc 2 194 1
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
	.loc 2 195 6
	cmpl	$0, -20(%rbp)
	je	.L45
	.loc 2 196 5
	movq	program_name(%rip), %rbx
	leaq	.LC34(%rip), %rdi
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
	.loc 2 199 7
	movq	program_name(%rip), %rbx
	.loc 2 199 15
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	.loc 2 199 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 200 15
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	.loc 2 200 7
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 209 15
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	.loc 2 209 7
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 215 15
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	.loc 2 215 7
	leaq	.LC39(%rip), %rdx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 219 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 220 7
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 221 7
	leaq	.LC43(%rip), %rdi
	call	emit_ancillary_info
.L46:
	.loc 2 223 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE48:
	.size	usage, .-usage
	.section	.rodata
.LC44:
	.string	"/usr/local/share/locale"
.LC45:
	.string	"Kaveh Ghazi"
.LC46:
	.string	"David MacKenzie"
.LC47:
	.string	"Joseph Arceneaux"
.LC48:
	.string	"extra operand %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB49:
	.loc 2 228 1
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
	movq	%rsi, -32(%rbp)
	.loc 2 230 3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 231 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 232 3
	leaq	.LC44(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 233 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 235 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 237 3
	movq	Version(%rip), %rcx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC45(%rip), %rdx
	pushq	%rdx
	leaq	.LC46(%rip), %rdx
	pushq	%rdx
	leaq	.LC47(%rip), %rdx
	pushq	%rdx
	leaq	usage(%rip), %rdx
	pushq	%rdx
	movl	$1, %r9d
	movq	%rcx, %r8
	leaq	.LC11(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	parse_gnu_standard_options_only@PLT
	addq	$48, %rsp
	.loc 2 241 16
	movl	optind(%rip), %eax
	movl	-20(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 241 3
	testl	%eax, %eax
	je	.L48
	cmpl	$1, %eax
	je	.L49
	jmp	.L53
.L48:
	.loc 2 244 7
	movl	$1, %esi
	leaq	.LC40(%rip), %rdi
	call	uptime
	.loc 2 245 7
	jmp	.L51
.L49:
	.loc 2 248 19
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 248 7
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	uptime
	.loc 2 249 7
	jmp	.L51
.L53:
	.loc 2 252 54
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 252 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 252 20
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	.loc 2 252 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 253 7
	movl	$1, %edi
	call	usage
.L51:
	.loc 2 256 10
	movl	$0, %eax
	.loc 2 257 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC21:
	.long	0
	.long	1138753536
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 10 "./lib/sys/select.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
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
	.file 25 "/usr/include/x86_64-linux-gnu/bits/utmpx.h"
	.file 26 "./lib/readutmp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xae4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF162
	.byte	0xc
	.long	.LASF163
	.long	.LASF164
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
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
	.byte	0x29
	.byte	0x14
	.long	0x71
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.long	0x71
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x49
	.byte	0x1b
	.long	0x39
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
	.long	0x71
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x7d
	.uleb128 0x7
	.byte	0x8
	.long	0xc6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x8
	.long	0xc6
	.uleb128 0x9
	.long	0xc6
	.long	0xe2
	.uleb128 0xa
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	.LASF60
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x269
	.uleb128 0xc
	.long	.LASF15
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x71
	.byte	0
	.uleb128 0xc
	.long	.LASF16
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xc0
	.byte	0x8
	.uleb128 0xc
	.long	.LASF17
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xc0
	.byte	0x10
	.uleb128 0xc
	.long	.LASF18
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xc0
	.byte	0x18
	.uleb128 0xc
	.long	.LASF19
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xc0
	.byte	0x20
	.uleb128 0xc
	.long	.LASF20
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xc0
	.byte	0x28
	.uleb128 0xc
	.long	.LASF21
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xc0
	.byte	0x30
	.uleb128 0xc
	.long	.LASF22
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xc0
	.byte	0x38
	.uleb128 0xc
	.long	.LASF23
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xc0
	.byte	0x40
	.uleb128 0xc
	.long	.LASF24
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xc0
	.byte	0x48
	.uleb128 0xc
	.long	.LASF25
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xc0
	.byte	0x50
	.uleb128 0xc
	.long	.LASF26
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xc0
	.byte	0x58
	.uleb128 0xc
	.long	.LASF27
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x282
	.byte	0x60
	.uleb128 0xc
	.long	.LASF28
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x288
	.byte	0x68
	.uleb128 0xc
	.long	.LASF29
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x71
	.byte	0x70
	.uleb128 0xc
	.long	.LASF30
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x71
	.byte	0x74
	.uleb128 0xc
	.long	.LASF31
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x90
	.byte	0x78
	.uleb128 0xc
	.long	.LASF32
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xc
	.long	.LASF33
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xc
	.long	.LASF34
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x28e
	.byte	0x83
	.uleb128 0xc
	.long	.LASF35
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x29e
	.byte	0x88
	.uleb128 0xc
	.long	.LASF36
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x9c
	.byte	0x90
	.uleb128 0xc
	.long	.LASF37
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2a9
	.byte	0x98
	.uleb128 0xc
	.long	.LASF38
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2b4
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF39
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x288
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF40
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xc
	.long	.LASF42
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x71
	.byte	0xc0
	.uleb128 0xc
	.long	.LASF43
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2ba
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF44
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xe2
	.uleb128 0xd
	.long	.LASF165
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x27d
	.uleb128 0x7
	.byte	0x8
	.long	0xe2
	.uleb128 0x9
	.long	0xc6
	.long	0x29e
	.uleb128 0xa
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x275
	.uleb128 0xe
	.long	.LASF46
	.uleb128 0x7
	.byte	0x8
	.long	0x2a4
	.uleb128 0xe
	.long	.LASF47
	.uleb128 0x7
	.byte	0x8
	.long	0x2af
	.uleb128 0x9
	.long	0xc6
	.long	0x2ca
	.uleb128 0xa
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xcd
	.uleb128 0x8
	.long	0x2ca
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2e1
	.uleb128 0x7
	.byte	0x8
	.long	0x269
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2e1
	.uleb128 0xf
	.long	.LASF50
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2e1
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x71
	.uleb128 0x9
	.long	0x2d0
	.long	0x316
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x30b
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x316
	.uleb128 0xf
	.long	.LASF53
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x71
	.uleb128 0xf
	.long	.LASF54
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x316
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF55
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF56
	.uleb128 0x2
	.long	.LASF57
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0xb4
	.uleb128 0x11
	.long	.LASF58
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x71
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF59
	.uleb128 0x9
	.long	0xc6
	.long	0x37d
	.uleb128 0xa
	.long	0x39
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.string	"tm"
	.byte	0x38
	.byte	0xb
	.byte	0x7
	.byte	0x8
	.long	0x419
	.uleb128 0xc
	.long	.LASF61
	.byte	0xb
	.byte	0x9
	.byte	0x7
	.long	0x71
	.byte	0
	.uleb128 0xc
	.long	.LASF62
	.byte	0xb
	.byte	0xa
	.byte	0x7
	.long	0x71
	.byte	0x4
	.uleb128 0xc
	.long	.LASF63
	.byte	0xb
	.byte	0xb
	.byte	0x7
	.long	0x71
	.byte	0x8
	.uleb128 0xc
	.long	.LASF64
	.byte	0xb
	.byte	0xc
	.byte	0x7
	.long	0x71
	.byte	0xc
	.uleb128 0xc
	.long	.LASF65
	.byte	0xb
	.byte	0xd
	.byte	0x7
	.long	0x71
	.byte	0x10
	.uleb128 0xc
	.long	.LASF66
	.byte	0xb
	.byte	0xe
	.byte	0x7
	.long	0x71
	.byte	0x14
	.uleb128 0xc
	.long	.LASF67
	.byte	0xb
	.byte	0xf
	.byte	0x7
	.long	0x71
	.byte	0x18
	.uleb128 0xc
	.long	.LASF68
	.byte	0xb
	.byte	0x10
	.byte	0x7
	.long	0x71
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF69
	.byte	0xb
	.byte	0x11
	.byte	0x7
	.long	0x71
	.byte	0x20
	.uleb128 0xc
	.long	.LASF70
	.byte	0xb
	.byte	0x14
	.byte	0xc
	.long	0x7d
	.byte	0x28
	.uleb128 0xc
	.long	.LASF71
	.byte	0xb
	.byte	0x15
	.byte	0xf
	.long	0x2ca
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.long	0xc0
	.long	0x429
	.uleb128 0xa
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF72
	.byte	0xc
	.byte	0x9f
	.byte	0xe
	.long	0x419
	.uleb128 0xf
	.long	.LASF73
	.byte	0xc
	.byte	0xa0
	.byte	0xc
	.long	0x71
	.uleb128 0xf
	.long	.LASF74
	.byte	0xc
	.byte	0xa1
	.byte	0x11
	.long	0x7d
	.uleb128 0xf
	.long	.LASF75
	.byte	0xc
	.byte	0xa6
	.byte	0xe
	.long	0x419
	.uleb128 0xf
	.long	.LASF76
	.byte	0xc
	.byte	0xae
	.byte	0xc
	.long	0x71
	.uleb128 0xf
	.long	.LASF77
	.byte	0xc
	.byte	0xaf
	.byte	0x11
	.long	0x7d
	.uleb128 0x11
	.long	.LASF78
	.byte	0xc
	.value	0x112
	.byte	0xc
	.long	0x71
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x47e
	.uleb128 0x9
	.long	0x2d0
	.long	0x495
	.uleb128 0xa
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x485
	.uleb128 0x11
	.long	.LASF79
	.byte	0xd
	.value	0x11e
	.byte	0x1a
	.long	0x495
	.uleb128 0x11
	.long	.LASF80
	.byte	0xd
	.value	0x11f
	.byte	0x1a
	.long	0x495
	.uleb128 0x11
	.long	.LASF81
	.byte	0xe
	.value	0x21f
	.byte	0xf
	.long	0x4c1
	.uleb128 0x7
	.byte	0x8
	.long	0xc0
	.uleb128 0x11
	.long	.LASF82
	.byte	0xe
	.value	0x221
	.byte	0xf
	.long	0x4c1
	.uleb128 0xf
	.long	.LASF83
	.byte	0xf
	.byte	0x24
	.byte	0xe
	.long	0xc0
	.uleb128 0xf
	.long	.LASF84
	.byte	0xf
	.byte	0x32
	.byte	0xc
	.long	0x71
	.uleb128 0xf
	.long	.LASF85
	.byte	0xf
	.byte	0x37
	.byte	0xc
	.long	0x71
	.uleb128 0xf
	.long	.LASF86
	.byte	0xf
	.byte	0x3b
	.byte	0xc
	.long	0x71
	.uleb128 0xf
	.long	.LASF87
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0xc0
	.uleb128 0xf
	.long	.LASF88
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0xc0
	.uleb128 0xf
	.long	.LASF89
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x2ca
	.uleb128 0xf
	.long	.LASF90
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x78
	.uleb128 0x9
	.long	0xc6
	.long	0x544
	.uleb128 0xa
	.long	0x39
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.long	.LASF91
	.byte	0x13
	.byte	0x66
	.byte	0x16
	.long	0x84
	.uleb128 0x9
	.long	0xcd
	.long	0x55b
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x550
	.uleb128 0xf
	.long	.LASF92
	.byte	0x14
	.byte	0x19
	.byte	0x13
	.long	0x55b
	.uleb128 0xf
	.long	.LASF93
	.byte	0x15
	.byte	0x20
	.byte	0x14
	.long	0x2ca
	.uleb128 0x14
	.long	.LASF166
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x20
	.byte	0x6
	.long	0x5cd
	.uleb128 0x15
	.long	.LASF94
	.byte	0
	.uleb128 0x15
	.long	.LASF95
	.byte	0x1
	.uleb128 0x15
	.long	.LASF96
	.byte	0x2
	.uleb128 0x15
	.long	.LASF97
	.byte	0x3
	.uleb128 0x15
	.long	.LASF98
	.byte	0x4
	.uleb128 0x15
	.long	.LASF99
	.byte	0x5
	.uleb128 0x15
	.long	.LASF100
	.byte	0x6
	.uleb128 0x15
	.long	.LASF101
	.byte	0x7
	.uleb128 0x15
	.long	.LASF102
	.byte	0x8
	.uleb128 0x15
	.long	.LASF103
	.byte	0x9
	.uleb128 0x15
	.long	.LASF104
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x578
	.uleb128 0x11
	.long	.LASF105
	.byte	0x16
	.value	0x10b
	.byte	0x1a
	.long	0x316
	.uleb128 0x9
	.long	0x5cd
	.long	0x5ea
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5df
	.uleb128 0x11
	.long	.LASF106
	.byte	0x16
	.value	0x10c
	.byte	0x21
	.long	0x5ea
	.uleb128 0xf
	.long	.LASF107
	.byte	0x17
	.byte	0x32
	.byte	0xf
	.long	0x47f
	.uleb128 0xf
	.long	.LASF108
	.byte	0x17
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF109
	.byte	0x17
	.byte	0x39
	.byte	0xc
	.long	0x71
	.uleb128 0xe
	.long	.LASF110
	.uleb128 0xf
	.long	.LASF111
	.byte	0x18
	.byte	0x19
	.byte	0x1f
	.long	0x620
	.uleb128 0xb
	.long	.LASF112
	.byte	0x4
	.byte	0x19
	.byte	0x2a
	.byte	0x8
	.long	0x659
	.uleb128 0xc
	.long	.LASF113
	.byte	0x19
	.byte	0x2d
	.byte	0xf
	.long	0x5e
	.byte	0
	.uleb128 0xc
	.long	.LASF114
	.byte	0x19
	.byte	0x2e
	.byte	0xf
	.long	0x5e
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.byte	0x8
	.byte	0x19
	.byte	0x4b
	.byte	0x3
	.long	0x67d
	.uleb128 0xc
	.long	.LASF115
	.byte	0x19
	.byte	0x4d
	.byte	0xf
	.long	0x65
	.byte	0
	.uleb128 0xc
	.long	.LASF116
	.byte	0x19
	.byte	0x4e
	.byte	0xf
	.long	0x65
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.long	.LASF117
	.value	0x180
	.byte	0x19
	.byte	0x37
	.byte	0x8
	.long	0x720
	.uleb128 0xc
	.long	.LASF118
	.byte	0x19
	.byte	0x39
	.byte	0xd
	.long	0x5e
	.byte	0
	.uleb128 0xc
	.long	.LASF119
	.byte	0x19
	.byte	0x3a
	.byte	0xb
	.long	0xa8
	.byte	0x4
	.uleb128 0xc
	.long	.LASF120
	.byte	0x19
	.byte	0x3b
	.byte	0x8
	.long	0x36d
	.byte	0x8
	.uleb128 0xc
	.long	.LASF121
	.byte	0x19
	.byte	0x3d
	.byte	0x8
	.long	0xd2
	.byte	0x28
	.uleb128 0xc
	.long	.LASF122
	.byte	0x19
	.byte	0x3f
	.byte	0x8
	.long	0x36d
	.byte	0x2c
	.uleb128 0xc
	.long	.LASF123
	.byte	0x19
	.byte	0x41
	.byte	0x8
	.long	0x534
	.byte	0x4c
	.uleb128 0x18
	.long	.LASF124
	.byte	0x19
	.byte	0x43
	.byte	0x18
	.long	0x631
	.value	0x14c
	.uleb128 0x18
	.long	.LASF125
	.byte	0x19
	.byte	0x4a
	.byte	0xd
	.long	0x65
	.value	0x150
	.uleb128 0x18
	.long	.LASF126
	.byte	0x19
	.byte	0x4f
	.byte	0x5
	.long	0x659
	.value	0x154
	.uleb128 0x18
	.long	.LASF127
	.byte	0x19
	.byte	0x54
	.byte	0xd
	.long	0x720
	.value	0x15c
	.uleb128 0x18
	.long	.LASF128
	.byte	0x19
	.byte	0x55
	.byte	0x8
	.long	0x2ba
	.value	0x16c
	.byte	0
	.uleb128 0x9
	.long	0x65
	.long	0x730
	.uleb128 0xa
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF129
	.byte	0x1a
	.byte	0x92
	.byte	0x21
	.long	0x67d
	.uleb128 0x8
	.long	0x730
	.uleb128 0x19
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0xd1
	.byte	0x3
	.long	0x75c
	.uleb128 0x15
	.long	.LASF130
	.byte	0x1
	.uleb128 0x15
	.long	.LASF131
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x2
	.byte	0xe3
	.byte	0x1
	.long	0x71
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x79d
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x2
	.byte	0xe3
	.byte	0xb
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.long	.LASF133
	.byte	0x2
	.byte	0xe3
	.byte	0x18
	.long	0x4c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1c
	.long	.LASF135
	.byte	0x2
	.byte	0xc1
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x7cb
	.uleb128 0x1b
	.long	.LASF136
	.byte	0x2
	.byte	0xc1
	.byte	0xc
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.long	.LASF141
	.byte	0x2
	.byte	0xb1
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x839
	.uleb128 0x1b
	.long	.LASF137
	.byte	0x2
	.byte	0xb1
	.byte	0x15
	.long	0x2ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF138
	.byte	0x2
	.byte	0xb1
	.byte	0x23
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x2
	.byte	0xb3
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF140
	.byte	0x2
	.byte	0xb4
	.byte	0x10
	.long	0x839
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x730
	.uleb128 0x1d
	.long	.LASF142
	.byte	0x2
	.byte	0x32
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b3
	.uleb128 0x20
	.string	"n"
	.byte	0x2
	.byte	0x32
	.byte	0x16
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8376
	.uleb128 0x1b
	.long	.LASF143
	.byte	0x2
	.byte	0x32
	.byte	0x2c
	.long	0x9b3
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8384
	.uleb128 0x1e
	.long	.LASF144
	.byte	0x2
	.byte	0x34
	.byte	0xa
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8336
	.uleb128 0x1e
	.long	.LASF145
	.byte	0x2
	.byte	0x35
	.byte	0xa
	.long	0x34d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8328
	.uleb128 0x1e
	.long	.LASF146
	.byte	0x2
	.byte	0x36
	.byte	0xa
	.long	0x34d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8344
	.uleb128 0x1e
	.long	.LASF141
	.byte	0x2
	.byte	0x37
	.byte	0xa
	.long	0x34d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8320
	.uleb128 0x1e
	.long	.LASF147
	.byte	0x2
	.byte	0x38
	.byte	0xc
	.long	0x7d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8288
	.uleb128 0x1e
	.long	.LASF148
	.byte	0x2
	.byte	0x39
	.byte	0x7
	.long	0x71
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8356
	.uleb128 0x1e
	.long	.LASF149
	.byte	0x2
	.byte	0x3a
	.byte	0x7
	.long	0x71
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8352
	.uleb128 0x21
	.string	"tmn"
	.byte	0x2
	.byte	0x3b
	.byte	0xe
	.long	0x9b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8280
	.uleb128 0x21
	.string	"avg"
	.byte	0x2
	.byte	0x3c
	.byte	0xa
	.long	0x9bf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8272
	.uleb128 0x1e
	.long	.LASF150
	.byte	0x2
	.byte	0x3d
	.byte	0x7
	.long	0x71
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8348
	.uleb128 0x21
	.string	"fp"
	.byte	0x2
	.byte	0x3f
	.byte	0x9
	.long	0x2e1
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8312
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x9a1
	.uleb128 0x21
	.string	"buf"
	.byte	0x2
	.byte	0x44
	.byte	0xc
	.long	0x9d6
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x21
	.string	"b"
	.byte	0x2
	.byte	0x45
	.byte	0xd
	.long	0xc0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8304
	.uleb128 0x23
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1e
	.long	.LASF151
	.byte	0x2
	.byte	0x48
	.byte	0x11
	.long	0xc0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8344
	.uleb128 0x1e
	.long	.LASF152
	.byte	0x2
	.byte	0x49
	.byte	0x12
	.long	0x9cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8296
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x73c
	.uleb128 0x7
	.byte	0x8
	.long	0x37d
	.uleb128 0x9
	.long	0x9cf
	.long	0x9cf
	.uleb128 0xa
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF153
	.uleb128 0x9
	.long	0xc6
	.long	0x9e7
	.uleb128 0x24
	.long	0x39
	.value	0x1fff
	.byte	0
	.uleb128 0x25
	.long	.LASF154
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xa8c
	.uleb128 0x26
	.long	.LASF155
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x27
	.long	.LASF156
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xa42
	.uleb128 0x28
	.long	.LASF155
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2ca
	.byte	0
	.uleb128 0x28
	.long	.LASF157
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2ca
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xa17
	.uleb128 0x29
	.long	.LASF156
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xa9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.long	.LASF157
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x29
	.long	.LASF158
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xaa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x29
	.long	.LASF159
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x9
	.long	0xa42
	.long	0xa9c
	.uleb128 0xa
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xa8c
	.uleb128 0x7
	.byte	0x8
	.long	0xa42
	.uleb128 0x2a
	.long	.LASF160
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.long	0x39
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0xb7
	.byte	0x1a
	.long	0x544
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1
	.byte	0xbb
	.byte	0x8
	.uleb128 0x2c
	.long	.LASF161
	.long	0xf4240
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
.LASF90:
	.string	"exit_failure"
.LASF10:
	.string	"__off_t"
.LASF16:
	.string	"_IO_read_ptr"
.LASF102:
	.string	"locale_quoting_style"
.LASF28:
	.string	"_chain"
.LASF63:
	.string	"tm_hour"
.LASF114:
	.string	"e_exit"
.LASF150:
	.string	"loads"
.LASF166:
	.string	"quoting_style"
.LASF6:
	.string	"size_t"
.LASF122:
	.string	"ut_user"
.LASF34:
	.string	"_shortbuf"
.LASF139:
	.string	"n_users"
.LASF95:
	.string	"shell_quoting_style"
.LASF22:
	.string	"_IO_buf_base"
.LASF71:
	.string	"tm_zone"
.LASF59:
	.string	"long long unsigned int"
.LASF113:
	.string	"e_termination"
.LASF140:
	.string	"utmp_buf"
.LASF37:
	.string	"_codecvt"
.LASF74:
	.string	"__timezone"
.LASF55:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF106:
	.string	"quoting_style_vals"
.LASF91:
	.string	"uintmax_t"
.LASF155:
	.string	"program"
.LASF142:
	.string	"print_uptime"
.LASF143:
	.string	"this"
.LASF94:
	.string	"literal_quoting_style"
.LASF29:
	.string	"_fileno"
.LASF17:
	.string	"_IO_read_end"
.LASF127:
	.string	"ut_addr_v6"
.LASF80:
	.string	"sys_siglist"
.LASF8:
	.string	"long int"
.LASF58:
	.string	"_gl_cxxalias_dummy"
.LASF15:
	.string	"_flags"
.LASF38:
	.string	"_wide_data"
.LASF23:
	.string	"_IO_buf_end"
.LASF32:
	.string	"_cur_column"
.LASF88:
	.string	"program_invocation_short_name"
.LASF99:
	.string	"c_quoting_style"
.LASF46:
	.string	"_IO_codecvt"
.LASF153:
	.string	"double"
.LASF151:
	.string	"end_ptr"
.LASF87:
	.string	"program_invocation_name"
.LASF31:
	.string	"_old_offset"
.LASF36:
	.string	"_offset"
.LASF152:
	.string	"upsecs"
.LASF98:
	.string	"shell_escape_always_quoting_style"
.LASF65:
	.string	"tm_mon"
.LASF77:
	.string	"timezone"
.LASF93:
	.string	"program_name"
.LASF45:
	.string	"_IO_marker"
.LASF48:
	.string	"stdin"
.LASF66:
	.string	"tm_year"
.LASF129:
	.string	"STRUCT_UTMP"
.LASF1:
	.string	"unsigned int"
.LASF40:
	.string	"_freeres_buf"
.LASF86:
	.string	"optopt"
.LASF0:
	.string	"long unsigned int"
.LASF121:
	.string	"ut_id"
.LASF20:
	.string	"_IO_write_ptr"
.LASF76:
	.string	"daylight"
.LASF51:
	.string	"sys_nerr"
.LASF162:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF3:
	.string	"short unsigned int"
.LASF83:
	.string	"optarg"
.LASF109:
	.string	"error_one_per_line"
.LASF69:
	.string	"tm_isdst"
.LASF89:
	.string	"Version"
.LASF24:
	.string	"_IO_save_base"
.LASF124:
	.string	"ut_exit"
.LASF82:
	.string	"environ"
.LASF35:
	.string	"_lock"
.LASF30:
	.string	"_flags2"
.LASF42:
	.string	"_mode"
.LASF49:
	.string	"stdout"
.LASF92:
	.string	"version_etc_copyright"
.LASF118:
	.string	"ut_type"
.LASF62:
	.string	"tm_min"
.LASF131:
	.string	"READ_UTMP_USER_PROCESS"
.LASF144:
	.string	"entries"
.LASF146:
	.string	"time_now"
.LASF123:
	.string	"ut_host"
.LASF78:
	.string	"getdate_err"
.LASF68:
	.string	"tm_yday"
.LASF137:
	.string	"filename"
.LASF84:
	.string	"optind"
.LASF111:
	.string	"quote_quoting_options"
.LASF70:
	.string	"tm_gmtoff"
.LASF21:
	.string	"_IO_write_end"
.LASF147:
	.string	"updays"
.LASF165:
	.string	"_IO_lock_t"
.LASF60:
	.string	"_IO_FILE"
.LASF107:
	.string	"error_print_progname"
.LASF125:
	.string	"ut_session"
.LASF158:
	.string	"map_prog"
.LASF81:
	.string	"__environ"
.LASF57:
	.string	"time_t"
.LASF50:
	.string	"stderr"
.LASF52:
	.string	"sys_errlist"
.LASF148:
	.string	"uphours"
.LASF27:
	.string	"_markers"
.LASF128:
	.string	"__glibc_reserved"
.LASF100:
	.string	"c_maybe_quoting_style"
.LASF2:
	.string	"unsigned char"
.LASF157:
	.string	"node"
.LASF149:
	.string	"upmins"
.LASF12:
	.string	"__pid_t"
.LASF5:
	.string	"short int"
.LASF43:
	.string	"_unused2"
.LASF115:
	.string	"tv_sec"
.LASF53:
	.string	"_sys_nerr"
.LASF33:
	.string	"_vtable_offset"
.LASF75:
	.string	"tzname"
.LASF44:
	.string	"FILE"
.LASF112:
	.string	"__exit_status"
.LASF97:
	.string	"shell_escape_quoting_style"
.LASF105:
	.string	"quoting_style_args"
.LASF116:
	.string	"tv_usec"
.LASF67:
	.string	"tm_wday"
.LASF56:
	.string	"long double"
.LASF119:
	.string	"ut_pid"
.LASF14:
	.string	"char"
.LASF96:
	.string	"shell_always_quoting_style"
.LASF103:
	.string	"clocale_quoting_style"
.LASF117:
	.string	"utmpx"
.LASF54:
	.string	"_sys_errlist"
.LASF7:
	.string	"__int32_t"
.LASF85:
	.string	"opterr"
.LASF9:
	.string	"__uintmax_t"
.LASF11:
	.string	"__off64_t"
.LASF110:
	.string	"quoting_options"
.LASF18:
	.string	"_IO_read_base"
.LASF26:
	.string	"_IO_save_end"
.LASF79:
	.string	"_sys_siglist"
.LASF156:
	.string	"infomap"
.LASF64:
	.string	"tm_mday"
.LASF126:
	.string	"ut_tv"
.LASF135:
	.string	"usage"
.LASF41:
	.string	"__pad5"
.LASF13:
	.string	"__time_t"
.LASF160:
	.string	"select_plural"
.LASF61:
	.string	"tm_sec"
.LASF133:
	.string	"argv"
.LASF73:
	.string	"__daylight"
.LASF136:
	.string	"status"
.LASF164:
	.string	"/root/coreutils"
.LASF101:
	.string	"escape_quoting_style"
.LASF161:
	.string	"PLURAL_REDUCER"
.LASF104:
	.string	"custom_quoting_style"
.LASF25:
	.string	"_IO_backup_base"
.LASF108:
	.string	"error_message_count"
.LASF159:
	.string	"lc_messages"
.LASF141:
	.string	"uptime"
.LASF138:
	.string	"options"
.LASF132:
	.string	"argc"
.LASF39:
	.string	"_freeres_list"
.LASF47:
	.string	"_IO_wide_data"
.LASF145:
	.string	"boot_time"
.LASF130:
	.string	"READ_UTMP_CHECK_PIDS"
.LASF163:
	.string	"src/uptime.c"
.LASF72:
	.string	"__tzname"
.LASF134:
	.string	"main"
.LASF19:
	.string	"_IO_write_base"
.LASF154:
	.string	"emit_ancillary_info"
.LASF120:
	.string	"ut_line"
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
