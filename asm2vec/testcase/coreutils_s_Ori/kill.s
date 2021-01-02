	.file	"kill.c"
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
	.section	.rodata
	.align 32
	.type	short_options, @object
	.size	short_options, 113
short_options:
	.string	"0::1::2::3::4::5::6::7::8::9::A::B::C::D::E::F::G::H::I::J::K::M::N::O::P::Q::R::S::T::U::V::W::X::Y::Z::Lln:s:t"
.LC19:
	.string	"list"
.LC20:
	.string	"signal"
.LC21:
	.string	"table"
.LC22:
	.string	"help"
.LC23:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 192
long_options:
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	108
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
	.long	116
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC23
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
.LC24:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC25:
	.string	"Usage: %s [-s SIGNAL | -SIGNAL] PID...\n  or:  %s -l [SIGNAL]...\n  or:  %s -t [SIGNAL]...\n"
	.align 8
.LC26:
	.string	"Send signals to processes, or list signals.\n"
	.align 8
.LC27:
	.string	"  -s, --signal=SIGNAL, -SIGNAL\n                   specify the name or number of the signal to be sent\n  -l, --list       list signal names, or convert signal names to/from numbers\n  -t, --table      print a table of signal information\n"
	.align 8
.LC28:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC29:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC30:
	.string	"\nSIGNAL may be a signal name like 'HUP', or a signal number like '1',\nor the exit status of a process terminated by a signal.\nPID is an integer; if negative it identifies a process group.\n"
	.align 8
.LC31:
	.string	"\nNOTE: your shell may have its own version of %s, which usually supersedes\nthe version described here.  Please refer to your shell's documentation\nfor details about the options it supports.\n"
.LC32:
	.string	"kill"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/kill.c"
	.loc 2 72 1 is_stmt 1
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
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -36(%rbp)
	.loc 2 73 6
	cmpl	$0, -36(%rbp)
	je	.L12
	.loc 2 74 5
	movq	program_name(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L13
.L12:
	.loc 2 77 7
	movq	program_name(%rip), %r13
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 77 15
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	.loc 2 77 7
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 83 7
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 87 7
	call	emit_mandatory_arg_note
	.loc 2 89 7
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 95 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 96 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 97 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 102 15
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	.loc 2 102 7
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 103 7
	leaq	.LC32(%rip), %rdi
	call	emit_ancillary_info
.L13:
	.loc 2 105 3
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC33:
	.string	"?"
.LC34:
	.string	"%*d %-*s %s\n"
	.text
	.type	print_table_row, @function
print_table_row:
.LFB47:
	.loc 2 115 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	.loc 2 116 29
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	strsignal@PLT
	movq	%rax, -8(%rbp)
	.loc 2 117 3
	cmpq	$0, -8(%rbp)
	je	.L15
	.loc 2 117 3 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	jmp	.L16
.L15:
	.loc 2 117 3 discriminator 2
	leaq	.LC33(%rip), %rax
.L16:
	.loc 2 117 3 discriminator 4
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	%rax, %r9
	movq	%rdi, %r8
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 119 1 is_stmt 1 discriminator 4
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	print_table_row, .-print_table_row
	.section	.rodata
.LC35:
	.string	"%d\n"
	.text
	.type	list_signals, @function
list_signals:
.LFB48:
	.loc 2 127 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, %eax
	movq	%rsi, -80(%rbp)
	movb	%al, -68(%rbp)
	.loc 2 127 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 129 7
	movl	$0, -52(%rbp)
	.loc 2 132 6
	cmpb	$0, -68(%rbp)
	je	.L18
.LBB2:
	.loc 2 134 20
	movl	$0, -48(%rbp)
	.loc 2 137 20
	movl	$1, -44(%rbp)
	.loc 2 138 19
	movl	$1, -56(%rbp)
	.loc 2 138 7
	jmp	.L19
.L20:
	.loc 2 139 18 discriminator 3
	addl	$1, -44(%rbp)
	.loc 2 138 60 discriminator 3
	movl	-56(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -56(%rbp)
.L19:
	.loc 2 138 7 discriminator 1
	cmpl	$6, -56(%rbp)
	jle	.L20
	.loc 2 142 19
	movl	$1, -56(%rbp)
	.loc 2 142 7
	jmp	.L21
.L23:
	.loc 2 143 13
	leaq	-32(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	sig2str@PLT
	.loc 2 143 12
	testl	%eax, %eax
	jne	.L22
.LBB3:
	.loc 2 145 26
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -40(%rbp)
	.loc 2 146 28
	movl	-48(%rbp), %eax
	.loc 2 146 16
	cmpq	%rax, -40(%rbp)
	jbe	.L22
	.loc 2 147 26
	movq	-40(%rbp), %rax
	movl	%eax, -48(%rbp)
.L22:
.LBE3:
	.loc 2 142 54 discriminator 2
	addl	$1, -56(%rbp)
.L21:
	.loc 2 142 7 discriminator 1
	cmpl	$64, -56(%rbp)
	jle	.L23
	.loc 2 150 10
	cmpq	$0, -80(%rbp)
	je	.L24
	.loc 2 151 9
	jmp	.L25
.L28:
	.loc 2 153 22
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	operand2sig@PLT
	movl	%eax, -56(%rbp)
	.loc 2 154 16
	cmpl	$0, -56(%rbp)
	jns	.L26
	.loc 2 155 22
	movl	$1, -52(%rbp)
	jmp	.L27
.L26:
	.loc 2 157 15
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %eax
	leaq	-32(%rbp), %rcx
	movl	-56(%rbp), %esi
	movl	%eax, %edi
	call	print_table_row
.L27:
	.loc 2 151 27
	addq	$8, -80(%rbp)
.L25:
	.loc 2 151 16 discriminator 1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 151 9 discriminator 1
	testq	%rax, %rax
	jne	.L28
	jmp	.L29
.L24:
	.loc 2 160 21
	movl	$1, -56(%rbp)
	.loc 2 160 9
	jmp	.L30
.L32:
	.loc 2 161 15
	leaq	-32(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	sig2str@PLT
	.loc 2 161 14
	testl	%eax, %eax
	jne	.L31
	.loc 2 162 13
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %eax
	leaq	-32(%rbp), %rcx
	movl	-56(%rbp), %esi
	movl	%eax, %edi
	call	print_table_row
.L31:
	.loc 2 160 56 discriminator 2
	addl	$1, -56(%rbp)
.L30:
	.loc 2 160 9 discriminator 1
	cmpl	$64, -56(%rbp)
	jle	.L32
	jmp	.L29
.L18:
.LBE2:
	.loc 2 166 10
	cmpq	$0, -80(%rbp)
	je	.L33
	.loc 2 167 9
	jmp	.L34
.L38:
	.loc 2 169 22
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	operand2sig@PLT
	movl	%eax, -56(%rbp)
	.loc 2 170 16
	cmpl	$0, -56(%rbp)
	jns	.L35
	.loc 2 171 22
	movl	$1, -52(%rbp)
	jmp	.L36
.L35:
	.loc 2 174 21
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 174 20
	cmpl	$9, %eax
	ja	.L37
	.loc 2 175 19
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L36
.L37:
	.loc 2 177 19
	movl	-56(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L36:
	.loc 2 167 27
	addq	$8, -80(%rbp)
.L34:
	.loc 2 167 16 discriminator 1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 167 9 discriminator 1
	testq	%rax, %rax
	jne	.L38
	jmp	.L29
.L33:
	.loc 2 181 21
	movl	$1, -56(%rbp)
	.loc 2 181 9
	jmp	.L39
.L41:
	.loc 2 182 15
	leaq	-32(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	sig2str@PLT
	.loc 2 182 14
	testl	%eax, %eax
	jne	.L40
	.loc 2 183 13
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L40:
	.loc 2 181 56 discriminator 2
	addl	$1, -56(%rbp)
.L39:
	.loc 2 181 9 discriminator 1
	cmpl	$64, -56(%rbp)
	jle	.L41
.L29:
	.loc 2 186 10
	movl	-52(%rbp), %eax
	.loc 2 187 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L43
	call	__stack_chk_fail@PLT
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	list_signals, .-list_signals
	.section	.rodata
.LC36:
	.string	"%s: invalid process id"
.LC37:
	.string	"%s"
	.text
	.type	send_signals, @function
send_signals:
.LFB49:
	.loc 2 194 1
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
	movq	%rsi, -80(%rbp)
	.loc 2 194 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 195 7
	movl	$0, -56(%rbp)
	.loc 2 196 15
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.L48:
.LBB4:
	.loc 2 201 21
	call	__errno_location@PLT
	.loc 2 201 27
	movl	$0, (%rax)
	.loc 2 201 32
	leaq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoimax@PLT
	movq	%rax, -32(%rbp)
	.loc 2 202 13
	movq	-32(%rbp), %rax
	movl	%eax, -52(%rbp)
	.loc 2 204 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 204 10
	cmpl	$34, %eax
	je	.L45
	.loc 2 204 34 discriminator 1
	movl	-52(%rbp), %eax
	cltq
	.loc 2 204 27 discriminator 1
	cmpq	%rax, -32(%rbp)
	jne	.L45
	.loc 2 204 46 discriminator 2
	movq	-48(%rbp), %rax
	.loc 2 204 39 discriminator 2
	cmpq	%rax, -40(%rbp)
	je	.L45
	.loc 2 204 57 discriminator 3
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 204 54 discriminator 3
	testb	%al, %al
	je	.L46
.L45:
	.loc 2 206 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 206 24
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	.loc 2 206 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 207 18
	movl	$1, -56(%rbp)
	jmp	.L47
.L46:
	.loc 2 209 16
	movl	-68(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	kill@PLT
	.loc 2 209 15
	testl	%eax, %eax
	je	.L47
	.loc 2 211 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 211 21
	call	__errno_location@PLT
	.loc 2 211 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC37(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 212 18
	movl	$1, -56(%rbp)
.L47:
.LBE4:
	.loc 2 215 3
	addq	$8, -80(%rbp)
	.loc 2 215 15
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 215 3
	cmpq	$0, -40(%rbp)
	jne	.L48
	.loc 2 217 10
	movl	-56(%rbp), %eax
	.loc 2 218 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	send_signals, .-send_signals
	.section	.rodata
.LC38:
	.string	"/usr/local/share/locale"
.LC39:
	.string	"invalid option -- %c"
	.align 8
.LC40:
	.string	"%s: multiple signals specified"
	.align 8
.LC41:
	.string	"multiple -l or -t options specified"
.LC42:
	.string	"Paul Eggert"
	.align 8
.LC43:
	.string	"cannot combine signal with -l or -t"
.LC44:
	.string	"no process ID specified"
	.text
	.globl	main
	.type	main, @function
main:
.LFB50:
	.loc 2 222 1
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
	movq	%rsi, -80(%rbp)
	.loc 2 222 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 224 8
	movb	$0, -58(%rbp)
	.loc 2 225 8
	movb	$0, -57(%rbp)
	.loc 2 226 7
	movl	$-1, -56(%rbp)
	.loc 2 230 3
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 231 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 232 3
	leaq	.LC38(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 233 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 235 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 237 9
	jmp	.L52
.L69:
	.loc 2 239 5
	cmpl	$116, -52(%rbp)
	jg	.L53
	cmpl	$48, -52(%rbp)
	jge	.L54
	cmpl	$-131, -52(%rbp)
	je	.L55
	cmpl	$-130, -52(%rbp)
	je	.L56
	jmp	.L53
.L54:
	movl	-52(%rbp), %eax
	subl	$48, %eax
	cmpl	$68, %eax
	ja	.L53
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L58(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L58(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L58:
	.long	.L62-.L58
	.long	.L62-.L58
	.long	.L62-.L58
	.long	.L62-.L58
	.long	.L62-.L58
	.long	.L62-.L58
	.long	.L62-.L58
	.long	.L62-.L58
	.long	.L62-.L58
	.long	.L62-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L57-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L61-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L60-.L58
	.long	.L53-.L58
	.long	.L59-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L53-.L58
	.long	.L59-.L58
	.long	.L57-.L58
	.text
.L62:
	.loc 2 243 20
	movl	optind(%rip), %eax
	.loc 2 243 12
	cmpl	$2, %eax
	je	.L61
	.loc 2 246 19
	movl	optind(%rip), %eax
	subl	$1, %eax
	movl	%eax, optind(%rip)
	.loc 2 247 13
	jmp	.L63
.L61:
	.loc 2 256 13
	movq	optarg(%rip), %rax
	.loc 2 256 12
	testq	%rax, %rax
	jne	.L64
	.loc 2 257 24
	movl	optind(%rip), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	.loc 2 257 51
	movl	optind(%rip), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 257 39
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 257 37
	addq	%rbx, %rax
	.loc 2 257 18
	movq	%rax, optarg(%rip)
.L64:
	.loc 2 258 27
	movl	optind(%rip), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 258 40
	leaq	2(%rax), %rdx
	.loc 2 258 20
	movq	optarg(%rip), %rax
	.loc 2 258 12
	cmpq	%rax, %rdx
	je	.L65
	.loc 2 260 26
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 260 13
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 261 13
	movl	$1, %edi
	call	usage
.L65:
	.loc 2 263 15
	movq	optarg(%rip), %rax
	subq	$1, %rax
	movq	%rax, optarg(%rip)
.L59:
	.loc 2 267 12
	cmpl	$0, -56(%rbp)
	js	.L66
	.loc 2 269 13
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 269 26
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	.loc 2 269 13
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 270 13
	movl	$1, %edi
	call	usage
.L66:
	.loc 2 272 18
	movq	optarg(%rip), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	operand2sig@PLT
	movl	%eax, -56(%rbp)
	.loc 2 273 12
	cmpl	$0, -56(%rbp)
	jns	.L52
	.loc 2 274 11
	movl	$1, %edi
	call	usage
.L57:
	.loc 2 279 15
	movb	$1, -57(%rbp)
.L60:
	.loc 2 282 12
	cmpb	$0, -58(%rbp)
	je	.L68
	.loc 2 284 26
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	.loc 2 284 13
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 285 13
	movl	$1, %edi
	call	usage
.L68:
	.loc 2 287 14
	movb	$1, -58(%rbp)
	.loc 2 288 9
	jmp	.L52
.L56:
	.loc 2 290 7
	movl	$0, %edi
	call	usage
.L55:
	.loc 2 291 7
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC42(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L53:
	.loc 2 293 9
	movl	$1, %edi
	call	usage
.L52:
	.loc 2 237 18
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	short_options(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -52(%rbp)
	.loc 2 237 9
	cmpl	$-1, -52(%rbp)
	jne	.L69
	.loc 2 295 2
	nop
.L63:
	.loc 2 297 6
	cmpl	$0, -56(%rbp)
	jns	.L70
	.loc 2 298 12
	movl	$15, -56(%rbp)
	jmp	.L71
.L70:
	.loc 2 299 11
	cmpb	$0, -58(%rbp)
	je	.L71
	.loc 2 301 20
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	.loc 2 301 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 302 7
	movl	$1, %edi
	call	usage
.L71:
	.loc 2 305 8
	movzbl	-58(%rbp), %eax
	xorl	$1, %eax
	.loc 2 305 6
	testb	%al, %al
	je	.L72
	.loc 2 305 23 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 305 15 discriminator 1
	cmpl	%eax, -68(%rbp)
	jg	.L72
	.loc 2 307 20
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	.loc 2 307 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 308 7
	movl	$1, %edi
	call	usage
.L72:
	.loc 2 313 11
	cmpb	$0, -58(%rbp)
	je	.L73
	.loc 2 312 41
	movl	optind(%rip), %eax
	.loc 2 312 13
	cmpl	%eax, -68(%rbp)
	jle	.L74
	.loc 2 312 55 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 2 312 13 discriminator 1
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	jmp	.L75
.L74:
	.loc 2 312 13 is_stmt 0 discriminator 2
	movl	$0, %edx
.L75:
	.loc 2 312 13 discriminator 4
	movzbl	-57(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	list_signals
	jmp	.L77
.L73:
	.loc 2 313 40 is_stmt 1 discriminator 1
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 313 13 discriminator 1
	movl	-56(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	send_signals
.L77:
	.loc 2 314 1 discriminator 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L78
	.loc 2 314 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L78:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 11 "./lib/sys/select.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 14 "/usr/include/signal.h"
	.file 15 "/usr/include/time.h"
	.file 16 "/usr/include/unistd.h"
	.file 17 "/usr/include/errno.h"
	.file 18 "src/version.h"
	.file 19 "./lib/exitfail.h"
	.file 20 "/usr/include/stdint.h"
	.file 21 "./lib/timespec.h"
	.file 22 "./lib/version-etc.h"
	.file 23 "./lib/progname.h"
	.file 24 "./lib/quotearg.h"
	.file 25 "./lib/error.h"
	.file 26 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9eb
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF135
	.byte	0xc
	.long	.LASF136
	.long	.LASF137
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x48
	.byte	0x12
	.long	0x71
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x9a
	.byte	0x19
	.long	0x65
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xbf
	.uleb128 0x8
	.long	0xb4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x8
	.long	0xbf
	.uleb128 0x9
	.long	.LASF64
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x252
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xb4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xb4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xb4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xb4
	.byte	0x20
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xb4
	.byte	0x28
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xb4
	.byte	0x30
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xb4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xb4
	.byte	0x40
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xb4
	.byte	0x48
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xb4
	.byte	0x50
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xb4
	.byte	0x58
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x26b
	.byte	0x60
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x271
	.byte	0x68
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x84
	.byte	0x78
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x277
	.byte	0x83
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x287
	.byte	0x88
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x292
	.byte	0x98
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x29d
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x271
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2a3
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xcb
	.uleb128 0xb
	.long	.LASF138
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x266
	.uleb128 0x7
	.byte	0x8
	.long	0xcb
	.uleb128 0xd
	.long	0xbf
	.long	0x287
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x25e
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x28d
	.uleb128 0xc
	.long	.LASF46
	.uleb128 0x7
	.byte	0x8
	.long	0x298
	.uleb128 0xd
	.long	0xbf
	.long	0x2b3
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xc6
	.uleb128 0x8
	.long	0x2b3
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2ca
	.uleb128 0x7
	.byte	0x8
	.long	0x252
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2ca
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2ca
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2b9
	.long	0x2ff
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2f4
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2ff
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF53
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x2ff
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF55
	.uleb128 0x2
	.long	.LASF56
	.byte	0x9
	.byte	0x61
	.byte	0x11
	.long	0x9c
	.uleb128 0x2
	.long	.LASF57
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.long	0xa8
	.uleb128 0x11
	.long	.LASF58
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF59
	.uleb128 0xf
	.long	.LASF60
	.byte	0xc
	.byte	0x24
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF61
	.byte	0xc
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF62
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF63
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF65
	.byte	0x20
	.byte	0xd
	.byte	0x32
	.byte	0x8
	.long	0x3d4
	.uleb128 0xa
	.long	.LASF66
	.byte	0xd
	.byte	0x34
	.byte	0xf
	.long	0x2b3
	.byte	0
	.uleb128 0xa
	.long	.LASF67
	.byte	0xd
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF68
	.byte	0xd
	.byte	0x38
	.byte	0x8
	.long	0x3d9
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xd
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x392
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x3df
	.uleb128 0xd
	.long	0x2b9
	.long	0x3f6
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x3e6
	.uleb128 0x11
	.long	.LASF69
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x3f6
	.uleb128 0x11
	.long	.LASF70
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x3f6
	.uleb128 0xd
	.long	0xb4
	.long	0x425
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF71
	.byte	0xf
	.byte	0x9f
	.byte	0xe
	.long	0x415
	.uleb128 0xf
	.long	.LASF72
	.byte	0xf
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF73
	.byte	0xf
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF74
	.byte	0xf
	.byte	0xa6
	.byte	0xe
	.long	0x415
	.uleb128 0xf
	.long	.LASF75
	.byte	0xf
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF76
	.byte	0xf
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF77
	.byte	0xf
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x11
	.long	.LASF78
	.byte	0x10
	.value	0x21f
	.byte	0xf
	.long	0x487
	.uleb128 0x7
	.byte	0x8
	.long	0xb4
	.uleb128 0x11
	.long	.LASF79
	.byte	0x10
	.value	0x221
	.byte	0xf
	.long	0x487
	.uleb128 0xf
	.long	.LASF80
	.byte	0x11
	.byte	0x2d
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF81
	.byte	0x11
	.byte	0x2e
	.byte	0xe
	.long	0xb4
	.uleb128 0xf
	.long	.LASF82
	.byte	0x12
	.byte	0x1
	.byte	0x14
	.long	0x2b3
	.uleb128 0xf
	.long	.LASF83
	.byte	0x13
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF84
	.byte	0x14
	.byte	0x65
	.byte	0x15
	.long	0x78
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x15
	.byte	0x29
	.byte	0x6
	.long	0x4ee
	.uleb128 0x15
	.long	.LASF85
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x15
	.byte	0x2a
	.byte	0x6
	.long	0x503
	.uleb128 0x16
	.long	.LASF86
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x521
	.uleb128 0x18
	.long	.LASF87
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF88
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xc6
	.long	0x52c
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x521
	.uleb128 0xf
	.long	.LASF89
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x52c
	.uleb128 0xf
	.long	.LASF90
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0x2b3
	.uleb128 0x19
	.long	.LASF139
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.long	0x59e
	.uleb128 0x16
	.long	.LASF91
	.byte	0
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.uleb128 0x16
	.long	.LASF93
	.byte	0x2
	.uleb128 0x16
	.long	.LASF94
	.byte	0x3
	.uleb128 0x16
	.long	.LASF95
	.byte	0x4
	.uleb128 0x16
	.long	.LASF96
	.byte	0x5
	.uleb128 0x16
	.long	.LASF97
	.byte	0x6
	.uleb128 0x16
	.long	.LASF98
	.byte	0x7
	.uleb128 0x16
	.long	.LASF99
	.byte	0x8
	.uleb128 0x16
	.long	.LASF100
	.byte	0x9
	.uleb128 0x16
	.long	.LASF101
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x549
	.uleb128 0x11
	.long	.LASF102
	.byte	0x18
	.value	0x10b
	.byte	0x1a
	.long	0x2ff
	.uleb128 0xd
	.long	0x59e
	.long	0x5bb
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5b0
	.uleb128 0x11
	.long	.LASF103
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x5bb
	.uleb128 0xf
	.long	.LASF104
	.byte	0x19
	.byte	0x32
	.byte	0xf
	.long	0x3e0
	.uleb128 0xf
	.long	.LASF105
	.byte	0x19
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF106
	.byte	0x19
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF107
	.uleb128 0xf
	.long	.LASF108
	.byte	0x1a
	.byte	0x19
	.byte	0x1f
	.long	0x5f1
	.uleb128 0xd
	.long	0xc6
	.long	0x612
	.uleb128 0xe
	.long	0x39
	.byte	0x70
	.byte	0
	.uleb128 0x8
	.long	0x602
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x2
	.byte	0x36
	.byte	0x13
	.long	0x612
	.uleb128 0x9
	.byte	0x3
	.quad	short_options
	.uleb128 0xd
	.long	0x3d4
	.long	0x63d
	.uleb128 0xe
	.long	0x39
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x62d
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x2
	.byte	0x3c
	.byte	0x1c
	.long	0x63d
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1b
	.long	.LASF126
	.byte	0x2
	.byte	0xdd
	.byte	0x1
	.long	0x65
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x6fb
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x2
	.byte	0xdd
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x2
	.byte	0xdd
	.byte	0x18
	.long	0x487
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x2
	.byte	0xdf
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x2
	.byte	0xe0
	.byte	0x8
	.long	0x6fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x2
	.byte	0xe1
	.byte	0x8
	.long	0x6fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x2
	.byte	0xe2
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x2
	.byte	0xe3
	.byte	0x8
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF140
	.byte	0x2
	.value	0x127
	.byte	0x2
	.quad	.L63
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF118
	.uleb128 0xd
	.long	0xbf
	.long	0x712
	.uleb128 0xe
	.long	0x39
	.byte	0x12
	.byte	0
	.uleb128 0x1e
	.long	.LASF121
	.byte	0x2
	.byte	0xc1
	.byte	0x1
	.long	0x65
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b2
	.uleb128 0x1c
	.long	.LASF116
	.byte	0x2
	.byte	0xc1
	.byte	0x13
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x2
	.byte	0xc1
	.byte	0x28
	.long	0x7b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x2
	.byte	0xc3
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.string	"arg"
	.byte	0x2
	.byte	0xc4
	.byte	0xf
	.long	0x2b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x2
	.byte	0xc8
	.byte	0xd
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.string	"n"
	.byte	0x2
	.byte	0xc9
	.byte	0x10
	.long	0x4ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"pid"
	.byte	0x2
	.byte	0xca
	.byte	0xd
	.long	0x336
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0x1e
	.long	.LASF122
	.byte	0x2
	.byte	0x7e
	.byte	0x1
	.long	0x65
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x87b
	.uleb128 0x1c
	.long	.LASF115
	.byte	0x2
	.byte	0x7e
	.byte	0x14
	.long	0x6fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x2
	.byte	0x7e
	.byte	0x28
	.long	0x7b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x2
	.byte	0x80
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x2
	.byte	0x81
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x2
	.byte	0x82
	.byte	0x8
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1a
	.long	.LASF123
	.byte	0x2
	.byte	0x86
	.byte	0x14
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x2
	.byte	0x89
	.byte	0x14
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1f
	.string	"len"
	.byte	0x2
	.byte	0x91
	.byte	0x14
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF128
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e5
	.uleb128 0x1c
	.long	.LASF124
	.byte	0x2
	.byte	0x71
	.byte	0x16
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF116
	.byte	0x2
	.byte	0x71
	.byte	0x25
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF123
	.byte	0x2
	.byte	0x72
	.byte	0x16
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x2
	.byte	0x72
	.byte	0x2e
	.long	0x2b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x2
	.byte	0x74
	.byte	0xf
	.long	0x2b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF127
	.byte	0x2
	.byte	0x47
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x913
	.uleb128 0x1c
	.long	.LASF119
	.byte	0x2
	.byte	0x47
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x23
	.long	.LASF129
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b8
	.uleb128 0x24
	.long	.LASF130
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x25
	.long	.LASF131
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x96e
	.uleb128 0x26
	.long	.LASF130
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2b3
	.byte	0
	.uleb128 0x26
	.long	.LASF132
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2b3
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x943
	.uleb128 0x27
	.long	.LASF131
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x9c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.long	.LASF132
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x27
	.long	.LASF133
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x9cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x27
	.long	.LASF134
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x96e
	.long	0x9c8
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x9b8
	.uleb128 0x7
	.byte	0x8
	.long	0x96e
	.uleb128 0x28
	.long	.LASF141
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.string	"exit_failure"
.LASF125:
	.string	"description"
.LASF15:
	.string	"_IO_read_ptr"
.LASF99:
	.string	"locale_quoting_style"
.LASF27:
	.string	"_chain"
.LASF88:
	.string	"GETOPT_VERSION_CHAR"
.LASF139:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF86:
	.string	"LOG10_TIMESPEC_HZ"
.LASF33:
	.string	"_shortbuf"
.LASF92:
	.string	"shell_quoting_style"
.LASF87:
	.string	"GETOPT_HELP_CHAR"
.LASF21:
	.string	"_IO_buf_base"
.LASF59:
	.string	"long long unsigned int"
.LASF36:
	.string	"_codecvt"
.LASF73:
	.string	"__timezone"
.LASF81:
	.string	"program_invocation_short_name"
.LASF54:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF103:
	.string	"quoting_style_vals"
.LASF130:
	.string	"program"
.LASF98:
	.string	"escape_quoting_style"
.LASF91:
	.string	"literal_quoting_style"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF70:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF58:
	.string	"_gl_cxxalias_dummy"
.LASF110:
	.string	"long_options"
.LASF14:
	.string	"_flags"
.LASF37:
	.string	"_wide_data"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF140:
	.string	"no_more_options"
.LASF96:
	.string	"c_quoting_style"
.LASF45:
	.string	"_IO_codecvt"
.LASF53:
	.string	"_sys_errlist"
.LASF80:
	.string	"program_invocation_name"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF85:
	.string	"TIMESPEC_HZ"
.LASF95:
	.string	"shell_escape_always_quoting_style"
.LASF76:
	.string	"timezone"
.LASF90:
	.string	"program_name"
.LASF44:
	.string	"_IO_marker"
.LASF47:
	.string	"stdin"
.LASF116:
	.string	"signum"
.LASF1:
	.string	"unsigned int"
.LASF39:
	.string	"_freeres_buf"
.LASF0:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_ptr"
.LASF66:
	.string	"name"
.LASF50:
	.string	"sys_nerr"
.LASF135:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF101:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF106:
	.string	"error_one_per_line"
.LASF82:
	.string	"Version"
.LASF8:
	.string	"__intmax_t"
.LASF23:
	.string	"_IO_save_base"
.LASF79:
	.string	"environ"
.LASF132:
	.string	"node"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF48:
	.string	"stdout"
.LASF121:
	.string	"send_signals"
.LASF113:
	.string	"optc"
.LASF89:
	.string	"version_etc_copyright"
.LASF127:
	.string	"usage"
.LASF136:
	.string	"src/kill.c"
.LASF109:
	.string	"short_options"
.LASF60:
	.string	"optarg"
.LASF133:
	.string	"map_prog"
.LASF77:
	.string	"getdate_err"
.LASF61:
	.string	"optind"
.LASF117:
	.string	"signame"
.LASF20:
	.string	"_IO_write_end"
.LASF84:
	.string	"intmax_t"
.LASF138:
	.string	"_IO_lock_t"
.LASF64:
	.string	"_IO_FILE"
.LASF104:
	.string	"error_print_progname"
.LASF9:
	.string	"__off_t"
.LASF78:
	.string	"__environ"
.LASF57:
	.string	"time_t"
.LASF51:
	.string	"sys_errlist"
.LASF26:
	.string	"_markers"
.LASF97:
	.string	"c_maybe_quoting_style"
.LASF118:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF124:
	.string	"num_width"
.LASF11:
	.string	"__pid_t"
.LASF5:
	.string	"short int"
.LASF65:
	.string	"option"
.LASF115:
	.string	"table"
.LASF68:
	.string	"flag"
.LASF52:
	.string	"_sys_nerr"
.LASF32:
	.string	"_vtable_offset"
.LASF74:
	.string	"tzname"
.LASF123:
	.string	"name_width"
.LASF122:
	.string	"list_signals"
.LASF94:
	.string	"shell_escape_quoting_style"
.LASF102:
	.string	"quoting_style_args"
.LASF63:
	.string	"optopt"
.LASF75:
	.string	"daylight"
.LASF55:
	.string	"long double"
.LASF13:
	.string	"char"
.LASF93:
	.string	"shell_always_quoting_style"
.LASF100:
	.string	"clocale_quoting_style"
.LASF62:
	.string	"opterr"
.LASF10:
	.string	"__off64_t"
.LASF107:
	.string	"quoting_options"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF69:
	.string	"_sys_siglist"
.LASF131:
	.string	"infomap"
.LASF67:
	.string	"has_arg"
.LASF120:
	.string	"endp"
.LASF40:
	.string	"__pad5"
.LASF12:
	.string	"__time_t"
.LASF42:
	.string	"_unused2"
.LASF49:
	.string	"stderr"
.LASF112:
	.string	"argv"
.LASF72:
	.string	"__daylight"
.LASF119:
	.string	"status"
.LASF137:
	.string	"/root/coreutils"
.LASF24:
	.string	"_IO_backup_base"
.LASF105:
	.string	"error_message_count"
.LASF134:
	.string	"lc_messages"
.LASF111:
	.string	"argc"
.LASF56:
	.string	"pid_t"
.LASF38:
	.string	"_freeres_list"
.LASF46:
	.string	"_IO_wide_data"
.LASF43:
	.string	"FILE"
.LASF108:
	.string	"quote_quoting_options"
.LASF114:
	.string	"list"
.LASF141:
	.string	"emit_mandatory_arg_note"
.LASF71:
	.string	"__tzname"
.LASF126:
	.string	"main"
.LASF18:
	.string	"_IO_write_base"
.LASF129:
	.string	"emit_ancillary_info"
.LASF128:
	.string	"print_table_row"
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
