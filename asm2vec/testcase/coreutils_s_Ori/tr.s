	.file	"tr.c"
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
	.type	es_match, @function
es_match:
.LFB50:
	.file 2 "src/tr.c"
	.loc 2 195 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -20(%rbp)
	.loc 2 196 12
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 196 15
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 196 24
	cmpb	%al, -20(%rbp)
	jne	.L13
	.loc 2 196 30 discriminator 1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 196 39 discriminator 1
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 196 27 discriminator 1
	xorl	$1, %eax
	.loc 2 196 24 discriminator 1
	testb	%al, %al
	je	.L13
	.loc 2 196 24 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L14
.L13:
	.loc 2 196 24 discriminator 4
	movl	$0, %eax
.L14:
	.loc 2 196 24 discriminator 6
	andl	$1, %eax
	.loc 2 197 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	es_match, .-es_match
	.local	squeeze_repeats
	.comm	squeeze_repeats,1,1
	.local	delete
	.comm	delete,1,1
	.local	complement
	.comm	complement,1,1
	.local	truncate_set1
	.comm	truncate_set1,1,1
	.local	translating
	.comm	translating,1,1
	.local	io_buf
	.comm	io_buf,8192,32
	.section	.rodata
.LC18:
	.string	"alnum"
.LC19:
	.string	"alpha"
.LC20:
	.string	"blank"
.LC21:
	.string	"cntrl"
.LC22:
	.string	"digit"
.LC23:
	.string	"graph"
.LC24:
	.string	"lower"
.LC25:
	.string	"print"
.LC26:
	.string	"punct"
.LC27:
	.string	"space"
.LC28:
	.string	"upper"
.LC29:
	.string	"xdigit"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	char_class_name, @object
	.size	char_class_name, 96
char_class_name:
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.local	in_squeeze_set
	.comm	in_squeeze_set,256,32
	.local	in_delete_set
	.comm	in_delete_set,256,32
	.local	xlate
	.comm	xlate,256,32
	.section	.rodata
.LC30:
	.string	"complement"
.LC31:
	.string	"delete"
.LC32:
	.string	"squeeze-repeats"
.LC33:
	.string	"truncate-set1"
.LC34:
	.string	"help"
.LC35:
	.string	"version"
	.section	.data.rel.ro.local
	.align 32
	.type	long_options, @object
	.size	long_options, 224
long_options:
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC31
	.long	0
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC32
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC33
	.long	0
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC34
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC35
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
.LC36:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC37:
	.string	"Usage: %s [OPTION]... SET1 [SET2]\n"
	.align 8
.LC38:
	.ascii	"Translate, squeeze, and/or delete characters from standard i"
	.ascii	"nput,\nwriting to standard output.\n\n  -c, -C, --complement"
	.ascii	"    use the complement of SET1\n  -d, --delete            de"
	.ascii	"lete characters in SET1, do not translate\n  -s, --squeeze-r"
	.ascii	"epea"
	.string	"ts   replace each sequence of a repeated character\n                            that is listed in the last specified SET,\n                            with a single occurrence of that character\n  -t, --truncate-set1     first truncate SET1 to length of SET2\n"
	.align 8
.LC39:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC40:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC41:
	.ascii	"\nSETs are specified as strings of characters.  Most represe"
	.ascii	"nt themselves.\nInterpreted sequences are:\n\n  \\NNN       "
	.ascii	" "
	.string	"    character with octal value NNN (1 to 3 octal digits)\n  \\\\              backslash\n  \\a              audible BEL\n  \\b              backspace\n  \\f              form feed\n  \\n              new line\n  \\r              return\n  \\t              horizontal tab\n"
	.align 8
.LC42:
	.ascii	"  \\v              vertical tab\n  CHAR1-CHAR2     all chara"
	.ascii	"cters from CHAR1 to CHAR2 in ascending order\n  [CHAR*]     "
	.ascii	"    in SET2, copies of CHAR until length of SET1\n  "
	.string	"[CHAR*REPEAT]   REPEAT copies of CHAR, REPEAT octal if starting with 0\n  [:alnum:]       all letters and digits\n  [:alpha:]       all letters\n  [:blank:]       all horizontal whitespace\n  [:cntrl:]       all control characters\n  [:digit:]       all digits\n"
	.align 8
.LC43:
	.ascii	"  [:graph:]       all printable characters, not including sp"
	.ascii	"ace\n  [:lower:]       all lower case letters\n  [:print:]  "
	.ascii	"     all printable characters, inclu"
	.string	"ding space\n  [:punct:]       all punctuation characters\n  [:space:]       all horizontal or vertical whitespace\n  [:upper:]       all upper case letters\n  [:xdigit:]      all hexadecimal digits\n  [=CHAR=]        all characters which are equivalent to CHAR\n"
	.align 8
.LC44:
	.ascii	"\nTranslation occurs if -d is not given and both SET1 and SE"
	.ascii	"T2 appear.\n-t may be used only when translating.  SET2 is e"
	.ascii	"xtended to length of\nSET1 by repeating its last character a"
	.ascii	"s necessary.  Excess characters\nof SET"
	.string	"2 are ignored.  Only [:lower:] and [:upper:] are guaranteed to\nexpand in ascending order; used in SET2 while translating, they may\nonly be used in pairs to specify case conversion.  -s uses the last\nspecified SET, and occurs after translation or deletion.\n"
.LC45:
	.string	"tr"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB51:
	.loc 2 282 1
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
	.loc 2 283 6
	cmpl	$0, -20(%rbp)
	je	.L17
	.loc 2 284 5
	movq	program_name(%rip), %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L18
.L17:
	.loc 2 287 7
	movq	program_name(%rip), %rbx
	.loc 2 287 15
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	.loc 2 287 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 291 7
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 302 7
	movq	stdout(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 303 7
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 304 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 318 6
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 329 6
	movq	stdout(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 339 6
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 349 7
	leaq	.LC45(%rip), %rdi
	call	emit_ancillary_info
.L18:
	.loc 2 351 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE51:
	.size	usage, .-usage
	.type	is_equiv_class_member, @function
is_equiv_class_member:
.LFB52:
	.loc 2 359 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -4(%rbp)
	movb	%al, -8(%rbp)
	.loc 2 360 23
	movzbl	-4(%rbp), %eax
	cmpb	-8(%rbp), %al
	sete	%al
	.loc 2 361 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	is_equiv_class_member, .-is_equiv_class_member
	.type	is_char_class_member, @function
is_char_class_member:
.LFB53:
	.loc 2 368 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, %eax
	movb	%al, -24(%rbp)
	cmpl	$11, -20(%rbp)
	ja	.L22
	movl	-20(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L24(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L24(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L24:
	.long	.L35-.L24
	.long	.L34-.L24
	.long	.L33-.L24
	.long	.L32-.L24
	.long	.L31-.L24
	.long	.L30-.L24
	.long	.L29-.L24
	.long	.L28-.L24
	.long	.L27-.L24
	.long	.L26-.L24
	.long	.L25-.L24
	.long	.L23-.L24
	.text
.L35:
	.loc 2 374 16
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-24(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 2 374 14
	andl	$8, %eax
	movl	%eax, -4(%rbp)
	.loc 2 375 7
	jmp	.L36
.L34:
	.loc 2 377 16
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-24(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 2 377 14
	andl	$1024, %eax
	movl	%eax, -4(%rbp)
	.loc 2 378 7
	jmp	.L36
.L33:
	.loc 2 380 16
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-24(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 2 380 14
	andl	$1, %eax
	movl	%eax, -4(%rbp)
	.loc 2 381 7
	jmp	.L36
.L32:
	.loc 2 383 16
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-24(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 2 383 14
	andl	$2, %eax
	movl	%eax, -4(%rbp)
	.loc 2 384 7
	jmp	.L36
.L31:
	.loc 2 386 16
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-24(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 2 386 14
	andl	$2048, %eax
	movl	%eax, -4(%rbp)
	.loc 2 387 7
	jmp	.L36
.L30:
	.loc 2 389 16
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-24(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 2 389 14
	andl	$32768, %eax
	movl	%eax, -4(%rbp)
	.loc 2 390 7
	jmp	.L36
.L29:
	.loc 2 392 16
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-24(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 2 392 14
	andl	$512, %eax
	movl	%eax, -4(%rbp)
	.loc 2 393 7
	jmp	.L36
.L28:
	.loc 2 395 16
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-24(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 2 395 14
	andl	$16384, %eax
	movl	%eax, -4(%rbp)
	.loc 2 396 7
	jmp	.L36
.L27:
	.loc 2 398 16
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-24(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 2 398 14
	andl	$4, %eax
	movl	%eax, -4(%rbp)
	.loc 2 399 7
	jmp	.L36
.L26:
	.loc 2 401 16
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-24(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 2 401 14
	andl	$8192, %eax
	movl	%eax, -4(%rbp)
	.loc 2 402 7
	jmp	.L36
.L25:
	.loc 2 404 16
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-24(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 2 404 14
	andl	$256, %eax
	movl	%eax, -4(%rbp)
	.loc 2 405 7
	jmp	.L36
.L23:
	.loc 2 407 16
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-24(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	.loc 2 407 14
	andl	$4096, %eax
	movl	%eax, -4(%rbp)
	.loc 2 408 7
	jmp	.L36
.L22:
	.loc 2 410 7
	call	abort@PLT
.L36:
	.loc 2 413 10
	cmpl	$0, -4(%rbp)
	setne	%al
	.loc 2 414 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	is_char_class_member, .-is_char_class_member
	.type	es_free, @function
es_free:
.LFB54:
	.loc 2 418 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 419 11
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 419 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 420 11
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 420 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 421 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	es_free, .-es_free
	.section	.rodata
	.align 8
.LC46:
	.string	"warning: the ambiguous octal escape \\%c%c%c is being\n\tinterpreted as the 2-byte sequence \\0%c%c, %c"
	.align 8
.LC47:
	.string	"warning: an unescaped backslash at end of string is not portable"
	.text
	.type	unquote, @function
unquote:
.LFB55:
	.loc 2 433 1
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
	subq	$72, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	.loc 2 434 16
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -56(%rbp)
	.loc 2 436 11
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, %rdx
	.loc 2 436 9
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 437 17
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	xcalloc@PLT
	movq	%rax, %rdx
	.loc 2 437 15
	movq	-96(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 439 16
	movl	$0, -68(%rbp)
.LBB2:
	.loc 2 440 21
	movl	$0, -64(%rbp)
	.loc 2 440 3
	jmp	.L40
.L58:
.LBB3:
	.loc 2 445 16
	movl	-64(%rbp), %edx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 445 7
	cmpl	$92, %eax
	jne	.L41
	.loc 2 448 13
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 448 22
	movl	-68(%rbp), %eax
	addq	%rdx, %rax
	.loc 2 448 26
	movb	$1, (%rax)
	.loc 2 449 23
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	.loc 2 449 20
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	testl	%eax, %eax
	je	.L42
	testl	%eax, %eax
	js	.L43
	cmpl	$118, %eax
	jg	.L43
	cmpl	$48, %eax
	jl	.L43
	subl	$48, %eax
	cmpl	$70, %eax
	ja	.L43
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L45(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L45(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L45:
	.long	.L53-.L45
	.long	.L53-.L45
	.long	.L53-.L45
	.long	.L53-.L45
	.long	.L53-.L45
	.long	.L53-.L45
	.long	.L53-.L45
	.long	.L53-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L52-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L51-.L45
	.long	.L50-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L49-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L48-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L43-.L45
	.long	.L47-.L45
	.long	.L43-.L45
	.long	.L46-.L45
	.long	.L43-.L45
	.long	.L44-.L45
	.text
.L52:
	.loc 2 452 17
	movb	$92, -69(%rbp)
	.loc 2 453 15
	jmp	.L54
.L51:
	.loc 2 455 17
	movb	$7, -69(%rbp)
	.loc 2 456 15
	jmp	.L54
.L50:
	.loc 2 458 17
	movb	$8, -69(%rbp)
	.loc 2 459 15
	jmp	.L54
.L49:
	.loc 2 461 17
	movb	$12, -69(%rbp)
	.loc 2 462 15
	jmp	.L54
.L48:
	.loc 2 464 17
	movb	$10, -69(%rbp)
	.loc 2 465 15
	jmp	.L54
.L47:
	.loc 2 467 17
	movb	$13, -69(%rbp)
	.loc 2 468 15
	jmp	.L54
.L46:
	.loc 2 470 17
	movb	$9, -69(%rbp)
	.loc 2 471 15
	jmp	.L54
.L44:
	.loc 2 473 17
	movb	$11, -69(%rbp)
	.loc 2 474 15
	jmp	.L54
.L53:
	.loc 2 483 23
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	.loc 2 483 20
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 483 17
	subl	$48, %eax
	movb	%al, -69(%rbp)
	.loc 2 484 31
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %edx
	.loc 2 484 28
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 484 25
	subl	$48, %eax
	movl	%eax, -60(%rbp)
	.loc 2 485 18
	cmpl	$0, -60(%rbp)
	js	.L60
	.loc 2 485 34 discriminator 1
	cmpl	$7, -60(%rbp)
	jg	.L60
	.loc 2 487 29
	movzbl	-69(%rbp), %eax
	sall	$3, %eax
	movl	-60(%rbp), %edx
	.loc 2 487 21
	addl	%edx, %eax
	movb	%al, -69(%rbp)
	.loc 2 488 19
	addl	$1, -64(%rbp)
	.loc 2 489 35
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %edx
	.loc 2 489 32
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 489 29
	subl	$48, %eax
	movl	%eax, -60(%rbp)
	.loc 2 490 22
	cmpl	$0, -60(%rbp)
	js	.L60
	.loc 2 490 38 discriminator 1
	cmpl	$7, -60(%rbp)
	jg	.L60
	.loc 2 492 29
	movzbl	-69(%rbp), %eax
	leal	0(,%rax,8), %edx
	.loc 2 492 33
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	.loc 2 492 26
	cmpl	$255, %eax
	jg	.L56
	.loc 2 494 37
	movzbl	-69(%rbp), %eax
	sall	$3, %eax
	movl	-60(%rbp), %edx
	.loc 2 494 29
	addl	%edx, %eax
	movb	%al, -69(%rbp)
	.loc 2 495 27
	addl	$1, -64(%rbp)
	.loc 2 514 15
	jmp	.L60
.L56:
	.loc 2 510 54
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %edx
	.loc 2 510 51
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 507 27
	movsbl	%al, %r14d
	.loc 2 510 44
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	.loc 2 510 41
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 507 27
	movsbl	%al, %r13d
	.loc 2 510 35
	movl	-64(%rbp), %edx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 507 27
	movsbl	%al, %r12d
	.loc 2 509 54
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %edx
	.loc 2 509 51
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 507 27
	movsbl	%al, %eax
	movl	%eax, -100(%rbp)
	.loc 2 509 44
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	.loc 2 509 41
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 507 27
	movsbl	%al, %r15d
	.loc 2 509 35
	movl	-64(%rbp), %edx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 507 27
	movsbl	%al, %ebx
	.loc 2 507 40
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	.loc 2 507 27
	subq	$8, %rsp
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movl	-100(%rbp), %r9d
	movl	%r15d, %r8d
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	addq	$32, %rsp
	.loc 2 514 15
	jmp	.L60
.L42:
	.loc 2 516 28
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	.loc 2 516 15
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 519 17
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 519 26
	movl	-68(%rbp), %eax
	addq	%rdx, %rax
	.loc 2 519 30
	movb	$0, (%rax)
	.loc 2 520 16
	subl	$1, -64(%rbp)
	.loc 2 521 17
	movb	$92, -69(%rbp)
	.loc 2 522 15
	jmp	.L54
.L43:
	.loc 2 524 23
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	.loc 2 524 20
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 524 17
	movb	%al, -69(%rbp)
	.loc 2 525 15
	jmp	.L54
.L60:
	.loc 2 514 15
	nop
.L54:
	.loc 2 527 11
	addl	$1, -64(%rbp)
	.loc 2 528 13
	movq	-96(%rbp), %rax
	movq	(%rax), %rcx
	.loc 2 528 18
	movl	-68(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -68(%rbp)
	movl	%eax, %eax
	.loc 2 528 16
	leaq	(%rcx,%rax), %rdx
	.loc 2 528 22
	movzbl	-69(%rbp), %eax
	movb	%al, (%rdx)
	.loc 2 529 11
	jmp	.L57
.L41:
	.loc 2 531 25
	movl	-64(%rbp), %edx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 531 13
	movq	-96(%rbp), %rax
	movq	(%rax), %rsi
	.loc 2 531 18
	movl	-68(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -68(%rbp)
	movl	%eax, %eax
	.loc 2 531 16
	leaq	(%rsi,%rax), %rdx
	.loc 2 531 25
	movzbl	(%rcx), %eax
	.loc 2 531 22
	movb	%al, (%rdx)
	.loc 2 532 11
	nop
.L57:
.LBE3:
	.loc 2 440 35 discriminator 2
	addl	$1, -64(%rbp)
.L40:
	.loc 2 440 29 discriminator 1
	movl	-64(%rbp), %edx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 440 3 discriminator 1
	testb	%al, %al
	jne	.L58
.LBE2:
	.loc 2 535 11
	movl	-68(%rbp), %edx
	movq	-96(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 536 10
	movl	$1, %eax
	.loc 2 537 1
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
.LFE55:
	.size	unquote, .-unquote
	.type	look_up_char_class, @function
look_up_char_class:
.LFB56:
	.loc 2 544 1
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
	.loc 2 547 10
	movl	$0, -4(%rbp)
	.loc 2 547 3
	jmp	.L62
.L65:
	.loc 2 548 9
	movl	-4(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	char_class_name(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 2 548 8
	testl	%eax, %eax
	jne	.L63
	.loc 2 549 12
	movl	-4(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	char_class_name(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 549 9
	cmpq	%rax, -32(%rbp)
	jne	.L63
	.loc 2 550 14
	movl	-4(%rbp), %eax
	jmp	.L64
.L63:
	.loc 2 547 57 discriminator 2
	addl	$1, -4(%rbp)
.L62:
	.loc 2 547 3 discriminator 1
	cmpl	$11, -4(%rbp)
	jbe	.L65
	.loc 2 551 10
	movl	$9999, %eax
.L64:
	.loc 2 552 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	look_up_char_class, .-look_up_char_class
	.section	.rodata
.LC48:
	.string	"\\%03o"
	.text
	.type	make_printable_char, @function
make_printable_char:
.LFB57:
	.loc 2 559 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 2 560 15
	movl	$5, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 562 7
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-20(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	.loc 2 562 6
	testl	%eax, %eax
	je	.L67
	.loc 2 564 14
	movzbl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	.loc 2 565 10
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 2 565 14
	movb	$0, (%rax)
	jmp	.L68
.L67:
	.loc 2 569 7
	movzbl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L68:
	.loc 2 571 10
	movq	-8(%rbp), %rax
	.loc 2 572 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	make_printable_char, .-make_printable_char
	.section	.rodata
.LC49:
	.string	"\\"
.LC50:
	.string	"\\a"
.LC51:
	.string	"\\b"
.LC52:
	.string	"\\f"
.LC53:
	.string	"\\n"
.LC54:
	.string	"\\r"
.LC55:
	.string	"\\t"
.LC56:
	.string	"\\v"
	.text
	.type	make_printable_str, @function
make_printable_str:
.LFB58:
	.loc 2 583 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 2 583 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 586 25
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -24(%rbp)
	.loc 2 587 9
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB4:
	.loc 2 589 15
	movq	$0, -40(%rbp)
	.loc 2 589 3
	jmp	.L71
.L85:
.LBB5:
	.loc 2 592 19
	movq	$0, -32(%rbp)
	.loc 2 593 26
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 593 21
	movb	%al, -49(%rbp)
	.loc 2 595 7
	movzbl	-49(%rbp), %eax
	cmpl	$13, %eax
	jg	.L72
	cmpl	$7, %eax
	jl	.L73
	subl	$7, %eax
	cmpl	$6, %eax
	ja	.L73
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L75(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L75(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L75:
	.long	.L81-.L75
	.long	.L80-.L75
	.long	.L79-.L75
	.long	.L78-.L75
	.long	.L77-.L75
	.long	.L76-.L75
	.long	.L74-.L75
	.text
.L72:
	cmpl	$92, %eax
	jne	.L73
	.loc 2 598 15
	leaq	.LC49(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 599 11
	jmp	.L82
.L81:
	.loc 2 601 15
	leaq	.LC50(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 602 11
	jmp	.L82
.L80:
	.loc 2 604 15
	leaq	.LC51(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 605 11
	jmp	.L82
.L76:
	.loc 2 607 15
	leaq	.LC52(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 608 11
	jmp	.L82
.L78:
	.loc 2 610 15
	leaq	.LC53(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 611 11
	jmp	.L82
.L74:
	.loc 2 613 15
	leaq	.LC54(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 614 11
	jmp	.L82
.L79:
	.loc 2 616 15
	leaq	.LC55(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 617 11
	jmp	.L82
.L77:
	.loc 2 619 15
	leaq	.LC56(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 2 620 11
	jmp	.L82
.L73:
	.loc 2 622 15
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-49(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	.loc 2 622 14
	testl	%eax, %eax
	je	.L83
	.loc 2 624 22
	movzbl	-49(%rbp), %eax
	movb	%al, -13(%rbp)
	.loc 2 625 22
	movb	$0, -12(%rbp)
	jmp	.L84
.L83:
	.loc 2 628 13
	movzbl	-49(%rbp), %edx
	leaq	-13(%rbp), %rax
	leaq	.LC48(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L84:
	.loc 2 629 15
	leaq	-13(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 630 11
	nop
.L82:
	.loc 2 632 11 discriminator 2
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy@PLT
	movq	%rax, -48(%rbp)
.LBE5:
	.loc 2 589 32 discriminator 2
	addq	$1, -40(%rbp)
.L71:
	.loc 2 589 3 discriminator 1
	movq	-40(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L85
.LBE4:
	.loc 2 634 10
	movq	-24(%rbp), %rax
	.loc 2 635 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L87
	call	__stack_chk_fail@PLT
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	make_printable_str, .-make_printable_str
	.section	.rodata
.LC57:
	.string	"src/tr.c"
.LC58:
	.string	"list->tail"
	.text
	.type	append_normal_char, @function
append_normal_char:
.LFB59:
	.loc 2 642 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	.loc 2 643 30
	movl	$32, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 644 13
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 645 13
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	.loc 2 646 22
	movq	-8(%rbp), %rax
	movzbl	-28(%rbp), %edx
	movb	%dl, 16(%rax)
	.loc 2 647 3
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L89
	.loc 2 647 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6489(%rip), %rcx
	movl	$647, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC58(%rip), %rdi
	call	__assert_fail@PLT
.L89:
	.loc 2 648 7 is_stmt 1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 648 20
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 649 14
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 650 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	append_normal_char, .-append_normal_char
	.section	.rodata
	.align 8
.LC59:
	.string	"range-endpoints of '%s-%s' are in reverse collating sequence order"
	.text
	.type	append_range, @function
append_range:
.LFB60:
	.loc 2 659 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %ecx
	movl	%edx, %eax
	movl	%ecx, %edx
	movb	%dl, -44(%rbp)
	movb	%al, -48(%rbp)
	.loc 2 660 6
	movzbl	-48(%rbp), %eax
	cmpb	-44(%rbp), %al
	jnb	.L91
.LBB6:
	.loc 2 662 20
	movzbl	-44(%rbp), %eax
	movl	%eax, %edi
	call	make_printable_char
	movq	%rax, -16(%rbp)
	.loc 2 663 20
	movzbl	-48(%rbp), %eax
	movl	%eax, %edi
	call	make_printable_char
	movq	%rax, -8(%rbp)
	.loc 2 666 8
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 665 7
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 668 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 669 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 670 14
	movl	$0, %eax
	jmp	.L92
.L91:
.LBE6:
	.loc 2 672 30
	movl	$32, %edi
	call	xmalloc@PLT
	movq	%rax, -24(%rbp)
	.loc 2 673 13
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 674 13
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	.loc 2 675 27
	movq	-24(%rbp), %rax
	movzbl	-44(%rbp), %edx
	movb	%dl, 16(%rax)
	.loc 2 676 26
	movq	-24(%rbp), %rax
	movzbl	-48(%rbp), %edx
	movb	%dl, 17(%rax)
	.loc 2 677 3
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	.loc 2 677 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6498(%rip), %rcx
	movl	$677, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC58(%rip), %rdi
	call	__assert_fail@PLT
.L93:
	.loc 2 678 7 is_stmt 1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 678 20
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 679 14
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 680 10
	movl	$1, %eax
.L92:
	.loc 2 681 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	append_range, .-append_range
	.type	append_char_class, @function
append_char_class:
.LFB61:
	.loc 2 691 1
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
	movq	%rdx, -40(%rbp)
	.loc 2 692 32
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	look_up_char_class
	movl	%eax, -12(%rbp)
	.loc 2 693 6
	cmpl	$9999, -12(%rbp)
	jne	.L95
	.loc 2 694 12
	movl	$0, %eax
	jmp	.L96
.L95:
	.loc 2 695 30
	movl	$32, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 696 13
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 697 13
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
	.loc 2 698 21
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 16(%rax)
	.loc 2 699 3
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L97
	.loc 2 699 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6506(%rip), %rcx
	movl	$699, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC58(%rip), %rdi
	call	__assert_fail@PLT
.L97:
	.loc 2 700 7 is_stmt 1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 700 20
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 701 14
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 702 10
	movl	$1, %eax
.L96:
	.loc 2 703 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	append_char_class, .-append_char_class
	.type	append_repeated_char, @function
append_repeated_char:
.LFB62:
	.loc 2 713 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movq	%rdx, -40(%rbp)
	movb	%al, -28(%rbp)
	.loc 2 714 30
	movl	$32, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 715 13
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 716 13
	movq	-8(%rbp), %rax
	movl	$4, (%rax)
	.loc 2 717 42
	movq	-8(%rbp), %rax
	movzbl	-28(%rbp), %edx
	movb	%dl, 16(%rax)
	.loc 2 718 37
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 2 719 3
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L99
	.loc 2 719 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6513(%rip), %rcx
	movl	$719, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC58(%rip), %rdi
	call	__assert_fail@PLT
.L99:
	.loc 2 720 7 is_stmt 1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 720 20
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 721 14
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 722 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	append_repeated_char, .-append_repeated_char
	.type	append_equiv_class, @function
append_equiv_class:
.LFB63:
	.loc 2 733 1
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
	movq	%rdx, -40(%rbp)
	.loc 2 734 6
	cmpq	$1, -40(%rbp)
	je	.L101
	.loc 2 735 12
	movl	$0, %eax
	jmp	.L102
.L101:
	.loc 2 737 30
	movl	$32, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 738 13
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 739 13
	movq	-8(%rbp), %rax
	movl	$3, (%rax)
	.loc 2 740 23
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	.loc 2 740 21
	movq	-8(%rbp), %rax
	movb	%dl, 16(%rax)
	.loc 2 741 3
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L103
	.loc 2 741 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6520(%rip), %rcx
	movl	$741, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC58(%rip), %rdi
	call	__assert_fail@PLT
.L103:
	.loc 2 742 7 is_stmt 1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 742 20
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 743 14
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 744 10
	movl	$1, %eax
.L102:
	.loc 2 745 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	append_equiv_class, .-append_equiv_class
	.type	find_closing_delim, @function
find_closing_delim:
.LFB64:
	.loc 2 756 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movq	%rcx, -48(%rbp)
	movb	%al, -36(%rbp)
.LBB7:
	.loc 2 757 15
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 757 3
	jmp	.L105
.L108:
	.loc 2 758 11
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 758 14
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 758 8
	cmpb	%al, -36(%rbp)
	jne	.L106
	.loc 2 758 43 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 758 46 discriminator 1
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 758 38 discriminator 1
	cmpb	$93, %al
	jne	.L106
	.loc 2 759 15
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 759 24
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 759 12
	xorl	$1, %eax
	.loc 2 759 9
	testb	%al, %al
	je	.L106
	.loc 2 759 34 discriminator 1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 759 43 discriminator 1
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 759 31 discriminator 1
	xorl	$1, %eax
	.loc 2 759 28 discriminator 1
	testb	%al, %al
	je	.L106
	.loc 2 761 21
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 762 16
	movl	$1, %eax
	jmp	.L107
.L106:
	.loc 2 757 48 discriminator 2
	addq	$1, -8(%rbp)
.L105:
	.loc 2 757 36 discriminator 1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 757 42 discriminator 1
	subq	$1, %rax
	.loc 2 757 3 discriminator 1
	cmpq	%rax, -8(%rbp)
	jb	.L108
.LBE7:
	.loc 2 764 10
	movl	$0, %eax
.L107:
	.loc 2 765 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	find_closing_delim, .-find_closing_delim
	.section	.rodata
.LC60:
	.string	"start_idx + 1 < es->len"
	.align 8
.LC61:
	.string	"invalid repeat count %s in [c*n] construct"
	.text
	.type	find_bracketed_repeat, @function
find_bracketed_repeat:
.LFB65:
	.loc 2 781 1
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
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	.loc 2 781 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 782 3
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L110
	.loc 2 782 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6538(%rip), %rcx
	movl	$782, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC60(%rip), %rdi
	call	__assert_fail@PLT
.L110:
	.loc 2 783 8 is_stmt 1
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	$42, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	es_match
	.loc 2 783 7
	xorl	$1, %eax
	.loc 2 783 6
	testb	%al, %al
	je	.L111
	.loc 2 784 12
	movl	$-1, %eax
	jmp	.L112
.L111:
.LBB8:
	.loc 2 786 15
	movq	-80(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
	.loc 2 786 3
	jmp	.L113
.L122:
	.loc 2 788 13
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 788 16
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 788 10
	cmpb	$93, %al
	jne	.L114
.LBB9:
	.loc 2 790 36
	movq	-56(%rbp), %rax
	subq	-80(%rbp), %rax
	.loc 2 790 18
	subq	$2, %rax
	movq	%rax, -48(%rbp)
	.loc 2 792 31
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 792 34
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	.loc 2 792 27
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
	.loc 2 793 14
	cmpq	$0, -48(%rbp)
	jne	.L115
	.loc 2 796 29
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L116
.L115:
.LBB10:
	.loc 2 802 42
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 802 45
	movq	-80(%rbp), %rdx
	addq	$2, %rdx
	.loc 2 802 27
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 2 804 51
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 804 20
	cmpb	$48, %al
	jne	.L117
	.loc 2 804 20 is_stmt 0 discriminator 1
	movl	$8, %edi
	jmp	.L118
.L117:
	.loc 2 804 20 discriminator 2
	movl	$10, %edi
.L118:
	.loc 2 804 20 discriminator 4
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 2 804 18 is_stmt 1 discriminator 4
	testl	%eax, %eax
	jne	.L119
	.loc 2 807 45
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 807 19
	cmpq	$-1, %rax
	je	.L119
	.loc 2 808 32
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 808 48
	movq	-64(%rbp), %rax
	.loc 2 808 19
	cmpq	%rax, %rdx
	je	.L116
.L119:
.LBB11:
	.loc 2 810 31
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_printable_str
	movq	%rax, -32(%rbp)
	.loc 2 811 19
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 812 26
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	.loc 2 811 19
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 814 19
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 815 26
	movl	$-2, %eax
	jmp	.L112
.L116:
.LBE11:
.LBE10:
	.loc 2 818 32
	movq	-104(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 819 18
	movl	$0, %eax
	jmp	.L112
.L114:
.LBE9:
	.loc 2 786 67 discriminator 2
	addq	$1, -56(%rbp)
.L113:
	.loc 2 786 40 discriminator 1
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 786 3 discriminator 1
	cmpq	%rax, -56(%rbp)
	jnb	.L121
	.loc 2 786 52 discriminator 3
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 786 61 discriminator 3
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 786 49 discriminator 3
	xorl	$1, %eax
	.loc 2 786 46 discriminator 3
	testb	%al, %al
	jne	.L122
.L121:
.LBE8:
	.loc 2 822 10
	movl	$-1, %eax
.L112:
	.loc 2 823 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L123
	call	__stack_chk_fail@PLT
.L123:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	find_bracketed_repeat, .-find_bracketed_repeat
	.type	star_digits_closebracket, @function
star_digits_closebracket:
.LFB66:
	.loc 2 831 1
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
	.loc 2 832 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$42, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	es_match
	.loc 2 832 7
	xorl	$1, %eax
	.loc 2 832 6
	testb	%al, %al
	je	.L125
	.loc 2 833 12
	movl	$0, %eax
	jmp	.L126
.L125:
.LBB12:
	.loc 2 835 15
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	.loc 2 835 3
	jmp	.L127
.L130:
	.loc 2 836 10
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	subl	$48, %eax
	.loc 2 836 8
	cmpl	$9, %eax
	ja	.L128
	.loc 2 836 45 discriminator 1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 836 54 discriminator 1
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 836 40 discriminator 1
	testb	%al, %al
	je	.L129
.L128:
	.loc 2 837 14
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$93, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	es_match
	jmp	.L126
.L129:
	.loc 2 835 42 discriminator 2
	addq	$1, -8(%rbp)
.L127:
	.loc 2 835 34 discriminator 1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 835 3 discriminator 1
	cmpq	%rax, -8(%rbp)
	jb	.L130
.LBE12:
	.loc 2 838 10
	movl	$0, %eax
.L126:
	.loc 2 839 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	star_digits_closebracket, .-star_digits_closebracket
	.section	.rodata
	.align 8
.LC62:
	.string	"missing character class name '[::]'"
	.align 8
.LC63:
	.string	"missing equivalence class character '[==]'"
.LC64:
	.string	"invalid character class %s"
	.align 8
.LC65:
	.string	"%s: equivalence class operand must be a single character"
	.text
	.type	build_spec_list, @function
build_spec_list:
.LFB67:
	.loc 2 855 1
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
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 2 855 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 856 15
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	.loc 2 865 10
	movq	$0, -72(%rbp)
	.loc 2 865 3
	jmp	.L132
.L155:
	.loc 2 867 11
	movq	-72(%rbp), %rcx
	movq	-104(%rbp), %rax
	movl	$91, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	es_match
	.loc 2 867 10
	testb	%al, %al
	je	.L133
.LBB13:
	.loc 2 875 40
	movb	$1, -93(%rbp)
	.loc 2 876 15
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	es_match
	.loc 2 876 14
	testb	%al, %al
	jne	.L134
	.loc 2 876 44 discriminator 1
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	$61, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	es_match
	.loc 2 876 41 discriminator 1
	testb	%al, %al
	je	.L159
.L134:
.LBB14:
	.loc 2 880 51
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 880 19
	movsbl	%al, %edx
	movq	-72(%rbp), %rax
	leaq	2(%rax), %rsi
	leaq	-80(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	find_closing_delim
	.loc 2 880 18
	testb	%al, %al
	je	.L135
.LBB15:
	.loc 2 882 63
	movq	-80(%rbp), %rax
	subq	-72(%rbp), %rax
	.loc 2 882 26
	subq	$2, %rax
	movq	%rax, -56(%rbp)
	.loc 2 883 48
	movq	-72(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 2 883 31
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 2 885 22
	cmpq	$0, -56(%rbp)
	jne	.L137
	.loc 2 887 28
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 887 26
	cmpb	$58, %al
	jne	.L138
	.loc 2 888 38
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	.loc 2 888 25
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L139
.L138:
	.loc 2 891 32
	leaq	.LC63(%rip), %rdi
	call	gettext@PLT
	.loc 2 890 25
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L139:
	.loc 2 892 30
	movl	$0, %eax
	jmp	.L152
.L137:
	.loc 2 895 24
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 895 22
	cmpb	$58, %al
	jne	.L141
	.loc 2 898 28
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	append_char_class
	.loc 2 898 27
	xorl	$1, %eax
	.loc 2 898 26
	testb	%al, %al
	je	.L142
	.loc 2 900 31
	movq	-72(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	star_digits_closebracket
	.loc 2 900 30
	testb	%al, %al
	jne	.L160
.LBB16:
	.loc 2 904 43
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_printable_str
	movq	%rax, -32(%rbp)
	.loc 2 906 31
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 906 44
	leaq	.LC64(%rip), %rdi
	call	gettext@PLT
	.loc 2 906 31
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 908 31
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 909 38
	movl	$0, %eax
	jmp	.L152
.L141:
.LBE16:
	.loc 2 916 28
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	append_equiv_class
	.loc 2 916 27
	xorl	$1, %eax
	.loc 2 916 26
	testb	%al, %al
	je	.L142
	.loc 2 918 31
	movq	-72(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	star_digits_closebracket
	.loc 2 918 30
	testb	%al, %al
	jne	.L161
.LBB17:
	.loc 2 922 43
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_printable_str
	movq	%rax, -40(%rbp)
	.loc 2 925 16
	leaq	.LC65(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 924 31
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 927 31
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 928 38
	movl	$0, %eax
	jmp	.L152
.L142:
.LBE17:
	.loc 2 933 41
	movq	-80(%rbp), %rax
	.loc 2 933 21
	addq	$2, %rax
	movq	%rax, -72(%rbp)
	jmp	.L132
.L159:
.LBE15:
.LBE14:
	.loc 2 939 9
	nop
	jmp	.L135
.L160:
.LBB19:
.LBB18:
	.loc 2 901 29
	nop
	jmp	.L135
.L161:
	.loc 2 919 29
	nop
.L135:
.LBE18:
.LBE19:
	.loc 2 943 17
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rsi
	leaq	-88(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	leaq	-94(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	find_bracketed_repeat
	movl	%eax, -92(%rbp)
	.loc 2 946 14
	cmpl	$0, -92(%rbp)
	jne	.L148
	.loc 2 948 15
	movq	-80(%rbp), %rdx
	movzbl	-94(%rbp), %eax
	movzbl	%al, %ecx
	movq	-112(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	append_repeated_char
	.loc 2 949 39
	movq	-88(%rbp), %rax
	.loc 2 949 17
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.L149
.L148:
	.loc 2 951 19
	cmpl	$-1, -92(%rbp)
	jne	.L150
	.loc 2 953 44
	movb	$0, -93(%rbp)
	jmp	.L149
.L150:
	.loc 2 959 22
	movl	$0, %eax
	jmp	.L152
.L149:
	.loc 2 962 14
	cmpb	$0, -93(%rbp)
	je	.L133
	.loc 2 963 13
	nop
	jmp	.L132
.L133:
.LBE13:
	.loc 2 971 11
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	$45, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	es_match
	.loc 2 971 10
	testb	%al, %al
	je	.L153
	.loc 2 973 45
	movq	-72(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 973 16
	movzbl	%al, %edx
	.loc 2 973 39
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	.loc 2 973 16
	movzbl	%al, %ecx
	movq	-112(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	append_range
	.loc 2 973 15
	xorl	$1, %eax
	.loc 2 973 14
	testb	%al, %al
	je	.L154
	.loc 2 974 20
	movl	$0, %eax
	jmp	.L152
.L154:
	.loc 2 975 13
	addq	$3, -72(%rbp)
	jmp	.L132
.L153:
	.loc 2 979 40
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 979 11
	movzbl	%al, %edx
	movq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	append_normal_char
	.loc 2 980 11
	addq	$1, -72(%rbp)
.L132:
	.loc 2 865 17 discriminator 1
	movq	-72(%rbp), %rax
	leaq	2(%rax), %rdx
	.loc 2 865 25 discriminator 1
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 865 3 discriminator 1
	cmpq	%rax, %rdx
	jb	.L155
	.loc 2 985 3
	jmp	.L156
.L157:
	.loc 2 986 34 discriminator 2
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 986 5 discriminator 2
	movzbl	%al, %edx
	movq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	append_normal_char
	.loc 2 985 24 discriminator 2
	addq	$1, -72(%rbp)
.L156:
	.loc 2 985 16 discriminator 1
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 985 3 discriminator 1
	cmpq	%rax, -72(%rbp)
	jb	.L157
	.loc 2 988 10
	movl	$1, %eax
.L152:
	.loc 2 989 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L158
	.loc 2 989 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L158:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	build_spec_list, .-build_spec_list
	.type	skip_construct, @function
skip_construct:
.LFB68:
	.loc 2 995 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 996 14
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 996 20
	movq	8(%rax), %rdx
	.loc 2 996 11
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 997 12
	movq	-8(%rbp), %rax
	movq	$-1, 16(%rax)
	.loc 2 998 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	skip_construct, .-skip_construct
	.section	.rodata
.LC66:
	.string	"i < N_CHARS"
	.align 8
.LC67:
	.string	"is_char_class_member (p->u.char_class, s->state)"
	.text
	.type	get_next, @function
get_next:
.LFB69:
	.loc 2 1016 1
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
	.loc 2 1021 6
	cmpq	$0, -32(%rbp)
	je	.L164
	.loc 2 1022 12
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
.L164:
	.loc 2 1024 8
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1024 6
	cmpq	$-2, %rax
	jne	.L165
	.loc 2 1026 18
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1026 24
	movq	8(%rax), %rdx
	.loc 2 1026 15
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 1027 16
	movq	-24(%rbp), %rax
	movq	$-1, 16(%rax)
.L165:
	.loc 2 1030 5
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1031 6
	cmpq	$0, -8(%rbp)
	jne	.L166
	.loc 2 1032 12
	movl	$-1, %eax
	jmp	.L167
.L166:
	.loc 2 1034 12
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	ja	.L168
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L170(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L170(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L170:
	.long	.L174-.L170
	.long	.L173-.L170
	.long	.L172-.L170
	.long	.L171-.L170
	.long	.L169-.L170
	.text
.L174:
	.loc 2 1037 24
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1037 18
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	.loc 2 1038 16
	movq	-24(%rbp), %rax
	movq	$-1, 16(%rax)
	.loc 2 1039 18
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 1039 15
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 1040 7
	jmp	.L175
.L173:
	.loc 2 1043 12
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1043 10
	cmpq	$-1, %rax
	jne	.L176
	.loc 2 1044 30
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	movzbl	%al, %edx
	.loc 2 1044 18
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L177
.L176:
	.loc 2 1046 13
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1046 9
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
.L177:
	.loc 2 1047 21
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1047 18
	movl	%eax, -16(%rbp)
	.loc 2 1048 12
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 1048 33
	movq	-8(%rbp), %rax
	movzbl	17(%rax), %eax
	movzbl	%al, %eax
	.loc 2 1048 10
	cmpq	%rax, %rdx
	jne	.L199
	.loc 2 1050 22
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 1050 19
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 1051 20
	movq	-24(%rbp), %rax
	movq	$-1, 16(%rax)
	.loc 2 1053 7
	jmp	.L199
.L172:
	.loc 2 1056 10
	cmpq	$0, -32(%rbp)
	je	.L200
	.loc 2 1058 23
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$6, %eax
	je	.L180
	cmpl	$10, %eax
	je	.L181
	.loc 2 1067 15
	jmp	.L179
.L180:
	.loc 2 1061 22
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	.loc 2 1062 15
	jmp	.L179
.L181:
	.loc 2 1064 22
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	.loc 2 1065 15
	jmp	.L179
.L200:
	.loc 2 1069 9
	nop
.L179:
	.loc 2 1071 12
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1071 10
	cmpq	$-1, %rax
	jne	.L183
	.loc 2 1073 18
	movl	$0, -12(%rbp)
	.loc 2 1073 11
	jmp	.L184
.L187:
	.loc 2 1074 17
	movl	-12(%rbp), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	is_char_class_member
	.loc 2 1074 16
	testb	%al, %al
	jne	.L201
	.loc 2 1073 37 discriminator 2
	addl	$1, -12(%rbp)
.L184:
	.loc 2 1073 11 discriminator 1
	cmpl	$255, -12(%rbp)
	jle	.L187
	jmp	.L186
.L201:
	.loc 2 1075 15
	nop
.L186:
	.loc 2 1076 11
	cmpl	$255, -12(%rbp)
	jle	.L188
	.loc 2 1076 11 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6599(%rip), %rcx
	movl	$1076, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC66(%rip), %rdi
	call	__assert_fail@PLT
.L188:
	.loc 2 1077 20 is_stmt 1
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
.L183:
	.loc 2 1079 7
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	is_char_class_member
	testb	%al, %al
	jne	.L189
	.loc 2 1079 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6599(%rip), %rcx
	movl	$1079, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC67(%rip), %rdi
	call	__assert_fail@PLT
.L189:
	.loc 2 1080 21 is_stmt 1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1080 18
	movl	%eax, -16(%rbp)
	.loc 2 1081 17
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1081 25
	addl	$1, %eax
	.loc 2 1081 14
	movl	%eax, -12(%rbp)
	.loc 2 1081 7
	jmp	.L190
.L193:
	.loc 2 1082 13
	movl	-12(%rbp), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	is_char_class_member
	.loc 2 1082 12
	testb	%al, %al
	jne	.L202
	.loc 2 1081 44 discriminator 2
	addl	$1, -12(%rbp)
.L190:
	.loc 2 1081 7 discriminator 1
	cmpl	$255, -12(%rbp)
	jle	.L193
	jmp	.L192
.L202:
	.loc 2 1083 11
	nop
.L192:
	.loc 2 1084 10
	cmpl	$255, -12(%rbp)
	jg	.L194
	.loc 2 1085 18
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 1091 7
	jmp	.L175
.L194:
	.loc 2 1088 22
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 1088 19
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 1089 20
	movq	-24(%rbp), %rax
	movq	$-1, 16(%rax)
	.loc 2 1091 7
	jmp	.L175
.L171:
	.loc 2 1099 24
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1099 18
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	.loc 2 1100 16
	movq	-24(%rbp), %rax
	movq	$-1, 16(%rax)
	.loc 2 1101 18
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 1101 15
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 1102 7
	jmp	.L175
.L169:
	.loc 2 1106 29
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1106 10
	testq	%rax, %rax
	jne	.L196
	.loc 2 1108 22
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 1108 19
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 1109 20
	movq	-24(%rbp), %rax
	movq	$-1, 16(%rax)
	.loc 2 1110 24
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_next
	movl	%eax, -16(%rbp)
	.loc 2 1126 7
	jmp	.L203
.L196:
	.loc 2 1114 16
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1114 14
	cmpq	$-1, %rax
	jne	.L198
	.loc 2 1116 24
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
.L198:
	.loc 2 1118 15
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1118 11
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 1119 42
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1119 22
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	.loc 2 1120 16
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 1120 45
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1120 14
	cmpq	%rax, %rdx
	jne	.L203
	.loc 2 1122 26
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 1122 23
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 1123 24
	movq	-24(%rbp), %rax
	movq	$-1, 16(%rax)
	.loc 2 1126 7
	jmp	.L203
.L168:
	.loc 2 1129 7
	call	abort@PLT
.L199:
	.loc 2 1053 7
	nop
	jmp	.L175
.L203:
	.loc 2 1126 7
	nop
.L175:
	.loc 2 1132 10
	movl	-16(%rbp), %eax
.L167:
	.loc 2 1133 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	get_next, .-get_next
	.type	card_of_complement, @function
card_of_complement:
.LFB70:
	.loc 2 1142 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	.loc 2 1142 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1144 7
	movl	$256, -280(%rbp)
	.loc 2 1145 8
	leaq	-272(%rbp), %rdx
	movl	$0, %eax
	movl	$32, %ecx
	movq	%rdx, %rdi
	rep stosq
	.loc 2 1147 12
	movq	-296(%rbp), %rax
	movq	$-2, 16(%rax)
	.loc 2 1148 9
	jmp	.L205
.L206:
	.loc 2 1150 30
	movl	-276(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	.loc 2 1150 23
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 1150 19
	subl	%eax, -280(%rbp)
	.loc 2 1151 17
	movl	-276(%rbp), %eax
	cltq
	movb	$1, -272(%rbp,%rax)
.L205:
	.loc 2 1148 15
	movq	-296(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_next
	movl	%eax, -276(%rbp)
	.loc 2 1148 9
	cmpl	$-1, -276(%rbp)
	jne	.L206
	.loc 2 1153 10
	movl	-280(%rbp), %eax
	.loc 2 1154 1
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L208
	call	__stack_chk_fail@PLT
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	card_of_complement, .-card_of_complement
	.section	.rodata
	.align 8
.LC68:
	.string	"misaligned [:upper:] and/or [:lower:] construct"
	.align 8
.LC69:
	.string	"old_s1_len >= s1->length && old_s2_len >= s2->length"
	.text
	.type	validate_case_classes, @function
validate_case_classes:
.LFB71:
	.loc 2 1167 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	.loc 2 1167 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1168 10
	movq	$0, -56(%rbp)
	.loc 2 1169 10
	movq	$0, -48(%rbp)
	.loc 2 1170 7
	movl	$0, -68(%rbp)
	.loc 2 1171 7
	movl	$0, -64(%rbp)
	.loc 2 1172 9
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 1173 9
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 1174 24
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1175 24
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 1176 8
	movb	$1, -78(%rbp)
	.loc 2 1177 8
	movb	$1, -77(%rbp)
	.loc 2 1179 7
	movzbl	complement(%rip), %eax
	.loc 2 1179 6
	testb	%al, %al
	jne	.L231
	.loc 2 1179 24 discriminator 1
	movq	-96(%rbp), %rax
	movzbl	49(%rax), %eax
	.loc 2 1179 21 discriminator 1
	xorl	$1, %eax
	.loc 2 1179 18 discriminator 1
	testb	%al, %al
	jne	.L231
.LBB20:
	.loc 2 1182 12
	movl	$0, -60(%rbp)
	.loc 2 1182 3
	jmp	.L213
.L216:
	.loc 2 1184 11
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	.loc 2 1184 10
	testl	%eax, %eax
	je	.L214
	.loc 2 1185 16
	addq	$1, -56(%rbp)
.L214:
	.loc 2 1186 11
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	.loc 2 1186 10
	testl	%eax, %eax
	je	.L215
	.loc 2 1187 16
	addq	$1, -48(%rbp)
.L215:
	.loc 2 1182 33 discriminator 2
	addl	$1, -60(%rbp)
.L213:
	.loc 2 1182 3 discriminator 1
	cmpl	$255, -60(%rbp)
	jle	.L216
.LBE20:
	.loc 2 1190 13
	movq	-88(%rbp), %rax
	movq	$-2, 16(%rax)
	.loc 2 1191 13
	movq	-96(%rbp), %rax
	movq	$-2, 16(%rax)
	.loc 2 1193 9
	jmp	.L217
.L226:
.LBB21:
	.loc 2 1197 12
	leaq	-76(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_next
	movl	%eax, -68(%rbp)
	.loc 2 1198 12
	leaq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_next
	movl	%eax, -64(%rbp)
	.loc 2 1202 10
	cmpb	$0, -77(%rbp)
	je	.L218
	.loc 2 1202 38 discriminator 1
	movl	-72(%rbp), %eax
	.loc 2 1202 26 discriminator 1
	cmpl	$2, %eax
	je	.L218
	.loc 2 1203 16
	movzbl	-78(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1203 11
	testb	%al, %al
	jne	.L219
	.loc 2 1203 43 discriminator 1
	movl	-76(%rbp), %eax
	.loc 2 1203 14 discriminator 1
	cmpl	$2, %eax
	jne	.L218
.L219:
.LBB22:
	.loc 2 1204 9
	leaq	.LC68(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L218:
.LBE22:
	.loc 2 1208 20
	movl	-72(%rbp), %eax
	.loc 2 1208 10
	cmpl	$2, %eax
	je	.L220
	.loc 2 1210 11
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	skip_construct
	.loc 2 1211 11
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	skip_construct
	.loc 2 1213 22
	movq	-88(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 1213 35
	movl	-76(%rbp), %eax
	.loc 2 1213 68
	cmpl	$1, %eax
	jne	.L221
	.loc 2 1213 68 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	subq	$1, %rax
	jmp	.L222
.L221:
	.loc 2 1213 68 discriminator 2
	movq	-48(%rbp), %rax
	subq	$1, %rax
.L222:
	.loc 2 1213 22 is_stmt 1 discriminator 4
	subq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 2 1214 22 discriminator 4
	movq	-96(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 1214 35 discriminator 4
	movl	-72(%rbp), %eax
	.loc 2 1214 68 discriminator 4
	cmpl	$1, %eax
	jne	.L223
	.loc 2 1214 68 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	subq	$1, %rax
	jmp	.L224
.L223:
	.loc 2 1214 68 discriminator 2
	movq	-48(%rbp), %rax
	subq	$1, %rax
.L224:
	.loc 2 1214 22 is_stmt 1 discriminator 4
	subq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 24(%rax)
.L220:
	.loc 2 1217 26
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1217 22
	cmpq	$-1, %rax
	sete	%al
	movb	%al, -78(%rbp)
	.loc 2 1218 26
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1218 22
	cmpq	$-1, %rax
	sete	%al
	movb	%al, -77(%rbp)
.L217:
.LBE21:
	.loc 2 1193 9
	cmpl	$-1, -68(%rbp)
	je	.L225
	.loc 2 1193 19 discriminator 1
	cmpl	$-1, -64(%rbp)
	jne	.L226
.L225:
	.loc 2 1221 3
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L227
	.loc 2 1221 3 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L230
.L227:
	.loc 2 1221 3 discriminator 3
	leaq	__PRETTY_FUNCTION__.6640(%rip), %rcx
	movl	$1221, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC69(%rip), %rdi
	call	__assert_fail@PLT
.L230:
	.loc 2 1223 12 is_stmt 1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 1224 12
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L209
.L231:
	.loc 2 1180 5
	nop
.L209:
	.loc 2 1225 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L229
	call	__stack_chk_fail@PLT
.L229:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	validate_case_classes, .-validate_case_classes
	.section	.rodata
	.align 8
.LC70:
	.string	"p->u.range.last_char >= p->u.range.first_char"
.LC71:
	.string	"too many characters in set"
	.text
	.type	get_spec_stats, @function
get_spec_stats:
.LFB72:
	.loc 2 1242 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	.loc 2 1244 9
	movq	$0, -24(%rbp)
	.loc 2 1246 27
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	.loc 2 1247 22
	movq	-56(%rbp), %rax
	movb	$0, 48(%rax)
	.loc 2 1248 32
	movq	-56(%rbp), %rax
	movb	$0, 50(%rax)
	.loc 2 1249 21
	movq	-56(%rbp), %rax
	movb	$0, 49(%rax)
	.loc 2 1250 13
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1250 10
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 1250 3
	jmp	.L233
.L256:
.LBB23:
	.loc 2 1252 13
	movq	$0, -16(%rbp)
	.loc 2 1255 16
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	ja	.L234
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L236(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L236(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L236:
	.long	.L240-.L236
	.long	.L239-.L236
	.long	.L238-.L236
	.long	.L237-.L236
	.long	.L235-.L236
	.text
.L240:
	.loc 2 1258 15
	movq	$1, -16(%rbp)
	.loc 2 1259 11
	jmp	.L241
.L239:
	.loc 2 1262 11
	movq	-32(%rbp), %rax
	movzbl	17(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	cmpb	%al, %dl
	jnb	.L242
	.loc 2 1262 11 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6651(%rip), %rcx
	movl	$1262, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC70(%rip), %rdi
	call	__assert_fail@PLT
.L242:
	.loc 2 1263 27 is_stmt 1
	movq	-32(%rbp), %rax
	movzbl	17(%rax), %eax
	movzbl	%al, %edx
	.loc 2 1263 50
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	movzbl	%al, %eax
	.loc 2 1263 38
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 1263 62
	addl	$1, %eax
	.loc 2 1263 15
	cltq
	movq	%rax, -16(%rbp)
	.loc 2 1264 11
	jmp	.L241
.L238:
	.loc 2 1267 29
	movq	-56(%rbp), %rax
	movb	$1, 49(%rax)
.LBB24:
	.loc 2 1268 20
	movl	$0, -40(%rbp)
	.loc 2 1268 11
	jmp	.L243
.L245:
	.loc 2 1269 17
	movl	-40(%rbp), %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	is_char_class_member
	.loc 2 1269 16
	testb	%al, %al
	je	.L244
	.loc 2 1270 15
	addq	$1, -16(%rbp)
.L244:
	.loc 2 1268 41 discriminator 2
	addl	$1, -40(%rbp)
.L243:
	.loc 2 1268 11 discriminator 1
	cmpl	$255, -40(%rbp)
	jle	.L245
.LBE24:
	.loc 2 1271 23
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$6, %eax
	je	.L257
	cmpl	$10, %eax
	je	.L257
	.loc 2 1277 44
	movq	-56(%rbp), %rax
	movb	$1, 50(%rax)
	.loc 2 1278 15
	jmp	.L248
.L257:
	.loc 2 1275 15
	nop
.L248:
	.loc 2 1280 11
	jmp	.L241
.L237:
.LBB25:
	.loc 2 1283 20
	movl	$0, -36(%rbp)
	.loc 2 1283 11
	jmp	.L249
.L251:
	.loc 2 1284 17
	movl	-36(%rbp), %eax
	movzbl	%al, %edx
	.loc 2 1284 44
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1284 17
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	is_equiv_class_member
	.loc 2 1284 16
	testb	%al, %al
	je	.L250
	.loc 2 1285 15
	addq	$1, -16(%rbp)
.L250:
	.loc 2 1283 41 discriminator 2
	addl	$1, -36(%rbp)
.L249:
	.loc 2 1283 11 discriminator 1
	cmpl	$255, -36(%rbp)
	jle	.L251
.LBE25:
	.loc 2 1286 30
	movq	-56(%rbp), %rax
	movb	$1, 48(%rax)
	.loc 2 1287 11
	jmp	.L241
.L235:
	.loc 2 1290 33
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1290 14
	testq	%rax, %rax
	je	.L252
	.loc 2 1291 17
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 1297 11
	jmp	.L241
.L252:
	.loc 2 1294 44
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	.loc 2 1295 19
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 1295 15
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 2 1297 11
	jmp	.L241
.L234:
	.loc 2 1300 11
	call	abort@PLT
.L241:
	.loc 2 1307 18
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 1308 10
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	ja	.L254
	.loc 2 1308 11 discriminator 1
	cmpq	$-1, -8(%rbp)
	jne	.L255
.L254:
.LBB26:
	.loc 2 1309 9
	leaq	.LC71(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L255:
.LBE26:
	.loc 2 1310 14 discriminator 2
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBE23:
	.loc 2 1250 32 discriminator 2
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.L233:
	.loc 2 1250 3 discriminator 1
	cmpq	$0, -32(%rbp)
	jne	.L256
	.loc 2 1313 13
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	.loc 2 1314 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	get_spec_stats, .-get_spec_stats
	.type	get_s1_spec_stats, @function
get_s1_spec_stats:
.LFB73:
	.loc 2 1318 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 1319 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_spec_stats
	.loc 2 1320 7
	movzbl	complement(%rip), %eax
	.loc 2 1320 6
	testb	%al, %al
	je	.L260
	.loc 2 1321 18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	card_of_complement
	movslq	%eax, %rdx
	.loc 2 1321 16
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
.L260:
	.loc 2 1322 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	get_s1_spec_stats, .-get_s1_spec_stats
	.type	get_s2_spec_stats, @function
get_s2_spec_stats:
.LFB74:
	.loc 2 1326 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 1327 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_spec_stats
	.loc 2 1328 19
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1328 6
	cmpq	%rax, -16(%rbp)
	jb	.L263
	.loc 2 1328 33 discriminator 1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 1328 28 discriminator 1
	cmpq	$1, %rax
	jne	.L263
	.loc 2 1331 20
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 1330 9
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 1331 16
	movq	-16(%rbp), %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	.loc 2 1330 67
	movq	%rdx, 24(%rax)
	.loc 2 1332 18
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L263:
	.loc 2 1334 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	get_s2_spec_stats, .-get_s2_spec_stats
	.type	spec_init, @function
spec_init:
.LFB75:
	.loc 2 1338 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 1339 30
	movl	$32, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 1340 37
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 1340 30
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 1340 19
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1341 12
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1341 25
	movq	$0, 8(%rax)
	.loc 2 1342 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	spec_init, .-spec_init
	.type	parse_str, @function
parse_str:
.LFB76:
	.loc 2 1352 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 2 1352 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1354 13
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	unquote
	.loc 2 1354 30
	testb	%al, %al
	je	.L266
	.loc 2 1354 33 discriminator 1
	movq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	build_spec_list
	.loc 2 1354 30 discriminator 1
	testb	%al, %al
	je	.L266
	.loc 2 1354 30 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L267
.L266:
	.loc 2 1354 30 discriminator 4
	movl	$0, %eax
.L267:
	.loc 2 1354 8 is_stmt 1 discriminator 6
	movb	%al, -33(%rbp)
	andb	$1, -33(%rbp)
	.loc 2 1355 3 discriminator 6
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	es_free
	.loc 2 1356 10 discriminator 6
	movzbl	-33(%rbp), %eax
	.loc 2 1357 1 discriminator 6
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L269
	.loc 2 1357 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L269:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	parse_str, .-parse_str
	.section	.rodata
.LC72:
	.string	"translating"
.LC73:
	.string	"s1->length > s2->length"
.LC74:
	.string	"s2->length > 0"
	.align 8
.LC75:
	.string	"when translating with string1 longer than string2,\nthe latter string must not end with a character class"
	.text
	.type	string2_extend, @function
string2_extend:
.LFB77:
	.loc 2 1370 1 is_stmt 1
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
	.loc 2 1374 3
	movzbl	translating(%rip), %eax
	testb	%al, %al
	jne	.L271
	.loc 2 1374 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6696(%rip), %rcx
	movl	$1374, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC72(%rip), %rdi
	call	__assert_fail@PLT
.L271:
	.loc 2 1375 3 is_stmt 1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	ja	.L272
	.loc 2 1375 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6696(%rip), %rcx
	movl	$1375, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC73(%rip), %rdi
	call	__assert_fail@PLT
.L272:
	.loc 2 1376 3 is_stmt 1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L273
	.loc 2 1376 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6696(%rip), %rcx
	movl	$1376, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC74(%rip), %rdi
	call	__assert_fail@PLT
.L273:
	.loc 2 1378 5 is_stmt 1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1379 12
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	ja	.L274
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L276(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L276(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L276:
	.long	.L280-.L276
	.long	.L279-.L276
	.long	.L278-.L276
	.long	.L277-.L276
	.long	.L275-.L276
	.text
.L280:
.LBB27:
	.loc 2 1382 22
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	movb	%al, -9(%rbp)
	.loc 2 1383 7
	jmp	.L281
.L279:
	.loc 2 1385 22
	movq	-8(%rbp), %rax
	movzbl	17(%rax), %eax
	movb	%al, -9(%rbp)
	.loc 2 1386 7
	jmp	.L281
.L278:
	.loc 2 1392 7
	leaq	.LC75(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L275:
	.loc 2 1397 22
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	movb	%al, -9(%rbp)
	.loc 2 1398 7
	jmp	.L281
.L277:
	.loc 2 1403 7
	call	abort@PLT
.L274:
	.loc 2 1406 7
	call	abort@PLT
.L281:
.LBE27:
	.loc 2 1409 47
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 1409 60
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1409 3
	subq	%rax, %rdx
	movzbl	-9(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	append_repeated_char
	.loc 2 1410 18
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 1410 14
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 2 1411 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	string2_extend, .-string2_extend
	.type	homogeneous_spec_list, @function
homogeneous_spec_list:
.LFB78:
	.loc 2 1419 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 1422 12
	movq	-24(%rbp), %rax
	movq	$-2, 16(%rax)
	.loc 2 1424 12
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_next
	movl	%eax, -8(%rbp)
	.loc 2 1424 6
	cmpl	$-1, -8(%rbp)
	jne	.L285
	.loc 2 1425 12
	movl	$0, %eax
	jmp	.L284
.L286:
	.loc 2 1428 8
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	.L285
	.loc 2 1429 14
	movl	$0, %eax
	jmp	.L284
.L285:
	.loc 2 1427 15
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_next
	movl	%eax, -4(%rbp)
	.loc 2 1427 9
	cmpl	$-1, -4(%rbp)
	jne	.L286
	.loc 2 1431 10
	movl	$1, %eax
.L284:
	.loc 2 1432 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	homogeneous_spec_list, .-homogeneous_spec_list
	.section	.rodata
	.align 8
.LC76:
	.string	"the [c*] repeat construct may not appear in string1"
	.align 8
.LC77:
	.string	"only one [c*] repeat construct may appear in string2"
	.align 8
.LC78:
	.string	"[=c=] expressions may not appear in string2 when translating"
	.align 8
.LC79:
	.string	"when translating, the only character classes that may appear in\nstring2 are 'upper' and 'lower'"
	.align 8
.LC80:
	.string	"when not truncating set1, string2 must be non-empty"
	.align 8
.LC81:
	.string	"when translating with complemented character classes,\nstring2 must map all characters in the domain to one"
	.align 8
.LC82:
	.string	"the [c*] construct may appear in string2 only when translating"
	.text
	.type	validate, @function
validate:
.LFB79:
	.loc 2 1444 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 1445 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_s1_spec_stats
	.loc 2 1446 9
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 1446 6
	testq	%rax, %rax
	je	.L288
.LBB28:
	.loc 2 1448 7
	leaq	.LC76(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L288:
.LBE28:
	.loc 2 1452 6
	cmpq	$0, -16(%rbp)
	je	.L297
	.loc 2 1454 7
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_s2_spec_stats
	.loc 2 1456 13
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 1456 10
	cmpq	$1, %rax
	jbe	.L290
.LBB29:
	.loc 2 1458 11
	leaq	.LC77(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L290:
.LBE29:
	.loc 2 1462 11
	movzbl	translating(%rip), %eax
	.loc 2 1462 10
	testb	%al, %al
	je	.L291
	.loc 2 1464 17
	movq	-16(%rbp), %rax
	movzbl	48(%rax), %eax
	.loc 2 1464 14
	testb	%al, %al
	je	.L292
.LBB30:
	.loc 2 1466 15
	leaq	.LC78(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L292:
.LBE30:
	.loc 2 1471 17
	movq	-16(%rbp), %rax
	movzbl	50(%rax), %eax
	.loc 2 1471 14
	testb	%al, %al
	je	.L293
.LBB31:
	.loc 2 1473 15
	leaq	.LC79(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L293:
.LBE31:
	.loc 2 1478 11
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validate_case_classes
	.loc 2 1480 17
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 1480 30
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1480 14
	cmpq	%rax, %rdx
	jbe	.L294
	.loc 2 1482 19
	movzbl	truncate_set1(%rip), %eax
	xorl	$1, %eax
	.loc 2 1482 18
	testb	%al, %al
	je	.L294
	.loc 2 1487 25
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1487 22
	testq	%rax, %rax
	jne	.L295
.LBB32:
	.loc 2 1488 21
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L295:
.LBE32:
	.loc 2 1490 19
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	string2_extend
.L294:
	.loc 2 1494 15
	movzbl	complement(%rip), %eax
	.loc 2 1494 14
	testb	%al, %al
	je	.L297
	.loc 2 1494 31 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	49(%rax), %eax
	.loc 2 1494 26 discriminator 1
	testb	%al, %al
	je	.L297
	.loc 2 1495 23
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 1495 37
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1495 15
	cmpq	%rax, %rdx
	jne	.L296
	.loc 2 1495 49 discriminator 1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	homogeneous_spec_list
	.loc 2 1495 46 discriminator 1
	xorl	$1, %eax
	.loc 2 1495 18 discriminator 1
	testb	%al, %al
	je	.L297
.L296:
.LBB33:
	.loc 2 1497 15
	leaq	.LC81(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L291:
.LBE33:
	.loc 2 1505 17
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 1505 14
	testq	%rax, %rax
	je	.L297
.LBB34:
	.loc 2 1506 13
	leaq	.LC82(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L297:
.LBE34:
	.loc 2 1511 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	validate, .-validate
	.section	.rodata
.LC83:
	.string	"write error"
	.text
	.type	squeeze_filter, @function
squeeze_filter:
.LFB80:
	.loc 2 1523 1
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
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	.loc 2 1526 13
	movl	$2147483647, -52(%rbp)
	.loc 2 1528 7
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	.loc 2 1529 10
	movq	$0, -48(%rbp)
	.loc 2 1530 10
	movq	$0, -40(%rbp)
.L314:
.LBB35:
	.loc 2 1534 10
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L299
	.loc 2 1536 16
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.LVL0:
	movq	%rax, -40(%rbp)
	.loc 2 1537 14
	cmpq	$0, -40(%rbp)
	je	.L316
	.loc 2 1539 13
	movq	$0, -48(%rbp)
.L299:
	.loc 2 1542 14
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1544 10
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.L302
.LBB36:
	.loc 2 1558 11
	jmp	.L303
.L305:
	.loc 2 1558 66
	addq	$2, -48(%rbp)
.L303:
	.loc 2 1558 11 discriminator 1
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L304
	.loc 2 1558 57 discriminator 2
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1558 44 discriminator 2
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1558 43 discriminator 2
	cltq
	leaq	in_squeeze_set(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1558 28 discriminator 2
	xorl	$1, %eax
	.loc 2 1558 25 discriminator 2
	testb	%al, %al
	jne	.L305
.L304:
	.loc 2 1564 14
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L306
	.loc 2 1564 54 discriminator 1
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1564 41 discriminator 1
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1564 40 discriminator 1
	cltq
	leaq	in_squeeze_set(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1564 23 discriminator 1
	testb	%al, %al
	je	.L306
	.loc 2 1565 13
	subq	$1, -48(%rbp)
.L306:
	.loc 2 1567 14
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L307
	.loc 2 1568 21
	movq	-40(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L308
.L307:
	.loc 2 1571 36
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1571 31
	movsbl	%al, %eax
	movl	%eax, -56(%rbp)
	.loc 2 1573 27
	movq	-48(%rbp), %rax
	subq	-24(%rbp), %rax
	.loc 2 1573 23
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	.loc 2 1577 18
	cmpq	$0, -48(%rbp)
	je	.L309
	.loc 2 1577 31 discriminator 1
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 1577 25 discriminator 1
	cmpl	%eax, -56(%rbp)
	jne	.L309
	.loc 2 1578 17
	subq	$1, -32(%rbp)
.L309:
	.loc 2 1583 15
	addq	$1, -48(%rbp)
.L308:
	.loc 2 1585 14
	cmpq	$0, -32(%rbp)
	je	.L302
	.loc 2 1586 18
	movq	stdout(%rip), %rdx
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	fwrite_unlocked@PLT
	.loc 2 1586 15
	cmpq	%rax, -32(%rbp)
	je	.L302
.LBB37:
	.loc 2 1587 13
	leaq	.LC83(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L302:
.LBE37:
.LBE36:
	.loc 2 1590 10
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.L314
	.loc 2 1595 11
	jmp	.L311
.L313:
	.loc 2 1595 56
	addq	$1, -48(%rbp)
.L311:
	.loc 2 1595 11 discriminator 1
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L312
	.loc 2 1595 31 discriminator 2
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 1595 25 discriminator 2
	cmpl	%eax, -56(%rbp)
	je	.L313
.L312:
	.loc 2 1597 14
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L314
	.loc 2 1598 29
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBE35:
	.loc 2 1533 5
	jmp	.L314
.L316:
.LBB38:
	.loc 2 1538 13
	nop
.LBE38:
	.loc 2 1604 1
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	squeeze_filter, .-squeeze_filter
	.section	.rodata
.LC84:
	.string	"read error"
	.text
	.type	plain_read, @function
plain_read:
.LFB81:
	.loc 2 1608 1
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
	movq	%rsi, -48(%rbp)
	.loc 2 1609 15
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	safe_read@PLT
	movq	%rax, -24(%rbp)
	.loc 2 1610 6
	cmpq	$-1, -24(%rbp)
	jne	.L318
.LBB39:
	.loc 2 1611 5
	leaq	.LC84(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L318:
.LBE39:
	.loc 2 1612 10
	movq	-24(%rbp), %rax
	.loc 2 1613 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	plain_read, .-plain_read
	.type	read_and_delete, @function
read_and_delete:
.LFB82:
	.loc 2 1623 1
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
.L329:
.LBB40:
	.loc 2 1631 19
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	plain_read
	movq	%rax, -8(%rbp)
	.loc 2 1633 10
	cmpq	$0, -8(%rbp)
	jne	.L321
	.loc 2 1634 16
	movl	$0, %eax
	jmp	.L322
.L321:
	.loc 2 1642 14
	movq	$0, -16(%rbp)
	.loc 2 1642 7
	jmp	.L323
.L325:
	.loc 2 1642 65
	addq	$1, -16(%rbp)
.L323:
	.loc 2 1642 7 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L324
	.loc 2 1642 57 discriminator 3
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1642 44 discriminator 3
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1642 43 discriminator 3
	cltq
	leaq	in_delete_set(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1642 29 discriminator 3
	xorl	$1, %eax
	.loc 2 1642 26 discriminator 3
	testb	%al, %al
	jne	.L325
.L324:
	.loc 2 1644 15
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1646 12
	addq	$1, -16(%rbp)
	.loc 2 1646 7
	jmp	.L326
.L328:
	.loc 2 1647 41
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1647 28
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1647 27
	cltq
	leaq	in_delete_set(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1647 13
	xorl	$1, %eax
	.loc 2 1647 12
	testb	%al, %al
	je	.L327
	.loc 2 1648 31
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 1648 22
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 1648 14
	movq	-40(%rbp), %rdx
	addq	%rax, %rdx
	.loc 2 1648 31
	movzbl	(%rcx), %eax
	.loc 2 1648 26
	movb	%al, (%rdx)
.L327:
	.loc 2 1646 26 discriminator 2
	addq	$1, -16(%rbp)
.L326:
	.loc 2 1646 7 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L328
.LBE40:
	.loc 2 1650 3
	cmpq	$0, -24(%rbp)
	je	.L329
	.loc 2 1652 10
	movq	-24(%rbp), %rax
.L322:
	.loc 2 1653 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	read_and_delete, .-read_and_delete
	.type	read_and_xlate, @function
read_and_xlate:
.LFB83:
	.loc 2 1661 1
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
	.loc 2 1662 23
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	plain_read
	movq	%rax, -8(%rbp)
.LBB41:
	.loc 2 1664 15
	movq	$0, -16(%rbp)
	.loc 2 1664 3
	jmp	.L331
.L332:
	.loc 2 1665 33 discriminator 3
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1665 20 discriminator 3
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1665 8 discriminator 3
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 2 1665 19 discriminator 3
	cltq
	leaq	xlate(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	.loc 2 1665 12 discriminator 3
	movb	%al, (%rdx)
	.loc 2 1664 39 discriminator 3
	addq	$1, -16(%rbp)
.L331:
	.loc 2 1664 3 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L332
.LBE41:
	.loc 2 1667 10
	movq	-8(%rbp), %rax
	.loc 2 1668 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	read_and_xlate, .-read_and_xlate
	.type	set_initialize, @function
set_initialize:
.LFB84:
	.loc 2 1678 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movq	%rdx, -40(%rbp)
	movb	%al, -28(%rbp)
	.loc 2 1681 12
	movq	-24(%rbp), %rax
	movq	$-2, 16(%rax)
	.loc 2 1682 9
	jmp	.L335
.L336:
	.loc 2 1683 11
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1683 15
	movb	$1, (%rax)
.L335:
	.loc 2 1682 15
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_next
	movl	%eax, -12(%rbp)
	.loc 2 1682 9
	cmpl	$-1, -12(%rbp)
	jne	.L336
	.loc 2 1684 6
	cmpb	$0, -28(%rbp)
	je	.L340
.LBB42:
	.loc 2 1685 17
	movq	$0, -8(%rbp)
	.loc 2 1685 5
	jmp	.L338
.L339:
	.loc 2 1686 27 discriminator 3
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 2 1686 7 discriminator 3
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %ecx
	.loc 2 1686 13 discriminator 3
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 1686 20 discriminator 3
	movl	%ecx, %eax
	andl	$1, %eax
	.loc 2 1686 17 discriminator 3
	movb	%al, (%rdx)
	.loc 2 1685 38 discriminator 3
	addq	$1, -8(%rbp)
.L338:
	.loc 2 1685 5 discriminator 1
	cmpq	$255, -8(%rbp)
	jbe	.L339
.L340:
.LBE42:
	.loc 2 1687 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	set_initialize, .-set_initialize
	.section	.rodata
.LC85:
	.string	"/usr/local/share/locale"
.LC86:
	.string	"C"
.LC87:
	.string	"Jim Meyering"
.LC88:
	.string	"+AcCdst"
.LC89:
	.string	"missing operand"
.LC90:
	.string	"missing operand after %s"
	.align 8
.LC91:
	.string	"Two strings must be given when both deleting and squeezing repeats."
	.align 8
.LC92:
	.string	"Two strings must be given when translating."
.LC93:
	.string	"%s\n"
.LC94:
	.string	"extra operand %s"
	.align 8
.LC95:
	.string	"Only one string may be given when deleting without squeezing repeats."
.LC96:
	.string	"ch != -1 || truncate_set1"
.LC97:
	.string	"c1 == -1 || truncate_set1"
.LC98:
	.string	"standard input"
	.text
	.globl	main
	.type	main, @function
main:
.LFB85:
	.loc 2 1691 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movl	%edi, -244(%rbp)
	movq	%rsi, -256(%rbp)
	.loc 2 1691 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1697 21
	leaq	-144(%rbp), %rax
	movq	%rax, -176(%rbp)
	.loc 2 1698 21
	leaq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)
	.loc 2 1701 3
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 1702 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 1703 3
	leaq	.LC85(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 1704 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 1706 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 1708 9
	jmp	.L342
.L351:
	.loc 2 1710 7
	cmpl	$116, -212(%rbp)
	je	.L343
	cmpl	$116, -212(%rbp)
	jg	.L344
	cmpl	$115, -212(%rbp)
	je	.L345
	cmpl	$115, -212(%rbp)
	jg	.L344
	cmpl	$100, -212(%rbp)
	je	.L346
	cmpl	$100, -212(%rbp)
	jg	.L344
	cmpl	$99, -212(%rbp)
	je	.L347
	cmpl	$99, -212(%rbp)
	jg	.L344
	cmpl	$67, -212(%rbp)
	je	.L347
	cmpl	$67, -212(%rbp)
	jg	.L344
	cmpl	$65, -212(%rbp)
	je	.L348
	cmpl	$65, -212(%rbp)
	jg	.L344
	cmpl	$-131, -212(%rbp)
	je	.L349
	cmpl	$-130, -212(%rbp)
	je	.L350
	jmp	.L344
.L348:
	.loc 2 1714 11
	leaq	.LC86(%rip), %rsi
	movl	$3, %edi
	call	setlocale@PLT
	.loc 2 1715 11
	leaq	.LC86(%rip), %rsi
	movl	$0, %edi
	call	setlocale@PLT
	.loc 2 1716 11
	jmp	.L342
.L347:
	.loc 2 1720 22
	movb	$1, complement(%rip)
	.loc 2 1721 11
	jmp	.L342
.L346:
	.loc 2 1724 18
	movb	$1, delete(%rip)
	.loc 2 1725 11
	jmp	.L342
.L345:
	.loc 2 1728 27
	movb	$1, squeeze_repeats(%rip)
	.loc 2 1729 11
	jmp	.L342
.L343:
	.loc 2 1732 25
	movb	$1, truncate_set1(%rip)
	.loc 2 1733 11
	jmp	.L342
.L350:
	.loc 2 1735 9
	movl	$0, %edi
	call	usage
.L349:
	.loc 2 1737 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC87(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L344:
	.loc 2 1740 11
	movl	$1, %edi
	call	usage
.L342:
	.loc 2 1708 15
	movq	-256(%rbp), %rsi
	movl	-244(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -212(%rbp)
	.loc 2 1708 9
	cmpl	$-1, -212(%rbp)
	jne	.L351
	.loc 2 1745 26
	movl	optind(%rip), %eax
	.loc 2 1745 19
	movl	-244(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -208(%rbp)
	.loc 2 1746 39
	cmpl	$2, -208(%rbp)
	jne	.L352
	.loc 2 1746 42 discriminator 1
	movzbl	delete(%rip), %eax
	xorl	$1, %eax
	.loc 2 1746 39 discriminator 1
	testb	%al, %al
	je	.L352
	.loc 2 1746 39 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L353
.L352:
	.loc 2 1746 39 discriminator 4
	movl	$0, %eax
.L353:
	.loc 2 1746 39 discriminator 6
	andl	$1, %eax
	.loc 2 1746 15 is_stmt 1 discriminator 6
	movb	%al, translating(%rip)
	.loc 2 1747 30 discriminator 6
	movzbl	delete(%rip), %edx
	movzbl	squeeze_repeats(%rip), %eax
	.loc 2 1747 20 discriminator 6
	cmpb	%al, %dl
	jne	.L354
	.loc 2 1747 20 is_stmt 0 discriminator 1
	movl	$2, %eax
	jmp	.L355
.L354:
	.loc 2 1747 20 discriminator 2
	movl	$1, %eax
.L355:
	.loc 2 1747 16 is_stmt 1 discriminator 4
	movl	%eax, -204(%rbp)
	.loc 2 1748 30 discriminator 4
	movzbl	delete(%rip), %edx
	movzbl	squeeze_repeats(%rip), %eax
	.loc 2 1748 20 discriminator 4
	cmpb	%al, %dl
	ja	.L356
	.loc 2 1748 20 is_stmt 0 discriminator 1
	movl	$2, %eax
	jmp	.L357
.L356:
	.loc 2 1748 20 discriminator 2
	movl	$1, %eax
.L357:
	.loc 2 1748 16 is_stmt 1 discriminator 4
	movl	%eax, -200(%rbp)
	.loc 2 1750 6 discriminator 4
	movl	-208(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jge	.L358
	.loc 2 1752 10
	cmpl	$0, -208(%rbp)
	jne	.L359
	.loc 2 1753 22
	leaq	.LC89(%rip), %rdi
	call	gettext@PLT
	.loc 2 1753 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L360
.L359:
	.loc 2 1756 66
	movl	-244(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1756 11
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1756 24
	leaq	.LC90(%rip), %rdi
	call	gettext@PLT
	.loc 2 1756 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1758 20
	movzbl	squeeze_repeats(%rip), %eax
	.loc 2 1757 11
	testb	%al, %al
	je	.L361
	.loc 2 1757 11 is_stmt 0 discriminator 1
	leaq	.LC91(%rip), %rax
	jmp	.L362
.L361:
	.loc 2 1757 11 discriminator 2
	leaq	.LC92(%rip), %rax
.L362:
	.loc 2 1757 11 discriminator 4
	movq	%rax, %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC93(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L360:
	.loc 2 1763 7 is_stmt 1
	movl	$1, %edi
	call	usage
.L358:
	.loc 2 1766 6
	movl	-200(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jge	.L363
	.loc 2 1768 62
	movl	optind(%rip), %edx
	movl	-200(%rbp), %eax
	addl	%edx, %eax
	cltq
	.loc 2 1768 54
	leaq	0(,%rax,8), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1768 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1768 20
	leaq	.LC94(%rip), %rdi
	call	gettext@PLT
	.loc 2 1768 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1769 10
	cmpl	$2, -208(%rbp)
	jne	.L364
	.loc 2 1770 9
	leaq	.LC95(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC93(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L364:
	.loc 2 1773 7
	movl	$1, %edi
	call	usage
.L363:
	.loc 2 1776 3
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	spec_init
	.loc 2 1777 23
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1777 8
	movq	(%rax), %rax
	movq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_str
	.loc 2 1777 7
	xorl	$1, %eax
	.loc 2 1777 6
	testb	%al, %al
	je	.L365
	.loc 2 1778 12
	movl	$1, %eax
	jmp	.L406
.L365:
	.loc 2 1780 6
	cmpl	$2, -208(%rbp)
	jne	.L367
	.loc 2 1782 7
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	spec_init
	.loc 2 1783 27
	movl	optind(%rip), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1783 12
	movq	(%rax), %rax
	movq	-184(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_str
	.loc 2 1783 11
	xorl	$1, %eax
	.loc 2 1783 10
	testb	%al, %al
	je	.L368
	.loc 2 1784 16
	movl	$1, %eax
	jmp	.L406
.L367:
	.loc 2 1787 8
	movq	$0, -184(%rbp)
.L368:
	.loc 2 1789 3
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validate
	.loc 2 1794 3
	movl	$0, %esi
	movl	$0, %edi
	call	xset_binary_mode@PLT
	.loc 2 1795 3
	movl	$0, %esi
	movl	$1, %edi
	call	xset_binary_mode@PLT
	.loc 2 1796 3
	movq	stdin(%rip), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 1798 7
	movzbl	squeeze_repeats(%rip), %eax
	.loc 2 1798 6
	testb	%al, %al
	je	.L369
	.loc 2 1798 23 discriminator 1
	cmpl	$1, -208(%rbp)
	jne	.L369
	.loc 2 1800 7
	movzbl	complement(%rip), %eax
	movzbl	%al, %ecx
	movq	-176(%rbp), %rax
	leaq	in_squeeze_set(%rip), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	set_initialize
	.loc 2 1801 7
	leaq	plain_read(%rip), %rdx
	movl	$8192, %esi
	leaq	io_buf(%rip), %rdi
	call	squeeze_filter
	jmp	.L370
.L369:
	.loc 2 1803 12
	movzbl	delete(%rip), %eax
	.loc 2 1803 11
	testb	%al, %al
	je	.L371
	.loc 2 1803 19 discriminator 1
	cmpl	$1, -208(%rbp)
	jne	.L371
	.loc 2 1805 7
	movzbl	complement(%rip), %eax
	movzbl	%al, %ecx
	movq	-176(%rbp), %rax
	leaq	in_delete_set(%rip), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	set_initialize
.L375:
.LBB43:
	.loc 2 1809 23
	movl	$8192, %esi
	leaq	io_buf(%rip), %rdi
	call	read_and_delete
	movq	%rax, -168(%rbp)
	.loc 2 1810 14
	cmpq	$0, -168(%rbp)
	je	.L409
	.loc 2 1812 15
	movq	stdout(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	leaq	io_buf(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1812 14
	cmpq	%rax, -168(%rbp)
	je	.L375
.LBB44:
	.loc 2 1813 13
	leaq	.LC83(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L409:
.LBE44:
	.loc 2 1811 13
	nop
.LBE43:
	.loc 2 1803 11
	jmp	.L370
.L371:
	.loc 2 1816 12
	movzbl	squeeze_repeats(%rip), %eax
	.loc 2 1816 11
	testb	%al, %al
	je	.L376
	.loc 2 1816 28 discriminator 1
	movzbl	delete(%rip), %eax
	testb	%al, %al
	je	.L376
	.loc 2 1816 38 discriminator 2
	cmpl	$2, -208(%rbp)
	jne	.L376
	.loc 2 1818 7
	movzbl	complement(%rip), %eax
	movzbl	%al, %ecx
	movq	-176(%rbp), %rax
	leaq	in_delete_set(%rip), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	set_initialize
	.loc 2 1819 7
	movq	-184(%rbp), %rax
	leaq	in_squeeze_set(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_initialize
	.loc 2 1820 7
	leaq	read_and_delete(%rip), %rdx
	movl	$8192, %esi
	leaq	io_buf(%rip), %rdi
	call	squeeze_filter
	jmp	.L370
.L376:
	.loc 2 1822 12
	movzbl	translating(%rip), %eax
	.loc 2 1822 11
	testb	%al, %al
	je	.L370
	.loc 2 1824 11
	movzbl	complement(%rip), %eax
	.loc 2 1824 10
	testb	%al, %al
	je	.L377
.LBB45:
	.loc 2 1826 17
	leaq	in_delete_set(%rip), %rax
	movq	%rax, -160(%rbp)
	.loc 2 1828 11
	movq	-160(%rbp), %rdx
	movq	-176(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_initialize
	.loc 2 1829 21
	movq	-184(%rbp), %rax
	movq	$-2, 16(%rax)
.LBB46:
	.loc 2 1830 20
	movl	$0, -232(%rbp)
	.loc 2 1830 11
	jmp	.L378
.L379:
	.loc 2 1831 22 discriminator 3
	movl	-232(%rbp), %eax
	movl	%eax, %ecx
	movl	-232(%rbp), %eax
	cltq
	leaq	xlate(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	.loc 2 1830 41 discriminator 3
	addl	$1, -232(%rbp)
.L378:
	.loc 2 1830 11 discriminator 1
	cmpl	$255, -232(%rbp)
	jle	.L379
.LBE46:
.LBB47:
	.loc 2 1832 20
	movl	$0, -228(%rbp)
	.loc 2 1832 11
	jmp	.L380
.L385:
	.loc 2 1834 25
	movl	-228(%rbp), %eax
	movslq	%eax, %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1834 19
	xorl	$1, %eax
	.loc 2 1834 18
	testb	%al, %al
	je	.L381
.LBB48:
	.loc 2 1836 28
	movq	-184(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	get_next
	movl	%eax, -188(%rbp)
	.loc 2 1837 19
	cmpl	$-1, -188(%rbp)
	jne	.L382
	.loc 2 1837 19 is_stmt 0 discriminator 1
	movzbl	truncate_set1(%rip), %eax
	testb	%al, %al
	jne	.L382
	.loc 2 1837 19 discriminator 2
	leaq	__PRETTY_FUNCTION__.6839(%rip), %rcx
	movl	$1837, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC96(%rip), %rdi
	call	__assert_fail@PLT
.L382:
	.loc 2 1838 22 is_stmt 1
	cmpl	$-1, -188(%rbp)
	je	.L410
	.loc 2 1844 28
	movl	-188(%rbp), %eax
	movl	%eax, %ecx
	movl	-228(%rbp), %eax
	cltq
	leaq	xlate(%rip), %rdx
	movb	%cl, (%rax,%rdx)
.L381:
.LBE48:
	.loc 2 1832 41 discriminator 2
	addl	$1, -228(%rbp)
.L380:
	.loc 2 1832 11 discriminator 1
	cmpl	$255, -228(%rbp)
	jle	.L385
	jmp	.L386
.L377:
.LBE47:
.LBE45:
.LBB51:
.LBB52:
	.loc 2 1854 20
	movl	$0, -224(%rbp)
	.loc 2 1854 11
	jmp	.L387
.L388:
	.loc 2 1855 22 discriminator 3
	movl	-224(%rbp), %eax
	movl	%eax, %ecx
	movl	-224(%rbp), %eax
	cltq
	leaq	xlate(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	.loc 2 1854 41 discriminator 3
	addl	$1, -224(%rbp)
.L387:
	.loc 2 1854 11 discriminator 1
	cmpl	$255, -224(%rbp)
	jle	.L388
.LBE52:
	.loc 2 1856 21
	movq	-176(%rbp), %rax
	movq	$-2, 16(%rax)
	.loc 2 1857 21
	movq	-184(%rbp), %rax
	movq	$-2, 16(%rax)
.L400:
	.loc 2 1860 20
	leaq	-240(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_next
	movl	%eax, -196(%rbp)
	.loc 2 1861 20
	leaq	-236(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_next
	movl	%eax, -192(%rbp)
	.loc 2 1863 28
	movl	-240(%rbp), %eax
	.loc 2 1863 18
	testl	%eax, %eax
	jne	.L389
	.loc 2 1863 52 discriminator 1
	movl	-236(%rbp), %eax
	.loc 2 1863 40 discriminator 1
	cmpl	$1, %eax
	jne	.L389
.LBB53:
	.loc 2 1865 28
	movl	$0, -220(%rbp)
	.loc 2 1865 19
	jmp	.L390
.L392:
	.loc 2 1866 25
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-220(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	.loc 2 1866 24
	testl	%eax, %eax
	je	.L391
	.loc 2 1867 34
	movl	-220(%rbp), %eax
	movl	%eax, %edi
	call	toupper@PLT
	.loc 2 1867 32
	movl	%eax, %ecx
	movl	-220(%rbp), %eax
	cltq
	leaq	xlate(%rip), %rdx
	movb	%cl, (%rax,%rdx)
.L391:
	.loc 2 1865 49 discriminator 2
	addl	$1, -220(%rbp)
.L390:
	.loc 2 1865 19 discriminator 1
	cmpl	$255, -220(%rbp)
	jle	.L392
.LBE53:
	.loc 2 1865 19 is_stmt 0
	jmp	.L393
.L389:
	.loc 2 1869 33 is_stmt 1
	movl	-240(%rbp), %eax
	.loc 2 1869 23
	cmpl	$1, %eax
	jne	.L394
	.loc 2 1869 57 discriminator 1
	movl	-236(%rbp), %eax
	.loc 2 1869 45 discriminator 1
	testl	%eax, %eax
	jne	.L394
.LBB54:
	.loc 2 1871 28
	movl	$0, -216(%rbp)
	.loc 2 1871 19
	jmp	.L395
.L397:
	.loc 2 1872 25
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	.loc 2 1872 24
	testl	%eax, %eax
	je	.L396
	.loc 2 1873 34
	movl	-216(%rbp), %eax
	movl	%eax, %edi
	call	tolower@PLT
	.loc 2 1873 32
	movl	%eax, %ecx
	movl	-216(%rbp), %eax
	cltq
	leaq	xlate(%rip), %rdx
	movb	%cl, (%rax,%rdx)
.L396:
	.loc 2 1871 49 discriminator 2
	addl	$1, -216(%rbp)
.L395:
	.loc 2 1871 19 discriminator 1
	cmpl	$255, -216(%rbp)
	jle	.L397
.LBE54:
	.loc 2 1871 19 is_stmt 0
	jmp	.L393
.L394:
	.loc 2 1878 22 is_stmt 1
	cmpl	$-1, -196(%rbp)
	je	.L398
	.loc 2 1878 32 discriminator 1
	cmpl	$-1, -192(%rbp)
	je	.L398
	.loc 2 1880 29
	movl	-192(%rbp), %eax
	movl	%eax, %ecx
	movl	-196(%rbp), %eax
	cltq
	leaq	xlate(%rip), %rdx
	movb	%cl, (%rax,%rdx)
.L393:
	.loc 2 1884 28
	movl	-236(%rbp), %eax
	.loc 2 1884 18
	cmpl	$2, %eax
	je	.L400
	.loc 2 1886 19
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	skip_construct
	.loc 2 1887 19
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	skip_construct
	.loc 2 1860 18
	jmp	.L400
.L398:
	.loc 2 1890 11
	cmpl	$-1, -196(%rbp)
	je	.L386
	.loc 2 1890 11 is_stmt 0 discriminator 1
	movzbl	truncate_set1(%rip), %eax
	testb	%al, %al
	jne	.L386
	.loc 2 1890 11 discriminator 2
	leaq	__PRETTY_FUNCTION__.6839(%rip), %rcx
	movl	$1890, %edx
	leaq	.LC57(%rip), %rsi
	leaq	.LC97(%rip), %rdi
	call	__assert_fail@PLT
.L410:
.LBE51:
.LBB55:
.LBB50:
.LBB49:
	.loc 2 1842 23 is_stmt 1
	nop
.L386:
.LBE49:
.LBE50:
.LBE55:
	.loc 2 1892 11
	movzbl	squeeze_repeats(%rip), %eax
	.loc 2 1892 10
	testb	%al, %al
	je	.L402
	.loc 2 1894 11
	movq	-184(%rbp), %rax
	leaq	in_squeeze_set(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_initialize
	.loc 2 1895 11
	leaq	read_and_xlate(%rip), %rdx
	movl	$8192, %esi
	leaq	io_buf(%rip), %rdi
	call	squeeze_filter
	jmp	.L370
.L402:
.LBB56:
	.loc 2 1901 35
	movl	$8192, %esi
	leaq	io_buf(%rip), %rdi
	call	read_and_xlate
	movq	%rax, -152(%rbp)
	.loc 2 1902 18
	cmpq	$0, -152(%rbp)
	je	.L411
	.loc 2 1904 19
	movq	stdout(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	leaq	io_buf(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 2 1904 18
	cmpq	%rax, -152(%rbp)
	je	.L402
.LBB57:
	.loc 2 1905 17
	leaq	.LC83(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L411:
.LBE57:
	.loc 2 1903 17
	nop
.L370:
.LBE56:
	.loc 2 1910 7
	movl	$0, %edi
	call	close@PLT
	.loc 2 1910 6
	testl	%eax, %eax
	je	.L405
.LBB58:
	.loc 2 1911 5
	leaq	.LC98(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L405:
.LBE58:
	.loc 2 1913 10
	movl	$0, %eax
.L406:
	.loc 2 1914 1 discriminator 4
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L407
	.loc 2 1914 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L407:
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.6489, @object
	.size	__PRETTY_FUNCTION__.6489, 19
__PRETTY_FUNCTION__.6489:
	.string	"append_normal_char"
	.align 8
	.type	__PRETTY_FUNCTION__.6498, @object
	.size	__PRETTY_FUNCTION__.6498, 13
__PRETTY_FUNCTION__.6498:
	.string	"append_range"
	.align 16
	.type	__PRETTY_FUNCTION__.6506, @object
	.size	__PRETTY_FUNCTION__.6506, 18
__PRETTY_FUNCTION__.6506:
	.string	"append_char_class"
	.align 16
	.type	__PRETTY_FUNCTION__.6513, @object
	.size	__PRETTY_FUNCTION__.6513, 21
__PRETTY_FUNCTION__.6513:
	.string	"append_repeated_char"
	.align 16
	.type	__PRETTY_FUNCTION__.6520, @object
	.size	__PRETTY_FUNCTION__.6520, 19
__PRETTY_FUNCTION__.6520:
	.string	"append_equiv_class"
	.align 16
	.type	__PRETTY_FUNCTION__.6538, @object
	.size	__PRETTY_FUNCTION__.6538, 22
__PRETTY_FUNCTION__.6538:
	.string	"find_bracketed_repeat"
	.align 8
	.type	__PRETTY_FUNCTION__.6599, @object
	.size	__PRETTY_FUNCTION__.6599, 9
__PRETTY_FUNCTION__.6599:
	.string	"get_next"
	.align 16
	.type	__PRETTY_FUNCTION__.6640, @object
	.size	__PRETTY_FUNCTION__.6640, 22
__PRETTY_FUNCTION__.6640:
	.string	"validate_case_classes"
	.align 8
	.type	__PRETTY_FUNCTION__.6651, @object
	.size	__PRETTY_FUNCTION__.6651, 15
__PRETTY_FUNCTION__.6651:
	.string	"get_spec_stats"
	.align 8
	.type	__PRETTY_FUNCTION__.6696, @object
	.size	__PRETTY_FUNCTION__.6696, 15
__PRETTY_FUNCTION__.6696:
	.string	"string2_extend"
	.type	__PRETTY_FUNCTION__.6839, @object
	.size	__PRETTY_FUNCTION__.6839, 5
__PRETTY_FUNCTION__.6839:
	.string	"main"
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
	.file 11 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 13 "/usr/include/time.h"
	.file 14 "/usr/include/signal.h"
	.file 15 "/usr/include/unistd.h"
	.file 16 "/usr/include/errno.h"
	.file 17 "src/version.h"
	.file 18 "./lib/exitfail.h"
	.file 19 "/usr/include/stdint.h"
	.file 20 "./lib/timespec.h"
	.file 21 "/usr/include/ctype.h"
	.file 22 "./lib/version-etc.h"
	.file 23 "./lib/progname.h"
	.file 24 "./lib/quotearg.h"
	.file 25 "./lib/error.h"
	.file 26 "./lib/fadvise.h"
	.file 27 "./lib/quote.h"
	.file 28 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x20b6
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF298
	.byte	0xc
	.long	.LASF299
	.long	.LASF300
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
	.uleb128 0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x76
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x76
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x76
	.uleb128 0x8
	.byte	0x8
	.long	0xb3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	0xb3
	.uleb128 0x9
	.long	.LASF62
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x246
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xad
	.byte	0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xad
	.byte	0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xad
	.byte	0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xad
	.byte	0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xad
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xad
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xad
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xad
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xad
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xad
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xad
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x25f
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x265
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x89
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x26b
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x27b
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x95
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x286
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x291
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x265
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x297
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xbf
	.uleb128 0xb
	.long	.LASF301
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x8
	.byte	0x8
	.long	0x25a
	.uleb128 0x8
	.byte	0x8
	.long	0xbf
	.uleb128 0xd
	.long	0xb3
	.long	0x27b
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x252
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x8
	.byte	0x8
	.long	0x281
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x8
	.byte	0x8
	.long	0x28c
	.uleb128 0xd
	.long	0xb3
	.long	0x2a7
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xba
	.uleb128 0x7
	.long	0x2a7
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2be
	.uleb128 0x8
	.byte	0x8
	.long	0x246
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2be
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2be
	.uleb128 0xf
	.long	.LASF49
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2ad
	.long	0x2f3
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	0x2e8
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2f3
	.uleb128 0xf
	.long	.LASF51
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF52
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x2f3
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF54
	.uleb128 0x2
	.long	.LASF55
	.byte	0x9
	.byte	0x7
	.byte	0x12
	.long	0xa1
	.uleb128 0x11
	.long	.LASF56
	.byte	0xa
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF57
	.uleb128 0xf
	.long	.LASF58
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.long	0xad
	.uleb128 0xf
	.long	.LASF59
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF60
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF61
	.byte	0xb
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF63
	.byte	0x20
	.byte	0xc
	.byte	0x32
	.byte	0x8
	.long	0x3bc
	.uleb128 0xa
	.long	.LASF64
	.byte	0xc
	.byte	0x34
	.byte	0xf
	.long	0x2a7
	.byte	0
	.uleb128 0xa
	.long	.LASF65
	.byte	0xc
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF66
	.byte	0xc
	.byte	0x38
	.byte	0x8
	.long	0x3c1
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xc
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	0x37a
	.uleb128 0x8
	.byte	0x8
	.long	0x65
	.uleb128 0xd
	.long	0xad
	.long	0x3d7
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF67
	.byte	0xd
	.byte	0x9f
	.byte	0xe
	.long	0x3c7
	.uleb128 0xf
	.long	.LASF68
	.byte	0xd
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF69
	.byte	0xd
	.byte	0xa1
	.byte	0x11
	.long	0x76
	.uleb128 0xf
	.long	.LASF70
	.byte	0xd
	.byte	0xa6
	.byte	0xe
	.long	0x3c7
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF72
	.byte	0xd
	.byte	0xaf
	.byte	0x11
	.long	0x76
	.uleb128 0x11
	.long	.LASF73
	.byte	0xd
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.uleb128 0x8
	.byte	0x8
	.long	0x42c
	.uleb128 0xd
	.long	0x2ad
	.long	0x443
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.long	0x433
	.uleb128 0x11
	.long	.LASF74
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x443
	.uleb128 0x11
	.long	.LASF75
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x443
	.uleb128 0x11
	.long	.LASF76
	.byte	0xf
	.value	0x21f
	.byte	0xf
	.long	0x46f
	.uleb128 0x8
	.byte	0x8
	.long	0xad
	.uleb128 0x11
	.long	.LASF77
	.byte	0xf
	.value	0x221
	.byte	0xf
	.long	0x46f
	.uleb128 0xf
	.long	.LASF78
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0xad
	.uleb128 0xf
	.long	.LASF79
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0xad
	.uleb128 0xf
	.long	.LASF80
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x2a7
	.uleb128 0xf
	.long	.LASF81
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0xd
	.long	0xb3
	.long	0x4c2
	.uleb128 0xe
	.long	0x39
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x13
	.byte	0x66
	.byte	0x16
	.long	0x7d
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x29
	.byte	0x6
	.long	0x4e6
	.uleb128 0x15
	.long	.LASF83
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x2a
	.byte	0x6
	.long	0x4fb
	.uleb128 0x16
	.long	.LASF84
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x15
	.byte	0x2f
	.byte	0x1
	.long	0x55a
	.uleb128 0x17
	.long	.LASF85
	.value	0x100
	.uleb128 0x17
	.long	.LASF86
	.value	0x200
	.uleb128 0x17
	.long	.LASF87
	.value	0x400
	.uleb128 0x17
	.long	.LASF88
	.value	0x800
	.uleb128 0x17
	.long	.LASF89
	.value	0x1000
	.uleb128 0x17
	.long	.LASF90
	.value	0x2000
	.uleb128 0x17
	.long	.LASF91
	.value	0x4000
	.uleb128 0x17
	.long	.LASF92
	.value	0x8000
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.uleb128 0x16
	.long	.LASF94
	.byte	0x2
	.uleb128 0x16
	.long	.LASF95
	.byte	0x4
	.uleb128 0x16
	.long	.LASF96
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x578
	.uleb128 0x19
	.long	.LASF97
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF98
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0xba
	.long	0x583
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	0x578
	.uleb128 0xf
	.long	.LASF99
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x583
	.uleb128 0xf
	.long	.LASF100
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0x2a7
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.long	0x5f5
	.uleb128 0x16
	.long	.LASF101
	.byte	0
	.uleb128 0x16
	.long	.LASF102
	.byte	0x1
	.uleb128 0x16
	.long	.LASF103
	.byte	0x2
	.uleb128 0x16
	.long	.LASF104
	.byte	0x3
	.uleb128 0x16
	.long	.LASF105
	.byte	0x4
	.uleb128 0x16
	.long	.LASF106
	.byte	0x5
	.uleb128 0x16
	.long	.LASF107
	.byte	0x6
	.uleb128 0x16
	.long	.LASF108
	.byte	0x7
	.uleb128 0x16
	.long	.LASF109
	.byte	0x8
	.uleb128 0x16
	.long	.LASF110
	.byte	0x9
	.uleb128 0x16
	.long	.LASF111
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	0x5a0
	.uleb128 0x11
	.long	.LASF112
	.byte	0x18
	.value	0x10b
	.byte	0x1a
	.long	0x2f3
	.uleb128 0xd
	.long	0x5f5
	.long	0x612
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	0x607
	.uleb128 0x11
	.long	.LASF113
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x612
	.uleb128 0xf
	.long	.LASF114
	.byte	0x19
	.byte	0x32
	.byte	0xf
	.long	0x42d
	.uleb128 0xf
	.long	.LASF115
	.byte	0x19
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF116
	.byte	0x19
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1a
	.byte	0x2d
	.byte	0xe
	.long	0x67b
	.uleb128 0x16
	.long	.LASF117
	.byte	0
	.uleb128 0x16
	.long	.LASF118
	.byte	0x2
	.uleb128 0x16
	.long	.LASF119
	.byte	0x5
	.uleb128 0x16
	.long	.LASF120
	.byte	0x4
	.uleb128 0x16
	.long	.LASF121
	.byte	0x3
	.uleb128 0x16
	.long	.LASF122
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	.LASF123
	.uleb128 0xf
	.long	.LASF124
	.byte	0x1b
	.byte	0x19
	.byte	0x1f
	.long	0x67b
	.uleb128 0x1a
	.long	.LASF126
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x19
	.byte	0x6
	.long	0x6bd
	.uleb128 0x16
	.long	.LASF127
	.byte	0
	.uleb128 0x16
	.long	.LASF128
	.byte	0x1
	.uleb128 0x16
	.long	.LASF129
	.byte	0x2
	.uleb128 0x16
	.long	.LASF130
	.byte	0x3
	.uleb128 0x16
	.long	.LASF131
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x28
	.byte	0x6
	.long	0x6d3
	.uleb128 0x17
	.long	.LASF132
	.value	0x100
	.byte	0
	.uleb128 0x2
	.long	.LASF133
	.byte	0x2
	.byte	0x30
	.byte	0x13
	.long	0x4c2
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x46
	.byte	0x6
	.long	0x741
	.uleb128 0x16
	.long	.LASF135
	.byte	0
	.uleb128 0x16
	.long	.LASF136
	.byte	0x1
	.uleb128 0x16
	.long	.LASF137
	.byte	0x2
	.uleb128 0x16
	.long	.LASF138
	.byte	0x3
	.uleb128 0x16
	.long	.LASF139
	.byte	0x4
	.uleb128 0x16
	.long	.LASF140
	.byte	0x5
	.uleb128 0x16
	.long	.LASF141
	.byte	0x6
	.uleb128 0x16
	.long	.LASF142
	.byte	0x7
	.uleb128 0x16
	.long	.LASF143
	.byte	0x8
	.uleb128 0x16
	.long	.LASF144
	.byte	0x9
	.uleb128 0x16
	.long	.LASF145
	.byte	0xa
	.uleb128 0x16
	.long	.LASF146
	.byte	0xb
	.uleb128 0x17
	.long	.LASF147
	.value	0x270f
	.byte	0
	.uleb128 0x1a
	.long	.LASF148
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x54
	.byte	0x6
	.long	0x766
	.uleb128 0x16
	.long	.LASF149
	.byte	0
	.uleb128 0x16
	.long	.LASF150
	.byte	0x1
	.uleb128 0x16
	.long	.LASF151
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.long	.LASF152
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x5c
	.byte	0x6
	.long	0x797
	.uleb128 0x16
	.long	.LASF153
	.byte	0
	.uleb128 0x16
	.long	.LASF154
	.byte	0x1
	.uleb128 0x16
	.long	.LASF155
	.byte	0x2
	.uleb128 0x16
	.long	.LASF156
	.byte	0x3
	.uleb128 0x16
	.long	.LASF157
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.byte	0x2
	.byte	0x2
	.byte	0x71
	.byte	0x9
	.long	0x7bb
	.uleb128 0xa
	.long	.LASF158
	.byte	0x2
	.byte	0x73
	.byte	0x1b
	.long	0x49
	.byte	0
	.uleb128 0xa
	.long	.LASF159
	.byte	0x2
	.byte	0x74
	.byte	0x1b
	.long	0x49
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0x10
	.byte	0x2
	.byte	0x79
	.byte	0x9
	.long	0x7df
	.uleb128 0xa
	.long	.LASF160
	.byte	0x2
	.byte	0x7b
	.byte	0x1b
	.long	0x49
	.byte	0
	.uleb128 0xa
	.long	.LASF161
	.byte	0x2
	.byte	0x7c
	.byte	0x13
	.long	0x6d3
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.byte	0x10
	.byte	0x2
	.byte	0x6e
	.byte	0x5
	.long	0x825
	.uleb128 0x1d
	.long	.LASF162
	.byte	0x2
	.byte	0x70
	.byte	0x17
	.long	0x49
	.uleb128 0x1d
	.long	.LASF163
	.byte	0x2
	.byte	0x76
	.byte	0x9
	.long	0x797
	.uleb128 0x1d
	.long	.LASF164
	.byte	0x2
	.byte	0x77
	.byte	0x19
	.long	0x6df
	.uleb128 0x1d
	.long	.LASF165
	.byte	0x2
	.byte	0x78
	.byte	0x17
	.long	0x49
	.uleb128 0x1d
	.long	.LASF166
	.byte	0x2
	.byte	0x7e
	.byte	0x9
	.long	0x7bb
	.byte	0
	.uleb128 0x9
	.long	.LASF167
	.byte	0x20
	.byte	0x2
	.byte	0x6a
	.byte	0x8
	.long	0x858
	.uleb128 0xa
	.long	.LASF168
	.byte	0x2
	.byte	0x6c
	.byte	0x1d
	.long	0x766
	.byte	0
	.uleb128 0xa
	.long	.LASF169
	.byte	0x2
	.byte	0x6d
	.byte	0x1a
	.long	0x858
	.byte	0x8
	.uleb128 0x12
	.string	"u"
	.byte	0x2
	.byte	0x80
	.byte	0x5
	.long	0x7df
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x825
	.uleb128 0x9
	.long	.LASF170
	.byte	0x38
	.byte	0x2
	.byte	0x8c
	.byte	0x8
	.long	0x8e1
	.uleb128 0xa
	.long	.LASF171
	.byte	0x2
	.byte	0x90
	.byte	0x1a
	.long	0x858
	.byte	0
	.uleb128 0xa
	.long	.LASF172
	.byte	0x2
	.byte	0x96
	.byte	0x1a
	.long	0x858
	.byte	0x8
	.uleb128 0xa
	.long	.LASF173
	.byte	0x2
	.byte	0x99
	.byte	0xb
	.long	0x6d3
	.byte	0x10
	.uleb128 0xa
	.long	.LASF174
	.byte	0x2
	.byte	0x9d
	.byte	0xb
	.long	0x6d3
	.byte	0x18
	.uleb128 0xa
	.long	.LASF175
	.byte	0x2
	.byte	0xa0
	.byte	0xc
	.long	0x2d
	.byte	0x20
	.uleb128 0xa
	.long	.LASF176
	.byte	0x2
	.byte	0xa5
	.byte	0x1a
	.long	0x858
	.byte	0x28
	.uleb128 0xa
	.long	.LASF177
	.byte	0x2
	.byte	0xa9
	.byte	0xa
	.long	0x8e6
	.byte	0x30
	.uleb128 0xa
	.long	.LASF178
	.byte	0x2
	.byte	0xad
	.byte	0xa
	.long	0x8e6
	.byte	0x31
	.uleb128 0xa
	.long	.LASF179
	.byte	0x2
	.byte	0xb1
	.byte	0xa
	.long	0x8e6
	.byte	0x32
	.byte	0
	.uleb128 0x7
	.long	0x85e
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF180
	.uleb128 0x9
	.long	.LASF181
	.byte	0x18
	.byte	0x2
	.byte	0xb8
	.byte	0x8
	.long	0x920
	.uleb128 0x12
	.string	"s"
	.byte	0x2
	.byte	0xba
	.byte	0x9
	.long	0xad
	.byte	0
	.uleb128 0xa
	.long	.LASF182
	.byte	0x2
	.byte	0xbb
	.byte	0x9
	.long	0x925
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0x2
	.byte	0xbc
	.byte	0xa
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x8ed
	.uleb128 0x8
	.byte	0x8
	.long	0x8e6
	.uleb128 0x1e
	.long	.LASF183
	.byte	0x2
	.byte	0xca
	.byte	0xd
	.long	0x8e6
	.uleb128 0x9
	.byte	0x3
	.quad	squeeze_repeats
	.uleb128 0x1e
	.long	.LASF184
	.byte	0x2
	.byte	0xcd
	.byte	0xd
	.long	0x8e6
	.uleb128 0x9
	.byte	0x3
	.quad	delete
	.uleb128 0x1e
	.long	.LASF185
	.byte	0x2
	.byte	0xd0
	.byte	0xd
	.long	0x8e6
	.uleb128 0x9
	.byte	0x3
	.quad	complement
	.uleb128 0x1e
	.long	.LASF186
	.byte	0x2
	.byte	0xee
	.byte	0xd
	.long	0x8e6
	.uleb128 0x9
	.byte	0x3
	.quad	truncate_set1
	.uleb128 0x1e
	.long	.LASF187
	.byte	0x2
	.byte	0xf2
	.byte	0xd
	.long	0x8e6
	.uleb128 0x9
	.byte	0x3
	.quad	translating
	.uleb128 0xd
	.long	0xb3
	.long	0x9aa
	.uleb128 0x1f
	.long	0x39
	.value	0x1fff
	.byte	0
	.uleb128 0x1e
	.long	.LASF188
	.byte	0x2
	.byte	0xf4
	.byte	0xd
	.long	0x999
	.uleb128 0x9
	.byte	0x3
	.quad	io_buf
	.uleb128 0xd
	.long	0x2ad
	.long	0x9d0
	.uleb128 0xe
	.long	0x39
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.long	0x9c0
	.uleb128 0x1e
	.long	.LASF189
	.byte	0x2
	.byte	0xf6
	.byte	0x1a
	.long	0x9d0
	.uleb128 0x9
	.byte	0x3
	.quad	char_class_name
	.uleb128 0xd
	.long	0x8e6
	.long	0x9fb
	.uleb128 0xe
	.long	0x39
	.byte	0xff
	.byte	0
	.uleb128 0x20
	.long	.LASF190
	.byte	0x2
	.value	0x100
	.byte	0xd
	.long	0x9eb
	.uleb128 0x9
	.byte	0x3
	.quad	in_squeeze_set
	.uleb128 0x20
	.long	.LASF191
	.byte	0x2
	.value	0x106
	.byte	0xd
	.long	0x9eb
	.uleb128 0x9
	.byte	0x3
	.quad	in_delete_set
	.uleb128 0x20
	.long	.LASF192
	.byte	0x2
	.value	0x10b
	.byte	0xd
	.long	0x4b2
	.uleb128 0x9
	.byte	0x3
	.quad	xlate
	.uleb128 0xd
	.long	0x3bc
	.long	0xa50
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	0xa40
	.uleb128 0x20
	.long	.LASF193
	.byte	0x2
	.value	0x10d
	.byte	0x1c
	.long	0xa50
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x21
	.long	.LASF287
	.byte	0x2
	.value	0x69a
	.byte	0x1
	.long	0x65
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0xcf7
	.uleb128 0x22
	.long	.LASF194
	.byte	0x2
	.value	0x69a
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x22
	.long	.LASF195
	.byte	0x2
	.value	0x69a
	.byte	0x18
	.long	0x46f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x23
	.string	"c"
	.byte	0x2
	.value	0x69c
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x20
	.long	.LASF196
	.byte	0x2
	.value	0x69d
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x20
	.long	.LASF197
	.byte	0x2
	.value	0x69e
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x20
	.long	.LASF198
	.byte	0x2
	.value	0x69f
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x20
	.long	.LASF199
	.byte	0x2
	.value	0x6a0
	.byte	0x14
	.long	0x85e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.long	.LASF200
	.byte	0x2
	.value	0x6a0
	.byte	0x1a
	.long	0x85e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.string	"s1"
	.byte	0x2
	.value	0x6a1
	.byte	0x15
	.long	0xcf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x23
	.string	"s2"
	.byte	0x2
	.value	0x6a2
	.byte	0x15
	.long	0xcf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x24
	.long	.LASF223
	.long	0xd0d
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6839
	.uleb128 0x25
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0xb7f
	.uleb128 0x23
	.string	"nr"
	.byte	0x2
	.value	0x711
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.byte	0
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x90
	.long	0xbea
	.uleb128 0x20
	.long	.LASF201
	.byte	0x2
	.value	0x722
	.byte	0x11
	.long	0x925
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x25
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0xbbe
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x726
	.byte	0x14
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x28
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x728
	.byte	0x14
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x28
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x23
	.string	"ch"
	.byte	0x2
	.value	0x72c
	.byte	0x17
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0xcad
	.uleb128 0x23
	.string	"c1"
	.byte	0x2
	.value	0x73a
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x23
	.string	"c2"
	.byte	0x2
	.value	0x73a
	.byte	0x13
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x20
	.long	.LASF202
	.byte	0x2
	.value	0x73b
	.byte	0x22
	.long	0x741
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x20
	.long	.LASF203
	.byte	0x2
	.value	0x73c
	.byte	0x22
	.long	0x741
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x25
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.long	0xc66
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x73e
	.byte	0x14
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x25
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.long	0xc8b
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x749
	.byte	0x1c
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.uleb128 0x29
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x74f
	.byte	0x1c
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.long	0xce5
	.uleb128 0x20
	.long	.LASF204
	.byte	0x2
	.value	0x76d
	.byte	0x16
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x26
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.byte	0
	.uleb128 0x26
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x85e
	.uleb128 0xd
	.long	0xba
	.long	0xd0d
	.uleb128 0xe
	.long	0x39
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	0xcfd
	.uleb128 0x2a
	.long	.LASF212
	.byte	0x2
	.value	0x68d
	.byte	0x1
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0xd8e
	.uleb128 0x2b
	.string	"s"
	.byte	0x2
	.value	0x68d
	.byte	0x23
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF205
	.byte	0x2
	.value	0x68d
	.byte	0x2b
	.long	0x8e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.LASF206
	.byte	0x2
	.value	0x68d
	.byte	0x46
	.long	0x925
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"c"
	.byte	0x2
	.value	0x68f
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x695
	.byte	0x11
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF208
	.byte	0x2
	.value	0x67c
	.byte	0x1
	.long	0x2d
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0xe02
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x67c
	.byte	0x17
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF207
	.byte	0x2
	.value	0x67c
	.byte	0x23
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF204
	.byte	0x2
	.value	0x67e
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x680
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF209
	.byte	0x2
	.value	0x656
	.byte	0x1
	.long	0x2d
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0xe85
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x656
	.byte	0x18
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF207
	.byte	0x2
	.value	0x656
	.byte	0x24
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF210
	.byte	0x2
	.value	0x658
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x23
	.string	"nr"
	.byte	0x2
	.value	0x65f
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x669
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF211
	.byte	0x2
	.value	0x647
	.byte	0x1
	.long	0x2d
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0xee9
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x647
	.byte	0x13
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF207
	.byte	0x2
	.value	0x647
	.byte	0x1f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"nr"
	.byte	0x2
	.value	0x649
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.byte	0
	.uleb128 0x2a
	.long	.LASF213
	.byte	0x2
	.value	0x5f2
	.byte	0x1
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0xfc4
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.value	0x5f2
	.byte	0x17
	.long	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF207
	.byte	0x2
	.value	0x5f2
	.byte	0x23
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.long	.LASF214
	.byte	0x2
	.value	0x5f2
	.byte	0x32
	.long	0xfd8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.long	.LASF215
	.byte	0x2
	.value	0x5f6
	.byte	0xd
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x20
	.long	.LASF216
	.byte	0x2
	.value	0x5f8
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x5f9
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"nr"
	.byte	0x2
	.value	0x5fa
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x20
	.long	.LASF217
	.byte	0x2
	.value	0x606
	.byte	0xe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x20
	.long	.LASF218
	.byte	0x2
	.value	0x60a
	.byte	0x12
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x2d
	.long	0xfd8
	.uleb128 0x2e
	.long	0xad
	.uleb128 0x2e
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xfc4
	.uleb128 0x2a
	.long	.LASF219
	.byte	0x2
	.value	0x5a3
	.byte	0x1
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x1093
	.uleb128 0x2b
	.string	"s1"
	.byte	0x2
	.value	0x5a3
	.byte	0x1d
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"s2"
	.byte	0x2
	.value	0x5a3
	.byte	0x33
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x26
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x26
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x26
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x26
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x26
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x26
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.byte	0
	.uleb128 0x2c
	.long	.LASF220
	.byte	0x2
	.value	0x58a
	.byte	0x1
	.long	0x8e6
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x10e1
	.uleb128 0x2b
	.string	"s"
	.byte	0x2
	.value	0x58a
	.byte	0x2a
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"b"
	.byte	0x2
	.value	0x58c
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"c"
	.byte	0x2
	.value	0x58c
	.byte	0xa
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF221
	.byte	0x2
	.value	0x559
	.byte	0x1
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x1161
	.uleb128 0x2b
	.string	"s1"
	.byte	0x2
	.value	0x559
	.byte	0x29
	.long	0x1161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"s2"
	.byte	0x2
	.value	0x559
	.byte	0x3f
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"p"
	.byte	0x2
	.value	0x55b
	.byte	0x18
	.long	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF222
	.byte	0x2
	.value	0x55c
	.byte	0x11
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x24
	.long	.LASF223
	.long	0x1177
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6696
	.uleb128 0x26
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x8e1
	.uleb128 0xd
	.long	0xba
	.long	0x1177
	.uleb128 0xe
	.long	0x39
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.long	0x1167
	.uleb128 0x2c
	.long	.LASF224
	.byte	0x2
	.value	0x547
	.byte	0x1
	.long	0x8e6
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x11de
	.uleb128 0x2b
	.string	"s"
	.byte	0x2
	.value	0x547
	.byte	0x18
	.long	0x2a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF225
	.byte	0x2
	.value	0x547
	.byte	0x2d
	.long	0xcf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"es"
	.byte	0x2
	.value	0x549
	.byte	0x13
	.long	0x8ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"ok"
	.byte	0x2
	.value	0x54a
	.byte	0x8
	.long	0x8e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.byte	0
	.uleb128 0x2a
	.long	.LASF226
	.byte	0x2
	.value	0x539
	.byte	0x1
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x121e
	.uleb128 0x22
	.long	.LASF225
	.byte	0x2
	.value	0x539
	.byte	0x1e
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"new"
	.byte	0x2
	.value	0x53b
	.byte	0x18
	.long	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF227
	.byte	0x2
	.value	0x52d
	.byte	0x1
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x125d
	.uleb128 0x2b
	.string	"s2"
	.byte	0x2
	.value	0x52d
	.byte	0x26
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF228
	.byte	0x2
	.value	0x52d
	.byte	0x30
	.long	0x6d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF229
	.byte	0x2
	.value	0x525
	.byte	0x1
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x128c
	.uleb128 0x2b
	.string	"s1"
	.byte	0x2
	.value	0x525
	.byte	0x26
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF230
	.byte	0x2
	.value	0x4d9
	.byte	0x1
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x1377
	.uleb128 0x2b
	.string	"s"
	.byte	0x2
	.value	0x4d9
	.byte	0x23
	.long	0xcf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"p"
	.byte	0x2
	.value	0x4db
	.byte	0x18
	.long	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF174
	.byte	0x2
	.value	0x4dc
	.byte	0x9
	.long	0x6d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF223
	.long	0x1177
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6651
	.uleb128 0x29
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x23
	.string	"len"
	.byte	0x2
	.value	0x4e4
	.byte	0xd
	.long	0x6d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF231
	.byte	0x2
	.value	0x4e5
	.byte	0xd
	.long	0x6d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x1340
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x4f4
	.byte	0x14
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x25
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x1364
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x503
	.byte	0x14
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x26
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF232
	.byte	0x2
	.value	0x48e
	.byte	0x1
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x14d7
	.uleb128 0x2b
	.string	"s1"
	.byte	0x2
	.value	0x48e
	.byte	0x2a
	.long	0xcf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"s2"
	.byte	0x2
	.value	0x48e
	.byte	0x40
	.long	0xcf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.long	.LASF233
	.byte	0x2
	.value	0x490
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF234
	.byte	0x2
	.value	0x491
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"c1"
	.byte	0x2
	.value	0x492
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x23
	.string	"c2"
	.byte	0x2
	.value	0x493
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF235
	.byte	0x2
	.value	0x494
	.byte	0x9
	.long	0x6d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF236
	.byte	0x2
	.value	0x495
	.byte	0x9
	.long	0x6d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF237
	.byte	0x2
	.value	0x496
	.byte	0x18
	.long	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF238
	.byte	0x2
	.value	0x497
	.byte	0x18
	.long	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF239
	.byte	0x2
	.value	0x498
	.byte	0x8
	.long	0x8e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -94
	.uleb128 0x20
	.long	.LASF240
	.byte	0x2
	.value	0x499
	.byte	0x8
	.long	0x8e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -93
	.uleb128 0x24
	.long	.LASF223
	.long	0x14e7
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6640
	.uleb128 0x25
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1491
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x49e
	.byte	0xc
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x29
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x20
	.long	.LASF202
	.byte	0x2
	.value	0x4ab
	.byte	0x1e
	.long	0x741
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x20
	.long	.LASF203
	.byte	0x2
	.value	0x4ab
	.byte	0x28
	.long	0x741
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xba
	.long	0x14e7
	.uleb128 0xe
	.long	0x39
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.long	0x14d7
	.uleb128 0x2c
	.long	.LASF241
	.byte	0x2
	.value	0x475
	.byte	0x1
	.long	0x65
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x1550
	.uleb128 0x2b
	.string	"s"
	.byte	0x2
	.value	0x475
	.byte	0x27
	.long	0xcf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x23
	.string	"c"
	.byte	0x2
	.value	0x477
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x20
	.long	.LASF242
	.byte	0x2
	.value	0x478
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x20
	.long	.LASF206
	.byte	0x2
	.value	0x479
	.byte	0x8
	.long	0x9eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x2c
	.long	.LASF243
	.byte	0x2
	.value	0x3f7
	.byte	0x1
	.long	0x65
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x15d1
	.uleb128 0x2b
	.string	"s"
	.byte	0x2
	.value	0x3f7
	.byte	0x1d
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF244
	.byte	0x2
	.value	0x3f7
	.byte	0x38
	.long	0x15d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"p"
	.byte	0x2
	.value	0x3f9
	.byte	0x18
	.long	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF245
	.byte	0x2
	.value	0x3fa
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x3fb
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.long	.LASF223
	.long	0x15e7
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6599
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x741
	.uleb128 0xd
	.long	0xba
	.long	0x15e7
	.uleb128 0xe
	.long	0x39
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	0x15d7
	.uleb128 0x2f
	.long	.LASF246
	.byte	0x2
	.value	0x3e2
	.byte	0x1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x161a
	.uleb128 0x2b
	.string	"s"
	.byte	0x2
	.value	0x3e2
	.byte	0x23
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF247
	.byte	0x2
	.value	0x356
	.byte	0x1
	.long	0x8e6
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x177b
	.uleb128 0x2b
	.string	"es"
	.byte	0x2
	.value	0x356
	.byte	0x29
	.long	0x177b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x22
	.long	.LASF248
	.byte	0x2
	.value	0x356
	.byte	0x3f
	.long	0xcf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x23
	.string	"p"
	.byte	0x2
	.value	0x358
	.byte	0xf
	.long	0x2a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x360
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF302
	.byte	0x2
	.value	0x3ab
	.byte	0x9
	.quad	.L135
	.uleb128 0x29
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x20
	.long	.LASF249
	.byte	0x2
	.value	0x365
	.byte	0x10
	.long	0x8e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.uleb128 0x20
	.long	.LASF250
	.byte	0x2
	.value	0x366
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.long	.LASF222
	.byte	0x2
	.value	0x367
	.byte	0x19
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -110
	.uleb128 0x20
	.long	.LASF161
	.byte	0x2
	.value	0x368
	.byte	0x11
	.long	0x6d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.string	"err"
	.byte	0x2
	.value	0x369
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x28
	.long	.Ldebug_ranges0+0
	.uleb128 0x20
	.long	.LASF251
	.byte	0x2
	.value	0x36e
	.byte	0x16
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x20
	.long	.LASF252
	.byte	0x2
	.value	0x372
	.byte	0x1a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF253
	.byte	0x2
	.value	0x373
	.byte	0x1f
	.long	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x1755
	.uleb128 0x23
	.string	"tmp"
	.byte	0x2
	.value	0x388
	.byte	0x25
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x23
	.string	"tmp"
	.byte	0x2
	.value	0x39a
	.byte	0x25
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x920
	.uleb128 0x2c
	.long	.LASF254
	.byte	0x2
	.value	0x33e
	.byte	0x1
	.long	0x8e6
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x17e4
	.uleb128 0x2b
	.string	"es"
	.byte	0x2
	.value	0x33e
	.byte	0x32
	.long	0x177b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"idx"
	.byte	0x2
	.value	0x33e
	.byte	0x3d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x343
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF255
	.byte	0x2
	.value	0x30a
	.byte	0x1
	.long	0x65
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1907
	.uleb128 0x2b
	.string	"es"
	.byte	0x2
	.value	0x30a
	.byte	0x2f
	.long	0x177b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF256
	.byte	0x2
	.value	0x30a
	.byte	0x3a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.long	.LASF222
	.byte	0x2
	.value	0x30b
	.byte	0x27
	.long	0x1907
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.long	.LASF161
	.byte	0x2
	.value	0x30b
	.byte	0x3e
	.long	0x190d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.long	.LASF250
	.byte	0x2
	.value	0x30c
	.byte	0x20
	.long	0x1913
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.long	.LASF223
	.long	0x14e7
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6538
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x312
	.byte	0xf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x20
	.long	.LASF257
	.byte	0x2
	.value	0x316
	.byte	0x12
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x20
	.long	.LASF258
	.byte	0x2
	.value	0x322
	.byte	0x1b
	.long	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF259
	.byte	0x2
	.value	0x323
	.byte	0x15
	.long	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x23
	.string	"tmp"
	.byte	0x2
	.value	0x32a
	.byte	0x19
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x49
	.uleb128 0x8
	.byte	0x8
	.long	0x6d3
	.uleb128 0x8
	.byte	0x8
	.long	0x2d
	.uleb128 0x31
	.long	.LASF260
	.byte	0x2
	.value	0x2f2
	.byte	0x1
	.long	0x8e6
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x199c
	.uleb128 0x2b
	.string	"es"
	.byte	0x2
	.value	0x2f2
	.byte	0x2c
	.long	0x177b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF256
	.byte	0x2
	.value	0x2f2
	.byte	0x37
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF261
	.byte	0x2
	.value	0x2f3
	.byte	0x1a
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.long	.LASF262
	.byte	0x2
	.value	0x2f3
	.byte	0x34
	.long	0x1913
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x2f5
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF263
	.byte	0x2
	.value	0x2db
	.byte	0x1
	.long	0x8e6
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a13
	.uleb128 0x22
	.long	.LASF264
	.byte	0x2
	.value	0x2db
	.byte	0x27
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF265
	.byte	0x2
	.value	0x2dc
	.byte	0x21
	.long	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"len"
	.byte	0x2
	.value	0x2dc
	.byte	0x39
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"new"
	.byte	0x2
	.value	0x2e1
	.byte	0x18
	.long	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF223
	.long	0x1a23
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6520
	.byte	0
	.uleb128 0xd
	.long	0xba
	.long	0x1a23
	.uleb128 0xe
	.long	0x39
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.long	0x1a13
	.uleb128 0x2a
	.long	.LASF266
	.byte	0x2
	.value	0x2c7
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a9b
	.uleb128 0x22
	.long	.LASF264
	.byte	0x2
	.value	0x2c7
	.byte	0x29
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF267
	.byte	0x2
	.value	0x2c7
	.byte	0x3d
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.LASF161
	.byte	0x2
	.value	0x2c8
	.byte	0x1d
	.long	0x6d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"new"
	.byte	0x2
	.value	0x2ca
	.byte	0x18
	.long	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF223
	.long	0x1aab
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6513
	.byte	0
	.uleb128 0xd
	.long	0xba
	.long	0x1aab
	.uleb128 0xe
	.long	0x39
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.long	0x1a9b
	.uleb128 0x2c
	.long	.LASF268
	.byte	0x2
	.value	0x2b1
	.byte	0x1
	.long	0x8e6
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b37
	.uleb128 0x22
	.long	.LASF264
	.byte	0x2
	.value	0x2b1
	.byte	0x26
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF269
	.byte	0x2
	.value	0x2b2
	.byte	0x20
	.long	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"len"
	.byte	0x2
	.value	0x2b2
	.byte	0x37
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF164
	.byte	0x2
	.value	0x2b4
	.byte	0x13
	.long	0x6df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"new"
	.byte	0x2
	.value	0x2b7
	.byte	0x18
	.long	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF223
	.long	0x1b47
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6506
	.byte	0
	.uleb128 0xd
	.long	0xba
	.long	0x1b47
	.uleb128 0xe
	.long	0x39
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.long	0x1b37
	.uleb128 0x2c
	.long	.LASF270
	.byte	0x2
	.value	0x292
	.byte	0x1
	.long	0x8e6
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bf5
	.uleb128 0x22
	.long	.LASF264
	.byte	0x2
	.value	0x292
	.byte	0x21
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF271
	.byte	0x2
	.value	0x292
	.byte	0x35
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.long	.LASF272
	.byte	0x2
	.value	0x292
	.byte	0x4a
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"new"
	.byte	0x2
	.value	0x2a0
	.byte	0x18
	.long	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF223
	.long	0x1c05
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6498
	.uleb128 0x29
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x20
	.long	.LASF273
	.byte	0x2
	.value	0x296
	.byte	0xd
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF274
	.byte	0x2
	.value	0x297
	.byte	0xd
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xba
	.long	0x1c05
	.uleb128 0xe
	.long	0x39
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	0x1bf5
	.uleb128 0x2a
	.long	.LASF275
	.byte	0x2
	.value	0x281
	.byte	0x1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c6b
	.uleb128 0x22
	.long	.LASF264
	.byte	0x2
	.value	0x281
	.byte	0x27
	.long	0xcf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"c"
	.byte	0x2
	.value	0x281
	.byte	0x3b
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"new"
	.byte	0x2
	.value	0x283
	.byte	0x18
	.long	0x858
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF223
	.long	0x1a23
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6489
	.byte	0
	.uleb128 0x2c
	.long	.LASF276
	.byte	0x2
	.value	0x246
	.byte	0x1
	.long	0xad
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d2e
	.uleb128 0x2b
	.string	"s"
	.byte	0x2
	.value	0x246
	.byte	0x21
	.long	0x2a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"len"
	.byte	0x2
	.value	0x246
	.byte	0x2b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.long	.LASF277
	.byte	0x2
	.value	0x24a
	.byte	0x9
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"p"
	.byte	0x2
	.value	0x24b
	.byte	0x9
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x24d
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x23
	.string	"buf"
	.byte	0x2
	.value	0x24f
	.byte	0xc
	.long	0x1d2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x23
	.string	"tmp"
	.byte	0x2
	.value	0x250
	.byte	0x13
	.long	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"c"
	.byte	0x2
	.value	0x251
	.byte	0x15
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xb3
	.long	0x1d3e
	.uleb128 0xe
	.long	0x39
	.byte	0x4
	.byte	0
	.uleb128 0x2c
	.long	.LASF278
	.byte	0x2
	.value	0x22e
	.byte	0x1
	.long	0xad
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d80
	.uleb128 0x2b
	.string	"c"
	.byte	0x2
	.value	0x22e
	.byte	0x24
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"buf"
	.byte	0x2
	.value	0x230
	.byte	0x9
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF279
	.byte	0x2
	.value	0x21f
	.byte	0x1
	.long	0x6df
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dd2
	.uleb128 0x22
	.long	.LASF280
	.byte	0x2
	.value	0x21f
	.byte	0x21
	.long	0x2a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"len"
	.byte	0x2
	.value	0x21f
	.byte	0x33
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x221
	.byte	0x13
	.long	0x6df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF281
	.byte	0x2
	.value	0x1b0
	.byte	0x1
	.long	0x8e6
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e88
	.uleb128 0x2b
	.string	"s"
	.byte	0x2
	.value	0x1b0
	.byte	0x16
	.long	0x2a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"es"
	.byte	0x2
	.value	0x1b0
	.byte	0x2a
	.long	0x1e88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.string	"len"
	.byte	0x2
	.value	0x1b2
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"j"
	.byte	0x2
	.value	0x1b7
	.byte	0x10
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x1b8
	.byte	0x15
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x23
	.string	"c"
	.byte	0x2
	.value	0x1ba
	.byte	0x15
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x20
	.long	.LASF282
	.byte	0x2
	.value	0x1bb
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x8ed
	.uleb128 0x2a
	.long	.LASF283
	.byte	0x2
	.value	0x1a1
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ebd
	.uleb128 0x2b
	.string	"es"
	.byte	0x2
	.value	0x1a1
	.byte	0x1b
	.long	0x1e88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF284
	.byte	0x2
	.value	0x16f
	.byte	0x1
	.long	0x8e6
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f0f
	.uleb128 0x22
	.long	.LASF164
	.byte	0x2
	.value	0x16f
	.byte	0x27
	.long	0x6df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"c"
	.byte	0x2
	.value	0x16f
	.byte	0x41
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF248
	.byte	0x2
	.value	0x171
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF285
	.byte	0x2
	.value	0x166
	.byte	0x1
	.long	0x8e6
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f51
	.uleb128 0x22
	.long	.LASF286
	.byte	0x2
	.value	0x166
	.byte	0x26
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2b
	.string	"c"
	.byte	0x2
	.value	0x166
	.byte	0x41
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF288
	.byte	0x2
	.value	0x119
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f81
	.uleb128 0x22
	.long	.LASF289
	.byte	0x2
	.value	0x119
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x33
	.long	.LASF290
	.byte	0x2
	.byte	0xc2
	.byte	0x1
	.long	0x8e6
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fcc
	.uleb128 0x34
	.string	"es"
	.byte	0x2
	.byte	0xc2
	.byte	0x22
	.long	0x177b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"i"
	.byte	0x2
	.byte	0xc2
	.byte	0x2d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.string	"c"
	.byte	0x2
	.byte	0xc2
	.byte	0x35
	.long	0xb3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.long	.LASF291
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x2071
	.uleb128 0x22
	.long	.LASF292
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x35
	.long	.LASF293
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x2027
	.uleb128 0x36
	.long	.LASF292
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2a7
	.byte	0
	.uleb128 0x36
	.long	.LASF294
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2a7
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	0x1ffc
	.uleb128 0x20
	.long	.LASF293
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x2081
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x20
	.long	.LASF294
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x20
	.long	.LASF295
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x2086
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x20
	.long	.LASF296
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x2027
	.long	0x2081
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	0x2071
	.uleb128 0x8
	.byte	0x8
	.long	0x2027
	.uleb128 0x37
	.long	.LASF297
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0x49
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0xb3
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB45-.Ltext0
	.quad	.LBE45-.Ltext0
	.quad	.LBB55-.Ltext0
	.quad	.LBE55-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB47-.Ltext0
	.quad	.LBE47-.Ltext0
	.quad	.LBB50-.Ltext0
	.quad	.LBE50-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB48-.Ltext0
	.quad	.LBE48-.Ltext0
	.quad	.LBB49-.Ltext0
	.quad	.LBE49-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"size_t"
.LASF302:
	.string	"try_bracketed_repeat"
.LASF97:
	.string	"GETOPT_HELP_CHAR"
.LASF92:
	.string	"_ISgraph"
.LASF172:
	.string	"tail"
.LASF228:
	.string	"len_s1"
.LASF163:
	.string	"range"
.LASF44:
	.string	"_IO_codecvt"
.LASF210:
	.string	"n_saved"
.LASF24:
	.string	"_IO_save_end"
.LASF298:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF213:
	.string	"squeeze_filter"
.LASF242:
	.string	"cardinality"
.LASF279:
	.string	"look_up_char_class"
.LASF145:
	.string	"CC_UPPER"
.LASF74:
	.string	"_sys_siglist"
.LASF247:
	.string	"build_spec_list"
.LASF55:
	.string	"time_t"
.LASF17:
	.string	"_IO_write_base"
.LASF138:
	.string	"CC_CNTRL"
.LASF183:
	.string	"squeeze_repeats"
.LASF151:
	.string	"UL_NONE"
.LASF173:
	.string	"state"
.LASF197:
	.string	"min_operands"
.LASF116:
	.string	"error_one_per_line"
.LASF33:
	.string	"_lock"
.LASF259:
	.string	"d_end"
.LASF215:
	.string	"NOT_A_CHAR"
.LASF129:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF168:
	.string	"type"
.LASF22:
	.string	"_IO_save_base"
.LASF233:
	.string	"n_upper"
.LASF148:
	.string	"Upper_Lower_class"
.LASF26:
	.string	"_chain"
.LASF30:
	.string	"_cur_column"
.LASF49:
	.string	"sys_nerr"
.LASF261:
	.string	"pre_bracket_char"
.LASF248:
	.string	"result"
.LASF286:
	.string	"equiv_class"
.LASF51:
	.string	"_sys_nerr"
.LASF76:
	.string	"__environ"
.LASF6:
	.string	"long int"
.LASF65:
	.string	"has_arg"
.LASF209:
	.string	"read_and_delete"
.LASF244:
	.string	"class"
.LASF43:
	.string	"_IO_marker"
.LASF287:
	.string	"main"
.LASF91:
	.string	"_ISprint"
.LASF171:
	.string	"head"
.LASF219:
	.string	"validate"
.LASF122:
	.string	"FADVISE_RANDOM"
.LASF4:
	.string	"signed char"
.LASF212:
	.string	"set_initialize"
.LASF62:
	.string	"_IO_FILE"
.LASF69:
	.string	"__timezone"
.LASF161:
	.string	"repeat_count"
.LASF45:
	.string	"_IO_wide_data"
.LASF223:
	.string	"__PRETTY_FUNCTION__"
.LASF181:
	.string	"E_string"
.LASF112:
	.string	"quoting_style_args"
.LASF77:
	.string	"environ"
.LASF136:
	.string	"CC_ALPHA"
.LASF2:
	.string	"unsigned char"
.LASF37:
	.string	"_freeres_list"
.LASF149:
	.string	"UL_LOWER"
.LASF222:
	.string	"char_to_repeat"
.LASF126:
	.string	"strtol_error"
.LASF291:
	.string	"emit_ancillary_info"
.LASF115:
	.string	"error_message_count"
.LASF137:
	.string	"CC_BLANK"
.LASF256:
	.string	"start_idx"
.LASF67:
	.string	"__tzname"
.LASF180:
	.string	"_Bool"
.LASF135:
	.string	"CC_ALNUM"
.LASF192:
	.string	"xlate"
.LASF250:
	.string	"closing_bracket_idx"
.LASF118:
	.string	"FADVISE_SEQUENTIAL"
.LASF220:
	.string	"homogeneous_spec_list"
.LASF12:
	.string	"char"
.LASF144:
	.string	"CC_SPACE"
.LASF134:
	.string	"Char_class"
.LASF301:
	.string	"_IO_lock_t"
.LASF170:
	.string	"Spec_list"
.LASF157:
	.string	"RE_REPEATED_CHAR"
.LASF72:
	.string	"timezone"
.LASF105:
	.string	"shell_escape_always_quoting_style"
.LASF162:
	.string	"normal_char"
.LASF14:
	.string	"_IO_read_ptr"
.LASF262:
	.string	"result_idx"
.LASF46:
	.string	"stdin"
.LASF50:
	.string	"sys_errlist"
.LASF243:
	.string	"get_next"
.LASF25:
	.string	"_markers"
.LASF100:
	.string	"program_name"
.LASF95:
	.string	"_ISpunct"
.LASF252:
	.string	"opnd_str_len"
.LASF190:
	.string	"in_squeeze_set"
.LASF265:
	.string	"equiv_class_str"
.LASF283:
	.string	"es_free"
.LASF107:
	.string	"c_maybe_quoting_style"
.LASF141:
	.string	"CC_LOWER"
.LASF130:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF294:
	.string	"node"
.LASF225:
	.string	"spec_list"
.LASF119:
	.string	"FADVISE_NOREUSE"
.LASF78:
	.string	"program_invocation_name"
.LASF214:
	.string	"reader"
.LASF34:
	.string	"_offset"
.LASF249:
	.string	"matched_multi_char_construct"
.LASF146:
	.string	"CC_XDIGIT"
.LASF193:
	.string	"long_options"
.LASF184:
	.string	"delete"
.LASF155:
	.string	"RE_CHAR_CLASS"
.LASF276:
	.string	"make_printable_str"
.LASF128:
	.string	"LONGINT_OVERFLOW"
.LASF59:
	.string	"optind"
.LASF221:
	.string	"string2_extend"
.LASF234:
	.string	"n_lower"
.LASF185:
	.string	"complement"
.LASF110:
	.string	"clocale_quoting_style"
.LASF240:
	.string	"s2_new_element"
.LASF114:
	.string	"error_print_progname"
.LASF0:
	.string	"long unsigned int"
.LASF289:
	.string	"status"
.LASF28:
	.string	"_flags2"
.LASF188:
	.string	"io_buf"
.LASF16:
	.string	"_IO_read_base"
.LASF177:
	.string	"has_equiv_class"
.LASF251:
	.string	"closing_delim_idx"
.LASF63:
	.string	"option"
.LASF41:
	.string	"_unused2"
.LASF255:
	.string	"find_bracketed_repeat"
.LASF89:
	.string	"_ISxdigit"
.LASF194:
	.string	"argc"
.LASF29:
	.string	"_old_offset"
.LASF293:
	.string	"infomap"
.LASF195:
	.string	"argv"
.LASF139:
	.string	"CC_DIGIT"
.LASF271:
	.string	"first"
.LASF102:
	.string	"shell_quoting_style"
.LASF232:
	.string	"validate_case_classes"
.LASF206:
	.string	"in_set"
.LASF53:
	.string	"long long int"
.LASF292:
	.string	"program"
.LASF80:
	.string	"Version"
.LASF81:
	.string	"exit_failure"
.LASF56:
	.string	"_gl_cxxalias_dummy"
.LASF224:
	.string	"parse_str"
.LASF231:
	.string	"new_length"
.LASF85:
	.string	"_ISupper"
.LASF230:
	.string	"get_spec_stats"
.LASF106:
	.string	"c_quoting_style"
.LASF120:
	.string	"FADVISE_DONTNEED"
.LASF199:
	.string	"buf1"
.LASF200:
	.string	"buf2"
.LASF94:
	.string	"_IScntrl"
.LASF147:
	.string	"CC_NO_CLASS"
.LASF19:
	.string	"_IO_write_end"
.LASF267:
	.string	"the_char"
.LASF270:
	.string	"append_range"
.LASF82:
	.string	"uintmax_t"
.LASF226:
	.string	"spec_init"
.LASF131:
	.string	"LONGINT_INVALID"
.LASF164:
	.string	"char_class"
.LASF75:
	.string	"sys_siglist"
.LASF133:
	.string	"count"
.LASF284:
	.string	"is_char_class_member"
.LASF98:
	.string	"GETOPT_VERSION_CHAR"
.LASF20:
	.string	"_IO_buf_base"
.LASF1:
	.string	"unsigned int"
.LASF99:
	.string	"version_etc_copyright"
.LASF275:
	.string	"append_normal_char"
.LASF140:
	.string	"CC_GRAPH"
.LASF113:
	.string	"quoting_style_vals"
.LASF101:
	.string	"literal_quoting_style"
.LASF70:
	.string	"tzname"
.LASF39:
	.string	"__pad5"
.LASF66:
	.string	"flag"
.LASF123:
	.string	"quoting_options"
.LASF13:
	.string	"_flags"
.LASF296:
	.string	"lc_messages"
.LASF264:
	.string	"list"
.LASF124:
	.string	"quote_quoting_options"
.LASF253:
	.string	"opnd_str"
.LASF189:
	.string	"char_class_name"
.LASF40:
	.string	"_mode"
.LASF236:
	.string	"old_s2_len"
.LASF117:
	.string	"FADVISE_NORMAL"
.LASF35:
	.string	"_codecvt"
.LASF84:
	.string	"LOG10_TIMESPEC_HZ"
.LASF121:
	.string	"FADVISE_WILLNEED"
.LASF179:
	.string	"has_restricted_char_class"
.LASF273:
	.string	"tmp1"
.LASF54:
	.string	"long double"
.LASF238:
	.string	"s2_tail"
.LASF277:
	.string	"printable_buf"
.LASF42:
	.string	"FILE"
.LASF217:
	.string	"begin"
.LASF127:
	.string	"LONGINT_OK"
.LASF266:
	.string	"append_repeated_char"
.LASF167:
	.string	"List_element"
.LASF191:
	.string	"in_delete_set"
.LASF87:
	.string	"_ISalpha"
.LASF61:
	.string	"optopt"
.LASF204:
	.string	"bytes_read"
.LASF109:
	.string	"locale_quoting_style"
.LASF207:
	.string	"size"
.LASF57:
	.string	"long long unsigned int"
.LASF174:
	.string	"length"
.LASF211:
	.string	"plain_read"
.LASF93:
	.string	"_ISblank"
.LASF9:
	.string	"__off_t"
.LASF260:
	.string	"find_closing_delim"
.LASF152:
	.string	"Range_element_type"
.LASF125:
	.string	"quoting_style"
.LASF96:
	.string	"_ISalnum"
.LASF79:
	.string	"program_invocation_short_name"
.LASF198:
	.string	"max_operands"
.LASF237:
	.string	"s1_tail"
.LASF159:
	.string	"last_char"
.LASF274:
	.string	"tmp2"
.LASF263:
	.string	"append_equiv_class"
.LASF38:
	.string	"_freeres_buf"
.LASF90:
	.string	"_ISspace"
.LASF218:
	.string	"out_len"
.LASF142:
	.string	"CC_PRINT"
.LASF60:
	.string	"opterr"
.LASF285:
	.string	"is_equiv_class_member"
.LASF300:
	.string	"/root/coreutils"
.LASF11:
	.string	"__time_t"
.LASF281:
	.string	"unquote"
.LASF245:
	.string	"return_val"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF297:
	.string	"to_uchar"
.LASF176:
	.string	"indefinite_repeat_element"
.LASF103:
	.string	"shell_always_quoting_style"
.LASF10:
	.string	"__off64_t"
.LASF235:
	.string	"old_s1_len"
.LASF229:
	.string	"get_s1_spec_stats"
.LASF186:
	.string	"truncate_set1"
.LASF108:
	.string	"escape_quoting_style"
.LASF21:
	.string	"_IO_buf_end"
.LASF290:
	.string	"es_match"
.LASF182:
	.string	"escaped"
.LASF64:
	.string	"name"
.LASF86:
	.string	"_ISlower"
.LASF227:
	.string	"get_s2_spec_stats"
.LASF201:
	.string	"in_s1"
.LASF295:
	.string	"map_prog"
.LASF205:
	.string	"complement_this_set"
.LASF48:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF153:
	.string	"RE_NORMAL_CHAR"
.LASF158:
	.string	"first_char"
.LASF299:
	.string	"src/tr.c"
.LASF282:
	.string	"oct_digit"
.LASF288:
	.string	"usage"
.LASF202:
	.string	"class_s1"
.LASF203:
	.string	"class_s2"
.LASF104:
	.string	"shell_escape_quoting_style"
.LASF31:
	.string	"_vtable_offset"
.LASF52:
	.string	"_sys_errlist"
.LASF8:
	.string	"__uintmax_t"
.LASF83:
	.string	"TIMESPEC_HZ"
.LASF160:
	.string	"the_repeated_char"
.LASF68:
	.string	"__daylight"
.LASF156:
	.string	"RE_EQUIV_CLASS"
.LASF208:
	.string	"read_and_xlate"
.LASF15:
	.string	"_IO_read_end"
.LASF143:
	.string	"CC_PUNCT"
.LASF154:
	.string	"RE_RANGE"
.LASF73:
	.string	"getdate_err"
.LASF178:
	.string	"has_char_class"
.LASF278:
	.string	"make_printable_char"
.LASF27:
	.string	"_fileno"
.LASF268:
	.string	"append_char_class"
.LASF36:
	.string	"_wide_data"
.LASF165:
	.string	"equiv_code"
.LASF58:
	.string	"optarg"
.LASF175:
	.string	"n_indefinite_repeats"
.LASF88:
	.string	"_ISdigit"
.LASF150:
	.string	"UL_UPPER"
.LASF3:
	.string	"short unsigned int"
.LASF47:
	.string	"stdout"
.LASF280:
	.string	"class_str"
.LASF258:
	.string	"digit_str"
.LASF18:
	.string	"_IO_write_ptr"
.LASF254:
	.string	"star_digits_closebracket"
.LASF246:
	.string	"skip_construct"
.LASF241:
	.string	"card_of_complement"
.LASF71:
	.string	"daylight"
.LASF196:
	.string	"non_option_args"
.LASF187:
	.string	"translating"
.LASF269:
	.string	"char_class_str"
.LASF132:
	.string	"N_CHARS"
.LASF216:
	.string	"char_to_squeeze"
.LASF166:
	.string	"repeated_char"
.LASF169:
	.string	"next"
.LASF111:
	.string	"custom_quoting_style"
.LASF239:
	.string	"s1_new_element"
.LASF272:
	.string	"last"
.LASF257:
	.string	"digit_str_len"
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
