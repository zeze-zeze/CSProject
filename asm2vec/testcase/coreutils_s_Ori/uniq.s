	.file	"uniq.c"
	.text
.Ltext0:
	.type	field_sep, @function
field_sep:
.LFB12:
	.file 1 "src/system.h"
	.loc 1 161 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 1 162 10
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-4(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	.loc 1 162 23
	testl	%eax, %eax
	jne	.L2
	.loc 1 162 23 is_stmt 0 discriminator 2
	cmpb	$10, -4(%rbp)
	jne	.L3
.L2:
	.loc 1 162 23 discriminator 3
	movl	$1, %eax
	jmp	.L4
.L3:
	.loc 1 162 23 discriminator 4
	movl	$0, %eax
.L4:
	.loc 1 162 23 discriminator 6
	andl	$1, %eax
	.loc 1 163 1 is_stmt 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	field_sep, .-field_sep
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
	jmp	.L8
.L10:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L8:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L9
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L10
.L9:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L11
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L11:
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
	je	.L12
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L12
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L12:
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
	jne	.L13
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC16(%rip), %rbx
	jmp	.L14
.L13:
	.loc 1 671 3 discriminator 2
	leaq	.LC17(%rip), %rbx
.L14:
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
	je	.L15
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L15:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.local	skip_fields
	.comm	skip_fields,8,8
	.local	skip_chars
	.comm	skip_chars,8,8
	.local	check_chars
	.comm	check_chars,8,8
	.local	countmode
	.comm	countmode,4,4
	.local	output_unique
	.comm	output_unique,1,1
	.local	output_first_repeated
	.comm	output_first_repeated,1,1
	.local	output_later_repeated
	.comm	output_later_repeated,1,1
	.local	ignore_case
	.comm	ignore_case,1,1
	.section	.rodata
.LC19:
	.string	"none"
.LC20:
	.string	"prepend"
.LC21:
	.string	"separate"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	delimit_method_string, @object
	.size	delimit_method_string, 32
delimit_method_string:
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	0
	.section	.rodata
	.align 8
	.type	delimit_method_map, @object
	.size	delimit_method_map, 12
delimit_method_map:
	.long	0
	.long	1
	.long	2
	.local	delimit_groups
	.comm	delimit_groups,4,4
.LC22:
	.string	"append"
.LC23:
	.string	"both"
	.section	.data.rel.ro.local
	.align 32
	.type	grouping_method_string, @object
	.size	grouping_method_string, 40
grouping_method_string:
	.quad	.LC20
	.quad	.LC22
	.quad	.LC21
	.quad	.LC23
	.quad	0
	.section	.rodata
	.align 16
	.type	grouping_method_map, @object
	.size	grouping_method_map, 16
grouping_method_map:
	.long	1
	.long	2
	.long	3
	.long	4
	.local	grouping
	.comm	grouping,4,4
.LC24:
	.string	"count"
.LC25:
	.string	"repeated"
.LC26:
	.string	"all-repeated"
.LC27:
	.string	"group"
.LC28:
	.string	"ignore-case"
.LC29:
	.string	"unique"
.LC30:
	.string	"skip-fields"
.LC31:
	.string	"skip-chars"
.LC32:
	.string	"check-chars"
.LC33:
	.string	"zero-terminated"
.LC34:
	.string	"help"
.LC35:
	.string	"version"
	.section	.data.rel.ro.local
	.align 32
	.type	longopts, @object
	.size	longopts, 416
longopts:
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC26
	.long	2
	.zero	4
	.quad	0
	.long	68
	.zero	4
	.quad	.LC27
	.long	2
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC29
	.long	0
	.zero	4
	.quad	0
	.long	117
	.zero	4
	.quad	.LC30
	.long	1
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC31
	.long	1
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC32
	.long	1
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC33
	.long	0
	.zero	4
	.quad	0
	.long	122
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
	.string	"Usage: %s [OPTION]... [INPUT [OUTPUT]]\n"
	.align 8
.LC38:
	.string	"Filter adjacent matching lines from INPUT (or standard input),\nwriting to OUTPUT (or standard output).\n\nWith no options, matching lines are merged to the first occurrence.\n"
	.align 8
.LC39:
	.string	"  -c, --count           prefix lines by the number of occurrences\n  -d, --repeated        only print duplicate lines, one for each group\n"
	.align 8
.LC40:
	.string	"  -D                    print all duplicate lines\n      --all-repeated[=METHOD]  like -D, but allow separating groups\n                                 with an empty line;\n                                 METHOD={none(default),prepend,separate}\n"
	.align 8
.LC41:
	.string	"  -f, --skip-fields=N   avoid comparing the first N fields\n"
	.align 8
.LC42:
	.string	"      --group[=METHOD]  show all items, separating groups with an empty line;\n                          METHOD={separate(default),prepend,append,both}\n"
	.align 8
.LC43:
	.string	"  -i, --ignore-case     ignore differences in case when comparing\n  -s, --skip-chars=N    avoid comparing the first N characters\n  -u, --unique          only print unique lines\n"
	.align 8
.LC44:
	.string	"  -z, --zero-terminated     line delimiter is NUL, not newline\n"
	.align 8
.LC45:
	.string	"  -w, --check-chars=N   compare no more than N characters in lines\n"
	.align 8
.LC46:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC47:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC48:
	.string	"\nA field is a run of blanks (usually spaces and/or TABs), then non-blank\ncharacters.  Fields are skipped before chars.\n"
	.align 8
.LC49:
	.string	"\nNote: 'uniq' does not detect repeated lines unless they are adjacent.\nYou may want to sort the input first, or use 'sort -u' without 'uniq'.\n"
.LC50:
	.string	"uniq"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/uniq.c"
	.loc 2 161 1 is_stmt 1
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
	.loc 2 162 6
	cmpl	$0, -20(%rbp)
	je	.L17
	.loc 2 163 5
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
	.loc 2 166 7
	movq	program_name(%rip), %rbx
	.loc 2 166 15
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	.loc 2 166 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 170 7
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 177 7
	call	emit_mandatory_arg_note
	.loc 2 179 6
	movq	stdout(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 183 6
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 189 6
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 192 6
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 196 6
	movq	stdout(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 201 7
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 204 6
	movq	stdout(%rip), %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 207 6
	movq	stdout(%rip), %rbx
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 208 6
	movq	stdout(%rip), %rbx
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 209 6
	movq	stdout(%rip), %rbx
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 214 6
	movq	stdout(%rip), %rbx
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 219 7
	leaq	.LC50(%rip), %rdi
	call	emit_ancillary_info
.L18:
	.loc 2 221 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.type	strict_posix2, @function
strict_posix2:
.LFB47:
	.loc 2 226 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 227 19
	call	posix2_version@PLT
	movl	%eax, -4(%rbp)
	.loc 2 228 30
	cmpl	$200111, -4(%rbp)
	jle	.L20
	.loc 2 228 30 is_stmt 0 discriminator 1
	cmpl	$200808, -4(%rbp)
	jg	.L20
	.loc 2 228 30 discriminator 3
	movl	$1, %eax
	jmp	.L21
.L20:
	.loc 2 228 30 discriminator 4
	movl	$0, %eax
.L21:
	.loc 2 228 30 discriminator 6
	andl	$1, %eax
	.loc 2 229 1 is_stmt 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	strict_posix2, .-strict_posix2
	.section	.rodata
.LC51:
	.string	"%s: %s"
	.text
	.type	size_opt, @function
size_opt:
.LFB48:
	.loc 2 236 1
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
	.loc 2 236 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 239 11
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC17(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 2 239 3
	cmpl	$1, %eax
	jbe	.L29
.LBB2:
	.loc 2 246 7
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	leaq	.LC51(%rip), %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L29:
	.loc 2 243 7
	nop
.LBE2:
	.loc 2 249 10
	movq	-16(%rbp), %rax
	.loc 2 250 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	size_opt, .-size_opt
	.type	find_field, @function
find_field:
.LFB49:
	.loc 2 257 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 259 15
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 260 21
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 260 10
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	.loc 2 261 10
	movq	$0, -24(%rbp)
	.loc 2 263 14
	movq	$0, -32(%rbp)
	.loc 2 263 3
	jmp	.L31
.L34:
	.loc 2 266 10
	addq	$1, -24(%rbp)
.L32:
	.loc 2 265 13
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L35
	.loc 2 265 39 discriminator 1
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 265 26 discriminator 1
	movzbl	%al, %eax
	movl	%eax, %edi
	call	field_sep
	.loc 2 265 23 discriminator 1
	testb	%al, %al
	jne	.L34
	.loc 2 267 13
	jmp	.L35
.L37:
	.loc 2 268 10
	addq	$1, -24(%rbp)
.L35:
	.loc 2 267 13
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L36
	.loc 2 267 40 discriminator 1
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 267 27 discriminator 1
	movzbl	%al, %eax
	movl	%eax, %edi
	call	field_sep
	.loc 2 267 26 discriminator 1
	xorl	$1, %eax
	.loc 2 267 23 discriminator 1
	testb	%al, %al
	jne	.L37
.L36:
	.loc 2 263 57 discriminator 2
	addq	$1, -32(%rbp)
.L31:
	.loc 2 263 25 discriminator 1
	movq	skip_fields(%rip), %rax
	.loc 2 263 3 discriminator 1
	cmpq	%rax, -32(%rbp)
	jnb	.L38
	.loc 2 263 39 discriminator 3
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L32
.L38:
	.loc 2 271 8
	movq	-8(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	skip_chars(%rip), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	.loc 2 271 5
	addq	%rax, -24(%rbp)
	.loc 2 273 14
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 273 23
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 274 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	find_field, .-find_field
	.type	different, @function
different:
.LFB50:
	.loc 2 283 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	.loc 2 284 19
	movq	check_chars(%rip), %rax
	.loc 2 284 6
	cmpq	%rax, -24(%rbp)
	jbe	.L42
	.loc 2 285 12
	movq	check_chars(%rip), %rax
	movq	%rax, -24(%rbp)
.L42:
	.loc 2 286 19
	movq	check_chars(%rip), %rax
	.loc 2 286 6
	cmpq	%rax, -32(%rbp)
	jbe	.L43
	.loc 2 287 12
	movq	check_chars(%rip), %rax
	movq	%rax, -32(%rbp)
.L43:
	.loc 2 289 7
	movzbl	ignore_case(%rip), %eax
	.loc 2 289 6
	testb	%al, %al
	je	.L44
	.loc 2 290 29
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L45
	.loc 2 290 32 discriminator 2
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcasecmp@PLT
	.loc 2 290 29 discriminator 2
	testl	%eax, %eax
	je	.L46
.L45:
	.loc 2 290 29 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L47
.L46:
	.loc 2 290 29 discriminator 4
	movl	$0, %eax
.L47:
	.loc 2 290 29 discriminator 6
	andl	$1, %eax
	jmp	.L48
.L44:
	.loc 2 292 29 is_stmt 1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L49
	.loc 2 292 32 discriminator 2
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	.loc 2 292 29 discriminator 2
	testl	%eax, %eax
	je	.L50
.L49:
	.loc 2 292 29 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L51
.L50:
	.loc 2 292 29 discriminator 4
	movl	$0, %eax
.L51:
	.loc 2 292 29 discriminator 6
	andl	$1, %eax
.L48:
	.loc 2 293 1 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	different, .-different
	.section	.rodata
.LC52:
	.string	"%7lu "
	.text
	.type	writeline, @function
writeline:
.LFB51:
	.loc 2 304 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movq	%rdx, -24(%rbp)
	movb	%al, -12(%rbp)
	.loc 2 305 7
	cmpq	$0, -24(%rbp)
	jne	.L53
	.loc 2 305 7 is_stmt 0 discriminator 1
	movzbl	output_unique(%rip), %eax
	xorl	$1, %eax
	jmp	.L54
.L53:
	.loc 2 306 12 is_stmt 1 discriminator 2
	movzbl	-12(%rbp), %eax
	xorl	$1, %eax
	.loc 2 305 7 discriminator 2
	testb	%al, %al
	je	.L55
	.loc 2 305 7 is_stmt 0 discriminator 4
	movzbl	output_first_repeated(%rip), %eax
	xorl	$1, %eax
	jmp	.L54
.L55:
	.loc 2 305 7 discriminator 5
	movzbl	output_later_repeated(%rip), %eax
	xorl	$1, %eax
.L54:
	.loc 2 305 6 is_stmt 1 discriminator 8
	testb	%al, %al
	jne	.L60
	.loc 2 310 17
	movl	countmode(%rip), %eax
	.loc 2 310 6
	testl	%eax, %eax
	jne	.L59
	.loc 2 311 5
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC52(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L59:
	.loc 2 313 3
	movq	stdout(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	jmp	.L52
.L60:
	.loc 2 308 5
	nop
.L52:
	.loc 2 314 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	writeline, .-writeline
	.section	.rodata
.LC53:
	.string	"-"
.LC54:
	.string	"r"
.LC55:
	.string	"%s"
.LC56:
	.string	"w"
.LC57:
	.string	"error reading %s"
	.text
	.type	check_file, @function
check_file:
.LFB52:
	.loc 2 321 1
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
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movl	%edx, %eax
	movb	%al, -212(%rbp)
	.loc 2 321 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 325 10
	movq	-200(%rbp), %rax
	leaq	.LC53(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 325 6
	testl	%eax, %eax
	je	.L62
	.loc 2 325 33 discriminator 1
	movq	stdin(%rip), %rdx
	movq	-200(%rbp), %rax
	leaq	.LC54(%rip), %rsi
	movq	%rax, %rdi
	call	freopen_safer@PLT
	.loc 2 325 7 discriminator 1
	testq	%rax, %rax
	jne	.L62
.LBB3:
	.loc 2 326 5
	movq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC55(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L62:
.LBE3:
	.loc 2 327 10
	movq	-208(%rbp), %rax
	leaq	.LC53(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 327 6
	testl	%eax, %eax
	je	.L63
	.loc 2 327 34 discriminator 1
	movq	stdout(%rip), %rdx
	movq	-208(%rbp), %rax
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	freopen_safer@PLT
	.loc 2 327 7 discriminator 1
	testq	%rax, %rax
	jne	.L63
.LBB4:
	.loc 2 328 5
	movq	-208(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC55(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L63:
.LBE4:
	.loc 2 330 3
	movq	stdin(%rip), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 332 12
	leaq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)
	.loc 2 333 12
	leaq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)
	.loc 2 335 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	initbuffer@PLT
	.loc 2 336 3
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	initbuffer@PLT
	.loc 2 353 7
	movzbl	output_unique(%rip), %eax
	.loc 2 353 6
	testb	%al, %al
	je	.L64
	.loc 2 353 21 discriminator 1
	movzbl	output_first_repeated(%rip), %eax
	testb	%al, %al
	je	.L64
	.loc 2 353 59 discriminator 2
	movl	countmode(%rip), %eax
	.loc 2 353 46 discriminator 2
	cmpl	$1, %eax
	jne	.L64
.LBB5:
	.loc 2 355 13
	movq	$0, -168(%rbp)
	.loc 2 356 14
	movq	$0, -160(%rbp)
	.loc 2 357 12
	movb	$0, -188(%rbp)
	.loc 2 359 13
	jmp	.L65
.L74:
.LBB6:
	.loc 2 365 15
	movsbl	-212(%rbp), %edx
	movq	stdin(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	readlinebuffer_delim@PLT
	.loc 2 365 14
	testq	%rax, %rax
	je	.L92
	.loc 2 368 23
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	find_field
	movq	%rax, -128(%rbp)
	.loc 2 369 29
	movq	-184(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 369 65
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 369 55
	movq	-128(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	.loc 2 369 42
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 369 19
	subq	$1, %rax
	movq	%rax, -120(%rbp)
	.loc 2 371 32
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 372 24
	testq	%rax, %rax
	je	.L68
	.loc 2 372 27 discriminator 2
	movq	-160(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	different
	.loc 2 372 24 discriminator 2
	testb	%al, %al
	je	.L69
.L68:
	.loc 2 372 24 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L70
.L69:
	.loc 2 372 24 discriminator 4
	movl	$0, %eax
.L70:
	.loc 2 371 21 is_stmt 1
	movb	%al, -186(%rbp)
	andb	$1, -186(%rbp)
	.loc 2 374 14
	cmpb	$0, -186(%rbp)
	je	.L71
	.loc 2 374 37 discriminator 1
	movl	grouping(%rip), %eax
	.loc 2 374 25 discriminator 1
	testl	%eax, %eax
	je	.L71
	.loc 2 375 28
	movl	grouping(%rip), %eax
	.loc 2 375 15
	cmpl	$1, %eax
	je	.L72
	.loc 2 375 54 discriminator 1
	movl	grouping(%rip), %eax
	.loc 2 375 42 discriminator 1
	cmpl	$4, %eax
	je	.L72
	.loc 2 376 19
	cmpb	$0, -188(%rbp)
	je	.L71
	.loc 2 376 56 discriminator 1
	movl	grouping(%rip), %eax
	.loc 2 376 43 discriminator 1
	cmpl	$2, %eax
	je	.L72
	.loc 2 377 59
	movl	grouping(%rip), %eax
	.loc 2 377 47
	cmpl	$3, %eax
	jne	.L71
.L72:
	.loc 2 378 13
	movsbl	-212(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.L71:
	.loc 2 380 14
	cmpb	$0, -186(%rbp)
	jne	.L73
	.loc 2 380 37 discriminator 1
	movl	grouping(%rip), %eax
	.loc 2 380 25 discriminator 1
	testl	%eax, %eax
	je	.L65
.L73:
	.loc 2 382 15
	movq	stdout(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
.LBB7:
	.loc 2 385 15
	movq	-176(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -184(%rbp)
.LBE7:
	.loc 2 386 25
	movq	-128(%rbp), %rax
	movq	%rax, -168(%rbp)
	.loc 2 387 23
	movq	-120(%rbp), %rax
	movq	%rax, -160(%rbp)
	.loc 2 388 35
	movb	$1, -188(%rbp)
.L65:
.LBE6:
	.loc 2 359 15
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 359 13
	testl	%eax, %eax
	je	.L74
	jmp	.L67
.L92:
.LBB8:
	.loc 2 366 13
	nop
.L67:
.LBE8:
	.loc 2 391 21
	movl	grouping(%rip), %eax
	.loc 2 391 10
	cmpl	$4, %eax
	je	.L75
	.loc 2 391 44 discriminator 2
	movl	grouping(%rip), %eax
	.loc 2 391 32 discriminator 2
	cmpl	$2, %eax
	jne	.L93
.L75:
	.loc 2 391 58 discriminator 3
	cmpb	$0, -188(%rbp)
	je	.L93
	.loc 2 392 9
	movsbl	-212(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.LBE5:
	.loc 2 354 5
	jmp	.L93
.L64:
.LBB9:
	.loc 2 398 17
	movq	$0, -136(%rbp)
	.loc 2 399 12
	movb	$1, -187(%rbp)
	.loc 2 401 11
	movsbl	-212(%rbp), %edx
	movq	stdin(%rip), %rcx
	movq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	readlinebuffer_delim@PLT
	.loc 2 401 10
	testq	%rax, %rax
	je	.L94
	.loc 2 403 19
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	find_field
	movq	%rax, -152(%rbp)
	.loc 2 404 25
	movq	-176(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 404 61
	movq	-176(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 404 51
	movq	-152(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	.loc 2 404 38
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 404 15
	subq	$1, %rax
	movq	%rax, -144(%rbp)
	.loc 2 406 13
	jmp	.L79
.L88:
.LBB10:
	.loc 2 411 15
	movsbl	-212(%rbp), %edx
	movq	stdin(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	readlinebuffer_delim@PLT
	.loc 2 411 14
	testq	%rax, %rax
	jne	.L80
	.loc 2 413 19
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 413 18
	testl	%eax, %eax
	je	.L95
	.loc 2 414 17
	jmp	.L77
.L80:
	.loc 2 417 23
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	find_field
	movq	%rax, -104(%rbp)
	.loc 2 418 29
	movq	-184(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 418 65
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 418 55
	movq	-104(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	.loc 2 418 42
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 418 19
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	.loc 2 419 20
	movq	-144(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	different
	movzbl	%al, %eax
	.loc 2 419 11
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 419 17
	movb	%al, -185(%rbp)
	andb	$1, -185(%rbp)
	.loc 2 420 23
	movzbl	-185(%rbp), %eax
	addq	%rax, -136(%rbp)
	.loc 2 422 14
	cmpq	$-1, -136(%rbp)
	jne	.L83
	.loc 2 426 26
	subq	$1, -136(%rbp)
.L83:
	.loc 2 429 30
	movl	delimit_groups(%rip), %eax
	.loc 2 429 14
	testl	%eax, %eax
	je	.L84
	.loc 2 431 19
	movzbl	-185(%rbp), %eax
	xorl	$1, %eax
	.loc 2 431 18
	testb	%al, %al
	je	.L85
	.loc 2 433 22
	cmpq	$0, -136(%rbp)
	je	.L84
	.loc 2 434 37
	movb	$0, -187(%rbp)
	jmp	.L84
.L85:
	.loc 2 436 23
	cmpq	$1, -136(%rbp)
	jne	.L84
	.loc 2 438 39
	movl	delimit_groups(%rip), %eax
	.loc 2 438 22
	cmpl	$1, %eax
	je	.L86
	.loc 2 439 42
	movl	delimit_groups(%rip), %eax
	.loc 2 439 23
	cmpl	$2, %eax
	jne	.L84
	.loc 2 440 30
	movzbl	-187(%rbp), %eax
	xorl	$1, %eax
	.loc 2 440 27
	testb	%al, %al
	je	.L84
.L86:
	.loc 2 441 21
	movsbl	-212(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.L84:
	.loc 2 445 15
	movzbl	-185(%rbp), %eax
	xorl	$1, %eax
	.loc 2 445 14
	testb	%al, %al
	jne	.L87
	.loc 2 445 22 discriminator 1
	movzbl	output_later_repeated(%rip), %eax
	testb	%al, %al
	je	.L79
.L87:
	.loc 2 447 15
	movzbl	-185(%rbp), %ecx
	movq	-136(%rbp), %rdx
	movq	-176(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	writeline
.LBB11:
	.loc 2 448 15
	movq	-176(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)
.LBE11:
	.loc 2 449 25
	movq	-104(%rbp), %rax
	movq	%rax, -152(%rbp)
	.loc 2 450 23
	movq	-96(%rbp), %rax
	movq	%rax, -144(%rbp)
	.loc 2 451 19
	movzbl	-185(%rbp), %eax
	xorl	$1, %eax
	.loc 2 451 18
	testb	%al, %al
	je	.L79
	.loc 2 452 29
	movq	$0, -136(%rbp)
.L79:
.LBE10:
	.loc 2 406 15
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 406 13
	testl	%eax, %eax
	je	.L88
	jmp	.L82
.L95:
.LBB12:
	.loc 2 415 15
	nop
.L82:
.LBE12:
	.loc 2 456 7
	movq	-136(%rbp), %rdx
	movq	-176(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	writeline
	jmp	.L77
.L93:
.LBE9:
	.loc 2 354 5
	nop
	jmp	.L77
.L94:
.LBB13:
	.loc 2 402 9
	nop
.L77:
.LBE13:
	.loc 2 460 7
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 460 6
	testl	%eax, %eax
	jne	.L89
	.loc 2 460 25 discriminator 1
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 460 22 discriminator 1
	testl	%eax, %eax
	je	.L90
.L89:
.LBB14:
	.loc 2 461 5
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L90:
.LBE14:
	.loc 2 465 12
	movq	-64(%rbp), %rax
	.loc 2 465 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 466 12
	movq	-32(%rbp), %rax
	.loc 2 466 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 467 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L91
	call	__stack_chk_fail@PLT
.L91:
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	check_file, .-check_file
	.section	.rodata
.LC58:
	.string	"POSIXLY_CORRECT"
.LC59:
	.string	"/usr/local/share/locale"
.LC60:
	.string	"-0123456789Dcdf:is:uw:z"
.LC61:
	.string	"extra operand %s"
.LC62:
	.string	"--all-repeated"
.LC63:
	.string	"--group"
	.align 8
.LC64:
	.string	"invalid number of fields to skip"
	.align 8
.LC65:
	.string	"invalid number of bytes to skip"
	.align 8
.LC66:
	.string	"invalid number of bytes to compare"
.LC67:
	.string	"David MacKenzie"
.LC68:
	.string	"Richard M. Stallman"
	.align 8
.LC69:
	.string	"--group is mutually exclusive with -c/-d/-D/-u"
	.align 8
.LC70:
	.string	"grouping and printing repeat counts is meaningless"
	.align 8
.LC71:
	.string	"printing all duplicated lines and repeat counts is meaningless"
	.text
	.globl	main
	.type	main, @function
main:
.LFB53:
	.loc 2 478 1
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
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	.loc 2 478 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 479 7
	movl	$0, -68(%rbp)
	.loc 2 480 27
	leaq	.LC58(%rip), %rdi
	call	getenv@PLT
	.loc 2 480 8
	testq	%rax, %rax
	setne	%al
	movb	%al, -69(%rbp)
	.loc 2 481 31
	movl	$0, -64(%rbp)
	.loc 2 482 16
	movl	$0, -60(%rbp)
	.loc 2 484 8
	movb	$10, -71(%rbp)
	.loc 2 485 8
	movb	$0, -70(%rbp)
	.loc 2 487 21
	leaq	.LC53(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 487 17
	movq	-40(%rbp), %rax
	.loc 2 487 11
	movq	%rax, -48(%rbp)
	.loc 2 489 3
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 490 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 491 3
	leaq	.LC59(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 492 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 494 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 496 14
	movq	$0, skip_chars(%rip)
	.loc 2 497 15
	movq	$0, skip_fields(%rip)
	.loc 2 498 15
	movq	$-1, check_chars(%rip)
	.loc 2 499 41
	movb	$1, output_first_repeated(%rip)
	.loc 2 499 17
	movzbl	output_first_repeated(%rip), %eax
	movb	%al, output_unique(%rip)
	.loc 2 500 25
	movb	$0, output_later_repeated(%rip)
	.loc 2 501 13
	movl	$1, countmode(%rip)
	.loc 2 502 18
	movl	$0, delimit_groups(%rip)
.L132:
	.loc 2 510 10
	cmpl	$-1, -68(%rbp)
	je	.L97
	.loc 2 511 11
	cmpb	$0, -69(%rbp)
	je	.L98
	.loc 2 511 31 discriminator 1
	cmpl	$0, -60(%rbp)
	jne	.L97
.L98:
	.loc 2 512 23
	movq	-96(%rbp), %rsi
	movl	-84(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -68(%rbp)
	.loc 2 512 11
	cmpl	$-1, -68(%rbp)
	jne	.L99
.L97:
	.loc 2 516 20
	movl	optind(%rip), %eax
	.loc 2 516 14
	cmpl	%eax, -84(%rbp)
	jle	.L139
	.loc 2 518 14
	cmpl	$2, -60(%rbp)
	jne	.L102
	.loc 2 520 62
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 520 15
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 520 28
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	.loc 2 520 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 521 15
	movl	$1, %edi
	call	usage
.L102:
	.loc 2 523 39
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 2 523 32
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 523 22
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	.loc 2 523 32
	movq	(%rcx), %rdx
	.loc 2 523 26
	movl	%eax, %eax
	movq	%rdx, -48(%rbp,%rax,8)
	jmp	.L103
.L99:
	.loc 2 525 12
	cmpl	$128, -68(%rbp)
	jg	.L104
	cmpl	$48, -68(%rbp)
	jge	.L105
	cmpl	$1, -68(%rbp)
	je	.L106
	cmpl	$1, -68(%rbp)
	jg	.L104
	cmpl	$-131, -68(%rbp)
	je	.L107
	cmpl	$-130, -68(%rbp)
	je	.L108
	jmp	.L104
.L105:
	movl	-68(%rbp), %eax
	subl	$48, %eax
	cmpl	$80, %eax
	ja	.L104
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L110(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L110(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L110:
	.long	.L120-.L110
	.long	.L120-.L110
	.long	.L120-.L110
	.long	.L120-.L110
	.long	.L120-.L110
	.long	.L120-.L110
	.long	.L120-.L110
	.long	.L120-.L110
	.long	.L120-.L110
	.long	.L120-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L119-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L118-.L110
	.long	.L117-.L110
	.long	.L104-.L110
	.long	.L116-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L115-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L114-.L110
	.long	.L104-.L110
	.long	.L113-.L110
	.long	.L104-.L110
	.long	.L112-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L111-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L104-.L110
	.long	.L109-.L110
	.text
.L106:
.LBB15:
	.loc 2 530 23
	movq	optarg(%rip), %rax
	movzbl	(%rax), %eax
	.loc 2 530 16
	cmpb	$43, %al
	jne	.L121
	.loc 2 531 22
	call	strict_posix2
	.loc 2 531 20
	xorl	$1, %eax
	.loc 2 531 17
	testb	%al, %al
	je	.L121
	.loc 2 532 20
	movq	optarg(%rip), %rax
	leaq	-56(%rbp), %rdx
	leaq	.LC17(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 2 532 17
	testl	%eax, %eax
	jne	.L121
	.loc 2 534 26
	movq	-56(%rbp), %rax
	movq	%rax, skip_chars(%rip)
.LBE15:
	.loc 2 543 11
	jmp	.L103
.L121:
.LBB16:
	.loc 2 535 21
	cmpl	$2, -60(%rbp)
	jne	.L123
	.loc 2 537 17
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 537 30
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	.loc 2 537 17
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 538 17
	movl	$1, %edi
	call	usage
.L123:
	.loc 2 541 26
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	.loc 2 541 30
	movq	optarg(%rip), %rdx
	movl	%eax, %eax
	movq	%rdx, -48(%rbp,%rax,8)
.LBE16:
	.loc 2 543 11
	jmp	.L103
.L120:
	.loc 2 556 16
	cmpl	$2, -64(%rbp)
	jne	.L124
	.loc 2 557 27
	movq	$0, skip_fields(%rip)
.L124:
.LBB17:
	.loc 2 559 18
	movq	skip_fields(%rip), %rax
	.loc 2 559 17
	movabsq	$1844674407370955161, %rdx
	cmpq	%rdx, %rax
	ja	.L125
	.loc 2 559 18 discriminator 1
	movq	skip_fields(%rip), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-68(%rbp), %eax
	subl	$48, %eax
	cltq
	addq	%rax, %rdx
	movq	skip_fields(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L125
	.loc 2 559 18 is_stmt 0 discriminator 3
	movq	skip_fields(%rip), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-68(%rbp), %eax
	subl	$48, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, skip_fields(%rip)
	.loc 2 559 17 is_stmt 1 discriminator 3
	movl	$0, %eax
	jmp	.L126
.L125:
	.loc 2 559 17 is_stmt 0 discriminator 4
	movl	$1, %eax
.L126:
	.loc 2 559 16 is_stmt 1 discriminator 6
	testb	%al, %al
	je	.L127
	.loc 2 560 27
	movq	$-1, skip_fields(%rip)
.L127:
.LBE17:
	.loc 2 562 36
	movl	$1, -64(%rbp)
	.loc 2 564 11
	jmp	.L103
.L118:
	.loc 2 567 21
	movl	$0, countmode(%rip)
	.loc 2 568 30
	movb	$1, -70(%rbp)
	.loc 2 569 11
	jmp	.L103
.L117:
	.loc 2 572 25
	movb	$0, output_unique(%rip)
	.loc 2 573 30
	movb	$1, -70(%rbp)
	.loc 2 574 11
	jmp	.L103
.L119:
	.loc 2 577 25
	movb	$0, output_unique(%rip)
	.loc 2 578 33
	movb	$1, output_later_repeated(%rip)
	.loc 2 579 22
	movq	optarg(%rip), %rax
	.loc 2 579 14
	testq	%rax, %rax
	jne	.L128
	.loc 2 580 28
	movl	$0, delimit_groups(%rip)
	jmp	.L129
.L128:
	.loc 2 582 30
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	delimit_method_map(%rip), %rcx
	leaq	delimit_method_string(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC62(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	delimit_method_map(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 582 28
	movl	%eax, delimit_groups(%rip)
.L129:
	.loc 2 585 30
	movb	$1, -70(%rbp)
	.loc 2 586 11
	jmp	.L103
.L109:
	.loc 2 589 22
	movq	optarg(%rip), %rax
	.loc 2 589 14
	testq	%rax, %rax
	jne	.L130
	.loc 2 590 22
	movl	$3, grouping(%rip)
	.loc 2 595 11
	jmp	.L103
.L130:
	.loc 2 592 24
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	grouping_method_map(%rip), %rcx
	leaq	grouping_method_string(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC63(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	grouping_method_map(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 592 22
	movl	%eax, grouping(%rip)
	.loc 2 595 11
	jmp	.L103
.L116:
	.loc 2 598 34
	movl	$2, -64(%rbp)
	.loc 2 599 25
	movq	optarg(%rip), %rax
	leaq	.LC64(%rip), %rsi
	movq	%rax, %rdi
	call	size_opt
	.loc 2 599 23
	movq	%rax, skip_fields(%rip)
	.loc 2 601 11
	jmp	.L103
.L115:
	.loc 2 604 23
	movb	$1, ignore_case(%rip)
	.loc 2 605 11
	jmp	.L103
.L114:
	.loc 2 608 24
	movq	optarg(%rip), %rax
	leaq	.LC65(%rip), %rsi
	movq	%rax, %rdi
	call	size_opt
	.loc 2 608 22
	movq	%rax, skip_chars(%rip)
	.loc 2 610 11
	jmp	.L103
.L113:
	.loc 2 613 33
	movb	$0, output_first_repeated(%rip)
	.loc 2 614 30
	movb	$1, -70(%rbp)
	.loc 2 615 11
	jmp	.L103
.L112:
	.loc 2 618 25
	movq	optarg(%rip), %rax
	leaq	.LC66(%rip), %rsi
	movq	%rax, %rdi
	call	size_opt
	.loc 2 618 23
	movq	%rax, check_chars(%rip)
	.loc 2 620 11
	jmp	.L103
.L111:
	.loc 2 623 21
	movb	$0, -71(%rbp)
	.loc 2 624 11
	jmp	.L103
.L108:
	.loc 2 626 9
	movl	$0, %edi
	call	usage
.L107:
	.loc 2 628 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC67(%rip), %r9
	leaq	.LC68(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC50(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L104:
	.loc 2 631 11
	movl	$1, %edi
	call	usage
.L103:
	.loc 2 510 10
	jmp	.L132
.L139:
	.loc 2 517 13
	nop
	.loc 2 639 16
	movl	grouping(%rip), %eax
	.loc 2 639 6
	testl	%eax, %eax
	je	.L133
	.loc 2 639 27 discriminator 1
	cmpb	$0, -70(%rbp)
	je	.L133
	.loc 2 641 20
	leaq	.LC69(%rip), %rdi
	call	gettext@PLT
	.loc 2 641 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 642 7
	movl	$1, %edi
	call	usage
.L133:
	.loc 2 645 16
	movl	grouping(%rip), %eax
	.loc 2 645 6
	testl	%eax, %eax
	je	.L134
	.loc 2 645 40 discriminator 1
	movl	countmode(%rip), %eax
	.loc 2 645 27 discriminator 1
	cmpl	$1, %eax
	je	.L134
	.loc 2 648 12
	leaq	.LC70(%rip), %rdi
	call	gettext@PLT
	.loc 2 647 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 649 7
	movl	$1, %edi
	call	usage
.L134:
	.loc 2 652 17
	movl	countmode(%rip), %eax
	.loc 2 652 6
	testl	%eax, %eax
	jne	.L135
	.loc 2 652 38 discriminator 1
	movzbl	output_later_repeated(%rip), %eax
	testb	%al, %al
	je	.L135
	.loc 2 655 12
	leaq	.LC71(%rip), %rdi
	call	gettext@PLT
	.loc 2 654 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 656 7
	movl	$1, %edi
	call	usage
.L135:
	.loc 2 659 3
	movsbl	-71(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_file
	.loc 2 661 10
	movl	$0, %eax
	.loc 2 662 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L137
	call	__stack_chk_fail@PLT
.L137:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 7 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 8 "./lib/sys/select.h"
	.file 9 "/usr/include/time.h"
	.file 10 "/usr/include/signal.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/errno.h"
	.file 13 "src/version.h"
	.file 14 "./lib/exitfail.h"
	.file 15 "/usr/include/stdint.h"
	.file 16 "./lib/timespec.h"
	.file 17 "/usr/include/ctype.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 20 "/usr/include/stdio.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 22 "./lib/version-etc.h"
	.file 23 "./lib/progname.h"
	.file 24 "./lib/quotearg.h"
	.file 25 "./lib/quote.h"
	.file 26 "./lib/argmatch.h"
	.file 27 "./lib/linebuffer.h"
	.file 28 "./lib/error.h"
	.file 29 "./lib/fadvise.h"
	.file 30 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf87
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF217
	.byte	0xc
	.long	.LASF218
	.long	.LASF219
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
	.long	.LASF55
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF8
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
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
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0xb
	.long	.LASF15
	.byte	0x5
	.byte	0x49
	.byte	0x1b
	.long	0xe8
	.uleb128 0xb
	.long	.LASF16
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0xfd
	.uleb128 0xb
	.long	.LASF17
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0xfd
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0xfd
	.uleb128 0xc
	.byte	0x8
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.byte	0x7
	.byte	0x12
	.long	0x128
	.uleb128 0xb
	.long	.LASF20
	.byte	0x7
	.byte	0xd1
	.byte	0x17
	.long	0xe8
	.uleb128 0xd
	.long	.LASF21
	.byte	0x8
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF22
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF23
	.uleb128 0xe
	.long	0x39
	.long	0x179
	.uleb128 0xf
	.long	0xe8
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF24
	.byte	0x9
	.byte	0x9f
	.byte	0xe
	.long	0x169
	.uleb128 0x2
	.long	.LASF25
	.byte	0x9
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF26
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.long	0xfd
	.uleb128 0x2
	.long	.LASF27
	.byte	0x9
	.byte	0xa6
	.byte	0xe
	.long	0x169
	.uleb128 0x2
	.long	.LASF28
	.byte	0x9
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF29
	.byte	0x9
	.byte	0xaf
	.byte	0x11
	.long	0xfd
	.uleb128 0xd
	.long	.LASF30
	.byte	0x9
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF31
	.uleb128 0x10
	.uleb128 0x3
	.byte	0x8
	.long	0x1d5
	.uleb128 0xe
	.long	0xc8
	.long	0x1ec
	.uleb128 0xf
	.long	0xe8
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x1dc
	.uleb128 0xd
	.long	.LASF32
	.byte	0xa
	.value	0x11e
	.byte	0x1a
	.long	0x1ec
	.uleb128 0xd
	.long	.LASF33
	.byte	0xa
	.value	0x11f
	.byte	0x1a
	.long	0x1ec
	.uleb128 0xd
	.long	.LASF34
	.byte	0xb
	.value	0x21f
	.byte	0xf
	.long	0x218
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0xd
	.long	.LASF35
	.byte	0xb
	.value	0x221
	.byte	0xf
	.long	0x218
	.uleb128 0x2
	.long	.LASF36
	.byte	0xc
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF37
	.byte	0xc
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF38
	.byte	0xd
	.byte	0x1
	.byte	0x14
	.long	0xc2
	.uleb128 0x2
	.long	.LASF39
	.byte	0xe
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0xb
	.long	.LASF40
	.byte	0xf
	.byte	0x66
	.byte	0x16
	.long	0x104
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x10
	.byte	0x29
	.byte	0x6
	.long	0x27f
	.uleb128 0x12
	.long	.LASF41
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x10
	.byte	0x2a
	.byte	0x6
	.long	0x294
	.uleb128 0x13
	.long	.LASF42
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x11
	.byte	0x2f
	.byte	0x1
	.long	0x2f3
	.uleb128 0x14
	.long	.LASF43
	.value	0x100
	.uleb128 0x14
	.long	.LASF44
	.value	0x200
	.uleb128 0x14
	.long	.LASF45
	.value	0x400
	.uleb128 0x14
	.long	.LASF46
	.value	0x800
	.uleb128 0x14
	.long	.LASF47
	.value	0x1000
	.uleb128 0x14
	.long	.LASF48
	.value	0x2000
	.uleb128 0x14
	.long	.LASF49
	.value	0x4000
	.uleb128 0x14
	.long	.LASF50
	.value	0x8000
	.uleb128 0x13
	.long	.LASF51
	.byte	0x1
	.uleb128 0x13
	.long	.LASF52
	.byte	0x2
	.uleb128 0x13
	.long	.LASF53
	.byte	0x4
	.uleb128 0x13
	.long	.LASF54
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0xd8
	.byte	0x12
	.byte	0x31
	.byte	0x8
	.long	0x47a
	.uleb128 0x9
	.long	.LASF57
	.byte	0x12
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF58
	.byte	0x12
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF59
	.byte	0x12
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF60
	.byte	0x12
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF61
	.byte	0x12
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF62
	.byte	0x12
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF63
	.byte	0x12
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF64
	.byte	0x12
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF65
	.byte	0x12
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF66
	.byte	0x12
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF67
	.byte	0x12
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF68
	.byte	0x12
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF69
	.byte	0x12
	.byte	0x44
	.byte	0x16
	.long	0x493
	.byte	0x60
	.uleb128 0x9
	.long	.LASF70
	.byte	0x12
	.byte	0x46
	.byte	0x14
	.long	0x499
	.byte	0x68
	.uleb128 0x9
	.long	.LASF71
	.byte	0x12
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF72
	.byte	0x12
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF73
	.byte	0x12
	.byte	0x4a
	.byte	0xb
	.long	0x110
	.byte	0x78
	.uleb128 0x9
	.long	.LASF74
	.byte	0x12
	.byte	0x4d
	.byte	0x12
	.long	0xda
	.byte	0x80
	.uleb128 0x9
	.long	.LASF75
	.byte	0x12
	.byte	0x4e
	.byte	0xf
	.long	0xef
	.byte	0x82
	.uleb128 0x9
	.long	.LASF76
	.byte	0x12
	.byte	0x4f
	.byte	0x8
	.long	0x49f
	.byte	0x83
	.uleb128 0x9
	.long	.LASF77
	.byte	0x12
	.byte	0x51
	.byte	0xf
	.long	0x4af
	.byte	0x88
	.uleb128 0x9
	.long	.LASF78
	.byte	0x12
	.byte	0x59
	.byte	0xd
	.long	0x11c
	.byte	0x90
	.uleb128 0x9
	.long	.LASF79
	.byte	0x12
	.byte	0x5b
	.byte	0x17
	.long	0x4ba
	.byte	0x98
	.uleb128 0x9
	.long	.LASF80
	.byte	0x12
	.byte	0x5c
	.byte	0x19
	.long	0x4c5
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF81
	.byte	0x12
	.byte	0x5d
	.byte	0x14
	.long	0x499
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF82
	.byte	0x12
	.byte	0x5e
	.byte	0x9
	.long	0x134
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF83
	.byte	0x12
	.byte	0x5f
	.byte	0xa
	.long	0x142
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF84
	.byte	0x12
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF85
	.byte	0x12
	.byte	0x62
	.byte	0x8
	.long	0x4cb
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF86
	.byte	0x13
	.byte	0x7
	.byte	0x19
	.long	0x2f3
	.uleb128 0x15
	.long	.LASF220
	.byte	0x12
	.byte	0x2b
	.byte	0xe
	.uleb128 0x16
	.long	.LASF87
	.uleb128 0x3
	.byte	0x8
	.long	0x48e
	.uleb128 0x3
	.byte	0x8
	.long	0x2f3
	.uleb128 0xe
	.long	0x3f
	.long	0x4af
	.uleb128 0xf
	.long	0xe8
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x486
	.uleb128 0x16
	.long	.LASF88
	.uleb128 0x3
	.byte	0x8
	.long	0x4b5
	.uleb128 0x16
	.long	.LASF89
	.uleb128 0x3
	.byte	0x8
	.long	0x4c0
	.uleb128 0xe
	.long	0x3f
	.long	0x4db
	.uleb128 0xf
	.long	0xe8
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF90
	.byte	0x14
	.byte	0x89
	.byte	0xe
	.long	0x4e7
	.uleb128 0x3
	.byte	0x8
	.long	0x47a
	.uleb128 0x2
	.long	.LASF91
	.byte	0x14
	.byte	0x8a
	.byte	0xe
	.long	0x4e7
	.uleb128 0x2
	.long	.LASF92
	.byte	0x14
	.byte	0x8b
	.byte	0xe
	.long	0x4e7
	.uleb128 0x2
	.long	.LASF93
	.byte	0x15
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	0xc8
	.long	0x51c
	.uleb128 0x17
	.byte	0
	.uleb128 0x5
	.long	0x511
	.uleb128 0x2
	.long	.LASF94
	.byte	0x15
	.byte	0x1b
	.byte	0x1a
	.long	0x51c
	.uleb128 0x2
	.long	.LASF95
	.byte	0x15
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF96
	.byte	0x15
	.byte	0x1f
	.byte	0x1a
	.long	0x51c
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x563
	.uleb128 0x19
	.long	.LASF97
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF98
	.sleb128 -131
	.byte	0
	.uleb128 0xe
	.long	0x46
	.long	0x56e
	.uleb128 0x17
	.byte	0
	.uleb128 0x5
	.long	0x563
	.uleb128 0x2
	.long	.LASF99
	.byte	0x16
	.byte	0x19
	.byte	0x13
	.long	0x56e
	.uleb128 0x2
	.long	.LASF100
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.long	0xc2
	.uleb128 0x1a
	.long	.LASF131
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.long	0x5e0
	.uleb128 0x13
	.long	.LASF101
	.byte	0
	.uleb128 0x13
	.long	.LASF102
	.byte	0x1
	.uleb128 0x13
	.long	.LASF103
	.byte	0x2
	.uleb128 0x13
	.long	.LASF104
	.byte	0x3
	.uleb128 0x13
	.long	.LASF105
	.byte	0x4
	.uleb128 0x13
	.long	.LASF106
	.byte	0x5
	.uleb128 0x13
	.long	.LASF107
	.byte	0x6
	.uleb128 0x13
	.long	.LASF108
	.byte	0x7
	.uleb128 0x13
	.long	.LASF109
	.byte	0x8
	.uleb128 0x13
	.long	.LASF110
	.byte	0x9
	.uleb128 0x13
	.long	.LASF111
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x58b
	.uleb128 0xd
	.long	.LASF112
	.byte	0x18
	.value	0x10b
	.byte	0x1a
	.long	0x51c
	.uleb128 0xe
	.long	0x5e0
	.long	0x5fd
	.uleb128 0x17
	.byte	0
	.uleb128 0x5
	.long	0x5f2
	.uleb128 0xd
	.long	.LASF113
	.byte	0x18
	.value	0x10c
	.byte	0x21
	.long	0x5fd
	.uleb128 0x16
	.long	.LASF114
	.uleb128 0x2
	.long	.LASF115
	.byte	0x19
	.byte	0x19
	.byte	0x1f
	.long	0x60f
	.uleb128 0xb
	.long	.LASF116
	.byte	0x1a
	.byte	0x3d
	.byte	0x10
	.long	0x1d6
	.uleb128 0x2
	.long	.LASF117
	.byte	0x1a
	.byte	0x3e
	.byte	0x19
	.long	0x620
	.uleb128 0x8
	.long	.LASF118
	.byte	0x18
	.byte	0x1b
	.byte	0x1a
	.byte	0x8
	.long	0x66d
	.uleb128 0x9
	.long	.LASF119
	.byte	0x1b
	.byte	0x1c
	.byte	0xa
	.long	0x142
	.byte	0
	.uleb128 0x9
	.long	.LASF120
	.byte	0x1b
	.byte	0x1d
	.byte	0xa
	.long	0x142
	.byte	0x8
	.uleb128 0x9
	.long	.LASF121
	.byte	0x1b
	.byte	0x1e
	.byte	0x9
	.long	0x39
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x638
	.uleb128 0x2
	.long	.LASF122
	.byte	0x1c
	.byte	0x32
	.byte	0xf
	.long	0x1d6
	.uleb128 0x2
	.long	.LASF123
	.byte	0x1c
	.byte	0x35
	.byte	0x15
	.long	0xe1
	.uleb128 0x2
	.long	.LASF124
	.byte	0x1c
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x1d
	.byte	0x2d
	.byte	0xe
	.long	0x6c9
	.uleb128 0x13
	.long	.LASF125
	.byte	0
	.uleb128 0x13
	.long	.LASF126
	.byte	0x2
	.uleb128 0x13
	.long	.LASF127
	.byte	0x5
	.uleb128 0x13
	.long	.LASF128
	.byte	0x4
	.uleb128 0x13
	.long	.LASF129
	.byte	0x3
	.uleb128 0x13
	.long	.LASF130
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.long	.LASF132
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x1e
	.byte	0x19
	.byte	0x6
	.long	0x6fa
	.uleb128 0x13
	.long	.LASF133
	.byte	0
	.uleb128 0x13
	.long	.LASF134
	.byte	0x1
	.uleb128 0x13
	.long	.LASF135
	.byte	0x2
	.uleb128 0x13
	.long	.LASF136
	.byte	0x3
	.uleb128 0x13
	.long	.LASF137
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.long	.LASF138
	.byte	0x2
	.byte	0x36
	.byte	0xf
	.long	0x142
	.uleb128 0x9
	.byte	0x3
	.quad	skip_fields
	.uleb128 0x1b
	.long	.LASF139
	.byte	0x2
	.byte	0x39
	.byte	0xf
	.long	0x142
	.uleb128 0x9
	.byte	0x3
	.quad	skip_chars
	.uleb128 0x1b
	.long	.LASF140
	.byte	0x2
	.byte	0x3c
	.byte	0xf
	.long	0x142
	.uleb128 0x9
	.byte	0x3
	.quad	check_chars
	.uleb128 0x1a
	.long	.LASF141
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.byte	0x3e
	.byte	0x6
	.long	0x75b
	.uleb128 0x13
	.long	.LASF142
	.byte	0
	.uleb128 0x13
	.long	.LASF143
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.long	.LASF141
	.byte	0x2
	.byte	0x46
	.byte	0x17
	.long	0x73c
	.uleb128 0x9
	.byte	0x3
	.quad	countmode
	.uleb128 0x1b
	.long	.LASF144
	.byte	0x2
	.byte	0x4b
	.byte	0xd
	.long	0x787
	.uleb128 0x9
	.byte	0x3
	.quad	output_unique
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF145
	.uleb128 0x1b
	.long	.LASF146
	.byte	0x2
	.byte	0x4c
	.byte	0xd
	.long	0x787
	.uleb128 0x9
	.byte	0x3
	.quad	output_first_repeated
	.uleb128 0x1b
	.long	.LASF147
	.byte	0x2
	.byte	0x4d
	.byte	0xd
	.long	0x787
	.uleb128 0x9
	.byte	0x3
	.quad	output_later_repeated
	.uleb128 0x1b
	.long	.LASF148
	.byte	0x2
	.byte	0x50
	.byte	0xd
	.long	0x787
	.uleb128 0x9
	.byte	0x3
	.quad	ignore_case
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.byte	0x52
	.byte	0x6
	.long	0x7f5
	.uleb128 0x13
	.long	.LASF150
	.byte	0
	.uleb128 0x13
	.long	.LASF151
	.byte	0x1
	.uleb128 0x13
	.long	.LASF152
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	0x7d0
	.uleb128 0xe
	.long	0xc8
	.long	0x80a
	.uleb128 0xf
	.long	0xe8
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x7fa
	.uleb128 0x1b
	.long	.LASF153
	.byte	0x2
	.byte	0x5e
	.byte	0x1a
	.long	0x80a
	.uleb128 0x9
	.byte	0x3
	.quad	delimit_method_string
	.uleb128 0xe
	.long	0x7f5
	.long	0x835
	.uleb128 0xf
	.long	0xe8
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	0x825
	.uleb128 0x1b
	.long	.LASF154
	.byte	0x2
	.byte	0x63
	.byte	0x22
	.long	0x835
	.uleb128 0x9
	.byte	0x3
	.quad	delimit_method_map
	.uleb128 0x1b
	.long	.LASF155
	.byte	0x2
	.byte	0x69
	.byte	0x1c
	.long	0x7d0
	.uleb128 0x9
	.byte	0x3
	.quad	delimit_groups
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.byte	0x6b
	.byte	0x6
	.long	0x897
	.uleb128 0x13
	.long	.LASF157
	.byte	0
	.uleb128 0x13
	.long	.LASF158
	.byte	0x1
	.uleb128 0x13
	.long	.LASF159
	.byte	0x2
	.uleb128 0x13
	.long	.LASF160
	.byte	0x3
	.uleb128 0x13
	.long	.LASF161
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x866
	.uleb128 0xe
	.long	0xc8
	.long	0x8ac
	.uleb128 0xf
	.long	0xe8
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x89c
	.uleb128 0x1b
	.long	.LASF162
	.byte	0x2
	.byte	0x7d
	.byte	0x1a
	.long	0x8ac
	.uleb128 0x9
	.byte	0x3
	.quad	grouping_method_string
	.uleb128 0xe
	.long	0x897
	.long	0x8d7
	.uleb128 0xf
	.long	0xe8
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x8c7
	.uleb128 0x1b
	.long	.LASF163
	.byte	0x2
	.byte	0x82
	.byte	0x23
	.long	0x8d7
	.uleb128 0x9
	.byte	0x3
	.quad	grouping_method_map
	.uleb128 0x1b
	.long	.LASF164
	.byte	0x2
	.byte	0x87
	.byte	0x1d
	.long	0x866
	.uleb128 0x9
	.byte	0x3
	.quad	grouping
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.byte	0x8a
	.byte	0x1
	.long	0x91d
	.uleb128 0x13
	.long	.LASF165
	.byte	0x80
	.byte	0
	.uleb128 0xe
	.long	0xbd
	.long	0x92d
	.uleb128 0xf
	.long	0xe8
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.long	0x91d
	.uleb128 0x1b
	.long	.LASF166
	.byte	0x2
	.byte	0x8e
	.byte	0x1c
	.long	0x92d
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1c
	.long	.LASF167
	.byte	0x7
	.byte	0x4
	.long	0xe1
	.byte	0x2
	.value	0x1d5
	.byte	0x6
	.long	0x96e
	.uleb128 0x13
	.long	.LASF168
	.byte	0
	.uleb128 0x13
	.long	.LASF169
	.byte	0x1
	.uleb128 0x13
	.long	.LASF170
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.long	.LASF207
	.byte	0x2
	.value	0x1dd
	.byte	0x1
	.long	0x57
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xa56
	.uleb128 0x1e
	.long	.LASF171
	.byte	0x2
	.value	0x1dd
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x2
	.value	0x1dd
	.byte	0x18
	.long	0x218
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1f
	.long	.LASF173
	.byte	0x2
	.value	0x1df
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1f
	.long	.LASF174
	.byte	0x2
	.value	0x1e0
	.byte	0x8
	.long	0x787
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x1f
	.long	.LASF175
	.byte	0x2
	.value	0x1e1
	.byte	0x1f
	.long	0x948
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.long	.LASF176
	.byte	0x2
	.value	0x1e2
	.byte	0x10
	.long	0xe1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x2
	.value	0x1e3
	.byte	0xf
	.long	0xa56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.long	.LASF178
	.byte	0x2
	.value	0x1e4
	.byte	0x8
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -87
	.uleb128 0x1f
	.long	.LASF179
	.byte	0x2
	.value	0x1e5
	.byte	0x8
	.long	0x787
	.uleb128 0x3
	.byte	0x91
	.sleb128 -86
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x90
	.long	0xa44
	.uleb128 0x1f
	.long	.LASF119
	.byte	0x2
	.value	0x211
	.byte	0x17
	.long	0x25b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x21
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.byte	0
	.uleb128 0xe
	.long	0xc2
	.long	0xa66
	.uleb128 0xf
	.long	0xe8
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.long	.LASF194
	.byte	0x2
	.value	0x140
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xc90
	.uleb128 0x1e
	.long	.LASF180
	.byte	0x2
	.value	0x140
	.byte	0x19
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x1e
	.long	.LASF181
	.byte	0x2
	.value	0x140
	.byte	0x2d
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1e
	.long	.LASF178
	.byte	0x2
	.value	0x140
	.byte	0x3b
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x23
	.string	"lb1"
	.byte	0x2
	.value	0x142
	.byte	0x15
	.long	0x638
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.string	"lb2"
	.byte	0x2
	.value	0x142
	.byte	0x1a
	.long	0x638
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.long	.LASF182
	.byte	0x2
	.value	0x143
	.byte	0x16
	.long	0xc90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1f
	.long	.LASF183
	.byte	0x2
	.value	0x143
	.byte	0x21
	.long	0xc90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x24
	.long	.LASF221
	.byte	0x2
	.value	0x1cb
	.byte	0x2
	.quad	.L77
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x21
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xbd3
	.uleb128 0x1f
	.long	.LASF184
	.byte	0x2
	.value	0x163
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x2
	.value	0x164
	.byte	0xe
	.long	0x142
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.long	.LASF186
	.byte	0x2
	.value	0x165
	.byte	0xc
	.long	0x787
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x26
	.long	.Ldebug_ranges0+0
	.uleb128 0x1f
	.long	.LASF187
	.byte	0x2
	.value	0x169
	.byte	0x11
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1f
	.long	.LASF188
	.byte	0x2
	.value	0x16a
	.byte	0x12
	.long	0x142
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1f
	.long	.LASF189
	.byte	0x2
	.value	0x16b
	.byte	0x10
	.long	0x787
	.uleb128 0x3
	.byte	0x91
	.sleb128 -202
	.uleb128 0x27
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x2
	.value	0x181
	.byte	0xf
	.long	0xc90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.Ldebug_ranges0+0x30
	.long	0xc7e
	.uleb128 0x1f
	.long	.LASF184
	.byte	0x2
	.value	0x18c
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x2
	.value	0x18d
	.byte	0xe
	.long	0x142
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.long	.LASF191
	.byte	0x2
	.value	0x18e
	.byte	0x11
	.long	0x25b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1f
	.long	.LASF192
	.byte	0x2
	.value	0x18f
	.byte	0xc
	.long	0x787
	.uleb128 0x3
	.byte	0x91
	.sleb128 -203
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1f
	.long	.LASF193
	.byte	0x2
	.value	0x198
	.byte	0x10
	.long	0x787
	.uleb128 0x3
	.byte	0x91
	.sleb128 -201
	.uleb128 0x1f
	.long	.LASF187
	.byte	0x2
	.value	0x199
	.byte	0x11
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1f
	.long	.LASF188
	.byte	0x2
	.value	0x19a
	.byte	0x12
	.long	0x142
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.uleb128 0x27
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x2
	.value	0x1c0
	.byte	0xf
	.long	0xc90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x638
	.uleb128 0x22
	.long	.LASF195
	.byte	0x2
	.value	0x12e
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xce6
	.uleb128 0x1e
	.long	.LASF196
	.byte	0x2
	.value	0x12e
	.byte	0x25
	.long	0xce6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x2
	.value	0x12f
	.byte	0x11
	.long	0x787
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LASF197
	.byte	0x2
	.value	0x12f
	.byte	0x22
	.long	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x66d
	.uleb128 0x29
	.long	.LASF200
	.byte	0x2
	.value	0x11a
	.byte	0x1
	.long	0x787
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xd50
	.uleb128 0x2a
	.string	"old"
	.byte	0x2
	.value	0x11a
	.byte	0x12
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"new"
	.byte	0x2
	.value	0x11a
	.byte	0x1d
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x2
	.value	0x11a
	.byte	0x29
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x2
	.value	0x11a
	.byte	0x38
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.long	.LASF201
	.byte	0x2
	.value	0x100
	.byte	0x1
	.long	0x39
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc1
	.uleb128 0x1e
	.long	.LASF196
	.byte	0x2
	.value	0x100
	.byte	0x26
	.long	0xce6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF202
	.byte	0x2
	.value	0x102
	.byte	0xa
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"lp"
	.byte	0x2
	.value	0x103
	.byte	0xf
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF119
	.byte	0x2
	.value	0x104
	.byte	0xa
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"i"
	.byte	0x2
	.value	0x105
	.byte	0xa
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2b
	.long	.LASF203
	.byte	0x2
	.byte	0xeb
	.byte	0x1
	.long	0x142
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xe22
	.uleb128 0x2c
	.string	"opt"
	.byte	0x2
	.byte	0xeb
	.byte	0x17
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF204
	.byte	0x2
	.byte	0xeb
	.byte	0x28
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF119
	.byte	0x2
	.byte	0xed
	.byte	0xd
	.long	0x25b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.byte	0
	.uleb128 0x2b
	.long	.LASF205
	.byte	0x2
	.byte	0xe1
	.byte	0x1
	.long	0x787
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xe54
	.uleb128 0x1b
	.long	.LASF206
	.byte	0x2
	.byte	0xe3
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF208
	.byte	0x2
	.byte	0xa0
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xe82
	.uleb128 0x2d
	.long	.LASF209
	.byte	0x2
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF210
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xf27
	.uleb128 0x1e
	.long	.LASF211
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2f
	.long	.LASF212
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xedd
	.uleb128 0x30
	.long	.LASF211
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc2
	.byte	0
	.uleb128 0x30
	.long	.LASF213
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc2
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0xeb2
	.uleb128 0x1f
	.long	.LASF212
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xf37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.long	.LASF213
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1f
	.long	.LASF214
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xf3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.long	.LASF215
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xe
	.long	0xedd
	.long	0xf37
	.uleb128 0xf
	.long	0xe8
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0xf27
	.uleb128 0x3
	.byte	0x8
	.long	0xedd
	.uleb128 0x31
	.long	.LASF222
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF216
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.long	0x787
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.string	"ch"
	.byte	0x1
	.byte	0xa0
	.byte	0x1a
	.long	0xd3
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x55
	.uleb128 0x17
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
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"exit_failure"
.LASF16:
	.string	"__off_t"
.LASF202:
	.string	"count"
.LASF50:
	.string	"_ISgraph"
.LASF109:
	.string	"locale_quoting_style"
.LASF70:
	.string	"_chain"
.LASF55:
	.string	"option"
.LASF98:
	.string	"GETOPT_VERSION_CHAR"
.LASF166:
	.string	"longopts"
.LASF131:
	.string	"quoting_style"
.LASF20:
	.string	"size_t"
.LASF42:
	.string	"LOG10_TIMESPEC_HZ"
.LASF162:
	.string	"grouping_method_string"
.LASF158:
	.string	"GM_PREPEND"
.LASF76:
	.string	"_shortbuf"
.LASF185:
	.string	"prevlen"
.LASF198:
	.string	"oldlen"
.LASF102:
	.string	"shell_quoting_style"
.LASF97:
	.string	"GETOPT_HELP_CHAR"
.LASF64:
	.string	"_IO_buf_base"
.LASF22:
	.string	"long long unsigned int"
.LASF134:
	.string	"LONGINT_OVERFLOW"
.LASF62:
	.string	"_IO_write_ptr"
.LASF91:
	.string	"stdout"
.LASF45:
	.string	"_ISalpha"
.LASF135:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF46:
	.string	"_ISdigit"
.LASF26:
	.string	"__timezone"
.LASF23:
	.string	"long long int"
.LASF12:
	.string	"signed char"
.LASF113:
	.string	"quoting_style_vals"
.LASF40:
	.string	"uintmax_t"
.LASF211:
	.string	"program"
.LASF108:
	.string	"escape_quoting_style"
.LASF137:
	.string	"LONGINT_INVALID"
.LASF119:
	.string	"size"
.LASF93:
	.string	"sys_nerr"
.LASF101:
	.string	"literal_quoting_style"
.LASF71:
	.string	"_fileno"
.LASF59:
	.string	"_IO_read_end"
.LASF148:
	.string	"ignore_case"
.LASF146:
	.string	"output_first_repeated"
.LASF33:
	.string	"sys_siglist"
.LASF14:
	.string	"long int"
.LASF21:
	.string	"_gl_cxxalias_dummy"
.LASF180:
	.string	"infile"
.LASF80:
	.string	"_wide_data"
.LASF54:
	.string	"_ISalnum"
.LASF74:
	.string	"_cur_column"
.LASF37:
	.string	"program_invocation_short_name"
.LASF106:
	.string	"c_quoting_style"
.LASF88:
	.string	"_IO_codecvt"
.LASF164:
	.string	"grouping"
.LASF96:
	.string	"_sys_errlist"
.LASF144:
	.string	"output_unique"
.LASF116:
	.string	"argmatch_exit_fn"
.LASF36:
	.string	"program_invocation_name"
.LASF94:
	.string	"sys_errlist"
.LASF78:
	.string	"_offset"
.LASF9:
	.string	"short unsigned int"
.LASF51:
	.string	"_ISblank"
.LASF149:
	.string	"delimit_method"
.LASF196:
	.string	"line"
.LASF41:
	.string	"TIMESPEC_HZ"
.LASF105:
	.string	"shell_escape_always_quoting_style"
.LASF29:
	.string	"timezone"
.LASF159:
	.string	"GM_APPEND"
.LASF53:
	.string	"_ISpunct"
.LASF154:
	.string	"delimit_method_map"
.LASF100:
	.string	"program_name"
.LASF87:
	.string	"_IO_marker"
.LASF90:
	.string	"stdin"
.LASF147:
	.string	"output_later_repeated"
.LASF10:
	.string	"unsigned int"
.LASF82:
	.string	"_freeres_buf"
.LASF168:
	.string	"SFO_NONE"
.LASF206:
	.string	"posix_ver"
.LASF11:
	.string	"long unsigned int"
.LASF103:
	.string	"shell_always_quoting_style"
.LASF142:
	.string	"count_occurrences"
.LASF5:
	.string	"name"
.LASF28:
	.string	"daylight"
.LASF169:
	.string	"SFO_OBSOLETE"
.LASF217:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF163:
	.string	"grouping_method_map"
.LASF205:
	.string	"strict_posix2"
.LASF124:
	.string	"error_one_per_line"
.LASF38:
	.string	"Version"
.LASF151:
	.string	"DM_PREPEND"
.LASF66:
	.string	"_IO_save_base"
.LASF182:
	.string	"thisline"
.LASF201:
	.string	"find_field"
.LASF35:
	.string	"environ"
.LASF184:
	.string	"prevfield"
.LASF77:
	.string	"_lock"
.LASF140:
	.string	"check_chars"
.LASF187:
	.string	"thisfield"
.LASF199:
	.string	"newlen"
.LASF84:
	.string	"_mode"
.LASF189:
	.string	"new_group"
.LASF132:
	.string	"strtol_error"
.LASF126:
	.string	"FADVISE_SEQUENTIAL"
.LASF197:
	.string	"linecount"
.LASF173:
	.string	"optc"
.LASF167:
	.string	"Skip_field_option_type"
.LASF99:
	.string	"version_etc_copyright"
.LASF79:
	.string	"_codecvt"
.LASF0:
	.string	"optarg"
.LASF44:
	.string	"_ISlower"
.LASF30:
	.string	"getdate_err"
.LASF48:
	.string	"_ISspace"
.LASF1:
	.string	"optind"
.LASF118:
	.string	"linebuffer"
.LASF58:
	.string	"_IO_read_ptr"
.LASF193:
	.string	"match"
.LASF218:
	.string	"src/uniq.c"
.LASF179:
	.string	"output_option_used"
.LASF17:
	.string	"__off64_t"
.LASF220:
	.string	"_IO_lock_t"
.LASF56:
	.string	"_IO_FILE"
.LASF122:
	.string	"error_print_progname"
.LASF170:
	.string	"SFO_NEW"
.LASF214:
	.string	"map_prog"
.LASF34:
	.string	"__environ"
.LASF19:
	.string	"time_t"
.LASF92:
	.string	"stderr"
.LASF73:
	.string	"_old_offset"
.LASF160:
	.string	"GM_SEPARATE"
.LASF215:
	.string	"lc_messages"
.LASF190:
	.string	"_tmp"
.LASF188:
	.string	"thislen"
.LASF69:
	.string	"_markers"
.LASF165:
	.string	"GROUP_OPTION"
.LASF133:
	.string	"LONGINT_OK"
.LASF176:
	.string	"nfiles"
.LASF156:
	.string	"grouping_method"
.LASF117:
	.string	"argmatch_die"
.LASF107:
	.string	"c_maybe_quoting_style"
.LASF145:
	.string	"_Bool"
.LASF8:
	.string	"unsigned char"
.LASF216:
	.string	"field_sep"
.LASF203:
	.string	"size_opt"
.LASF138:
	.string	"skip_fields"
.LASF213:
	.string	"node"
.LASF65:
	.string	"_IO_buf_end"
.LASF13:
	.string	"short int"
.LASF177:
	.string	"file"
.LASF72:
	.string	"_flags2"
.LASF115:
	.string	"quote_quoting_options"
.LASF186:
	.string	"first_group_printed"
.LASF191:
	.string	"match_count"
.LASF7:
	.string	"flag"
.LASF95:
	.string	"_sys_nerr"
.LASF204:
	.string	"msgid"
.LASF75:
	.string	"_vtable_offset"
.LASF27:
	.string	"tzname"
.LASF86:
	.string	"FILE"
.LASF130:
	.string	"FADVISE_RANDOM"
.LASF104:
	.string	"shell_escape_quoting_style"
.LASF127:
	.string	"FADVISE_NOREUSE"
.LASF112:
	.string	"quoting_style_args"
.LASF4:
	.string	"optopt"
.LASF181:
	.string	"outfile"
.LASF194:
	.string	"check_file"
.LASF157:
	.string	"GM_NONE"
.LASF31:
	.string	"long double"
.LASF221:
	.string	"closefiles"
.LASF183:
	.string	"prevline"
.LASF2:
	.string	"char"
.LASF128:
	.string	"FADVISE_DONTNEED"
.LASF52:
	.string	"_IScntrl"
.LASF18:
	.string	"__time_t"
.LASF47:
	.string	"_ISxdigit"
.LASF110:
	.string	"clocale_quoting_style"
.LASF200:
	.string	"different"
.LASF171:
	.string	"argc"
.LASF121:
	.string	"buffer"
.LASF3:
	.string	"opterr"
.LASF175:
	.string	"skip_field_option_type"
.LASF15:
	.string	"__uintmax_t"
.LASF125:
	.string	"FADVISE_NORMAL"
.LASF114:
	.string	"quoting_options"
.LASF60:
	.string	"_IO_read_base"
.LASF143:
	.string	"count_none"
.LASF68:
	.string	"_IO_save_end"
.LASF32:
	.string	"_sys_siglist"
.LASF212:
	.string	"infomap"
.LASF120:
	.string	"length"
.LASF174:
	.string	"posixly_correct"
.LASF6:
	.string	"has_arg"
.LASF208:
	.string	"usage"
.LASF83:
	.string	"__pad5"
.LASF178:
	.string	"delimiter"
.LASF63:
	.string	"_IO_write_end"
.LASF141:
	.string	"countmode"
.LASF85:
	.string	"_unused2"
.LASF161:
	.string	"GM_BOTH"
.LASF172:
	.string	"argv"
.LASF25:
	.string	"__daylight"
.LASF195:
	.string	"writeline"
.LASF209:
	.string	"status"
.LASF219:
	.string	"/root/coreutils"
.LASF192:
	.string	"first_delimiter"
.LASF155:
	.string	"delimit_groups"
.LASF43:
	.string	"_ISupper"
.LASF111:
	.string	"custom_quoting_style"
.LASF57:
	.string	"_flags"
.LASF136:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF150:
	.string	"DM_NONE"
.LASF67:
	.string	"_IO_backup_base"
.LASF123:
	.string	"error_message_count"
.LASF139:
	.string	"skip_chars"
.LASF81:
	.string	"_freeres_list"
.LASF89:
	.string	"_IO_wide_data"
.LASF129:
	.string	"FADVISE_WILLNEED"
.LASF152:
	.string	"DM_SEPARATE"
.LASF222:
	.string	"emit_mandatory_arg_note"
.LASF24:
	.string	"__tzname"
.LASF207:
	.string	"main"
.LASF61:
	.string	"_IO_write_base"
.LASF210:
	.string	"emit_ancillary_info"
.LASF49:
	.string	"_ISprint"
.LASF153:
	.string	"delimit_method_string"
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
