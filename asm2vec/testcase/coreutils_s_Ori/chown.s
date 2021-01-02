	.file	"chown.c"
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
	.local	reference_file
	.comm	reference_file,8,8
	.section	.rodata
.LC18:
	.string	"recursive"
.LC19:
	.string	"changes"
.LC20:
	.string	"dereference"
.LC21:
	.string	"from"
.LC22:
	.string	"no-dereference"
.LC23:
	.string	"no-preserve-root"
.LC24:
	.string	"preserve-root"
.LC25:
	.string	"quiet"
.LC26:
	.string	"silent"
.LC27:
	.string	"reference"
.LC28:
	.string	"verbose"
.LC29:
	.string	"help"
.LC30:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	long_options, @object
	.size	long_options, 448
long_options:
	.quad	.LC18
	.long	0
	.zero	4
	.quad	0
	.long	82
	.zero	4
	.quad	.LC19
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC21
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC27
	.long	1
	.zero	4
	.quad	0
	.long	132
	.zero	4
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	118
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
	.string	"Usage: %s [OPTION]... [OWNER][:[GROUP]] FILE...\n  or:  %s [OPTION]... --reference=RFILE FILE...\n"
	.align 8
.LC33:
	.string	"Change the owner and/or group of each FILE to OWNER and/or GROUP.\nWith --reference, change the owner and group of each FILE to those of RFILE.\n\n"
	.align 8
.LC34:
	.string	"  -c, --changes          like verbose but report only when a change is made\n  -f, --silent, --quiet  suppress most error messages\n  -v, --verbose          output a diagnostic for every file processed\n"
	.align 8
.LC35:
	.string	"      --dereference      affect the referent of each symbolic link (this is\n                         the default), rather than the symbolic link itself\n  -h, --no-dereference   affect symbolic links instead of any referenced file\n"
	.align 8
.LC36:
	.string	"                         (useful only on systems that can change the\n                         ownership of a symlink)\n"
	.align 8
.LC37:
	.ascii	"      --from=CURRENT_OWNER:CURRENT_GROUP\n                  "
	.ascii	"       change the owner "
	.string	"and/or group of each file only if\n                         its current owner and/or group match those specified\n                         here.  Either may be omitted, in which case a match\n                         is not required for the omitted attribute\n"
	.align 8
.LC38:
	.string	"      --no-preserve-root  do not treat '/' specially (the default)\n      --preserve-root    fail to operate recursively on '/'\n"
	.align 8
.LC39:
	.string	"      --reference=RFILE  use RFILE's owner and group rather than\n                         specifying OWNER:GROUP values\n"
	.align 8
.LC40:
	.string	"  -R, --recursive        operate on files and directories recursively\n"
	.align 8
.LC41:
	.ascii	"\nThe following options modify how a hierarchy is traversed "
	.ascii	"when the -R\noption is also specified.  If more than one is "
	.ascii	"specified, only the final\none takes effect.\n\n  -H        "
	.ascii	"             if a command line ar"
	.string	"gument is a symbolic link\n                         to a directory, traverse it\n  -L                     traverse every symbolic link to a directory\n                         encountered\n  -P                     do not traverse any symbolic links (default)\n\n"
	.align 8
.LC42:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC43:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC44:
	.string	"\nOwner is unchanged if missing.  Group is unchanged if missing, but changed\nto login group if implied by a ':' following a symbolic OWNER.\nOWNER and GROUP may be numeric as well as symbolic.\n"
	.align 8
.LC45:
	.string	"\nExamples:\n  %s root /u        Change the owner of /u to \"root\".\n  %s root:staff /u  Likewise, but also change its group to \"staff\".\n  %s -hR root /u    Change the owner of /u and subfiles to \"root\".\n"
.LC46:
	.string	"chown"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/chown.c"
	.loc 2 75 1 is_stmt 1
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
	.loc 2 76 6
	cmpl	$0, -36(%rbp)
	je	.L11
	.loc 2 77 5
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
	.loc 2 80 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 80 15
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	.loc 2 80 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 85 7
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 90 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 95 7
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 100 7
	movq	stdout(%rip), %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 104 7
	movq	stdout(%rip), %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 111 7
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 115 7
	movq	stdout(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 119 7
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 122 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 135 7
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 136 7
	movq	stdout(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 137 7
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 143 7
	movq	program_name(%rip), %r13
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 143 15
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	.loc 2 143 7
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 151 7
	leaq	.LC46(%rip), %rdi
	call	emit_ancillary_info
.L12:
	.loc 2 153 3
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC47:
	.string	"/usr/local/share/locale"
.LC48:
	.string	"%s: %s"
.LC49:
	.string	"Jim Meyering"
.LC50:
	.string	"David MacKenzie"
.LC51:
	.string	"HLPRcfhv"
	.align 8
.LC52:
	.string	"-R --dereference requires either -H or -L"
.LC53:
	.string	"missing operand"
.LC54:
	.string	"missing operand after %s"
	.align 8
.LC55:
	.string	"failed to get attributes of %s"
.LC56:
	.string	"/"
	.text
	.globl	main
	.type	main, @function
main:
.LFB47:
	.loc 2 158 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$272, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -276(%rbp)
	movq	%rsi, -288(%rbp)
	.loc 2 158 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 159 8
	movb	$0, -270(%rbp)
	.loc 2 161 9
	movl	$-1, -268(%rbp)
	.loc 2 162 9
	movl	$-1, -264(%rbp)
	.loc 2 166 9
	movl	$-1, -260(%rbp)
	.loc 2 167 9
	movl	$-1, -256(%rbp)
	.loc 2 170 7
	movl	$16, -252(%rbp)
	.loc 2 174 7
	movl	$-1, -248(%rbp)
	.loc 2 181 3
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 182 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 183 3
	leaq	.LC47(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 184 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 186 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 188 3
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	chopt_init@PLT
	.loc 2 190 9
	jmp	.L14
.L34:
	.loc 2 193 7
	cmpl	$132, -244(%rbp)
	jg	.L15
	cmpl	$72, -244(%rbp)
	jge	.L16
	cmpl	$-131, -244(%rbp)
	je	.L17
	cmpl	$-130, -244(%rbp)
	je	.L18
	jmp	.L15
.L16:
	movl	-244(%rbp), %eax
	subl	$72, %eax
	cmpl	$60, %eax
	ja	.L15
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L20(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L20(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L20:
	.long	.L32-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L31-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L30-.L20
	.long	.L15-.L20
	.long	.L29-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L28-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L27-.L20
	.long	.L15-.L20
	.long	.L26-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L25-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L15-.L20
	.long	.L24-.L20
	.long	.L23-.L20
	.long	.L22-.L20
	.long	.L21-.L20
	.long	.L19-.L20
	.text
.L32:
	.loc 2 196 21
	movl	$17, -252(%rbp)
	.loc 2 197 11
	jmp	.L14
.L31:
	.loc 2 200 21
	movl	$2, -252(%rbp)
	.loc 2 201 11
	jmp	.L14
.L30:
	.loc 2 204 21
	movl	$16, -252(%rbp)
	.loc 2 205 11
	jmp	.L14
.L26:
	.loc 2 208 23
	movl	$0, -248(%rbp)
	.loc 2 209 11
	jmp	.L14
.L24:
	.loc 2 213 23
	movl	$1, -248(%rbp)
	.loc 2 214 11
	jmp	.L14
.L22:
	.loc 2 217 25
	movb	$0, -270(%rbp)
	.loc 2 218 11
	jmp	.L14
.L21:
	.loc 2 221 25
	movb	$1, -270(%rbp)
	.loc 2 222 11
	jmp	.L14
.L19:
	.loc 2 225 26
	movq	optarg(%rip), %rax
	movq	%rax, reference_file(%rip)
	.loc 2 226 11
	jmp	.L14
.L23:
.LBB2:
	.loc 2 230 29
	movq	optarg(%rip), %rax
	leaq	-256(%rbp), %rdx
	leaq	-260(%rbp), %rsi
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	parse_user_spec@PLT
	movq	%rax, -232(%rbp)
	.loc 2 233 16
	cmpq	$0, -232(%rbp)
	je	.L14
.LBB3:
	.loc 2 234 15
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	leaq	.LC48(%rip), %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L29:
.LBE3:
.LBE2:
	.loc 2 239 25
	movb	$1, -220(%rbp)
	.loc 2 240 11
	jmp	.L14
.L28:
	.loc 2 243 27
	movl	$1, -224(%rbp)
	.loc 2 244 11
	jmp	.L14
.L27:
	.loc 2 247 30
	movb	$1, -207(%rbp)
	.loc 2 248 11
	jmp	.L14
.L25:
	.loc 2 251 27
	movl	$0, -224(%rbp)
	.loc 2 252 11
	jmp	.L14
.L18:
	.loc 2 254 9
	movl	$0, %edi
	call	usage
.L17:
	.loc 2 255 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC49(%rip), %r9
	leaq	.LC50(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L15:
	.loc 2 257 11
	movl	$1, %edi
	call	usage
.L14:
	.loc 2 190 18
	movq	-288(%rbp), %rsi
	movl	-276(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -244(%rbp)
	.loc 2 190 9
	cmpl	$-1, -244(%rbp)
	jne	.L34
	.loc 2 261 12
	movzbl	-220(%rbp), %eax
	.loc 2 261 6
	testb	%al, %al
	je	.L35
	.loc 2 263 10
	cmpl	$16, -252(%rbp)
	jne	.L36
	.loc 2 265 14
	cmpl	$1, -248(%rbp)
	jne	.L37
.LBB4:
	.loc 2 266 13
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L37:
.LBE4:
	.loc 2 268 23
	movl	$0, -248(%rbp)
	jmp	.L36
.L35:
	.loc 2 273 17
	movl	$16, -252(%rbp)
.L36:
	.loc 2 275 48
	cmpl	$0, -248(%rbp)
	setne	%al
	.loc 2 275 33
	movb	%al, -208(%rbp)
	.loc 2 277 12
	movl	optind(%rip), %eax
	movl	-276(%rbp), %edx
	subl	%eax, %edx
	.loc 2 277 39
	movq	reference_file(%rip), %rax
	.loc 2 277 43
	testq	%rax, %rax
	je	.L38
	.loc 2 277 43 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L39
.L38:
	.loc 2 277 43 discriminator 2
	movl	$2, %eax
.L39:
	.loc 2 277 6 is_stmt 1 discriminator 4
	cmpl	%edx, %eax
	jle	.L40
	.loc 2 279 16
	movl	optind(%rip), %eax
	.loc 2 279 10
	cmpl	%eax, -276(%rbp)
	jg	.L41
	.loc 2 280 22
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	.loc 2 280 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L42
.L41:
	.loc 2 282 64
	movl	-276(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 282 9
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 282 22
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	.loc 2 282 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L42:
	.loc 2 283 7
	movl	$1, %edi
	call	usage
.L40:
	.loc 2 286 7
	movq	reference_file(%rip), %rax
	.loc 2 286 6
	testq	%rax, %rax
	je	.L43
.LBB5:
	.loc 2 289 11
	movq	reference_file(%rip), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 289 10
	testl	%eax, %eax
	je	.L44
.LBB6:
	.loc 2 290 9
	movq	reference_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC55(%rip), %rdi
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
.L44:
.LBE6:
	.loc 2 293 22
	movl	-148(%rbp), %eax
	.loc 2 293 11
	movl	%eax, -268(%rbp)
	.loc 2 294 22
	movl	-144(%rbp), %eax
	.loc 2 294 11
	movl	%eax, -264(%rbp)
	.loc 2 295 25
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	call	uid_to_name@PLT
	.loc 2 295 23
	movq	%rax, -200(%rbp)
	.loc 2 296 26
	movl	-144(%rbp), %eax
	movl	%eax, %edi
	call	gid_to_name@PLT
	.loc 2 296 24
	movq	%rax, -192(%rbp)
.LBE5:
	jmp	.L45
.L43:
.LBB7:
	.loc 2 300 44
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 300 23
	movq	(%rax), %rax
	leaq	-224(%rbp), %rdx
	leaq	32(%rdx), %rdi
	leaq	-224(%rbp), %rdx
	leaq	24(%rdx), %rcx
	leaq	-264(%rbp), %rdx
	leaq	-268(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parse_user_spec@PLT
	movq	%rax, -240(%rbp)
	.loc 2 302 10
	cmpq	$0, -240(%rbp)
	je	.L46
.LBB8:
	.loc 2 303 9
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	leaq	.LC48(%rip), %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L46:
.LBE8:
	.loc 2 308 17
	movq	-200(%rbp), %rax
	.loc 2 308 10
	testq	%rax, %rax
	jne	.L47
	.loc 2 308 36 discriminator 1
	movq	-192(%rbp), %rax
	.loc 2 308 28 discriminator 1
	testq	%rax, %rax
	je	.L47
	.loc 2 309 27
	leaq	.LC16(%rip), %rdi
	call	xstrdup@PLT
	.loc 2 309 25
	movq	%rax, -200(%rbp)
.L47:
	.loc 2 311 13
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L45:
.LBE7:
	.loc 2 314 12
	movzbl	-220(%rbp), %eax
	.loc 2 314 6
	testb	%al, %al
	je	.L48
	.loc 2 314 21 discriminator 1
	cmpb	$0, -270(%rbp)
	je	.L48
.LBB9:
	.loc 2 317 28
	leaq	dev_ino_buf.6401(%rip), %rdi
	call	get_root_dev_ino@PLT
	.loc 2 317 26
	movq	%rax, -216(%rbp)
	.loc 2 318 16
	movq	-216(%rbp), %rax
	.loc 2 318 10
	testq	%rax, %rax
	jne	.L48
.LBB10:
	.loc 2 319 9
	leaq	.LC56(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC55(%rip), %rdi
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
.L48:
.LBE10:
.LBE9:
	.loc 2 323 13
	orl	$1024, -252(%rbp)
	.loc 2 324 8
	movl	-256(%rbp), %r9d
	movl	-260(%rbp), %r8d
	movl	-264(%rbp), %ecx
	movl	-268(%rbp), %edx
	.loc 2 324 26
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	.loc 2 324 8
	movq	-288(%rbp), %rax
	leaq	(%rsi,%rax), %rdi
	movl	-252(%rbp), %eax
	subq	$8, %rsp
	leaq	-224(%rbp), %rsi
	pushq	%rsi
	movl	%eax, %esi
	call	chown_files@PLT
	addq	$16, %rsp
	movb	%al, -269(%rbp)
	.loc 2 328 3
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	chopt_free@PLT
	.loc 2 330 28
	movzbl	-269(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 331 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	main, .-main
	.local	dev_ino_buf.6401
	.comm	dev_ino_buf.6401,16,16
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 12 "./lib/sys/select.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 15 "/usr/include/time.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 17 "/usr/include/signal.h"
	.file 18 "/usr/include/unistd.h"
	.file 19 "/usr/include/errno.h"
	.file 20 "src/version.h"
	.file 21 "./lib/exitfail.h"
	.file 22 "./lib/timespec.h"
	.file 23 "./lib/version-etc.h"
	.file 24 "./lib/progname.h"
	.file 25 "./lib/quotearg.h"
	.file 26 "./lib/dev-ino.h"
	.file 27 "src/chown-core.h"
	.file 28 "./lib/error.h"
	.file 29 "./lib/i-ring.h"
	.file 30 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb73
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF179
	.byte	0xc
	.long	.LASF180
	.long	.LASF181
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
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x97
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0xae
	.byte	0x1d
	.long	0x71
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0xb3
	.byte	0x1c
	.long	0x71
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xc4
	.byte	0x21
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0x10e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x8
	.long	0x10e
	.uleb128 0x9
	.long	.LASF68
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x2a1
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x108
	.byte	0x8
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x108
	.byte	0x10
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x108
	.byte	0x18
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x108
	.byte	0x20
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x108
	.byte	0x28
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x108
	.byte	0x30
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x108
	.byte	0x38
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x108
	.byte	0x40
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x108
	.byte	0x48
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x108
	.byte	0x50
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x108
	.byte	0x58
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x2ba
	.byte	0x60
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x2c0
	.byte	0x68
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0xc0
	.byte	0x78
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x2c6
	.byte	0x83
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x2d6
	.byte	0x88
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xcc
	.byte	0x90
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2e1
	.byte	0x98
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2ec
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x2c0
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF48
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2f2
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x11a
	.uleb128 0xb
	.long	.LASF182
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF51
	.uleb128 0x7
	.byte	0x8
	.long	0x2b5
	.uleb128 0x7
	.byte	0x8
	.long	0x11a
	.uleb128 0xd
	.long	0x10e
	.long	0x2d6
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2ad
	.uleb128 0xc
	.long	.LASF52
	.uleb128 0x7
	.byte	0x8
	.long	0x2dc
	.uleb128 0xc
	.long	.LASF53
	.uleb128 0x7
	.byte	0x8
	.long	0x2e7
	.uleb128 0xd
	.long	0x10e
	.long	0x302
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x115
	.uleb128 0x8
	.long	0x302
	.uleb128 0xf
	.long	.LASF54
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x319
	.uleb128 0x7
	.byte	0x8
	.long	0x2a1
	.uleb128 0xf
	.long	.LASF55
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x319
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x319
	.uleb128 0xf
	.long	.LASF57
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x308
	.long	0x34e
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x343
	.uleb128 0xf
	.long	.LASF58
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x34e
	.uleb128 0xf
	.long	.LASF59
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF60
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x34e
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF61
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF62
	.uleb128 0x2
	.long	.LASF63
	.byte	0x9
	.byte	0x2f
	.byte	0x11
	.long	0x9c
	.uleb128 0x2
	.long	.LASF64
	.byte	0x9
	.byte	0x3b
	.byte	0x11
	.long	0x78
	.uleb128 0x2
	.long	.LASF65
	.byte	0x9
	.byte	0x40
	.byte	0x11
	.long	0x90
	.uleb128 0x2
	.long	.LASF66
	.byte	0x9
	.byte	0x4f
	.byte	0x11
	.long	0x84
	.uleb128 0x2
	.long	.LASF67
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.long	0xd8
	.uleb128 0x9
	.long	.LASF69
	.byte	0x10
	.byte	0xb
	.byte	0xa
	.byte	0x8
	.long	0x3e9
	.uleb128 0xa
	.long	.LASF70
	.byte	0xb
	.byte	0xc
	.byte	0xc
	.long	0xd8
	.byte	0
	.uleb128 0xa
	.long	.LASF71
	.byte	0xb
	.byte	0x10
	.byte	0x15
	.long	0xfc
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF72
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF73
	.uleb128 0xf
	.long	.LASF74
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF75
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF76
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF77
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF78
	.byte	0x20
	.byte	0xe
	.byte	0x32
	.byte	0x8
	.long	0x46f
	.uleb128 0xa
	.long	.LASF79
	.byte	0xe
	.byte	0x34
	.byte	0xf
	.long	0x302
	.byte	0
	.uleb128 0xa
	.long	.LASF80
	.byte	0xe
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF81
	.byte	0xe
	.byte	0x38
	.byte	0x8
	.long	0x474
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xe
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x42d
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0x108
	.long	0x48a
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF82
	.byte	0xf
	.byte	0x9f
	.byte	0xe
	.long	0x47a
	.uleb128 0xf
	.long	.LASF83
	.byte	0xf
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF84
	.byte	0xf
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF85
	.byte	0xf
	.byte	0xa6
	.byte	0xe
	.long	0x47a
	.uleb128 0xf
	.long	.LASF86
	.byte	0xf
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF87
	.byte	0xf
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF88
	.byte	0xf
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF89
	.byte	0x90
	.byte	0x10
	.byte	0x2e
	.byte	0x8
	.long	0x5b0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x10
	.byte	0x30
	.byte	0xd
	.long	0x78
	.byte	0
	.uleb128 0xa
	.long	.LASF91
	.byte	0x10
	.byte	0x35
	.byte	0xd
	.long	0x9c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF92
	.byte	0x10
	.byte	0x3d
	.byte	0xf
	.long	0xb4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF93
	.byte	0x10
	.byte	0x3e
	.byte	0xe
	.long	0xa8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF94
	.byte	0x10
	.byte	0x40
	.byte	0xd
	.long	0x84
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF95
	.byte	0x10
	.byte	0x41
	.byte	0xd
	.long	0x90
	.byte	0x20
	.uleb128 0xa
	.long	.LASF96
	.byte	0x10
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xa
	.long	.LASF97
	.byte	0x10
	.byte	0x45
	.byte	0xd
	.long	0x78
	.byte	0x28
	.uleb128 0xa
	.long	.LASF98
	.byte	0x10
	.byte	0x4a
	.byte	0xd
	.long	0xc0
	.byte	0x30
	.uleb128 0xa
	.long	.LASF99
	.byte	0x10
	.byte	0x4e
	.byte	0x11
	.long	0xe4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF100
	.byte	0x10
	.byte	0x50
	.byte	0x10
	.long	0xf0
	.byte	0x40
	.uleb128 0xa
	.long	.LASF101
	.byte	0x10
	.byte	0x5b
	.byte	0x15
	.long	0x3c1
	.byte	0x48
	.uleb128 0xa
	.long	.LASF102
	.byte	0x10
	.byte	0x5c
	.byte	0x15
	.long	0x3c1
	.byte	0x58
	.uleb128 0xa
	.long	.LASF103
	.byte	0x10
	.byte	0x5d
	.byte	0x15
	.long	0x3c1
	.byte	0x68
	.uleb128 0xa
	.long	.LASF104
	.byte	0x10
	.byte	0x6a
	.byte	0x17
	.long	0x5b0
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.long	0xfc
	.long	0x5c0
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x5c0
	.uleb128 0xd
	.long	0x308
	.long	0x5d7
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x5c7
	.uleb128 0x11
	.long	.LASF105
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x5d7
	.uleb128 0x11
	.long	.LASF106
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x5d7
	.uleb128 0x11
	.long	.LASF107
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x603
	.uleb128 0x7
	.byte	0x8
	.long	0x108
	.uleb128 0x11
	.long	.LASF108
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x603
	.uleb128 0xf
	.long	.LASF109
	.byte	0x13
	.byte	0x2d
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF110
	.byte	0x13
	.byte	0x2e
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF111
	.byte	0x14
	.byte	0x1
	.byte	0x14
	.long	0x302
	.uleb128 0xf
	.long	.LASF112
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
	.long	0x65e
	.uleb128 0x15
	.long	.LASF113
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x673
	.uleb128 0x16
	.long	.LASF114
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x691
	.uleb128 0x18
	.long	.LASF115
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF116
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x115
	.long	0x69c
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x691
	.uleb128 0xf
	.long	.LASF117
	.byte	0x17
	.byte	0x19
	.byte	0x13
	.long	0x69c
	.uleb128 0xf
	.long	.LASF118
	.byte	0x18
	.byte	0x20
	.byte	0x14
	.long	0x302
	.uleb128 0x19
	.long	.LASF133
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x20
	.byte	0x6
	.long	0x70e
	.uleb128 0x16
	.long	.LASF119
	.byte	0
	.uleb128 0x16
	.long	.LASF120
	.byte	0x1
	.uleb128 0x16
	.long	.LASF121
	.byte	0x2
	.uleb128 0x16
	.long	.LASF122
	.byte	0x3
	.uleb128 0x16
	.long	.LASF123
	.byte	0x4
	.uleb128 0x16
	.long	.LASF124
	.byte	0x5
	.uleb128 0x16
	.long	.LASF125
	.byte	0x6
	.uleb128 0x16
	.long	.LASF126
	.byte	0x7
	.uleb128 0x16
	.long	.LASF127
	.byte	0x8
	.uleb128 0x16
	.long	.LASF128
	.byte	0x9
	.uleb128 0x16
	.long	.LASF129
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x6b9
	.uleb128 0x11
	.long	.LASF130
	.byte	0x19
	.value	0x10b
	.byte	0x1a
	.long	0x34e
	.uleb128 0xd
	.long	0x70e
	.long	0x72b
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x720
	.uleb128 0x11
	.long	.LASF131
	.byte	0x19
	.value	0x10c
	.byte	0x21
	.long	0x72b
	.uleb128 0x9
	.long	.LASF132
	.byte	0x10
	.byte	0x1a
	.byte	0x19
	.byte	0x8
	.long	0x765
	.uleb128 0xa
	.long	.LASF91
	.byte	0x1a
	.byte	0x1b
	.byte	0x9
	.long	0x385
	.byte	0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1a
	.byte	0x1c
	.byte	0x9
	.long	0x391
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.long	.LASF134
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1b
	.byte	0x1f
	.byte	0x6
	.long	0x78a
	.uleb128 0x16
	.long	.LASF135
	.byte	0
	.uleb128 0x16
	.long	.LASF136
	.byte	0x1
	.uleb128 0x16
	.long	.LASF137
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	.LASF138
	.byte	0x28
	.byte	0x1b
	.byte	0x2b
	.byte	0x8
	.long	0x7f3
	.uleb128 0xa
	.long	.LASF139
	.byte	0x1b
	.byte	0x2e
	.byte	0x12
	.long	0x765
	.byte	0
	.uleb128 0xa
	.long	.LASF140
	.byte	0x1b
	.byte	0x31
	.byte	0x8
	.long	0x7f3
	.byte	0x4
	.uleb128 0xa
	.long	.LASF141
	.byte	0x1b
	.byte	0x35
	.byte	0x13
	.long	0x7fa
	.byte	0x8
	.uleb128 0xa
	.long	.LASF142
	.byte	0x1b
	.byte	0x38
	.byte	0x8
	.long	0x7f3
	.byte	0x10
	.uleb128 0xa
	.long	.LASF143
	.byte	0x1b
	.byte	0x3b
	.byte	0x8
	.long	0x7f3
	.byte	0x11
	.uleb128 0xa
	.long	.LASF144
	.byte	0x1b
	.byte	0x3e
	.byte	0x9
	.long	0x108
	.byte	0x18
	.uleb128 0xa
	.long	.LASF145
	.byte	0x1b
	.byte	0x41
	.byte	0x9
	.long	0x108
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF146
	.uleb128 0x7
	.byte	0x8
	.long	0x73d
	.uleb128 0xf
	.long	.LASF147
	.byte	0x1c
	.byte	0x32
	.byte	0xf
	.long	0x5c1
	.uleb128 0xf
	.long	.LASF148
	.byte	0x1c
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF149
	.byte	0x1c
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1d
	.byte	0x14
	.byte	0x6
	.long	0x839
	.uleb128 0x16
	.long	.LASF150
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF151
	.uleb128 0xf
	.long	.LASF152
	.byte	0x1e
	.byte	0x19
	.byte	0x1f
	.long	0x839
	.uleb128 0x1a
	.long	.LASF158
	.byte	0x2
	.byte	0x2a
	.byte	0xe
	.long	0x108
	.uleb128 0x9
	.byte	0x3
	.quad	reference_file
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x2f
	.byte	0x1
	.long	0x88d
	.uleb128 0x16
	.long	.LASF153
	.byte	0x80
	.uleb128 0x16
	.long	.LASF154
	.byte	0x81
	.uleb128 0x16
	.long	.LASF155
	.byte	0x82
	.uleb128 0x16
	.long	.LASF156
	.byte	0x83
	.uleb128 0x16
	.long	.LASF157
	.byte	0x84
	.byte	0
	.uleb128 0xd
	.long	0x46f
	.long	0x89d
	.uleb128 0xe
	.long	0x39
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.long	0x88d
	.uleb128 0x1a
	.long	.LASF159
	.byte	0x2
	.byte	0x37
	.byte	0x1c
	.long	0x89d
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1b
	.long	.LASF171
	.byte	0x2
	.byte	0x9d
	.byte	0x1
	.long	0x65
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xa88
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2
	.byte	0x9d
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x1c
	.long	.LASF161
	.byte	0x2
	.byte	0x9d
	.byte	0x18
	.long	0x603
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1a
	.long	.LASF162
	.byte	0x2
	.byte	0x9f
	.byte	0x8
	.long	0x7f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -286
	.uleb128 0x1d
	.string	"uid"
	.byte	0x2
	.byte	0xa1
	.byte	0x9
	.long	0x3a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x1d
	.string	"gid"
	.byte	0x2
	.byte	0xa2
	.byte	0x9
	.long	0x39d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1a
	.long	.LASF163
	.byte	0x2
	.byte	0xa6
	.byte	0x9
	.long	0x3a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x1a
	.long	.LASF164
	.byte	0x2
	.byte	0xa7
	.byte	0x9
	.long	0x39d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1a
	.long	.LASF165
	.byte	0x2
	.byte	0xaa
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x1a
	.long	.LASF166
	.byte	0x2
	.byte	0xae
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1a
	.long	.LASF167
	.byte	0x2
	.byte	0xb0
	.byte	0x17
	.long	0x78a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1d
	.string	"ok"
	.byte	0x2
	.byte	0xb1
	.byte	0x8
	.long	0x7f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -285
	.uleb128 0x1a
	.long	.LASF168
	.byte	0x2
	.byte	0xb2
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x1e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x9ce
	.uleb128 0x1d
	.string	"e"
	.byte	0x2
	.byte	0xe6
	.byte	0x19
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x1f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.byte	0
	.uleb128 0x1f
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1e
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xa17
	.uleb128 0x20
	.long	.LASF169
	.byte	0x2
	.value	0x120
	.byte	0x13
	.long	0x4df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1f
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0
	.uleb128 0x1e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0xa4d
	.uleb128 0x21
	.string	"e"
	.byte	0x2
	.value	0x12c
	.byte	0x13
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1f
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0
	.uleb128 0x22
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x20
	.long	.LASF170
	.byte	0x2
	.value	0x13c
	.byte	0x1d
	.long	0x73d
	.uleb128 0x9
	.byte	0x3
	.quad	dev_ino_buf.6401
	.uleb128 0x1f
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF172
	.byte	0x2
	.byte	0x4a
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xab6
	.uleb128 0x1c
	.long	.LASF173
	.byte	0x2
	.byte	0x4a
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x24
	.long	.LASF183
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xb5b
	.uleb128 0x25
	.long	.LASF174
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.long	.LASF175
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xb11
	.uleb128 0x27
	.long	.LASF174
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x302
	.byte	0
	.uleb128 0x27
	.long	.LASF176
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x302
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0xae6
	.uleb128 0x20
	.long	.LASF175
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xb6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.long	.LASF176
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x20
	.long	.LASF177
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xb70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x20
	.long	.LASF178
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0xb11
	.long	0xb6b
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xb5b
	.uleb128 0x7
	.byte	0x8
	.long	0xb11
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
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
.LASF112:
	.string	"exit_failure"
.LASF14:
	.string	"__off_t"
.LASF10:
	.string	"__gid_t"
.LASF145:
	.string	"group_name"
.LASF22:
	.string	"_IO_read_ptr"
.LASF127:
	.string	"locale_quoting_style"
.LASF34:
	.string	"_chain"
.LASF103:
	.string	"st_ctim"
.LASF40:
	.string	"_shortbuf"
.LASF116:
	.string	"GETOPT_VERSION_CHAR"
.LASF162:
	.string	"preserve_root"
.LASF133:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF114:
	.string	"LOG10_TIMESPEC_HZ"
.LASF156:
	.string	"PRESERVE_ROOT"
.LASF164:
	.string	"required_gid"
.LASF120:
	.string	"shell_quoting_style"
.LASF115:
	.string	"GETOPT_HELP_CHAR"
.LASF28:
	.string	"_IO_buf_base"
.LASF73:
	.string	"long long unsigned int"
.LASF167:
	.string	"chopt"
.LASF43:
	.string	"_codecvt"
.LASF89:
	.string	"stat"
.LASF61:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF131:
	.string	"quoting_style_vals"
.LASF174:
	.string	"program"
.LASF126:
	.string	"escape_quoting_style"
.LASF12:
	.string	"__mode_t"
.LASF119:
	.string	"literal_quoting_style"
.LASF35:
	.string	"_fileno"
.LASF11:
	.string	"__ino_t"
.LASF23:
	.string	"_IO_read_end"
.LASF84:
	.string	"__timezone"
.LASF18:
	.string	"__blkcnt_t"
.LASF106:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF72:
	.string	"_gl_cxxalias_dummy"
.LASF159:
	.string	"long_options"
.LASF21:
	.string	"_flags"
.LASF140:
	.string	"recurse"
.LASF29:
	.string	"_IO_buf_end"
.LASF38:
	.string	"_cur_column"
.LASF110:
	.string	"program_invocation_short_name"
.LASF124:
	.string	"c_quoting_style"
.LASF52:
	.string	"_IO_codecvt"
.LASF155:
	.string	"NO_PRESERVE_ROOT"
.LASF60:
	.string	"_sys_errlist"
.LASF109:
	.string	"program_invocation_name"
.LASF37:
	.string	"_old_offset"
.LASF42:
	.string	"_offset"
.LASF113:
	.string	"TIMESPEC_HZ"
.LASF96:
	.string	"__pad0"
.LASF123:
	.string	"shell_escape_always_quoting_style"
.LASF87:
	.string	"timezone"
.LASF100:
	.string	"st_blocks"
.LASF118:
	.string	"program_name"
.LASF94:
	.string	"st_uid"
.LASF51:
	.string	"_IO_marker"
.LASF54:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF46:
	.string	"_freeres_buf"
.LASF163:
	.string	"required_uid"
.LASF0:
	.string	"long unsigned int"
.LASF142:
	.string	"affect_symlink_referent"
.LASF26:
	.string	"_IO_write_ptr"
.LASF79:
	.string	"name"
.LASF57:
	.string	"sys_nerr"
.LASF66:
	.string	"uid_t"
.LASF88:
	.string	"getdate_err"
.LASF179:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF168:
	.string	"optc"
.LASF3:
	.string	"short unsigned int"
.LASF149:
	.string	"error_one_per_line"
.LASF111:
	.string	"Version"
.LASF30:
	.string	"_IO_save_base"
.LASF13:
	.string	"__nlink_t"
.LASF108:
	.string	"environ"
.LASF177:
	.string	"map_prog"
.LASF41:
	.string	"_lock"
.LASF36:
	.string	"_flags2"
.LASF48:
	.string	"_mode"
.LASF55:
	.string	"stdout"
.LASF98:
	.string	"st_size"
.LASF117:
	.string	"version_etc_copyright"
.LASF44:
	.string	"_wide_data"
.LASF93:
	.string	"st_mode"
.LASF74:
	.string	"optarg"
.LASF71:
	.string	"tv_nsec"
.LASF132:
	.string	"dev_ino"
.LASF62:
	.string	"long double"
.LASF8:
	.string	"__dev_t"
.LASF75:
	.string	"optind"
.LASF19:
	.string	"__syscall_slong_t"
.LASF27:
	.string	"_IO_write_end"
.LASF134:
	.string	"Verbosity"
.LASF65:
	.string	"gid_t"
.LASF182:
	.string	"_IO_lock_t"
.LASF68:
	.string	"_IO_FILE"
.LASF147:
	.string	"error_print_progname"
.LASF17:
	.string	"__blksize_t"
.LASF64:
	.string	"dev_t"
.LASF107:
	.string	"__environ"
.LASF67:
	.string	"time_t"
.LASF139:
	.string	"verbosity"
.LASF137:
	.string	"V_off"
.LASF58:
	.string	"sys_errlist"
.LASF143:
	.string	"force_silent"
.LASF33:
	.string	"_markers"
.LASF136:
	.string	"V_changes_only"
.LASF180:
	.string	"src/chown.c"
.LASF165:
	.string	"bit_flags"
.LASF104:
	.string	"__glibc_reserved"
.LASF92:
	.string	"st_nlink"
.LASF125:
	.string	"c_maybe_quoting_style"
.LASF146:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF176:
	.string	"node"
.LASF91:
	.string	"st_ino"
.LASF170:
	.string	"dev_ino_buf"
.LASF5:
	.string	"short int"
.LASF78:
	.string	"option"
.LASF99:
	.string	"st_blksize"
.LASF152:
	.string	"quote_quoting_options"
.LASF81:
	.string	"flag"
.LASF59:
	.string	"_sys_nerr"
.LASF69:
	.string	"timespec"
.LASF85:
	.string	"tzname"
.LASF50:
	.string	"FILE"
.LASF122:
	.string	"shell_escape_quoting_style"
.LASF169:
	.string	"ref_stats"
.LASF130:
	.string	"quoting_style_args"
.LASF77:
	.string	"optopt"
.LASF86:
	.string	"daylight"
.LASF97:
	.string	"st_rdev"
.LASF157:
	.string	"REFERENCE_FILE_OPTION"
.LASF20:
	.string	"char"
.LASF121:
	.string	"shell_always_quoting_style"
.LASF153:
	.string	"DEREFERENCE_OPTION"
.LASF70:
	.string	"tv_sec"
.LASF150:
	.string	"I_RING_SIZE"
.LASF135:
	.string	"V_high"
.LASF166:
	.string	"dereference"
.LASF128:
	.string	"clocale_quoting_style"
.LASF76:
	.string	"opterr"
.LASF9:
	.string	"__uid_t"
.LASF15:
	.string	"__off64_t"
.LASF151:
	.string	"quoting_options"
.LASF24:
	.string	"_IO_read_base"
.LASF32:
	.string	"_IO_save_end"
.LASF105:
	.string	"_sys_siglist"
.LASF175:
	.string	"infomap"
.LASF95:
	.string	"st_gid"
.LASF80:
	.string	"has_arg"
.LASF172:
	.string	"usage"
.LASF47:
	.string	"__pad5"
.LASF16:
	.string	"__time_t"
.LASF49:
	.string	"_unused2"
.LASF56:
	.string	"stderr"
.LASF101:
	.string	"st_atim"
.LASF161:
	.string	"argv"
.LASF83:
	.string	"__daylight"
.LASF138:
	.string	"Chown_option"
.LASF173:
	.string	"status"
.LASF181:
	.string	"/root/coreutils"
.LASF90:
	.string	"st_dev"
.LASF129:
	.string	"custom_quoting_style"
.LASF31:
	.string	"_IO_backup_base"
.LASF102:
	.string	"st_mtim"
.LASF148:
	.string	"error_message_count"
.LASF178:
	.string	"lc_messages"
.LASF39:
	.string	"_vtable_offset"
.LASF160:
	.string	"argc"
.LASF45:
	.string	"_freeres_list"
.LASF53:
	.string	"_IO_wide_data"
.LASF141:
	.string	"root_dev_ino"
.LASF158:
	.string	"reference_file"
.LASF82:
	.string	"__tzname"
.LASF171:
	.string	"main"
.LASF25:
	.string	"_IO_write_base"
.LASF183:
	.string	"emit_ancillary_info"
.LASF154:
	.string	"FROM_OPTION"
.LASF144:
	.string	"user_name"
.LASF63:
	.string	"ino_t"
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
