	.file	"tail.c"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC0:
	.string	"\nWith no FILE, or when FILE is -, read standard input.\n"
	.text
	.type	emit_stdin_note, @function
emit_stdin_note:
.LFB35:
	.file 1 "src/system.h"
	.loc 1 582 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 583 3
	movq	stdout(%rip), %rbx
	leaq	.LC0(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 1 586 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	emit_stdin_note, .-emit_stdin_note
	.section	.rodata
	.align 8
.LC1:
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
	leaq	.LC1(%rip), %rdi
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
.LC2:
	.string	"["
.LC3:
	.string	"test invocation"
.LC4:
	.string	"coreutils"
.LC5:
	.string	"Multi-call invocation"
.LC6:
	.string	"sha224sum"
.LC7:
	.string	"sha2 utilities"
.LC8:
	.string	"sha256sum"
.LC9:
	.string	"sha384sum"
.LC10:
	.string	"sha512sum"
.LC11:
	.string	"\n%s online help: <%s>\n"
	.align 8
.LC12:
	.string	"https://www.gnu.org/software/coreutils/"
.LC13:
	.string	"GNU coreutils"
.LC14:
	.string	"en_"
	.align 8
.LC15:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
.LC16:
	.string	"Full documentation <%s%s>\n"
.LC17:
	.string	" invocation"
.LC18:
	.string	""
	.align 8
.LC19:
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
	leaq	.LC2(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC7(%rip), %rax
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
	leaq	.LC11(%rip), %rdi
	call	gettext@PLT
	.loc 1 655 3
	leaq	.LC12(%rip), %rdx
	leaq	.LC13(%rip), %rsi
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
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L8
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L8:
	.loc 1 669 11
	leaq	.LC16(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 669 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC12(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 671 3
	movq	-168(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.L9
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC17(%rip), %rbx
	jmp	.L10
.L9:
	.loc 1 671 3 discriminator 2
	leaq	.LC18(%rip), %rbx
.L10:
	.loc 1 671 11 is_stmt 1 discriminator 4
	leaq	.LC19(%rip), %rdi
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
	.type	usable_st_size, @function
usable_st_size:
.LFB43:
	.loc 1 706 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 707 11
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 708 31
	cmpl	$32768, %eax
	je	.L13
	.loc 1 707 36 discriminator 2
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 708 31 discriminator 2
	cmpl	$40960, %eax
	jne	.L14
.L13:
	.loc 1 708 31 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L15
.L14:
	.loc 1 708 31 discriminator 4
	movl	$0, %eax
.L15:
	.loc 1 708 31 discriminator 6
	andl	$1, %eax
	.loc 1 709 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	usable_st_size, .-usable_st_size
	.type	is_local_fs_type, @function
is_local_fs_type:
.LFB59:
	.file 2 "src/fs-is-local.h"
	.loc 2 6 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 7 3
	movl	$4283649346, %eax
	cmpq	%rax, -8(%rbp)
	je	.L18
	movl	$4283649346, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$4266872130, %eax
	cmpq	%rax, -8(%rbp)
	je	.L20
	movl	$4266872130, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$4187351113, %eax
	cmpq	%rax, -8(%rbp)
	je	.L21
	movl	$4187351113, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$4185718668, %eax
	cmpq	%rax, -8(%rbp)
	je	.L22
	movl	$4185718668, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$4076150800, %eax
	cmpq	%rax, -8(%rbp)
	je	.L23
	movl	$4076150800, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$3774210530, %eax
	cmpq	%rax, -8(%rbp)
	je	.L24
	movl	$3774210530, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$3730735588, %eax
	cmpq	%rax, -8(%rbp)
	je	.L25
	movl	$3730735588, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$3405662737, %eax
	cmpq	%rax, -8(%rbp)
	je	.L26
	movl	$3405662737, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$3380511080, %eax
	cmpq	%rax, -8(%rbp)
	je	.L27
	movl	$3380511080, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$3344373136, %eax
	cmpq	%rax, -8(%rbp)
	je	.L28
	movl	$3344373136, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$3203391149, %eax
	cmpq	%rax, -8(%rbp)
	je	.L29
	movl	$3203391149, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$3133910204, %eax
	cmpq	%rax, -8(%rbp)
	je	.L30
	movl	$3133910204, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$2881100148, %eax
	cmpq	%rax, -8(%rbp)
	je	.L31
	movl	$2881100148, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$2866260714, %eax
	cmpq	%rax, -8(%rbp)
	je	.L32
	movl	$2866260714, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$2768370933, %eax
	cmpq	%rax, -8(%rbp)
	je	.L33
	movl	$2768370933, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$2508478710, %eax
	cmpq	%rax, -8(%rbp)
	je	.L34
	movl	$2508478710, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$2435016766, %eax
	cmpq	%rax, -8(%rbp)
	je	.L35
	movl	$2435016766, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	movl	$2240043254, %eax
	cmpq	%rax, -8(%rbp)
	je	.L36
	movl	$2240043254, %eax
	cmpq	%rax, -8(%rbp)
	ja	.L19
	cmpq	$2088527475, -8(%rbp)
	je	.L37
	cmpq	$2088527475, -8(%rbp)
	ja	.L19
	cmpq	$2035054128, -8(%rbp)
	je	.L38
	cmpq	$2035054128, -8(%rbp)
	ja	.L19
	cmpq	$2020557398, -8(%rbp)
	je	.L39
	cmpq	$2020557398, -8(%rbp)
	ja	.L19
	cmpq	$1953653091, -8(%rbp)
	je	.L40
	cmpq	$1953653091, -8(%rbp)
	ja	.L19
	cmpq	$1952539503, -8(%rbp)
	je	.L41
	cmpq	$1952539503, -8(%rbp)
	ja	.L19
	cmpq	$1937076805, -8(%rbp)
	je	.L42
	cmpq	$1937076805, -8(%rbp)
	ja	.L19
	cmpq	$1936880249, -8(%rbp)
	je	.L43
	cmpq	$1936880249, -8(%rbp)
	ja	.L19
	cmpq	$1936814952, -8(%rbp)
	je	.L44
	cmpq	$1936814952, -8(%rbp)
	ja	.L19
	cmpq	$1935894131, -8(%rbp)
	je	.L45
	cmpq	$1935894131, -8(%rbp)
	ja	.L19
	cmpq	$1853056627, -8(%rbp)
	je	.L46
	cmpq	$1853056627, -8(%rbp)
	ja	.L19
	cmpq	$1852207972, -8(%rbp)
	je	.L47
	cmpq	$1852207972, -8(%rbp)
	ja	.L19
	cmpq	$1819242352, -8(%rbp)
	je	.L48
	cmpq	$1819242352, -8(%rbp)
	ja	.L19
	cmpq	$1799439955, -8(%rbp)
	je	.L49
	cmpq	$1799439955, -8(%rbp)
	ja	.L19
	cmpq	$1746473250, -8(%rbp)
	je	.L50
	cmpq	$1746473250, -8(%rbp)
	ja	.L19
	cmpq	$1733912937, -8(%rbp)
	je	.L51
	cmpq	$1733912937, -8(%rbp)
	ja	.L19
	cmpq	$1702057286, -8(%rbp)
	je	.L52
	cmpq	$1702057286, -8(%rbp)
	ja	.L19
	cmpq	$1702057283, -8(%rbp)
	je	.L53
	cmpq	$1702057283, -8(%rbp)
	ja	.L19
	cmpq	$1684300152, -8(%rbp)
	je	.L54
	cmpq	$1684300152, -8(%rbp)
	ja	.L19
	cmpq	$1684170528, -8(%rbp)
	je	.L55
	cmpq	$1684170528, -8(%rbp)
	ja	.L19
	cmpq	$1667723888, -8(%rbp)
	je	.L56
	cmpq	$1667723888, -8(%rbp)
	ja	.L19
	cmpq	$1650812274, -8(%rbp)
	je	.L57
	cmpq	$1650812274, -8(%rbp)
	ja	.L19
	cmpq	$1650812272, -8(%rbp)
	je	.L58
	cmpq	$1650812272, -8(%rbp)
	ja	.L19
	cmpq	$1650746742, -8(%rbp)
	je	.L59
	cmpq	$1650746742, -8(%rbp)
	ja	.L19
	cmpq	$1635083891, -8(%rbp)
	je	.L60
	cmpq	$1635083891, -8(%rbp)
	ja	.L19
	cmpq	$1634035564, -8(%rbp)
	je	.L61
	cmpq	$1634035564, -8(%rbp)
	ja	.L19
	cmpq	$1633904243, -8(%rbp)
	je	.L62
	cmpq	$1633904243, -8(%rbp)
	ja	.L19
	cmpq	$1573531125, -8(%rbp)
	je	.L63
	cmpq	$1573531125, -8(%rbp)
	ja	.L19
	cmpq	$1515144787, -8(%rbp)
	je	.L64
	cmpq	$1515144787, -8(%rbp)
	ja	.L19
	cmpq	$1513908720, -8(%rbp)
	je	.L65
	cmpq	$1513908720, -8(%rbp)
	ja	.L19
	cmpq	$1481003842, -8(%rbp)
	je	.L66
	cmpq	$1481003842, -8(%rbp)
	ja	.L19
	cmpq	$1479104553, -8(%rbp)
	je	.L67
	cmpq	$1479104553, -8(%rbp)
	ja	.L19
	cmpq	$1448756819, -8(%rbp)
	je	.L68
	cmpq	$1448756819, -8(%rbp)
	ja	.L19
	cmpq	$1410924800, -8(%rbp)
	je	.L69
	cmpq	$1410924800, -8(%rbp)
	ja	.L19
	cmpq	$1397703499, -8(%rbp)
	je	.L70
	cmpq	$1397703499, -8(%rbp)
	ja	.L19
	cmpq	$1397118030, -8(%rbp)
	je	.L71
	cmpq	$1397118030, -8(%rbp)
	ja	.L19
	cmpq	$1397114950, -8(%rbp)
	je	.L72
	cmpq	$1397114950, -8(%rbp)
	ja	.L19
	cmpq	$1397113167, -8(%rbp)
	je	.L73
	cmpq	$1397113167, -8(%rbp)
	ja	.L19
	cmpq	$1397109069, -8(%rbp)
	je	.L74
	cmpq	$1397109069, -8(%rbp)
	ja	.L19
	cmpq	$1382369651, -8(%rbp)
	je	.L75
	cmpq	$1382369651, -8(%rbp)
	ja	.L19
	cmpq	$1346981957, -8(%rbp)
	je	.L76
	cmpq	$1346981957, -8(%rbp)
	ja	.L19
	cmpq	$1196443219, -8(%rbp)
	je	.L77
	cmpq	$1196443219, -8(%rbp)
	ja	.L19
	cmpq	$1163413075, -8(%rbp)
	je	.L78
	cmpq	$1163413075, -8(%rbp)
	ja	.L19
	cmpq	$1162691661, -8(%rbp)
	je	.L79
	cmpq	$1162691661, -8(%rbp)
	ja	.L19
	cmpq	$1161678120, -8(%rbp)
	je	.L80
	cmpq	$1161678120, -8(%rbp)
	ja	.L19
	cmpq	$1145913666, -8(%rbp)
	je	.L81
	cmpq	$1145913666, -8(%rbp)
	ja	.L19
	cmpq	$1128357203, -8(%rbp)
	je	.L82
	cmpq	$1128357203, -8(%rbp)
	ja	.L19
	cmpq	$1112100429, -8(%rbp)
	je	.L83
	cmpq	$1112100429, -8(%rbp)
	ja	.L19
	cmpq	$1111905073, -8(%rbp)
	je	.L84
	cmpq	$1111905073, -8(%rbp)
	ja	.L19
	cmpq	$827541066, -8(%rbp)
	je	.L85
	cmpq	$827541066, -8(%rbp)
	ja	.L19
	cmpq	$801189825, -8(%rbp)
	je	.L86
	cmpq	$801189825, -8(%rbp)
	ja	.L19
	cmpq	$732765674, -8(%rbp)
	je	.L87
	cmpq	$732765674, -8(%rbp)
	ja	.L19
	cmpq	$684539205, -8(%rbp)
	je	.L88
	cmpq	$684539205, -8(%rbp)
	ja	.L19
	cmpq	$604313861, -8(%rbp)
	je	.L89
	cmpq	$604313861, -8(%rbp)
	ja	.L19
	cmpq	$464386766, -8(%rbp)
	je	.L90
	cmpq	$464386766, -8(%rbp)
	ja	.L19
	cmpq	$428016422, -8(%rbp)
	je	.L91
	cmpq	$428016422, -8(%rbp)
	ja	.L19
	cmpq	$427819522, -8(%rbp)
	je	.L92
	cmpq	$427819522, -8(%rbp)
	ja	.L19
	cmpq	$352400198, -8(%rbp)
	je	.L93
	cmpq	$352400198, -8(%rbp)
	ja	.L19
	cmpq	$325456742, -8(%rbp)
	je	.L94
	cmpq	$325456742, -8(%rbp)
	ja	.L19
	cmpq	$288389204, -8(%rbp)
	je	.L95
	cmpq	$288389204, -8(%rbp)
	ja	.L19
	cmpq	$198183888, -8(%rbp)
	je	.L96
	cmpq	$198183888, -8(%rbp)
	ja	.L19
	cmpq	$195894762, -8(%rbp)
	je	.L97
	cmpq	$195894762, -8(%rbp)
	ja	.L19
	cmpq	$151263540, -8(%rbp)
	je	.L98
	cmpq	$151263540, -8(%rbp)
	ja	.L19
	cmpq	$124082209, -8(%rbp)
	je	.L99
	cmpq	$124082209, -8(%rbp)
	ja	.L19
	cmpq	$19993000, -8(%rbp)
	je	.L100
	cmpq	$19993000, -8(%rbp)
	ja	.L19
	cmpq	$19920823, -8(%rbp)
	je	.L101
	cmpq	$19920823, -8(%rbp)
	ja	.L19
	cmpq	$19920822, -8(%rbp)
	je	.L102
	cmpq	$19920822, -8(%rbp)
	ja	.L19
	cmpq	$19920821, -8(%rbp)
	je	.L103
	cmpq	$19920821, -8(%rbp)
	ja	.L19
	cmpq	$19920820, -8(%rbp)
	je	.L104
	cmpq	$19920820, -8(%rbp)
	ja	.L19
	cmpq	$19911021, -8(%rbp)
	je	.L105
	cmpq	$19911021, -8(%rbp)
	ja	.L19
	cmpq	$18225520, -8(%rbp)
	je	.L106
	cmpq	$18225520, -8(%rbp)
	ja	.L19
	cmpq	$16914839, -8(%rbp)
	je	.L107
	cmpq	$16914839, -8(%rbp)
	ja	.L19
	cmpq	$16914836, -8(%rbp)
	je	.L108
	cmpq	$16914836, -8(%rbp)
	ja	.L19
	cmpq	$12805120, -8(%rbp)
	je	.L109
	cmpq	$12805120, -8(%rbp)
	ja	.L19
	cmpq	$12648430, -8(%rbp)
	je	.L110
	cmpq	$12648430, -8(%rbp)
	ja	.L19
	cmpq	$4278867, -8(%rbp)
	je	.L111
	cmpq	$4278867, -8(%rbp)
	ja	.L19
	cmpq	$2613483, -8(%rbp)
	je	.L112
	cmpq	$2613483, -8(%rbp)
	ja	.L19
	cmpq	$72020, -8(%rbp)
	je	.L113
	cmpq	$72020, -8(%rbp)
	ja	.L19
	cmpq	$61791, -8(%rbp)
	je	.L114
	cmpq	$61791, -8(%rbp)
	ja	.L19
	cmpq	$61267, -8(%rbp)
	je	.L115
	cmpq	$61267, -8(%rbp)
	ja	.L19
	cmpq	$61265, -8(%rbp)
	je	.L116
	cmpq	$61265, -8(%rbp)
	ja	.L19
	cmpq	$44543, -8(%rbp)
	je	.L117
	cmpq	$44543, -8(%rbp)
	ja	.L19
	cmpq	$44533, -8(%rbp)
	je	.L118
	cmpq	$44533, -8(%rbp)
	ja	.L19
	cmpq	$40866, -8(%rbp)
	je	.L119
	cmpq	$40866, -8(%rbp)
	ja	.L19
	cmpq	$40865, -8(%rbp)
	je	.L120
	cmpq	$40865, -8(%rbp)
	ja	.L19
	cmpq	$40864, -8(%rbp)
	je	.L121
	cmpq	$40864, -8(%rbp)
	ja	.L19
	cmpq	$38496, -8(%rbp)
	je	.L122
	cmpq	$38496, -8(%rbp)
	ja	.L19
	cmpq	$29366, -8(%rbp)
	je	.L123
	cmpq	$29366, -8(%rbp)
	ja	.L19
	cmpq	$29301, -8(%rbp)
	je	.L124
	cmpq	$29301, -8(%rbp)
	ja	.L19
	cmpq	$26985, -8(%rbp)
	je	.L125
	cmpq	$26985, -8(%rbp)
	ja	.L19
	cmpq	$24053, -8(%rbp)
	je	.L126
	cmpq	$24053, -8(%rbp)
	ja	.L19
	cmpq	$22092, -8(%rbp)
	je	.L127
	cmpq	$22092, -8(%rbp)
	ja	.L19
	cmpq	$20859, -8(%rbp)
	je	.L128
	cmpq	$20859, -8(%rbp)
	ja	.L19
	cmpq	$19802, -8(%rbp)
	je	.L129
	cmpq	$19802, -8(%rbp)
	ja	.L19
	cmpq	$19780, -8(%rbp)
	je	.L130
	cmpq	$19780, -8(%rbp)
	ja	.L19
	cmpq	$18520, -8(%rbp)
	je	.L131
	cmpq	$18520, -8(%rbp)
	ja	.L19
	cmpq	$18475, -8(%rbp)
	je	.L132
	cmpq	$18475, -8(%rbp)
	ja	.L19
	cmpq	$16964, -8(%rbp)
	je	.L133
	cmpq	$16964, -8(%rbp)
	ja	.L19
	cmpq	$16390, -8(%rbp)
	je	.L134
	cmpq	$16390, -8(%rbp)
	ja	.L19
	cmpq	$16388, -8(%rbp)
	je	.L135
	cmpq	$16388, -8(%rbp)
	ja	.L19
	cmpq	$16384, -8(%rbp)
	je	.L136
	cmpq	$16384, -8(%rbp)
	ja	.L19
	cmpq	$13364, -8(%rbp)
	je	.L137
	cmpq	$13364, -8(%rbp)
	ja	.L19
	cmpq	$9336, -8(%rbp)
	je	.L138
	cmpq	$9336, -8(%rbp)
	ja	.L19
	cmpq	$9320, -8(%rbp)
	je	.L139
	cmpq	$9320, -8(%rbp)
	ja	.L19
	cmpq	$7377, -8(%rbp)
	je	.L140
	cmpq	$7377, -8(%rbp)
	ja	.L19
	cmpq	$5007, -8(%rbp)
	je	.L141
	cmpq	$5007, -8(%rbp)
	ja	.L19
	cmpq	$4991, -8(%rbp)
	je	.L142
	cmpq	$4991, -8(%rbp)
	ja	.L19
	cmpq	$4989, -8(%rbp)
	je	.L143
	cmpq	$4989, -8(%rbp)
	ja	.L19
	cmpq	$4979, -8(%rbp)
	je	.L144
	cmpq	$4979, -8(%rbp)
	ja	.L19
	cmpq	$1984, -8(%rbp)
	je	.L145
	cmpq	$1984, -8(%rbp)
	ja	.L19
	cmpq	$391, -8(%rbp)
	je	.L146
	cmpq	$391, -8(%rbp)
	ja	.L19
	cmpq	$47, -8(%rbp)
	je	.L147
	cmpq	$51, -8(%rbp)
	je	.L148
	jmp	.L19
.L65:
	.loc 2 9 33
	movl	$1, %eax
	jmp	.L149
.L62:
	.loc 2 10 33
	movl	$0, %eax
	jmp	.L149
.L118:
	.loc 2 11 33
	movl	$1, %eax
	jmp	.L149
.L117:
	.loc 2 12 33
	movl	$1, %eax
	jmp	.L149
.L73:
	.loc 2 13 32
	movl	$0, %eax
	jmp	.L149
.L98:
	.loc 2 14 42
	movl	$1, %eax
	jmp	.L149
.L60:
	.loc 2 15 33
	movl	$0, %eax
	jmp	.L149
.L146:
	.loc 2 16 35
	movl	$1, %eax
	jmp	.L149
.L94:
	.loc 2 17 40
	movl	$1, %eax
	jmp	.L149
.L84:
	.loc 2 18 33
	movl	$1, %eax
	jmp	.L149
.L59:
	.loc 2 19 35
	movl	$1, %eax
	jmp	.L149
.L90:
	.loc 2 20 32
	movl	$1, %eax
	jmp	.L149
.L48:
	.loc 2 21 37
	movl	$1, %eax
	jmp	.L149
.L26:
	.loc 2 22 35
	movl	$1, %eax
	jmp	.L149
.L83:
	.loc 2 23 37
	movl	$1, %eax
	jmp	.L149
.L35:
	.loc 2 24 34
	movl	$1, %eax
	jmp	.L149
.L43:
	.loc 2 25 39
	movl	$1, %eax
	jmp	.L149
.L109:
	.loc 2 26 33
	movl	$0, %eax
	jmp	.L149
.L112:
	.loc 2 27 35
	movl	$1, %eax
	jmp	.L149
.L56:
	.loc 2 28 36
	movl	$1, %eax
	jmp	.L149
.L18:
	.loc 2 29 33
	movl	$0, %eax
	jmp	.L149
.L42:
	.loc 2 30 33
	movl	$0, %eax
	jmp	.L149
.L101:
	.loc 2 31 32
	movl	$1, %eax
	jmp	.L149
.L58:
	.loc 2 32 37
	movl	$1, %eax
	jmp	.L149
.L88:
	.loc 2 33 35
	movl	$1, %eax
	jmp	.L149
.L80:
	.loc 2 34 40
	movl	$1, %eax
	jmp	.L149
.L54:
	.loc 2 35 34
	movl	$1, %eax
	jmp	.L149
.L55:
	.loc 2 36 36
	movl	$1, %eax
	jmp	.L149
.L144:
	.loc 2 37 34
	movl	$1, %eax
	jmp	.L149
.L79:
	.loc 2 38 35
	movl	$1, %eax
	jmp	.L149
.L140:
	.loc 2 39 35
	movl	$1, %eax
	jmp	.L149
.L81:
	.loc 2 40 36
	movl	$1, %eax
	jmp	.L149
.L114:
	.loc 2 41 37
	movl	$1, %eax
	jmp	.L149
.L25:
	.loc 2 42 37
	movl	$1, %eax
	jmp	.L149
.L111:
	.loc 2 43 32
	movl	$1, %eax
	jmp	.L149
.L24:
	.loc 2 44 37
	movl	$1, %eax
	jmp	.L149
.L78:
	.loc 2 45 33
	movl	$1, %eax
	jmp	.L149
.L126:
	.loc 2 46 34
	movl	$1, %eax
	jmp	.L149
.L143:
	.loc 2 47 32
	movl	$1, %eax
	jmp	.L149
.L115:
	.loc 2 48 33
	movl	$1, %eax
	jmp	.L149
.L116:
	.loc 2 49 37
	movl	$1, %eax
	jmp	.L149
.L23:
	.loc 2 50 33
	movl	$1, %eax
	jmp	.L149
.L134:
	.loc 2 51 32
	movl	$1, %eax
	jmp	.L149
.L91:
	.loc 2 52 34
	movl	$0, %eax
	jmp	.L149
.L52:
	.loc 2 53 36
	movl	$0, %eax
	jmp	.L149
.L53:
	.loc 2 54 36
	movl	$0, %eax
	jmp	.L149
.L97:
	.loc 2 55 36
	movl	$1, %eax
	jmp	.L149
.L106:
	.loc 2 56 32
	movl	$0, %eax
	jmp	.L149
.L77:
	.loc 2 57 33
	movl	$0, %eax
	jmp	.L149
.L133:
	.loc 2 58 32
	movl	$1, %eax
	jmp	.L149
.L132:
	.loc 2 59 37
	movl	$1, %eax
	jmp	.L149
.L131:
	.loc 2 60 34
	movl	$1, %eax
	jmp	.L149
.L110:
	.loc 2 61 35
	movl	$1, %eax
	jmp	.L149
.L21:
	.loc 2 62 33
	movl	$1, %eax
	jmp	.L149
.L34:
	.loc 2 63 38
	movl	$1, %eax
	jmp	.L149
.L95:
	.loc 2 64 41
	movl	$1, %eax
	jmp	.L149
.L100:
	.loc 2 65 34
	movl	$0, %eax
	jmp	.L149
.L87:
	.loc 2 66 38
	movl	$1, %eax
	jmp	.L149
.L122:
	.loc 2 67 34
	movl	$1, %eax
	jmp	.L149
.L135:
	.loc 2 68 40
	movl	$1, %eax
	jmp	.L149
.L136:
	.loc 2 69 38
	movl	$1, %eax
	jmp	.L149
.L145:
	.loc 2 70 33
	movl	$1, %eax
	jmp	.L149
.L123:
	.loc 2 71 34
	movl	$1, %eax
	jmp	.L149
.L85:
	.loc 2 72 32
	movl	$1, %eax
	jmp	.L149
.L49:
	.loc 2 73 33
	movl	$0, %eax
	jmp	.L149
.L27:
	.loc 2 74 34
	movl	$1, %eax
	jmp	.L149
.L96:
	.loc 2 75 35
	movl	$0, %eax
	jmp	.L149
.L74:
	.loc 2 76 33
	movl	$1, %eax
	jmp	.L149
.L142:
	.loc 2 77 34
	movl	$1, %eax
	jmp	.L149
.L141:
	.loc 2 78 37
	movl	$1, %eax
	jmp	.L149
.L139:
	.loc 2 79 37
	movl	$1, %eax
	jmp	.L149
.L138:
	.loc 2 80 40
	movl	$1, %eax
	jmp	.L149
.L129:
	.loc 2 81 37
	movl	$1, %eax
	jmp	.L149
.L92:
	.loc 2 82 35
	movl	$1, %eax
	jmp	.L149
.L130:
	.loc 2 83 34
	movl	$1, %eax
	jmp	.L149
.L127:
	.loc 2 84 32
	movl	$0, %eax
	jmp	.L149
.L125:
	.loc 2 85 32
	movl	$0, %eax
	jmp	.L149
.L47:
	.loc 2 86 33
	movl	$0, %eax
	jmp	.L149
.L137:
	.loc 2 87 34
	movl	$1, %eax
	jmp	.L149
.L46:
	.loc 2 88 33
	movl	$1, %eax
	jmp	.L149
.L71:
	.loc 2 89 33
	movl	$1, %eax
	jmp	.L149
.L120:
	.loc 2 90 37
	movl	$1, %eax
	jmp	.L149
.L41:
	.loc 2 91 34
	movl	$0, %eax
	jmp	.L149
.L38:
	.loc 2 92 38
	movl	$0, %eax
	jmp	.L149
.L32:
	.loc 2 93 34
	movl	$0, %eax
	jmp	.L149
.L76:
	.loc 2 94 35
	movl	$0, %eax
	jmp	.L149
.L28:
	.loc 2 95 36
	movl	$1, %eax
	jmp	.L149
.L37:
	.loc 2 96 35
	movl	$0, %eax
	jmp	.L149
.L121:
	.loc 2 97 33
	movl	$1, %eax
	jmp	.L149
.L61:
	.loc 2 98 37
	movl	$1, %eax
	jmp	.L149
.L147:
	.loc 2 99 33
	movl	$1, %eax
	jmp	.L149
.L50:
	.loc 2 100 33
	movl	$1, %eax
	jmp	.L149
.L36:
	.loc 2 101 34
	movl	$1, %eax
	jmp	.L149
.L99:
	.loc 2 102 37
	movl	$1, %eax
	jmp	.L149
.L75:
	.loc 2 103 37
	movl	$1, %eax
	jmp	.L149
.L124:
	.loc 2 104 34
	movl	$1, %eax
	jmp	.L149
.L51:
	.loc 2 105 39
	movl	$1, %eax
	jmp	.L149
.L63:
	.loc 2 106 37
	movl	$1, %eax
	jmp	.L149
.L45:
	.loc 2 107 39
	movl	$1, %eax
	jmp	.L149
.L22:
	.loc 2 108 36
	movl	$1, %eax
	jmp	.L149
.L82:
	.loc 2 109 34
	movl	$1, %eax
	jmp	.L149
.L128:
	.loc 2 110 32
	movl	$0, %eax
	jmp	.L149
.L20:
	.loc 2 111 33
	movl	$0, %eax
	jmp	.L149
.L29:
	.loc 2 112 33
	movl	$0, %eax
	jmp	.L149
.L70:
	.loc 2 113 35
	movl	$1, %eax
	jmp	.L149
.L44:
	.loc 2 114 37
	movl	$1, %eax
	jmp	.L149
.L57:
	.loc 2 115 34
	movl	$1, %eax
	jmp	.L149
.L102:
	.loc 2 116 34
	movl	$1, %eax
	jmp	.L149
.L103:
	.loc 2 117 34
	movl	$1, %eax
	jmp	.L149
.L108:
	.loc 2 118 34
	movl	$1, %eax
	jmp	.L149
.L40:
	.loc 2 119 36
	movl	$1, %eax
	jmp	.L149
.L89:
	.loc 2 120 34
	movl	$1, %eax
	jmp	.L149
.L93:
	.loc 2 121 32
	movl	$1, %eax
	jmp	.L149
.L113:
	.loc 2 122 32
	movl	$1, %eax
	jmp	.L149
.L69:
	.loc 2 123 44
	movl	$1, %eax
	jmp	.L149
.L119:
	.loc 2 124 37
	movl	$1, %eax
	jmp	.L149
.L107:
	.loc 2 125 33
	movl	$1, %eax
	jmp	.L149
.L39:
	.loc 2 126 35
	movl	$0, %eax
	jmp	.L149
.L30:
	.loc 2 127 35
	movl	$0, %eax
	jmp	.L149
.L33:
	.loc 2 128 33
	movl	$0, %eax
	jmp	.L149
.L68:
	.loc 2 129 33
	movl	$1, %eax
	jmp	.L149
.L72:
	.loc 2 130 34
	movl	$1, %eax
	jmp	.L149
.L31:
	.loc 2 131 34
	movl	$1, %eax
	jmp	.L149
.L104:
	.loc 2 132 34
	movl	$1, %eax
	jmp	.L149
.L66:
	.loc 2 133 32
	movl	$1, %eax
	jmp	.L149
.L105:
	.loc 2 134 34
	movl	$1, %eax
	jmp	.L149
.L148:
	.loc 2 135 35
	movl	$1, %eax
	jmp	.L149
.L86:
	.loc 2 136 32
	movl	$1, %eax
	jmp	.L149
.L64:
	.loc 2 137 35
	movl	$1, %eax
	jmp	.L149
.L67:
	.loc 2 138 37
	movl	$1, %eax
	jmp	.L149
.L19:
	.loc 2 139 23
	movl	$-1, %eax
.L149:
	.loc 2 141 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	is_local_fs_type, .-is_local_fs_type
	.section	.rodata
.LC20:
	.string	"descriptor"
.LC21:
	.string	"name"
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	follow_mode_string, @object
	.size	follow_mode_string, 24
follow_mode_string:
	.quad	.LC20
	.quad	.LC21
	.quad	0
	.section	.rodata
	.align 8
	.type	follow_mode_map, @object
	.size	follow_mode_map, 8
follow_mode_map:
	.long	2
	.long	1
	.local	reopen_inaccessible_files
	.comm	reopen_inaccessible_files,1,1
	.local	count_lines
	.comm	count_lines,1,1
	.data
	.align 4
	.type	follow_mode, @object
	.size	follow_mode, 4
follow_mode:
	.long	2
	.local	forever
	.comm	forever,1,1
	.local	monitor_output
	.comm	monitor_output,1,1
	.local	from_start
	.comm	from_start,1,1
	.local	print_headers
	.comm	print_headers,1,1
	.local	line_end
	.comm	line_end,1,1
	.align 8
	.type	max_n_unchanged_stats_between_opens, @object
	.size	max_n_unchanged_stats_between_opens, 8
max_n_unchanged_stats_between_opens:
	.quad	5
	.local	pid
	.comm	pid,4,4
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.local	presume_input_pipe
	.comm	presume_input_pipe,1,1
	.local	disable_inotify
	.comm	disable_inotify,1,1
	.section	.rodata
.LC22:
	.string	"bytes"
.LC23:
	.string	"follow"
.LC24:
	.string	"lines"
.LC25:
	.string	"max-unchanged-stats"
.LC26:
	.string	"-disable-inotify"
.LC27:
	.string	"pid"
.LC28:
	.string	"-presume-input-pipe"
.LC29:
	.string	"quiet"
.LC30:
	.string	"retry"
.LC31:
	.string	"silent"
.LC32:
	.string	"sleep-interval"
.LC33:
	.string	"verbose"
.LC34:
	.string	"zero-terminated"
.LC35:
	.string	"help"
.LC36:
	.string	"version"
	.section	.data.rel.ro.local
	.align 32
	.type	long_options, @object
	.size	long_options, 512
long_options:
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC23
	.long	2
	.zero	4
	.quad	0
	.long	132
	.zero	4
	.quad	.LC24
	.long	1
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC25
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	133
	.zero	4
	.quad	.LC27
	.long	1
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC29
	.long	0
	.zero	4
	.quad	0
	.long	113
	.zero	4
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC31
	.long	0
	.zero	4
	.quad	0
	.long	113
	.zero	4
	.quad	.LC32
	.long	1
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC33
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC34
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC35
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC36
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
.LC37:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC38:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC39:
	.string	"Print the last %d lines of each FILE to standard output.\nWith more than one FILE, precede each with a header giving the file name.\n"
	.align 8
.LC40:
	.string	"  -c, --bytes=[+]NUM       output the last NUM bytes; or use -c +NUM to\n                             output starting with byte NUM of each file\n"
	.align 8
.LC41:
	.string	"  -f, --follow[={name|descriptor}]\n                           output appended data as the file grows;\n                             an absent option argument means 'descriptor'\n  -F                       same as --follow=name --retry\n"
	.align 8
.LC42:
	.ascii	"  -n, --lines=[+]NUM       output the last NUM lines, instea"
	.ascii	"d of the last %d;\n                             or use -n +N"
	.ascii	"UM to output starting with line NUM\n      --max-unchanged-s"
	.ascii	"tats=N\n                           with --follow=name, reope"
	.ascii	"n a FILE which has not\n                             changed"
	.ascii	" "
	.string	"size after N (default %d) iterations\n                             to see if it has been unlinked or renamed\n                             (this is the usual case of rotated log files);\n                             with inotify, this option is rarely useful\n"
	.align 8
.LC43:
	.string	"      --pid=PID            with -f, terminate after process ID, PID dies\n  -q, --quiet, --silent    never output headers giving file names\n      --retry              keep trying to open a file if it is inaccessible\n"
	.align 8
.LC44:
	.ascii	"  -s, --sleep-interval=N   with -f, sleep for approximately "
	.ascii	"N seconds\n    "
	.string	"                         (default 1.0) between iterations;\n                             with inotify and --pid=P, check process P at\n                             least once every N seconds\n  -v, --verbose            always output headers giving file names\n"
	.align 8
.LC45:
	.string	"  -z, --zero-terminated    line delimiter is NUL, not newline\n"
	.align 8
.LC46:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC47:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC48:
	.string	"\nNUM may have a multiplier suffix:\nb 512, kB 1000, K 1024, MB 1000*1000, M 1024*1024,\nGB 1000*1000*1000, G 1024*1024*1024, and so on for T, P, E, Z, Y.\nBinary prefixes can be used, too: KiB=K, MiB=M, and so on.\n\n"
	.align 8
.LC49:
	.ascii	"With --follow (-f), tail defaults to following the file desc"
	.ascii	"riptor, which\nmeans that even if a tail'ed file is renamed,"
	.ascii	" tail will continue to track\nits end.  This default behavio"
	.ascii	"r "
	.string	"is not desirable when you really want to\ntrack the actual name of the file, not the file descriptor (e.g., log\nrotation).  Use --follow=name in that case.  That causes tail to track the\nnamed file in a way that accommodates renaming, removal and creation.\n"
.LC50:
	.string	"tail"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB60:
	.file 3 "src/tail.c"
	.loc 3 260 1
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
	.loc 3 261 6
	cmpl	$0, -20(%rbp)
	je	.L151
	.loc 3 262 5
	movq	program_name(%rip), %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L152
.L151:
	.loc 3 265 7
	movq	program_name(%rip), %rbx
	.loc 3 265 15
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	.loc 3 265 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 269 15
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	.loc 3 269 7
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 274 7
	call	emit_stdin_note
	.loc 3 275 7
	call	emit_mandatory_arg_note
	.loc 3 277 6
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 281 6
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 287 14
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	.loc 3 287 6
	movl	$5, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 300 6
	movq	stdout(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 305 6
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 312 6
	movq	stdout(%rip), %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 315 6
	movq	stdout(%rip), %rbx
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 316 6
	movq	stdout(%rip), %rbx
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 317 6
	movq	stdout(%rip), %rbx
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 325 6
	movq	stdout(%rip), %rbx
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 333 7
	leaq	.LC50(%rip), %rdi
	call	emit_ancillary_info
.L152:
	.loc 3 335 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE60:
	.size	usage, .-usage
	.type	die_pipe, @function
die_pipe:
.LFB61:
	.loc 3 341 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 342 3
	movl	$13, %edi
	call	raise@PLT
	.loc 3 343 3
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE61:
	.size	die_pipe, .-die_pipe
	.type	check_output_alive, @function
check_output_alive:
.LFB62:
	.loc 3 350 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	.loc 3 350 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 3 351 7
	movzbl	monitor_output(%rip), %eax
	xorl	$1, %eax
	.loc 3 351 6
	testb	%al, %al
	jne	.L159
	.loc 3 364 32
	movq	$0, -152(%rbp)
	.loc 3 364 23
	movq	-152(%rbp), %rax
	.loc 3 364 16
	movq	%rax, -160(%rbp)
.LBB2:
	.loc 3 367 3
	movl	$0, %eax
	movl	$16, %ecx
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rdi
#APP
# 367 "src/tail.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax
	movl	%ecx, %edx
	movl	%edx, -168(%rbp)
	movl	%eax, -164(%rbp)
.LBE2:
	.loc 3 368 3
	movq	-144(%rbp), %rax
	orq	$2, %rax
	movq	%rax, -144(%rbp)
	.loc 3 372 7
	leaq	-160(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$2, %edi
	call	select@PLT
	.loc 3 372 6
	cmpl	$1, %eax
	jne	.L154
	.loc 3 373 5
	call	die_pipe
.L159:
	.loc 3 352 5
	nop
.L154:
	.loc 3 375 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L158
	call	__stack_chk_fail@PLT
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	check_output_alive, .-check_output_alive
	.type	valid_file_spec, @function
valid_file_spec:
.LFB63:
	.loc 3 379 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 3 381 13
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	.loc 3 381 18
	cmpl	$-1, %eax
	sete	%al
	movzbl	%al, %edx
	.loc 3 381 29
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	.loc 3 381 38
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	.loc 3 381 25
	xorl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	.loc 3 382 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	valid_file_spec, .-valid_file_spec
	.section	.rodata
.LC51:
	.string	"-"
.LC52:
	.string	"standard input"
	.text
	.type	pretty_name, @function
pretty_name:
.LFB64:
	.loc 3 386 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 3 387 11
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 387 54
	testl	%eax, %eax
	jne	.L163
	.loc 3 387 34 discriminator 1
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	.loc 3 387 54 discriminator 1
	jmp	.L165
.L163:
	.loc 3 387 54 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L165:
	.loc 3 388 1 is_stmt 1 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	pretty_name, .-pretty_name
	.type	record_open_fd, @function
record_open_fd:
.LFB65:
	.loc 3 397 1
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
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -32(%rbp)
	.loc 3 398 9
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 56(%rax)
	.loc 3 399 11
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 3 400 14
	movq	-24(%rbp), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	.loc 3 401 14
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	.loc 3 401 10
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 3 402 14
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 3 402 10
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	.loc 3 403 15
	movq	-48(%rbp), %rax
	movl	24(%rax), %edx
	.loc 3 403 11
	movq	-24(%rbp), %rax
	movl	%edx, 48(%rax)
	.loc 3 404 15
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 64(%rax)
	.loc 3 405 24
	movq	-24(%rbp), %rax
	movq	$0, 88(%rax)
	.loc 3 406 13
	movq	-24(%rbp), %rax
	movb	$0, 52(%rax)
	.loc 3 407 1
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	record_open_fd, .-record_open_fd
	.section	.rodata
.LC53:
	.string	"closing %s (fd=%d)"
	.text
	.type	close_fd, @function
close_fd:
.LFB66:
	.loc 3 413 1
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
	movq	%rsi, -32(%rbp)
	.loc 3 414 6
	cmpl	$-1, -20(%rbp)
	je	.L169
	.loc 3 414 16 discriminator 1
	cmpl	$0, -20(%rbp)
	je	.L169
	.loc 3 414 41 discriminator 2
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 3 414 38 discriminator 2
	testl	%eax, %eax
	je	.L169
	.loc 3 416 7
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 416 24
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 416 17
	call	__errno_location@PLT
	.loc 3 416 7
	movl	(%rax), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %r8d
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L169:
	.loc 3 418 1
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	close_fd, .-close_fd
	.section	.rodata
.LC54:
	.string	"\n"
.LC55:
	.string	"%s==> %s <==\n"
	.text
	.type	write_header, @function
write_header:
.LFB67:
	.loc 3 422 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 3 425 41
	movzbl	first_file.6781(%rip), %eax
	.loc 3 425 3
	testb	%al, %al
	je	.L171
	.loc 3 425 3 is_stmt 0 discriminator 1
	leaq	.LC18(%rip), %rax
	jmp	.L172
.L171:
	.loc 3 425 3 discriminator 2
	leaq	.LC54(%rip), %rax
.L172:
	.loc 3 425 3 discriminator 4
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC55(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 426 14 is_stmt 1 discriminator 4
	movb	$0, first_file.6781(%rip)
	.loc 3 427 1 discriminator 4
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	write_header, .-write_header
	.section	.rodata
.LC56:
	.string	"standard output"
.LC57:
	.string	"error writing %s"
	.text
	.type	xwrite_stdout, @function
xwrite_stdout:
.LFB68:
	.loc 3 434 1
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 3 435 6
	cmpq	$0, -32(%rbp)
	je	.L175
	.loc 3 435 22 discriminator 1
	movq	stdout(%rip), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 3 435 19 discriminator 1
	cmpq	%rax, -32(%rbp)
	jbe	.L175
.LBB3:
	.loc 3 437 7
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	clearerr_unlocked@PLT
	.loc 3 438 7
	leaq	.LC56(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC57(%rip), %rdi
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
.L175:
.LBE3:
	.loc 3 441 1
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	xwrite_stdout, .-xwrite_stdout
	.section	.rodata
.LC58:
	.string	"error reading %s"
	.text
	.type	dump_remainder, @function
dump_remainder:
.LFB69:
	.loc 3 451 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, %eax
	movq	%rsi, -8272(%rbp)
	movl	%edx, -8264(%rbp)
	movq	%rcx, -8280(%rbp)
	movb	%al, -8260(%rbp)
	.loc 3 451 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 453 13
	movq	-8280(%rbp), %rax
	movq	%rax, -8248(%rbp)
	.loc 3 455 13
	movq	$0, -8256(%rbp)
.L183:
.LBB4:
	.loc 3 459 14
	movl	$8192, %eax
	cmpq	$8192, -8248(%rbp)
	cmovbe	-8248(%rbp), %rax
	movq	%rax, -8240(%rbp)
	.loc 3 460 27
	movq	-8240(%rbp), %rdx
	leaq	-8224(%rbp), %rcx
	movl	-8264(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -8232(%rbp)
	.loc 3 461 10
	cmpq	$-1, -8232(%rbp)
	jne	.L177
	.loc 3 463 15
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 463 14
	cmpl	$11, %eax
	je	.L186
.LBB5:
	.loc 3 464 13
	movq	-8272(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC58(%rip), %rdi
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
.L177:
.LBE5:
	.loc 3 468 10
	cmpq	$0, -8232(%rbp)
	je	.L187
	.loc 3 470 10
	cmpb	$0, -8260(%rbp)
	je	.L181
	.loc 3 472 11
	movq	-8272(%rbp), %rax
	movq	%rax, %rdi
	call	write_header
	.loc 3 473 23
	movb	$0, -8260(%rbp)
.L181:
	.loc 3 475 7
	movq	-8232(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
	.loc 3 476 17
	movq	-8232(%rbp), %rax
	addq	%rax, -8256(%rbp)
	.loc 3 477 10
	cmpq	$-1, -8280(%rbp)
	je	.L183
	.loc 3 479 23
	movq	-8232(%rbp), %rax
	subq	%rax, -8248(%rbp)
	.loc 3 480 14
	cmpq	$0, -8248(%rbp)
	je	.L179
	.loc 3 480 32 discriminator 1
	cmpq	$-2, -8280(%rbp)
	je	.L179
.LBE4:
	.loc 3 457 5
	jmp	.L183
.L186:
.LBB6:
	.loc 3 466 11
	nop
	jmp	.L179
.L187:
	.loc 3 469 9
	nop
.L179:
.LBE6:
	.loc 3 485 10
	movq	-8256(%rbp), %rax
	.loc 3 486 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L185
	call	__stack_chk_fail@PLT
.L185:
	addq	$8272, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	dump_remainder, .-dump_remainder
	.section	.rodata
.LC59:
	.string	"%s: cannot seek to offset %s"
	.align 8
.LC60:
	.string	"%s: cannot seek to relative offset %s"
	.align 8
.LC61:
	.string	"%s: cannot seek to end-relative offset %s"
	.text
	.type	xlseek, @function
xlseek:
.LFB70:
	.loc 3 495 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -72(%rbp)
	movq	%rcx, -88(%rbp)
	.loc 3 495 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 496 22
	movl	-72(%rbp), %edx
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -64(%rbp)
	.loc 3 500 6
	cmpq	$0, -64(%rbp)
	js	.L189
	.loc 3 501 12
	movq	-64(%rbp), %rax
	.loc 3 523 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L196
	jmp	.L197
.L189:
	.loc 3 503 7
	leaq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	offtostr@PLT
	movq	%rax, -56(%rbp)
	.loc 3 504 3
	cmpl	$2, -72(%rbp)
	je	.L191
	cmpl	$2, -72(%rbp)
	jg	.L192
	cmpl	$0, -72(%rbp)
	je	.L193
	cmpl	$1, -72(%rbp)
	je	.L194
	jmp	.L192
.L193:
	.loc 3 507 7
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 3 507 24
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 507 17
	call	__errno_location@PLT
	.loc 3 507 7
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 509 7
	jmp	.L195
.L194:
	.loc 3 511 7
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 3 511 24
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 511 17
	call	__errno_location@PLT
	.loc 3 511 7
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 513 7
	jmp	.L195
.L191:
	.loc 3 515 7
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 3 515 24
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 515 17
	call	__errno_location@PLT
	.loc 3 515 7
	movl	(%rax), %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 517 7
	jmp	.L195
.L192:
	.loc 3 519 7
	call	abort@PLT
.L195:
	.loc 3 522 3
	movl	$1, %edi
	call	exit@PLT
.L197:
	.loc 3 523 1
	call	__stack_chk_fail@PLT
.L196:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	xlseek, .-xlseek
	.type	file_lines, @function
file_lines:
.LFB71:
	.loc 3 537 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -8264(%rbp)
	movl	%esi, -8268(%rbp)
	movq	%rdx, -8280(%rbp)
	movq	%rcx, -8288(%rbp)
	movq	%r8, -8296(%rbp)
	movq	%r9, -8304(%rbp)
	.loc 3 537 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 540 9
	movq	-8296(%rbp), %rax
	movq	%rax, -8248(%rbp)
	.loc 3 542 6
	cmpq	$0, -8280(%rbp)
	jne	.L199
	.loc 3 543 12
	movl	$1, %eax
	jmp	.L212
.L199:
	.loc 3 547 21
	movq	-8248(%rbp), %rax
	subq	-8288(%rbp), %rax
	.loc 3 547 34
	cqto
	shrq	$51, %rdx
	addq	%rdx, %rax
	andl	$8191, %eax
	subq	%rdx, %rax
	.loc 3 547 14
	movq	%rax, -8256(%rbp)
	.loc 3 548 6
	cmpq	$0, -8256(%rbp)
	jne	.L201
	.loc 3 549 16
	movq	$8192, -8256(%rbp)
.L201:
	.loc 3 552 7
	movq	-8248(%rbp), %rax
	subq	-8256(%rbp), %rax
	movq	%rax, -8248(%rbp)
	.loc 3 553 3
	movq	-8264(%rbp), %rdx
	movq	-8248(%rbp), %rsi
	movl	-8268(%rbp), %eax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %edi
	call	xlseek
	.loc 3 554 16
	movq	-8256(%rbp), %rdx
	leaq	-8224(%rbp), %rcx
	movl	-8268(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -8256(%rbp)
	.loc 3 555 6
	cmpq	$-1, -8256(%rbp)
	jne	.L202
	.loc 3 557 7
	movq	-8264(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 557 24
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 557 17
	call	__errno_location@PLT
	.loc 3 557 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 558 14
	movl	$0, %eax
	jmp	.L212
.L202:
	.loc 3 560 19
	movq	-8248(%rbp), %rdx
	movq	-8256(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 560 13
	movq	-8304(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 3 563 6
	cmpq	$0, -8256(%rbp)
	je	.L211
	.loc 3 563 39 discriminator 1
	movq	-8256(%rbp), %rax
	subq	$1, %rax
	.loc 3 563 27 discriminator 1
	movzbl	-8224(%rbp,%rax), %edx
	.loc 3 563 44 discriminator 1
	movzbl	line_end(%rip), %eax
	.loc 3 563 18 discriminator 1
	cmpb	%al, %dl
	je	.L211
	.loc 3 564 5
	subq	$1, -8280(%rbp)
.L211:
.LBB7:
	.loc 3 570 14
	movq	-8256(%rbp), %rax
	movq	%rax, -8240(%rbp)
	.loc 3 571 13
	jmp	.L204
.L208:
.LBB8:
	.loc 3 574 16
	movzbl	line_end(%rip), %eax
	movsbl	%al, %ecx
	movq	-8240(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memrchr@PLT
	movq	%rax, -8232(%rbp)
	.loc 3 575 14
	cmpq	$0, -8232(%rbp)
	je	.L214
	.loc 3 577 18
	leaq	-8224(%rbp), %rax
	movq	-8232(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 3 577 13
	movq	%rax, -8240(%rbp)
	.loc 3 578 22
	movq	-8280(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -8280(%rbp)
	.loc 3 578 14
	testq	%rax, %rax
	jne	.L204
	.loc 3 582 35
	movq	-8256(%rbp), %rax
	subq	$1, %rax
	.loc 3 582 18
	cmpq	%rax, -8240(%rbp)
	je	.L207
	.loc 3 583 51
	movq	-8256(%rbp), %rax
	subq	-8240(%rbp), %rax
	.loc 3 583 17
	leaq	-1(%rax), %rdx
	movq	-8232(%rbp), %rax
	addq	$1, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
.L207:
	.loc 3 584 28
	movq	-8296(%rbp), %rax
	.loc 3 585 59
	movq	-8248(%rbp), %rcx
	movq	-8256(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 3 584 28
	subq	%rdx, %rax
	movq	%rax, %rcx
	movl	-8268(%rbp), %edx
	movq	-8264(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	dump_remainder
	.loc 3 584 25
	movq	-8304(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rax, %rdx
	movq	-8304(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 3 586 22
	movl	$1, %eax
	jmp	.L212
.L204:
.LBE8:
	.loc 3 571 13
	cmpq	$0, -8240(%rbp)
	jne	.L208
	jmp	.L206
.L214:
.LBB9:
	.loc 3 576 13
	nop
.L206:
.LBE9:
	.loc 3 591 10
	movq	-8248(%rbp), %rax
	cmpq	-8288(%rbp), %rax
	jne	.L209
	.loc 3 595 11
	movq	-8264(%rbp), %rdx
	movq	-8288(%rbp), %rsi
	movl	-8268(%rbp), %eax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %edi
	call	xlseek
	.loc 3 596 35
	movq	-8296(%rbp), %rcx
	movl	-8268(%rbp), %edx
	movq	-8264(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	dump_remainder
	.loc 3 596 33
	movq	-8288(%rbp), %rdx
	addq	%rax, %rdx
	.loc 3 596 21
	movq	-8304(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 3 598 18
	movl	$1, %eax
	jmp	.L212
.L209:
	.loc 3 600 11
	subq	$8192, -8248(%rbp)
	.loc 3 601 7
	movq	-8264(%rbp), %rdx
	movq	-8248(%rbp), %rsi
	movl	-8268(%rbp), %eax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %edi
	call	xlseek
	.loc 3 603 20
	leaq	-8224(%rbp), %rcx
	movl	-8268(%rbp), %eax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -8256(%rbp)
	.loc 3 604 10
	cmpq	$-1, -8256(%rbp)
	jne	.L210
	.loc 3 606 11
	movq	-8264(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 606 28
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 606 21
	call	__errno_location@PLT
	.loc 3 606 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 607 18
	movl	$0, %eax
	jmp	.L212
.L210:
	.loc 3 610 23
	movq	-8248(%rbp), %rdx
	movq	-8256(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 610 17
	movq	-8304(%rbp), %rax
	movq	%rdx, (%rax)
.LBE7:
	.loc 3 612 3
	cmpq	$0, -8256(%rbp)
	jne	.L211
	.loc 3 614 10
	movl	$1, %eax
.L212:
	.loc 3 615 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L213
	.loc 3 615 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L213:
	addq	$8288, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	file_lines, .-file_lines
	.section	.rodata
.LC62:
	.string	"src/tail.c"
.LC63:
	.string	"beg"
	.text
	.type	pipe_lines, @function
pipe_lines:
.LFB72:
	.loc 3 625 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	addq	$-128, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	.loc 3 635 10
	movq	$0, -72(%rbp)
	.loc 3 636 8
	movb	$1, -97(%rbp)
	.loc 3 639 18
	movl	$8216, %edi
	call	xmalloc@PLT
	movq	%rax, -88(%rbp)
	.loc 3 639 9
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 3 640 33
	movq	-96(%rbp), %rax
	movq	$0, 8200(%rax)
	.loc 3 640 24
	movq	-96(%rbp), %rax
	movq	8200(%rax), %rdx
	.loc 3 640 17
	movq	-96(%rbp), %rax
	movq	%rdx, 8192(%rax)
	.loc 3 641 15
	movq	-96(%rbp), %rax
	movq	$0, 8208(%rax)
	.loc 3 642 9
	movl	$8216, %edi
	call	xmalloc@PLT
	movq	%rax, -80(%rbp)
.L222:
	.loc 3 647 34
	movq	-80(%rbp), %rcx
	.loc 3 647 16
	movl	-124(%rbp), %eax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -40(%rbp)
	.loc 3 648 10
	cmpq	$0, -40(%rbp)
	je	.L216
	.loc 3 648 23 discriminator 1
	cmpq	$-1, -40(%rbp)
	je	.L216
	.loc 3 650 19
	movq	-80(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8192(%rax)
	.loc 3 651 17
	movq	-144(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 3 652 19
	movq	-80(%rbp), %rax
	movq	$0, 8200(%rax)
	.loc 3 653 17
	movq	-80(%rbp), %rax
	movq	$0, 8208(%rax)
.LBB10:
	.loc 3 657 34
	movq	-80(%rbp), %rdx
	.loc 3 657 21
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 3 658 21
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 3 659 15
	jmp	.L217
.L218:
	.loc 3 661 13
	addq	$1, -64(%rbp)
	.loc 3 662 18
	movq	-80(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 3 662 13
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8200(%rax)
.L217:
	.loc 3 659 53
	movq	-32(%rbp), %rax
	subq	-64(%rbp), %rax
	.loc 3 659 21
	movq	%rax, %rdx
	movzbl	line_end(%rip), %eax
	movsbl	%al, %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -64(%rbp)
	.loc 3 659 15
	cmpq	$0, -64(%rbp)
	jne	.L218
.LBE10:
	.loc 3 665 25
	movq	-80(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 3 665 19
	addq	%rax, -72(%rbp)
	.loc 3 670 14
	movq	-80(%rbp), %rax
	movq	8192(%rax), %rdx
	.loc 3 670 29
	movq	-88(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 3 670 23
	addq	%rdx, %rax
	.loc 3 670 10
	cmpq	$8191, %rax
	ja	.L219
	.loc 3 672 11
	movq	-80(%rbp), %rax
	movq	8192(%rax), %rdx
	.loc 3 672 51
	movq	-80(%rbp), %rax
	.loc 3 672 37
	movq	-88(%rbp), %rcx
	movq	8192(%rcx), %rsi
	.loc 3 672 19
	movq	-88(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 3 672 11
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 3 673 24
	movq	-88(%rbp), %rax
	movq	8192(%rax), %rdx
	.loc 3 673 30
	movq	-80(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 3 673 24
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8192(%rax)
	.loc 3 674 24
	movq	-88(%rbp), %rax
	movq	8200(%rax), %rdx
	.loc 3 674 30
	movq	-80(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 3 674 24
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8200(%rax)
	jmp	.L222
.L219:
	.loc 3 683 29
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8208(%rax)
	.loc 3 683 16
	movq	-88(%rbp), %rax
	movq	8208(%rax), %rax
	movq	%rax, -88(%rbp)
	.loc 3 684 34
	movq	-96(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 3 684 27
	movq	-72(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 3 684 14
	cmpq	%rax, -136(%rbp)
	jnb	.L221
	.loc 3 686 19
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 3 687 35
	movq	-96(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 3 687 27
	subq	%rax, -72(%rbp)
	.loc 3 688 21
	movq	-96(%rbp), %rax
	movq	8208(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.L222
.L221:
	.loc 3 691 19
	movl	$8216, %edi
	call	xmalloc@PLT
	movq	%rax, -80(%rbp)
	.loc 3 647 14
	jmp	.L222
.L216:
	.loc 3 695 3
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 697 6
	cmpq	$-1, -40(%rbp)
	jne	.L223
	.loc 3 699 7
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 699 24
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 699 17
	call	__errno_location@PLT
	.loc 3 699 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 700 10
	movb	$0, -97(%rbp)
	.loc 3 701 7
	jmp	.L224
.L223:
	.loc 3 705 11
	movq	-88(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 3 705 6
	testq	%rax, %rax
	je	.L239
	.loc 3 709 6
	cmpq	$0, -136(%rbp)
	je	.L240
	.loc 3 713 24
	movq	-88(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 3 713 33
	leaq	-1(%rax), %rdx
	.loc 3 713 19
	movq	-88(%rbp), %rax
	movzbl	(%rax,%rdx), %edx
	.loc 3 713 38
	movzbl	line_end(%rip), %eax
	.loc 3 713 6
	cmpb	%al, %dl
	je	.L227
	.loc 3 715 13
	movq	-88(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 3 715 7
	leaq	1(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8200(%rax)
	.loc 3 716 7
	addq	$1, -72(%rbp)
.L227:
	.loc 3 721 12
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 3 721 3
	jmp	.L228
.L229:
	.loc 3 722 23 discriminator 3
	movq	-80(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 3 722 17 discriminator 3
	subq	%rax, -72(%rbp)
	.loc 3 721 62 discriminator 3
	movq	-80(%rbp), %rax
	movq	8208(%rax), %rax
	movq	%rax, -80(%rbp)
.L228:
	.loc 3 721 38 discriminator 1
	movq	-80(%rbp), %rax
	movq	8200(%rax), %rax
	.loc 3 721 33 discriminator 1
	movq	-72(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 3 721 3 discriminator 1
	cmpq	%rax, -136(%rbp)
	jb	.L229
.LBB11:
	.loc 3 726 17
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 3 727 30
	movq	-80(%rbp), %rdx
	.loc 3 727 47
	movq	-80(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 3 727 17
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 3 728 8
	movq	-72(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jbe	.L230
.LBB12:
	.loc 3 733 16
	movq	-72(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 3 733 9
	jmp	.L231
.L233:
	.loc 3 735 53
	movq	-24(%rbp), %rax
	subq	-56(%rbp), %rax
	.loc 3 735 19
	movq	%rax, %rdx
	movzbl	line_end(%rip), %eax
	movsbl	%al, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -56(%rbp)
	.loc 3 736 13
	cmpq	$0, -56(%rbp)
	jne	.L232
	.loc 3 736 13 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6867(%rip), %rcx
	movl	$736, %edx
	leaq	.LC62(%rip), %rsi
	leaq	.LC63(%rip), %rdi
	call	__assert_fail@PLT
.L232:
	.loc 3 737 13 is_stmt 1 discriminator 2
	addq	$1, -56(%rbp)
	.loc 3 733 44 discriminator 2
	subq	$1, -48(%rbp)
.L231:
	.loc 3 733 9 discriminator 1
	cmpq	$0, -48(%rbp)
	jne	.L233
.L230:
.LBE12:
	.loc 3 741 36
	movq	-24(%rbp), %rax
	subq	-56(%rbp), %rax
	.loc 3 741 5
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
.LBE11:
	.loc 3 744 12
	movq	-80(%rbp), %rax
	movq	8208(%rax), %rax
	movq	%rax, -80(%rbp)
	.loc 3 744 3
	jmp	.L234
.L235:
	.loc 3 745 5 discriminator 3
	movq	-80(%rbp), %rax
	movq	8192(%rax), %rdx
	.loc 3 745 23 discriminator 3
	movq	-80(%rbp), %rax
	.loc 3 745 5 discriminator 3
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
	.loc 3 744 34 discriminator 3
	movq	-80(%rbp), %rax
	movq	8208(%rax), %rax
	movq	%rax, -80(%rbp)
.L234:
	.loc 3 744 3 discriminator 1
	cmpq	$0, -80(%rbp)
	jne	.L235
	.loc 3 747 1
	jmp	.L224
.L239:
	.loc 3 706 5
	nop
	jmp	.L236
.L240:
	.loc 3 710 5
	nop
.L224:
	.loc 3 748 9
	jmp	.L236
.L237:
	.loc 3 750 11
	movq	-96(%rbp), %rax
	movq	8208(%rax), %rax
	movq	%rax, -80(%rbp)
	.loc 3 751 7
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 752 13
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
.L236:
	.loc 3 748 9
	cmpq	$0, -96(%rbp)
	jne	.L237
	.loc 3 754 10
	movzbl	-97(%rbp), %eax
	.loc 3 755 1
	subq	$-128, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	pipe_lines, .-pipe_lines
	.type	pipe_bytes, @function
pipe_bytes:
.LFB73:
	.loc 3 764 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	.loc 3 774 10
	movq	$0, -32(%rbp)
	.loc 3 775 8
	movb	$1, -65(%rbp)
	.loc 3 778 18
	movl	$8208, %edi
	call	xmalloc@PLT
	movq	%rax, -56(%rbp)
	.loc 3 778 9
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 3 779 17
	movq	-64(%rbp), %rax
	movq	$0, 8192(%rax)
	.loc 3 780 15
	movq	-64(%rbp), %rax
	movq	$0, 8200(%rax)
	.loc 3 781 9
	movl	$8208, %edi
	call	xmalloc@PLT
	movq	%rax, -48(%rbp)
.L246:
	.loc 3 786 34
	movq	-48(%rbp), %rcx
	.loc 3 786 16
	movl	-92(%rbp), %eax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -24(%rbp)
	.loc 3 787 10
	cmpq	$0, -24(%rbp)
	je	.L242
	.loc 3 787 23 discriminator 1
	cmpq	$-1, -24(%rbp)
	je	.L242
	.loc 3 789 17
	movq	-112(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 3 790 19
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8192(%rax)
	.loc 3 791 17
	movq	-48(%rbp), %rax
	movq	$0, 8200(%rax)
	.loc 3 793 25
	movq	-48(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 3 793 19
	addq	%rax, -32(%rbp)
	.loc 3 797 14
	movq	-48(%rbp), %rax
	movq	8192(%rax), %rdx
	.loc 3 797 29
	movq	-56(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 3 797 23
	addq	%rdx, %rax
	.loc 3 797 10
	cmpq	$8191, %rax
	ja	.L243
	.loc 3 799 11
	movq	-48(%rbp), %rax
	movq	8192(%rax), %rdx
	.loc 3 799 51
	movq	-48(%rbp), %rax
	.loc 3 799 37
	movq	-56(%rbp), %rcx
	movq	8192(%rcx), %rsi
	.loc 3 799 19
	movq	-56(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 3 799 11
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 3 800 24
	movq	-56(%rbp), %rax
	movq	8192(%rax), %rdx
	.loc 3 800 30
	movq	-48(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 3 800 24
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8192(%rax)
	jmp	.L246
.L243:
	.loc 3 809 29
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8200(%rax)
	.loc 3 809 16
	movq	-56(%rbp), %rax
	movq	8200(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 3 810 34
	movq	-64(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 3 810 27
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 3 810 14
	cmpq	%rax, -104(%rbp)
	jnb	.L245
	.loc 3 812 19
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 3 813 35
	movq	-64(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 3 813 27
	subq	%rax, -32(%rbp)
	.loc 3 814 21
	movq	-64(%rbp), %rax
	movq	8200(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L246
.L245:
	.loc 3 818 21
	movl	$8208, %edi
	call	xmalloc@PLT
	movq	%rax, -48(%rbp)
	.loc 3 786 14
	jmp	.L246
.L242:
	.loc 3 823 3
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 825 6
	cmpq	$-1, -24(%rbp)
	jne	.L247
	.loc 3 827 7
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 827 24
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 827 17
	call	__errno_location@PLT
	.loc 3 827 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 828 10
	movb	$0, -65(%rbp)
	.loc 3 829 7
	jmp	.L248
.L247:
	.loc 3 834 12
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 3 834 3
	jmp	.L249
.L250:
	.loc 3 835 23 discriminator 3
	movq	-48(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 3 835 17 discriminator 3
	subq	%rax, -32(%rbp)
	.loc 3 834 62 discriminator 3
	movq	-48(%rbp), %rax
	movq	8200(%rax), %rax
	movq	%rax, -48(%rbp)
.L249:
	.loc 3 834 38 discriminator 1
	movq	-48(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 3 834 33 discriminator 1
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 3 834 3 discriminator 1
	cmpq	%rax, -104(%rbp)
	jb	.L250
	.loc 3 839 6
	movq	-32(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jbe	.L251
	.loc 3 840 7
	movq	-32(%rbp), %rax
	subq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L252
.L251:
	.loc 3 842 7
	movq	$0, -40(%rbp)
.L252:
	.loc 3 843 38
	movq	-48(%rbp), %rax
	movq	8192(%rax), %rax
	.loc 3 843 3
	subq	-40(%rbp), %rax
	.loc 3 843 18
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 3 843 3
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xwrite_stdout
	.loc 3 845 12
	movq	-48(%rbp), %rax
	movq	8200(%rax), %rax
	movq	%rax, -48(%rbp)
	.loc 3 845 3
	jmp	.L253
.L254:
	.loc 3 846 5 discriminator 3
	movq	-48(%rbp), %rax
	movq	8192(%rax), %rdx
	.loc 3 846 23 discriminator 3
	movq	-48(%rbp), %rax
	.loc 3 846 5 discriminator 3
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
	.loc 3 845 34 discriminator 3
	movq	-48(%rbp), %rax
	movq	8200(%rax), %rax
	movq	%rax, -48(%rbp)
.L253:
	.loc 3 845 3 discriminator 1
	cmpq	$0, -48(%rbp)
	jne	.L254
	.loc 3 848 1
	nop
.L248:
	.loc 3 849 9
	jmp	.L255
.L256:
	.loc 3 851 11
	movq	-64(%rbp), %rax
	movq	8200(%rax), %rax
	movq	%rax, -48(%rbp)
	.loc 3 852 7
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 853 13
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
.L255:
	.loc 3 849 9
	cmpq	$0, -64(%rbp)
	jne	.L256
	.loc 3 855 10
	movzbl	-65(%rbp), %eax
	.loc 3 856 1
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	pipe_bytes, .-pipe_bytes
	.type	start_bytes, @function
start_bytes:
.LFB74:
	.loc 3 865 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -8248(%rbp)
	movl	%esi, -8252(%rbp)
	movq	%rdx, -8264(%rbp)
	movq	%rcx, -8272(%rbp)
	.loc 3 865 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 868 9
	jmp	.L259
.L266:
.LBB13:
	.loc 3 870 27
	leaq	-8224(%rbp), %rcx
	movl	-8252(%rbp), %eax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -8240(%rbp)
	.loc 3 871 10
	cmpq	$0, -8240(%rbp)
	jne	.L260
	.loc 3 872 16
	movl	$-1, %eax
	jmp	.L267
.L260:
	.loc 3 873 10
	cmpq	$-1, -8240(%rbp)
	jne	.L262
	.loc 3 875 11
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 875 28
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 875 21
	call	__errno_location@PLT
	.loc 3 875 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 876 18
	movl	$1, %eax
	jmp	.L267
.L262:
	.loc 3 878 17
	movq	-8272(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8240(%rbp), %rax
	addq	%rax, %rdx
	movq	-8272(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 3 879 10
	movq	-8240(%rbp), %rax
	cmpq	-8264(%rbp), %rax
	ja	.L263
	.loc 3 880 17
	movq	-8240(%rbp), %rax
	subq	%rax, -8264(%rbp)
	jmp	.L259
.L263:
.LBB14:
	.loc 3 883 18
	movq	-8240(%rbp), %rax
	subq	-8264(%rbp), %rax
	movq	%rax, -8232(%rbp)
	.loc 3 884 14
	cmpq	$0, -8232(%rbp)
	je	.L269
	.loc 3 885 28
	leaq	-8224(%rbp), %rdx
	movq	-8264(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 885 13
	movq	-8232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xwrite_stdout
	.loc 3 886 11
	jmp	.L269
.L259:
.LBE14:
.LBE13:
	.loc 3 868 9
	cmpq	$0, -8264(%rbp)
	jne	.L266
	jmp	.L265
.L269:
.LBB16:
.LBB15:
	.loc 3 886 11
	nop
.L265:
.LBE15:
.LBE16:
	.loc 3 890 10
	movl	$0, %eax
.L267:
	.loc 3 891 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L268
	.loc 3 891 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L268:
	addq	$8256, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	start_bytes, .-start_bytes
	.type	start_lines, @function
start_lines:
.LFB75:
	.loc 3 900 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -8264(%rbp)
	movl	%esi, -8268(%rbp)
	movq	%rdx, -8280(%rbp)
	movq	%rcx, -8288(%rbp)
	.loc 3 900 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 901 6
	cmpq	$0, -8280(%rbp)
	jne	.L271
	.loc 3 902 12
	movl	$0, %eax
	jmp	.L272
.L271:
.LBB17:
	.loc 3 907 27
	leaq	-8224(%rbp), %rcx
	movl	-8268(%rbp), %eax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -8240(%rbp)
	.loc 3 908 10
	cmpq	$0, -8240(%rbp)
	jne	.L273
	.loc 3 909 16
	movl	$-1, %eax
	jmp	.L272
.L273:
	.loc 3 910 10
	cmpq	$-1, -8240(%rbp)
	jne	.L275
	.loc 3 912 11
	movq	-8264(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 912 28
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 912 21
	call	__errno_location@PLT
	.loc 3 912 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 913 18
	movl	$1, %eax
	jmp	.L272
.L275:
	.loc 3 916 13
	leaq	-8224(%rbp), %rdx
	movq	-8240(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8232(%rbp)
	.loc 3 918 17
	movq	-8288(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8240(%rbp), %rax
	addq	%rax, %rdx
	movq	-8288(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 3 920 13
	leaq	-8224(%rbp), %rax
	movq	%rax, -8248(%rbp)
	.loc 3 921 13
	jmp	.L276
.L278:
	.loc 3 923 11
	addq	$1, -8248(%rbp)
	.loc 3 924 14
	subq	$1, -8280(%rbp)
	cmpq	$0, -8280(%rbp)
	jne	.L276
	.loc 3 926 18
	movq	-8248(%rbp), %rax
	cmpq	-8232(%rbp), %rax
	jnb	.L277
	.loc 3 927 46
	movq	-8232(%rbp), %rax
	subq	-8248(%rbp), %rax
	.loc 3 927 17
	movq	%rax, %rdx
	movq	-8248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xwrite_stdout
.L277:
	.loc 3 928 22
	movl	$0, %eax
	jmp	.L272
.L276:
	.loc 3 921 51
	movq	-8232(%rbp), %rax
	subq	-8248(%rbp), %rax
	.loc 3 921 19
	movq	%rax, %rdx
	movzbl	line_end(%rip), %eax
	movsbl	%al, %ecx
	movq	-8248(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -8248(%rbp)
	.loc 3 921 13
	cmpq	$0, -8248(%rbp)
	jne	.L278
.LBE17:
	.loc 3 905 5
	jmp	.L271
.L272:
	.loc 3 932 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L279
	call	__stack_chk_fail@PLT
.L279:
	addq	$8272, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	start_lines, .-start_lines
	.section	.rodata
	.align 8
.LC64:
	.string	"cannot determine location of %s. reverting to polling"
	.align 8
.LC65:
	.string	"!\"unexpected return value from is_local_fs_type\""
	.text
	.type	fremote, @function
fremote:
.LFB76:
	.loc 3 939 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	.loc 3 939 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 940 8
	movb	$1, -149(%rbp)
	.loc 3 945 13
	leaq	-144(%rbp), %rdx
	movl	-164(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstatfs@PLT
	movl	%eax, -148(%rbp)
	.loc 3 946 6
	cmpl	$0, -148(%rbp)
	je	.L281
	.loc 3 950 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 950 10
	cmpl	$38, %eax
	je	.L282
	.loc 3 951 9
	movq	-176(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 951 26
	leaq	.LC64(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 951 19
	call	__errno_location@PLT
	.loc 3 951 9
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L282
.L281:
	.loc 3 956 36
	movq	-144(%rbp), %rax
	.loc 3 956 15
	movq	%rax, %rdi
	call	is_local_fs_type
	.loc 3 956 7
	cmpl	$1, %eax
	je	.L283
	cmpl	$1, %eax
	jg	.L284
	cmpl	$-1, %eax
	je	.L288
	testl	%eax, %eax
	jne	.L284
	.loc 3 959 11
	jmp	.L282
.L283:
	.loc 3 966 18
	movb	$0, -149(%rbp)
	.loc 3 967 11
	jmp	.L282
.L284:
	.loc 3 969 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.6945(%rip), %rcx
	movl	$969, %edx
	leaq	.LC62(%rip), %rsi
	leaq	.LC65(%rip), %rdi
	call	__assert_fail@PLT
.L288:
	.loc 3 964 11
	nop
.L282:
	.loc 3 974 10
	movzbl	-149(%rbp), %eax
	.loc 3 975 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L287
	call	__stack_chk_fail@PLT
.L287:
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	fremote, .-fremote
	.section	.rodata
.LC66:
	.string	"valid_file_spec (f)"
	.align 8
.LC67:
	.string	"%s has been replaced with an untailable symbolic link"
.LC68:
	.string	"%s has become inaccessible"
.LC69:
	.string	"%s"
.LC70:
	.string	"; giving up on this name"
	.align 8
.LC71:
	.string	"%s has been replaced with an untailable file%s"
	.align 8
.LC72:
	.string	"%s has been replaced with an untailable remote file"
.LC73:
	.string	"f->fd == -1"
.LC74:
	.string	"%s has become accessible"
	.align 8
.LC75:
	.string	"%s has appeared;  following new file"
	.align 8
.LC76:
	.string	"%s has been replaced;  following new file"
	.text
	.type	recheck, @function
recheck:
.LFB77:
	.loc 3 980 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -200(%rbp)
	movl	%esi, %eax
	movb	%al, -204(%rbp)
	.loc 3 980 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 982 8
	movb	$1, -188(%rbp)
	.loc 3 983 20
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 983 8
	testl	%eax, %eax
	sete	%al
	movb	%al, -186(%rbp)
	.loc 3 984 8
	movq	-200(%rbp), %rax
	movzbl	54(%rax), %eax
	movb	%al, -185(%rbp)
	.loc 3 985 7
	movq	-200(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -184(%rbp)
	.loc 3 989 13
	cmpb	$0, -186(%rbp)
	jne	.L290
	.loc 3 989 15 discriminator 1
	cmpb	$0, -204(%rbp)
	je	.L291
	.loc 3 989 15 is_stmt 0 discriminator 3
	movl	$0, %edx
	jmp	.L292
.L291:
	.loc 3 989 15 discriminator 4
	movl	$2048, %edx
.L292:
	.loc 3 989 22 is_stmt 1 discriminator 6
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 989 15 discriminator 6
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open_safer@PLT
	jmp	.L293
.L290:
	.loc 3 989 13 discriminator 2
	movl	$0, %eax
.L293:
	.loc 3 987 7
	movl	%eax, -180(%rbp)
	.loc 3 991 3
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	valid_file_spec
	testb	%al, %al
	jne	.L294
	.loc 3 991 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6957(%rip), %rcx
	movl	$991, %edx
	leaq	.LC62(%rip), %rsi
	leaq	.LC66(%rip), %rdi
	call	__assert_fail@PLT
.L294:
	.loc 3 995 19 is_stmt 1
	movzbl	reopen_inaccessible_files(%rip), %eax
	xorl	$1, %eax
	.loc 3 995 17
	testb	%al, %al
	jne	.L295
	.loc 3 995 17 is_stmt 0 discriminator 2
	cmpl	$-1, -180(%rbp)
	je	.L296
.L295:
	.loc 3 995 17 discriminator 3
	movl	$1, %eax
	jmp	.L297
.L296:
	.loc 3 995 17 discriminator 4
	movl	$0, %eax
.L297:
	.loc 3 995 17 discriminator 6
	andl	$1, %eax
	.loc 3 995 15 is_stmt 1 discriminator 6
	movq	-200(%rbp), %rdx
	movb	%al, 54(%rdx)
	.loc 3 997 7 discriminator 6
	movzbl	disable_inotify(%rip), %eax
	xorl	$1, %eax
	.loc 3 997 6 discriminator 6
	testb	%al, %al
	je	.L298
	.loc 3 997 38 discriminator 1
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 997 30 discriminator 1
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 3 997 25 discriminator 1
	testl	%eax, %eax
	jne	.L298
	.loc 3 998 10
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 998 7
	cmpl	$40960, %eax
	jne	.L298
	.loc 3 1003 10
	movb	$0, -188(%rbp)
	.loc 3 1004 17
	movq	-200(%rbp), %rax
	movl	$-1, 60(%rax)
	.loc 3 1005 17
	movq	-200(%rbp), %rax
	movb	$1, 52(%rax)
	.loc 3 1007 7
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 3 1007 20
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	.loc 3 1007 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L299
.L298:
	.loc 3 1010 11
	cmpl	$-1, -180(%rbp)
	je	.L300
	.loc 3 1010 24 discriminator 1
	leaq	-176(%rbp), %rdx
	movl	-180(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 3 1010 21 discriminator 1
	testl	%eax, %eax
	jns	.L301
.L300:
	.loc 3 1012 10
	movb	$0, -188(%rbp)
	.loc 3 1013 19
	call	__errno_location@PLT
	movl	(%rax), %edx
	.loc 3 1013 17
	movq	-200(%rbp), %rax
	movl	%edx, 60(%rax)
	.loc 3 1014 13
	movq	-200(%rbp), %rax
	movzbl	54(%rax), %eax
	.loc 3 1014 11
	xorl	$1, %eax
	.loc 3 1014 10
	testb	%al, %al
	je	.L302
	.loc 3 1016 14
	cmpb	$0, -185(%rbp)
	je	.L324
	.loc 3 1022 15
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 3 1022 36
	leaq	.LC68(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 1022 15
	movq	-200(%rbp), %rax
	movl	60(%rax), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1014 10
	jmp	.L324
.L302:
	.loc 3 1030 31
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 1030 15
	cmpl	%eax, -184(%rbp)
	je	.L324
	.loc 3 1031 9
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 3 1031 19
	call	__errno_location@PLT
	.loc 3 1031 9
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1014 10
	jmp	.L324
.L301:
	.loc 3 1033 13
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 1033 11
	cmpl	$32768, %eax
	je	.L304
	.loc 3 1033 13 discriminator 1
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	cmpl	$4096, %eax
	je	.L304
	.loc 3 1033 13 is_stmt 0 discriminator 2
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	cmpl	$49152, %eax
	je	.L304
	.loc 3 1033 13 discriminator 3
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 1033 12 is_stmt 1 discriminator 3
	cmpl	$8192, %eax
	je	.L304
	.loc 3 1035 10
	movb	$0, -188(%rbp)
	.loc 3 1036 17
	movq	-200(%rbp), %rax
	movl	$-1, 60(%rax)
	.loc 3 1037 19
	movq	-200(%rbp), %rax
	movb	$0, 54(%rax)
	.loc 3 1038 22
	movzbl	reopen_inaccessible_files(%rip), %eax
	xorl	$1, %eax
	.loc 3 1038 19
	testb	%al, %al
	jne	.L305
	.loc 3 1038 63 discriminator 2
	movl	follow_mode(%rip), %eax
	.loc 3 1038 19 discriminator 2
	cmpl	$1, %eax
	je	.L306
.L305:
	.loc 3 1038 19 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L307
.L306:
	.loc 3 1038 19 discriminator 4
	movl	$0, %eax
.L307:
	.loc 3 1038 19 discriminator 6
	andl	$1, %eax
	.loc 3 1038 17 is_stmt 1 discriminator 6
	movq	-200(%rbp), %rdx
	movb	%al, 52(%rdx)
	.loc 3 1039 10 discriminator 6
	cmpb	$0, -185(%rbp)
	jne	.L308
	.loc 3 1039 43 discriminator 1
	movq	-200(%rbp), %rax
	movl	60(%rax), %eax
	.loc 3 1039 24 discriminator 1
	cmpl	%eax, -184(%rbp)
	je	.L325
.L308:
	.loc 3 1042 17
	movq	-200(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 3 1040 9
	testb	%al, %al
	je	.L310
	.loc 3 1042 28
	leaq	.LC70(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	jmp	.L311
.L310:
	.loc 3 1040 9 discriminator 1
	leaq	.LC18(%rip), %rbx
.L311:
	.loc 3 1040 9 is_stmt 0 discriminator 2
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 1040 22 is_stmt 1 discriminator 2
	leaq	.LC71(%rip), %rdi
	call	gettext@PLT
	.loc 3 1040 9 discriminator 2
	movq	%rbx, %r8
	movq	%r12, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1039 10 discriminator 2
	jmp	.L325
.L304:
	.loc 3 1044 25
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rdx
	movl	-180(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fremote
	.loc 3 1044 23
	movq	-200(%rbp), %rdx
	movb	%al, 53(%rdx)
	.loc 3 1044 14
	movq	-200(%rbp), %rax
	movzbl	53(%rax), %eax
	.loc 3 1044 11
	testb	%al, %al
	je	.L312
	.loc 3 1044 59 discriminator 1
	movzbl	disable_inotify(%rip), %eax
	xorl	$1, %eax
	.loc 3 1044 56 discriminator 1
	testb	%al, %al
	je	.L312
	.loc 3 1046 10
	movb	$0, -188(%rbp)
	.loc 3 1047 17
	movq	-200(%rbp), %rax
	movl	$-1, 60(%rax)
	.loc 3 1048 7
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 3 1048 20
	leaq	.LC72(%rip), %rdi
	call	gettext@PLT
	.loc 3 1048 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1050 17
	movq	-200(%rbp), %rax
	movb	$1, 52(%rax)
	.loc 3 1051 17
	movq	-200(%rbp), %rax
	movb	$1, 53(%rax)
	jmp	.L299
.L312:
	.loc 3 1055 17
	movq	-200(%rbp), %rax
	movl	$0, 60(%rax)
	jmp	.L299
.L324:
	.loc 3 1014 10
	nop
	jmp	.L299
.L325:
	.loc 3 1039 10
	nop
.L299:
	.loc 3 1058 12
	movb	$0, -187(%rbp)
	.loc 3 1059 7
	movzbl	-188(%rbp), %eax
	xorl	$1, %eax
	.loc 3 1059 6
	testb	%al, %al
	je	.L313
	.loc 3 1061 7
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rdx
	movl	-180(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	close_fd
	.loc 3 1062 7
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	movl	56(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	close_fd
	.loc 3 1063 13
	movq	-200(%rbp), %rax
	movl	$-1, 56(%rax)
	jmp	.L314
.L313:
	.loc 3 1065 11
	cmpl	$0, -184(%rbp)
	je	.L315
	.loc 3 1065 24 discriminator 1
	cmpl	$2, -184(%rbp)
	je	.L315
	.loc 3 1067 16
	movb	$1, -187(%rbp)
	.loc 3 1068 7
	movq	-200(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	$-1, %eax
	je	.L316
	.loc 3 1068 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6957(%rip), %rcx
	movl	$1068, %edx
	leaq	.LC62(%rip), %rsi
	leaq	.LC73(%rip), %rdi
	call	__assert_fail@PLT
.L316:
	.loc 3 1069 7 is_stmt 1
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 3 1069 20
	leaq	.LC74(%rip), %rdi
	call	gettext@PLT
	.loc 3 1069 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L314
.L315:
	.loc 3 1071 13
	movq	-200(%rbp), %rax
	movl	56(%rax), %eax
	.loc 3 1071 11
	cmpl	$-1, %eax
	jne	.L317
	.loc 3 1078 16
	movb	$1, -187(%rbp)
	.loc 3 1080 7
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 3 1081 14
	leaq	.LC75(%rip), %rdi
	call	gettext@PLT
	.loc 3 1080 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L314
.L317:
	.loc 3 1084 13
	movq	-200(%rbp), %rax
	movq	40(%rax), %rdx
	.loc 3 1084 31
	movq	-168(%rbp), %rax
	.loc 3 1084 11
	cmpq	%rax, %rdx
	jne	.L318
	.loc 3 1084 43 discriminator 1
	movq	-200(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 3 1084 61 discriminator 1
	movq	-176(%rbp), %rax
	.loc 3 1084 39 discriminator 1
	cmpq	%rax, %rdx
	je	.L319
.L318:
	.loc 3 1088 16
	movb	$1, -187(%rbp)
	.loc 3 1090 7
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 3 1091 14
	leaq	.LC76(%rip), %rdi
	call	gettext@PLT
	.loc 3 1090 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1095 7
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	movl	56(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	close_fd
	jmp	.L314
.L319:
	.loc 3 1101 7
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rdx
	movl	-180(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	close_fd
.L314:
	.loc 3 1110 6
	cmpb	$0, -187(%rbp)
	je	.L326
	.loc 3 1113 7
	cmpb	$0, -186(%rbp)
	je	.L321
	.loc 3 1113 7 is_stmt 0 discriminator 1
	movl	$-1, %ecx
	jmp	.L322
.L321:
	.loc 3 1113 7 discriminator 2
	movzbl	-204(%rbp), %ecx
.L322:
	.loc 3 1113 7 discriminator 4
	leaq	-176(%rbp), %rdx
	movl	-180(%rbp), %esi
	movq	-200(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	record_open_fd
	.loc 3 1114 7 is_stmt 1 discriminator 4
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rdx
	movl	-180(%rbp), %eax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	xlseek
.L326:
	.loc 3 1116 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L323
	call	__stack_chk_fail@PLT
.L323:
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	recheck, .-recheck
	.type	any_live_files, @function
any_live_files:
.LFB78:
	.loc 3 1125 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 3 1129 7
	movzbl	reopen_inaccessible_files(%rip), %eax
	.loc 3 1129 6
	testb	%al, %al
	je	.L328
	.loc 3 1129 48 discriminator 1
	movl	follow_mode(%rip), %eax
	.loc 3 1129 33 discriminator 1
	cmpl	$1, %eax
	jne	.L328
	.loc 3 1130 12
	movl	$1, %eax
	jmp	.L329
.L328:
.LBB18:
	.loc 3 1132 15
	movq	$0, -8(%rbp)
	.loc 3 1132 3
	jmp	.L330
.L333:
	.loc 3 1134 17
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1134 20
	movl	56(%rax), %eax
	.loc 3 1134 10
	testl	%eax, %eax
	js	.L331
	.loc 3 1135 16
	movl	$1, %eax
	jmp	.L329
.L331:
	.loc 3 1138 18
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1138 21
	movzbl	52(%rax), %eax
	.loc 3 1138 15
	xorl	$1, %eax
	.loc 3 1138 14
	testb	%al, %al
	je	.L332
	.loc 3 1138 29 discriminator 1
	movzbl	reopen_inaccessible_files(%rip), %eax
	testb	%al, %al
	je	.L332
	.loc 3 1139 20
	movl	$1, %eax
	jmp	.L329
.L332:
	.loc 3 1132 36 discriminator 2
	addq	$1, -8(%rbp)
.L330:
	.loc 3 1132 3 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L333
.LBE18:
	.loc 3 1143 10
	movl	$0, %eax
.L329:
	.loc 3 1144 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	any_live_files, .-any_live_files
	.section	.rodata
	.align 8
.LC77:
	.string	"%s: cannot change nonblocking mode"
.LC78:
	.string	"%s: file truncated"
.LC79:
	.string	"no files remaining"
.LC80:
	.string	"write error"
.LC81:
	.string	"cannot read realtime clock"
	.text
	.type	tail_forever, @function
tail_forever:
.LFB79:
	.loc 3 1155 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$256, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movsd	%xmm0, -264(%rbp)
	.loc 3 1155 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 1157 24
	movl	pid(%rip), %eax
	.loc 3 1158 53
	testl	%eax, %eax
	jne	.L335
	.loc 3 1157 44
	movl	follow_mode(%rip), %eax
	.loc 3 1157 29
	cmpl	$2, %eax
	jne	.L335
	.loc 3 1158 20 discriminator 3
	cmpq	$1, -256(%rbp)
	jne	.L335
	.loc 3 1158 43 discriminator 2
	movq	-248(%rbp), %rax
	movl	56(%rax), %eax
	.loc 3 1158 36 discriminator 2
	cmpl	$-1, %eax
	je	.L335
	.loc 3 1158 58 discriminator 4
	movq	-248(%rbp), %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 3 1158 53 discriminator 4
	cmpl	$32768, %eax
	je	.L335
	.loc 3 1158 53 is_stmt 0 discriminator 6
	movl	$1, %eax
	jmp	.L336
.L335:
	.loc 3 1158 53 discriminator 7
	movl	$0, %eax
.L336:
	.loc 3 1157 8 is_stmt 1
	movb	%al, -233(%rbp)
	andb	$1, -233(%rbp)
	.loc 3 1160 8
	movb	$0, -235(%rbp)
	.loc 3 1162 8
	movq	-256(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -216(%rbp)
.L368:
.LBB19:
	.loc 3 1167 12
	movb	$0, -234(%rbp)
	.loc 3 1169 14
	movq	$0, -208(%rbp)
	.loc 3 1169 7
	jmp	.L337
.L359:
.LBB20:
	.loc 3 1177 16
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1177 19
	movzbl	52(%rax), %eax
	.loc 3 1177 14
	testb	%al, %al
	jne	.L371
	.loc 3 1180 16
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1180 19
	movl	56(%rax), %eax
	.loc 3 1180 14
	testl	%eax, %eax
	jns	.L340
	.loc 3 1182 15
	movzbl	-233(%rbp), %ecx
	.loc 3 1182 26
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	.loc 3 1182 15
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	recheck
	.loc 3 1183 15
	jmp	.L358
.L340:
	.loc 3 1186 17
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1186 14
	movl	56(%rax), %eax
	movl	%eax, -232(%rbp)
	.loc 3 1187 33
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	.loc 3 1187 31
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1187 18
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, -192(%rbp)
	.loc 3 1188 19
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1188 16
	movl	48(%rax), %eax
	movl	%eax, -228(%rbp)
	.loc 3 1190 16
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1190 19
	movl	64(%rax), %edx
	.loc 3 1190 29
	movzbl	-233(%rbp), %eax
	.loc 3 1190 14
	cmpl	%eax, %edx
	je	.L341
.LBB21:
	.loc 3 1192 31
	movl	-232(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	rpl_fcntl@PLT
	movl	%eax, -224(%rbp)
	.loc 3 1193 57
	cmpb	$0, -233(%rbp)
	je	.L342
	.loc 3 1193 57 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L343
.L342:
	.loc 3 1193 57 discriminator 2
	movl	$2048, %eax
.L343:
	.loc 3 1193 19 is_stmt 1 discriminator 4
	orl	-224(%rbp), %eax
	movl	%eax, -220(%rbp)
	.loc 3 1194 18 discriminator 4
	cmpl	$0, -224(%rbp)
	js	.L344
	.loc 3 1195 19
	movl	-220(%rbp), %eax
	cmpl	-224(%rbp), %eax
	je	.L345
	.loc 3 1196 26
	movl	-220(%rbp), %edx
	movl	-232(%rbp), %eax
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	rpl_fcntl@PLT
	.loc 3 1196 23
	cmpl	$-1, %eax
	jne	.L345
.L344:
	.loc 3 1199 23
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 3 1199 22
	cmpl	$32768, %eax
	jne	.L346
	.loc 3 1199 46 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 1199 43 discriminator 1
	cmpl	$1, %eax
	je	.L370
.L346:
.LBB22:
	.loc 3 1205 21
	movq	-192(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	leaq	.LC77(%rip), %rdi
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
.L370:
.LBE22:
	.loc 3 1199 22 discriminator 1
	jmp	.L341
.L345:
	.loc 3 1210 18
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 1210 31
	movzbl	-233(%rbp), %eax
	movl	%eax, 64(%rdx)
.L341:
.LBE21:
	.loc 3 1213 17
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1213 20
	movl	64(%rax), %eax
	.loc 3 1213 14
	testl	%eax, %eax
	jne	.L348
	.loc 3 1215 19
	leaq	-176(%rbp), %rdx
	movl	-232(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 3 1215 18
	testl	%eax, %eax
	je	.L349
	.loc 3 1217 20
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1217 27
	movl	$-1, 56(%rax)
	.loc 3 1218 33
	call	__errno_location@PLT
	movq	%rax, %rcx
	.loc 3 1218 20
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 1218 33
	movl	(%rcx), %eax
	.loc 3 1218 31
	movl	%eax, 60(%rdx)
	.loc 3 1219 19
	movq	-192(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 3 1219 29
	call	__errno_location@PLT
	.loc 3 1219 19
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1220 19
	movl	-232(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 3 1221 19
	jmp	.L358
.L349:
	.loc 3 1224 20
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1224 23
	movl	48(%rax), %edx
	.loc 3 1224 37
	movl	-152(%rbp), %eax
	.loc 3 1224 18
	cmpl	%eax, %edx
	jne	.L350
	.loc 3 1225 25
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 1225 19
	cmpl	$32768, %eax
	jne	.L351
	.loc 3 1225 53 discriminator 1
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1225 56 discriminator 1
	movq	8(%rax), %rdx
	.loc 3 1225 70 discriminator 1
	movq	-128(%rbp), %rax
	.loc 3 1225 49 discriminator 1
	cmpq	%rax, %rdx
	jne	.L350
.L351:
	.loc 3 1226 22
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, %rcx
	movq	%rdx, %rbx
	.loc 3 1226 37
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1226 22
	movq	16(%rax), %rsi
	movq	24(%rax), %rax
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	timespec_cmp@PLT
	.loc 3 1226 19
	testl	%eax, %eax
	jne	.L350
	.loc 3 1229 28
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 1229 31
	movq	88(%rdx), %rax
	.loc 3 1229 49
	leaq	1(%rax), %rcx
	movq	%rcx, 88(%rdx)
	.loc 3 1229 24
	movq	max_n_unchanged_stats_between_opens(%rip), %rdx
	.loc 3 1228 22
	cmpq	%rdx, %rax
	jb	.L372
	.loc 3 1230 38
	movl	follow_mode(%rip), %eax
	.loc 3 1230 23
	cmpl	$1, %eax
	jne	.L372
	.loc 3 1232 40
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1232 43
	movl	64(%rax), %eax
	.loc 3 1232 23
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ecx
	.loc 3 1232 34
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	.loc 3 1232 23
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	recheck
	.loc 3 1233 24
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1233 46
	movq	$0, 88(%rax)
	.loc 3 1235 19
	jmp	.L372
.L350:
	.loc 3 1241 16
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 3 1241 28
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	.loc 3 1242 16
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 1242 32
	movl	-152(%rbp), %eax
	.loc 3 1242 25
	movl	%eax, 48(%rdx)
	.loc 3 1245 16
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1245 38
	movq	$0, 88(%rax)
	.loc 3 1250 19
	movl	-228(%rbp), %eax
	andl	$61440, %eax
	.loc 3 1250 18
	cmpl	$32768, %eax
	jne	.L353
	.loc 3 1250 42 discriminator 1
	movq	-128(%rbp), %rcx
	.loc 3 1250 54 discriminator 1
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1250 57 discriminator 1
	movq	8(%rax), %rax
	.loc 3 1250 34 discriminator 1
	cmpq	%rax, %rcx
	jge	.L353
	.loc 3 1252 19
	movq	-192(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 3 1252 32
	leaq	.LC78(%rip), %rdi
	call	gettext@PLT
	.loc 3 1252 19
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1255 19
	movq	-192(%rbp), %rdx
	movl	-232(%rbp), %eax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	xlseek
	.loc 3 1256 20
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1256 29
	movq	$0, 8(%rax)
.L353:
	.loc 3 1259 18
	movq	-208(%rbp), %rax
	cmpq	-216(%rbp), %rax
	je	.L348
	.loc 3 1261 23
	movzbl	print_headers(%rip), %eax
	.loc 3 1261 22
	testb	%al, %al
	je	.L354
	.loc 3 1262 21
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	write_header
.L354:
	.loc 3 1263 24
	movq	-208(%rbp), %rax
	movq	%rax, -216(%rbp)
.L348:
	.loc 3 1271 16
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1271 19
	movl	64(%rax), %eax
	.loc 3 1271 14
	testl	%eax, %eax
	je	.L355
	.loc 3 1272 27
	movq	$-2, -200(%rbp)
	jmp	.L356
.L355:
	.loc 3 1273 20
	movl	-228(%rbp), %eax
	andl	$61440, %eax
	.loc 3 1273 19
	cmpl	$32768, %eax
	jne	.L357
	.loc 3 1273 39 discriminator 1
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1273 42 discriminator 1
	movzbl	53(%rax), %eax
	.loc 3 1273 35 discriminator 1
	testb	%al, %al
	je	.L357
	.loc 3 1274 34
	movq	-128(%rbp), %rcx
	.loc 3 1274 46
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1274 49
	movq	8(%rax), %rax
	.loc 3 1274 43
	subq	%rax, %rcx
	movq	%rcx, %rax
	.loc 3 1274 27
	movq	%rax, -200(%rbp)
	jmp	.L356
.L357:
	.loc 3 1276 27
	movq	$-1, -200(%rbp)
.L356:
	.loc 3 1278 24
	movq	-200(%rbp), %rcx
	movl	-232(%rbp), %edx
	movq	-192(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	dump_remainder
	movq	%rax, -184(%rbp)
	.loc 3 1280 21
	movzbl	-234(%rbp), %edx
	.loc 3 1280 36
	cmpq	$0, -184(%rbp)
	setne	%al
	movzbl	%al, %eax
	.loc 3 1280 21
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -234(%rbp)
	.loc 3 1281 21
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-208(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	jmp	.L358
.L371:
	.loc 3 1178 13
	nop
	jmp	.L358
.L372:
	.loc 3 1235 19
	nop
.L358:
.LBE20:
	.loc 3 1169 33 discriminator 2
	addq	$1, -208(%rbp)
.L337:
	.loc 3 1169 7 discriminator 1
	movq	-208(%rbp), %rax
	cmpq	-256(%rbp), %rax
	jb	.L359
	.loc 3 1284 13
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	any_live_files
	.loc 3 1284 11
	xorl	$1, %eax
	.loc 3 1284 10
	testb	%al, %al
	je	.L360
	.loc 3 1286 24
	leaq	.LC79(%rip), %rdi
	call	gettext@PLT
	.loc 3 1286 11
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1287 11
	jmp	.L361
.L360:
	.loc 3 1290 12
	movzbl	-234(%rbp), %eax
	xorl	$1, %eax
	.loc 3 1290 10
	testb	%al, %al
	jne	.L362
	.loc 3 1290 23 discriminator 2
	cmpb	$0, -233(%rbp)
	je	.L363
.L362:
	.loc 3 1290 39 discriminator 3
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush_unlocked@PLT
	.loc 3 1290 36 discriminator 3
	testl	%eax, %eax
	je	.L363
.LBB23:
	.loc 3 1291 9
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L363:
.LBE23:
	.loc 3 1293 7
	call	check_output_alive
	.loc 3 1296 11
	movzbl	-234(%rbp), %eax
	xorl	$1, %eax
	.loc 3 1296 10
	testb	%al, %al
	je	.L368
	.loc 3 1298 14
	cmpb	$0, -235(%rbp)
	jne	.L373
	.loc 3 1303 33
	movl	pid(%rip), %eax
	.loc 3 1308 29
	testl	%eax, %eax
	je	.L366
	.loc 3 1304 32
	movl	pid(%rip), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	kill@PLT
	.loc 3 1304 29
	testl	%eax, %eax
	je	.L366
	.loc 3 1308 32 discriminator 3
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 1308 29 discriminator 3
	cmpl	$1, %eax
	je	.L366
	.loc 3 1308 29 is_stmt 0 discriminator 2
	movl	$1, %eax
	jmp	.L367
.L366:
	.loc 3 1308 29 discriminator 1
	movl	$0, %eax
.L367:
	.loc 3 1303 26 is_stmt 1
	movb	%al, -235(%rbp)
	andb	$1, -235(%rbp)
	.loc 3 1310 15
	movzbl	-235(%rbp), %eax
	xorl	$1, %eax
	.loc 3 1310 14
	testb	%al, %al
	je	.L368
	.loc 3 1310 34 discriminator 1
	movq	-264(%rbp), %rax
	movq	%rax, %xmm0
	call	xnanosleep@PLT
	.loc 3 1310 31 discriminator 1
	testl	%eax, %eax
	je	.L368
.LBB24:
	.loc 3 1311 13
	leaq	.LC81(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L373:
.LBE24:
	.loc 3 1299 13
	nop
.L361:
.LBE19:
	.loc 3 1315 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L369
	call	__stack_chk_fail@PLT
.L369:
	addq	$256, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	tail_forever, .-tail_forever
	.type	any_remote_file, @function
any_remote_file:
.LFB80:
	.loc 3 1324 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
.LBB25:
	.loc 3 1325 15
	movq	$0, -8(%rbp)
	.loc 3 1325 3
	jmp	.L375
.L378:
	.loc 3 1326 15
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1326 18
	movl	56(%rax), %eax
	.loc 3 1326 8
	testl	%eax, %eax
	js	.L376
	.loc 3 1326 26 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1326 29 discriminator 1
	movzbl	53(%rax), %eax
	.loc 3 1326 22 discriminator 1
	testb	%al, %al
	je	.L376
	.loc 3 1327 14
	movl	$1, %eax
	jmp	.L377
.L376:
	.loc 3 1325 36 discriminator 2
	addq	$1, -8(%rbp)
.L375:
	.loc 3 1325 3 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L378
.LBE25:
	.loc 3 1328 10
	movl	$0, %eax
.L377:
	.loc 3 1329 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	any_remote_file, .-any_remote_file
	.type	any_non_remote_file, @function
any_non_remote_file:
.LFB81:
	.loc 3 1336 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
.LBB26:
	.loc 3 1337 15
	movq	$0, -8(%rbp)
	.loc 3 1337 3
	jmp	.L380
.L383:
	.loc 3 1338 15
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1338 18
	movl	56(%rax), %eax
	.loc 3 1338 8
	testl	%eax, %eax
	js	.L381
	.loc 3 1338 28 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1338 31 discriminator 1
	movzbl	53(%rax), %eax
	.loc 3 1338 25 discriminator 1
	xorl	$1, %eax
	.loc 3 1338 22 discriminator 1
	testb	%al, %al
	je	.L381
	.loc 3 1339 14
	movl	$1, %eax
	jmp	.L382
.L381:
	.loc 3 1337 36 discriminator 2
	addq	$1, -8(%rbp)
.L380:
	.loc 3 1337 3 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L383
.LBE26:
	.loc 3 1340 10
	movl	$0, %eax
.L382:
	.loc 3 1341 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	any_non_remote_file, .-any_non_remote_file
	.type	any_symlinks, @function
any_symlinks:
.LFB82:
	.loc 3 1350 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	.loc 3 1350 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.LBB27:
	.loc 3 1352 15
	movq	$0, -168(%rbp)
	.loc 3 1352 3
	jmp	.L385
.L388:
	.loc 3 1353 17
	movq	-168(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1353 20
	movq	(%rax), %rax
	.loc 3 1353 9
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 3 1353 8
	testl	%eax, %eax
	jne	.L386
	.loc 3 1353 40 discriminator 1
	movl	-136(%rbp), %eax
	andl	$61440, %eax
	.loc 3 1353 37 discriminator 1
	cmpl	$40960, %eax
	jne	.L386
	.loc 3 1354 14
	movl	$1, %eax
	jmp	.L389
.L386:
	.loc 3 1352 36 discriminator 2
	addq	$1, -168(%rbp)
.L385:
	.loc 3 1352 3 discriminator 1
	movq	-168(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jb	.L388
.LBE27:
	.loc 3 1355 10
	movl	$0, %eax
.L389:
	.loc 3 1356 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L390
	.loc 3 1356 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L390:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	any_symlinks, .-any_symlinks
	.type	any_non_regular_fifo, @function
any_non_regular_fifo:
.LFB83:
	.loc 3 1365 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
.LBB28:
	.loc 3 1366 15
	movq	$0, -8(%rbp)
	.loc 3 1366 3
	jmp	.L392
.L395:
	.loc 3 1367 15
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1367 18
	movl	56(%rax), %eax
	.loc 3 1367 8
	testl	%eax, %eax
	js	.L393
	.loc 3 1367 27 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 3 1367 22 discriminator 1
	cmpl	$32768, %eax
	je	.L393
	.loc 3 1367 52 discriminator 2
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 3 1367 47 discriminator 2
	cmpl	$4096, %eax
	je	.L393
	.loc 3 1368 14
	movl	$1, %eax
	jmp	.L394
.L393:
	.loc 3 1366 36 discriminator 2
	addq	$1, -8(%rbp)
.L392:
	.loc 3 1366 3 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L395
.LBE28:
	.loc 3 1369 10
	movl	$0, %eax
.L394:
	.loc 3 1370 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	any_non_regular_fifo, .-any_non_regular_fifo
	.type	tailable_stdin, @function
tailable_stdin:
.LFB84:
	.loc 3 1377 1
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
.LBB29:
	.loc 3 1378 15
	movq	$0, -8(%rbp)
	.loc 3 1378 3
	jmp	.L397
.L400:
	.loc 3 1379 11
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1379 14
	movzbl	52(%rax), %eax
	.loc 3 1379 9
	xorl	$1, %eax
	.loc 3 1379 8
	testb	%al, %al
	je	.L398
	.loc 3 1379 25 discriminator 1
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 1379 22 discriminator 1
	testl	%eax, %eax
	jne	.L398
	.loc 3 1380 14
	movl	$1, %eax
	jmp	.L399
.L398:
	.loc 3 1378 36 discriminator 2
	addq	$1, -8(%rbp)
.L397:
	.loc 3 1378 3 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L400
.LBE29:
	.loc 3 1381 10
	movl	$0, %eax
.L399:
	.loc 3 1382 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	tailable_stdin, .-tailable_stdin
	.type	wd_hasher, @function
wd_hasher:
.LFB85:
	.loc 3 1386 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 3 1387 27
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 3 1388 14
	movq	-8(%rbp), %rax
	movl	68(%rax), %eax
	cltq
	.loc 3 1388 19
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rdx, %rax
	.loc 3 1389 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	wd_hasher, .-wd_hasher
	.type	wd_comparator, @function
wd_comparator:
.LFB86:
	.loc 3 1393 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 3 1394 27
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 3 1395 27
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 3 1396 15
	movq	-16(%rbp), %rax
	movl	68(%rax), %edx
	.loc 3 1396 28
	movq	-8(%rbp), %rax
	movl	68(%rax), %eax
	.loc 3 1396 20
	cmpl	%eax, %edx
	sete	%al
	.loc 3 1397 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	wd_comparator, .-wd_comparator
	.type	check_fspec, @function
check_fspec:
.LFB87:
	.loc 3 1403 1
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
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	.loc 3 1403 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 1407 12
	movq	-216(%rbp), %rax
	movl	56(%rax), %eax
	.loc 3 1407 6
	cmpl	$-1, %eax
	je	.L416
	.loc 3 1410 10
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, -192(%rbp)
	.loc 3 1412 7
	movq	-216(%rbp), %rax
	movl	56(%rax), %eax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 3 1412 6
	testl	%eax, %eax
	je	.L408
	.loc 3 1414 23
	call	__errno_location@PLT
	movl	(%rax), %edx
	.loc 3 1414 21
	movq	-216(%rbp), %rax
	movl	%edx, 60(%rax)
	.loc 3 1415 7
	movq	-216(%rbp), %rax
	movl	56(%rax), %eax
	movq	-192(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	close_fd
	.loc 3 1416 17
	movq	-216(%rbp), %rax
	movl	$-1, 56(%rax)
	.loc 3 1417 7
	jmp	.L405
.L408:
	.loc 3 1425 7
	movq	-216(%rbp), %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 3 1425 6
	cmpl	$32768, %eax
	jne	.L409
	.loc 3 1425 37 discriminator 1
	movq	-128(%rbp), %rdx
	.loc 3 1425 53 discriminator 1
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	.loc 3 1425 29 discriminator 1
	cmpq	%rax, %rdx
	jge	.L409
	.loc 3 1427 7
	movq	-192(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 3 1427 20
	leaq	.LC78(%rip), %rdi
	call	gettext@PLT
	.loc 3 1427 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1428 7
	movq	-216(%rbp), %rax
	movl	56(%rax), %eax
	movq	-192(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	xlseek
	.loc 3 1429 19
	movq	-216(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L410
.L409:
	.loc 3 1431 12
	movq	-216(%rbp), %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 3 1431 11
	cmpl	$32768, %eax
	jne	.L410
	.loc 3 1431 42 discriminator 1
	movq	-128(%rbp), %rdx
	.loc 3 1431 59 discriminator 1
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	.loc 3 1431 34 discriminator 1
	cmpq	%rax, %rdx
	jne	.L410
	.loc 3 1432 15
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	-216(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	24(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	timespec_cmp@PLT
	.loc 3 1432 12
	testl	%eax, %eax
	je	.L417
.L410:
	.loc 3 1435 22
	movzbl	print_headers(%rip), %eax
	.loc 3 1435 36
	testb	%al, %al
	je	.L411
	.loc 3 1435 49 discriminator 1
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 1435 36 discriminator 1
	cmpq	%rax, -216(%rbp)
	je	.L411
	.loc 3 1435 36 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L412
.L411:
	.loc 3 1435 36 discriminator 4
	movl	$0, %eax
.L412:
	.loc 3 1435 8 is_stmt 1 discriminator 6
	movb	%al, -193(%rbp)
	andb	$1, -193(%rbp)
	.loc 3 1437 26 discriminator 6
	movq	-216(%rbp), %rax
	movl	56(%rax), %edx
	movzbl	-193(%rbp), %eax
	movq	-192(%rbp), %rsi
	movq	$-1, %rcx
	movl	%eax, %edi
	call	dump_remainder
	movq	%rax, -184(%rbp)
	.loc 3 1439 15 discriminator 6
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 3 1441 6 discriminator 6
	cmpq	$0, -184(%rbp)
	je	.L405
	.loc 3 1443 19
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 3 1444 11
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush_unlocked@PLT
	.loc 3 1444 10
	testl	%eax, %eax
	je	.L405
.LBB30:
	.loc 3 1445 9
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L416:
.LBE30:
	.loc 3 1408 5
	nop
	jmp	.L405
.L417:
	.loc 3 1433 5
	nop
.L405:
	.loc 3 1447 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L415
	call	__stack_chk_fail@PLT
.L415:
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	check_fspec, .-check_fspec
	.section	.rodata
.LC82:
	.string	"."
	.align 8
.LC83:
	.string	"cannot watch parent directory of %s"
.LC84:
	.string	"inotify resources exhausted"
.LC85:
	.string	"cannot watch %s"
.LC86:
	.string	"%s was replaced"
	.align 8
.LC88:
	.string	"error waiting for inotify and output events"
.LC89:
	.string	"error reading inotify event"
	.align 8
.LC90:
	.string	"directory containing watched file was removed"
	.text
	.type	tail_forever_inotify, @function
tail_forever_inotify:
.LFB88:
	.loc 3 1455 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$432, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -420(%rbp)
	movq	%rsi, -432(%rbp)
	movq	%rdx, -440(%rbp)
	movsd	%xmm0, -448(%rbp)
	.loc 3 1455 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 1461 16
	movl	$3, -408(%rbp)
	.loc 3 1466 8
	movb	$0, -416(%rbp)
	.loc 3 1467 8
	movb	$0, -415(%rbp)
	.loc 3 1468 8
	movb	$0, -414(%rbp)
	.loc 3 1469 8
	movb	$0, -413(%rbp)
	.loc 3 1470 8
	movb	$0, -412(%rbp)
	.loc 3 1472 10
	movq	$0, -376(%rbp)
	.loc 3 1474 10
	movq	$0, -360(%rbp)
	.loc 3 1475 10
	movq	$0, -352(%rbp)
	.loc 3 1477 16
	movq	-440(%rbp), %rax
	movl	$0, %r8d
	leaq	wd_comparator(%rip), %rcx
	leaq	wd_hasher(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	hash_initialize@PLT
	movq	%rax, -320(%rbp)
	.loc 3 1478 6
	cmpq	$0, -320(%rbp)
	jne	.L419
	.loc 3 1479 5
	call	xalloc_die@PLT
.L419:
	.loc 3 1482 12
	movl	$2, -404(%rbp)
	.loc 3 1485 19
	movl	follow_mode(%rip), %eax
	.loc 3 1485 6
	cmpl	$1, %eax
	jne	.L420
	.loc 3 1486 21
	orl	$3076, -404(%rbp)
.L420:
	.loc 3 1492 10
	movq	$0, -344(%rbp)
	.loc 3 1492 3
	jmp	.L421
.L436:
	.loc 3 1494 13
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1494 16
	movzbl	52(%rax), %eax
	.loc 3 1494 11
	xorl	$1, %eax
	.loc 3 1494 10
	testb	%al, %al
	je	.L422
.LBB31:
	.loc 3 1496 35
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1496 38
	movq	(%rax), %rax
	.loc 3 1496 26
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -312(%rbp)
	.loc 3 1497 14
	movq	-376(%rbp), %rax
	cmpq	-312(%rbp), %rax
	jnb	.L423
	.loc 3 1498 19
	movq	-312(%rbp), %rax
	movq	%rax, -376(%rbp)
.L423:
	.loc 3 1500 12
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1500 19
	movl	$-1, 68(%rax)
	.loc 3 1502 27
	movl	follow_mode(%rip), %eax
	.loc 3 1502 14
	cmpl	$1, %eax
	jne	.L424
.LBB32:
	.loc 3 1504 41
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1504 44
	movq	(%rax), %rax
	.loc 3 1504 31
	movq	%rax, %rdi
	call	dir_len@PLT
	movq	%rax, -304(%rbp)
	.loc 3 1505 28
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1505 31
	movq	(%rax), %rdx
	.loc 3 1505 36
	movq	-304(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1505 20
	movzbl	(%rax), %eax
	movb	%al, -411(%rbp)
	.loc 3 1506 54
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1506 57
	movq	(%rax), %rax
	.loc 3 1506 37
	movq	%rax, %rdi
	call	last_component@PLT
	movq	%rax, %rcx
	.loc 3 1506 67
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1506 70
	movq	(%rax), %rax
	.loc 3 1506 64
	subq	%rax, %rcx
	.loc 3 1506 16
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1506 64
	movq	%rcx, %rdx
	.loc 3 1506 35
	movq	%rdx, 80(%rax)
	.loc 3 1508 16
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1508 19
	movq	(%rax), %rdx
	.loc 3 1508 24
	movq	-304(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1508 33
	movb	$0, (%rax)
	.loc 3 1512 32
	cmpq	$0, -304(%rbp)
	je	.L425
	.loc 3 1512 65 discriminator 1
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1512 32 discriminator 1
	movq	(%rax), %rcx
	jmp	.L426
.L425:
	.loc 3 1512 32 is_stmt 0 discriminator 2
	leaq	.LC82(%rip), %rcx
.L426:
	.loc 3 1512 16 is_stmt 1 discriminator 4
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 3 1512 32 discriminator 4
	movl	-420(%rbp), %eax
	movl	$1924, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	inotify_add_watch@PLT
	.loc 3 1512 30 discriminator 4
	movl	%eax, 72(%rbx)
	.loc 3 1517 16 discriminator 4
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1517 19 discriminator 4
	movq	(%rax), %rdx
	.loc 3 1517 24 discriminator 4
	movq	-304(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 1517 33 discriminator 4
	movzbl	-411(%rbp), %eax
	movb	%al, (%rdx)
	.loc 3 1519 20 discriminator 4
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1519 23 discriminator 4
	movl	72(%rax), %eax
	.loc 3 1519 18 discriminator 4
	testl	%eax, %eax
	jns	.L424
	.loc 3 1521 23
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 1521 22
	cmpl	$28, %eax
	je	.L427
	.loc 3 1523 28
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 3 1522 21
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 1522 38
	leaq	.LC83(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 1522 31
	call	__errno_location@PLT
	.loc 3 1522 21
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L428
.L427:
	.loc 3 1525 34
	leaq	.LC84(%rip), %rdi
	call	gettext@PLT
	.loc 3 1525 21
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L428:
	.loc 3 1526 41
	movb	$1, -414(%rbp)
	.loc 3 1529 19
	jmp	.L429
.L424:
.LBE32:
	.loc 3 1533 45
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1533 48
	movq	(%rax), %rcx
	.loc 3 1533 12
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 3 1533 21
	movl	-404(%rbp), %edx
	movl	-420(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	inotify_add_watch@PLT
	.loc 3 1533 19
	movl	%eax, 68(%rbx)
	.loc 3 1535 16
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1535 19
	movl	68(%rax), %eax
	.loc 3 1535 14
	testl	%eax, %eax
	jns	.L430
	.loc 3 1537 20
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1537 23
	movl	56(%rax), %eax
	.loc 3 1537 18
	cmpl	$-1, %eax
	je	.L431
	.loc 3 1538 40
	movb	$1, -415(%rbp)
.L431:
	.loc 3 1539 19
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 1539 18
	cmpl	$28, %eax
	je	.L432
	.loc 3 1539 38 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 1539 35 discriminator 1
	cmpl	$12, %eax
	jne	.L433
.L432:
	.loc 3 1541 40
	movb	$1, -413(%rbp)
	.loc 3 1542 32
	leaq	.LC84(%rip), %rdi
	call	gettext@PLT
	.loc 3 1542 19
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1543 19
	jmp	.L429
.L433:
	.loc 3 1545 24
	call	__errno_location@PLT
	movl	(%rax), %ecx
	.loc 3 1545 34
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1545 37
	movl	60(%rax), %eax
	.loc 3 1545 23
	cmpl	%eax, %ecx
	je	.L497
	.loc 3 1546 56
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 3 1546 17
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 1546 34
	leaq	.LC85(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 1546 27
	call	__errno_location@PLT
	.loc 3 1546 17
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1547 15
	jmp	.L497
.L430:
	.loc 3 1550 43
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	.loc 3 1550 40
	movq	-432(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 1550 15
	movq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_insert@PLT
	.loc 3 1550 14
	testq	%rax, %rax
	jne	.L435
	.loc 3 1551 13
	call	xalloc_die@PLT
.L435:
	.loc 3 1553 32
	movb	$1, -416(%rbp)
	jmp	.L422
.L497:
	.loc 3 1547 15
	nop
.L422:
.LBE31:
	.loc 3 1492 29 discriminator 2
	addq	$1, -344(%rbp)
.L421:
	.loc 3 1492 3 discriminator 1
	movq	-344(%rbp), %rax
	cmpq	-440(%rbp), %rax
	jb	.L436
.L429:
	.loc 3 1562 6
	cmpb	$0, -413(%rbp)
	jne	.L437
	.loc 3 1562 28 discriminator 1
	cmpb	$0, -414(%rbp)
	jne	.L437
	.loc 3 1563 23
	movl	follow_mode(%rip), %eax
	.loc 3 1563 7
	cmpl	$2, %eax
	jne	.L438
	.loc 3 1563 44 discriminator 1
	cmpb	$0, -415(%rbp)
	je	.L438
.L437:
	.loc 3 1565 7
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	hash_free@PLT
	.loc 3 1567 7
	call	__errno_location@PLT
	.loc 3 1567 13
	movl	$0, (%rax)
	.loc 3 1568 14
	movl	$1, %eax
	jmp	.L495
.L438:
	.loc 3 1570 19
	movl	follow_mode(%rip), %eax
	.loc 3 1570 6
	cmpl	$2, %eax
	jne	.L440
	.loc 3 1570 43 discriminator 1
	movzbl	-416(%rbp), %eax
	xorl	$1, %eax
	.loc 3 1570 40 discriminator 1
	testb	%al, %al
	je	.L440
	.loc 3 1571 12
	movl	$0, %eax
	jmp	.L495
.L440:
	.loc 3 1573 19
	movq	-440(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	leaq	-96(%rax), %rdx
	.loc 3 1573 16
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1573 14
	movq	%rax, -384(%rbp)
	.loc 3 1577 10
	movq	$0, -344(%rbp)
	.loc 3 1577 3
	jmp	.L441
.L447:
	.loc 3 1579 14
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1579 17
	movzbl	52(%rax), %eax
	.loc 3 1579 11
	xorl	$1, %eax
	.loc 3 1579 10
	testb	%al, %al
	je	.L442
	.loc 3 1582 27
	movl	follow_mode(%rip), %eax
	.loc 3 1582 14
	cmpl	$1, %eax
	jne	.L443
	.loc 3 1583 25
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	.loc 3 1583 13
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	recheck
	jmp	.L444
.L443:
	.loc 3 1584 21
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1584 24
	movl	56(%rax), %eax
	.loc 3 1584 19
	cmpl	$-1, %eax
	je	.L444
.LBB33:
	.loc 3 1592 26
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1592 29
	movq	(%rax), %rax
	.loc 3 1592 19
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 3 1592 18
	testl	%eax, %eax
	jne	.L444
	.loc 3 1593 24
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1593 27
	movq	32(%rax), %rdx
	.loc 3 1593 40
	movq	-176(%rbp), %rax
	.loc 3 1593 19
	cmpq	%rax, %rdx
	jne	.L446
	.loc 3 1593 52 discriminator 1
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1593 55 discriminator 1
	movq	40(%rax), %rdx
	.loc 3 1593 68 discriminator 1
	movq	-168(%rbp), %rax
	.loc 3 1593 48 discriminator 1
	cmpq	%rax, %rdx
	je	.L444
.L446:
	.loc 3 1596 26
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1595 19
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 1595 36
	leaq	.LC86(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 1595 29
	call	__errno_location@PLT
	.loc 3 1595 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1597 19
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	hash_free@PLT
	.loc 3 1599 19
	call	__errno_location@PLT
	.loc 3 1599 25
	movl	$0, (%rax)
	.loc 3 1600 26
	movl	$1, %eax
	jmp	.L495
.L444:
.LBE33:
	.loc 3 1605 26
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	.loc 3 1605 11
	movq	-432(%rbp), %rax
	addq	%rax, %rdx
	leaq	-384(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	check_fspec
.L442:
	.loc 3 1577 29 discriminator 2
	addq	$1, -344(%rbp)
.L441:
	.loc 3 1577 3 discriminator 1
	movq	-344(%rbp), %rax
	cmpq	-440(%rbp), %rax
	jb	.L447
	.loc 3 1609 9
	addq	$17, -376(%rbp)
	.loc 3 1610 11
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -368(%rbp)
.L494:
.LBB34:
	.loc 3 1624 23
	movl	follow_mode(%rip), %eax
	.loc 3 1624 10
	cmpl	$1, %eax
	jne	.L449
	.loc 3 1625 14
	movzbl	reopen_inaccessible_files(%rip), %eax
	xorl	$1, %eax
	.loc 3 1625 11
	testb	%al, %al
	je	.L449
	.loc 3 1626 14
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	hash_get_n_entries@PLT
	.loc 3 1626 11
	testq	%rax, %rax
	jne	.L449
	.loc 3 1628 24
	leaq	.LC79(%rip), %rdi
	call	gettext@PLT
	.loc 3 1628 11
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1629 18
	movl	$0, %eax
	jmp	.L495
.L462:
.LBB35:
	.loc 3 1638 15
	movl	pid(%rip), %eax
	.loc 3 1638 14
	testl	%eax, %eax
	je	.L450
	.loc 3 1640 18
	cmpb	$0, -412(%rbp)
	je	.L451
	.loc 3 1641 17
	movl	$0, %edi
	call	exit@PLT
.L451:
	.loc 3 1643 33
	movl	pid(%rip), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	kill@PLT
	.loc 3 1643 52
	testl	%eax, %eax
	je	.L452
	.loc 3 1643 55 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 1643 52 discriminator 1
	cmpl	$1, %eax
	je	.L452
	.loc 3 1643 52 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L453
.L452:
	.loc 3 1643 52 discriminator 4
	movl	$0, %eax
.L453:
	.loc 3 1643 30 is_stmt 1 discriminator 6
	movb	%al, -412(%rbp)
	andb	$1, -412(%rbp)
	.loc 3 1645 18 discriminator 6
	cmpb	$0, -412(%rbp)
	je	.L454
	.loc 3 1646 46
	movq	$0, -264(%rbp)
	.loc 3 1646 37
	movq	-264(%rbp), %rax
	.loc 3 1646 30
	movq	%rax, -272(%rbp)
	jmp	.L450
.L454:
	.loc 3 1649 34
	movsd	-448(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	.loc 3 1649 32
	movq	%rax, -272(%rbp)
	.loc 3 1650 68
	movq	-272(%rbp), %rax
	.loc 3 1650 61
	cvtsi2sdq	%rax, %xmm1
	movsd	-448(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	.loc 3 1650 43
	movsd	.LC87(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	.loc 3 1650 33
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -264(%rbp)
.L450:
.LBB36:
	.loc 3 1655 12
	movl	$0, %eax
	movl	$16, %ecx
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rdi
#APP
# 1655 "src/tail.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax
	movl	%ecx, %edx
	movl	%edx, -396(%rbp)
	movl	%eax, -392(%rbp)
.LBE36:
	.loc 3 1656 12
	movl	-420(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %esi
	movslq	%esi, %rax
	movq	-176(%rbp,%rax,8), %rdi
	movl	-420(%rbp), %eax
	cltd
	shrl	$26, %edx
	addl	%edx, %eax
	andl	$63, %eax
	subl	%edx, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rax, %rdi
	movq	%rdi, %rdx
	movslq	%esi, %rax
	movq	%rdx, -176(%rbp,%rax,8)
	.loc 3 1657 16
	movzbl	monitor_output(%rip), %eax
	.loc 3 1657 15
	testb	%al, %al
	je	.L455
	.loc 3 1658 14
	movq	-176(%rbp), %rax
	orq	$2, %rax
	movq	%rax, -176(%rbp)
.L455:
	.loc 3 1661 60
	movl	pid(%rip), %eax
	.loc 3 1660 30
	testl	%eax, %eax
	je	.L456
	.loc 3 1660 30 is_stmt 0 discriminator 1
	leaq	-272(%rbp), %rdx
	jmp	.L457
.L456:
	.loc 3 1660 30 discriminator 2
	movl	$0, %edx
.L457:
	.loc 3 1660 38 is_stmt 1 discriminator 4
	movl	$1, %eax
	cmpl	$0, -420(%rbp)
	cmovg	-420(%rbp), %eax
	.loc 3 1660 30 discriminator 4
	leal	1(%rax), %edi
	leaq	-176(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	select@PLT
	movl	%eax, -388(%rbp)
	.loc 3 1663 15 discriminator 4
	cmpl	$0, -388(%rbp)
	jne	.L458
	jmp	.L449
.L458:
	.loc 3 1665 20
	cmpl	$-1, -388(%rbp)
	jne	.L459
.LBB37:
	.loc 3 1666 14
	leaq	.LC88(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L459:
.LBE37:
	.loc 3 1668 21
	movq	-176(%rbp), %rax
	andl	$2, %eax
	.loc 3 1668 20
	testq	%rax, %rax
	je	.L498
	.loc 3 1672 16
	call	die_pipe
.L449:
.LBE35:
	.loc 3 1634 13
	movq	-352(%rbp), %rax
	cmpq	-360(%rbp), %rax
	jbe	.L462
	jmp	.L461
.L498:
.LBB38:
	.loc 3 1675 14
	nop
.L461:
.LBE38:
	.loc 3 1678 10
	movq	-352(%rbp), %rax
	cmpq	-360(%rbp), %rax
	ja	.L463
	.loc 3 1680 17
	movq	-376(%rbp), %rdx
	movq	-368(%rbp), %rcx
	movl	-420(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	safe_read@PLT
	movq	%rax, -352(%rbp)
	.loc 3 1681 21
	movq	$0, -360(%rbp)
	.loc 3 1685 14
	cmpq	$0, -352(%rbp)
	je	.L464
	.loc 3 1685 25 discriminator 1
	cmpq	$-1, -352(%rbp)
	jne	.L465
	.loc 3 1685 55 discriminator 2
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 1685 52 discriminator 2
	cmpl	$22, %eax
	jne	.L465
.L464:
	.loc 3 1686 29
	movl	-408(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -408(%rbp)
	.loc 3 1686 15
	testl	%eax, %eax
	je	.L465
	.loc 3 1688 19
	movq	$0, -352(%rbp)
	.loc 3 1689 21
	salq	-376(%rbp)
	.loc 3 1690 23
	movq	-376(%rbp), %rdx
	movq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc@PLT
	movq	%rax, -368(%rbp)
	.loc 3 1691 15
	jmp	.L466
.L465:
	.loc 3 1694 14
	cmpq	$0, -352(%rbp)
	je	.L467
	.loc 3 1694 24 discriminator 1
	cmpq	$-1, -352(%rbp)
	jne	.L463
.L467:
.LBB39:
	.loc 3 1695 13
	leaq	.LC89(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L463:
.LBE39:
	.loc 3 1698 15
	movq	-368(%rbp), %rdx
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -296(%rbp)
	.loc 3 1699 10
	movq	-296(%rbp), %rax
	movq	%rax, -288(%rbp)
	.loc 3 1700 37
	movq	-288(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %edx
	.loc 3 1700 17
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	addq	$16, %rax
	movq	%rax, -360(%rbp)
	.loc 3 1706 14
	movq	-288(%rbp), %rax
	movl	4(%rax), %eax
	.loc 3 1706 21
	andl	$1024, %eax
	.loc 3 1706 10
	testl	%eax, %eax
	je	.L468
	.loc 3 1706 46 discriminator 1
	movq	-288(%rbp), %rax
	movl	12(%rax), %eax
	.loc 3 1706 39 discriminator 1
	testl	%eax, %eax
	jne	.L468
	.loc 3 1708 18
	movq	$0, -344(%rbp)
	.loc 3 1708 11
	jmp	.L469
.L471:
	.loc 3 1710 21
	movq	-288(%rbp), %rax
	movl	(%rax), %ecx
	.loc 3 1710 30
	movq	-344(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1710 33
	movl	72(%rax), %eax
	.loc 3 1710 18
	cmpl	%eax, %ecx
	jne	.L470
	.loc 3 1712 19
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	hash_free@PLT
	.loc 3 1714 23
	leaq	.LC90(%rip), %rdi
	call	gettext@PLT
	.loc 3 1713 19
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1715 19
	call	__errno_location@PLT
	.loc 3 1715 25
	movl	$0, (%rax)
	.loc 3 1716 26
	movl	$1, %eax
	jmp	.L495
.L470:
	.loc 3 1708 37 discriminator 2
	addq	$1, -344(%rbp)
.L469:
	.loc 3 1708 11 discriminator 1
	movq	-344(%rbp), %rax
	cmpq	-440(%rbp), %rax
	jb	.L471
.L468:
	.loc 3 1721 13
	movq	-288(%rbp), %rax
	movl	12(%rax), %eax
	.loc 3 1721 10
	testl	%eax, %eax
	je	.L472
.LBB40:
	.loc 3 1724 18
	movq	$0, -328(%rbp)
	.loc 3 1724 11
	jmp	.L473
.L476:
	.loc 3 1728 20
	movq	-328(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1728 23
	movl	72(%rax), %edx
	.loc 3 1728 39
	movq	-288(%rbp), %rax
	movl	(%rax), %eax
	.loc 3 1728 18
	cmpl	%eax, %edx
	jne	.L474
	.loc 3 1729 22
	movq	-328(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-328(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	movq	80(%rax), %rax
	leaq	(%rcx,%rax), %rdx
	movq	-288(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 1729 19
	testl	%eax, %eax
	je	.L499
.L474:
	.loc 3 1724 37 discriminator 2
	addq	$1, -328(%rbp)
.L473:
	.loc 3 1724 11 discriminator 1
	movq	-328(%rbp), %rax
	cmpq	-440(%rbp), %rax
	jb	.L476
	jmp	.L475
.L499:
	.loc 3 1730 17
	nop
.L475:
	.loc 3 1734 14
	movq	-328(%rbp), %rax
	cmpq	-440(%rbp), %rax
	je	.L500
	.loc 3 1737 22
	movq	-328(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	.loc 3 1737 17
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -336(%rbp)
	.loc 3 1739 15
	movl	$-1, -400(%rbp)
	.loc 3 1740 33
	movq	-288(%rbp), %rax
	movl	4(%rax), %eax
	.loc 3 1740 40
	andl	$512, %eax
	.loc 3 1740 16
	testl	%eax, %eax
	setne	%al
	movb	%al, -410(%rbp)
	.loc 3 1742 15
	movzbl	-410(%rbp), %eax
	xorl	$1, %eax
	.loc 3 1742 14
	testb	%al, %al
	je	.L478
	.loc 3 1745 48
	movq	-328(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1745 51
	movq	(%rax), %rcx
	.loc 3 1745 24
	movl	-404(%rbp), %edx
	movl	-420(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	inotify_add_watch@PLT
	movl	%eax, -400(%rbp)
.L478:
	.loc 3 1748 15
	movzbl	-410(%rbp), %eax
	xorl	$1, %eax
	.loc 3 1748 14
	testb	%al, %al
	je	.L479
	.loc 3 1748 26 discriminator 1
	cmpl	$0, -400(%rbp)
	jns	.L479
	.loc 3 1750 19
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 1750 18
	cmpl	$28, %eax
	je	.L480
	.loc 3 1750 38 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 1750 35 discriminator 1
	cmpl	$12, %eax
	jne	.L481
.L480:
	.loc 3 1752 32
	leaq	.LC84(%rip), %rdi
	call	gettext@PLT
	.loc 3 1752 19
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1753 19
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	hash_free@PLT
	.loc 3 1754 19
	call	__errno_location@PLT
	.loc 3 1754 25
	movl	$0, (%rax)
	.loc 3 1755 26
	movl	$1, %eax
	jmp	.L495
.L481:
	.loc 3 1760 58
	movq	-328(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 3 1760 19
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 1760 36
	leaq	.LC85(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 1760 29
	call	__errno_location@PLT
	.loc 3 1760 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L479:
	.loc 3 1767 24
	movzbl	-410(%rbp), %eax
	xorl	$1, %eax
	.loc 3 1767 36
	testb	%al, %al
	je	.L482
	.loc 3 1767 45 discriminator 1
	movq	-336(%rbp), %rax
	movl	68(%rax), %eax
	.loc 3 1767 36 discriminator 1
	testl	%eax, %eax
	js	.L483
	.loc 3 1767 72 discriminator 4
	movq	-336(%rbp), %rax
	movl	68(%rax), %eax
	.loc 3 1767 54 discriminator 4
	cmpl	%eax, -400(%rbp)
	je	.L482
.L483:
	.loc 3 1767 36 discriminator 5
	movl	$1, %eax
	jmp	.L484
.L482:
	.loc 3 1767 36 is_stmt 0 discriminator 6
	movl	$0, %eax
.L484:
	.loc 3 1767 21 is_stmt 1 discriminator 8
	movb	%al, -409(%rbp)
	andb	$1, -409(%rbp)
	.loc 3 1769 14 discriminator 8
	cmpb	$0, -409(%rbp)
	je	.L485
.LBB41:
	.loc 3 1771 29
	movq	-336(%rbp), %rax
	movl	68(%rax), %eax
	.loc 3 1771 18
	testl	%eax, %eax
	js	.L486
	.loc 3 1773 19
	movq	-336(%rbp), %rax
	movl	68(%rax), %edx
	movl	-420(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	inotify_rm_watch@PLT
	.loc 3 1774 19
	movq	-336(%rbp), %rdx
	movq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_remove@PLT
.L486:
	.loc 3 1777 25
	movq	-336(%rbp), %rax
	movl	-400(%rbp), %edx
	movl	%edx, 68(%rax)
	.loc 3 1779 18
	cmpl	$-1, -400(%rbp)
	je	.L501
	.loc 3 1785 40
	movq	-336(%rbp), %rdx
	movq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_remove@PLT
	movq	%rax, -280(%rbp)
	.loc 3 1786 18
	cmpq	$0, -280(%rbp)
	je	.L488
	.loc 3 1786 24 discriminator 1
	movq	-280(%rbp), %rax
	cmpq	-336(%rbp), %rax
	je	.L488
	.loc 3 1788 35
	movl	follow_mode(%rip), %eax
	.loc 3 1788 22
	cmpl	$1, %eax
	jne	.L489
	.loc 3 1789 21
	movq	-280(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	recheck
.L489:
	.loc 3 1790 28
	movq	-280(%rbp), %rax
	movl	$-1, 68(%rax)
	.loc 3 1791 19
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rdx
	movq	-280(%rbp), %rax
	movl	56(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	close_fd
.L488:
	.loc 3 1794 19
	movq	-336(%rbp), %rdx
	movq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_insert@PLT
	.loc 3 1794 18
	testq	%rax, %rax
	jne	.L485
	.loc 3 1795 17
	call	xalloc_die@PLT
.L485:
.LBE41:
	.loc 3 1798 27
	movl	follow_mode(%rip), %eax
	.loc 3 1798 14
	cmpl	$1, %eax
	jne	.L490
	.loc 3 1799 13
	movq	-336(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	recheck
	jmp	.L490
.L472:
.LBE40:
.LBB43:
	.loc 3 1804 22
	movq	-288(%rbp), %rax
	movl	(%rax), %eax
	.loc 3 1804 18
	movl	%eax, -204(%rbp)
	.loc 3 1805 19
	leaq	-272(%rbp), %rdx
	movq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_lookup@PLT
	movq	%rax, -336(%rbp)
.L490:
.LBE43:
	.loc 3 1808 10
	cmpq	$0, -336(%rbp)
	je	.L502
	.loc 3 1811 13
	movq	-288(%rbp), %rax
	movl	4(%rax), %eax
	.loc 3 1811 20
	andl	$3588, %eax
	.loc 3 1811 10
	testl	%eax, %eax
	je	.L492
	.loc 3 1817 17
	movq	-288(%rbp), %rax
	movl	4(%rax), %eax
	.loc 3 1817 24
	andl	$1024, %eax
	.loc 3 1817 14
	testl	%eax, %eax
	je	.L493
	.loc 3 1819 15
	movq	-336(%rbp), %rax
	movl	68(%rax), %edx
	movl	-420(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	inotify_rm_watch@PLT
	.loc 3 1820 15
	movq	-336(%rbp), %rdx
	movq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_remove@PLT
.L493:
	.loc 3 1831 11
	movq	-336(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	recheck
	.loc 3 1833 11
	jmp	.L466
.L492:
	.loc 3 1835 7
	leaq	-384(%rbp), %rdx
	movq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_fspec
	jmp	.L494
.L500:
.LBB44:
	.loc 3 1735 13
	nop
	jmp	.L494
.L501:
.LBB42:
	.loc 3 1780 17
	nop
	jmp	.L494
.L502:
.LBE42:
.LBE44:
	.loc 3 1809 9
	nop
.L466:
.LBE34:
	.loc 3 1617 5
	jmp	.L494
.L495:
	.loc 3 1837 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L496
	.loc 3 1837 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L496:
	addq	$432, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	tail_forever_inotify, .-tail_forever_inotify
	.section	.rodata
.LC91:
	.string	"cannot fstat %s"
	.text
	.type	tail_bytes, @function
tail_bytes:
.LFB89:
	.loc 3 1846 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$224, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -240(%rbp)
	.loc 3 1846 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 1849 7
	leaq	-176(%rbp), %rdx
	movl	-220(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 3 1849 6
	testl	%eax, %eax
	je	.L504
	.loc 3 1851 7
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 1851 24
	leaq	.LC91(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 1851 17
	call	__errno_location@PLT
	.loc 3 1851 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1852 14
	movl	$0, %eax
	jmp	.L519
.L504:
	.loc 3 1855 7
	movzbl	from_start(%rip), %eax
	.loc 3 1855 6
	testb	%al, %al
	je	.L506
	.loc 3 1857 11
	movzbl	presume_input_pipe(%rip), %eax
	xorl	$1, %eax
	.loc 3 1857 10
	testb	%al, %al
	je	.L507
	.loc 3 1857 43 discriminator 1
	movq	-232(%rbp), %rax
	.loc 3 1857 32 discriminator 1
	testq	%rax, %rax
	js	.L507
	.loc 3 1858 16
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 1858 11
	cmpl	$32768, %eax
	jne	.L508
	.loc 3 1859 19
	movq	-232(%rbp), %rsi
	movq	-216(%rbp), %rdx
	movl	-220(%rbp), %eax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	%eax, %edi
	call	xlseek
	.loc 3 1859 16
	testq	%rax, %rax
	jns	.L509
.L508:
	.loc 3 1860 18
	movq	-232(%rbp), %rcx
	movl	-220(%rbp), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 3 1860 15
	cmpq	$-1, %rax
	je	.L507
.L509:
	.loc 3 1861 19
	movq	-240(%rbp), %rax
	movq	(%rax), %rdx
	movq	-232(%rbp), %rax
	addq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L510
.L507:
.LBB45:
	.loc 3 1864 19
	movq	-240(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movl	-220(%rbp), %esi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	start_bytes
	movl	%eax, -204(%rbp)
	.loc 3 1865 14
	cmpl	$0, -204(%rbp)
	je	.L510
	.loc 3 1866 22
	movl	-204(%rbp), %eax
	shrl	$31, %eax
	jmp	.L519
.L510:
.LBE45:
	.loc 3 1868 15
	movq	$-1, -232(%rbp)
	jmp	.L511
.L506:
.LBB46:
	.loc 3 1872 13
	movq	$-1, -200(%rbp)
	.loc 3 1873 13
	movq	$-1, -192(%rbp)
	.loc 3 1875 11
	movzbl	presume_input_pipe(%rip), %eax
	xorl	$1, %eax
	.loc 3 1875 10
	testb	%al, %al
	je	.L512
	.loc 3 1875 43 discriminator 1
	movq	-232(%rbp), %rax
	.loc 3 1875 32 discriminator 1
	testq	%rax, %rax
	js	.L512
	.loc 3 1877 15
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	usable_st_size
	.loc 3 1877 14
	testb	%al, %al
	je	.L513
	.loc 3 1878 21
	movq	-128(%rbp), %rax
	movq	%rax, -200(%rbp)
	jmp	.L512
.L513:
	.loc 3 1879 46
	movq	-232(%rbp), %rax
	negq	%rax
	.loc 3 1879 35
	movq	%rax, %rcx
	movl	-220(%rbp), %eax
	movl	$2, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -192(%rbp)
	.loc 3 1879 19
	cmpq	$-1, -192(%rbp)
	je	.L512
	.loc 3 1880 35
	movq	-192(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1880 21
	movq	%rax, -200(%rbp)
.L512:
	.loc 3 1882 30
	movq	-120(%rbp), %rax
	.loc 3 1882 22
	testq	%rax, %rax
	jle	.L514
	.loc 3 1882 30 discriminator 1
	movq	-120(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L514
	.loc 3 1882 22 discriminator 3
	movq	-120(%rbp), %rax
	jmp	.L515
.L514:
	.loc 3 1882 22 is_stmt 0 discriminator 4
	movl	$512, %eax
.L515:
	.loc 3 1882 10 is_stmt 1 discriminator 6
	cmpq	-200(%rbp), %rax
	jl	.L516
	.loc 3 1883 16
	movq	-240(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movl	-220(%rbp), %esi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	pipe_bytes
	jmp	.L519
.L516:
	.loc 3 1884 10
	cmpq	$-1, -192(%rbp)
	jne	.L517
	.loc 3 1885 23
	movq	-216(%rbp), %rdx
	movl	-220(%rbp), %eax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	xlseek
	movq	%rax, -192(%rbp)
.L517:
	.loc 3 1886 10
	movq	-192(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jge	.L518
.LBB47:
	.loc 3 1888 17
	movq	-200(%rbp), %rax
	subq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
	.loc 3 1890 23
	movq	-184(%rbp), %rax
	.loc 3 1890 14
	cmpq	%rax, -232(%rbp)
	jnb	.L518
	.loc 3 1892 37
	movq	-200(%rbp), %rax
	subq	-232(%rbp), %rax
	.loc 3 1892 27
	movq	%rax, -192(%rbp)
	.loc 3 1893 15
	movq	-216(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movl	-220(%rbp), %eax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %edi
	call	xlseek
.L518:
.LBE47:
	.loc 3 1896 17
	movq	-192(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, (%rax)
.L511:
.LBE46:
	.loc 3 1899 16
	movq	-232(%rbp), %rcx
	movl	-220(%rbp), %edx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	dump_remainder
	.loc 3 1899 13
	movq	-240(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 3 1900 10
	movl	$1, %eax
.L519:
	.loc 3 1901 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L520
	.loc 3 1901 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L520:
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	tail_bytes, .-tail_bytes
	.type	tail_lines, @function
tail_lines:
.LFB90:
	.loc 3 1909 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$224, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -240(%rbp)
	.loc 3 1909 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 1912 7
	leaq	-176(%rbp), %rdx
	movl	-220(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 3 1912 6
	testl	%eax, %eax
	je	.L522
	.loc 3 1914 7
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 1914 24
	leaq	.LC91(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 1914 17
	call	__errno_location@PLT
	.loc 3 1914 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1915 14
	movl	$0, %eax
	jmp	.L530
.L522:
	.loc 3 1918 7
	movzbl	from_start(%rip), %eax
	.loc 3 1918 6
	testb	%al, %al
	je	.L524
.LBB48:
	.loc 3 1920 15
	movq	-240(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movl	-220(%rbp), %esi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	start_lines
	movl	%eax, -196(%rbp)
	.loc 3 1921 10
	cmpl	$0, -196(%rbp)
	je	.L525
	.loc 3 1922 18
	movl	-196(%rbp), %eax
	shrl	$31, %eax
	jmp	.L530
.L525:
	.loc 3 1923 20
	movl	-220(%rbp), %edx
	movq	-216(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	call	dump_remainder
	.loc 3 1923 17
	movq	-240(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, (%rax)
.LBE48:
	jmp	.L526
.L524:
.LBB49:
	.loc 3 1927 13
	movq	$-1, -192(%rbp)
	.loc 3 1932 12
	movzbl	presume_input_pipe(%rip), %eax
	xorl	$1, %eax
	.loc 3 1932 10
	testb	%al, %al
	je	.L527
	.loc 3 1933 15
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 1933 12
	cmpl	$32768, %eax
	jne	.L527
	.loc 3 1934 28
	movl	-220(%rbp), %eax
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -192(%rbp)
	.loc 3 1934 12
	cmpq	$-1, -192(%rbp)
	je	.L527
	.loc 3 1935 38
	movl	-220(%rbp), %eax
	movl	$2, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -184(%rbp)
	.loc 3 1935 12
	movq	-184(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jle	.L527
	.loc 3 1937 21
	movq	-184(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 3 1938 14
	cmpq	$0, -184(%rbp)
	je	.L532
	.loc 3 1939 20
	movq	-240(%rbp), %r8
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movl	-220(%rbp), %esi
	movq	-216(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	file_lines
	.loc 3 1939 18
	xorl	$1, %eax
	.loc 3 1939 15
	testb	%al, %al
	je	.L532
	.loc 3 1941 20
	movl	$0, %eax
	jmp	.L530
.L527:
	.loc 3 1949 14
	cmpq	$-1, -192(%rbp)
	je	.L529
	.loc 3 1950 13
	movq	-216(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movl	-220(%rbp), %eax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %edi
	call	xlseek
.L529:
	.loc 3 1952 18
	movq	-240(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movl	-220(%rbp), %esi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	pipe_lines
	jmp	.L530
.L532:
	.loc 3 1938 14
	nop
.L526:
.LBE49:
	.loc 3 1955 10
	movl	$1, %eax
.L530:
	.loc 3 1956 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L531
	.loc 3 1956 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L531:
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	tail_lines, .-tail_lines
	.type	tail, @function
tail:
.LFB91:
	.loc 3 1971 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	.loc 3 1972 13
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	.loc 3 1973 7
	movzbl	count_lines(%rip), %eax
	.loc 3 1973 6
	testb	%al, %al
	je	.L534
	.loc 3 1974 12
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tail_lines
	jmp	.L535
.L534:
	.loc 3 1976 12
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tail_bytes
.L535:
	.loc 3 1977 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	tail, .-tail
	.section	.rodata
.LC92:
	.string	"cannot open %s for reading"
	.align 8
.LC93:
	.string	"%s: cannot follow end of this type of file%s"
	.text
	.type	tail_file, @function
tail_file:
.LFB92:
	.loc 3 1984 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	.loc 3 1984 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 1988 20
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 1988 8
	testl	%eax, %eax
	sete	%al
	movb	%al, -189(%rbp)
	.loc 3 1990 6
	cmpb	$0, -189(%rbp)
	je	.L537
	.loc 3 1992 23
	movb	$1, have_read_stdin(%rip)
	.loc 3 1993 10
	movl	$0, -188(%rbp)
	.loc 3 1994 7
	movl	$0, %esi
	movl	$0, %edi
	call	xset_binary_mode@PLT
	jmp	.L538
.L537:
	.loc 3 1997 17
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 1997 10
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open_safer@PLT
	movl	%eax, -188(%rbp)
.L538:
	.loc 3 1999 19
	movzbl	reopen_inaccessible_files(%rip), %eax
	xorl	$1, %eax
	.loc 3 1999 17
	testb	%al, %al
	jne	.L539
	.loc 3 1999 17 is_stmt 0 discriminator 2
	cmpl	$-1, -188(%rbp)
	je	.L540
.L539:
	.loc 3 1999 17 discriminator 3
	movl	$1, %eax
	jmp	.L541
.L540:
	.loc 3 1999 17 discriminator 4
	movl	$0, %eax
.L541:
	.loc 3 1999 17 discriminator 6
	andl	$1, %eax
	.loc 3 1999 15 is_stmt 1 discriminator 6
	movq	-200(%rbp), %rdx
	movb	%al, 54(%rdx)
	.loc 3 2001 6 discriminator 6
	cmpl	$-1, -188(%rbp)
	jne	.L542
	.loc 3 2003 11
	movzbl	forever(%rip), %eax
	.loc 3 2003 10
	testb	%al, %al
	je	.L543
	.loc 3 2005 17
	movq	-200(%rbp), %rax
	movl	$-1, 56(%rax)
	.loc 3 2006 23
	call	__errno_location@PLT
	movl	(%rax), %edx
	.loc 3 2006 21
	movq	-200(%rbp), %rax
	movl	%edx, 60(%rax)
	.loc 3 2007 11
	movzbl	reopen_inaccessible_files(%rip), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 3 2007 23
	andl	$1, %eax
	.loc 3 2007 21
	movq	-200(%rbp), %rdx
	movb	%al, 52(%rdx)
	.loc 3 2008 18
	movq	-200(%rbp), %rax
	movq	$0, 40(%rax)
	.loc 3 2009 18
	movq	-200(%rbp), %rax
	movq	$0, 32(%rax)
.L543:
	.loc 3 2011 7
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 2011 24
	leaq	.LC92(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 2011 17
	call	__errno_location@PLT
	.loc 3 2011 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 2013 10
	movb	$0, -190(%rbp)
	jmp	.L544
.L542:
.LBB50:
	.loc 3 2019 11
	movzbl	print_headers(%rip), %eax
	.loc 3 2019 10
	testb	%al, %al
	je	.L545
	.loc 3 2020 9
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rdi
	call	write_header
.L545:
	.loc 3 2021 12
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rdi
	leaq	-184(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movl	-188(%rbp), %eax
	movl	%eax, %esi
	call	tail
	movb	%al, -190(%rbp)
	.loc 3 2022 11
	movzbl	forever(%rip), %eax
	.loc 3 2022 10
	testb	%al, %al
	je	.L546
.LBB51:
	.loc 3 2032 26
	movzbl	-190(%rbp), %eax
	leal	-1(%rax), %edx
	.loc 3 2032 21
	movq	-200(%rbp), %rax
	movl	%edx, 60(%rax)
	.loc 3 2033 15
	leaq	-176(%rbp), %rdx
	movl	-188(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 3 2033 14
	testl	%eax, %eax
	jns	.L547
	.loc 3 2035 18
	movb	$0, -190(%rbp)
	.loc 3 2036 27
	call	__errno_location@PLT
	movl	(%rax), %edx
	.loc 3 2036 25
	movq	-200(%rbp), %rax
	movl	%edx, 60(%rax)
	.loc 3 2037 15
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 2037 32
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 2037 25
	call	__errno_location@PLT
	.loc 3 2037 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L548
.L547:
	.loc 3 2040 21
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 2040 19
	cmpl	$32768, %eax
	je	.L548
	.loc 3 2040 21 discriminator 1
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	cmpl	$4096, %eax
	je	.L548
	.loc 3 2040 21 is_stmt 0 discriminator 2
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	cmpl	$49152, %eax
	je	.L548
	.loc 3 2040 21 discriminator 3
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 2040 20 is_stmt 1 discriminator 3
	cmpl	$8192, %eax
	je	.L548
	.loc 3 2042 18
	movb	$0, -190(%rbp)
	.loc 3 2043 25
	movq	-200(%rbp), %rax
	movl	$-1, 60(%rax)
	.loc 3 2044 27
	movq	-200(%rbp), %rax
	movb	$0, 54(%rax)
	.loc 3 2045 15
	movzbl	reopen_inaccessible_files(%rip), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 3 2045 27
	andl	$1, %eax
	.loc 3 2045 25
	movq	-200(%rbp), %rdx
	movb	%al, 52(%rdx)
	.loc 3 2048 23
	movq	-200(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 3 2046 15
	testb	%al, %al
	je	.L549
	.loc 3 2048 34
	leaq	.LC70(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	jmp	.L550
.L549:
	.loc 3 2046 15 discriminator 1
	leaq	.LC18(%rip), %rbx
.L550:
	.loc 3 2046 15 is_stmt 0 discriminator 2
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 3 2046 28 is_stmt 1 discriminator 2
	leaq	.LC93(%rip), %rdi
	call	gettext@PLT
	.loc 3 2046 15 discriminator 2
	movq	%rbx, %r8
	movq	%r12, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L548:
	.loc 3 2051 15
	movzbl	-190(%rbp), %eax
	xorl	$1, %eax
	.loc 3 2051 14
	testb	%al, %al
	je	.L551
	.loc 3 2053 15
	movzbl	reopen_inaccessible_files(%rip), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 3 2053 27
	andl	$1, %eax
	.loc 3 2053 25
	movq	-200(%rbp), %rdx
	movb	%al, 52(%rdx)
	.loc 3 2054 15
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rdx
	movl	-188(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	close_fd
	.loc 3 2055 21
	movq	-200(%rbp), %rax
	movl	$-1, 56(%rax)
	jmp	.L544
.L551:
	.loc 3 2062 15
	cmpb	$0, -189(%rbp)
	je	.L553
	.loc 3 2062 15 is_stmt 0 discriminator 1
	movl	$-1, %ecx
	jmp	.L554
.L553:
	.loc 3 2062 15 discriminator 2
	movl	$1, %ecx
.L554:
	.loc 3 2062 15 discriminator 4
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	leaq	-176(%rbp), %rdx
	movl	-188(%rbp), %esi
	movq	-200(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	record_open_fd
	.loc 3 2063 27 is_stmt 1 discriminator 4
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rdx
	movl	-188(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fremote
	.loc 3 2063 25 discriminator 4
	movq	-200(%rbp), %rdx
	movb	%al, 53(%rdx)
	jmp	.L544
.L546:
.LBE51:
	.loc 3 2068 15
	movzbl	-189(%rbp), %eax
	xorl	$1, %eax
	.loc 3 2068 14
	testb	%al, %al
	je	.L544
	.loc 3 2068 28 discriminator 1
	movl	-188(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 3 2068 25 discriminator 1
	testl	%eax, %eax
	je	.L544
	.loc 3 2070 15
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	pretty_name
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 2070 32
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 2070 25
	call	__errno_location@PLT
	.loc 3 2070 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 2072 18
	movb	$0, -190(%rbp)
.L544:
.LBE50:
	.loc 3 2077 10
	movzbl	-190(%rbp), %eax
	.loc 3 2078 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L557
	call	__stack_chk_fail@PLT
.L557:
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	tail_file, .-tail_file
	.section	.rodata
.LC94:
	.string	"--"
.LC95:
	.string	"b"
.LC96:
	.string	"invalid number"
.LC97:
	.string	"%s: %s"
	.text
	.type	parse_obsolete_option, @function
parse_obsolete_option:
.LFB93:
	.loc 3 2091 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	.loc 3 2095 7
	movl	$10, -48(%rbp)
	.loc 3 2097 8
	movb	$1, -52(%rbp)
	.loc 3 2098 8
	movb	$0, -51(%rbp)
	.loc 3 2102 6
	cmpl	$2, -68(%rbp)
	je	.L559
	.loc 3 2103 10
	cmpl	$3, -68(%rbp)
	jne	.L560
	.loc 3 2103 34 discriminator 1
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	.loc 3 2103 37 discriminator 1
	movzbl	(%rax), %eax
	.loc 3 2103 24 discriminator 1
	cmpb	$45, %al
	jne	.L559
	.loc 3 2103 55 discriminator 2
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	.loc 3 2103 58 discriminator 2
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 3 2103 27 discriminator 2
	testb	%al, %al
	je	.L559
.L560:
	.loc 3 2102 7
	cmpl	$2, -68(%rbp)
	jle	.L561
	.loc 3 2104 24
	cmpl	$4, -68(%rbp)
	jg	.L561
	.loc 3 2104 40 discriminator 1
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	.LC94(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 2104 37 discriminator 1
	testl	%eax, %eax
	je	.L559
.L561:
	.loc 3 2105 12
	movl	$0, %eax
	jmp	.L562
.L559:
	.loc 3 2107 19
	call	posix2_version@PLT
	movl	%eax, -44(%rbp)
	.loc 3 2108 8
	cmpl	$200111, -44(%rbp)
	setle	%al
	movb	%al, -50(%rbp)
	.loc 3 2109 43
	cmpb	$0, -50(%rbp)
	jne	.L563
	.loc 3 2109 43 is_stmt 0 discriminator 2
	cmpl	$200808, -44(%rbp)
	jle	.L564
.L563:
	.loc 3 2109 43 discriminator 3
	movl	$1, %eax
	jmp	.L565
.L564:
	.loc 3 2109 43 discriminator 4
	movl	$0, %eax
.L565:
	.loc 3 2109 8 is_stmt 1 discriminator 6
	movb	%al, -49(%rbp)
	andb	$1, -49(%rbp)
	.loc 3 2110 5 discriminator 6
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 3 2112 13 discriminator 6
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 3 2112 11 discriminator 6
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 3 2112 3 discriminator 6
	cmpl	$43, %eax
	je	.L566
	.loc 3 2112 3 is_stmt 0
	cmpl	$45, %eax
	je	.L567
	.loc 3 2115 14 is_stmt 1
	movl	$0, %eax
	jmp	.L562
.L566:
	.loc 3 2119 11
	movzbl	-49(%rbp), %eax
	xorl	$1, %eax
	.loc 3 2119 10
	testb	%al, %al
	je	.L568
	.loc 3 2120 16
	movl	$0, %eax
	jmp	.L562
.L568:
	.loc 3 2122 20
	movb	$1, -53(%rbp)
	.loc 3 2123 7
	jmp	.L569
.L567:
	.loc 3 2130 11
	movzbl	-50(%rbp), %eax
	xorl	$1, %eax
	.loc 3 2130 10
	testb	%al, %al
	je	.L570
	.loc 3 2130 34 discriminator 1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 2130 38 discriminator 1
	cmpb	$99, %al
	sete	%al
	movzbl	%al, %edx
	.loc 3 2130 32 discriminator 1
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 3 2130 27 discriminator 1
	testb	%al, %al
	jne	.L570
	.loc 3 2131 16
	movl	$0, %eax
	jmp	.L562
.L570:
	.loc 3 2133 20
	movb	$0, -53(%rbp)
	.loc 3 2134 7
	nop
.L569:
	.loc 3 2137 12
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 3 2138 9
	jmp	.L571
.L572:
	.loc 3 2139 6
	addq	$1, -40(%rbp)
.L571:
	.loc 3 2138 10
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 3 2138 9
	cmpl	$9, %eax
	jbe	.L572
	.loc 3 2140 16
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 3 2142 11
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 3 2142 3
	cmpl	$108, %eax
	je	.L573
	cmpl	$108, %eax
	jg	.L574
	cmpl	$98, %eax
	je	.L575
	cmpl	$99, %eax
	je	.L576
	jmp	.L574
.L575:
	.loc 3 2144 29
	sall	$9, -48(%rbp)
.L576:
	.loc 3 2145 29
	movb	$0, -52(%rbp)
.L573:
	.loc 3 2146 16
	addq	$1, -40(%rbp)
	.loc 3 2146 5
	nop
.L574:
	.loc 3 2149 7
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 2149 6
	cmpb	$102, %al
	jne	.L577
	.loc 3 2151 17
	movb	$1, -51(%rbp)
	.loc 3 2152 7
	addq	$1, -40(%rbp)
.L577:
	.loc 3 2155 7
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 2155 6
	testb	%al, %al
	je	.L578
	.loc 3 2156 12
	movl	$0, %eax
	jmp	.L562
.L578:
	.loc 3 2158 6
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L579
	.loc 3 2159 14
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L580
.L579:
	.loc 3 2160 13
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	.LC95(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 3 2161 13
	andl	$-3, %eax
	.loc 3 2160 11
	testl	%eax, %eax
	je	.L580
.LBB52:
	.loc 3 2164 7
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC96(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %r8
	movq	%rbx, %rcx
	leaq	.LC97(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L580:
.LBE52:
	.loc 3 2169 14
	movzbl	-53(%rbp), %eax
	movb	%al, from_start(%rip)
	.loc 3 2170 15
	movzbl	-52(%rbp), %eax
	movb	%al, count_lines(%rip)
	.loc 3 2171 11
	movzbl	-51(%rbp), %eax
	movb	%al, forever(%rip)
	.loc 3 2173 10
	movl	$1, %eax
.L562:
	.loc 3 2174 1
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	parse_obsolete_option, .-parse_obsolete_option
	.section	.rodata
.LC98:
	.string	"invalid number of lines"
.LC99:
	.string	"invalid number of bytes"
.LC100:
	.string	"bkKmMGTPEZY0"
.LC101:
	.string	"--follow"
	.align 8
.LC102:
	.string	"invalid maximum number of unchanged stats between opens"
.LC103:
	.string	"invalid PID"
.LC105:
	.string	"invalid number of seconds: %s"
.LC106:
	.string	"David MacKenzie"
.LC107:
	.string	"Paul Rubin"
.LC108:
	.string	"Jim Meyering"
.LC109:
	.string	"Ian Lance Taylor"
	.align 8
.LC110:
	.string	"option used in invalid context -- %c"
.LC111:
	.string	"c:n:fFqs:vz0123456789"
	.align 8
.LC112:
	.string	"warning: --retry ignored; --retry is useful only when following"
	.align 8
.LC113:
	.string	"warning: --retry only effective for the initial open"
	.align 8
.LC114:
	.string	"warning: PID ignored; --pid=PID is useful only when following"
	.align 8
.LC115:
	.string	"warning: --pid=PID is not supported on this system"
	.text
	.type	parse_options, @function
parse_options:
.LFB94:
	.loc 3 2180 1
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
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	.loc 3 2180 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 2183 9
	jmp	.L582
.L609:
	.loc 3 2187 7
	cmpl	$133, -36(%rbp)
	jg	.L583
	cmpl	$48, -36(%rbp)
	jge	.L584
	cmpl	$-131, -36(%rbp)
	je	.L585
	cmpl	$-130, -36(%rbp)
	je	.L586
	jmp	.L583
.L584:
	movl	-36(%rbp), %eax
	subl	$48, %eax
	cmpl	$85, %eax
	ja	.L583
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L588(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L588(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L588:
	.long	.L600-.L588
	.long	.L600-.L588
	.long	.L600-.L588
	.long	.L600-.L588
	.long	.L600-.L588
	.long	.L600-.L588
	.long	.L600-.L588
	.long	.L600-.L588
	.long	.L600-.L588
	.long	.L600-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L599-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L598-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L589-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L598-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L597-.L588
	.long	.L583-.L588
	.long	.L596-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L595-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L594-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L583-.L588
	.long	.L593-.L588
	.long	.L592-.L588
	.long	.L591-.L588
	.long	.L590-.L588
	.long	.L589-.L588
	.long	.L587-.L588
	.text
.L599:
.LBB53:
	.loc 3 2190 19
	movb	$1, forever(%rip)
	.loc 3 2191 23
	movl	$1, follow_mode(%rip)
	.loc 3 2192 37
	movb	$1, reopen_inaccessible_files(%rip)
	.loc 3 2193 11
	jmp	.L582
.L598:
	.loc 3 2197 28
	cmpl	$110, -36(%rbp)
	sete	%al
	.loc 3 2197 23
	movb	%al, count_lines(%rip)
	.loc 3 2198 15
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 3 2198 14
	cmpb	$43, %al
	jne	.L601
	.loc 3 2199 24
	movb	$1, from_start(%rip)
	jmp	.L602
.L601:
	.loc 3 2200 20
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 3 2200 19
	cmpb	$45, %al
	jne	.L602
	.loc 3 2201 13
	movq	optarg(%rip), %rax
	addq	$1, %rax
	movq	%rax, optarg(%rip)
.L602:
	.loc 3 2205 34
	movzbl	count_lines(%rip), %eax
	.loc 3 2203 22
	testb	%al, %al
	je	.L603
	.loc 3 2205 36
	leaq	.LC98(%rip), %rdi
	call	gettext@PLT
	jmp	.L604
.L603:
	.loc 3 2206 36
	leaq	.LC99(%rip), %rdi
	call	gettext@PLT
.L604:
	.loc 3 2203 22
	movq	optarg(%rip), %rdi
	movl	$0, %r9d
	movq	%rax, %r8
	leaq	.LC100(%rip), %rcx
	movq	$-1, %rdx
	movl	$0, %esi
	call	xdectoumax@PLT
	.loc 3 2203 20
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 3 2207 11
	jmp	.L582
.L589:
	.loc 3 2211 19
	movb	$1, forever(%rip)
	.loc 3 2212 22
	movq	optarg(%rip), %rax
	.loc 3 2212 14
	testq	%rax, %rax
	jne	.L605
	.loc 3 2213 25
	movl	$2, follow_mode(%rip)
	jmp	.L582
.L605:
	.loc 3 2215 27
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	follow_mode_map(%rip), %rcx
	leaq	follow_mode_string(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC101(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	follow_mode_map(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 3 2215 25
	movl	%eax, follow_mode(%rip)
	.loc 3 2217 11
	jmp	.L582
.L593:
	.loc 3 2220 37
	movb	$1, reopen_inaccessible_files(%rip)
	.loc 3 2221 11
	jmp	.L582
.L592:
	.loc 3 2227 15
	leaq	.LC102(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 2226 13
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC18(%rip), %rcx
	movq	$-1, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	.loc 3 2225 47
	movq	%rax, max_n_unchanged_stats_between_opens(%rip)
	.loc 3 2228 11
	jmp	.L582
.L587:
	.loc 3 2231 27
	movb	$1, disable_inotify(%rip)
	.loc 3 2232 11
	jmp	.L582
.L591:
	.loc 3 2235 55
	leaq	.LC103(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 2235 17
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC18(%rip), %rcx
	movl	$2147483647, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	.loc 3 2235 15
	movl	%eax, pid(%rip)
	.loc 3 2236 11
	jmp	.L582
.L590:
	.loc 3 2239 30
	movb	$1, presume_input_pipe(%rip)
	.loc 3 2240 11
	jmp	.L582
.L597:
	.loc 3 2243 24
	movq	-80(%rbp), %rax
	movl	$2, (%rax)
	.loc 3 2244 11
	jmp	.L582
.L596:
.LBB54:
	.loc 3 2249 20
	movq	optarg(%rip), %rax
	leaq	-32(%rbp), %rdx
	movq	cl_strtod@GOTPCREL(%rip), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtod@PLT
	xorl	$1, %eax
	.loc 3 2249 16
	testb	%al, %al
	jne	.L607
	.loc 3 2249 63 discriminator 1
	movsd	-32(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	setnb	%al
	xorl	$1, %eax
	.loc 3 2249 17 discriminator 1
	testb	%al, %al
	je	.L608
.L607:
.LBB55:
	.loc 3 2250 15
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC105(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L608:
.LBE55:
	.loc 3 2252 29
	movsd	-32(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBE54:
	.loc 3 2254 11
	jmp	.L582
.L595:
	.loc 3 2257 24
	movq	-80(%rbp), %rax
	movl	$1, (%rax)
	.loc 3 2258 11
	jmp	.L582
.L594:
	.loc 3 2261 20
	movb	$0, line_end(%rip)
	.loc 3 2262 11
	jmp	.L582
.L586:
	.loc 3 2264 9
	movl	$0, %edi
	call	usage
.L585:
	.loc 3 2266 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC108(%rip), %rcx
	pushq	%rcx
	leaq	.LC109(%rip), %rcx
	pushq	%rcx
	leaq	.LC106(%rip), %r9
	leaq	.LC107(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC50(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$32, %rsp
	movl	$0, %edi
	call	exit@PLT
.L600:
	.loc 3 2270 11
	leaq	.LC110(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L583:
	.loc 3 2273 11
	movl	$1, %edi
	call	usage
.L582:
.LBE53:
	.loc 3 2183 15
	movq	-64(%rbp), %rsi
	movl	-52(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC111(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -36(%rbp)
	.loc 3 2183 9
	cmpl	$-1, -36(%rbp)
	jne	.L609
	.loc 3 2277 7
	movzbl	reopen_inaccessible_files(%rip), %eax
	.loc 3 2277 6
	testb	%al, %al
	je	.L610
	.loc 3 2279 11
	movzbl	forever(%rip), %eax
	xorl	$1, %eax
	.loc 3 2279 10
	testb	%al, %al
	je	.L611
	.loc 3 2281 37
	movb	$0, reopen_inaccessible_files(%rip)
	.loc 3 2282 24
	leaq	.LC112(%rip), %rdi
	call	gettext@PLT
	.loc 3 2282 11
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L610
.L611:
	.loc 3 2285 28
	movl	follow_mode(%rip), %eax
	.loc 3 2285 15
	cmpl	$2, %eax
	jne	.L610
	.loc 3 2286 22
	leaq	.LC113(%rip), %rdi
	call	gettext@PLT
	.loc 3 2286 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L610:
	.loc 3 2289 7
	movl	pid(%rip), %eax
	.loc 3 2289 6
	testl	%eax, %eax
	je	.L612
	.loc 3 2289 14 discriminator 1
	movzbl	forever(%rip), %eax
	xorl	$1, %eax
	.loc 3 2289 11 discriminator 1
	testb	%al, %al
	je	.L612
	.loc 3 2291 12
	leaq	.LC114(%rip), %rdi
	call	gettext@PLT
	.loc 3 2290 5
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 2297 1
	jmp	.L615
.L612:
	.loc 3 2292 12
	movl	pid(%rip), %eax
	.loc 3 2292 11
	testl	%eax, %eax
	je	.L615
	.loc 3 2292 19 discriminator 1
	movl	pid(%rip), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	kill@PLT
	.loc 3 2292 16 discriminator 1
	testl	%eax, %eax
	je	.L615
	.loc 3 2292 41 discriminator 2
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 2292 38 discriminator 2
	cmpl	$38, %eax
	jne	.L615
	.loc 3 2294 20
	leaq	.LC115(%rip), %rdi
	call	gettext@PLT
	.loc 3 2294 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 2295 11
	movl	$0, pid(%rip)
.L615:
	.loc 3 2297 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L614
	call	__stack_chk_fail@PLT
.L614:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	parse_options, .-parse_options
	.type	ignore_fifo_and_pipe, @function
ignore_fifo_and_pipe:
.LFB95:
	.loc 3 2303 1
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
	.loc 3 2308 10
	movq	$0, -16(%rbp)
.LBB56:
	.loc 3 2310 15
	movq	$0, -8(%rbp)
	.loc 3 2310 3
	jmp	.L617
.L622:
.LBB57:
	.loc 3 2313 10
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 2316 10
	testl	%eax, %eax
	jne	.L618
	.loc 3 2314 15
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 2314 18
	movzbl	52(%rax), %eax
	.loc 3 2314 13
	xorl	$1, %eax
	.loc 3 2314 10
	testb	%al, %al
	je	.L618
	.loc 3 2315 19
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 2315 22
	movl	56(%rax), %eax
	.loc 3 2315 10
	testl	%eax, %eax
	js	.L618
	.loc 3 2316 14 discriminator 3
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 3 2316 10 discriminator 3
	cmpl	$4096, %eax
	jne	.L618
	.loc 3 2316 10 is_stmt 0 discriminator 2
	movl	$1, %eax
	jmp	.L619
.L618:
	.loc 3 2316 10 discriminator 1
	movl	$0, %eax
.L619:
	.loc 3 2312 12 is_stmt 1
	movb	%al, -17(%rbp)
	andb	$1, -17(%rbp)
	.loc 3 2318 10
	cmpb	$0, -17(%rbp)
	je	.L620
	.loc 3 2320 12
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 2320 19
	movl	$-1, 56(%rax)
	.loc 3 2321 12
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 2321 23
	movb	$1, 52(%rax)
	jmp	.L621
.L620:
	.loc 3 2324 9
	addq	$1, -16(%rbp)
.L621:
.LBE57:
	.loc 3 2310 36 discriminator 2
	addq	$1, -8(%rbp)
.L617:
	.loc 3 2310 3 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L622
.LBE56:
	.loc 3 2327 10
	movq	-16(%rbp), %rax
	.loc 3 2328 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	ignore_fifo_and_pipe, .-ignore_fifo_and_pipe
	.section	.rodata
.LC117:
	.string	"/usr/local/share/locale"
.LC118:
	.string	"0 <= argc"
.LC119:
	.string	"cannot follow %s by name"
	.align 8
.LC120:
	.string	"warning: following standard input indefinitely is ineffective"
	.align 8
.LC121:
	.string	"inotify cannot be used, reverting to polling"
	.text
	.globl	main
	.type	main, @function
main:
.LFB96:
	.loc 3 2332 1
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
	.loc 3 2332 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 2333 20
	movl	$0, -232(%rbp)
	.loc 3 2334 8
	movb	$1, -236(%rbp)
	.loc 3 2338 13
	movq	$10, -224(%rbp)
	.loc 3 2348 10
	movsd	.LC116(%rip), %xmm0
	movsd	%xmm0, -216(%rbp)
	.loc 3 2351 3
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 3 2352 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 3 2353 3
	leaq	.LC117(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 3 2354 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 3 2356 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 3 2358 19
	movb	$0, have_read_stdin(%rip)
	.loc 3 2360 15
	movb	$1, count_lines(%rip)
	.loc 3 2361 40
	movb	$0, print_headers(%rip)
	.loc 3 2361 24
	movzbl	print_headers(%rip), %eax
	movb	%al, from_start(%rip)
	.loc 3 2361 11
	movzbl	from_start(%rip), %eax
	movb	%al, forever(%rip)
	.loc 3 2362 12
	movb	$10, line_end(%rip)
	.loc 3 2363 21
	leaq	-224(%rbp), %rdx
	movq	-256(%rbp), %rcx
	movl	-244(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	parse_obsolete_option
	movb	%al, -234(%rbp)
	.loc 3 2364 8
	movzbl	-234(%rbp), %eax
	subl	%eax, -244(%rbp)
	.loc 3 2365 8
	movzbl	-234(%rbp), %eax
	salq	$3, %rax
	addq	%rax, -256(%rbp)
	.loc 3 2366 3
	leaq	-216(%rbp), %rdi
	leaq	-232(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	movq	-256(%rbp), %rsi
	movl	-244(%rbp), %eax
	movq	%rdi, %r8
	movl	%eax, %edi
	call	parse_options
	.loc 3 2371 7
	movzbl	from_start(%rip), %eax
	.loc 3 2371 6
	testb	%al, %al
	je	.L625
	.loc 3 2373 11
	movq	-224(%rbp), %rax
	.loc 3 2373 10
	testq	%rax, %rax
	je	.L625
	.loc 3 2374 9
	movq	-224(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -224(%rbp)
.L625:
	.loc 3 2377 3
	cmpl	$0, -244(%rbp)
	jns	.L626
	.loc 3 2377 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7249(%rip), %rcx
	movl	$2377, %edx
	leaq	.LC62(%rip), %rsi
	leaq	.LC118(%rip), %rdi
	call	__assert_fail@PLT
.L626:
	.loc 3 2379 14 is_stmt 1
	movl	optind(%rip), %eax
	.loc 3 2379 6
	cmpl	%eax, -244(%rbp)
	jle	.L627
	.loc 3 2381 22
	movl	optind(%rip), %eax
	movl	-244(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 3 2381 15
	cltq
	movq	%rax, -208(%rbp)
	.loc 3 2382 19
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 3 2382 12
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	jmp	.L628
.L627:
.LBB58:
	.loc 3 2387 15
	movq	$1, -208(%rbp)
	.loc 3 2388 12
	leaq	dummy_stdin.7250(%rip), %rax
	movq	%rax, -200(%rbp)
.L628:
.LBE58:
.LBB59:
	.loc 3 2392 10
	movb	$0, -235(%rbp)
	.loc 3 2394 12
	movq	$0, -192(%rbp)
	.loc 3 2394 5
	jmp	.L629
.L631:
	.loc 3 2395 11
	movq	-192(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC51(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 2395 10
	testl	%eax, %eax
	jne	.L630
	.loc 3 2396 22
	movb	$1, -235(%rbp)
.L630:
	.loc 3 2394 31 discriminator 2
	addq	$1, -192(%rbp)
.L629:
	.loc 3 2394 5 discriminator 1
	movq	-192(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jb	.L631
	.loc 3 2399 8
	cmpb	$0, -235(%rbp)
	je	.L632
	.loc 3 2399 37 discriminator 1
	movl	follow_mode(%rip), %eax
	.loc 3 2399 22 discriminator 1
	cmpl	$1, %eax
	jne	.L632
.LBB60:
	.loc 3 2400 7
	leaq	.LC51(%rip), %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC119(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L632:
.LBE60:
	.loc 3 2406 9
	movzbl	forever(%rip), %eax
	.loc 3 2406 8
	testb	%al, %al
	je	.L633
	.loc 3 2406 17 discriminator 1
	cmpb	$0, -235(%rbp)
	je	.L633
.LBB61:
	.loc 3 2410 31
	movl	pid(%rip), %eax
	.loc 3 2412 27
	testl	%eax, %eax
	jne	.L634
	.loc 3 2410 51
	movl	follow_mode(%rip), %eax
	.loc 3 2410 36
	cmpl	$2, %eax
	jne	.L634
	.loc 3 2411 27
	cmpq	$1, -208(%rbp)
	jne	.L634
	.loc 3 2411 48 discriminator 1
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	fstat@PLT
	.loc 3 2411 43 discriminator 1
	testl	%eax, %eax
	jne	.L634
	.loc 3 2412 32 discriminator 3
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 2412 27 discriminator 3
	cmpl	$32768, %eax
	je	.L634
	.loc 3 2412 27 is_stmt 0 discriminator 2
	movl	$1, %eax
	jmp	.L635
.L634:
	.loc 3 2412 27 discriminator 1
	movl	$0, %eax
.L635:
	.loc 3 2410 24 is_stmt 1
	movb	%al, -233(%rbp)
	andb	$1, -233(%rbp)
	.loc 3 2414 13
	movzbl	-233(%rbp), %eax
	xorl	$1, %eax
	.loc 3 2414 12
	testb	%al, %al
	je	.L633
	.loc 3 2414 33 discriminator 1
	movl	$0, %edi
	call	isatty@PLT
	.loc 3 2414 30 discriminator 1
	testl	%eax, %eax
	je	.L633
	.loc 3 2415 24
	leaq	.LC120(%rip), %rdi
	call	gettext@PLT
	.loc 3 2415 11
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L633:
.LBE61:
.LBE59:
	.loc 3 2421 7
	movq	-224(%rbp), %rax
	.loc 3 2421 6
	testq	%rax, %rax
	jne	.L637
	.loc 3 2421 20 discriminator 1
	movzbl	forever(%rip), %eax
	xorl	$1, %eax
	.loc 3 2421 17 discriminator 1
	testb	%al, %al
	je	.L637
	.loc 3 2421 33 discriminator 2
	movzbl	from_start(%rip), %eax
	xorl	$1, %eax
	.loc 3 2421 30 discriminator 2
	testb	%al, %al
	je	.L637
	.loc 3 2422 12
	movl	$0, %eax
	jmp	.L657
.L637:
	.loc 3 2424 7
	movq	-208(%rbp), %rax
	movl	$96, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -184(%rbp)
	.loc 3 2425 10
	movq	$0, -192(%rbp)
	.loc 3 2425 3
	jmp	.L639
.L640:
	.loc 3 2426 21 discriminator 3
	movq	-192(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-200(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 3 2426 6 discriminator 3
	movq	-192(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 2426 21 discriminator 3
	movq	(%rcx), %rax
	.loc 3 2426 15 discriminator 3
	movq	%rax, (%rdx)
	.loc 3 2425 29 discriminator 3
	addq	$1, -192(%rbp)
.L639:
	.loc 3 2425 3 discriminator 1
	movq	-192(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jb	.L640
	.loc 3 2428 19
	movl	-232(%rbp), %eax
	.loc 3 2428 6
	cmpl	$1, %eax
	je	.L641
	.loc 3 2429 23
	movl	-232(%rbp), %eax
	.loc 3 2429 7
	testl	%eax, %eax
	jne	.L642
	.loc 3 2429 41 discriminator 1
	cmpq	$1, -208(%rbp)
	jbe	.L642
.L641:
	.loc 3 2430 19
	movb	$1, print_headers(%rip)
.L642:
	.loc 3 2432 3
	movl	$0, %esi
	movl	$1, %edi
	call	xset_binary_mode@PLT
	.loc 3 2434 10
	movq	$0, -192(%rbp)
	.loc 3 2434 3
	jmp	.L643
.L644:
	.loc 3 2435 11 discriminator 3
	movq	-224(%rbp), %rcx
	.loc 3 2435 24 discriminator 3
	movq	-192(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	.loc 3 2435 11 discriminator 3
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tail_file
	.loc 3 2435 8 discriminator 3
	movzbl	-236(%rbp), %edx
	.loc 3 2435 11 discriminator 3
	movzbl	%al, %eax
	.loc 3 2435 8 discriminator 3
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -236(%rbp)
	.loc 3 2434 29 discriminator 3
	addq	$1, -192(%rbp)
.L643:
	.loc 3 2434 3 discriminator 1
	movq	-192(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jb	.L644
	.loc 3 2437 7
	movzbl	forever(%rip), %eax
	.loc 3 2437 6
	testb	%al, %al
	je	.L645
	.loc 3 2437 18 discriminator 1
	movq	-208(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ignore_fifo_and_pipe
	.loc 3 2437 15 discriminator 1
	testq	%rax, %rax
	je	.L645
.LBB62:
	.loc 3 2443 11
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	fstat@PLT
	.loc 3 2443 10
	testl	%eax, %eax
	jns	.L646
.LBB63:
	.loc 3 2444 9
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L646:
.LBE63:
	.loc 3 2445 25
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 2446 25
	cmpl	$4096, %eax
	sete	%al
	.loc 3 2445 22
	movb	%al, monitor_output(%rip)
	.loc 3 2486 11
	movzbl	disable_inotify(%rip), %eax
	xorl	$1, %eax
	.loc 3 2486 10
	testb	%al, %al
	je	.L647
	.loc 3 2486 32 discriminator 1
	movq	-208(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tailable_stdin
	.loc 3 2486 28 discriminator 1
	testb	%al, %al
	jne	.L648
	.loc 3 2487 35
	movq	-208(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	any_remote_file
	.loc 3 2487 32
	testb	%al, %al
	jne	.L648
	.loc 3 2488 37
	movq	-208(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	any_non_remote_file
	.loc 3 2488 35
	xorl	$1, %eax
	.loc 3 2488 32
	testb	%al, %al
	jne	.L648
	.loc 3 2489 35
	movq	-208(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	any_symlinks
	.loc 3 2489 32
	testb	%al, %al
	jne	.L648
	.loc 3 2490 35
	movq	-208(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	any_non_regular_fifo
	.loc 3 2490 32
	testb	%al, %al
	jne	.L648
	.loc 3 2491 36
	movzbl	-236(%rbp), %eax
	xorl	$1, %eax
	.loc 3 2491 32
	testb	%al, %al
	je	.L647
	.loc 3 2491 55 discriminator 1
	movl	follow_mode(%rip), %eax
	.loc 3 2491 40 discriminator 1
	cmpl	$2, %eax
	jne	.L647
.L648:
	.loc 3 2492 25
	movb	$1, disable_inotify(%rip)
.L647:
	.loc 3 2494 11
	movzbl	disable_inotify(%rip), %eax
	xorl	$1, %eax
	.loc 3 2494 10
	testb	%al, %al
	je	.L649
.LBB64:
	.loc 3 2496 20
	call	inotify_init@PLT
	movl	%eax, -228(%rbp)
	.loc 3 2497 14
	cmpl	$0, -228(%rbp)
	js	.L650
	.loc 3 2502 19
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush_unlocked@PLT
	.loc 3 2502 18
	testl	%eax, %eax
	je	.L651
.LBB65:
	.loc 3 2503 17
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L651:
.LBE65:
	.loc 3 2505 21
	movq	-216(%rbp), %rsi
	movq	-208(%rbp), %rdx
	movq	-184(%rbp), %rcx
	movl	-228(%rbp), %eax
	movq	%rsi, %xmm0
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	tail_forever_inotify
	.loc 3 2505 19
	xorl	$1, %eax
	.loc 3 2505 18
	testb	%al, %al
	je	.L650
	.loc 3 2506 24
	movl	$1, %eax
	jmp	.L657
.L650:
	.loc 3 2508 28
	leaq	.LC121(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 2508 21
	call	__errno_location@PLT
	.loc 3 2508 11
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 2513 18
	movq	$0, -192(%rbp)
	.loc 3 2513 11
	jmp	.L652
.L655:
	.loc 3 2517 20
	movq	-192(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 2517 23
	movl	68(%rax), %eax
	.loc 3 2517 18
	cmpl	$-1, %eax
	je	.L653
	.loc 3 2518 40
	movq	-192(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 2518 17
	movl	68(%rax), %edx
	movl	-228(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	inotify_rm_watch@PLT
.L653:
	.loc 3 2519 20
	movq	-192(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 2519 23
	movl	72(%rax), %eax
	.loc 3 2519 18
	cmpl	$-1, %eax
	je	.L654
	.loc 3 2520 40
	movq	-192(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 2520 17
	movl	72(%rax), %edx
	movl	-228(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	inotify_rm_watch@PLT
.L654:
	.loc 3 2513 37 discriminator 2
	addq	$1, -192(%rbp)
.L652:
	.loc 3 2513 11 discriminator 1
	movq	-192(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jb	.L655
.L649:
.LBE64:
	.loc 3 2524 23
	movb	$1, disable_inotify(%rip)
	.loc 3 2525 7
	movq	-216(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rcx, %xmm0
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tail_forever
.L645:
.LBE62:
	.loc 3 2528 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 2530 7
	movzbl	have_read_stdin(%rip), %eax
	.loc 3 2530 6
	testb	%al, %al
	je	.L656
	.loc 3 2530 26 discriminator 1
	movl	$0, %edi
	call	close@PLT
	.loc 3 2530 23 discriminator 1
	testl	%eax, %eax
	jns	.L656
.LBB66:
	.loc 3 2531 5
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC51(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L656:
.LBE66:
	.loc 3 2532 28
	movzbl	-236(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
.L657:
	.loc 3 2533 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L658
	.loc 3 2533 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L658:
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	main, .-main
	.data
	.type	first_file.6781, @object
	.size	first_file.6781, 1
first_file.6781:
	.byte	1
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.6867, @object
	.size	__PRETTY_FUNCTION__.6867, 11
__PRETTY_FUNCTION__.6867:
	.string	"pipe_lines"
	.align 8
	.type	__PRETTY_FUNCTION__.6945, @object
	.size	__PRETTY_FUNCTION__.6945, 8
__PRETTY_FUNCTION__.6945:
	.string	"fremote"
	.align 8
	.type	__PRETTY_FUNCTION__.6957, @object
	.size	__PRETTY_FUNCTION__.6957, 8
__PRETTY_FUNCTION__.6957:
	.string	"recheck"
	.type	__PRETTY_FUNCTION__.7249, @object
	.size	__PRETTY_FUNCTION__.7249, 5
__PRETTY_FUNCTION__.7249:
	.string	"main"
	.section	.data.rel.local,"aw"
	.align 8
	.type	dummy_stdin.7250, @object
	.size	dummy_stdin.7250, 8
dummy_stdin.7250:
	.quad	.LC51
	.section	.rodata
	.align 8
.LC87:
	.long	0
	.long	1093567616
	.align 8
.LC116:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 10 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 14 "/usr/include/x86_64-linux-gnu/sys/select.h"
	.file 15 "./lib/sys/select.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 18 "/usr/include/signal.h"
	.file 19 "/usr/include/time.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 21 "/usr/include/unistd.h"
	.file 22 "/usr/include/errno.h"
	.file 23 "src/version.h"
	.file 24 "./lib/exitfail.h"
	.file 25 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 26 "/usr/include/stdint.h"
	.file 27 "./lib/timespec.h"
	.file 28 "./lib/version-etc.h"
	.file 29 "./lib/progname.h"
	.file 30 "./lib/quotearg.h"
	.file 31 "./lib/quote.h"
	.file 32 "./lib/argmatch.h"
	.file 33 "./lib/error.h"
	.file 34 "./lib/xstrtol.h"
	.file 35 "./lib/hash.h"
	.file 36 "/usr/include/x86_64-linux-gnu/sys/inotify.h"
	.file 37 "/usr/include/x86_64-linux-gnu/bits/statfs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x297f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF368
	.byte	0xc
	.long	.LASF369
	.long	.LASF370
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF6
	.byte	0x4
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
	.byte	0x5
	.byte	0x2a
	.byte	0x16
	.long	0x40
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0x91
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF12
	.byte	0x5
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x2
	.long	.LASF13
	.byte	0x5
	.byte	0x94
	.byte	0x19
	.long	0x39
	.uleb128 0x2
	.long	.LASF14
	.byte	0x5
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x2
	.long	.LASF15
	.byte	0x5
	.byte	0x97
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF16
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x7d
	.uleb128 0x2
	.long	.LASF17
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x7d
	.uleb128 0x2
	.long	.LASF18
	.byte	0x5
	.byte	0x9a
	.byte	0x19
	.long	0x65
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.byte	0x9b
	.byte	0xc
	.long	0x113
	.uleb128 0x8
	.long	.LASF29
	.byte	0x5
	.byte	0x9b
	.byte	0xc
	.long	0x113
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x65
	.long	0x123
	.uleb128 0xa
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x5
	.byte	0x9b
	.byte	0x1a
	.long	0xfc
	.uleb128 0x2
	.long	.LASF20
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x7d
	.uleb128 0x2
	.long	.LASF21
	.byte	0x5
	.byte	0xa2
	.byte	0x1f
	.long	0x7d
	.uleb128 0x2
	.long	.LASF22
	.byte	0x5
	.byte	0xae
	.byte	0x1d
	.long	0x7d
	.uleb128 0x2
	.long	.LASF23
	.byte	0x5
	.byte	0xb3
	.byte	0x1c
	.long	0x7d
	.uleb128 0x2
	.long	.LASF24
	.byte	0x5
	.byte	0xb7
	.byte	0x1e
	.long	0x39
	.uleb128 0x2
	.long	.LASF25
	.byte	0x5
	.byte	0xbb
	.byte	0x1e
	.long	0x39
	.uleb128 0x2
	.long	.LASF26
	.byte	0x5
	.byte	0xbf
	.byte	0x1c
	.long	0x7d
	.uleb128 0x2
	.long	.LASF27
	.byte	0x5
	.byte	0xc4
	.byte	0x21
	.long	0x7d
	.uleb128 0xb
	.byte	0x8
	.long	0x19a
	.uleb128 0xc
	.long	0x18f
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF28
	.uleb128 0xc
	.long	0x19a
	.uleb128 0xd
	.long	.LASF78
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x32d
	.uleb128 0x8
	.long	.LASF30
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x18f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x18f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x18f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x18f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF35
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x18f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF36
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x18f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x18f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x18f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x18f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF40
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x18f
	.byte	0x50
	.uleb128 0x8
	.long	.LASF41
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x18f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF42
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x346
	.byte	0x60
	.uleb128 0x8
	.long	.LASF43
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x34c
	.byte	0x68
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0xd8
	.byte	0x78
	.uleb128 0x8
	.long	.LASF47
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0x8
	.long	.LASF48
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0x8
	.long	.LASF49
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x352
	.byte	0x83
	.uleb128 0x8
	.long	.LASF50
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x362
	.byte	0x88
	.uleb128 0x8
	.long	.LASF51
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0xe4
	.byte	0x90
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x36d
	.byte	0x98
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x378
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x34c
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x37e
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x1a6
	.uleb128 0xe
	.long	.LASF371
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xf
	.long	.LASF60
	.uleb128 0xb
	.byte	0x8
	.long	0x341
	.uleb128 0xb
	.byte	0x8
	.long	0x1a6
	.uleb128 0x9
	.long	0x19a
	.long	0x362
	.uleb128 0xa
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x339
	.uleb128 0xf
	.long	.LASF61
	.uleb128 0xb
	.byte	0x8
	.long	0x368
	.uleb128 0xf
	.long	.LASF62
	.uleb128 0xb
	.byte	0x8
	.long	0x373
	.uleb128 0x9
	.long	0x19a
	.long	0x38e
	.uleb128 0xa
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x1a1
	.uleb128 0xc
	.long	0x38e
	.uleb128 0x2
	.long	.LASF63
	.byte	0x8
	.byte	0x3f
	.byte	0x11
	.long	0xd8
	.uleb128 0x10
	.long	.LASF64
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x3b1
	.uleb128 0xb
	.byte	0x8
	.long	0x32d
	.uleb128 0x10
	.long	.LASF65
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x3b1
	.uleb128 0x10
	.long	.LASF66
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x3b1
	.uleb128 0x10
	.long	.LASF67
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	0x394
	.long	0x3e6
	.uleb128 0x11
	.byte	0
	.uleb128 0xc
	.long	0x3db
	.uleb128 0x10
	.long	.LASF68
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x3e6
	.uleb128 0x10
	.long	.LASF69
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x65
	.uleb128 0x10
	.long	.LASF70
	.byte	0x9
	.byte	0x1f
	.byte	0x1a
	.long	0x3e6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF71
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF72
	.uleb128 0x2
	.long	.LASF73
	.byte	0xa
	.byte	0x2f
	.byte	0x11
	.long	0xb4
	.uleb128 0x2
	.long	.LASF74
	.byte	0xa
	.byte	0x3b
	.byte	0x11
	.long	0x90
	.uleb128 0x2
	.long	.LASF75
	.byte	0xa
	.byte	0x45
	.byte	0x12
	.long	0xc0
	.uleb128 0x2
	.long	.LASF76
	.byte	0xa
	.byte	0x61
	.byte	0x11
	.long	0xf0
	.uleb128 0x2
	.long	.LASF77
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0x12f
	.uleb128 0xd
	.long	.LASF79
	.byte	0x10
	.byte	0xc
	.byte	0x8
	.byte	0x8
	.long	0x481
	.uleb128 0x8
	.long	.LASF80
	.byte	0xc
	.byte	0xa
	.byte	0xc
	.long	0x12f
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0xc
	.byte	0xb
	.byte	0x11
	.long	0x13b
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF82
	.byte	0x10
	.byte	0xd
	.byte	0xa
	.byte	0x8
	.long	0x4a9
	.uleb128 0x8
	.long	.LASF80
	.byte	0xd
	.byte	0xc
	.byte	0xc
	.long	0x12f
	.byte	0
	.uleb128 0x8
	.long	.LASF83
	.byte	0xd
	.byte	0x10
	.byte	0x15
	.long	0x183
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF84
	.byte	0xe
	.byte	0x31
	.byte	0x12
	.long	0x7d
	.uleb128 0x7
	.byte	0x80
	.byte	0xe
	.byte	0x3b
	.byte	0x9
	.long	0x4cc
	.uleb128 0x8
	.long	.LASF85
	.byte	0xe
	.byte	0x40
	.byte	0xf
	.long	0x4cc
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x4a9
	.long	0x4dc
	.uleb128 0xa
	.long	0x39
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.long	.LASF86
	.byte	0xe
	.byte	0x46
	.byte	0x5
	.long	0x4b5
	.uleb128 0x12
	.long	.LASF87
	.byte	0xf
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF88
	.uleb128 0x10
	.long	.LASF89
	.byte	0x10
	.byte	0x24
	.byte	0xe
	.long	0x18f
	.uleb128 0x10
	.long	.LASF90
	.byte	0x10
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0x10
	.long	.LASF91
	.byte	0x10
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0x10
	.long	.LASF92
	.byte	0x10
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	.LASF93
	.byte	0x20
	.byte	0x11
	.byte	0x32
	.byte	0x8
	.long	0x56e
	.uleb128 0x8
	.long	.LASF94
	.byte	0x11
	.byte	0x34
	.byte	0xf
	.long	0x38e
	.byte	0
	.uleb128 0x8
	.long	.LASF95
	.byte	0x11
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0x8
	.long	.LASF96
	.byte	0x11
	.byte	0x38
	.byte	0x8
	.long	0x573
	.byte	0x10
	.uleb128 0x13
	.string	"val"
	.byte	0x11
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0x52c
	.uleb128 0xb
	.byte	0x8
	.long	0x65
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x8
	.long	0x579
	.uleb128 0x9
	.long	0x394
	.long	0x590
	.uleb128 0xa
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0xc
	.long	0x580
	.uleb128 0x12
	.long	.LASF97
	.byte	0x12
	.value	0x11e
	.byte	0x1a
	.long	0x590
	.uleb128 0x12
	.long	.LASF98
	.byte	0x12
	.value	0x11f
	.byte	0x1a
	.long	0x590
	.uleb128 0x9
	.long	0x18f
	.long	0x5bf
	.uleb128 0xa
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF99
	.byte	0x13
	.byte	0x9f
	.byte	0xe
	.long	0x5af
	.uleb128 0x10
	.long	.LASF100
	.byte	0x13
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0x10
	.long	.LASF101
	.byte	0x13
	.byte	0xa1
	.byte	0x11
	.long	0x7d
	.uleb128 0x10
	.long	.LASF102
	.byte	0x13
	.byte	0xa6
	.byte	0xe
	.long	0x5af
	.uleb128 0x10
	.long	.LASF103
	.byte	0x13
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0x10
	.long	.LASF104
	.byte	0x13
	.byte	0xaf
	.byte	0x11
	.long	0x7d
	.uleb128 0x12
	.long	.LASF105
	.byte	0x13
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	.LASF106
	.byte	0x90
	.byte	0x14
	.byte	0x2e
	.byte	0x8
	.long	0x6e5
	.uleb128 0x8
	.long	.LASF107
	.byte	0x14
	.byte	0x30
	.byte	0xd
	.long	0x90
	.byte	0
	.uleb128 0x8
	.long	.LASF108
	.byte	0x14
	.byte	0x35
	.byte	0xd
	.long	0xb4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF109
	.byte	0x14
	.byte	0x3d
	.byte	0xf
	.long	0xcc
	.byte	0x10
	.uleb128 0x8
	.long	.LASF110
	.byte	0x14
	.byte	0x3e
	.byte	0xe
	.long	0xc0
	.byte	0x18
	.uleb128 0x8
	.long	.LASF111
	.byte	0x14
	.byte	0x40
	.byte	0xd
	.long	0x9c
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF112
	.byte	0x14
	.byte	0x41
	.byte	0xd
	.long	0xa8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF113
	.byte	0x14
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0x8
	.long	.LASF114
	.byte	0x14
	.byte	0x45
	.byte	0xd
	.long	0x90
	.byte	0x28
	.uleb128 0x8
	.long	.LASF115
	.byte	0x14
	.byte	0x4a
	.byte	0xd
	.long	0xd8
	.byte	0x30
	.uleb128 0x8
	.long	.LASF116
	.byte	0x14
	.byte	0x4e
	.byte	0x11
	.long	0x147
	.byte	0x38
	.uleb128 0x8
	.long	.LASF117
	.byte	0x14
	.byte	0x50
	.byte	0x10
	.long	0x153
	.byte	0x40
	.uleb128 0x8
	.long	.LASF118
	.byte	0x14
	.byte	0x5b
	.byte	0x15
	.long	0x481
	.byte	0x48
	.uleb128 0x8
	.long	.LASF119
	.byte	0x14
	.byte	0x5c
	.byte	0x15
	.long	0x481
	.byte	0x58
	.uleb128 0x8
	.long	.LASF120
	.byte	0x14
	.byte	0x5d
	.byte	0x15
	.long	0x481
	.byte	0x68
	.uleb128 0x8
	.long	.LASF121
	.byte	0x14
	.byte	0x6a
	.byte	0x17
	.long	0x6ea
	.byte	0x78
	.byte	0
	.uleb128 0xc
	.long	0x614
	.uleb128 0x9
	.long	0x183
	.long	0x6fa
	.uleb128 0xa
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.long	.LASF122
	.byte	0x15
	.value	0x21f
	.byte	0xf
	.long	0x707
	.uleb128 0xb
	.byte	0x8
	.long	0x18f
	.uleb128 0x12
	.long	.LASF123
	.byte	0x15
	.value	0x221
	.byte	0xf
	.long	0x707
	.uleb128 0x10
	.long	.LASF124
	.byte	0x16
	.byte	0x2d
	.byte	0xe
	.long	0x18f
	.uleb128 0x10
	.long	.LASF125
	.byte	0x16
	.byte	0x2e
	.byte	0xe
	.long	0x18f
	.uleb128 0xb
	.byte	0x8
	.long	0x738
	.uleb128 0x15
	.uleb128 0x10
	.long	.LASF126
	.byte	0x17
	.byte	0x1
	.byte	0x14
	.long	0x38e
	.uleb128 0x10
	.long	.LASF127
	.byte	0x18
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF128
	.byte	0x19
	.byte	0x1a
	.byte	0x14
	.long	0x71
	.uleb128 0x2
	.long	.LASF129
	.byte	0x1a
	.byte	0x66
	.byte	0x16
	.long	0x84
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1b
	.byte	0x29
	.byte	0x6
	.long	0x781
	.uleb128 0x17
	.long	.LASF130
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1b
	.byte	0x2a
	.byte	0x6
	.long	0x796
	.uleb128 0x18
	.long	.LASF131
	.byte	0x9
	.byte	0
	.uleb128 0x19
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x7b4
	.uleb128 0x1a
	.long	.LASF132
	.sleb128 -130
	.uleb128 0x1a
	.long	.LASF133
	.sleb128 -131
	.byte	0
	.uleb128 0x9
	.long	0x1a1
	.long	0x7bf
	.uleb128 0x11
	.byte	0
	.uleb128 0xc
	.long	0x7b4
	.uleb128 0x10
	.long	.LASF134
	.byte	0x1c
	.byte	0x19
	.byte	0x13
	.long	0x7bf
	.uleb128 0x10
	.long	.LASF135
	.byte	0x1d
	.byte	0x20
	.byte	0x14
	.long	0x38e
	.uleb128 0x1b
	.long	.LASF156
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1e
	.byte	0x20
	.byte	0x6
	.long	0x831
	.uleb128 0x18
	.long	.LASF136
	.byte	0
	.uleb128 0x18
	.long	.LASF137
	.byte	0x1
	.uleb128 0x18
	.long	.LASF138
	.byte	0x2
	.uleb128 0x18
	.long	.LASF139
	.byte	0x3
	.uleb128 0x18
	.long	.LASF140
	.byte	0x4
	.uleb128 0x18
	.long	.LASF141
	.byte	0x5
	.uleb128 0x18
	.long	.LASF142
	.byte	0x6
	.uleb128 0x18
	.long	.LASF143
	.byte	0x7
	.uleb128 0x18
	.long	.LASF144
	.byte	0x8
	.uleb128 0x18
	.long	.LASF145
	.byte	0x9
	.uleb128 0x18
	.long	.LASF146
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.long	0x7dc
	.uleb128 0x12
	.long	.LASF147
	.byte	0x1e
	.value	0x10b
	.byte	0x1a
	.long	0x3e6
	.uleb128 0x9
	.long	0x831
	.long	0x84e
	.uleb128 0x11
	.byte	0
	.uleb128 0xc
	.long	0x843
	.uleb128 0x12
	.long	.LASF148
	.byte	0x1e
	.value	0x10c
	.byte	0x21
	.long	0x84e
	.uleb128 0xf
	.long	.LASF149
	.uleb128 0x10
	.long	.LASF150
	.byte	0x1f
	.byte	0x19
	.byte	0x1f
	.long	0x860
	.uleb128 0x2
	.long	.LASF151
	.byte	0x20
	.byte	0x3d
	.byte	0x10
	.long	0x57a
	.uleb128 0x10
	.long	.LASF152
	.byte	0x20
	.byte	0x3e
	.byte	0x19
	.long	0x871
	.uleb128 0x10
	.long	.LASF153
	.byte	0x21
	.byte	0x32
	.byte	0xf
	.long	0x57a
	.uleb128 0x10
	.long	.LASF154
	.byte	0x21
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0x10
	.long	.LASF155
	.byte	0x21
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x1b
	.long	.LASF157
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x22
	.byte	0x19
	.byte	0x6
	.long	0x8de
	.uleb128 0x18
	.long	.LASF158
	.byte	0
	.uleb128 0x18
	.long	.LASF159
	.byte	0x1
	.uleb128 0x18
	.long	.LASF160
	.byte	0x2
	.uleb128 0x18
	.long	.LASF161
	.byte	0x3
	.uleb128 0x18
	.long	.LASF162
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF163
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF164
	.uleb128 0x2
	.long	.LASF165
	.byte	0x23
	.byte	0x32
	.byte	0x1b
	.long	0x8f8
	.uleb128 0xf
	.long	.LASF166
	.uleb128 0xd
	.long	.LASF167
	.byte	0x10
	.byte	0x24
	.byte	0x1c
	.byte	0x8
	.long	0x94b
	.uleb128 0x13
	.string	"wd"
	.byte	0x24
	.byte	0x1e
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0x8
	.long	.LASF168
	.byte	0x24
	.byte	0x1f
	.byte	0xc
	.long	0x751
	.byte	0x4
	.uleb128 0x8
	.long	.LASF169
	.byte	0x24
	.byte	0x20
	.byte	0xc
	.long	0x751
	.byte	0x8
	.uleb128 0x13
	.string	"len"
	.byte	0x24
	.byte	0x21
	.byte	0xc
	.long	0x751
	.byte	0xc
	.uleb128 0x8
	.long	.LASF94
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.long	0x94b
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.long	0x19a
	.long	0x95a
	.uleb128 0x1c
	.long	0x39
	.byte	0
	.uleb128 0xd
	.long	.LASF170
	.byte	0x78
	.byte	0x25
	.byte	0x18
	.byte	0x8
	.long	0xa04
	.uleb128 0x8
	.long	.LASF171
	.byte	0x25
	.byte	0x1a
	.byte	0x10
	.long	0x177
	.byte	0
	.uleb128 0x8
	.long	.LASF172
	.byte	0x25
	.byte	0x1b
	.byte	0x10
	.long	0x177
	.byte	0x8
	.uleb128 0x8
	.long	.LASF173
	.byte	0x25
	.byte	0x1d
	.byte	0x12
	.long	0x15f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF174
	.byte	0x25
	.byte	0x1e
	.byte	0x12
	.long	0x15f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF175
	.byte	0x25
	.byte	0x1f
	.byte	0x12
	.long	0x15f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF176
	.byte	0x25
	.byte	0x20
	.byte	0x12
	.long	0x16b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF177
	.byte	0x25
	.byte	0x21
	.byte	0x12
	.long	0x16b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF178
	.byte	0x25
	.byte	0x29
	.byte	0xe
	.long	0x123
	.byte	0x38
	.uleb128 0x8
	.long	.LASF179
	.byte	0x25
	.byte	0x2a
	.byte	0x10
	.long	0x177
	.byte	0x40
	.uleb128 0x8
	.long	.LASF180
	.byte	0x25
	.byte	0x2b
	.byte	0x10
	.long	0x177
	.byte	0x48
	.uleb128 0x8
	.long	.LASF181
	.byte	0x25
	.byte	0x2c
	.byte	0x10
	.long	0x177
	.byte	0x50
	.uleb128 0x8
	.long	.LASF182
	.byte	0x25
	.byte	0x2d
	.byte	0x10
	.long	0xa04
	.byte	0x58
	.byte	0
	.uleb128 0x9
	.long	0x177
	.long	0xa14
	.uleb128 0xa
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.long	.LASF183
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x3
	.byte	0x5b
	.byte	0x6
	.long	0xa33
	.uleb128 0x18
	.long	.LASF184
	.byte	0x1
	.uleb128 0x18
	.long	.LASF185
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0xa14
	.uleb128 0x9
	.long	0x394
	.long	0xa48
	.uleb128 0xa
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0xa38
	.uleb128 0x1d
	.long	.LASF186
	.byte	0x3
	.byte	0x6c
	.byte	0x1a
	.long	0xa48
	.uleb128 0x9
	.byte	0x3
	.quad	follow_mode_string
	.uleb128 0x9
	.long	0xa33
	.long	0xa73
	.uleb128 0xa
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	0xa63
	.uleb128 0x1d
	.long	.LASF187
	.byte	0x3
	.byte	0x71
	.byte	0x1f
	.long	0xa73
	.uleb128 0x9
	.byte	0x3
	.quad	follow_mode_map
	.uleb128 0xd
	.long	.LASF188
	.byte	0x60
	.byte	0x3
	.byte	0x76
	.byte	0x8
	.long	0xb6a
	.uleb128 0x8
	.long	.LASF94
	.byte	0x3
	.byte	0x79
	.byte	0x9
	.long	0x18f
	.byte	0
	.uleb128 0x8
	.long	.LASF189
	.byte	0x3
	.byte	0x7c
	.byte	0x9
	.long	0x399
	.byte	0x8
	.uleb128 0x8
	.long	.LASF190
	.byte	0x3
	.byte	0x7d
	.byte	0x13
	.long	0x481
	.byte	0x10
	.uleb128 0x13
	.string	"dev"
	.byte	0x3
	.byte	0x7e
	.byte	0x9
	.long	0x429
	.byte	0x20
	.uleb128 0x13
	.string	"ino"
	.byte	0x3
	.byte	0x7f
	.byte	0x9
	.long	0x41d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF191
	.byte	0x3
	.byte	0x80
	.byte	0xa
	.long	0x435
	.byte	0x30
	.uleb128 0x8
	.long	.LASF192
	.byte	0x3
	.byte	0x85
	.byte	0x8
	.long	0x8e5
	.byte	0x34
	.uleb128 0x8
	.long	.LASF193
	.byte	0x3
	.byte	0x88
	.byte	0x8
	.long	0x8e5
	.byte	0x35
	.uleb128 0x8
	.long	.LASF194
	.byte	0x3
	.byte	0x8c
	.byte	0x8
	.long	0x8e5
	.byte	0x36
	.uleb128 0x13
	.string	"fd"
	.byte	0x3
	.byte	0x8f
	.byte	0x7
	.long	0x65
	.byte	0x38
	.uleb128 0x8
	.long	.LASF195
	.byte	0x3
	.byte	0x92
	.byte	0x7
	.long	0x65
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF196
	.byte	0x3
	.byte	0x95
	.byte	0x7
	.long	0x65
	.byte	0x40
	.uleb128 0x13
	.string	"wd"
	.byte	0x3
	.byte	0x99
	.byte	0x7
	.long	0x65
	.byte	0x44
	.uleb128 0x8
	.long	.LASF197
	.byte	0x3
	.byte	0x9d
	.byte	0x7
	.long	0x65
	.byte	0x48
	.uleb128 0x8
	.long	.LASF198
	.byte	0x3
	.byte	0xa0
	.byte	0xa
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF199
	.byte	0x3
	.byte	0xa4
	.byte	0xd
	.long	0x75d
	.byte	0x58
	.byte	0
	.uleb128 0xc
	.long	0xa8e
	.uleb128 0x1d
	.long	.LASF200
	.byte	0x3
	.byte	0xa9
	.byte	0xd
	.long	0x8e5
	.uleb128 0x9
	.byte	0x3
	.quad	reopen_inaccessible_files
	.uleb128 0x1d
	.long	.LASF201
	.byte	0x3
	.byte	0xad
	.byte	0xd
	.long	0x8e5
	.uleb128 0x9
	.byte	0x3
	.quad	count_lines
	.uleb128 0x1d
	.long	.LASF202
	.byte	0x3
	.byte	0xb1
	.byte	0x19
	.long	0xa14
	.uleb128 0x9
	.byte	0x3
	.quad	follow_mode
	.uleb128 0x1d
	.long	.LASF203
	.byte	0x3
	.byte	0xb4
	.byte	0xd
	.long	0x8e5
	.uleb128 0x9
	.byte	0x3
	.quad	forever
	.uleb128 0x1d
	.long	.LASF204
	.byte	0x3
	.byte	0xb7
	.byte	0xd
	.long	0x8e5
	.uleb128 0x9
	.byte	0x3
	.quad	monitor_output
	.uleb128 0x1d
	.long	.LASF205
	.byte	0x3
	.byte	0xba
	.byte	0xd
	.long	0x8e5
	.uleb128 0x9
	.byte	0x3
	.quad	from_start
	.uleb128 0x1d
	.long	.LASF206
	.byte	0x3
	.byte	0xbd
	.byte	0xd
	.long	0x8e5
	.uleb128 0x9
	.byte	0x3
	.quad	print_headers
	.uleb128 0x1d
	.long	.LASF207
	.byte	0x3
	.byte	0xc0
	.byte	0xd
	.long	0x19a
	.uleb128 0x9
	.byte	0x3
	.quad	line_end
	.uleb128 0x1b
	.long	.LASF208
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x3
	.byte	0xc3
	.byte	0x6
	.long	0xc44
	.uleb128 0x18
	.long	.LASF209
	.byte	0
	.uleb128 0x18
	.long	.LASF210
	.byte	0x1
	.uleb128 0x18
	.long	.LASF211
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.long	.LASF212
	.byte	0x3
	.byte	0xce
	.byte	0x12
	.long	0x75d
	.uleb128 0x9
	.byte	0x3
	.quad	max_n_unchanged_stats_between_opens
	.uleb128 0x1e
	.string	"pid"
	.byte	0x3
	.byte	0xd3
	.byte	0xe
	.long	0x441
	.uleb128 0x9
	.byte	0x3
	.quad	pid
	.uleb128 0x1d
	.long	.LASF213
	.byte	0x3
	.byte	0xd6
	.byte	0xd
	.long	0x8e5
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x1d
	.long	.LASF214
	.byte	0x3
	.byte	0xdb
	.byte	0xd
	.long	0x8e5
	.uleb128 0x9
	.byte	0x3
	.quad	presume_input_pipe
	.uleb128 0x1d
	.long	.LASF215
	.byte	0x3
	.byte	0xde
	.byte	0xd
	.long	0x8e5
	.uleb128 0x9
	.byte	0x3
	.quad	disable_inotify
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x3
	.byte	0xe3
	.byte	0x1
	.long	0xce5
	.uleb128 0x18
	.long	.LASF216
	.byte	0x80
	.uleb128 0x18
	.long	.LASF217
	.byte	0x81
	.uleb128 0x18
	.long	.LASF218
	.byte	0x82
	.uleb128 0x18
	.long	.LASF219
	.byte	0x83
	.uleb128 0x18
	.long	.LASF220
	.byte	0x84
	.uleb128 0x18
	.long	.LASF221
	.byte	0x85
	.byte	0
	.uleb128 0x9
	.long	0x56e
	.long	0xcf5
	.uleb128 0xa
	.long	0x39
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.long	0xce5
	.uleb128 0x1d
	.long	.LASF222
	.byte	0x3
	.byte	0xec
	.byte	0x1c
	.long	0xcf5
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x1f
	.long	.LASF354
	.byte	0x3
	.value	0x91b
	.byte	0x1
	.long	0x65
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0xf12
	.uleb128 0x20
	.long	.LASF223
	.byte	0x3
	.value	0x91b
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x20
	.long	.LASF224
	.byte	0x3
	.value	0x91b
	.byte	0x18
	.long	0x707
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x21
	.long	.LASF208
	.byte	0x3
	.value	0x91d
	.byte	0x14
	.long	0xc1f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x22
	.string	"ok"
	.byte	0x3
	.value	0x91e
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x21
	.long	.LASF225
	.byte	0x3
	.value	0x922
	.byte	0xd
	.long	0x75d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x21
	.long	.LASF226
	.byte	0x3
	.value	0x923
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x21
	.long	.LASF227
	.byte	0x3
	.value	0x924
	.byte	0xa
	.long	0x707
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x22
	.string	"F"
	.byte	0x3
	.value	0x925
	.byte	0x15
	.long	0xf12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.value	0x926
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x21
	.long	.LASF228
	.byte	0x3
	.value	0x927
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -250
	.uleb128 0x21
	.long	.LASF229
	.byte	0x3
	.value	0x92c
	.byte	0xa
	.long	0xf18
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x23
	.long	.LASF317
	.long	0xf2f
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7249
	.uleb128 0x24
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.long	0xe29
	.uleb128 0x21
	.long	.LASF230
	.byte	0x3
	.value	0x952
	.byte	0x14
	.long	0x18f
	.uleb128 0x9
	.byte	0x3
	.quad	dummy_stdin.7250
	.byte	0
	.uleb128 0x24
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.long	0xe95
	.uleb128 0x21
	.long	.LASF231
	.byte	0x3
	.value	0x958
	.byte	0xa
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -251
	.uleb128 0x25
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x26
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x21
	.long	.LASF232
	.byte	0x3
	.value	0x968
	.byte	0x15
	.long	0x614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.long	.LASF233
	.byte	0x3
	.value	0x969
	.byte	0xe
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -249
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.long	0xf00
	.uleb128 0x21
	.long	.LASF234
	.byte	0x3
	.value	0x98a
	.byte	0x13
	.long	0x614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x25
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x26
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.uleb128 0x22
	.string	"wd"
	.byte	0x3
	.value	0x9c0
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x25
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0xa8e
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF235
	.uleb128 0x9
	.long	0x1a1
	.long	0xf2f
	.uleb128 0xa
	.long	0x39
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	0xf1f
	.uleb128 0x27
	.long	.LASF238
	.byte	0x3
	.value	0x8fe
	.byte	0x1
	.long	0x2d
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0xfc8
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.value	0x8fe
	.byte	0x29
	.long	0xf12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF226
	.byte	0x3
	.value	0x8fe
	.byte	0x33
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF236
	.byte	0x3
	.value	0x904
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.value	0x906
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x21
	.long	.LASF237
	.byte	0x3
	.value	0x908
	.byte	0xc
	.long	0x8e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF289
	.byte	0x3
	.value	0x881
	.byte	0x1
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x108e
	.uleb128 0x20
	.long	.LASF223
	.byte	0x3
	.value	0x881
	.byte	0x14
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x20
	.long	.LASF224
	.byte	0x3
	.value	0x881
	.byte	0x21
	.long	0x707
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF225
	.byte	0x3
	.value	0x882
	.byte	0x1b
	.long	0x108e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.long	.LASF208
	.byte	0x3
	.value	0x882
	.byte	0x36
	.long	0x1094
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.long	.LASF229
	.byte	0x3
	.value	0x883
	.byte	0x18
	.long	0x109a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.string	"c"
	.byte	0x3
	.value	0x885
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x26
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x8c8
	.byte	0x14
	.long	0xf18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x75d
	.uleb128 0xb
	.byte	0x8
	.long	0xc1f
	.uleb128 0xb
	.byte	0x8
	.long	0xf18
	.uleb128 0x27
	.long	.LASF239
	.byte	0x3
	.value	0x82a
	.byte	0x1
	.long	0x8e5
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x11ab
	.uleb128 0x20
	.long	.LASF223
	.byte	0x3
	.value	0x82a
	.byte	0x1c
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x20
	.long	.LASF224
	.byte	0x3
	.value	0x82a
	.byte	0x30
	.long	0x11ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.long	.LASF225
	.byte	0x3
	.value	0x82a
	.byte	0x41
	.long	0x108e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.string	"p"
	.byte	0x3
	.value	0x82c
	.byte	0xf
	.long	0x38e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF240
	.byte	0x3
	.value	0x82d
	.byte	0xf
	.long	0x38e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF241
	.byte	0x3
	.value	0x82e
	.byte	0xf
	.long	0x38e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF242
	.byte	0x3
	.value	0x82f
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF243
	.byte	0x3
	.value	0x830
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x21
	.long	.LASF244
	.byte	0x3
	.value	0x831
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.long	.LASF245
	.byte	0x3
	.value	0x832
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -67
	.uleb128 0x21
	.long	.LASF246
	.byte	0x3
	.value	0x83b
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.long	.LASF247
	.byte	0x3
	.value	0x83c
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x21
	.long	.LASF248
	.byte	0x3
	.value	0x83d
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x25
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x195
	.uleb128 0x27
	.long	.LASF249
	.byte	0x3
	.value	0x7bf
	.byte	0x1
	.long	0x8e5
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x126c
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.value	0x7bf
	.byte	0x1e
	.long	0xf12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x20
	.long	.LASF225
	.byte	0x3
	.value	0x7bf
	.byte	0x2b
	.long	0x75d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x22
	.string	"fd"
	.byte	0x3
	.value	0x7c1
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x22
	.string	"ok"
	.byte	0x3
	.value	0x7c2
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -206
	.uleb128 0x21
	.long	.LASF250
	.byte	0x3
	.value	0x7c4
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -205
	.uleb128 0x26
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x21
	.long	.LASF251
	.byte	0x3
	.value	0x7e1
	.byte	0x11
	.long	0x75d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x21
	.long	.LASF252
	.byte	0x3
	.value	0x7e8
	.byte	0x17
	.long	0x614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF253
	.byte	0x3
	.value	0x7b1
	.byte	0x1
	.long	0x8e5
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x12cf
	.uleb128 0x20
	.long	.LASF254
	.byte	0x3
	.value	0x7b1
	.byte	0x13
	.long	0x38e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"fd"
	.byte	0x3
	.value	0x7b1
	.byte	0x21
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.long	.LASF225
	.byte	0x3
	.value	0x7b1
	.byte	0x2f
	.long	0x75d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF251
	.byte	0x3
	.value	0x7b2
	.byte	0x12
	.long	0x108e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.long	.LASF255
	.byte	0x3
	.value	0x773
	.byte	0x1
	.long	0x8e5
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x13a0
	.uleb128 0x20
	.long	.LASF256
	.byte	0x3
	.value	0x773
	.byte	0x19
	.long	0x38e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x28
	.string	"fd"
	.byte	0x3
	.value	0x773
	.byte	0x2e
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x20
	.long	.LASF257
	.byte	0x3
	.value	0x773
	.byte	0x3c
	.long	0x75d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x20
	.long	.LASF251
	.byte	0x3
	.value	0x774
	.byte	0x18
	.long	0x108e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x21
	.long	.LASF252
	.byte	0x3
	.value	0x776
	.byte	0xf
	.long	0x614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x24
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x136b
	.uleb128 0x22
	.string	"t"
	.byte	0x3
	.value	0x780
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.byte	0
	.uleb128 0x26
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x21
	.long	.LASF258
	.byte	0x3
	.value	0x787
	.byte	0xd
	.long	0x399
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x21
	.long	.LASF259
	.byte	0x3
	.value	0x788
	.byte	0xd
	.long	0x399
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF260
	.byte	0x3
	.value	0x734
	.byte	0x1
	.long	0x8e5
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x1494
	.uleb128 0x20
	.long	.LASF256
	.byte	0x3
	.value	0x734
	.byte	0x19
	.long	0x38e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x28
	.string	"fd"
	.byte	0x3
	.value	0x734
	.byte	0x2e
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x20
	.long	.LASF261
	.byte	0x3
	.value	0x734
	.byte	0x3c
	.long	0x75d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x20
	.long	.LASF251
	.byte	0x3
	.value	0x735
	.byte	0x18
	.long	0x108e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x21
	.long	.LASF252
	.byte	0x3
	.value	0x737
	.byte	0xf
	.long	0x614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x24
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x143c
	.uleb128 0x22
	.string	"t"
	.byte	0x3
	.value	0x748
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.uleb128 0x26
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x21
	.long	.LASF259
	.byte	0x3
	.value	0x750
	.byte	0xd
	.long	0x399
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x21
	.long	.LASF262
	.byte	0x3
	.value	0x751
	.byte	0xd
	.long	0x399
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x26
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x21
	.long	.LASF263
	.byte	0x3
	.value	0x760
	.byte	0x11
	.long	0x399
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF264
	.byte	0x3
	.value	0x5ad
	.byte	0x1
	.long	0x8e5
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x17c8
	.uleb128 0x28
	.string	"wd"
	.byte	0x3
	.value	0x5ad
	.byte	0x1b
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.value	0x5ad
	.byte	0x31
	.long	0xf12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x20
	.long	.LASF226
	.byte	0x3
	.value	0x5ad
	.byte	0x3b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x20
	.long	.LASF229
	.byte	0x3
	.value	0x5ae
	.byte	0x1e
	.long	0xf18
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x21
	.long	.LASF265
	.byte	0x3
	.value	0x5b5
	.byte	0x10
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x21
	.long	.LASF266
	.byte	0x3
	.value	0x5b8
	.byte	0xf
	.long	0x17c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x21
	.long	.LASF267
	.byte	0x3
	.value	0x5ba
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x21
	.long	.LASF268
	.byte	0x3
	.value	0x5bb
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -431
	.uleb128 0x21
	.long	.LASF269
	.byte	0x3
	.value	0x5bc
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -430
	.uleb128 0x21
	.long	.LASF270
	.byte	0x3
	.value	0x5bd
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -429
	.uleb128 0x21
	.long	.LASF271
	.byte	0x3
	.value	0x5be
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x21
	.long	.LASF272
	.byte	0x3
	.value	0x5bf
	.byte	0x15
	.long	0xf12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x21
	.long	.LASF273
	.byte	0x3
	.value	0x5c0
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x21
	.long	.LASF274
	.byte	0x3
	.value	0x5c1
	.byte	0x9
	.long	0x18f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x21
	.long	.LASF275
	.byte	0x3
	.value	0x5c2
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x22
	.string	"len"
	.byte	0x3
	.value	0x5c3
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x21
	.long	.LASF276
	.byte	0x3
	.value	0x5ca
	.byte	0xc
	.long	0x751
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.value	0x5d3
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x24
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x163f
	.uleb128 0x21
	.long	.LASF277
	.byte	0x3
	.value	0x5d8
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x26
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x21
	.long	.LASF278
	.byte	0x3
	.value	0x5e0
	.byte	0x16
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x21
	.long	.LASF279
	.byte	0x3
	.value	0x5e1
	.byte	0x14
	.long	0x19a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -427
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x1666
	.uleb128 0x21
	.long	.LASF252
	.byte	0x3
	.value	0x636
	.byte	0x1b
	.long	0x614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x26
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x21
	.long	.LASF280
	.byte	0x3
	.value	0x652
	.byte	0x19
	.long	0xf12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x22
	.string	"ev"
	.byte	0x3
	.value	0x653
	.byte	0x1d
	.long	0x17ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x21
	.long	.LASF281
	.byte	0x3
	.value	0x654
	.byte	0xd
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xc0
	.long	0x172f
	.uleb128 0x21
	.long	.LASF282
	.byte	0x3
	.value	0x664
	.byte	0x1a
	.long	0x459
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x22
	.string	"rfd"
	.byte	0x3
	.value	0x676
	.byte	0x13
	.long	0x4dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.long	.LASF283
	.byte	0x3
	.value	0x67c
	.byte	0x10
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x24
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x171d
	.uleb128 0x21
	.long	.LASF284
	.byte	0x3
	.value	0x677
	.byte	0xc
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x21
	.long	.LASF285
	.byte	0x3
	.value	0x677
	.byte	0xc
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.byte	0
	.uleb128 0x25
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.byte	0
	.uleb128 0x25
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0xf0
	.long	0x17a3
	.uleb128 0x22
	.string	"j"
	.byte	0x3
	.value	0x6bb
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x21
	.long	.LASF286
	.byte	0x3
	.value	0x6cb
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x21
	.long	.LASF287
	.byte	0x3
	.value	0x6cc
	.byte	0x10
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -426
	.uleb128 0x21
	.long	.LASF288
	.byte	0x3
	.value	0x6e6
	.byte	0x10
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -425
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x21
	.long	.LASF279
	.byte	0x3
	.value	0x6f9
	.byte	0x21
	.long	0xf12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x22
	.string	"key"
	.byte	0x3
	.value	0x70b
	.byte	0x1c
	.long	0xa8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x8ec
	.uleb128 0xb
	.byte	0x8
	.long	0x8fd
	.uleb128 0x29
	.long	.LASF290
	.byte	0x3
	.value	0x57a
	.byte	0x1
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x186b
	.uleb128 0x20
	.long	.LASF280
	.byte	0x3
	.value	0x57a
	.byte	0x20
	.long	0xf12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x20
	.long	.LASF272
	.byte	0x3
	.value	0x57a
	.byte	0x3a
	.long	0x186b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x21
	.long	.LASF252
	.byte	0x3
	.value	0x57c
	.byte	0xf
	.long	0x614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.long	.LASF94
	.byte	0x3
	.value	0x57d
	.byte	0xf
	.long	0x38e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x21
	.long	.LASF291
	.byte	0x3
	.value	0x59b
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -209
	.uleb128 0x21
	.long	.LASF292
	.byte	0x3
	.value	0x59d
	.byte	0xd
	.long	0x75d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x25
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0xf12
	.uleb128 0x2c
	.long	.LASF293
	.byte	0x3
	.value	0x570
	.byte	0x1
	.long	0x8e5
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x18d3
	.uleb128 0x28
	.string	"e1"
	.byte	0x3
	.value	0x570
	.byte	0x1c
	.long	0x732
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"e2"
	.byte	0x3
	.value	0x570
	.byte	0x2c
	.long	0x732
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF294
	.byte	0x3
	.value	0x572
	.byte	0x1b
	.long	0x18d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF295
	.byte	0x3
	.value	0x573
	.byte	0x1b
	.long	0x18d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0xb6a
	.uleb128 0x2c
	.long	.LASF296
	.byte	0x3
	.value	0x569
	.byte	0x1
	.long	0x2d
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x192d
	.uleb128 0x20
	.long	.LASF297
	.byte	0x3
	.value	0x569
	.byte	0x18
	.long	0x732
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF298
	.byte	0x3
	.value	0x569
	.byte	0x26
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF299
	.byte	0x3
	.value	0x56b
	.byte	0x1b
	.long	0x18d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF300
	.byte	0x3
	.value	0x560
	.byte	0x1
	.long	0x8e5
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x198f
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.value	0x560
	.byte	0x29
	.long	0x18d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF226
	.byte	0x3
	.value	0x560
	.byte	0x33
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.value	0x562
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF301
	.byte	0x3
	.value	0x554
	.byte	0x1
	.long	0x8e5
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x19f1
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.value	0x554
	.byte	0x2f
	.long	0x18d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF226
	.byte	0x3
	.value	0x554
	.byte	0x39
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.value	0x556
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF302
	.byte	0x3
	.value	0x545
	.byte	0x1
	.long	0x8e5
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a66
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.value	0x545
	.byte	0x27
	.long	0x18d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x20
	.long	.LASF226
	.byte	0x3
	.value	0x545
	.byte	0x31
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x22
	.string	"st"
	.byte	0x3
	.value	0x547
	.byte	0xf
	.long	0x614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x26
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.value	0x548
	.byte	0xf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF303
	.byte	0x3
	.value	0x537
	.byte	0x1
	.long	0x8e5
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ac8
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.value	0x537
	.byte	0x2e
	.long	0x18d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF226
	.byte	0x3
	.value	0x537
	.byte	0x38
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.value	0x539
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF304
	.byte	0x3
	.value	0x52b
	.byte	0x1
	.long	0x8e5
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b2a
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.value	0x52b
	.byte	0x2a
	.long	0x18d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF226
	.byte	0x3
	.value	0x52b
	.byte	0x34
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.value	0x52d
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF305
	.byte	0x3
	.value	0x482
	.byte	0x1
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cc2
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.value	0x482
	.byte	0x21
	.long	0xf12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x20
	.long	.LASF226
	.byte	0x3
	.value	0x482
	.byte	0x2b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x20
	.long	.LASF229
	.byte	0x3
	.value	0x482
	.byte	0x3b
	.long	0xf18
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x21
	.long	.LASF196
	.byte	0x3
	.value	0x485
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -249
	.uleb128 0x21
	.long	.LASF306
	.byte	0x3
	.value	0x487
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x21
	.long	.LASF271
	.byte	0x3
	.value	0x488
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -251
	.uleb128 0x26
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.value	0x48e
	.byte	0xe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x21
	.long	.LASF307
	.byte	0x3
	.value	0x48f
	.byte	0xc
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -250
	.uleb128 0x24
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1c9e
	.uleb128 0x22
	.string	"fd"
	.byte	0x3
	.value	0x493
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x21
	.long	.LASF94
	.byte	0x3
	.value	0x494
	.byte	0x17
	.long	0x38e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x21
	.long	.LASF191
	.byte	0x3
	.value	0x495
	.byte	0x12
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x21
	.long	.LASF252
	.byte	0x3
	.value	0x496
	.byte	0x17
	.long	0x614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.long	.LASF292
	.byte	0x3
	.value	0x497
	.byte	0x15
	.long	0x75d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x21
	.long	.LASF308
	.byte	0x3
	.value	0x4f6
	.byte	0x15
	.long	0x75d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x26
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x21
	.long	.LASF309
	.byte	0x3
	.value	0x4a8
	.byte	0x13
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x21
	.long	.LASF310
	.byte	0x3
	.value	0x4a9
	.byte	0x13
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x25
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x25
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF311
	.byte	0x3
	.value	0x464
	.byte	0x1
	.long	0x8e5
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d24
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.value	0x464
	.byte	0x29
	.long	0x18d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF226
	.byte	0x3
	.value	0x464
	.byte	0x33
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.value	0x46c
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF312
	.byte	0x3
	.value	0x3d3
	.byte	0x1
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dec
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.value	0x3d3
	.byte	0x1c
	.long	0xf12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x20
	.long	.LASF196
	.byte	0x3
	.value	0x3d3
	.byte	0x24
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x21
	.long	.LASF313
	.byte	0x3
	.value	0x3d5
	.byte	0xf
	.long	0x614
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x22
	.string	"ok"
	.byte	0x3
	.value	0x3d6
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x21
	.long	.LASF250
	.byte	0x3
	.value	0x3d7
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -202
	.uleb128 0x21
	.long	.LASF314
	.byte	0x3
	.value	0x3d8
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -201
	.uleb128 0x21
	.long	.LASF315
	.byte	0x3
	.value	0x3d9
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x21
	.long	.LASF316
	.byte	0x3
	.value	0x3da
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -203
	.uleb128 0x22
	.string	"fd"
	.byte	0x3
	.value	0x3db
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x23
	.long	.LASF317
	.long	0x1dfc
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6957
	.byte	0
	.uleb128 0x9
	.long	0x1a1
	.long	0x1dfc
	.uleb128 0xa
	.long	0x39
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.long	0x1dec
	.uleb128 0x27
	.long	.LASF318
	.byte	0x3
	.value	0x3aa
	.byte	0x1
	.long	0x8e5
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e8c
	.uleb128 0x28
	.string	"fd"
	.byte	0x3
	.value	0x3aa
	.byte	0xe
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x20
	.long	.LASF94
	.byte	0x3
	.value	0x3aa
	.byte	0x1e
	.long	0x38e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.long	.LASF193
	.byte	0x3
	.value	0x3ac
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -165
	.uleb128 0x22
	.string	"buf"
	.byte	0x3
	.value	0x3b0
	.byte	0x11
	.long	0x95a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.string	"err"
	.byte	0x3
	.value	0x3b1
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x23
	.long	.LASF317
	.long	0x1dfc
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6945
	.byte	0
	.uleb128 0x27
	.long	.LASF319
	.byte	0x3
	.value	0x382
	.byte	0x1
	.long	0x65
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f4f
	.uleb128 0x20
	.long	.LASF256
	.byte	0x3
	.value	0x382
	.byte	0x1a
	.long	0x38e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8280
	.uleb128 0x28
	.string	"fd"
	.byte	0x3
	.value	0x382
	.byte	0x2f
	.long	0x65
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8284
	.uleb128 0x20
	.long	.LASF257
	.byte	0x3
	.value	0x382
	.byte	0x3d
	.long	0x75d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8296
	.uleb128 0x20
	.long	.LASF251
	.byte	0x3
	.value	0x383
	.byte	0x19
	.long	0x108e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8304
	.uleb128 0x26
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x21
	.long	.LASF320
	.byte	0x3
	.value	0x38a
	.byte	0xc
	.long	0x1f4f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x21
	.long	.LASF292
	.byte	0x3
	.value	0x38b
	.byte	0xe
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8256
	.uleb128 0x21
	.long	.LASF321
	.byte	0x3
	.value	0x394
	.byte	0xd
	.long	0x18f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8248
	.uleb128 0x22
	.string	"p"
	.byte	0x3
	.value	0x398
	.byte	0xd
	.long	0x18f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8264
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x19a
	.long	0x1f60
	.uleb128 0x2d
	.long	0x39
	.value	0x1fff
	.byte	0
	.uleb128 0x27
	.long	.LASF322
	.byte	0x3
	.value	0x35f
	.byte	0x1
	.long	0x65
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x200d
	.uleb128 0x20
	.long	.LASF256
	.byte	0x3
	.value	0x35f
	.byte	0x1a
	.long	0x38e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8264
	.uleb128 0x28
	.string	"fd"
	.byte	0x3
	.value	0x35f
	.byte	0x2f
	.long	0x65
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8268
	.uleb128 0x20
	.long	.LASF261
	.byte	0x3
	.value	0x35f
	.byte	0x3d
	.long	0x75d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8280
	.uleb128 0x20
	.long	.LASF251
	.byte	0x3
	.value	0x360
	.byte	0x19
	.long	0x108e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8288
	.uleb128 0x21
	.long	.LASF320
	.byte	0x3
	.value	0x362
	.byte	0x8
	.long	0x1f4f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x21
	.long	.LASF292
	.byte	0x3
	.value	0x366
	.byte	0xe
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8256
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x21
	.long	.LASF323
	.byte	0x3
	.value	0x373
	.byte	0x12
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8248
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF324
	.byte	0x3
	.value	0x2fa
	.byte	0x1
	.long	0x8e5
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x2144
	.uleb128 0x20
	.long	.LASF256
	.byte	0x3
	.value	0x2fa
	.byte	0x19
	.long	0x38e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"fd"
	.byte	0x3
	.value	0x2fa
	.byte	0x2e
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x20
	.long	.LASF261
	.byte	0x3
	.value	0x2fa
	.byte	0x3c
	.long	0x75d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x20
	.long	.LASF251
	.byte	0x3
	.value	0x2fb
	.byte	0x18
	.long	0x108e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.long	.LASF325
	.value	0x2010
	.byte	0x3
	.value	0x2fd
	.byte	0xa
	.long	0x20af
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x3
	.value	0x2ff
	.byte	0xa
	.long	0x1f4f
	.byte	0
	.uleb128 0x30
	.long	.LASF326
	.byte	0x3
	.value	0x300
	.byte	0xc
	.long	0x2d
	.value	0x2000
	.uleb128 0x30
	.long	.LASF327
	.byte	0x3
	.value	0x301
	.byte	0x18
	.long	0x2144
	.value	0x2008
	.byte	0
	.uleb128 0x31
	.long	.LASF328
	.byte	0x3
	.value	0x303
	.byte	0x1d
	.long	0x2073
	.uleb128 0x21
	.long	.LASF329
	.byte	0x3
	.value	0x304
	.byte	0xc
	.long	0x20cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xb
	.byte	0x8
	.long	0x20af
	.uleb128 0x21
	.long	.LASF306
	.byte	0x3
	.value	0x304
	.byte	0x14
	.long	0x20cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"tmp"
	.byte	0x3
	.value	0x304
	.byte	0x1b
	.long	0x20cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"i"
	.byte	0x3
	.value	0x305
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF330
	.byte	0x3
	.value	0x306
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"ok"
	.byte	0x3
	.value	0x307
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x21
	.long	.LASF331
	.byte	0x3
	.value	0x308
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF337
	.byte	0x3
	.value	0x350
	.byte	0x1
	.quad	.L248
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x2073
	.uleb128 0x27
	.long	.LASF332
	.byte	0x3
	.value	0x26f
	.byte	0x1
	.long	0x8e5
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x231f
	.uleb128 0x20
	.long	.LASF256
	.byte	0x3
	.value	0x26f
	.byte	0x19
	.long	0x38e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.string	"fd"
	.byte	0x3
	.value	0x26f
	.byte	0x2e
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x20
	.long	.LASF257
	.byte	0x3
	.value	0x26f
	.byte	0x3c
	.long	0x75d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x20
	.long	.LASF251
	.byte	0x3
	.value	0x270
	.byte	0x18
	.long	0x108e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2e
	.long	.LASF333
	.value	0x2018
	.byte	0x3
	.value	0x272
	.byte	0xa
	.long	0x21fb
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x3
	.value	0x274
	.byte	0xa
	.long	0x1f4f
	.byte	0
	.uleb128 0x30
	.long	.LASF326
	.byte	0x3
	.value	0x275
	.byte	0xc
	.long	0x2d
	.value	0x2000
	.uleb128 0x30
	.long	.LASF334
	.byte	0x3
	.value	0x276
	.byte	0xc
	.long	0x2d
	.value	0x2008
	.uleb128 0x30
	.long	.LASF327
	.byte	0x3
	.value	0x277
	.byte	0x18
	.long	0x231f
	.value	0x2010
	.byte	0
	.uleb128 0x31
	.long	.LASF335
	.byte	0x3
	.value	0x279
	.byte	0x1d
	.long	0x21b0
	.uleb128 0x21
	.long	.LASF329
	.byte	0x3
	.value	0x27a
	.byte	0xc
	.long	0x2219
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xb
	.byte	0x8
	.long	0x21fb
	.uleb128 0x21
	.long	.LASF306
	.byte	0x3
	.value	0x27a
	.byte	0x14
	.long	0x2219
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.string	"tmp"
	.byte	0x3
	.value	0x27a
	.byte	0x1b
	.long	0x2219
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF336
	.byte	0x3
	.value	0x27b
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.string	"ok"
	.byte	0x3
	.value	0x27c
	.byte	0x8
	.long	0x8e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x21
	.long	.LASF331
	.byte	0x3
	.value	0x27d
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.long	.LASF338
	.byte	0x3
	.value	0x2eb
	.byte	0x1
	.quad	.L224
	.uleb128 0x23
	.long	.LASF317
	.long	0x2335
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6867
	.uleb128 0x24
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x22cb
	.uleb128 0x21
	.long	.LASF321
	.byte	0x3
	.value	0x291
	.byte	0x15
	.long	0x38e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"p"
	.byte	0x3
	.value	0x292
	.byte	0x15
	.long	0x38e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x26
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x22
	.string	"beg"
	.byte	0x3
	.value	0x2d6
	.byte	0x11
	.long	0x38e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF321
	.byte	0x3
	.value	0x2d7
	.byte	0x11
	.long	0x38e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x22
	.string	"j"
	.byte	0x3
	.value	0x2dc
	.byte	0x10
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x21b0
	.uleb128 0x9
	.long	0x1a1
	.long	0x2335
	.uleb128 0xa
	.long	0x39
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.long	0x2325
	.uleb128 0x27
	.long	.LASF339
	.byte	0x3
	.value	0x217
	.byte	0x1
	.long	0x8e5
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x2438
	.uleb128 0x20
	.long	.LASF256
	.byte	0x3
	.value	0x217
	.byte	0x19
	.long	0x38e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8280
	.uleb128 0x28
	.string	"fd"
	.byte	0x3
	.value	0x217
	.byte	0x2e
	.long	0x65
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8284
	.uleb128 0x20
	.long	.LASF257
	.byte	0x3
	.value	0x217
	.byte	0x3c
	.long	0x75d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8296
	.uleb128 0x20
	.long	.LASF258
	.byte	0x3
	.value	0x218
	.byte	0x13
	.long	0x399
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8304
	.uleb128 0x20
	.long	.LASF259
	.byte	0x3
	.value	0x218
	.byte	0x24
	.long	0x399
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8312
	.uleb128 0x20
	.long	.LASF251
	.byte	0x3
	.value	0x218
	.byte	0x38
	.long	0x108e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8320
	.uleb128 0x21
	.long	.LASF320
	.byte	0x3
	.value	0x21a
	.byte	0x8
	.long	0x1f4f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x21
	.long	.LASF292
	.byte	0x3
	.value	0x21b
	.byte	0xa
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8272
	.uleb128 0x22
	.string	"pos"
	.byte	0x3
	.value	0x21c
	.byte	0x9
	.long	0x399
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8264
	.uleb128 0x26
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x22
	.string	"n"
	.byte	0x3
	.value	0x23a
	.byte	0xe
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8256
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x22
	.string	"nl"
	.byte	0x3
	.value	0x23d
	.byte	0x17
	.long	0x38e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8248
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF340
	.byte	0x3
	.value	0x1ee
	.byte	0x1
	.long	0x399
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x24cf
	.uleb128 0x28
	.string	"fd"
	.byte	0x3
	.value	0x1ee
	.byte	0xd
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x20
	.long	.LASF341
	.byte	0x3
	.value	0x1ee
	.byte	0x17
	.long	0x399
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.long	.LASF342
	.byte	0x3
	.value	0x1ee
	.byte	0x23
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.long	.LASF254
	.byte	0x3
	.value	0x1ee
	.byte	0x37
	.long	0x38e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.long	.LASF343
	.byte	0x3
	.value	0x1f0
	.byte	0x9
	.long	0x399
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.string	"buf"
	.byte	0x3
	.value	0x1f1
	.byte	0x8
	.long	0x24cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"s"
	.byte	0x3
	.value	0x1f2
	.byte	0x9
	.long	0x18f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x9
	.long	0x19a
	.long	0x24df
	.uleb128 0xa
	.long	0x39
	.byte	0x14
	.byte	0
	.uleb128 0x27
	.long	.LASF344
	.byte	0x3
	.value	0x1c1
	.byte	0x1
	.long	0x75d
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x25b9
	.uleb128 0x20
	.long	.LASF291
	.byte	0x3
	.value	0x1c1
	.byte	0x16
	.long	0x8e5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8276
	.uleb128 0x20
	.long	.LASF256
	.byte	0x3
	.value	0x1c1
	.byte	0x2f
	.long	0x38e
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8288
	.uleb128 0x28
	.string	"fd"
	.byte	0x3
	.value	0x1c1
	.byte	0x44
	.long	0x65
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8280
	.uleb128 0x20
	.long	.LASF261
	.byte	0x3
	.value	0x1c2
	.byte	0x1b
	.long	0x75d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8296
	.uleb128 0x21
	.long	.LASF345
	.byte	0x3
	.value	0x1c4
	.byte	0xd
	.long	0x75d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8272
	.uleb128 0x21
	.long	.LASF323
	.byte	0x3
	.value	0x1c5
	.byte	0xd
	.long	0x75d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8264
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0
	.uleb128 0x21
	.long	.LASF320
	.byte	0x3
	.value	0x1ca
	.byte	0xc
	.long	0x1f4f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x22
	.string	"n"
	.byte	0x3
	.value	0x1cb
	.byte	0xe
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8256
	.uleb128 0x21
	.long	.LASF292
	.byte	0x3
	.value	0x1cc
	.byte	0xe
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8248
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF346
	.byte	0x3
	.value	0x1b1
	.byte	0x1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x260a
	.uleb128 0x20
	.long	.LASF320
	.byte	0x3
	.value	0x1b1
	.byte	0x1c
	.long	0x38e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF261
	.byte	0x3
	.value	0x1b1
	.byte	0x2b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.byte	0
	.uleb128 0x29
	.long	.LASF347
	.byte	0x3
	.value	0x1a5
	.byte	0x1
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x2651
	.uleb128 0x20
	.long	.LASF256
	.byte	0x3
	.value	0x1a5
	.byte	0x1b
	.long	0x38e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF348
	.byte	0x3
	.value	0x1a7
	.byte	0xf
	.long	0x8e5
	.uleb128 0x9
	.byte	0x3
	.quad	first_file.6781
	.byte	0
	.uleb128 0x29
	.long	.LASF349
	.byte	0x3
	.value	0x19c
	.byte	0x1
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x2690
	.uleb128 0x28
	.string	"fd"
	.byte	0x3
	.value	0x19c
	.byte	0xf
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LASF254
	.byte	0x3
	.value	0x19c
	.byte	0x1f
	.long	0x38e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.long	.LASF350
	.byte	0x3
	.value	0x18a
	.byte	0x1
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x26fc
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.value	0x18a
	.byte	0x23
	.long	0xf12
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"fd"
	.byte	0x3
	.value	0x18a
	.byte	0x2a
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.long	.LASF189
	.byte	0x3
	.value	0x18b
	.byte	0x17
	.long	0x399
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"st"
	.byte	0x3
	.value	0x18b
	.byte	0x30
	.long	0x26fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF196
	.byte	0x3
	.value	0x18c
	.byte	0x15
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x6e5
	.uleb128 0x27
	.long	.LASF351
	.byte	0x3
	.value	0x181
	.byte	0x1
	.long	0x38e
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x2734
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.value	0x181
	.byte	0x26
	.long	0x18d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF352
	.byte	0x3
	.value	0x17a
	.byte	0x1
	.long	0x8e5
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x2766
	.uleb128 0x28
	.string	"f"
	.byte	0x3
	.value	0x17a
	.byte	0x2a
	.long	0x18d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF353
	.byte	0x3
	.value	0x15d
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x27dc
	.uleb128 0x21
	.long	.LASF282
	.byte	0x3
	.value	0x16b
	.byte	0x12
	.long	0x459
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x22
	.string	"rfd"
	.byte	0x3
	.value	0x16e
	.byte	0xa
	.long	0x4dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x21
	.long	.LASF284
	.byte	0x3
	.value	0x16f
	.byte	0x3
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x21
	.long	.LASF285
	.byte	0x3
	.value	0x16f
	.byte	0x3
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF372
	.byte	0x3
	.value	0x154
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.long	.LASF355
	.byte	0x3
	.value	0x103
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x2827
	.uleb128 0x20
	.long	.LASF356
	.byte	0x3
	.value	0x103
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x35
	.long	.LASF357
	.byte	0x2
	.byte	0x5
	.byte	0x1
	.long	0x65
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x2859
	.uleb128 0x36
	.long	.LASF358
	.byte	0x2
	.byte	0x5
	.byte	0x25
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF359
	.byte	0x1
	.value	0x2c1
	.byte	0x1
	.long	0x8e5
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x288c
	.uleb128 0x28
	.string	"sb"
	.byte	0x1
	.value	0x2c1
	.byte	0x24
	.long	0x26fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF360
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x2931
	.uleb128 0x20
	.long	.LASF361
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x38e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x37
	.long	.LASF362
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x28e7
	.uleb128 0x2f
	.long	.LASF361
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x38e
	.byte	0
	.uleb128 0x2f
	.long	.LASF363
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x38e
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x28bc
	.uleb128 0x21
	.long	.LASF362
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x2941
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF363
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x38e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x21
	.long	.LASF364
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x2946
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.long	.LASF365
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x38e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x9
	.long	0x28e7
	.long	0x2941
	.uleb128 0xa
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.long	0x2931
	.uleb128 0xb
	.byte	0x8
	.long	0x28e7
	.uleb128 0x38
	.long	.LASF366
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x38
	.long	.LASF367
	.byte	0x1
	.value	0x245
	.byte	0x1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x28
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	.LBB44-.Ltext0
	.quad	.LBE44-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF204:
	.string	"monitor_output"
.LASF346:
	.string	"xwrite_stdout"
.LASF121:
	.string	"__glibc_reserved"
.LASF120:
	.string	"st_ctim"
.LASF291:
	.string	"want_header"
.LASF6:
	.string	"size_t"
.LASF209:
	.string	"multiple_files"
.LASF188:
	.string	"File_spec"
.LASF132:
	.string	"GETOPT_HELP_CHAR"
.LASF221:
	.string	"DISABLE_INOTIFY_OPTION"
.LASF116:
	.string	"st_blksize"
.LASF258:
	.string	"start_pos"
.LASF117:
	.string	"st_blocks"
.LASF253:
	.string	"tail"
.LASF173:
	.string	"f_blocks"
.LASF61:
	.string	"_IO_codecvt"
.LASF219:
	.string	"PRESUME_INPUT_PIPE_OPTION"
.LASF167:
	.string	"inotify_event"
.LASF41:
	.string	"_IO_save_end"
.LASF368:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF19:
	.string	"__fsid_t"
.LASF218:
	.string	"PID_OPTION"
.LASF12:
	.string	"__gid_t"
.LASF210:
	.string	"always"
.LASF177:
	.string	"f_ffree"
.LASF97:
	.string	"_sys_siglist"
.LASF119:
	.string	"st_mtim"
.LASF77:
	.string	"time_t"
.LASF190:
	.string	"mtime"
.LASF34:
	.string	"_IO_write_base"
.LASF155:
	.string	"error_one_per_line"
.LASF50:
	.string	"_lock"
.LASF252:
	.string	"stats"
.LASF352:
	.string	"valid_file_spec"
.LASF342:
	.string	"whence"
.LASF326:
	.string	"nbytes"
.LASF275:
	.string	"evbuf_off"
.LASF160:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF106:
	.string	"stat"
.LASF182:
	.string	"f_spare"
.LASF99:
	.string	"__tzname"
.LASF39:
	.string	"_IO_save_base"
.LASF351:
	.string	"pretty_name"
.LASF344:
	.string	"dump_remainder"
.LASF332:
	.string	"pipe_lines"
.LASF152:
	.string	"argmatch_die"
.LASF198:
	.string	"basename_start"
.LASF312:
	.string	"recheck"
.LASF43:
	.string	"_chain"
.LASF361:
	.string	"program"
.LASF276:
	.string	"inotify_wd_mask"
.LASF47:
	.string	"_cur_column"
.LASF67:
	.string	"sys_nerr"
.LASF172:
	.string	"f_bsize"
.LASF10:
	.string	"__dev_t"
.LASF266:
	.string	"wd_to_name"
.LASF256:
	.string	"pretty_filename"
.LASF69:
	.string	"_sys_nerr"
.LASF166:
	.string	"hash_table"
.LASF122:
	.string	"__environ"
.LASF193:
	.string	"remote"
.LASF246:
	.string	"posix_ver"
.LASF8:
	.string	"long int"
.LASF95:
	.string	"has_arg"
.LASF60:
	.string	"_IO_marker"
.LASF274:
	.string	"evbuf"
.LASF354:
	.string	"main"
.LASF225:
	.string	"n_units"
.LASF268:
	.string	"tailed_but_unwatchable"
.LASF214:
	.string	"presume_input_pipe"
.LASF302:
	.string	"any_symlinks"
.LASF208:
	.string	"header_mode"
.LASF195:
	.string	"errnum"
.LASF230:
	.string	"dummy_stdin"
.LASF290:
	.string	"check_fspec"
.LASF4:
	.string	"signed char"
.LASF22:
	.string	"__blksize_t"
.LASF78:
	.string	"_IO_FILE"
.LASF101:
	.string	"__timezone"
.LASF305:
	.string	"tail_forever"
.LASF62:
	.string	"_IO_wide_data"
.LASF111:
	.string	"st_uid"
.LASF317:
	.string	"__PRETTY_FUNCTION__"
.LASF359:
	.string	"usable_st_size"
.LASF186:
	.string	"follow_mode_string"
.LASF322:
	.string	"start_bytes"
.LASF147:
	.string	"quoting_style_args"
.LASF123:
	.string	"environ"
.LASF2:
	.string	"unsigned char"
.LASF54:
	.string	"_freeres_list"
.LASF114:
	.string	"st_rdev"
.LASF213:
	.string	"have_read_stdin"
.LASF236:
	.string	"n_viable"
.LASF263:
	.string	"bytes_remaining"
.LASF157:
	.string	"strtol_error"
.LASF360:
	.string	"emit_ancillary_info"
.LASF154:
	.string	"error_message_count"
.LASF184:
	.string	"Follow_name"
.LASF27:
	.string	"__syscall_slong_t"
.LASF293:
	.string	"wd_comparator"
.LASF164:
	.string	"_Bool"
.LASF24:
	.string	"__fsblkcnt_t"
.LASF321:
	.string	"buffer_end"
.LASF269:
	.string	"found_unwatchable_dir"
.LASF28:
	.string	"char"
.LASF183:
	.string	"Follow_mode"
.LASF349:
	.string	"close_fd"
.LASF318:
	.string	"fremote"
.LASF294:
	.string	"spec1"
.LASF310:
	.string	"new_flags"
.LASF280:
	.string	"fspec"
.LASF286:
	.string	"new_wd"
.LASF371:
	.string	"_IO_lock_t"
.LASF79:
	.string	"timeval"
.LASF254:
	.string	"filename"
.LASF295:
	.string	"spec2"
.LASF301:
	.string	"any_non_regular_fifo"
.LASF104:
	.string	"timezone"
.LASF140:
	.string	"shell_escape_always_quoting_style"
.LASF14:
	.string	"__mode_t"
.LASF31:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"__fsword_t"
.LASF264:
	.string	"tail_forever_inotify"
.LASF64:
	.string	"stdin"
.LASF68:
	.string	"sys_errlist"
.LASF343:
	.string	"new_offset"
.LASF42:
	.string	"_markers"
.LASF135:
	.string	"program_name"
.LASF315:
	.string	"prev_errnum"
.LASF227:
	.string	"file"
.LASF300:
	.string	"tailable_stdin"
.LASF237:
	.string	"is_a_fifo_or_pipe"
.LASF281:
	.string	"void_ev"
.LASF84:
	.string	"__fd_mask"
.LASF142:
	.string	"c_maybe_quoting_style"
.LASF320:
	.string	"buffer"
.LASF161:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF363:
	.string	"node"
.LASF81:
	.string	"tv_usec"
.LASF176:
	.string	"f_files"
.LASF74:
	.string	"dev_t"
.LASF124:
	.string	"program_invocation_name"
.LASF51:
	.string	"_offset"
.LASF206:
	.string	"print_headers"
.LASF181:
	.string	"f_flags"
.LASF222:
	.string	"long_options"
.LASF357:
	.string	"is_local_fs_type"
.LASF112:
	.string	"st_gid"
.LASF194:
	.string	"tailable"
.LASF159:
	.string	"LONGINT_OVERFLOW"
.LASF90:
	.string	"optind"
.LASF187:
	.string	"follow_mode_map"
.LASF261:
	.string	"n_bytes"
.LASF324:
	.string	"pipe_bytes"
.LASF215:
	.string	"disable_inotify"
.LASF299:
	.string	"spec"
.LASF73:
	.string	"ino_t"
.LASF145:
	.string	"clocale_quoting_style"
.LASF153:
	.string	"error_print_progname"
.LASF303:
	.string	"any_non_remote_file"
.LASF0:
	.string	"long unsigned int"
.LASF287:
	.string	"deleting"
.LASF356:
	.string	"status"
.LASF45:
	.string	"_flags2"
.LASF347:
	.string	"write_header"
.LASF240:
	.string	"n_string"
.LASF115:
	.string	"st_size"
.LASF196:
	.string	"blocking"
.LASF33:
	.string	"_IO_read_base"
.LASF328:
	.string	"CBUFFER"
.LASF220:
	.string	"LONG_FOLLOW_OPTION"
.LASF241:
	.string	"n_string_end"
.LASF93:
	.string	"option"
.LASF325:
	.string	"charbuffer"
.LASF58:
	.string	"_unused2"
.LASF243:
	.string	"t_from_start"
.LASF304:
	.string	"any_remote_file"
.LASF238:
	.string	"ignore_fifo_and_pipe"
.LASF289:
	.string	"parse_options"
.LASF282:
	.string	"delay"
.LASF223:
	.string	"argc"
.LASF277:
	.string	"fnlen"
.LASF46:
	.string	"_old_offset"
.LASF226:
	.string	"n_files"
.LASF362:
	.string	"infomap"
.LASF224:
	.string	"argv"
.LASF23:
	.string	"__blkcnt_t"
.LASF137:
	.string	"shell_quoting_style"
.LASF13:
	.string	"__ino_t"
.LASF260:
	.string	"tail_bytes"
.LASF7:
	.string	"__uint32_t"
.LASF71:
	.string	"long long int"
.LASF284:
	.string	"__d0"
.LASF285:
	.string	"__d1"
.LASF126:
	.string	"Version"
.LASF127:
	.string	"exit_failure"
.LASF87:
	.string	"_gl_cxxalias_dummy"
.LASF141:
	.string	"c_quoting_style"
.LASF247:
	.string	"obsolete_usage"
.LASF235:
	.string	"double"
.LASF36:
	.string	"_IO_write_end"
.LASF309:
	.string	"old_flags"
.LASF168:
	.string	"mask"
.LASF129:
	.string	"uintmax_t"
.LASF162:
	.string	"LONGINT_INVALID"
.LASF245:
	.string	"t_forever"
.LASF98:
	.string	"sys_siglist"
.LASF163:
	.string	"float"
.LASF283:
	.string	"file_change"
.LASF311:
	.string	"any_live_files"
.LASF133:
	.string	"GETOPT_VERSION_CHAR"
.LASF37:
	.string	"_IO_buf_base"
.LASF1:
	.string	"unsigned int"
.LASF257:
	.string	"n_lines"
.LASF259:
	.string	"end_pos"
.LASF134:
	.string	"version_etc_copyright"
.LASF334:
	.string	"nlines"
.LASF216:
	.string	"RETRY_OPTION"
.LASF271:
	.string	"writer_is_dead"
.LASF242:
	.string	"default_count"
.LASF148:
	.string	"quoting_style_vals"
.LASF136:
	.string	"literal_quoting_style"
.LASF113:
	.string	"__pad0"
.LASF102:
	.string	"tzname"
.LASF56:
	.string	"__pad5"
.LASF76:
	.string	"pid_t"
.LASF307:
	.string	"any_input"
.LASF96:
	.string	"flag"
.LASF169:
	.string	"cookie"
.LASF21:
	.string	"__suseconds_t"
.LASF323:
	.string	"n_remaining"
.LASF178:
	.string	"f_fsid"
.LASF25:
	.string	"__fsfilcnt_t"
.LASF149:
	.string	"quoting_options"
.LASF30:
	.string	"_flags"
.LASF341:
	.string	"offset"
.LASF365:
	.string	"lc_messages"
.LASF150:
	.string	"quote_quoting_options"
.LASF329:
	.string	"first"
.LASF57:
	.string	"_mode"
.LASF52:
	.string	"_codecvt"
.LASF231:
	.string	"found_hyphen"
.LASF131:
	.string	"LOG10_TIMESPEC_HZ"
.LASF109:
	.string	"st_nlink"
.LASF63:
	.string	"off_t"
.LASF75:
	.string	"mode_t"
.LASF372:
	.string	"die_pipe"
.LASF85:
	.string	"fds_bits"
.LASF316:
	.string	"new_file"
.LASF72:
	.string	"long double"
.LASF255:
	.string	"tail_lines"
.LASF265:
	.string	"max_realloc"
.LASF234:
	.string	"out_stat"
.LASF59:
	.string	"FILE"
.LASF18:
	.string	"__pid_t"
.LASF273:
	.string	"evlen"
.LASF107:
	.string	"st_dev"
.LASF297:
	.string	"entry"
.LASF158:
	.string	"LONGINT_OK"
.LASF314:
	.string	"was_tailable"
.LASF82:
	.string	"timespec"
.LASF174:
	.string	"f_bfree"
.LASF179:
	.string	"f_namelen"
.LASF92:
	.string	"optopt"
.LASF292:
	.string	"bytes_read"
.LASF144:
	.string	"locale_quoting_style"
.LASF185:
	.string	"Follow_descriptor"
.LASF189:
	.string	"size"
.LASF88:
	.string	"long long unsigned int"
.LASF298:
	.string	"tabsize"
.LASF211:
	.string	"never"
.LASF319:
	.string	"start_lines"
.LASF16:
	.string	"__off_t"
.LASF156:
	.string	"quoting_style"
.LASF125:
	.string	"program_invocation_short_name"
.LASF366:
	.string	"emit_mandatory_arg_note"
.LASF55:
	.string	"_freeres_buf"
.LASF278:
	.string	"dirlen"
.LASF205:
	.string	"from_start"
.LASF353:
	.string	"check_output_alive"
.LASF91:
	.string	"opterr"
.LASF313:
	.string	"new_stats"
.LASF370:
	.string	"/root/coreutils"
.LASF20:
	.string	"__time_t"
.LASF350:
	.string	"record_open_fd"
.LASF40:
	.string	"_IO_backup_base"
.LASF49:
	.string	"_shortbuf"
.LASF165:
	.string	"Hash_table"
.LASF200:
	.string	"reopen_inaccessible_files"
.LASF330:
	.string	"total_bytes"
.LASF192:
	.string	"ignore"
.LASF138:
	.string	"shell_always_quoting_style"
.LASF17:
	.string	"__off64_t"
.LASF272:
	.string	"prev_fspec"
.LASF288:
	.string	"new_watch"
.LASF358:
	.string	"magic"
.LASF270:
	.string	"no_inotify_resources"
.LASF143:
	.string	"escape_quoting_style"
.LASF267:
	.string	"found_watchable_file"
.LASF369:
	.string	"src/tail.c"
.LASF38:
	.string	"_IO_buf_end"
.LASF212:
	.string	"max_n_unchanged_stats_between_opens"
.LASF175:
	.string	"f_bavail"
.LASF94:
	.string	"name"
.LASF364:
	.string	"map_prog"
.LASF171:
	.string	"f_type"
.LASF66:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF191:
	.string	"mode"
.LASF339:
	.string	"file_lines"
.LASF83:
	.string	"tv_nsec"
.LASF355:
	.string	"usage"
.LASF199:
	.string	"n_unchanged_stats"
.LASF139:
	.string	"shell_escape_quoting_style"
.LASF201:
	.string	"count_lines"
.LASF249:
	.string	"tail_file"
.LASF48:
	.string	"_vtable_offset"
.LASF70:
	.string	"_sys_errlist"
.LASF9:
	.string	"__uintmax_t"
.LASF228:
	.string	"obsolete_option"
.LASF207:
	.string	"line_end"
.LASF331:
	.string	"n_read"
.LASF29:
	.string	"__val"
.LASF202:
	.string	"follow_mode"
.LASF239:
	.string	"parse_obsolete_option"
.LASF130:
	.string	"TIMESPEC_HZ"
.LASF367:
	.string	"emit_stdin_note"
.LASF197:
	.string	"parent_wd"
.LASF86:
	.string	"fd_set"
.LASF100:
	.string	"__daylight"
.LASF229:
	.string	"sleep_interval"
.LASF333:
	.string	"linebuffer"
.LASF335:
	.string	"LBUFFER"
.LASF110:
	.string	"st_mode"
.LASF11:
	.string	"__uid_t"
.LASF32:
	.string	"_IO_read_end"
.LASF262:
	.string	"current_pos"
.LASF348:
	.string	"first_file"
.LASF105:
	.string	"getdate_err"
.LASF251:
	.string	"read_pos"
.LASF128:
	.string	"uint32_t"
.LASF44:
	.string	"_fileno"
.LASF248:
	.string	"traditional_usage"
.LASF53:
	.string	"_wide_data"
.LASF89:
	.string	"optarg"
.LASF337:
	.string	"free_cbuffers"
.LASF336:
	.string	"total_lines"
.LASF180:
	.string	"f_frsize"
.LASF340:
	.string	"xlseek"
.LASF170:
	.string	"statfs"
.LASF3:
	.string	"short unsigned int"
.LASF65:
	.string	"stdout"
.LASF35:
	.string	"_IO_write_ptr"
.LASF308:
	.string	"bytes_to_read"
.LASF296:
	.string	"wd_hasher"
.LASF103:
	.string	"daylight"
.LASF244:
	.string	"t_count_lines"
.LASF108:
	.string	"st_ino"
.LASF15:
	.string	"__nlink_t"
.LASF338:
	.string	"free_lbuffers"
.LASF203:
	.string	"forever"
.LASF327:
	.string	"next"
.LASF233:
	.string	"blocking_stdin"
.LASF250:
	.string	"is_stdin"
.LASF279:
	.string	"prev"
.LASF80:
	.string	"tv_sec"
.LASF151:
	.string	"argmatch_exit_fn"
.LASF232:
	.string	"in_stat"
.LASF146:
	.string	"custom_quoting_style"
.LASF306:
	.string	"last"
.LASF118:
	.string	"st_atim"
.LASF345:
	.string	"n_written"
.LASF217:
	.string	"MAX_UNCHANGED_STATS_OPTION"
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
