	.file	"pinky.c"
	.text
.Ltext0:
	.type	to_uchar, @function
to_uchar:
.LFB11:
	.file 1 "src/system.h"
	.loc 1 156 48
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 1 156 57
	movzbl	-4(%rbp), %eax
	.loc 1 156 61
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	to_uchar, .-to_uchar
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
	jmp	.L15
.L17:
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
.L15:
	.loc 1 744 9
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L16
	.loc 1 744 27 discriminator 1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 744 24 discriminator 1
	testb	%al, %al
	jne	.L17
.L16:
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
	.data
	.type	include_idle, @object
	.size	include_idle, 1
include_idle:
	.byte	1
	.type	include_heading, @object
	.size	include_heading, 1
include_heading:
	.byte	1
	.type	include_fullname, @object
	.size	include_fullname, 1
include_fullname:
	.byte	1
	.type	include_project, @object
	.size	include_project, 1
include_project:
	.byte	1
	.type	include_plan, @object
	.size	include_plan, 1
include_plan:
	.byte	1
	.type	include_home_and_shell, @object
	.size	include_home_and_shell, 1
include_home_and_shell:
	.byte	1
	.type	do_short_format, @object
	.size	do_short_format, 1
do_short_format:
	.byte	1
	.type	include_where, @object
	.size	include_where, 1
include_where:
	.byte	1
	.local	time_format
	.comm	time_format,8,8
	.local	time_format_width
	.comm	time_format_width,4,4
	.section	.rodata
.LC18:
	.string	"help"
.LC19:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 96
longopts:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC19
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
	.text
	.type	count_ampersands, @function
count_ampersands:
.LFB46:
	.file 2 "src/pinky.c"
	.loc 2 86 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 2 87 10
	movq	$0, -8(%rbp)
.L21:
	.loc 2 90 11
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 90 10
	cmpb	$38, %al
	jne	.L20
	.loc 2 91 14
	addq	$1, -8(%rbp)
.L20:
	.loc 2 92 18
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 92 14
	movzbl	(%rax), %eax
	.loc 2 92 5
	testb	%al, %al
	jne	.L21
	.loc 2 93 10
	movq	-8(%rbp), %rax
	.loc 2 94 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	count_ampersands, .-count_ampersands
	.type	create_fullname, @function
create_fullname:
.LFB47:
	.loc 2 104 1
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
	movq	%rsi, -96(%rbp)
	.loc 2 105 18
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 105 10
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	.loc 2 108 23
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	count_ampersands
	movq	%rax, -48(%rbp)
	.loc 2 110 6
	cmpq	$0, -48(%rbp)
	je	.L24
.LBB2:
	.loc 2 112 21
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -40(%rbp)
	.loc 2 113 14
	movq	-48(%rbp), %rax
	imulq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 114 24
	movq	-32(%rbp), %rax
	subq	-48(%rbp), %rax
	.loc 2 114 13
	addq	%rax, -72(%rbp)
	.loc 2 115 11
	movl	$0, %ecx
	movq	-40(%rbp), %rax
	mulq	-48(%rbp)
	jno	.L25
	movl	$1, %ecx
.L25:
	testq	%rax, %rax
	jns	.L27
	movl	$1, %ecx
.L27:
	movq	%rcx, %rax
	andl	$1, %eax
	.loc 2 115 10
	testb	%al, %al
	jne	.L28
	.loc 2 115 47 discriminator 1
	movq	-72(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L24
.L28:
	.loc 2 116 9
	call	xalloc_die@PLT
.L24:
.LBE2:
	.loc 2 119 16
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -24(%rbp)
	.loc 2 119 5
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 2 121 9
	jmp	.L29
.L35:
	.loc 2 123 11
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 123 10
	cmpb	$38, %al
	jne	.L30
.LBB3:
	.loc 2 125 23
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 2 126 15
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	.loc 2 126 14
	testl	%eax, %eax
	je	.L32
	.loc 2 127 45
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	.loc 2 127 39
	movzbl	(%rax), %eax
	.loc 2 127 29
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	.loc 2 127 20
	movzbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	movl	%eax, %ecx
	.loc 2 127 15
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	.loc 2 127 18
	movl	%ecx, %edx
	movb	%dl, (%rax)
	.loc 2 128 17
	jmp	.L32
.L33:
	.loc 2 129 26
	movq	-56(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -56(%rbp)
	.loc 2 129 15
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	.loc 2 129 20
	movzbl	(%rdx), %edx
	.loc 2 129 18
	movb	%dl, (%rax)
.L32:
	.loc 2 128 18
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 128 17
	testb	%al, %al
	jne	.L33
	jmp	.L34
.L30:
.LBE3:
	.loc 2 133 13
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	.loc 2 133 18
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edx
	.loc 2 133 16
	movb	%dl, (%rax)
.L34:
	.loc 2 136 17
	addq	$1, -88(%rbp)
.L29:
	.loc 2 121 10
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 121 9
	testb	%al, %al
	jne	.L35
	.loc 2 138 6
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 140 10
	movq	-24(%rbp), %rax
	.loc 2 141 1
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	create_fullname, .-create_fullname
	.section	.rodata
.LC20:
	.string	"     "
.LC21:
	.string	"%02d:%02d"
.LC22:
	.string	"%lud"
	.text
	.type	idle_string, @function
idle_string:
.LFB48:
	.loc 2 148 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 153 11
	movq	now.6417(%rip), %rax
	.loc 2 153 6
	testq	%rax, %rax
	jne	.L38
	.loc 2 154 5
	leaq	now.6417(%rip), %rdi
	call	time@PLT
.L38:
	.loc 2 156 22
	movq	now.6417(%rip), %rax
	.loc 2 156 16
	subq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 157 6
	cmpq	$59, -16(%rbp)
	jg	.L39
	.loc 2 158 12
	leaq	.LC20(%rip), %rax
	jmp	.L40
.L39:
	.loc 2 159 6
	cmpq	$86399, -16(%rbp)
	jg	.L41
.LBB4:
	.loc 2 161 32
	movq	-16(%rbp), %rcx
	movabsq	$5247073869855161349, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$10, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 161 11
	movl	%eax, -24(%rbp)
	.loc 2 162 35
	movq	-16(%rbp), %rsi
	movabsq	$5247073869855161349, %rdx
	movq	%rsi, %rax
	imulq	%rdx
	sarq	$10, %rdx
	movq	%rsi, %rax
	sarq	$63, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	imulq	$3600, %rcx, %rax
	subq	%rax, %rsi
	movq	%rsi, %rcx
	.loc 2 162 48
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
	.loc 2 162 11
	movl	%eax, -20(%rbp)
	.loc 2 163 7
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	leaq	.LC21(%rip), %rsi
	leaq	buf.6418(%rip), %rdi
	movl	$0, %eax
	call	sprintf@PLT
.LBE4:
	jmp	.L42
.L41:
.LBB5:
	.loc 2 167 45
	movq	-16(%rbp), %rcx
	movabsq	$1749024623285053783, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$13, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 167 25
	movq	%rax, -8(%rbp)
	.loc 2 168 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rsi
	leaq	buf.6418(%rip), %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L42:
.LBE5:
	.loc 2 170 10
	leaq	buf.6418(%rip), %rax
.L40:
	.loc 2 171 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	idle_string, .-idle_string
	.type	time_string, @function
time_string:
.LFB49:
	.loc 2 176 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 176 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 185 14
	movq	-40(%rbp), %rax
	movl	340(%rax), %eax
	cltq
	.loc 2 185 10
	movq	%rax, -24(%rbp)
	.loc 2 186 20
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	movq	%rax, -16(%rbp)
	.loc 2 188 6
	cmpq	$0, -16(%rbp)
	je	.L44
	.loc 2 190 7
	movq	time_format(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$33, %esi
	leaq	buf.6426(%rip), %rdi
	call	strftime@PLT
	.loc 2 191 14
	leaq	buf.6426(%rip), %rax
	jmp	.L46
.L44:
	.loc 2 194 12
	movq	-24(%rbp), %rax
	leaq	buf.6426(%rip), %rsi
	movq	%rax, %rdi
	call	timetostr
.L46:
	.loc 2 195 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L47
	.loc 2 195 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	time_string, .-time_string
	.section	.rodata
.LC23:
	.string	"%-8.*s"
.LC24:
	.string	"        ???"
.LC25:
	.string	" %19s"
.LC26:
	.string	" %-19.19s"
.LC27:
	.string	" %c%-8.*s"
.LC28:
	.string	" %-6s"
.LC29:
	.string	"?????"
.LC30:
	.string	" %s"
.LC31:
	.string	" %s:%s"
	.text
	.type	print_entry, @function
print_entry:
.LFB50:
	.loc 2 201 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$544, %rsp
	movq	%rdi, -536(%rbp)
	.loc 2 201 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 210 9
	leaq	-320(%rbp), %rax
	movq	%rax, -512(%rbp)
	.loc 2 215 10
	movq	-536(%rbp), %rax
	movzbl	8(%rax), %eax
	.loc 2 215 6
	cmpb	$47, %al
	je	.L49
	movq	-512(%rbp), %rax
	movl	$1986356271, (%rax)
	movw	$47, 4(%rax)
	.loc 2 216 9
	addq	$5, -512(%rbp)
.L49:
	.loc 2 217 23
	movq	-536(%rbp), %rax
	leaq	8(%rax), %rcx
	.loc 2 217 3
	movq	-512(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stzncpy
	.loc 2 219 7
	leaq	-464(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 219 6
	testl	%eax, %eax
	jne	.L50
	.loc 2 221 20
	movl	-440(%rbp), %eax
	.loc 2 221 29
	andl	$16, %eax
	.loc 2 221 12
	testl	%eax, %eax
	je	.L51
	.loc 2 221 12 is_stmt 0 discriminator 1
	movl	$32, %eax
	jmp	.L52
.L51:
	.loc 2 221 12 discriminator 2
	movl	$42, %eax
.L52:
	.loc 2 221 12 discriminator 4
	movb	%al, -521(%rbp)
	.loc 2 222 19 is_stmt 1 discriminator 4
	movq	-392(%rbp), %rax
	movq	%rax, -520(%rbp)
	jmp	.L53
.L50:
	.loc 2 226 12
	movb	$63, -521(%rbp)
	.loc 2 227 19
	movq	$0, -520(%rbp)
.L53:
	.loc 2 230 35
	movq	-536(%rbp), %rax
	addq	$44, %rax
	.loc 2 230 3
	movq	%rax, %rdx
	movl	$32, %esi
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 232 7
	movzbl	include_fullname(%rip), %eax
	.loc 2 232 6
	testb	%al, %al
	je	.L54
.LBB6:
	.loc 2 237 22
	movq	-536(%rbp), %rax
	leaq	44(%rax), %rcx
	.loc 2 237 7
	leaq	-272(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stzncpy
	.loc 2 238 12
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	getpwnam@PLT
	movq	%rax, -488(%rbp)
	.loc 2 239 10
	cmpq	$0, -488(%rbp)
	jne	.L55
	.loc 2 241 9
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L54
.L55:
.LBB7:
	.loc 2 244 41
	movq	-488(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 244 31
	movl	$44, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -480(%rbp)
	.loc 2 247 14
	cmpq	$0, -480(%rbp)
	je	.L57
	.loc 2 248 20
	movq	-480(%rbp), %rax
	movb	$0, (%rax)
.L57:
	.loc 2 250 53
	movq	-488(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 250 39
	movq	-488(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 250 20
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	create_fullname
	movq	%rax, -472(%rbp)
	.loc 2 251 11
	movq	-472(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 252 11
	movq	-472(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L54:
.LBE7:
.LBE6:
	.loc 2 257 59
	movq	-536(%rbp), %rax
	leaq	8(%rax), %rdx
	.loc 2 256 3
	movsbl	-521(%rbp), %eax
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	%eax, %esi
	leaq	.LC27(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 259 7
	movzbl	include_idle(%rip), %eax
	.loc 2 259 6
	testb	%al, %al
	je	.L58
	.loc 2 261 10
	cmpq	$0, -520(%rbp)
	je	.L59
	.loc 2 262 9
	movq	-520(%rbp), %rax
	movq	%rax, %rdi
	call	idle_string
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L58
.L59:
	.loc 2 265 9
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L58:
	.loc 2 268 3
	movq	-536(%rbp), %rax
	movq	%rax, %rdi
	call	time_string
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 271 7
	movzbl	include_where(%rip), %eax
	.loc 2 271 6
	testb	%al, %al
	je	.L60
	.loc 2 271 41 discriminator 1
	movq	-536(%rbp), %rax
	movzbl	76(%rax), %eax
	.loc 2 271 21 discriminator 1
	testb	%al, %al
	je	.L60
.LBB8:
	.loc 2 274 13
	movq	$0, -504(%rbp)
	.loc 2 275 13
	movq	$0, -496(%rbp)
	.loc 2 278 33
	movq	-536(%rbp), %rax
	leaq	76(%rax), %rcx
	.loc 2 278 7
	leaq	-272(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stzncpy
	.loc 2 281 17
	leaq	-272(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -496(%rbp)
	.loc 2 282 10
	cmpq	$0, -496(%rbp)
	je	.L61
	.loc 2 283 17
	movq	-496(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -496(%rbp)
	.loc 2 283 20
	movb	$0, (%rax)
.L61:
	.loc 2 285 11
	movzbl	-272(%rbp), %eax
	.loc 2 285 10
	testb	%al, %al
	je	.L62
	.loc 2 287 16
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	canon_host@PLT
	movq	%rax, -504(%rbp)
.L62:
	.loc 2 288 10
	cmpq	$0, -504(%rbp)
	jne	.L63
	.loc 2 289 14
	leaq	-272(%rbp), %rax
	movq	%rax, -504(%rbp)
.L63:
	.loc 2 291 10
	cmpq	$0, -496(%rbp)
	je	.L64
	.loc 2 292 9
	movq	-496(%rbp), %rdx
	movq	-504(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L65
.L64:
	.loc 2 294 9
	movq	-504(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L65:
	.loc 2 296 10
	leaq	-272(%rbp), %rax
	cmpq	%rax, -504(%rbp)
	je	.L60
	.loc 2 297 9
	movq	-504(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L60:
.LBE8:
	.loc 2 301 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 302 1
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
.LFE50:
	.size	print_entry, .-print_entry
	.section	.rodata
.LC32:
	.string	"Login name: "
.LC33:
	.string	"%-28s"
.LC34:
	.string	"In real life: "
.LC35:
	.string	"???\n"
.LC36:
	.string	"Directory: "
.LC37:
	.string	"%-29s"
.LC38:
	.string	"Shell: "
.LC39:
	.string	"/.project"
.LC40:
	.string	"r"
.LC41:
	.string	"Project: "
.LC42:
	.string	"/.plan"
.LC43:
	.string	"Plan:\n"
	.text
	.type	print_long_entry, @function
print_long_entry:
.LFB51:
	.loc 2 308 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1160, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1160(%rbp)
	.loc 2 308 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 311 8
	movq	-1160(%rbp), %rax
	movq	%rax, %rdi
	call	getpwnam@PLT
	movq	%rax, -1144(%rbp)
	.loc 2 313 11
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	.loc 2 313 3
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 314 3
	movq	-1160(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 316 11
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	.loc 2 316 3
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 317 6
	cmpq	$0, -1144(%rbp)
	jne	.L69
	.loc 2 320 7
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 321 7
	jmp	.L68
.L69:
.LBB9:
	.loc 2 325 37
	movq	-1144(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 325 27
	movl	$44, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -1136(%rbp)
	.loc 2 328 10
	cmpq	$0, -1136(%rbp)
	je	.L71
	.loc 2 329 16
	movq	-1136(%rbp), %rax
	movb	$0, (%rax)
.L71:
	.loc 2 331 49
	movq	-1144(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 331 35
	movq	-1144(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 331 16
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	create_fullname
	movq	%rax, -1128(%rbp)
	.loc 2 332 7
	movq	-1128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 333 7
	movq	-1128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE9:
	.loc 2 336 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 338 7
	movzbl	include_home_and_shell(%rip), %eax
	.loc 2 338 6
	testb	%al, %al
	je	.L72
	.loc 2 340 15
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	.loc 2 340 7
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 341 7
	movq	-1144(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 342 15
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	.loc 2 342 7
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 343 7
	movq	-1144(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 344 7
	movl	$10, %edi
	call	putchar_unlocked@PLT
.L72:
	.loc 2 347 7
	movzbl	include_project(%rip), %eax
	.loc 2 347 6
	testb	%al, %al
	je	.L73
.LBB10:
	.loc 2 351 25
	leaq	.LC39(%rip), %rax
	movq	%rax, -1120(%rbp)
	.loc 2 353 28
	movq	-1144(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 353 18
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 2 353 40
	movq	-1120(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 353 38
	addq	%rbx, %rax
	.loc 2 353 9
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -1112(%rbp)
	.loc 2 354 34
	movq	-1144(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 2 354 7
	movq	-1112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	movq	%rax, %rdx
	movq	-1120(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	.loc 2 356 16
	movq	-1112(%rbp), %rax
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -1104(%rbp)
	.loc 2 357 10
	cmpq	$0, -1104(%rbp)
	je	.L74
.LBB11:
	.loc 2 361 19
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	.loc 2 361 11
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 363 17
	jmp	.L75
.L76:
	.loc 2 364 13
	movq	stdout(%rip), %rcx
	movq	-1096(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
.L75:
	.loc 2 363 27
	movq	-1104(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1024, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread_unlocked@PLT
	movq	%rax, -1096(%rbp)
	.loc 2 363 17
	cmpq	$0, -1096(%rbp)
	jne	.L76
	.loc 2 365 11
	movq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
.L74:
.LBE11:
	.loc 2 368 7
	movq	-1112(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L73:
.LBE10:
	.loc 2 371 7
	movzbl	include_plan(%rip), %eax
	.loc 2 371 6
	testb	%al, %al
	je	.L77
.LBB12:
	.loc 2 375 25
	leaq	.LC42(%rip), %rax
	movq	%rax, -1088(%rbp)
	.loc 2 377 28
	movq	-1144(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 377 18
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 2 377 40
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 377 38
	addq	%rbx, %rax
	.loc 2 377 9
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -1080(%rbp)
	.loc 2 378 31
	movq	-1144(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 2 378 7
	movq	-1080(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	movq	%rax, %rdx
	movq	-1088(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	.loc 2 380 16
	movq	-1080(%rbp), %rax
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -1072(%rbp)
	.loc 2 381 10
	cmpq	$0, -1072(%rbp)
	je	.L78
.LBB13:
	.loc 2 385 19
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	.loc 2 385 11
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 387 17
	jmp	.L79
.L80:
	.loc 2 388 13
	movq	stdout(%rip), %rcx
	movq	-1064(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
.L79:
	.loc 2 387 27
	movq	-1072(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1024, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread_unlocked@PLT
	movq	%rax, -1064(%rbp)
	.loc 2 387 17
	cmpq	$0, -1064(%rbp)
	jne	.L80
	.loc 2 389 11
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
.L78:
.LBE13:
	.loc 2 392 7
	movq	-1080(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L77:
.LBE12:
	.loc 2 395 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
.L68:
	.loc 2 396 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L81
	call	__stack_chk_fail@PLT
.L81:
	addq	$1160, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	print_long_entry, .-print_long_entry
	.section	.rodata
.LC44:
	.string	"Login"
.LC45:
	.string	"%-8s"
.LC46:
	.string	"Name"
.LC47:
	.string	" %-19s"
.LC48:
	.string	" TTY"
.LC49:
	.string	" %-9s"
.LC50:
	.string	"Idle"
.LC51:
	.string	"When"
.LC52:
	.string	" %-*s"
.LC53:
	.string	"Where"
	.text
	.type	print_heading, @function
print_heading:
.LFB52:
	.loc 2 403 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 404 3
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	leaq	.LC45(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 405 7
	movzbl	include_fullname(%rip), %eax
	.loc 2 405 6
	testb	%al, %al
	je	.L83
	.loc 2 406 5
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	leaq	.LC47(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L83:
	.loc 2 407 3
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	leaq	.LC49(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 408 7
	movzbl	include_idle(%rip), %eax
	.loc 2 408 6
	testb	%al, %al
	je	.L84
	.loc 2 409 5
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L84:
	.loc 2 410 3
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	time_format_width(%rip), %eax
	movl	%eax, %esi
	leaq	.LC52(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 412 7
	movzbl	include_where(%rip), %eax
	.loc 2 412 6
	testb	%al, %al
	je	.L85
	.loc 2 413 5
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L85:
	.loc 2 415 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 416 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	print_heading, .-print_heading
	.section	.rodata
.LC54:
	.string	"%Y-%m-%d %H:%M"
.LC55:
	.string	"%b %e %H:%M"
	.text
	.type	scan_entries, @function
scan_entries:
.LFB53:
	.loc 2 423 1
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
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	.loc 2 424 7
	movl	$2, %edi
	call	hard_locale@PLT
	.loc 2 424 6
	testb	%al, %al
	je	.L87
	.loc 2 426 19
	leaq	.LC54(%rip), %rax
	movq	%rax, time_format(%rip)
	.loc 2 427 25
	movl	$16, time_format_width(%rip)
	jmp	.L88
.L87:
	.loc 2 431 19
	leaq	.LC55(%rip), %rax
	movq	%rax, time_format(%rip)
	.loc 2 432 25
	movl	$12, time_format_width(%rip)
.L88:
	.loc 2 435 7
	movzbl	include_heading(%rip), %eax
	.loc 2 435 6
	testb	%al, %al
	je	.L90
	.loc 2 436 5
	call	print_heading
	.loc 2 438 9
	jmp	.L90
.L97:
	.loc 2 440 11
	movq	-32(%rbp), %rax
	movzbl	44(%rax), %eax
	.loc 2 440 10
	testb	%al, %al
	je	.L91
	.loc 2 440 11 discriminator 1
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$7, %ax
	jne	.L91
	.loc 2 442 14
	cmpl	$0, -36(%rbp)
	je	.L92
.LBB14:
	.loc 2 444 24
	movl	$0, -4(%rbp)
	.loc 2 444 15
	jmp	.L93
.L96:
	.loc 2 445 21
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	44(%rdx), %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncmp@PLT
	.loc 2 445 20
	testl	%eax, %eax
	jne	.L94
	.loc 2 447 21
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_entry
	.loc 2 448 21
	jmp	.L91
.L94:
	.loc 2 444 48 discriminator 2
	addl	$1, -4(%rbp)
.L93:
	.loc 2 444 15 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L96
	jmp	.L91
.L92:
.LBE14:
	.loc 2 452 13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_entry
.L91:
	.loc 2 454 15
	addq	$384, -32(%rbp)
.L90:
	.loc 2 438 11
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 438 9
	testq	%rax, %rax
	jne	.L97
	.loc 2 456 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	scan_entries, .-scan_entries
	.section	.rodata
.LC56:
	.string	"%s"
	.text
	.type	short_pinky, @function
short_pinky:
.LFB54:
	.loc 2 463 1
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
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 2 463 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 465 16
	movq	$0, -32(%rbp)
	.loc 2 467 7
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	read_utmp@PLT
	.loc 2 467 6
	testl	%eax, %eax
	je	.L99
.LBB15:
	.loc 2 468 5
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC56(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L99:
.LBE15:
	.loc 2 470 3
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	-60(%rbp), %edx
	movq	%rax, %rdi
	call	scan_entries
	.loc 2 472 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 473 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L100
	call	__stack_chk_fail@PLT
.L100:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	short_pinky, .-short_pinky
	.type	long_pinky, @function
long_pinky:
.LFB55:
	.loc 2 477 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
.LBB16:
	.loc 2 478 12
	movl	$0, -4(%rbp)
	.loc 2 478 3
	jmp	.L102
.L103:
	.loc 2 479 33 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 479 5 discriminator 3
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	print_long_entry
	.loc 2 478 36 discriminator 3
	addl	$1, -4(%rbp)
.L102:
	.loc 2 478 3 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L103
.LBE16:
	.loc 2 480 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	long_pinky, .-long_pinky
	.section	.rodata
	.align 8
.LC57:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC58:
	.string	"Usage: %s [OPTION]... [USER]...\n"
	.align 8
.LC59:
	.ascii	"\n  -l              produce long format output for the speci"
	.ascii	"fied USERs\n "
	.string	" -b              omit the user's home directory and shell in long format\n  -h              omit the user's project file in long format\n  -p              omit the user's plan file in long format\n  -s              do short format output, this is the default\n"
	.align 8
.LC60:
	.ascii	"  -f              omit the line of column headings i"
	.string	"n short format\n  -w              omit the user's full name in short format\n  -i              omit the user's full name and remote host in short format\n  -q              omit the user's full name, remote host and idle time\n                  in short format\n"
	.align 8
.LC61:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC62:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC63:
	.string	"\nA lightweight 'finger' program;  print user information.\nThe utmp file will be %s.\n"
.LC64:
	.string	"/var/run/utmp"
.LC65:
	.string	"pinky"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB56:
	.loc 2 484 1
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
	.loc 2 485 6
	cmpl	$0, -20(%rbp)
	je	.L105
	.loc 2 486 5
	movq	program_name(%rip), %rbx
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L106
.L105:
	.loc 2 489 7
	movq	program_name(%rip), %rbx
	.loc 2 489 15
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	.loc 2 489 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 490 7
	movq	stdout(%rip), %rbx
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 498 7
	movq	stdout(%rip), %rbx
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 505 7
	movq	stdout(%rip), %rbx
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 506 7
	movq	stdout(%rip), %rbx
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 507 15
	leaq	.LC63(%rip), %rdi
	call	gettext@PLT
	.loc 2 507 7
	leaq	.LC64(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 512 7
	leaq	.LC65(%rip), %rdi
	call	emit_ancillary_info
.L106:
	.loc 2 514 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE56:
	.size	usage, .-usage
	.section	.rodata
.LC66:
	.string	"/usr/local/share/locale"
.LC67:
	.string	"David MacKenzie"
.LC68:
	.string	"Joseph Arceneaux"
.LC69:
	.string	"Kaveh Ghazi"
.LC70:
	.string	"sfwiqbhlp"
	.align 8
.LC71:
	.string	"no username specified; at least one must be specified when using -l"
	.text
	.globl	main
	.type	main, @function
main:
.LFB57:
	.loc 2 519 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 524 3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 525 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 526 3
	leaq	.LC66(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 527 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 529 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 531 9
	jmp	.L108
.L123:
	.loc 2 533 7
	cmpl	$119, -8(%rbp)
	jg	.L109
	cmpl	$98, -8(%rbp)
	jge	.L110
	cmpl	$-131, -8(%rbp)
	je	.L111
	cmpl	$-130, -8(%rbp)
	je	.L112
	jmp	.L109
.L110:
	movl	-8(%rbp), %eax
	subl	$98, %eax
	cmpl	$21, %eax
	ja	.L109
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L114(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L114(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L114:
	.long	.L122-.L114
	.long	.L109-.L114
	.long	.L109-.L114
	.long	.L109-.L114
	.long	.L121-.L114
	.long	.L109-.L114
	.long	.L120-.L114
	.long	.L119-.L114
	.long	.L109-.L114
	.long	.L109-.L114
	.long	.L118-.L114
	.long	.L109-.L114
	.long	.L109-.L114
	.long	.L109-.L114
	.long	.L117-.L114
	.long	.L116-.L114
	.long	.L109-.L114
	.long	.L115-.L114
	.long	.L109-.L114
	.long	.L109-.L114
	.long	.L109-.L114
	.long	.L113-.L114
	.text
.L115:
	.loc 2 536 27
	movb	$1, do_short_format(%rip)
	.loc 2 537 11
	jmp	.L108
.L118:
	.loc 2 540 27
	movb	$0, do_short_format(%rip)
	.loc 2 541 11
	jmp	.L108
.L121:
	.loc 2 544 27
	movb	$0, include_heading(%rip)
	.loc 2 545 11
	jmp	.L108
.L113:
	.loc 2 548 28
	movb	$0, include_fullname(%rip)
	.loc 2 549 11
	jmp	.L108
.L119:
	.loc 2 552 28
	movb	$0, include_fullname(%rip)
	.loc 2 554 25
	movb	$0, include_where(%rip)
	.loc 2 556 11
	jmp	.L108
.L116:
	.loc 2 559 28
	movb	$0, include_fullname(%rip)
	.loc 2 561 25
	movb	$0, include_where(%rip)
	.loc 2 563 24
	movb	$0, include_idle(%rip)
	.loc 2 564 11
	jmp	.L108
.L120:
	.loc 2 567 27
	movb	$0, include_project(%rip)
	.loc 2 568 11
	jmp	.L108
.L117:
	.loc 2 571 24
	movb	$0, include_plan(%rip)
	.loc 2 572 11
	jmp	.L108
.L122:
	.loc 2 575 34
	movb	$0, include_home_and_shell(%rip)
	.loc 2 576 11
	jmp	.L108
.L112:
	.loc 2 578 9
	movl	$0, %edi
	call	usage
.L111:
	.loc 2 580 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	pushq	$0
	leaq	.LC69(%rip), %rcx
	pushq	%rcx
	leaq	.LC67(%rip), %r9
	leaq	.LC68(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC65(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L109:
	.loc 2 583 11
	movl	$1, %edi
	call	usage
.L108:
	.loc 2 531 18
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -8(%rbp)
	.loc 2 531 9
	cmpl	$-1, -8(%rbp)
	jne	.L123
	.loc 2 587 18
	movl	optind(%rip), %eax
	.loc 2 587 11
	movl	-20(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 2 589 7
	movzbl	do_short_format(%rip), %eax
	xorl	$1, %eax
	.loc 2 589 6
	testb	%al, %al
	je	.L124
	.loc 2 589 24 discriminator 1
	cmpl	$0, -4(%rbp)
	jne	.L124
	.loc 2 591 20
	leaq	.LC71(%rip), %rdi
	call	gettext@PLT
	.loc 2 591 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 593 7
	movl	$1, %edi
	call	usage
.L124:
	.loc 2 596 7
	movzbl	do_short_format(%rip), %eax
	.loc 2 596 6
	testb	%al, %al
	je	.L125
	.loc 2 597 43
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 597 5
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC64(%rip), %rdi
	call	short_pinky
	jmp	.L126
.L125:
	.loc 2 599 31
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 599 5
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	long_pinky
.L126:
	.loc 2 601 10
	movl	$0, %eax
	.loc 2 602 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	main, .-main
	.local	now.6417
	.comm	now.6417,8,8
	.local	buf.6418
	.comm	buf.6418,22,16
	.local	buf.6426
	.comm	buf.6426,33,32
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 7 "/usr/include/pwd.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
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
	.file 25 "/usr/include/ctype.h"
	.file 26 "./lib/xalloc-oversized.h"
	.file 27 "./lib/version-etc.h"
	.file 28 "./lib/progname.h"
	.file 29 "./lib/quotearg.h"
	.file 30 "./lib/error.h"
	.file 31 "/usr/include/x86_64-linux-gnu/bits/utmpx.h"
	.file 32 "./lib/readutmp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1439
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF256
	.byte	0xc
	.long	.LASF257
	.long	.LASF258
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
	.long	0x49
	.uleb128 0x4
	.long	0x39
	.uleb128 0x5
	.long	0x39
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x4
	.long	0x49
	.uleb128 0x2
	.long	.LASF1
	.byte	0x3
	.byte	0x32
	.byte	0xc
	.long	0x61
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.long	0x61
	.uleb128 0x4
	.long	0x61
	.uleb128 0x2
	.long	.LASF3
	.byte	0x3
	.byte	0x37
	.byte	0xc
	.long	0x61
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.long	.LASF31
	.byte	0x20
	.byte	0x4
	.byte	0x32
	.byte	0x8
	.long	0xcc
	.uleb128 0xa
	.long	.LASF5
	.byte	0x4
	.byte	0x34
	.byte	0xf
	.long	0xd1
	.byte	0
	.uleb128 0xa
	.long	.LASF6
	.byte	0x4
	.byte	0x37
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF7
	.byte	0x4
	.byte	0x38
	.byte	0x8
	.long	0xe1
	.byte	0x10
	.uleb128 0xb
	.string	"val"
	.byte	0x4
	.byte	0x39
	.byte	0x7
	.long	0x61
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	0x8a
	.uleb128 0x3
	.byte	0x8
	.long	0x50
	.uleb128 0x4
	.long	0xd1
	.uleb128 0x5
	.long	0xd1
	.uleb128 0x3
	.byte	0x8
	.long	0x61
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF8
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF13
	.uleb128 0xc
	.long	.LASF15
	.byte	0x5
	.byte	0x29
	.byte	0x14
	.long	0x61
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0xc
	.long	.LASF16
	.byte	0x5
	.byte	0x48
	.byte	0x12
	.long	0x11d
	.uleb128 0xc
	.long	.LASF17
	.byte	0x5
	.byte	0x91
	.byte	0x19
	.long	0xfc
	.uleb128 0xc
	.long	.LASF18
	.byte	0x5
	.byte	0x92
	.byte	0x19
	.long	0xf5
	.uleb128 0xc
	.long	.LASF19
	.byte	0x5
	.byte	0x93
	.byte	0x19
	.long	0xf5
	.uleb128 0xc
	.long	.LASF20
	.byte	0x5
	.byte	0x94
	.byte	0x19
	.long	0xfc
	.uleb128 0xc
	.long	.LASF21
	.byte	0x5
	.byte	0x96
	.byte	0x1a
	.long	0xf5
	.uleb128 0xc
	.long	.LASF22
	.byte	0x5
	.byte	0x97
	.byte	0x1b
	.long	0xfc
	.uleb128 0xc
	.long	.LASF23
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x11d
	.uleb128 0xc
	.long	.LASF24
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x11d
	.uleb128 0xc
	.long	.LASF25
	.byte	0x5
	.byte	0x9a
	.byte	0x19
	.long	0x61
	.uleb128 0xc
	.long	.LASF26
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x11d
	.uleb128 0xd
	.byte	0x8
	.uleb128 0xc
	.long	.LASF27
	.byte	0x5
	.byte	0xae
	.byte	0x1d
	.long	0x11d
	.uleb128 0xc
	.long	.LASF28
	.byte	0x5
	.byte	0xb3
	.byte	0x1c
	.long	0x11d
	.uleb128 0xc
	.long	.LASF29
	.byte	0x5
	.byte	0xc4
	.byte	0x21
	.long	0x11d
	.uleb128 0xc
	.long	.LASF30
	.byte	0x6
	.byte	0xd1
	.byte	0x17
	.long	0xfc
	.uleb128 0x9
	.long	.LASF32
	.byte	0x30
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x243
	.uleb128 0xa
	.long	.LASF33
	.byte	0x7
	.byte	0x33
	.byte	0x9
	.long	0x39
	.byte	0
	.uleb128 0xa
	.long	.LASF34
	.byte	0x7
	.byte	0x34
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.byte	0x36
	.byte	0xb
	.long	0x13c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF36
	.byte	0x7
	.byte	0x37
	.byte	0xb
	.long	0x148
	.byte	0x14
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.byte	0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x24f
	.uleb128 0x9
	.long	.LASF41
	.byte	0xd8
	.byte	0x9
	.byte	0x31
	.byte	0x8
	.long	0x3d6
	.uleb128 0xa
	.long	.LASF42
	.byte	0x9
	.byte	0x33
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF43
	.byte	0x9
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0xa
	.long	.LASF44
	.byte	0x9
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0xa
	.long	.LASF45
	.byte	0x9
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0xa
	.long	.LASF46
	.byte	0x9
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0xa
	.long	.LASF47
	.byte	0x9
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0xa
	.long	.LASF48
	.byte	0x9
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0xa
	.long	.LASF49
	.byte	0x9
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0xa
	.long	.LASF50
	.byte	0x9
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0xa
	.long	.LASF51
	.byte	0x9
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0xa
	.long	.LASF52
	.byte	0x9
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0xa
	.long	.LASF53
	.byte	0x9
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0xa
	.long	.LASF54
	.byte	0x9
	.byte	0x44
	.byte	0x16
	.long	0x3f3
	.byte	0x60
	.uleb128 0xa
	.long	.LASF55
	.byte	0x9
	.byte	0x46
	.byte	0x14
	.long	0x3f9
	.byte	0x68
	.uleb128 0xa
	.long	.LASF56
	.byte	0x9
	.byte	0x48
	.byte	0x7
	.long	0x61
	.byte	0x70
	.uleb128 0xa
	.long	.LASF57
	.byte	0x9
	.byte	0x49
	.byte	0x7
	.long	0x61
	.byte	0x74
	.uleb128 0xa
	.long	.LASF58
	.byte	0x9
	.byte	0x4a
	.byte	0xb
	.long	0x178
	.byte	0x78
	.uleb128 0xa
	.long	.LASF59
	.byte	0x9
	.byte	0x4d
	.byte	0x12
	.long	0xee
	.byte	0x80
	.uleb128 0xa
	.long	.LASF60
	.byte	0x9
	.byte	0x4e
	.byte	0xf
	.long	0x103
	.byte	0x82
	.uleb128 0xa
	.long	.LASF61
	.byte	0x9
	.byte	0x4f
	.byte	0x8
	.long	0x3ff
	.byte	0x83
	.uleb128 0xa
	.long	.LASF62
	.byte	0x9
	.byte	0x51
	.byte	0xf
	.long	0x40f
	.byte	0x88
	.uleb128 0xa
	.long	.LASF63
	.byte	0x9
	.byte	0x59
	.byte	0xd
	.long	0x184
	.byte	0x90
	.uleb128 0xa
	.long	.LASF64
	.byte	0x9
	.byte	0x5b
	.byte	0x17
	.long	0x41a
	.byte	0x98
	.uleb128 0xa
	.long	.LASF65
	.byte	0x9
	.byte	0x5c
	.byte	0x19
	.long	0x425
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF66
	.byte	0x9
	.byte	0x5d
	.byte	0x14
	.long	0x3f9
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF67
	.byte	0x9
	.byte	0x5e
	.byte	0x9
	.long	0x1a8
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF68
	.byte	0x9
	.byte	0x5f
	.byte	0xa
	.long	0x1ce
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF69
	.byte	0x9
	.byte	0x60
	.byte	0x7
	.long	0x61
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF70
	.byte	0x9
	.byte	0x62
	.byte	0x8
	.long	0x42b
	.byte	0xc4
	.byte	0
	.uleb128 0xe
	.long	0x49
	.long	0x3e6
	.uleb128 0xf
	.long	0xfc
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.long	.LASF259
	.byte	0x9
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF71
	.uleb128 0x3
	.byte	0x8
	.long	0x3ee
	.uleb128 0x3
	.byte	0x8
	.long	0x24f
	.uleb128 0xe
	.long	0x49
	.long	0x40f
	.uleb128 0xf
	.long	0xfc
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3e6
	.uleb128 0x11
	.long	.LASF72
	.uleb128 0x3
	.byte	0x8
	.long	0x415
	.uleb128 0x11
	.long	.LASF73
	.uleb128 0x3
	.byte	0x8
	.long	0x420
	.uleb128 0xe
	.long	0x49
	.long	0x43b
	.uleb128 0xf
	.long	0xfc
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF74
	.byte	0xa
	.byte	0x89
	.byte	0xe
	.long	0x447
	.uleb128 0x3
	.byte	0x8
	.long	0x243
	.uleb128 0x2
	.long	.LASF75
	.byte	0xa
	.byte	0x8a
	.byte	0xe
	.long	0x447
	.uleb128 0x2
	.long	.LASF76
	.byte	0xa
	.byte	0x8b
	.byte	0xe
	.long	0x447
	.uleb128 0x2
	.long	.LASF77
	.byte	0xb
	.byte	0x1a
	.byte	0xc
	.long	0x61
	.uleb128 0xe
	.long	0xd7
	.long	0x47c
	.uleb128 0x12
	.byte	0
	.uleb128 0x4
	.long	0x471
	.uleb128 0x2
	.long	.LASF78
	.byte	0xb
	.byte	0x1b
	.byte	0x1a
	.long	0x47c
	.uleb128 0x2
	.long	.LASF79
	.byte	0xb
	.byte	0x1e
	.byte	0xc
	.long	0x61
	.uleb128 0x2
	.long	.LASF80
	.byte	0xb
	.byte	0x1f
	.byte	0x1a
	.long	0x47c
	.uleb128 0xc
	.long	.LASF81
	.byte	0x6
	.byte	0x8f
	.byte	0x1a
	.long	0x11d
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF82
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.long	.LASF83
	.uleb128 0xc
	.long	.LASF84
	.byte	0xc
	.byte	0x7
	.byte	0x12
	.long	0x19c
	.uleb128 0x9
	.long	.LASF85
	.byte	0x10
	.byte	0xd
	.byte	0xa
	.byte	0x8
	.long	0x4f3
	.uleb128 0xa
	.long	.LASF86
	.byte	0xd
	.byte	0xc
	.byte	0xc
	.long	0x19c
	.byte	0
	.uleb128 0xa
	.long	.LASF87
	.byte	0xd
	.byte	0x10
	.byte	0x15
	.long	0x1c2
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	.LASF88
	.byte	0xe
	.value	0x30c
	.byte	0x1
	.long	0x61
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF89
	.uleb128 0xe
	.long	0x49
	.long	0x517
	.uleb128 0xf
	.long	0xfc
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.string	"tm"
	.byte	0x38
	.byte	0xf
	.byte	0x7
	.byte	0x8
	.long	0x5b3
	.uleb128 0xa
	.long	.LASF90
	.byte	0xf
	.byte	0x9
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF91
	.byte	0xf
	.byte	0xa
	.byte	0x7
	.long	0x61
	.byte	0x4
	.uleb128 0xa
	.long	.LASF92
	.byte	0xf
	.byte	0xb
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF93
	.byte	0xf
	.byte	0xc
	.byte	0x7
	.long	0x61
	.byte	0xc
	.uleb128 0xa
	.long	.LASF94
	.byte	0xf
	.byte	0xd
	.byte	0x7
	.long	0x61
	.byte	0x10
	.uleb128 0xa
	.long	.LASF95
	.byte	0xf
	.byte	0xe
	.byte	0x7
	.long	0x61
	.byte	0x14
	.uleb128 0xa
	.long	.LASF96
	.byte	0xf
	.byte	0xf
	.byte	0x7
	.long	0x61
	.byte	0x18
	.uleb128 0xa
	.long	.LASF97
	.byte	0xf
	.byte	0x10
	.byte	0x7
	.long	0x61
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF98
	.byte	0xf
	.byte	0x11
	.byte	0x7
	.long	0x61
	.byte	0x20
	.uleb128 0xa
	.long	.LASF99
	.byte	0xf
	.byte	0x14
	.byte	0xc
	.long	0x11d
	.byte	0x28
	.uleb128 0xa
	.long	.LASF100
	.byte	0xf
	.byte	0x15
	.byte	0xf
	.long	0xd1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.long	0x39
	.long	0x5c3
	.uleb128 0xf
	.long	0xfc
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF101
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x5b3
	.uleb128 0x2
	.long	.LASF102
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x61
	.uleb128 0x2
	.long	.LASF103
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x11d
	.uleb128 0x2
	.long	.LASF104
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x5b3
	.uleb128 0x2
	.long	.LASF105
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x61
	.uleb128 0x2
	.long	.LASF106
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x11d
	.uleb128 0x13
	.long	.LASF107
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.long	.LASF108
	.byte	0x90
	.byte	0x11
	.byte	0x2e
	.byte	0x8
	.long	0x6e9
	.uleb128 0xa
	.long	.LASF109
	.byte	0x11
	.byte	0x30
	.byte	0xd
	.long	0x130
	.byte	0
	.uleb128 0xa
	.long	.LASF110
	.byte	0x11
	.byte	0x35
	.byte	0xd
	.long	0x154
	.byte	0x8
	.uleb128 0xa
	.long	.LASF111
	.byte	0x11
	.byte	0x3d
	.byte	0xf
	.long	0x16c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF112
	.byte	0x11
	.byte	0x3e
	.byte	0xe
	.long	0x160
	.byte	0x18
	.uleb128 0xa
	.long	.LASF113
	.byte	0x11
	.byte	0x40
	.byte	0xd
	.long	0x13c
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF114
	.byte	0x11
	.byte	0x41
	.byte	0xd
	.long	0x148
	.byte	0x20
	.uleb128 0xa
	.long	.LASF115
	.byte	0x11
	.byte	0x43
	.byte	0x9
	.long	0x61
	.byte	0x24
	.uleb128 0xa
	.long	.LASF116
	.byte	0x11
	.byte	0x45
	.byte	0xd
	.long	0x130
	.byte	0x28
	.uleb128 0xa
	.long	.LASF117
	.byte	0x11
	.byte	0x4a
	.byte	0xd
	.long	0x178
	.byte	0x30
	.uleb128 0xa
	.long	.LASF118
	.byte	0x11
	.byte	0x4e
	.byte	0x11
	.long	0x1aa
	.byte	0x38
	.uleb128 0xa
	.long	.LASF119
	.byte	0x11
	.byte	0x50
	.byte	0x10
	.long	0x1b6
	.byte	0x40
	.uleb128 0xa
	.long	.LASF120
	.byte	0x11
	.byte	0x5b
	.byte	0x15
	.long	0x4cb
	.byte	0x48
	.uleb128 0xa
	.long	.LASF121
	.byte	0x11
	.byte	0x5c
	.byte	0x15
	.long	0x4cb
	.byte	0x58
	.uleb128 0xa
	.long	.LASF122
	.byte	0x11
	.byte	0x5d
	.byte	0x15
	.long	0x4cb
	.byte	0x68
	.uleb128 0xa
	.long	.LASF123
	.byte	0x11
	.byte	0x6a
	.byte	0x17
	.long	0x6e9
	.byte	0x78
	.byte	0
	.uleb128 0xe
	.long	0x1c2
	.long	0x6f9
	.uleb128 0xf
	.long	0xfc
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.uleb128 0x3
	.byte	0x8
	.long	0x6f9
	.uleb128 0xe
	.long	0xd7
	.long	0x710
	.uleb128 0xf
	.long	0xfc
	.byte	0x40
	.byte	0
	.uleb128 0x4
	.long	0x700
	.uleb128 0x13
	.long	.LASF124
	.byte	0x12
	.value	0x11e
	.byte	0x1a
	.long	0x710
	.uleb128 0x13
	.long	.LASF125
	.byte	0x12
	.value	0x11f
	.byte	0x1a
	.long	0x710
	.uleb128 0x13
	.long	.LASF126
	.byte	0x13
	.value	0x21f
	.byte	0xf
	.long	0x73c
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0x13
	.long	.LASF127
	.byte	0x13
	.value	0x221
	.byte	0xf
	.long	0x73c
	.uleb128 0x2
	.long	.LASF128
	.byte	0x14
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF129
	.byte	0x14
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF130
	.byte	0x15
	.byte	0x1
	.byte	0x14
	.long	0xd1
	.uleb128 0x2
	.long	.LASF131
	.byte	0x16
	.byte	0x12
	.byte	0x15
	.long	0x68
	.uleb128 0xe
	.long	0x49
	.long	0x78f
	.uleb128 0xf
	.long	0xfc
	.byte	0xff
	.byte	0
	.uleb128 0xc
	.long	.LASF132
	.byte	0x17
	.byte	0x65
	.byte	0x15
	.long	0x124
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x18
	.byte	0x29
	.byte	0x6
	.long	0x7b3
	.uleb128 0x17
	.long	.LASF133
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x18
	.byte	0x2a
	.byte	0x6
	.long	0x7c8
	.uleb128 0x18
	.long	.LASF134
	.byte	0x9
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x19
	.byte	0x2f
	.byte	0x1
	.long	0x827
	.uleb128 0x19
	.long	.LASF135
	.value	0x100
	.uleb128 0x19
	.long	.LASF136
	.value	0x200
	.uleb128 0x19
	.long	.LASF137
	.value	0x400
	.uleb128 0x19
	.long	.LASF138
	.value	0x800
	.uleb128 0x19
	.long	.LASF139
	.value	0x1000
	.uleb128 0x19
	.long	.LASF140
	.value	0x2000
	.uleb128 0x19
	.long	.LASF141
	.value	0x4000
	.uleb128 0x19
	.long	.LASF142
	.value	0x8000
	.uleb128 0x18
	.long	.LASF143
	.byte	0x1
	.uleb128 0x18
	.long	.LASF144
	.byte	0x2
	.uleb128 0x18
	.long	.LASF145
	.byte	0x4
	.uleb128 0x18
	.long	.LASF146
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF147
	.byte	0x1a
	.byte	0x22
	.byte	0x13
	.long	0x4a5
	.uleb128 0x1a
	.byte	0x5
	.byte	0x4
	.long	0x61
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x851
	.uleb128 0x1b
	.long	.LASF148
	.sleb128 -130
	.uleb128 0x1b
	.long	.LASF149
	.sleb128 -131
	.byte	0
	.uleb128 0xe
	.long	0x50
	.long	0x85c
	.uleb128 0x12
	.byte	0
	.uleb128 0x4
	.long	0x851
	.uleb128 0x2
	.long	.LASF150
	.byte	0x1b
	.byte	0x19
	.byte	0x13
	.long	0x85c
	.uleb128 0x2
	.long	.LASF151
	.byte	0x1c
	.byte	0x20
	.byte	0x14
	.long	0xd1
	.uleb128 0x1c
	.long	.LASF260
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x1d
	.byte	0x20
	.byte	0x6
	.long	0x8ce
	.uleb128 0x18
	.long	.LASF152
	.byte	0
	.uleb128 0x18
	.long	.LASF153
	.byte	0x1
	.uleb128 0x18
	.long	.LASF154
	.byte	0x2
	.uleb128 0x18
	.long	.LASF155
	.byte	0x3
	.uleb128 0x18
	.long	.LASF156
	.byte	0x4
	.uleb128 0x18
	.long	.LASF157
	.byte	0x5
	.uleb128 0x18
	.long	.LASF158
	.byte	0x6
	.uleb128 0x18
	.long	.LASF159
	.byte	0x7
	.uleb128 0x18
	.long	.LASF160
	.byte	0x8
	.uleb128 0x18
	.long	.LASF161
	.byte	0x9
	.uleb128 0x18
	.long	.LASF162
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x879
	.uleb128 0x13
	.long	.LASF163
	.byte	0x1d
	.value	0x10b
	.byte	0x1a
	.long	0x47c
	.uleb128 0xe
	.long	0x8ce
	.long	0x8eb
	.uleb128 0x12
	.byte	0
	.uleb128 0x4
	.long	0x8e0
	.uleb128 0x13
	.long	.LASF164
	.byte	0x1d
	.value	0x10c
	.byte	0x21
	.long	0x8eb
	.uleb128 0x2
	.long	.LASF165
	.byte	0x1e
	.byte	0x32
	.byte	0xf
	.long	0x6fa
	.uleb128 0x2
	.long	.LASF166
	.byte	0x1e
	.byte	0x35
	.byte	0x15
	.long	0xf5
	.uleb128 0x2
	.long	.LASF167
	.byte	0x1e
	.byte	0x39
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.long	.LASF168
	.byte	0x4
	.byte	0x1f
	.byte	0x2a
	.byte	0x8
	.long	0x949
	.uleb128 0xa
	.long	.LASF169
	.byte	0x1f
	.byte	0x2d
	.byte	0xf
	.long	0x10a
	.byte	0
	.uleb128 0xa
	.long	.LASF170
	.byte	0x1f
	.byte	0x2e
	.byte	0xf
	.long	0x10a
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.byte	0x1f
	.byte	0x4b
	.byte	0x3
	.long	0x96d
	.uleb128 0xa
	.long	.LASF86
	.byte	0x1f
	.byte	0x4d
	.byte	0xf
	.long	0x111
	.byte	0
	.uleb128 0xa
	.long	.LASF171
	.byte	0x1f
	.byte	0x4e
	.byte	0xf
	.long	0x111
	.byte	0x4
	.byte	0
	.uleb128 0x1e
	.long	.LASF172
	.value	0x180
	.byte	0x1f
	.byte	0x37
	.byte	0x8
	.long	0xa10
	.uleb128 0xa
	.long	.LASF173
	.byte	0x1f
	.byte	0x39
	.byte	0xd
	.long	0x10a
	.byte	0
	.uleb128 0xa
	.long	.LASF174
	.byte	0x1f
	.byte	0x3a
	.byte	0xb
	.long	0x190
	.byte	0x4
	.uleb128 0xa
	.long	.LASF175
	.byte	0x1f
	.byte	0x3b
	.byte	0x8
	.long	0x507
	.byte	0x8
	.uleb128 0xa
	.long	.LASF176
	.byte	0x1f
	.byte	0x3d
	.byte	0x8
	.long	0x3d6
	.byte	0x28
	.uleb128 0xa
	.long	.LASF177
	.byte	0x1f
	.byte	0x3f
	.byte	0x8
	.long	0x507
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF178
	.byte	0x1f
	.byte	0x41
	.byte	0x8
	.long	0x77f
	.byte	0x4c
	.uleb128 0x1f
	.long	.LASF179
	.byte	0x1f
	.byte	0x43
	.byte	0x18
	.long	0x921
	.value	0x14c
	.uleb128 0x1f
	.long	.LASF180
	.byte	0x1f
	.byte	0x4a
	.byte	0xd
	.long	0x111
	.value	0x150
	.uleb128 0x1f
	.long	.LASF181
	.byte	0x1f
	.byte	0x4f
	.byte	0x5
	.long	0x949
	.value	0x154
	.uleb128 0x1f
	.long	.LASF182
	.byte	0x1f
	.byte	0x54
	.byte	0xd
	.long	0xa10
	.value	0x15c
	.uleb128 0x1f
	.long	.LASF123
	.byte	0x1f
	.byte	0x55
	.byte	0x8
	.long	0x42b
	.value	0x16c
	.byte	0
	.uleb128 0xe
	.long	0x111
	.long	0xa20
	.uleb128 0xf
	.long	0xfc
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF183
	.byte	0x20
	.byte	0x92
	.byte	0x21
	.long	0x96d
	.uleb128 0x4
	.long	0xa20
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x20
	.byte	0x94
	.byte	0x6
	.long	0xa46
	.uleb128 0x18
	.long	.LASF184
	.byte	0x20
	.byte	0
	.uleb128 0x20
	.long	.LASF186
	.byte	0x2
	.byte	0x2c
	.byte	0xd
	.long	0xa5c
	.uleb128 0x9
	.byte	0x3
	.quad	include_idle
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.long	.LASF185
	.uleb128 0x20
	.long	.LASF187
	.byte	0x2
	.byte	0x2f
	.byte	0xd
	.long	0xa5c
	.uleb128 0x9
	.byte	0x3
	.quad	include_heading
	.uleb128 0x20
	.long	.LASF188
	.byte	0x2
	.byte	0x32
	.byte	0xd
	.long	0xa5c
	.uleb128 0x9
	.byte	0x3
	.quad	include_fullname
	.uleb128 0x20
	.long	.LASF189
	.byte	0x2
	.byte	0x35
	.byte	0xd
	.long	0xa5c
	.uleb128 0x9
	.byte	0x3
	.quad	include_project
	.uleb128 0x20
	.long	.LASF190
	.byte	0x2
	.byte	0x38
	.byte	0xd
	.long	0xa5c
	.uleb128 0x9
	.byte	0x3
	.quad	include_plan
	.uleb128 0x20
	.long	.LASF191
	.byte	0x2
	.byte	0x3c
	.byte	0xd
	.long	0xa5c
	.uleb128 0x9
	.byte	0x3
	.quad	include_home_and_shell
	.uleb128 0x20
	.long	.LASF192
	.byte	0x2
	.byte	0x3f
	.byte	0xd
	.long	0xa5c
	.uleb128 0x9
	.byte	0x3
	.quad	do_short_format
	.uleb128 0x20
	.long	.LASF193
	.byte	0x2
	.byte	0x43
	.byte	0xd
	.long	0xa5c
	.uleb128 0x9
	.byte	0x3
	.quad	include_where
	.uleb128 0x20
	.long	.LASF194
	.byte	0x2
	.byte	0x48
	.byte	0x14
	.long	0xd1
	.uleb128 0x9
	.byte	0x3
	.quad	time_format
	.uleb128 0x20
	.long	.LASF195
	.byte	0x2
	.byte	0x49
	.byte	0xc
	.long	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	time_format_width
	.uleb128 0xe
	.long	0xcc
	.long	0xb39
	.uleb128 0xf
	.long	0xfc
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	0xb29
	.uleb128 0x20
	.long	.LASF196
	.byte	0x2
	.byte	0x4b
	.byte	0x1c
	.long	0xb39
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x21
	.long	.LASF201
	.byte	0x2
	.value	0x206
	.byte	0x1
	.long	0x61
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0xbb8
	.uleb128 0x22
	.long	.LASF197
	.byte	0x2
	.value	0x206
	.byte	0xb
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LASF198
	.byte	0x2
	.value	0x206
	.byte	0x18
	.long	0x73c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF199
	.byte	0x2
	.value	0x208
	.byte	0x7
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF200
	.byte	0x2
	.value	0x209
	.byte	0x7
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF202
	.byte	0x2
	.value	0x1e3
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xbe8
	.uleb128 0x22
	.long	.LASF203
	.byte	0x2
	.value	0x1e3
	.byte	0xc
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF206
	.byte	0x2
	.value	0x1dc
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xc48
	.uleb128 0x22
	.long	.LASF204
	.byte	0x2
	.value	0x1dc
	.byte	0x17
	.long	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LASF205
	.byte	0x2
	.value	0x1dc
	.byte	0x2f
	.long	0xc48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x27
	.string	"i"
	.byte	0x2
	.value	0x1de
	.byte	0xc
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3f
	.uleb128 0x25
	.long	.LASF207
	.byte	0x2
	.value	0x1cd
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd2
	.uleb128 0x22
	.long	.LASF208
	.byte	0x2
	.value	0x1cd
	.byte	0x1a
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF204
	.byte	0x2
	.value	0x1ce
	.byte	0x18
	.long	0x6d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x22
	.long	.LASF205
	.byte	0x2
	.value	0x1ce
	.byte	0x30
	.long	0xc48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF200
	.byte	0x2
	.value	0x1d0
	.byte	0xa
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF209
	.byte	0x2
	.value	0x1d1
	.byte	0x10
	.long	0xcd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xa20
	.uleb128 0x25
	.long	.LASF210
	.byte	0x2
	.value	0x1a5
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xd56
	.uleb128 0x29
	.string	"n"
	.byte	0x2
	.value	0x1a5
	.byte	0x16
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF209
	.byte	0x2
	.value	0x1a5
	.byte	0x2c
	.long	0xd56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF204
	.byte	0x2
	.value	0x1a6
	.byte	0x19
	.long	0x6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.long	.LASF205
	.byte	0x2
	.value	0x1a6
	.byte	0x31
	.long	0xc48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x27
	.string	"i"
	.byte	0x2
	.value	0x1bc
	.byte	0x18
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xa2c
	.uleb128 0x2a
	.long	.LASF261
	.byte	0x2
	.value	0x192
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF211
	.byte	0x2
	.value	0x133
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xee6
	.uleb128 0x22
	.long	.LASF5
	.byte	0x2
	.value	0x133
	.byte	0x1e
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1176
	.uleb128 0x27
	.string	"pw"
	.byte	0x2
	.value	0x135
	.byte	0x12
	.long	0xee6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1160
	.uleb128 0x2b
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0xdef
	.uleb128 0x23
	.long	.LASF212
	.byte	0x2
	.value	0x145
	.byte	0x13
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1152
	.uleb128 0x23
	.long	.LASF213
	.byte	0x2
	.value	0x146
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1144
	.byte	0
	.uleb128 0x2b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0xe6c
	.uleb128 0x23
	.long	.LASF214
	.byte	0x2
	.value	0x15d
	.byte	0xd
	.long	0x447
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x27
	.string	"buf"
	.byte	0x2
	.value	0x15e
	.byte	0xc
	.long	0xeec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x23
	.long	.LASF215
	.byte	0x2
	.value	0x15f
	.byte	0x19
	.long	0xd7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.uleb128 0x23
	.long	.LASF216
	.byte	0x2
	.value	0x160
	.byte	0x13
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1128
	.uleb128 0x26
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x23
	.long	.LASF217
	.byte	0x2
	.value	0x167
	.byte	0x12
	.long	0x1ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x23
	.long	.LASF214
	.byte	0x2
	.value	0x175
	.byte	0xd
	.long	0x447
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x27
	.string	"buf"
	.byte	0x2
	.value	0x176
	.byte	0xc
	.long	0xeec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x23
	.long	.LASF218
	.byte	0x2
	.value	0x177
	.byte	0x19
	.long	0xd7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x23
	.long	.LASF219
	.byte	0x2
	.value	0x178
	.byte	0x13
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x26
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x23
	.long	.LASF217
	.byte	0x2
	.value	0x17f
	.byte	0x12
	.long	0x1ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1da
	.uleb128 0xe
	.long	0x49
	.long	0xefd
	.uleb128 0x2c
	.long	0xfc
	.value	0x3ff
	.byte	0
	.uleb128 0x2d
	.long	.LASF220
	.byte	0x2
	.byte	0xc8
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x1026
	.uleb128 0x2e
	.long	.LASF221
	.byte	0x2
	.byte	0xc8
	.byte	0x21
	.long	0xd56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x20
	.long	.LASF222
	.byte	0x2
	.byte	0xca
	.byte	0xf
	.long	0x618
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x20
	.long	.LASF223
	.byte	0x2
	.byte	0xcb
	.byte	0xa
	.long	0x4bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x20
	.long	.LASF224
	.byte	0x2
	.byte	0xcc
	.byte	0x8
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -537
	.uleb128 0x20
	.long	.LASF225
	.byte	0x2
	.byte	0xd1
	.byte	0x8
	.long	0x1026
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2f
	.string	"p"
	.byte	0x2
	.byte	0xd2
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x2b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0xfe0
	.uleb128 0x2f
	.string	"pw"
	.byte	0x2
	.byte	0xea
	.byte	0x16
	.long	0xee6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x20
	.long	.LASF5
	.byte	0x2
	.byte	0xeb
	.byte	0xc
	.long	0x1036
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x26
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x20
	.long	.LASF212
	.byte	0x2
	.byte	0xf4
	.byte	0x17
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x20
	.long	.LASF213
	.byte	0x2
	.byte	0xf5
	.byte	0x11
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x23
	.long	.LASF178
	.byte	0x2
	.value	0x111
	.byte	0xc
	.long	0x1046
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x23
	.long	.LASF226
	.byte	0x2
	.value	0x112
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x23
	.long	.LASF227
	.byte	0x2
	.value	0x113
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x49
	.long	0x1036
	.uleb128 0xf
	.long	0xfc
	.byte	0x25
	.byte	0
	.uleb128 0xe
	.long	0x49
	.long	0x1046
	.uleb128 0xf
	.long	0xfc
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.long	0x49
	.long	0x1057
	.uleb128 0x2c
	.long	0xfc
	.value	0x100
	.byte	0
	.uleb128 0x30
	.long	.LASF228
	.byte	0x2
	.byte	0xaf
	.byte	0x1
	.long	0xd1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x10bb
	.uleb128 0x2e
	.long	.LASF221
	.byte	0x2
	.byte	0xaf
	.byte	0x21
	.long	0xd56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"buf"
	.byte	0x2
	.byte	0xb1
	.byte	0xf
	.long	0x1036
	.uleb128 0x9
	.byte	0x3
	.quad	buf.6426
	.uleb128 0x2f
	.string	"t"
	.byte	0x2
	.byte	0xb9
	.byte	0xa
	.long	0x4bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"tmp"
	.byte	0x2
	.byte	0xba
	.byte	0xe
	.long	0x10bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x517
	.uleb128 0x30
	.long	.LASF229
	.byte	0x2
	.byte	0x93
	.byte	0x1
	.long	0xd1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x1183
	.uleb128 0x2e
	.long	.LASF230
	.byte	0x2
	.byte	0x93
	.byte	0x15
	.long	0x4bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"now"
	.byte	0x2
	.byte	0x95
	.byte	0x11
	.long	0x4bf
	.uleb128 0x9
	.byte	0x3
	.quad	now.6417
	.uleb128 0x2f
	.string	"buf"
	.byte	0x2
	.byte	0x96
	.byte	0xf
	.long	0x1183
	.uleb128 0x9
	.byte	0x3
	.quad	buf.6418
	.uleb128 0x20
	.long	.LASF231
	.byte	0x2
	.byte	0x97
	.byte	0xa
	.long	0x4bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1161
	.uleb128 0x20
	.long	.LASF232
	.byte	0x2
	.byte	0xa1
	.byte	0xb
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF233
	.byte	0x2
	.byte	0xa2
	.byte	0xb
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x26
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x20
	.long	.LASF234
	.byte	0x2
	.byte	0xa7
	.byte	0x19
	.long	0xfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x49
	.long	0x1193
	.uleb128 0xf
	.long	0xfc
	.byte	0x15
	.byte	0
	.uleb128 0x30
	.long	.LASF235
	.byte	0x2
	.byte	0x67
	.byte	0x1
	.long	0x39
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x1268
	.uleb128 0x2e
	.long	.LASF236
	.byte	0x2
	.byte	0x67
	.byte	0x1e
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF237
	.byte	0x2
	.byte	0x67
	.byte	0x36
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.long	.LASF238
	.byte	0x2
	.byte	0x69
	.byte	0xa
	.long	0x1ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.long	.LASF213
	.byte	0x2
	.byte	0x6a
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"r"
	.byte	0x2
	.byte	0x6b
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF239
	.byte	0x2
	.byte	0x6c
	.byte	0xa
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1245
	.uleb128 0x20
	.long	.LASF240
	.byte	0x2
	.byte	0x70
	.byte	0xe
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF241
	.byte	0x2
	.byte	0x71
	.byte	0xe
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x26
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x20
	.long	.LASF242
	.byte	0x2
	.byte	0x7d
	.byte	0x17
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF243
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.long	0x1ce
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x12a9
	.uleb128 0x32
	.string	"str"
	.byte	0x2
	.byte	0x55
	.byte	0x1f
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF244
	.byte	0x2
	.byte	0x57
	.byte	0xa
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF245
	.byte	0x1
	.value	0x2e5
	.byte	0x1
	.long	0x39
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x130d
	.uleb128 0x22
	.long	.LASF246
	.byte	0x1
	.value	0x2e5
	.byte	0x19
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.value	0x2e5
	.byte	0x34
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.value	0x2e5
	.byte	0x40
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF247
	.byte	0x1
	.value	0x2e7
	.byte	0xf
	.long	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF248
	.byte	0x1
	.value	0x2b2
	.byte	0x1
	.long	0x39
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x134f
	.uleb128 0x29
	.string	"t"
	.byte	0x1
	.value	0x2b2
	.byte	0x13
	.long	0x4bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"buf"
	.byte	0x1
	.value	0x2b2
	.byte	0x1c
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF249
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x13f4
	.uleb128 0x22
	.long	.LASF250
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x35
	.long	.LASF251
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x13aa
	.uleb128 0x36
	.long	.LASF250
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xd1
	.byte	0
	.uleb128 0x36
	.long	.LASF252
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xd1
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x137f
	.uleb128 0x23
	.long	.LASF251
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x1404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.long	.LASF252
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x23
	.long	.LASF253
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x1409
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x23
	.long	.LASF254
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xd1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xe
	.long	0x13aa
	.long	0x1404
	.uleb128 0xf
	.long	0xfc
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.long	0x13f4
	.uleb128 0x3
	.byte	0x8
	.long	0x13aa
	.uleb128 0x37
	.long	.LASF255
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0xe7
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x49
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x37
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
	.uleb128 0xe
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
.LASF241:
	.string	"product"
.LASF123:
	.string	"__glibc_reserved"
.LASF122:
	.string	"st_ctim"
.LASF30:
	.string	"size_t"
.LASF92:
	.string	"tm_hour"
.LASF261:
	.string	"print_heading"
.LASF148:
	.string	"GETOPT_HELP_CHAR"
.LASF142:
	.string	"_ISgraph"
.LASF206:
	.string	"long_pinky"
.LASF118:
	.string	"st_blksize"
.LASF119:
	.string	"st_blocks"
.LASF72:
	.string	"_IO_codecvt"
.LASF53:
	.string	"_IO_save_end"
.LASF256:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF19:
	.string	"__gid_t"
.LASF124:
	.string	"_sys_siglist"
.LASF121:
	.string	"st_mtim"
.LASF84:
	.string	"time_t"
.LASF46:
	.string	"_IO_write_base"
.LASF211:
	.string	"print_long_entry"
.LASF209:
	.string	"utmp_buf"
.LASF167:
	.string	"error_one_per_line"
.LASF62:
	.string	"_lock"
.LASF222:
	.string	"stats"
.LASF108:
	.string	"stat"
.LASF101:
	.string	"__tzname"
.LASF51:
	.string	"_IO_save_base"
.LASF55:
	.string	"_chain"
.LASF187:
	.string	"include_heading"
.LASF237:
	.string	"user_name"
.LASF59:
	.string	"_cur_column"
.LASF77:
	.string	"sys_nerr"
.LASF17:
	.string	"__dev_t"
.LASF182:
	.string	"ut_addr_v6"
.LASF213:
	.string	"result"
.LASF79:
	.string	"_sys_nerr"
.LASF184:
	.string	"UT_USER_SIZE"
.LASF126:
	.string	"__environ"
.LASF32:
	.string	"passwd"
.LASF14:
	.string	"long int"
.LASF234:
	.string	"days"
.LASF205:
	.string	"argv_names"
.LASF98:
	.string	"tm_isdst"
.LASF38:
	.string	"pw_dir"
.LASF6:
	.string	"has_arg"
.LASF71:
	.string	"_IO_marker"
.LASF201:
	.string	"main"
.LASF183:
	.string	"STRUCT_UTMP"
.LASF141:
	.string	"_ISprint"
.LASF177:
	.string	"ut_user"
.LASF170:
	.string	"e_exit"
.LASF228:
	.string	"time_string"
.LASF39:
	.string	"pw_shell"
.LASF147:
	.string	"__xalloc_count_type"
.LASF12:
	.string	"signed char"
.LASF27:
	.string	"__blksize_t"
.LASF41:
	.string	"_IO_FILE"
.LASF103:
	.string	"__timezone"
.LASF73:
	.string	"_IO_wide_data"
.LASF113:
	.string	"st_uid"
.LASF163:
	.string	"quoting_style_args"
.LASF127:
	.string	"environ"
.LASF8:
	.string	"unsigned char"
.LASF66:
	.string	"_freeres_list"
.LASF116:
	.string	"st_rdev"
.LASF37:
	.string	"pw_gecos"
.LASF249:
	.string	"emit_ancillary_info"
.LASF179:
	.string	"ut_exit"
.LASF166:
	.string	"error_message_count"
.LASF173:
	.string	"ut_type"
.LASF223:
	.string	"last_change"
.LASF29:
	.string	"__syscall_slong_t"
.LASF185:
	.string	"_Bool"
.LASF217:
	.string	"bytes"
.LASF2:
	.string	"char"
.LASF247:
	.string	"src_end"
.LASF178:
	.string	"ut_host"
.LASF259:
	.string	"_IO_lock_t"
.LASF193:
	.string	"include_where"
.LASF208:
	.string	"filename"
.LASF106:
	.string	"timezone"
.LASF224:
	.string	"mesg"
.LASF156:
	.string	"shell_escape_always_quoting_style"
.LASF21:
	.string	"__mode_t"
.LASF91:
	.string	"tm_min"
.LASF43:
	.string	"_IO_read_ptr"
.LASF190:
	.string	"include_plan"
.LASF257:
	.string	"src/pinky.c"
.LASF81:
	.string	"ptrdiff_t"
.LASF243:
	.string	"count_ampersands"
.LASF74:
	.string	"stdin"
.LASF214:
	.string	"stream"
.LASF78:
	.string	"sys_errlist"
.LASF195:
	.string	"time_format_width"
.LASF54:
	.string	"_markers"
.LASF151:
	.string	"program_name"
.LASF145:
	.string	"_ISpunct"
.LASF93:
	.string	"tm_mday"
.LASF242:
	.string	"uname"
.LASF158:
	.string	"c_maybe_quoting_style"
.LASF128:
	.string	"program_invocation_name"
.LASF172:
	.string	"utmpx"
.LASF252:
	.string	"node"
.LASF171:
	.string	"tv_usec"
.LASF181:
	.string	"ut_tv"
.LASF90:
	.string	"tm_sec"
.LASF63:
	.string	"_offset"
.LASF104:
	.string	"tzname"
.LASF114:
	.string	"st_gid"
.LASF248:
	.string	"timetostr"
.LASF1:
	.string	"optind"
.LASF229:
	.string	"idle_string"
.LASF161:
	.string	"clocale_quoting_style"
.LASF165:
	.string	"error_print_progname"
.LASF11:
	.string	"long unsigned int"
.LASF203:
	.string	"status"
.LASF57:
	.string	"_flags2"
.LASF117:
	.string	"st_size"
.LASF45:
	.string	"_IO_read_base"
.LASF225:
	.string	"line"
.LASF31:
	.string	"option"
.LASF70:
	.string	"_unused2"
.LASF221:
	.string	"utmp_ent"
.LASF139:
	.string	"_ISxdigit"
.LASF197:
	.string	"argc"
.LASF216:
	.string	"project"
.LASF58:
	.string	"_old_offset"
.LASF251:
	.string	"infomap"
.LASF198:
	.string	"argv"
.LASF28:
	.string	"__blkcnt_t"
.LASF153:
	.string	"shell_quoting_style"
.LASF20:
	.string	"__ino_t"
.LASF82:
	.string	"long long int"
.LASF250:
	.string	"program"
.LASF130:
	.string	"Version"
.LASF131:
	.string	"exit_failure"
.LASF88:
	.string	"_gl_cxxalias_dummy"
.LASF94:
	.string	"tm_mon"
.LASF135:
	.string	"_ISupper"
.LASF245:
	.string	"stzncpy"
.LASF189:
	.string	"include_project"
.LASF157:
	.string	"c_quoting_style"
.LASF144:
	.string	"_IScntrl"
.LASF186:
	.string	"include_idle"
.LASF48:
	.string	"_IO_write_end"
.LASF231:
	.string	"seconds_idle"
.LASF238:
	.string	"rsize"
.LASF125:
	.string	"sys_siglist"
.LASF244:
	.string	"count"
.LASF16:
	.string	"__intmax_t"
.LASF149:
	.string	"GETOPT_VERSION_CHAR"
.LASF49:
	.string	"_IO_buf_base"
.LASF199:
	.string	"optc"
.LASF10:
	.string	"unsigned int"
.LASF150:
	.string	"version_etc_copyright"
.LASF164:
	.string	"quoting_style_vals"
.LASF152:
	.string	"literal_quoting_style"
.LASF115:
	.string	"__pad0"
.LASF35:
	.string	"pw_uid"
.LASF68:
	.string	"__pad5"
.LASF7:
	.string	"flag"
.LASF233:
	.string	"minutes"
.LASF42:
	.string	"_flags"
.LASF254:
	.string	"lc_messages"
.LASF69:
	.string	"_mode"
.LASF240:
	.string	"ulen"
.LASF64:
	.string	"_codecvt"
.LASF134:
	.string	"LOG10_TIMESPEC_HZ"
.LASF111:
	.string	"st_nlink"
.LASF191:
	.string	"include_home_and_shell"
.LASF219:
	.string	"plan"
.LASF132:
	.string	"intmax_t"
.LASF83:
	.string	"long double"
.LASF40:
	.string	"FILE"
.LASF25:
	.string	"__pid_t"
.LASF196:
	.string	"longopts"
.LASF109:
	.string	"st_dev"
.LASF85:
	.string	"timespec"
.LASF192:
	.string	"do_short_format"
.LASF137:
	.string	"_ISalpha"
.LASF4:
	.string	"optopt"
.LASF160:
	.string	"locale_quoting_style"
.LASF89:
	.string	"long long unsigned int"
.LASF143:
	.string	"_ISblank"
.LASF23:
	.string	"__off_t"
.LASF260:
	.string	"quoting_style"
.LASF146:
	.string	"_ISalnum"
.LASF129:
	.string	"program_invocation_short_name"
.LASF67:
	.string	"_freeres_buf"
.LASF96:
	.string	"tm_wday"
.LASF140:
	.string	"_ISspace"
.LASF97:
	.string	"tm_yday"
.LASF3:
	.string	"opterr"
.LASF169:
	.string	"e_termination"
.LASF258:
	.string	"/root/coreutils"
.LASF26:
	.string	"__time_t"
.LASF218:
	.string	"baseplan"
.LASF235:
	.string	"create_fullname"
.LASF52:
	.string	"_IO_backup_base"
.LASF61:
	.string	"_shortbuf"
.LASF255:
	.string	"to_uchar"
.LASF36:
	.string	"pw_gid"
.LASF168:
	.string	"__exit_status"
.LASF174:
	.string	"ut_pid"
.LASF246:
	.string	"dest"
.LASF154:
	.string	"shell_always_quoting_style"
.LASF24:
	.string	"__off64_t"
.LASF159:
	.string	"escape_quoting_style"
.LASF227:
	.string	"display"
.LASF50:
	.string	"_IO_buf_end"
.LASF226:
	.string	"host"
.LASF188:
	.string	"include_fullname"
.LASF5:
	.string	"name"
.LASF136:
	.string	"_ISlower"
.LASF253:
	.string	"map_prog"
.LASF99:
	.string	"tm_gmtoff"
.LASF76:
	.string	"stderr"
.LASF13:
	.string	"short int"
.LASF230:
	.string	"when"
.LASF87:
	.string	"tv_nsec"
.LASF202:
	.string	"usage"
.LASF200:
	.string	"n_users"
.LASF155:
	.string	"shell_escape_quoting_style"
.LASF60:
	.string	"_vtable_offset"
.LASF215:
	.string	"baseproject"
.LASF80:
	.string	"_sys_errlist"
.LASF34:
	.string	"pw_passwd"
.LASF133:
	.string	"TIMESPEC_HZ"
.LASF207:
	.string	"short_pinky"
.LASF102:
	.string	"__daylight"
.LASF100:
	.string	"tm_zone"
.LASF194:
	.string	"time_format"
.LASF204:
	.string	"argc_names"
.LASF33:
	.string	"pw_name"
.LASF112:
	.string	"st_mode"
.LASF18:
	.string	"__uid_t"
.LASF44:
	.string	"_IO_read_end"
.LASF212:
	.string	"comma"
.LASF107:
	.string	"getdate_err"
.LASF232:
	.string	"hours"
.LASF56:
	.string	"_fileno"
.LASF65:
	.string	"_wide_data"
.LASF175:
	.string	"ut_line"
.LASF210:
	.string	"scan_entries"
.LASF0:
	.string	"optarg"
.LASF138:
	.string	"_ISdigit"
.LASF95:
	.string	"tm_year"
.LASF9:
	.string	"short unsigned int"
.LASF75:
	.string	"stdout"
.LASF47:
	.string	"_IO_write_ptr"
.LASF220:
	.string	"print_entry"
.LASF15:
	.string	"__int32_t"
.LASF180:
	.string	"ut_session"
.LASF105:
	.string	"daylight"
.LASF239:
	.string	"ampersands"
.LASF236:
	.string	"gecos_name"
.LASF110:
	.string	"st_ino"
.LASF22:
	.string	"__nlink_t"
.LASF86:
	.string	"tv_sec"
.LASF162:
	.string	"custom_quoting_style"
.LASF120:
	.string	"st_atim"
.LASF176:
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
