	.file	"uname.c"
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
	.section	.rodata
.LC18:
	.string	"all"
.LC19:
	.string	"kernel-name"
.LC20:
	.string	"sysname"
.LC21:
	.string	"nodename"
.LC22:
	.string	"kernel-release"
.LC23:
	.string	"release"
.LC24:
	.string	"kernel-version"
.LC25:
	.string	"machine"
.LC26:
	.string	"processor"
.LC27:
	.string	"hardware-platform"
.LC28:
	.string	"operating-system"
.LC29:
	.string	"help"
.LC30:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	uname_long_options, @object
	.size	uname_long_options, 448
uname_long_options:
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
	.long	115
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	109
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	111
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
	.align 32
	.type	arch_long_options, @object
	.size	arch_long_options, 96
arch_long_options:
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
.LC32:
	.string	"Usage: %s [OPTION]...\n"
	.align 8
.LC33:
	.ascii	"Print certain system information.  With no OPTION, same as -"
	.ascii	"s.\n\n  -a, --all                print all info"
	.string	"rmation, in the following order,\n                             except omit -p and -i if unknown:\n  -s, --kernel-name        print the kernel name\n  -n, --nodename           print the network node hostname\n  -r, --kernel-release     print the kernel release\n"
	.align 8
.LC34:
	.ascii	"  -v, --kernel-version     print the kernel ve"
	.string	"rsion\n  -m, --machine            print the machine hardware name\n  -p, --processor          print the processor type (non-portable)\n  -i, --hardware-platform  print the hardware platform (non-portable)\n  -o, --operating-system   print the operating system\n"
.LC35:
	.string	"Print machine architecture.\n\n"
	.align 8
.LC36:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC37:
	.string	"      --version  output version information and exit\n"
.LC38:
	.string	"uname"
.LC39:
	.string	"arch"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/uname.c"
	.loc 2 116 1 is_stmt 1
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
	.loc 2 117 6
	cmpl	$0, -20(%rbp)
	je	.L11
	.loc 2 118 5
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
	jmp	.L12
.L11:
	.loc 2 121 7
	movq	program_name(%rip), %rbx
	.loc 2 121 15
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	.loc 2 121 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 123 22
	movl	uname_mode(%rip), %eax
	.loc 2 123 10
	cmpl	$1, %eax
	jne	.L13
	.loc 2 125 11
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 134 11
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	jmp	.L14
.L13:
	.loc 2 144 11
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L14:
	.loc 2 150 7
	movq	stdout(%rip), %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 151 7
	movq	stdout(%rip), %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 152 28
	movl	uname_mode(%rip), %eax
	.loc 2 152 7
	cmpl	$1, %eax
	jne	.L15
	.loc 2 152 7 is_stmt 0 discriminator 1
	leaq	.LC38(%rip), %rax
	jmp	.L16
.L15:
	.loc 2 152 7 discriminator 2
	leaq	.LC39(%rip), %rax
.L16:
	.loc 2 152 7 discriminator 4
	movq	%rax, %rdi
	call	emit_ancillary_info
.L12:
	.loc 2 154 3 is_stmt 1
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	print_element, @function
print_element:
.LFB47:
	.loc 2 162 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 164 7
	movzbl	printed.6239(%rip), %eax
	.loc 2 164 6
	testb	%al, %al
	je	.L18
	.loc 2 165 5
	movl	$32, %edi
	call	putchar_unlocked@PLT
.L18:
	.loc 2 166 11
	movb	$1, printed.6239(%rip)
	.loc 2 167 3
	movq	stdout(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 168 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	print_element, .-print_element
	.section	.rodata
.LC40:
	.string	"Karel Zak"
.LC41:
	.string	"David MacKenzie"
.LC42:
	.string	"asnrvmpio"
.LC43:
	.string	"extra operand %s"
	.text
	.type	decode_switches, @function
decode_switches:
.LFB48:
	.loc 2 176 1
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
	.loc 2 178 16
	movl	$0, -24(%rbp)
	.loc 2 180 18
	movl	uname_mode(%rip), %eax
	.loc 2 180 6
	cmpl	$2, %eax
	jne	.L28
	.loc 2 182 13
	jmp	.L48
.L26:
	.loc 2 185 11
	cmpl	$-131, -20(%rbp)
	je	.L22
	cmpl	$-130, -20(%rbp)
	jne	.L23
	.loc 2 187 13
	movl	$0, %edi
	call	usage
.L22:
	.loc 2 189 13
	movq	Version(%rip), %rdx
	movl	uname_mode(%rip), %eax
	cmpl	$1, %eax
	jne	.L24
	.loc 2 189 13 is_stmt 0 discriminator 1
	leaq	.LC38(%rip), %rax
	jmp	.L25
.L24:
	.loc 2 189 13 discriminator 2
	leaq	.LC39(%rip), %rax
.L25:
	.loc 2 189 13 discriminator 4
	movq	stdout(%rip), %rdi
	subq	$8, %rsp
	pushq	$0
	leaq	.LC40(%rip), %r9
	leaq	.LC41(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rsi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L23:
	.loc 2 192 15 is_stmt 1
	movl	$1, %edi
	call	usage
.L48:
	.loc 2 182 19
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	$0, %r8d
	leaq	arch_long_options(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -20(%rbp)
	.loc 2 182 13
	cmpl	$-1, -20(%rbp)
	jne	.L26
	.loc 2 195 15
	movl	$16, -24(%rbp)
	jmp	.L27
.L45:
	.loc 2 202 11
	cmpl	$118, -20(%rbp)
	jg	.L29
	cmpl	$97, -20(%rbp)
	jge	.L30
	cmpl	$-131, -20(%rbp)
	je	.L31
	cmpl	$-130, -20(%rbp)
	je	.L32
	jmp	.L29
.L30:
	movl	-20(%rbp), %eax
	subl	$97, %eax
	cmpl	$21, %eax
	ja	.L29
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L34(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L34(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L34:
	.long	.L42-.L34
	.long	.L29-.L34
	.long	.L29-.L34
	.long	.L29-.L34
	.long	.L29-.L34
	.long	.L29-.L34
	.long	.L29-.L34
	.long	.L29-.L34
	.long	.L41-.L34
	.long	.L29-.L34
	.long	.L29-.L34
	.long	.L29-.L34
	.long	.L40-.L34
	.long	.L39-.L34
	.long	.L38-.L34
	.long	.L37-.L34
	.long	.L29-.L34
	.long	.L36-.L34
	.long	.L35-.L34
	.long	.L29-.L34
	.long	.L29-.L34
	.long	.L33-.L34
	.text
.L42:
	.loc 2 205 23
	movl	$-1, -24(%rbp)
	.loc 2 206 15
	jmp	.L28
.L35:
	.loc 2 209 23
	orl	$1, -24(%rbp)
	.loc 2 210 15
	jmp	.L28
.L39:
	.loc 2 213 23
	orl	$2, -24(%rbp)
	.loc 2 214 15
	jmp	.L28
.L36:
	.loc 2 217 23
	orl	$4, -24(%rbp)
	.loc 2 218 15
	jmp	.L28
.L33:
	.loc 2 221 23
	orl	$8, -24(%rbp)
	.loc 2 222 15
	jmp	.L28
.L40:
	.loc 2 225 23
	orl	$16, -24(%rbp)
	.loc 2 226 15
	jmp	.L28
.L37:
	.loc 2 229 23
	orl	$32, -24(%rbp)
	.loc 2 230 15
	jmp	.L28
.L41:
	.loc 2 233 23
	orl	$64, -24(%rbp)
	.loc 2 234 15
	jmp	.L28
.L38:
	.loc 2 237 23
	orl	$128, -24(%rbp)
	.loc 2 238 15
	jmp	.L28
.L32:
	.loc 2 240 13
	movl	$0, %edi
	call	usage
.L31:
	.loc 2 242 13
	movq	Version(%rip), %rdx
	movl	uname_mode(%rip), %eax
	cmpl	$1, %eax
	jne	.L43
	.loc 2 242 13 is_stmt 0 discriminator 1
	leaq	.LC38(%rip), %rax
	jmp	.L44
.L43:
	.loc 2 242 13 discriminator 2
	leaq	.LC39(%rip), %rax
.L44:
	.loc 2 242 13 discriminator 4
	movq	stdout(%rip), %rdi
	movl	$0, %r9d
	leaq	.LC41(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rsi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L29:
	.loc 2 245 15 is_stmt 1
	movl	$1, %edi
	call	usage
.L28:
	.loc 2 199 19
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	$0, %r8d
	leaq	uname_long_options(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -20(%rbp)
	.loc 2 199 13
	cmpl	$-1, -20(%rbp)
	jne	.L45
.L27:
	.loc 2 250 12
	movl	optind(%rip), %eax
	.loc 2 250 6
	cmpl	%eax, -36(%rbp)
	je	.L46
	.loc 2 252 54
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 252 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 252 20
	leaq	.LC43(%rip), %rdi
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
.L46:
	.loc 2 256 10
	movl	-24(%rbp), %eax
	.loc 2 257 1
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	decode_switches, .-decode_switches
	.section	.rodata
.LC44:
	.string	"/usr/local/share/locale"
.LC45:
	.string	"cannot get system name"
.LC46:
	.string	"GNU/Linux"
	.text
	.globl	main
	.type	main, @function
main:
.LFB49:
	.loc 2 261 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$456, %rsp
	.cfi_offset 3, -24
	movl	%edi, -452(%rbp)
	movq	%rsi, -464(%rbp)
	.loc 2 261 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 265 16
	movl	$0, -436(%rbp)
	.loc 2 268 3
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 269 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 270 3
	leaq	.LC44(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 271 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 273 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 275 13
	movq	-464(%rbp), %rdx
	movl	-452(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	decode_switches
	.loc 2 275 11
	movl	%eax, -436(%rbp)
	.loc 2 277 6
	cmpl	$0, -436(%rbp)
	jne	.L50
	.loc 2 278 13
	movl	$1, -436(%rbp)
.L50:
	.loc 2 281 8
	movl	-436(%rbp), %eax
	andl	$31, %eax
	.loc 2 280 6
	testl	%eax, %eax
	je	.L51
.LBB2:
	.loc 2 286 11
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	uname@PLT
	.loc 2 286 10
	cmpl	$-1, %eax
	jne	.L52
.LBB3:
	.loc 2 287 9
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L52:
.LBE3:
	.loc 2 289 19
	movl	-436(%rbp), %eax
	andl	$1, %eax
	.loc 2 289 10
	testl	%eax, %eax
	je	.L53
	.loc 2 290 9
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	print_element
.L53:
	.loc 2 291 19
	movl	-436(%rbp), %eax
	andl	$2, %eax
	.loc 2 291 10
	testl	%eax, %eax
	je	.L54
	.loc 2 292 9
	leaq	-416(%rbp), %rax
	addq	$65, %rax
	movq	%rax, %rdi
	call	print_element
.L54:
	.loc 2 293 19
	movl	-436(%rbp), %eax
	andl	$4, %eax
	.loc 2 293 10
	testl	%eax, %eax
	je	.L55
	.loc 2 294 9
	leaq	-416(%rbp), %rax
	addq	$130, %rax
	movq	%rax, %rdi
	call	print_element
.L55:
	.loc 2 295 19
	movl	-436(%rbp), %eax
	andl	$8, %eax
	.loc 2 295 10
	testl	%eax, %eax
	je	.L56
	.loc 2 296 9
	leaq	-416(%rbp), %rax
	addq	$195, %rax
	movq	%rax, %rdi
	call	print_element
.L56:
	.loc 2 297 19
	movl	-436(%rbp), %eax
	andl	$16, %eax
	.loc 2 297 10
	testl	%eax, %eax
	je	.L51
	.loc 2 298 9
	leaq	-416(%rbp), %rax
	addq	$260, %rax
	movq	%rax, %rdi
	call	print_element
.L51:
.LBE2:
	.loc 2 301 15
	movl	-436(%rbp), %eax
	andl	$32, %eax
	.loc 2 301 6
	testl	%eax, %eax
	je	.L58
.LBB4:
	.loc 2 303 19
	leaq	unknown.6272(%rip), %rax
	movq	%rax, -432(%rbp)
	.loc 2 341 10
	cmpl	$-1, -436(%rbp)
	jne	.L59
	.loc 2 341 11 discriminator 1
	leaq	unknown.6272(%rip), %rax
	cmpq	%rax, -432(%rbp)
	je	.L58
.L59:
	.loc 2 342 9
	movq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	print_element
.L58:
.LBE4:
	.loc 2 345 15
	movl	-436(%rbp), %eax
	andl	$64, %eax
	.loc 2 345 6
	testl	%eax, %eax
	je	.L60
.LBB5:
	.loc 2 347 19
	leaq	unknown.6272(%rip), %rax
	movq	%rax, -424(%rbp)
	.loc 2 366 10
	cmpl	$-1, -436(%rbp)
	jne	.L61
	.loc 2 366 11 discriminator 1
	leaq	unknown.6272(%rip), %rax
	cmpq	%rax, -424(%rbp)
	je	.L60
.L61:
	.loc 2 367 9
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	print_element
.L60:
.LBE5:
	.loc 2 370 15
	movl	-436(%rbp), %eax
	andl	$128, %eax
	.loc 2 370 6
	testl	%eax, %eax
	je	.L62
	.loc 2 371 5
	leaq	.LC46(%rip), %rdi
	call	print_element
.L62:
	.loc 2 373 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 375 10
	movl	$0, %eax
	.loc 2 376 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L64
	call	__stack_chk_fail@PLT
.L64:
	addq	$456, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	main, .-main
	.local	printed.6239
	.comm	printed.6239,1,1
	.section	.rodata
	.align 8
	.type	unknown.6272, @object
	.size	unknown.6272, 8
unknown.6272:
	.string	"unknown"
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
	.file 11 "/usr/include/x86_64-linux-gnu/sys/utsname.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 14 "/usr/include/time.h"
	.file 15 "/usr/include/signal.h"
	.file 16 "/usr/include/unistd.h"
	.file 17 "/usr/include/errno.h"
	.file 18 "src/version.h"
	.file 19 "./lib/exitfail.h"
	.file 20 "./lib/timespec.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/error.h"
	.file 25 "./lib/quote.h"
	.file 26 "src/uname.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x936
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF132
	.byte	0xc
	.long	.LASF133
	.long	.LASF134
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
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xa2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x8
	.long	0xa2
	.uleb128 0x9
	.long	.LASF57
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x235
	.uleb128 0xa
	.long	.LASF12
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x9c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x9c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x9c
	.byte	0x18
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x9c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x9c
	.byte	0x28
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x9c
	.byte	0x30
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x9c
	.byte	0x38
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x9c
	.byte	0x40
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x9c
	.byte	0x48
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x9c
	.byte	0x50
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x9c
	.byte	0x58
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x24e
	.byte	0x60
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x254
	.byte	0x68
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x78
	.byte	0x78
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x25a
	.byte	0x83
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x26a
	.byte	0x88
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x84
	.byte	0x90
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x275
	.byte	0x98
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x280
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x254
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x286
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xae
	.uleb128 0xb
	.long	.LASF135
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF42
	.uleb128 0x7
	.byte	0x8
	.long	0x249
	.uleb128 0x7
	.byte	0x8
	.long	0xae
	.uleb128 0xd
	.long	0xa2
	.long	0x26a
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x241
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x270
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x27b
	.uleb128 0xd
	.long	0xa2
	.long	0x296
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa9
	.uleb128 0x8
	.long	0x296
	.uleb128 0xf
	.long	.LASF45
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2ad
	.uleb128 0x7
	.byte	0x8
	.long	0x235
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2ad
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2ad
	.uleb128 0xf
	.long	.LASF48
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x29c
	.long	0x2e2
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2d7
	.uleb128 0xf
	.long	.LASF49
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2e2
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x2e2
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF52
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF53
	.uleb128 0x2
	.long	.LASF54
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0x90
	.uleb128 0x11
	.long	.LASF55
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF56
	.uleb128 0x12
	.long	.LASF58
	.value	0x186
	.byte	0xb
	.byte	0x30
	.byte	0x8
	.long	0x398
	.uleb128 0xa
	.long	.LASF59
	.byte	0xb
	.byte	0x33
	.byte	0xa
	.long	0x398
	.byte	0
	.uleb128 0xa
	.long	.LASF60
	.byte	0xb
	.byte	0x36
	.byte	0xa
	.long	0x398
	.byte	0x41
	.uleb128 0xa
	.long	.LASF61
	.byte	0xb
	.byte	0x39
	.byte	0xa
	.long	0x398
	.byte	0x82
	.uleb128 0xa
	.long	.LASF62
	.byte	0xb
	.byte	0x3b
	.byte	0xa
	.long	0x398
	.byte	0xc3
	.uleb128 0x13
	.long	.LASF63
	.byte	0xb
	.byte	0x3e
	.byte	0xa
	.long	0x398
	.value	0x104
	.uleb128 0x13
	.long	.LASF64
	.byte	0xb
	.byte	0x43
	.byte	0xa
	.long	0x398
	.value	0x145
	.byte	0
	.uleb128 0xd
	.long	0xa2
	.long	0x3a8
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0xf
	.long	.LASF65
	.byte	0xc
	.byte	0x24
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF66
	.byte	0xc
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF67
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF68
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF69
	.byte	0x20
	.byte	0xd
	.byte	0x32
	.byte	0x8
	.long	0x41a
	.uleb128 0xa
	.long	.LASF70
	.byte	0xd
	.byte	0x34
	.byte	0xf
	.long	0x296
	.byte	0
	.uleb128 0xa
	.long	.LASF71
	.byte	0xd
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF72
	.byte	0xd
	.byte	0x38
	.byte	0x8
	.long	0x41f
	.byte	0x10
	.uleb128 0x14
	.string	"val"
	.byte	0xd
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x3d8
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0x9c
	.long	0x435
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF73
	.byte	0xe
	.byte	0x9f
	.byte	0xe
	.long	0x425
	.uleb128 0xf
	.long	.LASF74
	.byte	0xe
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF75
	.byte	0xe
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF76
	.byte	0xe
	.byte	0xa6
	.byte	0xe
	.long	0x425
	.uleb128 0xf
	.long	.LASF77
	.byte	0xe
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF78
	.byte	0xe
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF79
	.byte	0xe
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x15
	.uleb128 0x7
	.byte	0x8
	.long	0x48a
	.uleb128 0xd
	.long	0x29c
	.long	0x4a1
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x491
	.uleb128 0x11
	.long	.LASF80
	.byte	0xf
	.value	0x11e
	.byte	0x1a
	.long	0x4a1
	.uleb128 0x11
	.long	.LASF81
	.byte	0xf
	.value	0x11f
	.byte	0x1a
	.long	0x4a1
	.uleb128 0x11
	.long	.LASF82
	.byte	0x10
	.value	0x21f
	.byte	0xf
	.long	0x4cd
	.uleb128 0x7
	.byte	0x8
	.long	0x9c
	.uleb128 0x11
	.long	.LASF83
	.byte	0x10
	.value	0x221
	.byte	0xf
	.long	0x4cd
	.uleb128 0xf
	.long	.LASF84
	.byte	0x11
	.byte	0x2d
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF85
	.byte	0x11
	.byte	0x2e
	.byte	0xe
	.long	0x9c
	.uleb128 0xf
	.long	.LASF86
	.byte	0x12
	.byte	0x1
	.byte	0x14
	.long	0x296
	.uleb128 0xf
	.long	.LASF87
	.byte	0x13
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x29
	.byte	0x6
	.long	0x528
	.uleb128 0x17
	.long	.LASF88
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x2a
	.byte	0x6
	.long	0x53d
	.uleb128 0x18
	.long	.LASF89
	.byte	0x9
	.byte	0
	.uleb128 0x19
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x55b
	.uleb128 0x1a
	.long	.LASF90
	.sleb128 -130
	.uleb128 0x1a
	.long	.LASF91
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xa9
	.long	0x566
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x55b
	.uleb128 0xf
	.long	.LASF92
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x566
	.uleb128 0xf
	.long	.LASF93
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x296
	.uleb128 0x1b
	.long	.LASF136
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x5d8
	.uleb128 0x18
	.long	.LASF94
	.byte	0
	.uleb128 0x18
	.long	.LASF95
	.byte	0x1
	.uleb128 0x18
	.long	.LASF96
	.byte	0x2
	.uleb128 0x18
	.long	.LASF97
	.byte	0x3
	.uleb128 0x18
	.long	.LASF98
	.byte	0x4
	.uleb128 0x18
	.long	.LASF99
	.byte	0x5
	.uleb128 0x18
	.long	.LASF100
	.byte	0x6
	.uleb128 0x18
	.long	.LASF101
	.byte	0x7
	.uleb128 0x18
	.long	.LASF102
	.byte	0x8
	.uleb128 0x18
	.long	.LASF103
	.byte	0x9
	.uleb128 0x18
	.long	.LASF104
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x583
	.uleb128 0x11
	.long	.LASF105
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x2e2
	.uleb128 0xd
	.long	0x5d8
	.long	0x5f5
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x5ea
	.uleb128 0x11
	.long	.LASF106
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x5f5
	.uleb128 0xf
	.long	.LASF107
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x48b
	.uleb128 0xf
	.long	.LASF108
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF109
	.byte	0x18
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	.LASF110
	.uleb128 0xf
	.long	.LASF111
	.byte	0x19
	.byte	0x19
	.byte	0x1f
	.long	0x62b
	.uleb128 0xf
	.long	.LASF112
	.byte	0x1a
	.byte	0x7
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x41a
	.long	0x658
	.uleb128 0xe
	.long	0x39
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.long	0x648
	.uleb128 0x1c
	.long	.LASF113
	.byte	0x2
	.byte	0x59
	.byte	0x1c
	.long	0x658
	.uleb128 0x9
	.byte	0x3
	.quad	uname_long_options
	.uleb128 0xd
	.long	0x41a
	.long	0x683
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x673
	.uleb128 0x1c
	.long	.LASF114
	.byte	0x2
	.byte	0x6b
	.byte	0x1c
	.long	0x683
	.uleb128 0x9
	.byte	0x3
	.quad	arch_long_options
	.uleb128 0x1d
	.long	.LASF122
	.byte	0x2
	.value	0x104
	.byte	0x1
	.long	0x65
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x78e
	.uleb128 0x1e
	.long	.LASF115
	.byte	0x2
	.value	0x104
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -468
	.uleb128 0x1e
	.long	.LASF116
	.byte	0x2
	.value	0x104
	.byte	0x18
	.long	0x4cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x1f
	.long	.LASF117
	.byte	0x2
	.value	0x106
	.byte	0x15
	.long	0x79e
	.uleb128 0x9
	.byte	0x3
	.quad	unknown.6272
	.uleb128 0x1f
	.long	.LASF118
	.byte	0x2
	.value	0x109
	.byte	0x10
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -452
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x743
	.uleb128 0x1f
	.long	.LASF70
	.byte	0x2
	.value	0x11c
	.byte	0x16
	.long	0x339
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.byte	0
	.uleb128 0x20
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x76a
	.uleb128 0x1f
	.long	.LASF119
	.byte	0x2
	.value	0x12f
	.byte	0x13
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.byte	0
	.uleb128 0x22
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1f
	.long	.LASF119
	.byte	0x2
	.value	0x15b
	.byte	0x13
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xa9
	.long	0x79e
	.uleb128 0xe
	.long	0x39
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0x78e
	.uleb128 0x23
	.long	.LASF137
	.byte	0x2
	.byte	0xaf
	.byte	0x1
	.long	0x65
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x800
	.uleb128 0x24
	.long	.LASF115
	.byte	0x2
	.byte	0xaf
	.byte	0x16
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF116
	.byte	0x2
	.byte	0xaf
	.byte	0x23
	.long	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"c"
	.byte	0x2
	.byte	0xb1
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.long	.LASF118
	.byte	0x2
	.byte	0xb2
	.byte	0x10
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x26
	.long	.LASF125
	.byte	0x2
	.byte	0xa1
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x844
	.uleb128 0x24
	.long	.LASF119
	.byte	0x2
	.byte	0xa1
	.byte	0x1c
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x2
	.byte	0xa3
	.byte	0xf
	.long	0x844
	.uleb128 0x9
	.byte	0x3
	.quad	printed.6239
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF121
	.uleb128 0x27
	.long	.LASF123
	.byte	0x2
	.byte	0x73
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x879
	.uleb128 0x24
	.long	.LASF124
	.byte	0x2
	.byte	0x73
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x28
	.long	.LASF126
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x91e
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x29
	.long	.LASF128
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x8d4
	.uleb128 0x2a
	.long	.LASF127
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x296
	.byte	0
	.uleb128 0x2a
	.long	.LASF129
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x296
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x8a9
	.uleb128 0x1f
	.long	.LASF128
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x92e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.long	.LASF129
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1f
	.long	.LASF130
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x933
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.long	.LASF131
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x8d4
	.long	0x92e
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x91e
	.uleb128 0x7
	.byte	0x8
	.long	0x8d4
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
.LASF87:
	.string	"exit_failure"
.LASF8:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF102:
	.string	"locale_quoting_style"
.LASF25:
	.string	"_chain"
.LASF91:
	.string	"GETOPT_VERSION_CHAR"
.LASF136:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF89:
	.string	"LOG10_TIMESPEC_HZ"
.LASF31:
	.string	"_shortbuf"
.LASF95:
	.string	"shell_quoting_style"
.LASF90:
	.string	"GETOPT_HELP_CHAR"
.LASF19:
	.string	"_IO_buf_base"
.LASF56:
	.string	"long long unsigned int"
.LASF117:
	.string	"unknown"
.LASF34:
	.string	"_codecvt"
.LASF75:
	.string	"__timezone"
.LASF52:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF106:
	.string	"quoting_style_vals"
.LASF61:
	.string	"release"
.LASF127:
	.string	"program"
.LASF101:
	.string	"escape_quoting_style"
.LASF94:
	.string	"literal_quoting_style"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF81:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF55:
	.string	"_gl_cxxalias_dummy"
.LASF12:
	.string	"_flags"
.LASF35:
	.string	"_wide_data"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF85:
	.string	"program_invocation_short_name"
.LASF99:
	.string	"c_quoting_style"
.LASF43:
	.string	"_IO_codecvt"
.LASF120:
	.string	"printed"
.LASF51:
	.string	"_sys_errlist"
.LASF84:
	.string	"program_invocation_name"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF88:
	.string	"TIMESPEC_HZ"
.LASF118:
	.string	"toprint"
.LASF98:
	.string	"shell_escape_always_quoting_style"
.LASF78:
	.string	"timezone"
.LASF93:
	.string	"program_name"
.LASF42:
	.string	"_IO_marker"
.LASF45:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF37:
	.string	"_freeres_buf"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_ptr"
.LASF70:
	.string	"name"
.LASF48:
	.string	"sys_nerr"
.LASF132:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF104:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF109:
	.string	"error_one_per_line"
.LASF86:
	.string	"Version"
.LASF21:
	.string	"_IO_save_base"
.LASF83:
	.string	"environ"
.LASF32:
	.string	"_lock"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF133:
	.string	"src/uname.c"
.LASF46:
	.string	"stdout"
.LASF92:
	.string	"version_etc_copyright"
.LASF62:
	.string	"version"
.LASF65:
	.string	"optarg"
.LASF79:
	.string	"getdate_err"
.LASF66:
	.string	"optind"
.LASF64:
	.string	"domainname"
.LASF18:
	.string	"_IO_write_end"
.LASF59:
	.string	"sysname"
.LASF135:
	.string	"_IO_lock_t"
.LASF57:
	.string	"_IO_FILE"
.LASF107:
	.string	"error_print_progname"
.LASF130:
	.string	"map_prog"
.LASF82:
	.string	"__environ"
.LASF54:
	.string	"time_t"
.LASF63:
	.string	"machine"
.LASF49:
	.string	"sys_errlist"
.LASF24:
	.string	"_markers"
.LASF100:
	.string	"c_maybe_quoting_style"
.LASF121:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF129:
	.string	"node"
.LASF58:
	.string	"utsname"
.LASF5:
	.string	"short int"
.LASF69:
	.string	"option"
.LASF111:
	.string	"quote_quoting_options"
.LASF72:
	.string	"flag"
.LASF50:
	.string	"_sys_nerr"
.LASF30:
	.string	"_vtable_offset"
.LASF76:
	.string	"tzname"
.LASF41:
	.string	"FILE"
.LASF97:
	.string	"shell_escape_quoting_style"
.LASF105:
	.string	"quoting_style_args"
.LASF68:
	.string	"optopt"
.LASF77:
	.string	"daylight"
.LASF113:
	.string	"uname_long_options"
.LASF53:
	.string	"long double"
.LASF11:
	.string	"char"
.LASF96:
	.string	"shell_always_quoting_style"
.LASF137:
	.string	"decode_switches"
.LASF103:
	.string	"clocale_quoting_style"
.LASF67:
	.string	"opterr"
.LASF9:
	.string	"__off64_t"
.LASF110:
	.string	"quoting_options"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF80:
	.string	"_sys_siglist"
.LASF128:
	.string	"infomap"
.LASF71:
	.string	"has_arg"
.LASF123:
	.string	"usage"
.LASF38:
	.string	"__pad5"
.LASF112:
	.string	"uname_mode"
.LASF10:
	.string	"__time_t"
.LASF40:
	.string	"_unused2"
.LASF47:
	.string	"stderr"
.LASF116:
	.string	"argv"
.LASF74:
	.string	"__daylight"
.LASF124:
	.string	"status"
.LASF134:
	.string	"/root/coreutils"
.LASF125:
	.string	"print_element"
.LASF114:
	.string	"arch_long_options"
.LASF22:
	.string	"_IO_backup_base"
.LASF60:
	.string	"nodename"
.LASF108:
	.string	"error_message_count"
.LASF131:
	.string	"lc_messages"
.LASF115:
	.string	"argc"
.LASF36:
	.string	"_freeres_list"
.LASF44:
	.string	"_IO_wide_data"
.LASF73:
	.string	"__tzname"
.LASF122:
	.string	"main"
.LASF16:
	.string	"_IO_write_base"
.LASF126:
	.string	"emit_ancillary_info"
.LASF119:
	.string	"element"
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
