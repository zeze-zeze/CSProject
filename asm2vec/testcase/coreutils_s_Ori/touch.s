	.file	"touch.c"
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
	.local	change_times
	.comm	change_times,4,4
	.local	no_create
	.comm	no_create,1,1
	.local	use_ref
	.comm	use_ref,1,1
	.local	no_dereference
	.comm	no_dereference,1,1
	.local	amtime_now
	.comm	amtime_now,1,1
	.local	newtime
	.comm	newtime,32,32
	.local	ref_file
	.comm	ref_file,8,8
	.section	.rodata
.LC19:
	.string	"time"
.LC20:
	.string	"no-create"
.LC21:
	.string	"date"
.LC22:
	.string	"reference"
.LC23:
	.string	"no-dereference"
.LC24:
	.string	"help"
.LC25:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 256
longopts:
	.quad	.LC19
	.long	1
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC21
	.long	1
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC22
	.long	1
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	104
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
	.string	"atime"
.LC27:
	.string	"access"
.LC28:
	.string	"use"
.LC29:
	.string	"mtime"
.LC30:
	.string	"modify"
	.section	.data.rel.ro.local
	.align 32
	.type	time_args, @object
	.size	time_args, 48
time_args:
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	0
	.section	.rodata
	.align 16
	.type	time_masks, @object
	.size	time_masks, 20
time_masks:
	.long	1
	.long	1
	.long	1
	.long	2
	.long	2
.LC31:
	.string	"invalid date format %s"
	.text
	.type	get_reldate, @function
get_reldate:
.LFB56:
	.file 2 "src/touch.c"
	.loc 2 114 1 is_stmt 1
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
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 2 115 9
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_datetime@PLT
	.loc 2 115 7
	xorl	$1, %eax
	.loc 2 115 6
	testb	%al, %al
	je	.L13
.LBB2:
	.loc 2 116 5
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L13:
.LBE2:
	.loc 2 117 1
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	get_reldate, .-get_reldate
	.section	.rodata
.LC32:
	.string	"-"
.LC33:
	.string	"src/touch.c"
.LC34:
	.string	"change_times == CH_ATIME"
.LC35:
	.string	"failed to close %s"
.LC36:
	.string	"cannot touch %s"
.LC37:
	.string	"setting times of %s"
	.text
	.type	touch, @function
touch:
.LFB57:
	.loc 2 124 1
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
	.loc 2 126 7
	movl	$-1, -32(%rbp)
	.loc 2 127 7
	movl	$0, -28(%rbp)
	.loc 2 128 26
	leaq	newtime(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 2 130 7
	movq	-56(%rbp), %rax
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 130 6
	testl	%eax, %eax
	jne	.L15
	.loc 2 131 8
	movl	$1, -32(%rbp)
	jmp	.L16
.L15:
	.loc 2 132 15
	movzbl	no_create(%rip), %eax
	xorl	$1, %eax
	.loc 2 132 11
	testb	%al, %al
	je	.L16
	.loc 2 132 25 discriminator 1
	movzbl	no_dereference(%rip), %eax
	xorl	$1, %eax
	.loc 2 132 12 discriminator 1
	testb	%al, %al
	je	.L16
	.loc 2 135 12
	movq	-56(%rbp), %rax
	movl	$438, %ecx
	movl	$2369, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	fd_reopen@PLT
	movl	%eax, -32(%rbp)
	.loc 2 142 10
	cmpl	$-1, -32(%rbp)
	jne	.L16
	.loc 2 142 23 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 142 20 discriminator 1
	cmpl	$21, %eax
	je	.L16
	.loc 2 142 42 discriminator 2
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 142 39 discriminator 2
	cmpl	$22, %eax
	je	.L16
	.loc 2 142 61 discriminator 3
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 142 58 discriminator 3
	cmpl	$1, %eax
	je	.L16
	.loc 2 143 22
	call	__errno_location@PLT
	.loc 2 143 20
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
.L16:
	.loc 2 146 20
	movl	change_times(%rip), %eax
	.loc 2 146 6
	cmpl	$3, %eax
	je	.L17
	.loc 2 149 24
	movl	change_times(%rip), %eax
	.loc 2 149 10
	cmpl	$2, %eax
	jne	.L18
	.loc 2 150 28
	movq	$1073741822, 8+newtime(%rip)
	jmp	.L17
.L18:
	.loc 2 153 11
	movl	change_times(%rip), %eax
	cmpl	$1, %eax
	je	.L19
	.loc 2 153 11 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6361(%rip), %rcx
	movl	$153, %edx
	leaq	.LC33(%rip), %rsi
	leaq	.LC34(%rip), %rdi
	call	__assert_fail@PLT
.L19:
	.loc 2 154 30 is_stmt 1
	movq	$1073741822, 24+newtime(%rip)
.L17:
	.loc 2 158 7
	movzbl	amtime_now(%rip), %eax
	.loc 2 158 6
	testb	%al, %al
	je	.L20
	.loc 2 162 9
	movq	$0, -24(%rbp)
.L20:
	.loc 2 166 23
	movzbl	no_dereference(%rip), %eax
	.loc 2 165 9
	testb	%al, %al
	je	.L21
	.loc 2 166 38
	cmpl	$-1, -32(%rbp)
	jne	.L21
	.loc 2 165 9
	movl	$256, %ecx
	jmp	.L22
.L21:
	.loc 2 165 9 is_stmt 0 discriminator 1
	movl	$0, %ecx
.L22:
	.loc 2 165 9 discriminator 3
	cmpl	$1, -32(%rbp)
	je	.L23
	.loc 2 165 9 discriminator 4
	movq	-56(%rbp), %rax
	jmp	.L24
.L23:
	.loc 2 165 9 discriminator 5
	movl	$0, %eax
.L24:
	.loc 2 165 9 discriminator 7
	movq	-24(%rbp), %rdx
	movl	-32(%rbp), %edi
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$-100, %esi
	call	fdutimensat@PLT
	.loc 2 165 6 is_stmt 1 discriminator 7
	testl	%eax, %eax
	sete	%al
	movb	%al, -33(%rbp)
	.loc 2 169 6 discriminator 7
	cmpl	$0, -32(%rbp)
	jne	.L25
	.loc 2 171 11
	movl	$0, %edi
	call	close@PLT
	.loc 2 171 10
	testl	%eax, %eax
	je	.L26
	.loc 2 173 11
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 173 28
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 173 21
	call	__errno_location@PLT
	.loc 2 173 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 174 18
	movl	$0, %eax
	jmp	.L27
.L25:
	.loc 2 177 11
	cmpl	$1, -32(%rbp)
	jne	.L26
	.loc 2 180 11
	movzbl	-33(%rbp), %eax
	xorl	$1, %eax
	.loc 2 180 10
	testb	%al, %al
	je	.L26
	.loc 2 180 18 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 180 15 discriminator 1
	cmpl	$9, %eax
	jne	.L26
	.loc 2 180 33 discriminator 2
	movzbl	no_create(%rip), %eax
	testb	%al, %al
	je	.L26
	.loc 2 181 16
	movl	$1, %eax
	jmp	.L27
.L26:
	.loc 2 184 7
	movzbl	-33(%rbp), %eax
	xorl	$1, %eax
	.loc 2 184 6
	testb	%al, %al
	je	.L28
	.loc 2 186 10
	cmpl	$0, -28(%rbp)
	je	.L29
	.loc 2 192 11
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 192 33
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 192 11
	movl	-28(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L30
.L29:
	.loc 2 196 15
	movzbl	no_create(%rip), %eax
	.loc 2 196 14
	testb	%al, %al
	je	.L31
	.loc 2 196 28 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 196 25 discriminator 1
	cmpl	$2, %eax
	jne	.L31
	.loc 2 197 20
	movl	$1, %eax
	jmp	.L27
.L31:
	.loc 2 198 11
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 198 28
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 198 21
	call	__errno_location@PLT
	.loc 2 198 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L30:
	.loc 2 200 14
	movl	$0, %eax
	jmp	.L27
.L28:
	.loc 2 203 10
	movl	$1, %eax
.L27:
	.loc 2 204 1
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	touch, .-touch
	.section	.rodata
	.align 8
.LC38:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC39:
	.string	"Usage: %s [OPTION]... FILE...\n"
	.align 8
.LC40:
	.ascii	"Update the access and modification "
	.string	"times of each FILE to the current time.\n\nA FILE argument that does not exist is created empty, unless -c or -h\nis supplied.\n\nA FILE argument string of - is handled specially and causes touch to\nchange the times of the file associated with standard output.\n"
	.align 8
.LC41:
	.string	"  -a                     change only the access time\n  -c, --no-create        do not create any files\n  -d, --date=STRING      parse STRING and use it instead of current time\n  -f                     (ignored)\n"
	.align 8
.LC42:
	.ascii	"  -h"
	.string	", --no-dereference   affect each symbolic link instead of any referenced\n                         file (useful only on systems that can change the\n                         timestamps of a symlink)\n  -m                     change only the modification time\n"
	.align 8
.LC43:
	.ascii	"  -r, --reference=FILE   use this file's times instead of cu"
	.ascii	"rrent time\n  -t STAMP     "
	.string	"          use [[CC]YY]MMDDhhmm[.ss] instead of current time\n      --time=WORD        change the specified time:\n                           WORD is access, atime, or use: equivalent to -a\n                           WORD is modify or mtime: equivalent to -m\n"
	.align 8
.LC44:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC45:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC46:
	.string	"\nNote that the -d and -t options accept different time-date formats.\n"
.LC47:
	.string	"touch"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB58:
	.loc 2 208 1
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
	.loc 2 209 6
	cmpl	$0, -20(%rbp)
	je	.L33
	.loc 2 210 5
	movq	program_name(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L34
.L33:
	.loc 2 213 7
	movq	program_name(%rip), %rbx
	.loc 2 213 15
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	.loc 2 213 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 214 7
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 224 7
	call	emit_mandatory_arg_note
	.loc 2 226 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 232 7
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 238 7
	movq	stdout(%rip), %rbx
	leaq	.LC43(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 245 7
	movq	stdout(%rip), %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 246 7
	movq	stdout(%rip), %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 247 7
	movq	stdout(%rip), %rbx
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 251 7
	leaq	.LC47(%rip), %rdi
	call	emit_ancillary_info
.L34:
	.loc 2 253 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE58:
	.size	usage, .-usage
	.section	.rodata
.LC48:
	.string	"/usr/local/share/locale"
.LC49:
	.string	"--time"
.LC50:
	.string	"Arnold Robbins"
.LC51:
	.string	"Paul Rubin"
.LC52:
	.string	"Randy Smith"
.LC53:
	.string	"David MacKenzie"
.LC54:
	.string	"Jim Kingdon"
.LC55:
	.string	"acd:fhmr:t:"
	.align 8
.LC56:
	.string	"cannot specify times from more than one source"
	.align 8
.LC57:
	.string	"failed to get attributes of %s"
.LC58:
	.string	"POSIXLY_CORRECT"
	.align 8
.LC59:
	.string	"warning: 'touch %s' is obsolete; use 'touch -t %04ld%02d%02d%02d%02d.%02d'"
.LC60:
	.string	"missing file operand"
	.text
	.globl	main
	.type	main, @function
main:
.LFB59:
	.loc 2 258 1
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
	subq	$280, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -292(%rbp)
	movq	%rsi, -304(%rbp)
	.loc 2 258 1
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	.loc 2 260 8
	movb	$0, -278(%rbp)
	.loc 2 261 8
	movb	$1, -277(%rbp)
	.loc 2 262 15
	movq	$0, -272(%rbp)
	.loc 2 265 3
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 266 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 267 3
	leaq	.LC48(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 268 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 270 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 272 16
	movl	$0, change_times(%rip)
	.loc 2 273 23
	movb	$0, use_ref(%rip)
	.loc 2 273 13
	movzbl	use_ref(%rip), %eax
	movb	%al, no_create(%rip)
	.loc 2 275 9
	jmp	.L36
.L52:
	.loc 2 277 7
	cmpl	$128, -276(%rbp)
	jg	.L37
	cmpl	$97, -276(%rbp)
	jge	.L38
	cmpl	$-131, -276(%rbp)
	je	.L39
	cmpl	$-130, -276(%rbp)
	je	.L40
	jmp	.L37
.L38:
	movl	-276(%rbp), %eax
	subl	$97, %eax
	cmpl	$31, %eax
	ja	.L37
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L42(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L42(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L42:
	.long	.L50-.L42
	.long	.L37-.L42
	.long	.L49-.L42
	.long	.L48-.L42
	.long	.L37-.L42
	.long	.L36-.L42
	.long	.L37-.L42
	.long	.L46-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L45-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L44-.L42
	.long	.L37-.L42
	.long	.L43-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L37-.L42
	.long	.L41-.L42
	.text
.L50:
	.loc 2 280 24
	movl	change_times(%rip), %eax
	orl	$1, %eax
	movl	%eax, change_times(%rip)
	.loc 2 281 11
	jmp	.L36
.L49:
	.loc 2 284 21
	movb	$1, no_create(%rip)
	.loc 2 285 11
	jmp	.L36
.L48:
	.loc 2 288 21
	movq	optarg(%rip), %rax
	movq	%rax, -272(%rbp)
	.loc 2 289 11
	jmp	.L36
.L46:
	.loc 2 295 26
	movb	$1, no_dereference(%rip)
	.loc 2 296 11
	jmp	.L36
.L45:
	.loc 2 299 24
	movl	change_times(%rip), %eax
	orl	$2, %eax
	movl	%eax, change_times(%rip)
	.loc 2 300 11
	jmp	.L36
.L44:
	.loc 2 303 19
	movb	$1, use_ref(%rip)
	.loc 2 304 20
	movq	optarg(%rip), %rax
	movq	%rax, ref_file(%rip)
	.loc 2 305 11
	jmp	.L36
.L43:
	.loc 2 308 17
	movq	optarg(%rip), %rax
	movl	$6, %edx
	movq	%rax, %rsi
	leaq	newtime(%rip), %rdi
	call	posixtime@PLT
	.loc 2 308 15
	xorl	$1, %eax
	.loc 2 308 14
	testb	%al, %al
	je	.L51
.LBB3:
	.loc 2 310 13
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L51:
.LBE3:
	.loc 2 312 30
	movq	$0, 8+newtime(%rip)
	.loc 2 313 22
	movq	newtime(%rip), %rax
	movq	8+newtime(%rip), %rdx
	movq	%rax, 16+newtime(%rip)
	movq	%rdx, 24+newtime(%rip)
	.loc 2 314 20
	movb	$1, -278(%rbp)
	.loc 2 315 11
	jmp	.L36
.L41:
	.loc 2 318 27
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	time_masks(%rip), %rcx
	leaq	time_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC49(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	time_masks(%rip), %rax
	movl	(%rdx,%rax), %edx
	.loc 2 318 24
	movl	change_times(%rip), %eax
	orl	%edx, %eax
	movl	%eax, change_times(%rip)
	.loc 2 320 11
	jmp	.L36
.L40:
	.loc 2 322 9
	movl	$0, %edi
	call	usage
.L39:
	.loc 2 324 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	pushq	$0
	leaq	.LC52(%rip), %rcx
	pushq	%rcx
	leaq	.LC53(%rip), %rcx
	pushq	%rcx
	leaq	.LC54(%rip), %rcx
	pushq	%rcx
	leaq	.LC50(%rip), %r9
	leaq	.LC51(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$32, %rsp
	movl	$0, %edi
	call	exit@PLT
.L37:
	.loc 2 327 11
	movl	$1, %edi
	call	usage
.L36:
	.loc 2 275 15
	movq	-304(%rbp), %rsi
	movl	-292(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -276(%rbp)
	.loc 2 275 9
	cmpl	$-1, -276(%rbp)
	jne	.L52
	.loc 2 331 20
	movl	change_times(%rip), %eax
	.loc 2 331 6
	testl	%eax, %eax
	jne	.L53
	.loc 2 332 18
	movl	$3, change_times(%rip)
.L53:
	.loc 2 334 6
	cmpb	$0, -278(%rbp)
	je	.L54
	.loc 2 334 20 discriminator 1
	movzbl	use_ref(%rip), %eax
	.loc 2 334 16 discriminator 1
	testb	%al, %al
	jne	.L55
	.loc 2 334 28 discriminator 2
	cmpq	$0, -272(%rbp)
	je	.L54
.L55:
	.loc 2 336 20
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	.loc 2 336 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 337 7
	movl	$1, %edi
	call	usage
.L54:
	.loc 2 340 7
	movzbl	use_ref(%rip), %eax
	.loc 2 340 6
	testb	%al, %al
	je	.L56
.LBB4:
	.loc 2 345 26
	movzbl	no_dereference(%rip), %eax
	.loc 2 345 11
	testb	%al, %al
	je	.L57
	.loc 2 345 28 discriminator 1
	movq	ref_file(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 2 345 11 discriminator 1
	testl	%eax, %eax
	setne	%al
	jmp	.L58
.L57:
	.loc 2 346 13 discriminator 2
	movq	ref_file(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 345 11 discriminator 2
	testl	%eax, %eax
	setne	%al
.L58:
	.loc 2 345 10 discriminator 4
	testb	%al, %al
	je	.L59
.LBB5:
	.loc 2 347 9
	movq	ref_file(%rip), %rax
	movq	%rax, %rsi
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
.L59:
.LBE5:
	.loc 2 349 20
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_atime@PLT
	movq	%rax, newtime(%rip)
	movq	%rdx, 8+newtime(%rip)
	.loc 2 350 20
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, 16+newtime(%rip)
	movq	%rdx, 24+newtime(%rip)
	.loc 2 351 16
	movb	$1, -278(%rbp)
	.loc 2 352 10
	cmpq	$0, -272(%rbp)
	je	.L62
	.loc 2 354 28
	movl	change_times(%rip), %eax
	andl	$1, %eax
	.loc 2 354 14
	testl	%eax, %eax
	je	.L61
	.loc 2 355 13
	movq	-272(%rbp), %rax
	leaq	newtime(%rip), %rdx
	movq	%rax, %rsi
	leaq	newtime(%rip), %rdi
	call	get_reldate
.L61:
	.loc 2 356 28
	movl	change_times(%rip), %eax
	andl	$2, %eax
	.loc 2 356 14
	testl	%eax, %eax
	je	.L62
	.loc 2 357 13
	movq	-272(%rbp), %rax
	leaq	16+newtime(%rip), %rdx
	movq	%rax, %rsi
	leaq	16+newtime(%rip), %rdi
	call	get_reldate
	jmp	.L62
.L56:
.LBE4:
	.loc 2 362 10
	cmpq	$0, -272(%rbp)
	je	.L62
.LBB6:
	.loc 2 365 11
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	gettime@PLT
	.loc 2 366 11
	leaq	-256(%rbp), %rdx
	movq	-272(%rbp), %rax
	movq	%rax, %rsi
	leaq	newtime(%rip), %rdi
	call	get_reldate
	.loc 2 367 22
	movq	newtime(%rip), %rax
	movq	8+newtime(%rip), %rdx
	movq	%rax, 16+newtime(%rip)
	movq	%rdx, 24+newtime(%rip)
	.loc 2 368 20
	movb	$1, -278(%rbp)
	.loc 2 373 28
	movl	change_times(%rip), %eax
	.loc 2 373 14
	cmpl	$3, %eax
	jne	.L62
	.loc 2 374 28
	movq	newtime(%rip), %rdx
	.loc 2 374 42
	movq	-256(%rbp), %rax
	.loc 2 374 15
	cmpq	%rax, %rdx
	jne	.L62
	.loc 2 375 28
	movq	8+newtime(%rip), %rdx
	.loc 2 375 43
	movq	-248(%rbp), %rax
	.loc 2 375 15
	cmpq	%rax, %rdx
	jne	.L62
.LBB7:
	.loc 2 380 34
	movq	-256(%rbp), %rax
	.loc 2 380 42
	xorq	$1, %rax
	.loc 2 380 29
	movq	%rax, -240(%rbp)
	.loc 2 381 35
	movq	-248(%rbp), %rax
	.loc 2 381 30
	movq	%rax, -232(%rbp)
	.loc 2 382 15
	leaq	-240(%rbp), %rdx
	movq	-272(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_reldate
	.loc 2 383 26
	movq	-224(%rbp), %rdx
	.loc 2 383 43
	movq	-240(%rbp), %rax
	.loc 2 383 18
	cmpq	%rax, %rdx
	jne	.L62
	.loc 2 384 29
	movq	-216(%rbp), %rdx
	.loc 2 384 47
	movq	-232(%rbp), %rax
	.loc 2 384 19
	cmpq	%rax, %rdx
	jne	.L62
	.loc 2 385 26
	movb	$0, -278(%rbp)
.L62:
.LBE7:
.LBE6:
	.loc 2 392 7
	movzbl	-278(%rbp), %eax
	xorl	$1, %eax
	.loc 2 392 6
	testb	%al, %al
	je	.L65
	.loc 2 392 30 discriminator 1
	movl	optind(%rip), %eax
	movl	-292(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 392 17 discriminator 1
	cmpl	$1, %eax
	jle	.L65
	.loc 2 392 42 discriminator 2
	call	posix2_version@PLT
	.loc 2 392 39 discriminator 2
	cmpl	$200111, %eax
	jg	.L65
	.loc 2 393 45
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-304(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 393 10
	movq	(%rax), %rax
	movl	$9, %edx
	movq	%rax, %rsi
	leaq	newtime(%rip), %rdi
	call	posixtime@PLT
	.loc 2 393 7
	testb	%al, %al
	je	.L65
	.loc 2 396 26
	movq	$0, 8+newtime(%rip)
	.loc 2 397 18
	movq	newtime(%rip), %rax
	movq	8+newtime(%rip), %rdx
	movq	%rax, 16+newtime(%rip)
	movq	%rdx, 24+newtime(%rip)
	.loc 2 398 16
	movb	$1, -278(%rbp)
	.loc 2 400 13
	leaq	.LC58(%rip), %rdi
	call	getenv@PLT
	.loc 2 400 10
	testq	%rax, %rax
	jne	.L66
.LBB8:
	.loc 2 402 33
	leaq	newtime(%rip), %rdi
	call	localtime@PLT
	movq	%rax, -264(%rbp)
	.loc 2 408 14
	cmpq	$0, -264(%rbp)
	je	.L66
	.loc 2 409 13
	movq	-264(%rbp), %rax
	movl	(%rax), %r15d
	movq	-264(%rbp), %rax
	movl	4(%rax), %r14d
	movq	-264(%rbp), %rax
	movl	8(%rax), %r13d
	movq	-264(%rbp), %rax
	movl	12(%rax), %r12d
	.loc 2 413 43
	movq	-264(%rbp), %rax
	movl	16(%rax), %eax
	.loc 2 409 13
	addl	$1, %eax
	movl	%eax, -296(%rbp)
	.loc 2 413 22
	movq	-264(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	.loc 2 409 13
	leaq	1900(%rax), %rbx
	movq	%rbx, -312(%rbp)
	.loc 2 412 24
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-304(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 409 13
	movq	(%rax), %rbx
	.loc 2 410 20
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	.loc 2 409 13
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movl	-296(%rbp), %r9d
	movq	-312(%rbp), %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	addq	$32, %rsp
.L66:
.LBE8:
	.loc 2 417 13
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L65:
	.loc 2 420 7
	movzbl	-278(%rbp), %eax
	xorl	$1, %eax
	.loc 2 420 6
	testb	%al, %al
	je	.L67
	.loc 2 422 24
	movl	change_times(%rip), %eax
	.loc 2 422 10
	cmpl	$3, %eax
	jne	.L68
	.loc 2 423 20
	movb	$1, amtime_now(%rip)
	jmp	.L67
.L68:
	.loc 2 425 49
	movq	$1073741823, 8+newtime(%rip)
	.loc 2 425 40
	movq	8+newtime(%rip), %rax
	.loc 2 425 28
	movq	%rax, 24+newtime(%rip)
.L67:
	.loc 2 428 14
	movl	optind(%rip), %eax
	.loc 2 428 6
	cmpl	%eax, -292(%rbp)
	jne	.L70
	.loc 2 430 20
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	.loc 2 430 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 431 7
	movl	$1, %edi
	call	usage
.L71:
	.loc 2 435 22 discriminator 2
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-304(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 435 11 discriminator 2
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	touch
	.loc 2 435 8 discriminator 2
	movzbl	-277(%rbp), %edx
	.loc 2 435 11 discriminator 2
	movzbl	%al, %eax
	.loc 2 435 8 discriminator 2
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -277(%rbp)
	.loc 2 434 25 discriminator 2
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
.L70:
	.loc 2 434 17 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 434 3 discriminator 1
	cmpl	%eax, -292(%rbp)
	jg	.L71
	.loc 2 437 28
	movzbl	-277(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 438 1
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L73
	call	__stack_chk_fail@PLT
.L73:
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
.LFE59:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.6361, @object
	.size	__PRETTY_FUNCTION__.6361, 6
__PRETTY_FUNCTION__.6361:
	.string	"touch"
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 11 "./lib/sys/select.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
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
	.file 26 "./lib/quote.h"
	.file 27 "./lib/argmatch.h"
	.file 28 "./lib/error.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xca1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF178
	.byte	0xc
	.long	.LASF179
	.long	.LASF180
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
	.long	0x76
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x76
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x76
	.uleb128 0x2
	.long	.LASF17
	.byte	0x4
	.byte	0xae
	.byte	0x1d
	.long	0x76
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0xb3
	.byte	0x1c
	.long	0x76
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.byte	0xc4
	.byte	0x21
	.long	0x76
	.uleb128 0x8
	.byte	0x8
	.long	0x113
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x7
	.long	0x113
	.uleb128 0x9
	.long	.LASF64
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x2a6
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
	.long	0x10d
	.byte	0x8
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x10d
	.byte	0x10
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x10d
	.byte	0x18
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x10d
	.byte	0x20
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x10d
	.byte	0x28
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x10d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x10d
	.byte	0x38
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x10d
	.byte	0x40
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x10d
	.byte	0x48
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x10d
	.byte	0x50
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x10d
	.byte	0x58
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x2bf
	.byte	0x60
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x2c5
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
	.long	0xc5
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
	.long	0x2cb
	.byte	0x83
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x2db
	.byte	0x88
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xd1
	.byte	0x90
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2e6
	.byte	0x98
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2f1
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x2c5
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
	.long	0x2f7
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x11f
	.uleb128 0xb
	.long	.LASF181
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF51
	.uleb128 0x8
	.byte	0x8
	.long	0x2ba
	.uleb128 0x8
	.byte	0x8
	.long	0x11f
	.uleb128 0xd
	.long	0x113
	.long	0x2db
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2b2
	.uleb128 0xc
	.long	.LASF52
	.uleb128 0x8
	.byte	0x8
	.long	0x2e1
	.uleb128 0xc
	.long	.LASF53
	.uleb128 0x8
	.byte	0x8
	.long	0x2ec
	.uleb128 0xd
	.long	0x113
	.long	0x307
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x11a
	.uleb128 0x7
	.long	0x307
	.uleb128 0xf
	.long	.LASF54
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x31e
	.uleb128 0x8
	.byte	0x8
	.long	0x2a6
	.uleb128 0xf
	.long	.LASF55
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x31e
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x31e
	.uleb128 0xf
	.long	.LASF57
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x30d
	.long	0x353
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	0x348
	.uleb128 0xf
	.long	.LASF58
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x353
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
	.long	0x353
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
	.byte	0x7
	.byte	0x12
	.long	0xdd
	.uleb128 0x9
	.long	.LASF65
	.byte	0x10
	.byte	0xa
	.byte	0xa
	.byte	0x8
	.long	0x3be
	.uleb128 0xa
	.long	.LASF66
	.byte	0xa
	.byte	0xc
	.byte	0xc
	.long	0xdd
	.byte	0
	.uleb128 0xa
	.long	.LASF67
	.byte	0xa
	.byte	0x10
	.byte	0x15
	.long	0x101
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	0x396
	.uleb128 0x11
	.long	.LASF68
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF69
	.uleb128 0xf
	.long	.LASF70
	.byte	0xc
	.byte	0x24
	.byte	0xe
	.long	0x10d
	.uleb128 0xf
	.long	.LASF71
	.byte	0xc
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF72
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF73
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF74
	.byte	0x20
	.byte	0xd
	.byte	0x32
	.byte	0x8
	.long	0x449
	.uleb128 0xa
	.long	.LASF75
	.byte	0xd
	.byte	0x34
	.byte	0xf
	.long	0x307
	.byte	0
	.uleb128 0xa
	.long	.LASF76
	.byte	0xd
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF77
	.byte	0xd
	.byte	0x38
	.byte	0x8
	.long	0x44e
	.byte	0x10
	.uleb128 0x12
	.string	"val"
	.byte	0xd
	.byte	0x39
	.byte	0x7
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	0x407
	.uleb128 0x8
	.byte	0x8
	.long	0x65
	.uleb128 0x13
	.string	"tm"
	.byte	0x38
	.byte	0xe
	.byte	0x7
	.byte	0x8
	.long	0x4f0
	.uleb128 0xa
	.long	.LASF78
	.byte	0xe
	.byte	0x9
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xa
	.long	.LASF79
	.byte	0xe
	.byte	0xa
	.byte	0x7
	.long	0x65
	.byte	0x4
	.uleb128 0xa
	.long	.LASF80
	.byte	0xe
	.byte	0xb
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF81
	.byte	0xe
	.byte	0xc
	.byte	0x7
	.long	0x65
	.byte	0xc
	.uleb128 0xa
	.long	.LASF82
	.byte	0xe
	.byte	0xd
	.byte	0x7
	.long	0x65
	.byte	0x10
	.uleb128 0xa
	.long	.LASF83
	.byte	0xe
	.byte	0xe
	.byte	0x7
	.long	0x65
	.byte	0x14
	.uleb128 0xa
	.long	.LASF84
	.byte	0xe
	.byte	0xf
	.byte	0x7
	.long	0x65
	.byte	0x18
	.uleb128 0xa
	.long	.LASF85
	.byte	0xe
	.byte	0x10
	.byte	0x7
	.long	0x65
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF86
	.byte	0xe
	.byte	0x11
	.byte	0x7
	.long	0x65
	.byte	0x20
	.uleb128 0xa
	.long	.LASF87
	.byte	0xe
	.byte	0x14
	.byte	0xc
	.long	0x76
	.byte	0x28
	.uleb128 0xa
	.long	.LASF88
	.byte	0xe
	.byte	0x15
	.byte	0xf
	.long	0x307
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	0x454
	.uleb128 0xd
	.long	0x10d
	.long	0x505
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF89
	.byte	0xf
	.byte	0x9f
	.byte	0xe
	.long	0x4f5
	.uleb128 0xf
	.long	.LASF90
	.byte	0xf
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF91
	.byte	0xf
	.byte	0xa1
	.byte	0x11
	.long	0x76
	.uleb128 0xf
	.long	.LASF92
	.byte	0xf
	.byte	0xa6
	.byte	0xe
	.long	0x4f5
	.uleb128 0xf
	.long	.LASF93
	.byte	0xf
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF94
	.byte	0xf
	.byte	0xaf
	.byte	0x11
	.long	0x76
	.uleb128 0x11
	.long	.LASF95
	.byte	0xf
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF96
	.byte	0x90
	.byte	0x10
	.byte	0x2e
	.byte	0x8
	.long	0x62b
	.uleb128 0xa
	.long	.LASF97
	.byte	0x10
	.byte	0x30
	.byte	0xd
	.long	0x7d
	.byte	0
	.uleb128 0xa
	.long	.LASF98
	.byte	0x10
	.byte	0x35
	.byte	0xd
	.long	0xa1
	.byte	0x8
	.uleb128 0xa
	.long	.LASF99
	.byte	0x10
	.byte	0x3d
	.byte	0xf
	.long	0xb9
	.byte	0x10
	.uleb128 0xa
	.long	.LASF100
	.byte	0x10
	.byte	0x3e
	.byte	0xe
	.long	0xad
	.byte	0x18
	.uleb128 0xa
	.long	.LASF101
	.byte	0x10
	.byte	0x40
	.byte	0xd
	.long	0x89
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF102
	.byte	0x10
	.byte	0x41
	.byte	0xd
	.long	0x95
	.byte	0x20
	.uleb128 0xa
	.long	.LASF103
	.byte	0x10
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xa
	.long	.LASF104
	.byte	0x10
	.byte	0x45
	.byte	0xd
	.long	0x7d
	.byte	0x28
	.uleb128 0xa
	.long	.LASF105
	.byte	0x10
	.byte	0x4a
	.byte	0xd
	.long	0xc5
	.byte	0x30
	.uleb128 0xa
	.long	.LASF106
	.byte	0x10
	.byte	0x4e
	.byte	0x11
	.long	0xe9
	.byte	0x38
	.uleb128 0xa
	.long	.LASF107
	.byte	0x10
	.byte	0x50
	.byte	0x10
	.long	0xf5
	.byte	0x40
	.uleb128 0xa
	.long	.LASF108
	.byte	0x10
	.byte	0x5b
	.byte	0x15
	.long	0x396
	.byte	0x48
	.uleb128 0xa
	.long	.LASF109
	.byte	0x10
	.byte	0x5c
	.byte	0x15
	.long	0x396
	.byte	0x58
	.uleb128 0xa
	.long	.LASF110
	.byte	0x10
	.byte	0x5d
	.byte	0x15
	.long	0x396
	.byte	0x68
	.uleb128 0xa
	.long	.LASF111
	.byte	0x10
	.byte	0x6a
	.byte	0x17
	.long	0x62b
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.long	0x101
	.long	0x63b
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.uleb128 0x8
	.byte	0x8
	.long	0x63b
	.uleb128 0xd
	.long	0x30d
	.long	0x652
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.long	0x642
	.uleb128 0x11
	.long	.LASF112
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x652
	.uleb128 0x11
	.long	.LASF113
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x652
	.uleb128 0x11
	.long	.LASF114
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x67e
	.uleb128 0x8
	.byte	0x8
	.long	0x10d
	.uleb128 0x11
	.long	.LASF115
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x67e
	.uleb128 0xf
	.long	.LASF116
	.byte	0x13
	.byte	0x2d
	.byte	0xe
	.long	0x10d
	.uleb128 0xf
	.long	.LASF117
	.byte	0x13
	.byte	0x2e
	.byte	0xe
	.long	0x10d
	.uleb128 0xf
	.long	.LASF118
	.byte	0x14
	.byte	0x1
	.byte	0x14
	.long	0x307
	.uleb128 0xf
	.long	.LASF119
	.byte	0x15
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.long	0x6d9
	.uleb128 0x16
	.long	.LASF120
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x6ee
	.uleb128 0x17
	.long	.LASF121
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x70c
	.uleb128 0x19
	.long	.LASF122
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF123
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x11a
	.long	0x717
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	0x70c
	.uleb128 0xf
	.long	.LASF124
	.byte	0x17
	.byte	0x19
	.byte	0x13
	.long	0x717
	.uleb128 0xf
	.long	.LASF125
	.byte	0x18
	.byte	0x20
	.byte	0x14
	.long	0x307
	.uleb128 0x1a
	.long	.LASF182
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x20
	.byte	0x6
	.long	0x789
	.uleb128 0x17
	.long	.LASF126
	.byte	0
	.uleb128 0x17
	.long	.LASF127
	.byte	0x1
	.uleb128 0x17
	.long	.LASF128
	.byte	0x2
	.uleb128 0x17
	.long	.LASF129
	.byte	0x3
	.uleb128 0x17
	.long	.LASF130
	.byte	0x4
	.uleb128 0x17
	.long	.LASF131
	.byte	0x5
	.uleb128 0x17
	.long	.LASF132
	.byte	0x6
	.uleb128 0x17
	.long	.LASF133
	.byte	0x7
	.uleb128 0x17
	.long	.LASF134
	.byte	0x8
	.uleb128 0x17
	.long	.LASF135
	.byte	0x9
	.uleb128 0x17
	.long	.LASF136
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	0x734
	.uleb128 0x11
	.long	.LASF137
	.byte	0x19
	.value	0x10b
	.byte	0x1a
	.long	0x353
	.uleb128 0xd
	.long	0x789
	.long	0x7a6
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	0x79b
	.uleb128 0x11
	.long	.LASF138
	.byte	0x19
	.value	0x10c
	.byte	0x21
	.long	0x7a6
	.uleb128 0xc
	.long	.LASF139
	.uleb128 0xf
	.long	.LASF140
	.byte	0x1a
	.byte	0x19
	.byte	0x1f
	.long	0x7b8
	.uleb128 0x2
	.long	.LASF141
	.byte	0x1b
	.byte	0x3d
	.byte	0x10
	.long	0x63c
	.uleb128 0xf
	.long	.LASF142
	.byte	0x1b
	.byte	0x3e
	.byte	0x19
	.long	0x7c9
	.uleb128 0xf
	.long	.LASF143
	.byte	0x1c
	.byte	0x32
	.byte	0xf
	.long	0x63c
	.uleb128 0xf
	.long	.LASF144
	.byte	0x1c
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF145
	.byte	0x1c
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x1b
	.long	.LASF146
	.byte	0x2
	.byte	0x35
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	change_times
	.uleb128 0x1b
	.long	.LASF147
	.byte	0x2
	.byte	0x38
	.byte	0xd
	.long	0x831
	.uleb128 0x9
	.byte	0x3
	.quad	no_create
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF148
	.uleb128 0x1b
	.long	.LASF149
	.byte	0x2
	.byte	0x3b
	.byte	0xd
	.long	0x831
	.uleb128 0x9
	.byte	0x3
	.quad	use_ref
	.uleb128 0x1b
	.long	.LASF150
	.byte	0x2
	.byte	0x3e
	.byte	0xd
	.long	0x831
	.uleb128 0x9
	.byte	0x3
	.quad	no_dereference
	.uleb128 0x1b
	.long	.LASF151
	.byte	0x2
	.byte	0x45
	.byte	0xd
	.long	0x831
	.uleb128 0x9
	.byte	0x3
	.quad	amtime_now
	.uleb128 0xd
	.long	0x396
	.long	0x88a
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.long	.LASF152
	.byte	0x2
	.byte	0x48
	.byte	0x18
	.long	0x87a
	.uleb128 0x9
	.byte	0x3
	.quad	newtime
	.uleb128 0x1b
	.long	.LASF153
	.byte	0x2
	.byte	0x4b
	.byte	0xe
	.long	0x10d
	.uleb128 0x9
	.byte	0x3
	.quad	ref_file
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x50
	.byte	0x1
	.long	0x8cb
	.uleb128 0x17
	.long	.LASF154
	.byte	0x80
	.byte	0
	.uleb128 0xd
	.long	0x449
	.long	0x8db
	.uleb128 0xe
	.long	0x39
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	0x8cb
	.uleb128 0x1b
	.long	.LASF155
	.byte	0x2
	.byte	0x54
	.byte	0x1c
	.long	0x8db
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0xd
	.long	0x30d
	.long	0x906
	.uleb128 0xe
	.long	0x39
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	0x8f6
	.uleb128 0x1b
	.long	.LASF156
	.byte	0x2
	.byte	0x61
	.byte	0x1a
	.long	0x906
	.uleb128 0x9
	.byte	0x3
	.quad	time_args
	.uleb128 0xd
	.long	0x71
	.long	0x931
	.uleb128 0xe
	.long	0x39
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	0x921
	.uleb128 0x1b
	.long	.LASF157
	.byte	0x2
	.byte	0x67
	.byte	0x12
	.long	0x931
	.uleb128 0x9
	.byte	0x3
	.quad	time_masks
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x2
	.value	0x101
	.byte	0x1
	.long	0x65
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0xa99
	.uleb128 0x1d
	.long	.LASF158
	.byte	0x2
	.value	0x101
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x1d
	.long	.LASF159
	.byte	0x2
	.value	0x101
	.byte	0x18
	.long	0x67e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1e
	.string	"c"
	.byte	0x2
	.value	0x103
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x1f
	.long	.LASF160
	.byte	0x2
	.value	0x104
	.byte	0x8
	.long	0x831
	.uleb128 0x3
	.byte	0x91
	.sleb128 -294
	.uleb128 0x1e
	.string	"ok"
	.byte	0x2
	.value	0x105
	.byte	0x8
	.long	0x831
	.uleb128 0x3
	.byte	0x91
	.sleb128 -293
	.uleb128 0x1f
	.long	.LASF161
	.byte	0x2
	.value	0x106
	.byte	0xf
	.long	0x307
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x21
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0xa1b
	.uleb128 0x1f
	.long	.LASF162
	.byte	0x2
	.value	0x156
	.byte	0x13
	.long	0x55a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x20
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.byte	0
	.uleb128 0x21
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0xa76
	.uleb128 0x1e
	.string	"now"
	.byte	0x2
	.value	0x16c
	.byte	0x1b
	.long	0x396
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x22
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1f
	.long	.LASF163
	.byte	0x2
	.value	0x17b
	.byte	0x1f
	.long	0x396
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1f
	.long	.LASF164
	.byte	0x2
	.value	0x17b
	.byte	0x27
	.long	0x396
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1e
	.string	"tm"
	.byte	0x2
	.value	0x192
	.byte	0x1c
	.long	0xa99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x4f0
	.uleb128 0x23
	.long	.LASF166
	.byte	0x2
	.byte	0xcf
	.byte	0x1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0xacd
	.uleb128 0x24
	.long	.LASF167
	.byte	0x2
	.byte	0xcf
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF183
	.byte	0x2
	.byte	0x7b
	.byte	0x1
	.long	0x831
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0xb4b
	.uleb128 0x24
	.long	.LASF168
	.byte	0x2
	.byte	0x7b
	.byte	0x14
	.long	0x307
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"ok"
	.byte	0x2
	.byte	0x7d
	.byte	0x8
	.long	0x831
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x26
	.string	"fd"
	.byte	0x2
	.byte	0x7e
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF169
	.byte	0x2
	.byte	0x7f
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.string	"t"
	.byte	0x2
	.byte	0x80
	.byte	0x1a
	.long	0xb4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF184
	.long	0xb61
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6361
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x3be
	.uleb128 0xd
	.long	0x11a
	.long	0xb61
	.uleb128 0xe
	.long	0x39
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	0xb51
	.uleb128 0x28
	.long	.LASF171
	.byte	0x2
	.byte	0x70
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc3
	.uleb128 0x24
	.long	.LASF170
	.byte	0x2
	.byte	0x70
	.byte	0x1f
	.long	0xbc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF161
	.byte	0x2
	.byte	0x71
	.byte	0x1a
	.long	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"now"
	.byte	0x2
	.byte	0x71
	.byte	0x3c
	.long	0xb4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x396
	.uleb128 0x2a
	.long	.LASF172
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xc6e
	.uleb128 0x1d
	.long	.LASF173
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x307
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2b
	.long	.LASF174
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0xc24
	.uleb128 0x2c
	.long	.LASF173
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x307
	.byte	0
	.uleb128 0x2c
	.long	.LASF175
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x307
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	0xbf9
	.uleb128 0x1f
	.long	.LASF174
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0xc7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.long	.LASF175
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x307
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1f
	.long	.LASF176
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0xc83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x307
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0xc24
	.long	0xc7e
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	0xc6e
	.uleb128 0x8
	.byte	0x8
	.long	0xc24
	.uleb128 0x2d
	.long	.LASF185
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
.LASF119:
	.string	"exit_failure"
.LASF14:
	.string	"__off_t"
.LASF10:
	.string	"__gid_t"
.LASF22:
	.string	"_IO_read_ptr"
.LASF134:
	.string	"locale_quoting_style"
.LASF34:
	.string	"_chain"
.LASF110:
	.string	"st_ctim"
.LASF123:
	.string	"GETOPT_VERSION_CHAR"
.LASF155:
	.string	"longopts"
.LASF182:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF183:
	.string	"touch"
.LASF121:
	.string	"LOG10_TIMESPEC_HZ"
.LASF40:
	.string	"_shortbuf"
.LASF127:
	.string	"shell_quoting_style"
.LASF122:
	.string	"GETOPT_HELP_CHAR"
.LASF28:
	.string	"_IO_buf_base"
.LASF169:
	.string	"open_errno"
.LASF88:
	.string	"tm_zone"
.LASF69:
	.string	"long long unsigned int"
.LASF152:
	.string	"newtime"
.LASF43:
	.string	"_codecvt"
.LASF72:
	.string	"opterr"
.LASF96:
	.string	"stat"
.LASF61:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF138:
	.string	"quoting_style_vals"
.LASF164:
	.string	"notnow1"
.LASF184:
	.string	"__PRETTY_FUNCTION__"
.LASF173:
	.string	"program"
.LASF133:
	.string	"escape_quoting_style"
.LASF12:
	.string	"__mode_t"
.LASF126:
	.string	"literal_quoting_style"
.LASF35:
	.string	"_fileno"
.LASF11:
	.string	"__ino_t"
.LASF23:
	.string	"_IO_read_end"
.LASF91:
	.string	"__timezone"
.LASF18:
	.string	"__blkcnt_t"
.LASF113:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF68:
	.string	"_gl_cxxalias_dummy"
.LASF21:
	.string	"_flags"
.LASF44:
	.string	"_wide_data"
.LASF163:
	.string	"notnow"
.LASF29:
	.string	"_IO_buf_end"
.LASF38:
	.string	"_cur_column"
.LASF117:
	.string	"program_invocation_short_name"
.LASF131:
	.string	"c_quoting_style"
.LASF52:
	.string	"_IO_codecvt"
.LASF60:
	.string	"_sys_errlist"
.LASF116:
	.string	"program_invocation_name"
.LASF37:
	.string	"_old_offset"
.LASF42:
	.string	"_offset"
.LASF151:
	.string	"amtime_now"
.LASF120:
	.string	"TIMESPEC_HZ"
.LASF103:
	.string	"__pad0"
.LASF130:
	.string	"shell_escape_always_quoting_style"
.LASF82:
	.string	"tm_mon"
.LASF94:
	.string	"timezone"
.LASF150:
	.string	"no_dereference"
.LASF107:
	.string	"st_blocks"
.LASF125:
	.string	"program_name"
.LASF101:
	.string	"st_uid"
.LASF51:
	.string	"_IO_marker"
.LASF54:
	.string	"stdin"
.LASF83:
	.string	"tm_year"
.LASF153:
	.string	"ref_file"
.LASF46:
	.string	"_freeres_buf"
.LASF157:
	.string	"time_masks"
.LASF0:
	.string	"long unsigned int"
.LASF74:
	.string	"option"
.LASF26:
	.string	"_IO_write_ptr"
.LASF75:
	.string	"name"
.LASF93:
	.string	"daylight"
.LASF57:
	.string	"sys_nerr"
.LASF178:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF3:
	.string	"short unsigned int"
.LASF145:
	.string	"error_one_per_line"
.LASF86:
	.string	"tm_isdst"
.LASF118:
	.string	"Version"
.LASF30:
	.string	"_IO_save_base"
.LASF13:
	.string	"__nlink_t"
.LASF115:
	.string	"environ"
.LASF41:
	.string	"_lock"
.LASF36:
	.string	"_flags2"
.LASF48:
	.string	"_mode"
.LASF55:
	.string	"stdout"
.LASF105:
	.string	"st_size"
.LASF124:
	.string	"version_etc_copyright"
.LASF100:
	.string	"st_mode"
.LASF156:
	.string	"time_args"
.LASF179:
	.string	"src/touch.c"
.LASF79:
	.string	"tm_min"
.LASF70:
	.string	"optarg"
.LASF67:
	.string	"tv_nsec"
.LASF95:
	.string	"getdate_err"
.LASF85:
	.string	"tm_yday"
.LASF8:
	.string	"__dev_t"
.LASF71:
	.string	"optind"
.LASF19:
	.string	"__syscall_slong_t"
.LASF27:
	.string	"_IO_write_end"
.LASF171:
	.string	"get_reldate"
.LASF154:
	.string	"TIME_OPTION"
.LASF181:
	.string	"_IO_lock_t"
.LASF64:
	.string	"_IO_FILE"
.LASF143:
	.string	"error_print_progname"
.LASF17:
	.string	"__blksize_t"
.LASF176:
	.string	"map_prog"
.LASF114:
	.string	"__environ"
.LASF63:
	.string	"time_t"
.LASF147:
	.string	"no_create"
.LASF58:
	.string	"sys_errlist"
.LASF177:
	.string	"lc_messages"
.LASF33:
	.string	"_markers"
.LASF111:
	.string	"__glibc_reserved"
.LASF142:
	.string	"argmatch_die"
.LASF132:
	.string	"c_maybe_quoting_style"
.LASF148:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF175:
	.string	"node"
.LASF98:
	.string	"st_ino"
.LASF5:
	.string	"short int"
.LASF168:
	.string	"file"
.LASF106:
	.string	"st_blksize"
.LASF140:
	.string	"quote_quoting_options"
.LASF77:
	.string	"flag"
.LASF59:
	.string	"_sys_nerr"
.LASF65:
	.string	"timespec"
.LASF39:
	.string	"_vtable_offset"
.LASF92:
	.string	"tzname"
.LASF50:
	.string	"FILE"
.LASF87:
	.string	"tm_gmtoff"
.LASF129:
	.string	"shell_escape_quoting_style"
.LASF162:
	.string	"ref_stats"
.LASF137:
	.string	"quoting_style_args"
.LASF73:
	.string	"optopt"
.LASF99:
	.string	"st_nlink"
.LASF56:
	.string	"stderr"
.LASF104:
	.string	"st_rdev"
.LASF62:
	.string	"long double"
.LASF20:
	.string	"char"
.LASF128:
	.string	"shell_always_quoting_style"
.LASF66:
	.string	"tv_sec"
.LASF1:
	.string	"unsigned int"
.LASF141:
	.string	"argmatch_exit_fn"
.LASF80:
	.string	"tm_hour"
.LASF146:
	.string	"change_times"
.LASF84:
	.string	"tm_wday"
.LASF9:
	.string	"__uid_t"
.LASF15:
	.string	"__off64_t"
.LASF139:
	.string	"quoting_options"
.LASF24:
	.string	"_IO_read_base"
.LASF32:
	.string	"_IO_save_end"
.LASF112:
	.string	"_sys_siglist"
.LASF174:
	.string	"infomap"
.LASF81:
	.string	"tm_mday"
.LASF102:
	.string	"st_gid"
.LASF76:
	.string	"has_arg"
.LASF166:
	.string	"usage"
.LASF47:
	.string	"__pad5"
.LASF16:
	.string	"__time_t"
.LASF49:
	.string	"_unused2"
.LASF78:
	.string	"tm_sec"
.LASF108:
	.string	"st_atim"
.LASF159:
	.string	"argv"
.LASF90:
	.string	"__daylight"
.LASF167:
	.string	"status"
.LASF180:
	.string	"/root/coreutils"
.LASF97:
	.string	"st_dev"
.LASF136:
	.string	"custom_quoting_style"
.LASF135:
	.string	"clocale_quoting_style"
.LASF31:
	.string	"_IO_backup_base"
.LASF109:
	.string	"st_mtim"
.LASF144:
	.string	"error_message_count"
.LASF161:
	.string	"flex_date"
.LASF158:
	.string	"argc"
.LASF45:
	.string	"_freeres_list"
.LASF53:
	.string	"_IO_wide_data"
.LASF149:
	.string	"use_ref"
.LASF160:
	.string	"date_set"
.LASF185:
	.string	"emit_mandatory_arg_note"
.LASF89:
	.string	"__tzname"
.LASF165:
	.string	"main"
.LASF25:
	.string	"_IO_write_base"
.LASF172:
	.string	"emit_ancillary_info"
.LASF170:
	.string	"result"
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
