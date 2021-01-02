	.file	"cp.c"
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
	.align 8
.LC1:
	.string	"\nThe backup suffix is '~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.\nThe version control method may be selected via the --backup option or through\nthe VERSION_CONTROL environment variable.  Here are the values:\n\n"
	.align 8
.LC2:
	.string	"  none, off       never make backups (even if --backup is given)\n  numbered, t     make numbered backups\n  existing, nil   numbered if numbered backups exist, simple otherwise\n  simple, never   always make simple backups\n"
	.text
	.type	emit_backup_suffix_note, @function
emit_backup_suffix_note:
.LFB39:
	.loc 1 617 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 618 3
	movq	stdout(%rip), %rbx
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 1 625 3
	movq	stdout(%rip), %rbx
	leaq	.LC2(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 1 631 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	emit_backup_suffix_note, .-emit_backup_suffix_note
	.section	.rodata
.LC3:
	.string	"["
.LC4:
	.string	"test invocation"
.LC5:
	.string	"coreutils"
.LC6:
	.string	"Multi-call invocation"
.LC7:
	.string	"sha224sum"
.LC8:
	.string	"sha2 utilities"
.LC9:
	.string	"sha256sum"
.LC10:
	.string	"sha384sum"
.LC11:
	.string	"sha512sum"
.LC12:
	.string	"\n%s online help: <%s>\n"
	.align 8
.LC13:
	.string	"https://www.gnu.org/software/coreutils/"
.LC14:
	.string	"GNU coreutils"
.LC15:
	.string	"en_"
	.align 8
.LC16:
	.string	"Report any translation bugs to <https://translationproject.org/team/>\n"
.LC17:
	.string	"Full documentation <%s%s>\n"
.LC18:
	.string	" invocation"
.LC19:
	.string	""
	.align 8
.LC20:
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
	leaq	.LC3(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC8(%rip), %rax
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
	leaq	.LC12(%rip), %rdi
	call	gettext@PLT
	.loc 1 655 3
	leaq	.LC13(%rip), %rdx
	leaq	.LC14(%rip), %rsi
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
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L8
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC16(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L8:
	.loc 1 669 11
	leaq	.LC17(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 1 669 3
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 671 3
	movq	-168(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jne	.L9
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC18(%rip), %rbx
	jmp	.L10
.L9:
	.loc 1 671 3 discriminator 2
	leaq	.LC19(%rip), %rbx
.L10:
	.loc 1 671 11 is_stmt 1 discriminator 4
	leaq	.LC20(%rip), %rdi
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
	.local	selinux_enabled
	.comm	selinux_enabled,1,1
	.local	parents_option
	.comm	parents_option,1,1
	.local	remove_trailing_slashes
	.comm	remove_trailing_slashes,1,1
	.section	.rodata
.LC21:
	.string	"never"
.LC22:
	.string	"auto"
.LC23:
	.string	"always"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	sparse_type_string, @object
	.size	sparse_type_string, 32
sparse_type_string:
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	0
	.section	.rodata
	.align 8
	.type	sparse_type, @object
	.size	sparse_type, 12
sparse_type:
	.long	1
	.long	2
	.long	3
	.section	.data.rel.ro.local
	.align 32
	.type	reflink_type_string, @object
	.size	reflink_type_string, 32
reflink_type_string:
	.quad	.LC22
	.quad	.LC23
	.quad	.LC21
	.quad	0
	.section	.rodata
	.align 8
	.type	reflink_type, @object
	.size	reflink_type, 12
reflink_type:
	.long	1
	.long	2
	.long	0
.LC24:
	.string	"archive"
.LC25:
	.string	"attributes-only"
.LC26:
	.string	"backup"
.LC27:
	.string	"copy-contents"
.LC28:
	.string	"dereference"
.LC29:
	.string	"force"
.LC30:
	.string	"interactive"
.LC31:
	.string	"link"
.LC32:
	.string	"no-clobber"
.LC33:
	.string	"no-dereference"
.LC34:
	.string	"no-preserve"
.LC35:
	.string	"no-target-directory"
.LC36:
	.string	"one-file-system"
.LC37:
	.string	"parents"
.LC38:
	.string	"path"
.LC39:
	.string	"preserve"
.LC40:
	.string	"recursive"
.LC41:
	.string	"remove-destination"
.LC42:
	.string	"sparse"
.LC43:
	.string	"reflink"
.LC44:
	.string	"strip-trailing-slashes"
.LC45:
	.string	"suffix"
.LC46:
	.string	"symbolic-link"
.LC47:
	.string	"target-directory"
.LC48:
	.string	"update"
.LC49:
	.string	"verbose"
.LC50:
	.string	"context"
.LC51:
	.string	"help"
.LC52:
	.string	"version"
	.section	.data.rel.ro.local
	.align 32
	.type	long_opts, @object
	.size	long_opts, 960
long_opts:
	.quad	.LC24
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC25
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC26
	.long	2
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	76
	.zero	4
	.quad	.LC29
	.long	0
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC31
	.long	0
	.zero	4
	.quad	0
	.long	108
	.zero	4
	.quad	.LC32
	.long	0
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC33
	.long	0
	.zero	4
	.quad	0
	.long	80
	.zero	4
	.quad	.LC34
	.long	1
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC35
	.long	0
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	.LC36
	.long	0
	.zero	4
	.quad	0
	.long	120
	.zero	4
	.quad	.LC37
	.long	0
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC38
	.long	0
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC39
	.long	2
	.zero	4
	.quad	0
	.long	132
	.zero	4
	.quad	.LC40
	.long	0
	.zero	4
	.quad	0
	.long	82
	.zero	4
	.quad	.LC41
	.long	0
	.zero	4
	.quad	0
	.long	136
	.zero	4
	.quad	.LC42
	.long	1
	.zero	4
	.quad	0
	.long	134
	.zero	4
	.quad	.LC43
	.long	2
	.zero	4
	.quad	0
	.long	133
	.zero	4
	.quad	.LC44
	.long	0
	.zero	4
	.quad	0
	.long	135
	.zero	4
	.quad	.LC45
	.long	1
	.zero	4
	.quad	0
	.long	83
	.zero	4
	.quad	.LC46
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC47
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC48
	.long	0
	.zero	4
	.quad	0
	.long	117
	.zero	4
	.quad	.LC49
	.long	0
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	.LC50
	.long	2
	.zero	4
	.quad	0
	.long	90
	.zero	4
	.quad	.LC51
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC52
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
.LC53:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC54:
	.string	"Usage: %s [OPTION]... [-T] SOURCE DEST\n  or:  %s [OPTION]... SOURCE... DIRECTORY\n  or:  %s [OPTION]... -t DIRECTORY SOURCE...\n"
	.align 8
.LC55:
	.string	"Copy SOURCE to DEST, or multiple SOURCE(s) to DIRECTORY.\n"
	.align 8
.LC56:
	.ascii	"  -a, --archive                same as -dR --preserve=all\n "
	.ascii	"     --attributes-only        don't copy the file data, just"
	.ascii	" the attributes\n      --backup[=CONTROL]       make a backu"
	.ascii	"p of ea"
	.string	"ch existing destination file\n  -b                           like --backup but does not accept an argument\n      --copy-contents          copy contents of special files when recursive\n  -d                           same as --no-dereference --preserve=links\n"
	.align 8
.LC57:
	.ascii	"  -f, --force                  if an existing destination fi"
	.ascii	"le cannot be\n                                 opened, remov"
	.ascii	"e it and try again (this option\n                   "
	.string	"              is ignored when the -n option is also used)\n  -i, --interactive            prompt before overwrite (overrides a previous -n\n                                  option)\n  -H                           follow command-line symbolic links in SOURCE\n"
	.align 8
.LC58:
	.string	"  -l, --link                   hard link files instead of copying\n  -L, --dereference            always follow symbolic links in SOURCE\n"
	.align 8
.LC59:
	.string	"  -n, --no-clobber             do not overwrite an existing file (overrides\n                                 a previous -i option)\n  -P, --no-dereference         never follow symbolic links in SOURCE\n"
	.align 8
.LC60:
	.ascii	"  -p                           same as --preserve=mode,owner"
	.ascii	"ship,timestamps\n      --"
	.string	"preserve[=ATTR_LIST]   preserve the specified attributes (default:\n                                 mode,ownership,timestamps), if possible\n                                 additional attributes: context, links, xattr,\n                                 all\n"
	.align 8
.LC61:
	.string	"      --no-preserve=ATTR_LIST  don't preserve the specified attributes\n      --parents                use full source file name under DIRECTORY\n"
	.align 8
.LC62:
	.ascii	"  -R, -r, --recursive     "
	.string	"     copy directories recursively\n      --reflink[=WHEN]         control clone/CoW copies. See below\n      --remove-destination     remove each existing destination file before\n                                 attempting to open it (contrast with --force)\n"
	.align 8
.LC63:
	.string	"      --sparse=WHEN            control creation of sparse files. See below\n      --strip-trailing-slashes  remove any trailing slashes from each SOURCE\n                                 argument\n"
	.align 8
.LC64:
	.ascii	"  -s, --symbol"
	.string	"ic-link          make symbolic links instead of copying\n  -S, --suffix=SUFFIX          override the usual backup suffix\n  -t, --target-directory=DIRECTORY  copy all SOURCE arguments into DIRECTORY\n  -T, --no-target-directory    treat DEST as a normal file\n"
	.align 8
.LC65:
	.ascii	"  -u, --update                 copy only when the SOURCE fil"
	.ascii	"e"
	.string	" is newer\n                                 than the destination file or when the\n                                 destination file is missing\n  -v, --verbose                explain what is being done\n  -x, --one-file-system        stay on this file system\n"
	.align 8
.LC66:
	.ascii	"  -Z                   "
	.string	"        set SELinux security context of destination\n                                 file to default type\n      --context[=CTX]          like -Z, or if CTX is specified then set the\n                                 SELinux or SMACK security context to CTX\n"
	.align 8
.LC67:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC68:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC69:
	.ascii	"\nBy default, sparse SOURCE files are detected by a crude he"
	.ascii	"uristic and the\ncorresponding DEST file"
	.string	" is made sparse as well.  That is the behavior\nselected by --sparse=auto.  Specify --sparse=always to create a sparse DEST\nfile whenever the SOURCE file contains a long enough sequence of zero bytes.\nUse --sparse=never to inhibit creation of sparse files.\n"
	.align 8
.LC70:
	.ascii	"\nWhen --reflink[=always] is sp"
	.string	"ecified, perform a lightweight copy, where the\ndata blocks are copied only when modified.  If this is not possible the copy\nfails, or if --reflink=auto is specified, fall back to a standard copy.\nUse --reflink=never to ensure a standard copy is performed.\n"
	.align 8
.LC71:
	.string	"\nAs a special case, cp makes a backup of SOURCE when the force and backup\noptions are given and SOURCE and DEST are the same name for an existing,\nregular file.\n"
.LC72:
	.string	"cp"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB56:
	.file 2 "src/cp.c"
	.loc 2 143 1 is_stmt 1
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
	.loc 2 144 6
	cmpl	$0, -36(%rbp)
	je	.L13
	.loc 2 145 5
	movq	program_name(%rip), %rbx
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L14
.L13:
	.loc 2 148 7
	movq	program_name(%rip), %r13
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 148 15
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	.loc 2 148 7
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 154 7
	movq	stdout(%rip), %rbx
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 158 7
	call	emit_mandatory_arg_note
	.loc 2 160 7
	movq	stdout(%rip), %rbx
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 169 7
	movq	stdout(%rip), %rbx
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 178 7
	movq	stdout(%rip), %rbx
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 182 7
	movq	stdout(%rip), %rbx
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 187 7
	movq	stdout(%rip), %rbx
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 195 7
	movq	stdout(%rip), %rbx
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 199 7
	movq	stdout(%rip), %rbx
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 205 7
	movq	stdout(%rip), %rbx
	leaq	.LC63(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 210 7
	movq	stdout(%rip), %rbx
	leaq	.LC64(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 216 7
	movq	stdout(%rip), %rbx
	leaq	.LC65(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 223 7
	movq	stdout(%rip), %rbx
	leaq	.LC66(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 229 7
	movq	stdout(%rip), %rbx
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 230 7
	movq	stdout(%rip), %rbx
	leaq	.LC68(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 231 7
	movq	stdout(%rip), %rbx
	leaq	.LC69(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 239 7
	movq	stdout(%rip), %rbx
	leaq	.LC70(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 246 7
	call	emit_backup_suffix_note
	.loc 2 247 7
	movq	stdout(%rip), %rbx
	leaq	.LC71(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 253 7
	leaq	.LC72(%rip), %rdi
	call	emit_ancillary_info
.L14:
	.loc 2 255 3
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE56:
	.size	usage, .-usage
	.section	.rodata
	.align 8
.LC73:
	.string	"failed to preserve times for %s"
	.align 8
.LC74:
	.string	"failed to preserve ownership for %s"
	.align 8
.LC75:
	.string	"failed to preserve permissions for %s"
	.text
	.type	re_protect, @function
re_protect:
.LFB57:
	.loc 2 281 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	.loc 2 281 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
.LBB2:
	.loc 2 286 3
	movq	-136(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
.L16:
	cmpq	%rdx, %rsp
	je	.L17
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L16
.L17:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L18
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L18:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.LBE2:
	movq	%rax, -80(%rbp)
	.loc 2 287 12
	movq	-80(%rbp), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	.loc 2 289 10
	movq	-152(%rbp), %rax
	movq	%rax, -112(%rbp)
	.loc 2 289 3
	jmp	.L19
.L27:
	.loc 2 291 17
	movq	-112(%rbp), %rax
	movq	152(%rax), %rdx
	.loc 2 291 15
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 291 33
	movb	$0, (%rax)
	.loc 2 297 12
	movq	-160(%rbp), %rax
	movzbl	31(%rax), %eax
	.loc 2 297 10
	testb	%al, %al
	je	.L20
.LBB3:
	.loc 2 301 41
	movq	-112(%rbp), %rax
	.loc 2 301 25
	movq	%rax, %rdi
	call	get_stat_atime@PLT
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 2 302 41
	movq	-112(%rbp), %rax
	.loc 2 302 25
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 2 304 15
	leaq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	utimens@PLT
	.loc 2 304 14
	testl	%eax, %eax
	je	.L20
	.loc 2 306 15
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 306 32
	leaq	.LC73(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 306 25
	call	__errno_location@PLT
	.loc 2 306 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 308 22
	movl	$0, %eax
	jmp	.L22
.L20:
.LBE3:
	.loc 2 312 12
	movq	-160(%rbp), %rax
	movzbl	29(%rax), %eax
	.loc 2 312 10
	testb	%al, %al
	je	.L23
	.loc 2 314 15
	movq	-112(%rbp), %rax
	movl	32(%rax), %edx
	movq	-112(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	lchown@PLT
	.loc 2 314 14
	testl	%eax, %eax
	je	.L23
	.loc 2 316 21
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	chown_failure_ok@PLT
	.loc 2 316 19
	xorl	$1, %eax
	.loc 2 316 18
	testb	%al, %al
	je	.L24
	.loc 2 318 19
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 318 36
	leaq	.LC74(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 318 29
	call	__errno_location@PLT
	.loc 2 318 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 320 26
	movl	$0, %eax
	jmp	.L22
.L24:
.LBB4:
	.loc 2 324 15
	movq	-112(%rbp), %rax
	movl	32(%rax), %edx
	movq	-80(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	lchown@PLT
	movl	%eax, -116(%rbp)
.L23:
.LBE4:
	.loc 2 328 12
	movq	-160(%rbp), %rax
	movzbl	30(%rax), %eax
	.loc 2 328 10
	testb	%al, %al
	je	.L25
	.loc 2 330 15
	movq	-112(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	%ecx, %r8d
	movl	$-1, %ecx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	copy_acl@PLT
	.loc 2 330 14
	testl	%eax, %eax
	je	.L26
	.loc 2 331 20
	movl	$0, %eax
	jmp	.L22
.L25:
	.loc 2 333 17
	movq	-112(%rbp), %rax
	movzbl	144(%rax), %eax
	.loc 2 333 15
	testb	%al, %al
	je	.L26
	.loc 2 335 15
	movq	-112(%rbp), %rax
	movl	24(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lchmod@PLT
	.loc 2 335 14
	testl	%eax, %eax
	je	.L26
	.loc 2 337 15
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 337 32
	leaq	.LC75(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 337 25
	call	__errno_location@PLT
	.loc 2 337 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 339 22
	movl	$0, %eax
	jmp	.L22
.L26:
	.loc 2 343 17 discriminator 2
	movq	-112(%rbp), %rax
	movq	152(%rax), %rdx
	.loc 2 343 15 discriminator 2
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 343 33 discriminator 2
	movb	$47, (%rax)
	.loc 2 289 28 discriminator 2
	movq	-112(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -112(%rbp)
.L19:
	.loc 2 289 3 discriminator 1
	cmpq	$0, -112(%rbp)
	jne	.L27
	.loc 2 345 10
	movl	$1, %eax
.L22:
	.loc 2 346 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	re_protect, .-re_protect
	.section	.rodata
	.align 8
.LC76:
	.string	"failed to get attributes of %s"
.LC77:
	.string	"cannot make directory %s"
.LC78:
	.string	"setting permissions for %s"
	.align 8
.LC79:
	.string	"%s exists but is not a directory"
	.text
	.type	make_dir_parents_private, @function
make_dir_parents_private:
.LFB58:
	.loc 2 372 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$448, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -424(%rbp)
	movq	%rsi, -432(%rbp)
	movq	%rdx, -440(%rbp)
	movq	%rcx, -448(%rbp)
	movq	%r8, -456(%rbp)
	movq	%r9, -464(%rbp)
	.loc 2 372 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
.LBB5:
	.loc 2 379 3
	movq	-424(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
.L30:
	cmpq	%rdx, %rsp
	je	.L31
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L30
.L31:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L32
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L32:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -360(%rbp)
	movq	-368(%rbp), %rdx
	movq	-376(%rbp), %rcx
	movq	-360(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.LBE5:
	movq	%rax, -352(%rbp)
	.loc 2 381 7
	movq	-352(%rbp), %rdx
	movq	-432(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -344(%rbp)
	.loc 2 383 12
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	dir_len@PLT
	movq	%rax, -336(%rbp)
	.loc 2 384 13
	movq	-336(%rbp), %rax
	addq	$1, %rax
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
.L33:
	cmpq	%rdx, %rsp
	je	.L34
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L33
.L34:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L35
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L35:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -328(%rbp)
	.loc 2 385 3
	movq	-336(%rbp), %rdx
	movq	-352(%rbp), %rcx
	movq	-328(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 386 10
	movq	-328(%rbp), %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 386 19
	movb	$0, (%rax)
	.loc 2 388 14
	movq	-448(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 392 7
	leaq	-320(%rbp), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 392 6
	testl	%eax, %eax
	je	.L36
.LBB6:
	.loc 2 398 13
	movq	-344(%rbp), %rax
	movq	%rax, -392(%rbp)
	.loc 2 399 13
	jmp	.L37
.L38:
	.loc 2 400 14
	addq	$1, -392(%rbp)
.L37:
	.loc 2 399 14
	movq	-392(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 399 13
	cmpb	$47, %al
	je	.L38
	.loc 2 401 13
	jmp	.L39
.L70:
.LBB7:
	.loc 2 403 28
	movq	$0, -384(%rbp)
	.loc 2 406 18
	movq	-392(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 407 26
	leaq	-320(%rbp), %rdx
	movq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 407 23
	testl	%eax, %eax
	setne	%al
	movb	%al, -409(%rbp)
	.loc 2 409 14
	cmpb	$0, -409(%rbp)
	jne	.L40
	.loc 2 409 31 discriminator 1
	movq	-464(%rbp), %rax
	movzbl	29(%rax), %eax
	.loc 2 409 27 discriminator 1
	testb	%al, %al
	jne	.L40
	.loc 2 409 56 discriminator 2
	movq	-464(%rbp), %rax
	movzbl	30(%rax), %eax
	.loc 2 409 52 discriminator 2
	testb	%al, %al
	jne	.L40
	.loc 2 410 19
	movq	-464(%rbp), %rax
	movzbl	31(%rax), %eax
	.loc 2 410 15
	testb	%al, %al
	je	.L41
.L40:
.LBB8:
	.loc 2 415 32
	leaq	-176(%rbp), %rdx
	movq	-344(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 417 32
	testl	%eax, %eax
	je	.L42
	.loc 2 416 34 discriminator 1
	call	__errno_location@PLT
	.loc 2 417 32 discriminator 1
	movl	(%rax), %eax
	jmp	.L43
.L42:
	.loc 2 417 34 discriminator 2
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 419 32 discriminator 2
	cmpl	$16384, %eax
	jne	.L44
	.loc 2 419 32 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L43
.L44:
	.loc 2 419 32 discriminator 2
	movl	$20, %eax
.L43:
	.loc 2 415 19 is_stmt 1
	movl	%eax, -404(%rbp)
	.loc 2 420 18
	cmpl	$0, -404(%rbp)
	je	.L46
	.loc 2 422 19
	movq	-344(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 422 40
	leaq	.LC76(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 422 19
	movl	-404(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 424 26
	movl	$0, %eax
	jmp	.L73
.L46:
	.loc 2 427 21
	movl	$168, %edi
	call	xmalloc@PLT
	movq	%rax, -384(%rbp)
	.loc 2 428 23
	movq	-384(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rbx
	movq	%rcx, 112(%rax)
	movq	%rbx, 120(%rax)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rbx
	movq	%rcx, 128(%rax)
	movq	%rbx, 136(%rax)
	.loc 2 429 41
	movq	-392(%rbp), %rax
	subq	-352(%rbp), %rax
	movq	%rax, %rdx
	.loc 2 429 33
	movq	-384(%rbp), %rax
	movq	%rdx, 152(%rax)
	.loc 2 430 33
	movq	-384(%rbp), %rax
	movb	$0, 144(%rax)
	.loc 2 431 27
	movq	-448(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 431 25
	movq	-384(%rbp), %rax
	movq	%rdx, 160(%rax)
	.loc 2 432 26
	movq	-448(%rbp), %rax
	movq	-384(%rbp), %rdx
	movq	%rdx, (%rax)
.L41:
.LBE8:
	.loc 2 436 17
	movzbl	-409(%rbp), %edx
	cmpb	$0, -409(%rbp)
	je	.L48
	.loc 2 436 17 is_stmt 0 discriminator 1
	movq	-384(%rbp), %rax
	movl	24(%rax), %eax
	jmp	.L49
.L48:
	.loc 2 436 17 discriminator 2
	movl	$0, %eax
.L49:
	.loc 2 436 17 discriminator 4
	movq	-464(%rbp), %rcx
	movq	-352(%rbp), %rsi
	movq	-344(%rbp), %rdi
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	%eax, %edx
	call	set_process_security_ctx@PLT
	.loc 2 436 15 is_stmt 1 discriminator 4
	xorl	$1, %eax
	.loc 2 436 14 discriminator 4
	testb	%al, %al
	je	.L50
	.loc 2 439 20
	movl	$0, %eax
	jmp	.L73
.L50:
	.loc 2 441 14
	cmpb	$0, -409(%rbp)
	je	.L51
.LBB9:
	.loc 2 452 24
	movq	-456(%rbp), %rax
	movb	$1, (%rax)
	.loc 2 453 24
	movq	-384(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -400(%rbp)
	.loc 2 459 42
	movq	-464(%rbp), %rax
	movzbl	29(%rax), %eax
	.loc 2 460 41
	xorl	$1, %eax
	.loc 2 461 41
	testb	%al, %al
	je	.L52
	.loc 2 461 44 discriminator 1
	movq	-464(%rbp), %rax
	movzbl	30(%rax), %eax
	.loc 2 461 41 discriminator 1
	testb	%al, %al
	je	.L53
	.loc 2 461 41 is_stmt 0 discriminator 3
	movl	$18, %eax
	jmp	.L55
.L53:
	.loc 2 461 41 discriminator 4
	movl	$0, %eax
	jmp	.L55
.L52:
	.loc 2 461 41 discriminator 2
	movl	$63, %eax
.L55:
	.loc 2 458 35 is_stmt 1
	andl	-400(%rbp), %eax
	movl	%eax, -408(%rbp)
	.loc 2 469 29
	movq	-464(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 2 469 69
	testb	%al, %al
	je	.L56
	.loc 2 469 69 is_stmt 0 discriminator 1
	movl	$511, %eax
	jmp	.L57
.L56:
	.loc 2 469 69 discriminator 2
	movl	-400(%rbp), %eax
.L57:
	.loc 2 469 26 is_stmt 1 discriminator 4
	movl	%eax, -396(%rbp)
	.loc 2 470 47 discriminator 4
	movl	-408(%rbp), %eax
	notl	%eax
	.loc 2 470 26 discriminator 4
	andl	-396(%rbp), %eax
	andl	$4095, %eax
	movl	%eax, -396(%rbp)
	.loc 2 471 19 discriminator 4
	movl	-396(%rbp), %edx
	movq	-352(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mkdir@PLT
	.loc 2 471 18 discriminator 4
	testl	%eax, %eax
	je	.L58
	.loc 2 473 19
	movq	-352(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 473 36
	leaq	.LC77(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 473 29
	call	__errno_location@PLT
	.loc 2 473 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 475 26
	movl	$0, %eax
	jmp	.L73
.L58:
	.loc 2 479 22
	cmpq	$0, -440(%rbp)
	je	.L59
	.loc 2 480 21
	movq	-352(%rbp), %rdx
	movq	-344(%rbp), %rcx
	movq	-440(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L59:
	.loc 2 487 19
	leaq	-320(%rbp), %rdx
	movq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	.loc 2 487 18
	testl	%eax, %eax
	je	.L60
	.loc 2 489 19
	movq	-352(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 489 36
	leaq	.LC76(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 489 29
	call	__errno_location@PLT
	.loc 2 489 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 491 26
	movl	$0, %eax
	jmp	.L73
.L60:
	.loc 2 495 22
	movq	-464(%rbp), %rax
	movzbl	30(%rax), %eax
	.loc 2 495 19
	xorl	$1, %eax
	.loc 2 495 18
	testb	%al, %al
	je	.L61
	.loc 2 497 51
	movl	-296(%rbp), %eax
	.loc 2 497 45
	notl	%eax
	.loc 2 497 43
	andl	-408(%rbp), %eax
	.loc 2 497 22
	testl	%eax, %eax
	je	.L62
	.loc 2 498 46
	call	cached_umask@PLT
	.loc 2 498 44
	notl	%eax
	.loc 2 498 41
	andl	%eax, -408(%rbp)
.L62:
	.loc 2 499 51
	movl	-296(%rbp), %eax
	.loc 2 499 45
	notl	%eax
	.loc 2 499 43
	andl	-408(%rbp), %eax
	.loc 2 499 22
	testl	%eax, %eax
	jne	.L63
	.loc 2 500 32
	movl	-296(%rbp), %eax
	.loc 2 500 41
	andl	$448, %eax
	.loc 2 500 23
	cmpl	$448, %eax
	je	.L61
.L63:
	.loc 2 502 46
	movl	-296(%rbp), %eax
	.loc 2 502 55
	orl	-408(%rbp), %eax
	movl	%eax, %edx
	.loc 2 502 39
	movq	-384(%rbp), %rax
	movl	%edx, 24(%rax)
	.loc 2 503 41
	movq	-384(%rbp), %rax
	movb	$1, 144(%rax)
.L61:
	.loc 2 507 25
	movl	-296(%rbp), %eax
	.loc 2 507 34
	andl	$448, %eax
	.loc 2 507 18
	cmpl	$448, %eax
	je	.L64
	.loc 2 512 41
	movl	-296(%rbp), %eax
	.loc 2 512 23
	orl	$448, %eax
	movl	%eax, %edx
	movq	-352(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	lchmod@PLT
	.loc 2 512 22
	testl	%eax, %eax
	je	.L64
	.loc 2 514 23
	movq	-352(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 514 40
	leaq	.LC78(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 514 33
	call	__errno_location@PLT
	.loc 2 514 23
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 516 30
	movl	$0, %eax
	jmp	.L73
.L51:
.LBE9:
	.loc 2 520 21
	movl	-296(%rbp), %eax
	andl	$61440, %eax
	.loc 2 520 19
	cmpl	$16384, %eax
	je	.L65
	.loc 2 522 15
	movq	-352(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 522 28
	leaq	.LC79(%rip), %rdi
	call	gettext@PLT
	.loc 2 522 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 524 22
	movl	$0, %eax
	jmp	.L73
.L65:
	.loc 2 527 22
	movq	-456(%rbp), %rax
	movb	$0, (%rax)
.L64:
	.loc 2 531 17
	movq	-456(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 531 15
	xorl	$1, %eax
	.loc 2 531 14
	testb	%al, %al
	je	.L66
	.loc 2 532 20
	movq	-464(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 532 15
	testq	%rax, %rax
	jne	.L67
	.loc 2 532 47 discriminator 1
	movq	-464(%rbp), %rax
	movzbl	51(%rax), %eax
	.loc 2 532 43 discriminator 1
	testb	%al, %al
	je	.L66
.L67:
	.loc 2 534 21
	movq	-464(%rbp), %rdx
	movq	-352(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	set_file_security_ctx@PLT
	.loc 2 534 19
	xorl	$1, %eax
	.loc 2 534 18
	testb	%al, %al
	je	.L66
	.loc 2 535 23
	movq	-464(%rbp), %rax
	movzbl	52(%rax), %eax
	.loc 2 535 19
	testb	%al, %al
	je	.L66
	.loc 2 536 24
	movl	$0, %eax
	jmp	.L73
.L66:
	.loc 2 539 17
	movq	-392(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -392(%rbp)
	.loc 2 539 20
	movb	$47, (%rax)
	.loc 2 543 17
	jmp	.L68
.L69:
	.loc 2 544 18
	addq	$1, -392(%rbp)
.L68:
	.loc 2 543 18
	movq	-392(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 543 17
	cmpb	$47, %al
	je	.L69
.L39:
.LBE7:
	.loc 2 401 23
	movq	-392(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -392(%rbp)
	.loc 2 401 13
	cmpq	$0, -392(%rbp)
	jne	.L70
	jmp	.L71
.L36:
.LBE6:
	.loc 2 550 13
	movl	-296(%rbp), %eax
	andl	$61440, %eax
	.loc 2 550 11
	cmpl	$16384, %eax
	je	.L72
	.loc 2 552 7
	movq	-328(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 552 20
	leaq	.LC79(%rip), %rdi
	call	gettext@PLT
	.loc 2 552 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 553 14
	movl	$0, %eax
	jmp	.L73
.L72:
	.loc 2 557 16
	movq	-456(%rbp), %rax
	movb	$0, (%rax)
.L71:
	.loc 2 559 10
	movl	$1, %eax
.L73:
	.loc 2 560 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L74
	.loc 2 560 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L74:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	make_dir_parents_private, .-make_dir_parents_private
	.section	.rodata
.LC80:
	.string	"failed to access %s"
	.text
	.type	target_directory_operand, @function
target_directory_operand:
.LFB59:
	.loc 2 574 1 is_stmt 1
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
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, %eax
	movb	%al, -60(%rbp)
	.loc 2 575 14
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 575 39
	testl	%eax, %eax
	je	.L76
	.loc 2 575 41 discriminator 1
	call	__errno_location@PLT
	.loc 2 575 39 discriminator 1
	movl	(%rax), %eax
	jmp	.L77
.L76:
	.loc 2 575 39 is_stmt 0 discriminator 2
	movl	$0, %eax
.L77:
	.loc 2 575 7 is_stmt 1 discriminator 4
	movl	%eax, -20(%rbp)
	.loc 2 576 24 discriminator 4
	cmpl	$0, -20(%rbp)
	jne	.L78
	.loc 2 576 27 discriminator 1
	movq	-48(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 2 576 24 discriminator 1
	cmpl	$16384, %eax
	jne	.L78
	.loc 2 576 24 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L79
.L78:
	.loc 2 576 24 discriminator 4
	movl	$0, %eax
.L79:
	.loc 2 576 8 is_stmt 1 discriminator 6
	movb	%al, -21(%rbp)
	andb	$1, -21(%rbp)
	.loc 2 577 6 discriminator 6
	cmpl	$0, -20(%rbp)
	je	.L80
	.loc 2 579 10
	cmpl	$2, -20(%rbp)
	jne	.L81
	.loc 2 580 18
	movq	-56(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L80
.L81:
	.loc 2 581 15
	cmpb	$0, -60(%rbp)
	je	.L82
	.loc 2 582 21
	movq	-48(%rbp), %rax
	movl	$0, 24(%rax)
	jmp	.L80
.L82:
.LBB10:
	.loc 2 584 9
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L80:
.LBE10:
	.loc 2 586 10
	movzbl	-21(%rbp), %eax
	.loc 2 587 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	target_directory_operand, .-target_directory_operand
	.section	.rodata
.LC81:
	.string	"missing file operand"
	.align 8
.LC82:
	.string	"missing destination file operand after %s"
	.align 8
.LC83:
	.string	"cannot combine --target-directory (-t) and --no-target-directory (-T)"
.LC84:
	.string	"extra operand %s"
.LC85:
	.string	"target %s is not a directory"
.LC86:
	.string	"%s -> %s\n"
.LC87:
	.string	".."
	.align 8
.LC88:
	.string	"with --parents, the destination must be a directory"
	.text
	.type	do_copy, @function
do_copy:
.LFB60:
	.loc 2 595 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 3, -24
	movl	%edi, -324(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%rdx, -344(%rbp)
	movl	%ecx, %eax
	movq	%r8, -352(%rbp)
	movb	%al, -328(%rbp)
	.loc 2 595 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 597 8
	movb	$0, -314(%rbp)
	.loc 2 598 8
	movb	$1, -312(%rbp)
	.loc 2 599 19
	movq	-352(%rbp), %rax
	movzbl	21(%rax), %eax
	.loc 2 600 18
	testb	%al, %al
	jne	.L85
	.loc 2 600 22 discriminator 2
	movq	-352(%rbp), %rax
	movzbl	22(%rax), %eax
	.loc 2 600 18 discriminator 2
	testb	%al, %al
	je	.L86
.L85:
	.loc 2 600 18 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L87
.L86:
	.loc 2 600 18 discriminator 4
	movl	$0, %eax
.L87:
	.loc 2 599 8 is_stmt 1
	movb	%al, -310(%rbp)
	andb	$1, -310(%rbp)
	.loc 2 602 18
	cmpq	$0, -344(%rbp)
	sete	%al
	movzbl	%al, %eax
	.loc 2 602 6
	cmpl	%eax, -324(%rbp)
	jg	.L88
	.loc 2 604 10
	cmpl	$0, -324(%rbp)
	jg	.L89
	.loc 2 605 22
	leaq	.LC81(%rip), %rdi
	call	gettext@PLT
	.loc 2 605 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L90
.L89:
	.loc 2 607 9
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 607 22
	leaq	.LC82(%rip), %rdi
	call	gettext@PLT
	.loc 2 607 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L90:
	.loc 2 609 7
	movl	$1, %edi
	call	usage
.L88:
	.loc 2 612 6
	cmpb	$0, -328(%rbp)
	je	.L91
	.loc 2 614 10
	cmpq	$0, -344(%rbp)
	je	.L92
.LBB11:
	.loc 2 615 9
	leaq	.LC83(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L92:
.LBE11:
	.loc 2 618 10
	cmpl	$2, -324(%rbp)
	jle	.L93
	.loc 2 620 47
	movq	-336(%rbp), %rax
	addq	$16, %rax
	.loc 2 620 11
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 620 24
	leaq	.LC84(%rip), %rdi
	call	gettext@PLT
	.loc 2 620 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 621 11
	movl	$1, %edi
	call	usage
.L93:
.LBB12:
	.loc 2 624 7
	movzbl	-310(%rbp), %ecx
	movl	-324(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-314(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	movq	%rax, %rdi
	call	target_directory_operand
	movb	%al, -309(%rbp)
.LBE12:
	jmp	.L94
.L91:
	.loc 2 627 11
	cmpq	$0, -344(%rbp)
	jne	.L94
	.loc 2 629 10
	cmpl	$1, -324(%rbp)
	jle	.L95
	.loc 2 630 14
	movzbl	-310(%rbp), %ecx
	.loc 2 630 44
	movl	-324(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 630 14
	movq	(%rax), %rax
	leaq	-314(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	movq	%rax, %rdi
	call	target_directory_operand
	.loc 2 630 11
	testb	%al, %al
	je	.L95
	.loc 2 632 26
	subl	$1, -324(%rbp)
	.loc 2 632 33
	movl	-324(%rbp), %eax
	cltq
	.loc 2 632 32
	leaq	0(,%rax,8), %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 632 26
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)
	jmp	.L94
.L95:
	.loc 2 633 15
	cmpl	$2, -324(%rbp)
	jle	.L94
.LBB13:
	.loc 2 634 9
	movl	-324(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC85(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L94:
.LBE13:
	.loc 2 638 6
	cmpq	$0, -344(%rbp)
	je	.L96
	.loc 2 647 10
	cmpl	$1, -324(%rbp)
	jle	.L97
	.loc 2 649 11
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	dest_info_init@PLT
	.loc 2 650 11
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	src_info_init@PLT
.L97:
.LBB14:
	.loc 2 653 16
	movl	$0, -308(%rbp)
	.loc 2 653 7
	jmp	.L98
.L118:
.LBB15:
	.loc 2 656 16
	movb	$1, -311(%rbp)
	.loc 2 658 17
	movq	$0, -296(%rbp)
	.loc 2 659 27
	movl	-308(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 659 17
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	.loc 2 663 15
	movzbl	remove_trailing_slashes(%rip), %eax
	.loc 2 663 14
	testb	%al, %al
	je	.L99
	.loc 2 664 13
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	strip_trailing_slashes@PLT
.L99:
	.loc 2 666 15
	movzbl	parents_option(%rip), %eax
	.loc 2 666 14
	testb	%al, %al
	je	.L100
.LBB16:
.LBB17:
	.loc 2 675 15
	movq	-256(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
.L101:
	cmpq	%rdx, %rsp
	je	.L102
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L101
.L102:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L103
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L103:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -200(%rbp)
	movq	-208(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	-200(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.LBE17:
	movq	%rax, -192(%rbp)
	.loc 2 676 15
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	strip_trailing_slashes@PLT
	.loc 2 679 26
	leaq	-296(%rbp), %rdx
	movq	-192(%rbp), %rcx
	movq	-344(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_name_concat@PLT
	movq	%rax, -288(%rbp)
	.loc 2 689 21
	movq	-352(%rbp), %rax
	movzbl	60(%rax), %eax
	.loc 2 687 18
	testb	%al, %al
	je	.L104
	.loc 2 687 18 is_stmt 0 discriminator 1
	leaq	.LC86(%rip), %rdx
	jmp	.L105
.L104:
	.loc 2 687 18 discriminator 2
	movl	$0, %edx
.L105:
	.loc 2 688 43 is_stmt 1 discriminator 4
	movq	-296(%rbp), %rax
	subq	-288(%rbp), %rax
	.loc 2 687 18 discriminator 4
	movq	%rax, %r10
	movq	-352(%rbp), %rdi
	leaq	-314(%rbp), %rsi
	leaq	-304(%rbp), %rcx
	movq	-288(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%r10, %rsi
	movq	%rax, %rdi
	call	make_dir_parents_private
	movb	%al, -311(%rbp)
.LBE16:
	jmp	.L106
.L100:
.LBB18:
.LBB19:
	.loc 2 696 15
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rdx
	andq	$-4096, %rdx
	movq	%rsp, %rbx
	subq	%rdx, %rbx
	movq	%rbx, %rdx
.L107:
	cmpq	%rdx, %rsp
	je	.L108
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L107
.L108:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L109
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L109:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -232(%rbp)
	movq	-240(%rbp), %rdx
	movq	-248(%rbp), %rcx
	movq	-232(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.LBE19:
	movq	%rax, -224(%rbp)
	.loc 2 697 15
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	strip_trailing_slashes@PLT
	.loc 2 699 27
	movq	-224(%rbp), %rax
	leaq	.LC87(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 701 27
	testl	%eax, %eax
	jne	.L110
	.loc 2 700 29
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	jmp	.L111
.L110:
	.loc 2 701 29 discriminator 1
	movq	-224(%rbp), %rcx
	movq	-344(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_name_concat@PLT
.L111:
	.loc 2 699 24
	movq	%rax, -288(%rbp)
.L106:
.LBE18:
	.loc 2 705 15
	movzbl	-311(%rbp), %eax
	xorl	$1, %eax
	.loc 2 705 14
	testb	%al, %al
	je	.L112
	.loc 2 709 18
	movb	$0, -312(%rbp)
	jmp	.L113
.L112:
.LBB20:
	.loc 2 714 21
	movzbl	-314(%rbp), %eax
	movzbl	%al, %edx
	leaq	-313(%rbp), %rdi
	movq	-352(%rbp), %rcx
	movq	-288(%rbp), %rsi
	movq	-256(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	copy@PLT
	.loc 2 714 18
	movzbl	-312(%rbp), %edx
	.loc 2 714 21
	movzbl	%al, %eax
	.loc 2 714 18
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -312(%rbp)
	.loc 2 716 19
	movzbl	parents_option(%rip), %eax
	.loc 2 716 18
	testb	%al, %al
	je	.L113
	.loc 2 717 23
	movq	-304(%rbp), %rdx
	.loc 2 717 59
	movq	-296(%rbp), %rax
	subq	-288(%rbp), %rax
	.loc 2 717 23
	movq	%rax, %rsi
	movq	-352(%rbp), %rcx
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	re_protect
	.loc 2 717 20
	movzbl	-312(%rbp), %edx
	.loc 2 717 23
	movzbl	%al, %eax
	.loc 2 717 20
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -312(%rbp)
.L113:
.LBE20:
	.loc 2 721 15
	movzbl	parents_option(%rip), %eax
	.loc 2 721 14
	testb	%al, %al
	je	.L115
	.loc 2 723 21
	jmp	.L116
.L117:
.LBB21:
	.loc 2 725 36
	movq	-304(%rbp), %rax
	movq	%rax, -184(%rbp)
	.loc 2 726 40
	movq	-304(%rbp), %rax
	movq	160(%rax), %rax
	.loc 2 726 29
	movq	%rax, -304(%rbp)
	.loc 2 727 19
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L116:
.LBE21:
	.loc 2 723 22
	movq	-304(%rbp), %rax
	.loc 2 723 21
	testq	%rax, %rax
	jne	.L117
.L115:
	.loc 2 731 11 discriminator 2
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE15:
	.loc 2 653 37 discriminator 2
	addl	$1, -308(%rbp)
.L98:
	.loc 2 653 7 discriminator 1
	movl	-308(%rbp), %eax
	cmpl	-324(%rbp), %eax
	jl	.L118
	jmp	.L119
.L96:
.LBE14:
.LBB22:
	.loc 2 737 19
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	.loc 2 738 19
	movq	-336(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -264(%rbp)
	.loc 2 741 11
	movzbl	parents_option(%rip), %eax
	.loc 2 741 10
	testb	%al, %al
	je	.L120
	.loc 2 744 18
	leaq	.LC88(%rip), %rdi
	call	gettext@PLT
	.loc 2 743 11
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 745 11
	movl	$1, %edi
	call	usage
.L120:
	.loc 2 754 12
	movq	-352(%rbp), %rax
	movzbl	22(%rax), %eax
	.loc 2 754 10
	testb	%al, %al
	je	.L121
	.loc 2 755 15
	movq	-352(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 755 11
	testl	%eax, %eax
	je	.L121
	.loc 2 756 14
	movq	-264(%rbp), %rdx
	movq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 756 11
	testl	%eax, %eax
	jne	.L121
	.loc 2 757 14
	movzbl	-314(%rbp), %eax
	xorl	$1, %eax
	.loc 2 757 11
	testb	%al, %al
	je	.L121
	.loc 2 757 26 discriminator 1
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 757 23 discriminator 1
	cmpl	$32768, %eax
	jne	.L121
.LBB23:
	.loc 2 761 22
	movq	-352(%rbp), %rax
	movl	(%rax), %edx
	movq	-264(%rbp), %rax
	movq	%rax, %rsi
	movl	$-100, %edi
	call	find_backup_file_name@PLT
	movq	%rax, -280(%rbp)
	.loc 2 767 17
	movq	-352(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, x_tmp.7215(%rip)
	movq	%rbx, 8+x_tmp.7215(%rip)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 16+x_tmp.7215(%rip)
	movq	%rbx, 24+x_tmp.7215(%rip)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, 32+x_tmp.7215(%rip)
	movq	%rbx, 40+x_tmp.7215(%rip)
	movq	48(%rax), %rcx
	movq	56(%rax), %rbx
	movq	%rcx, 48+x_tmp.7215(%rip)
	movq	%rbx, 56+x_tmp.7215(%rip)
	movq	64(%rax), %rcx
	movq	72(%rax), %rbx
	movq	%rcx, 64+x_tmp.7215(%rip)
	movq	%rbx, 72+x_tmp.7215(%rip)
	movq	80(%rax), %rax
	movq	%rax, 80+x_tmp.7215(%rip)
	.loc 2 768 29
	movl	$0, x_tmp.7215(%rip)
	.loc 2 769 13
	leaq	x_tmp.7215(%rip), %rax
	movq	%rax, -352(%rbp)
.LBE23:
	.loc 2 758 9
	jmp	.L122
.L121:
	.loc 2 773 20
	movq	-264(%rbp), %rax
	movq	%rax, -280(%rbp)
.L122:
	.loc 2 776 12
	leaq	-296(%rbp), %rcx
	movq	-352(%rbp), %rdx
	movq	-280(%rbp), %rsi
	movq	-272(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	copy@PLT
	movb	%al, -312(%rbp)
.L119:
.LBE22:
	.loc 2 779 10
	movzbl	-312(%rbp), %eax
	.loc 2 780 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L124
	call	__stack_chk_fail@PLT
.L124:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	do_copy, .-do_copy
	.section	.rodata
.LC89:
	.string	"POSIXLY_CORRECT"
	.text
	.type	cp_option_init, @function
cp_option_init:
.LFB61:
	.loc 2 784 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 785 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	cp_options_default@PLT
	.loc 2 786 22
	movq	-8(%rbp), %rax
	movb	$1, 20(%rax)
	.loc 2 787 18
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	.loc 2 788 33
	movq	-8(%rbp), %rax
	movb	$0, 21(%rax)
	.loc 2 789 36
	movq	-8(%rbp), %rax
	movb	$0, 22(%rax)
	.loc 2 790 16
	movq	-8(%rbp), %rax
	movb	$0, 23(%rax)
	.loc 2 791 18
	movq	-8(%rbp), %rax
	movl	$4, 8(%rax)
	.loc 2 792 16
	movq	-8(%rbp), %rax
	movb	$0, 24(%rax)
	.loc 2 793 19
	movq	-8(%rbp), %rax
	movb	$0, 25(%rax)
	.loc 2 794 22
	movq	-8(%rbp), %rax
	movb	$0, 28(%rax)
	.loc 2 795 19
	movq	-8(%rbp), %rax
	movl	$1, 68(%rax)
	.loc 2 797 25
	movq	-8(%rbp), %rax
	movb	$0, 29(%rax)
	.loc 2 798 21
	movq	-8(%rbp), %rax
	movb	$0, 48(%rax)
	.loc 2 799 20
	movq	-8(%rbp), %rax
	movb	$0, 30(%rax)
	.loc 2 800 26
	movq	-8(%rbp), %rax
	movb	$0, 31(%rax)
	.loc 2 801 32
	movq	-8(%rbp), %rax
	movb	$0, 32(%rax)
	.loc 2 802 32
	movq	-8(%rbp), %rax
	movb	$0, 51(%rax)
	.loc 2 803 31
	movq	-8(%rbp), %rax
	movb	$0, 52(%rax)
	.loc 2 804 27
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	.loc 2 805 21
	movq	-8(%rbp), %rax
	movb	$0, 53(%rax)
	.loc 2 806 25
	movq	-8(%rbp), %rax
	movb	$0, 55(%rax)
	.loc 2 807 29
	movq	-8(%rbp), %rax
	movb	$0, 54(%rax)
	.loc 2 809 25
	movq	-8(%rbp), %rax
	movb	$1, 49(%rax)
	.loc 2 810 23
	movq	-8(%rbp), %rax
	movb	$0, 50(%rax)
	.loc 2 811 16
	movq	-8(%rbp), %rax
	movb	$0, 56(%rax)
	.loc 2 812 18
	movq	-8(%rbp), %rax
	movl	$2, 12(%rax)
	.loc 2 813 20
	movq	-8(%rbp), %rax
	movb	$0, 58(%rax)
	.loc 2 814 15
	movq	-8(%rbp), %rax
	movb	$0, 57(%rax)
	.loc 2 815 11
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	.loc 2 818 16
	movq	-8(%rbp), %rax
	movb	$0, 61(%rax)
	.loc 2 820 13
	movq	-8(%rbp), %rax
	movb	$0, 59(%rax)
	.loc 2 821 14
	movq	-8(%rbp), %rax
	movb	$0, 60(%rax)
	.loc 2 827 35
	leaq	.LC89(%rip), %rdi
	call	getenv@PLT
	.loc 2 827 62
	testq	%rax, %rax
	setne	%dl
	.loc 2 827 33
	movq	-8(%rbp), %rax
	movb	%dl, 62(%rax)
	.loc 2 829 16
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	.loc 2 830 15
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	.loc 2 831 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	cp_option_init, .-cp_option_init
	.section	.rodata
.LC90:
	.string	"--preserve"
.LC91:
	.string	"--no-preserve"
	.text
	.type	decode_preserve_arg, @function
decode_preserve_arg:
.LFB62:
	.loc 2 837 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, %eax
	movb	%al, -52(%rbp)
	.loc 2 862 24
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -8(%rbp)
	.loc 2 863 9
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.L141:
.LBB24:
	.loc 2 867 21
	movq	-24(%rbp), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -16(%rbp)
	.loc 2 871 10
	cmpq	$0, -16(%rbp)
	je	.L127
	.loc 2 872 15
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 872 18
	movb	$0, (%rax)
.L127:
	.loc 2 875 13
	movq	argmatch_die(%rip), %rdx
	cmpb	$0, -52(%rbp)
	je	.L128
	.loc 2 875 13 is_stmt 0 discriminator 1
	leaq	.LC90(%rip), %rax
	jmp	.L129
.L128:
	.loc 2 875 13 discriminator 2
	leaq	.LC91(%rip), %rax
.L129:
	.loc 2 875 13 discriminator 4
	movq	-24(%rbp), %rsi
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	preserve_vals.7232(%rip), %rcx
	leaq	preserve_args.7233(%rip), %rdx
	movq	%rax, %rdi
	call	__xargmatch_internal@PLT
	.loc 2 875 11 is_stmt 1 discriminator 4
	leaq	0(,%rax,4), %rdx
	leaq	preserve_vals.7232(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -28(%rbp)
	cmpl	$6, -28(%rbp)
	ja	.L130
	movl	-28(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L132(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L132(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L132:
	.long	.L138-.L132
	.long	.L137-.L132
	.long	.L136-.L132
	.long	.L135-.L132
	.long	.L134-.L132
	.long	.L133-.L132
	.long	.L131-.L132
	.text
.L138:
	.loc 2 880 28
	movq	-48(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 30(%rax)
	.loc 2 881 11
	movzbl	-52(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 881 42
	andl	$1, %eax
	.loc 2 881 40
	movq	-48(%rbp), %rdx
	movb	%al, 32(%rdx)
	.loc 2 882 11
	jmp	.L139
.L137:
	.loc 2 885 34
	movq	-48(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 31(%rax)
	.loc 2 886 11
	jmp	.L139
.L136:
	.loc 2 889 33
	movq	-48(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 29(%rax)
	.loc 2 890 11
	jmp	.L139
.L135:
	.loc 2 893 29
	movq	-48(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 48(%rax)
	.loc 2 894 11
	jmp	.L139
.L134:
	.loc 2 897 39
	movq	-48(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 52(%rax)
	.loc 2 898 40
	movq	-48(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 51(%rax)
	.loc 2 899 11
	jmp	.L139
.L133:
	.loc 2 902 29
	movq	-48(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 53(%rax)
	.loc 2 903 37
	movq	-48(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 54(%rax)
	.loc 2 904 11
	jmp	.L139
.L131:
	.loc 2 907 28
	movq	-48(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 30(%rax)
	.loc 2 908 34
	movq	-48(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 31(%rax)
	.loc 2 909 33
	movq	-48(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 29(%rax)
	.loc 2 910 29
	movq	-48(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 48(%rax)
	.loc 2 911 11
	movzbl	-52(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 911 42
	andl	$1, %eax
	.loc 2 911 40
	movq	-48(%rbp), %rdx
	movb	%al, 32(%rdx)
	.loc 2 912 15
	movzbl	selinux_enabled(%rip), %eax
	.loc 2 912 14
	testb	%al, %al
	je	.L140
	.loc 2 913 42
	movq	-48(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 51(%rax)
.L140:
	.loc 2 914 29
	movq	-48(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 53(%rax)
	.loc 2 915 11
	jmp	.L139
.L130:
	.loc 2 918 11
	call	abort@PLT
.L139:
	.loc 2 920 9
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBE24:
	.loc 2 922 3
	cmpq	$0, -24(%rbp)
	jne	.L141
	.loc 2 924 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 925 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	decode_preserve_arg, .-decode_preserve_arg
	.section	.rodata
.LC92:
	.string	"/usr/local/share/locale"
.LC93:
	.string	"--sparse"
.LC94:
	.string	"--reflink"
	.align 8
.LC95:
	.string	"multiple target directories specified"
.LC96:
	.string	"warning: ignoring --context"
	.align 8
.LC97:
	.string	"warning: ignoring --context; it requires an SELinux-enabled kernel"
.LC98:
	.string	"David MacKenzie"
.LC99:
	.string	"Torbjorn Granlund"
.LC100:
	.string	"Jim Meyering"
.LC101:
	.string	"abdfHilLnprst:uvxPRS:TZ"
	.align 8
.LC102:
	.string	"cannot make both hard and symbolic links"
	.align 8
.LC103:
	.string	"options --backup and --no-clobber are mutually exclusive"
	.align 8
.LC104:
	.string	"--reflink can be used only with --sparse=auto"
.LC105:
	.string	"backup type"
	.align 8
.LC106:
	.string	"cannot set target context and preserve it"
	.align 8
.LC107:
	.string	"cannot preserve security context without an SELinux-enabled kernel"
	.align 8
.LC108:
	.string	"failed to set default file creation context to %s"
	.align 8
.LC109:
	.string	"cannot preserve extended attributes, cp is built without xattr support"
	.text
	.globl	main
	.type	main, @function
main:
.LFB63:
	.loc 2 929 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$320, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -324(%rbp)
	movq	%rsi, -336(%rbp)
	.loc 2 929 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 932 8
	movb	$0, -312(%rbp)
	.loc 2 933 15
	movq	$0, -304(%rbp)
	.loc 2 934 9
	movq	$0, -296(%rbp)
	.loc 2 936 8
	movb	$0, -311(%rbp)
	.loc 2 937 9
	movq	$0, -288(%rbp)
	.loc 2 938 8
	movb	$0, -310(%rbp)
	.loc 2 939 15
	movq	$0, -280(%rbp)
	.loc 2 942 3
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 943 3
	leaq	.LC19(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 944 3
	leaq	.LC92(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 945 3
	leaq	.LC5(%rip), %rdi
	call	textdomain@PLT
	.loc 2 947 3
	movq	close_stdin@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 949 26
	call	is_selinux_enabled@PLT
	.loc 2 949 24
	testl	%eax, %eax
	setg	%al
	.loc 2 949 19
	movb	%al, selinux_enabled(%rip)
	.loc 2 950 3
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	cp_option_init
	.loc 2 952 9
	jmp	.L143
.L188:
	.loc 2 956 7
	cmpl	$136, -308(%rbp)
	jg	.L144
	cmpl	$72, -308(%rbp)
	jge	.L145
	cmpl	$-131, -308(%rbp)
	je	.L146
	cmpl	$-130, -308(%rbp)
	je	.L147
	jmp	.L144
.L145:
	movl	-308(%rbp), %eax
	subl	$72, %eax
	cmpl	$64, %eax
	ja	.L144
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L149(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L149(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L149:
	.long	.L177-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L176-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L175-.L149
	.long	.L144-.L149
	.long	.L163-.L149
	.long	.L174-.L149
	.long	.L173-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L172-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L171-.L149
	.long	.L170-.L149
	.long	.L144-.L149
	.long	.L169-.L149
	.long	.L144-.L149
	.long	.L168-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L167-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L166-.L149
	.long	.L144-.L149
	.long	.L165-.L149
	.long	.L144-.L149
	.long	.L164-.L149
	.long	.L144-.L149
	.long	.L163-.L149
	.long	.L162-.L149
	.long	.L161-.L149
	.long	.L160-.L149
	.long	.L159-.L149
	.long	.L144-.L149
	.long	.L158-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L144-.L149
	.long	.L157-.L149
	.long	.L156-.L149
	.long	.L155-.L149
	.long	.L154-.L149
	.long	.L153-.L149
	.long	.L152-.L149
	.long	.L151-.L149
	.long	.L150-.L149
	.long	.L148-.L149
	.text
.L151:
	.loc 2 959 27
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	sparse_type(%rip), %rcx
	leaq	sparse_type_string(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC93(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	sparse_type(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 959 25
	movl	%eax, -260(%rbp)
	.loc 2 961 11
	jmp	.L143
.L152:
	.loc 2 964 22
	movq	optarg(%rip), %rax
	.loc 2 964 14
	testq	%rax, %rax
	jne	.L178
	.loc 2 965 28
	movl	$2, -204(%rbp)
	jmp	.L143
.L178:
	.loc 2 967 30
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	reflink_type(%rip), %rcx
	leaq	reflink_type_string(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC94(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	reflink_type(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 967 28
	movl	%eax, -204(%rbp)
	.loc 2 969 11
	jmp	.L143
.L171:
	.loc 2 973 25
	movl	$2, -268(%rbp)
	.loc 2 974 28
	movb	$1, -224(%rbp)
	.loc 2 975 32
	movb	$1, -243(%rbp)
	.loc 2 976 27
	movb	$1, -242(%rbp)
	.loc 2 977 33
	movb	$1, -241(%rbp)
	.loc 2 978 30
	movb	$1, -222(%rbp)
	.loc 2 979 15
	movzbl	selinux_enabled(%rip), %eax
	.loc 2 979 14
	testb	%al, %al
	je	.L180
	.loc 2 980 42
	movb	$1, -221(%rbp)
.L180:
	.loc 2 981 28
	movb	$1, -219(%rbp)
	.loc 2 982 32
	movb	$1, -217(%rbp)
	.loc 2 983 23
	movb	$1, -216(%rbp)
	.loc 2 984 11
	jmp	.L143
.L170:
	.loc 2 987 24
	movb	$1, -312(%rbp)
	.loc 2 988 15
	movq	optarg(%rip), %rax
	.loc 2 988 14
	testq	%rax, %rax
	je	.L143
	.loc 2 989 36
	movq	optarg(%rip), %rax
	movq	%rax, -296(%rbp)
	.loc 2 990 11
	jmp	.L143
.L157:
	.loc 2 993 32
	movb	$0, -223(%rbp)
	.loc 2 994 11
	jmp	.L143
.L156:
	.loc 2 997 25
	movb	$1, -311(%rbp)
	.loc 2 998 11
	jmp	.L143
.L169:
	.loc 2 1001 28
	movb	$1, -224(%rbp)
	.loc 2 1002 25
	movl	$2, -268(%rbp)
	.loc 2 1003 11
	jmp	.L143
.L168:
	.loc 2 1006 43
	movb	$1, -250(%rbp)
	.loc 2 1007 11
	jmp	.L143
.L177:
	.loc 2 1010 25
	movl	$3, -268(%rbp)
	.loc 2 1011 11
	jmp	.L143
.L167:
	.loc 2 1014 25
	movl	$3, -264(%rbp)
	.loc 2 1015 11
	jmp	.L143
.L166:
	.loc 2 1018 23
	movb	$1, -249(%rbp)
	.loc 2 1019 11
	jmp	.L143
.L176:
	.loc 2 1022 25
	movl	$4, -268(%rbp)
	.loc 2 1023 11
	jmp	.L143
.L165:
	.loc 2 1026 25
	movl	$2, -264(%rbp)
	.loc 2 1027 11
	jmp	.L143
.L175:
	.loc 2 1030 25
	movl	$2, -268(%rbp)
	.loc 2 1031 11
	jmp	.L143
.L155:
	.loc 2 1034 11
	movq	optarg(%rip), %rax
	leaq	-272(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	decode_preserve_arg
	.loc 2 1035 11
	jmp	.L143
.L153:
	.loc 2 1038 22
	movq	optarg(%rip), %rax
	.loc 2 1038 14
	testq	%rax, %rax
	je	.L164
	.loc 2 1044 15
	movq	optarg(%rip), %rax
	leaq	-272(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	decode_preserve_arg
	.loc 2 1045 34
	movb	$1, -222(%rbp)
	.loc 2 1046 15
	jmp	.L143
.L164:
	.loc 2 1051 32
	movb	$1, -243(%rbp)
	.loc 2 1052 27
	movb	$1, -242(%rbp)
	.loc 2 1053 33
	movb	$1, -241(%rbp)
	.loc 2 1054 30
	movb	$1, -222(%rbp)
	.loc 2 1055 11
	jmp	.L143
.L154:
	.loc 2 1058 26
	movb	$1, parents_option(%rip)
	.loc 2 1059 11
	jmp	.L143
.L163:
	.loc 2 1063 23
	movb	$1, -216(%rbp)
	.loc 2 1064 11
	jmp	.L143
.L148:
	.loc 2 1067 40
	movb	$1, -251(%rbp)
	.loc 2 1068 11
	jmp	.L143
.L150:
	.loc 2 1071 35
	movb	$1, remove_trailing_slashes(%rip)
	.loc 2 1072 11
	jmp	.L143
.L162:
	.loc 2 1075 27
	movb	$1, -214(%rbp)
	.loc 2 1076 11
	jmp	.L143
.L161:
	.loc 2 1079 14
	cmpq	$0, -288(%rbp)
	je	.L182
.LBB25:
	.loc 2 1080 13
	leaq	.LC95(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L182:
.LBE25:
.LBB26:
	.loc 2 1085 19
	movq	optarg(%rip), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 2 1085 18
	testl	%eax, %eax
	je	.L183
.LBB27:
	.loc 2 1086 17
	movq	optarg(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC80(%rip), %rdi
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
.L183:
.LBE27:
	.loc 2 1088 21
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 1088 18
	cmpl	$16384, %eax
	je	.L184
.LBB28:
	.loc 2 1089 17
	movq	optarg(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC85(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L184:
.LBE28:
.LBE26:
	.loc 2 1092 28
	movq	optarg(%rip), %rax
	movq	%rax, -288(%rbp)
	.loc 2 1093 11
	jmp	.L143
.L173:
	.loc 2 1096 31
	movb	$1, -310(%rbp)
	.loc 2 1097 11
	jmp	.L143
.L160:
	.loc 2 1100 20
	movb	$1, -213(%rbp)
	.loc 2 1101 11
	jmp	.L143
.L159:
	.loc 2 1104 21
	movb	$1, -212(%rbp)
	.loc 2 1105 11
	jmp	.L143
.L158:
	.loc 2 1108 29
	movb	$1, -244(%rbp)
	.loc 2 1109 11
	jmp	.L143
.L172:
	.loc 2 1113 15
	movzbl	selinux_enabled(%rip), %eax
	.loc 2 1113 14
	testb	%al, %al
	je	.L185
	.loc 2 1115 19
	movq	optarg(%rip), %rax
	.loc 2 1115 18
	testq	%rax, %rax
	je	.L186
	.loc 2 1116 26
	movq	optarg(%rip), %rax
	movq	%rax, -280(%rbp)
	jmp	.L143
.L186:
	.loc 2 1119 44
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	selabel_open@PLT
	.loc 2 1119 42
	movq	%rax, -232(%rbp)
	.loc 2 1121 26
	movq	-232(%rbp), %rax
	.loc 2 1121 22
	testq	%rax, %rax
	jne	.L143
	.loc 2 1122 38
	leaq	.LC96(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 1122 31
	call	__errno_location@PLT
	.loc 2 1122 21
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L143
.L185:
	.loc 2 1125 20
	movq	optarg(%rip), %rax
	.loc 2 1125 19
	testq	%rax, %rax
	je	.L143
	.loc 2 1128 22
	leaq	.LC97(%rip), %rdi
	call	gettext@PLT
	.loc 2 1127 15
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1131 11
	jmp	.L143
.L174:
	.loc 2 1134 24
	movb	$1, -312(%rbp)
	.loc 2 1135 25
	movq	optarg(%rip), %rax
	movq	%rax, -304(%rbp)
	.loc 2 1136 11
	jmp	.L143
.L147:
	.loc 2 1138 9
	movl	$0, %edi
	call	usage
.L146:
	.loc 2 1140 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	pushq	$0
	leaq	.LC100(%rip), %rcx
	pushq	%rcx
	leaq	.LC98(%rip), %r9
	leaq	.LC99(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC72(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L144:
	.loc 2 1143 11
	movl	$1, %edi
	call	usage
.L143:
	.loc 2 952 15
	movq	-336(%rbp), %rsi
	movl	-324(%rbp), %eax
	movl	$0, %r8d
	leaq	long_opts(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -308(%rbp)
	.loc 2 952 9
	cmpl	$-1, -308(%rbp)
	jne	.L188
	.loc 2 1147 8
	movzbl	-249(%rbp), %eax
	.loc 2 1147 6
	testb	%al, %al
	je	.L189
	.loc 2 1147 23 discriminator 1
	movzbl	-214(%rbp), %eax
	.loc 2 1147 19 discriminator 1
	testb	%al, %al
	je	.L189
	.loc 2 1149 20
	leaq	.LC102(%rip), %rdi
	call	gettext@PLT
	.loc 2 1149 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1150 7
	movl	$1, %edi
	call	usage
.L189:
	.loc 2 1153 8
	movl	-264(%rbp), %eax
	.loc 2 1153 6
	cmpl	$2, %eax
	jne	.L190
	.loc 2 1154 14
	movb	$0, -213(%rbp)
.L190:
	.loc 2 1156 6
	cmpb	$0, -312(%rbp)
	je	.L191
	.loc 2 1156 24 discriminator 1
	movl	-264(%rbp), %eax
	.loc 2 1156 20 discriminator 1
	cmpl	$2, %eax
	jne	.L191
	.loc 2 1159 14
	leaq	.LC103(%rip), %rdi
	call	gettext@PLT
	.loc 2 1158 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1160 7
	movl	$1, %edi
	call	usage
.L191:
	.loc 2 1163 8
	movl	-204(%rbp), %eax
	.loc 2 1163 6
	cmpl	$2, %eax
	jne	.L192
	.loc 2 1163 44 discriminator 1
	movl	-260(%rbp), %eax
	.loc 2 1163 40 discriminator 1
	cmpl	$2, %eax
	je	.L192
	.loc 2 1165 20
	leaq	.LC104(%rip), %rdi
	call	gettext@PLT
	.loc 2 1165 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1166 7
	movl	$1, %edi
	call	usage
.L192:
	.loc 2 1172 20
	cmpb	$0, -312(%rbp)
	je	.L193
	.loc 2 1170 36
	leaq	.LC105(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1170 22
	movq	-296(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	xget_version@PLT
	jmp	.L194
.L193:
	.loc 2 1172 20 discriminator 1
	movl	$0, %eax
.L194:
	.loc 2 1169 17
	movl	%eax, -272(%rbp)
	.loc 2 1173 3
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	set_simple_backup_suffix@PLT
	.loc 2 1175 8
	movl	-268(%rbp), %eax
	.loc 2 1175 6
	cmpl	$1, %eax
	jne	.L195
	.loc 2 1177 12
	movzbl	-216(%rbp), %eax
	.loc 2 1177 10
	testb	%al, %al
	je	.L196
	.loc 2 1177 29 discriminator 1
	movzbl	-249(%rbp), %eax
	.loc 2 1177 26 discriminator 1
	xorl	$1, %eax
	.loc 2 1177 23 discriminator 1
	testb	%al, %al
	je	.L196
	.loc 2 1179 23
	movl	$2, -268(%rbp)
	jmp	.L195
.L196:
	.loc 2 1181 23
	movl	$4, -268(%rbp)
.L195:
	.loc 2 1184 8
	movzbl	-216(%rbp), %eax
	.loc 2 1184 6
	testb	%al, %al
	je	.L197
	.loc 2 1185 23
	movzbl	-311(%rbp), %eax
	movb	%al, -252(%rbp)
.L197:
	.loc 2 1188 9
	movq	-232(%rbp), %rax
	.loc 2 1188 6
	testq	%rax, %rax
	jne	.L198
	.loc 2 1188 31 discriminator 1
	cmpq	$0, -280(%rbp)
	je	.L199
.L198:
	.loc 2 1189 13
	movzbl	-220(%rbp), %eax
	.loc 2 1189 10
	xorl	$1, %eax
	.loc 2 1189 7
	testb	%al, %al
	je	.L199
	.loc 2 1190 33
	movb	$0, -221(%rbp)
.L199:
	.loc 2 1192 8
	movzbl	-221(%rbp), %eax
	.loc 2 1192 6
	testb	%al, %al
	je	.L200
	.loc 2 1192 40 discriminator 1
	movq	-232(%rbp), %rax
	.loc 2 1192 35 discriminator 1
	testq	%rax, %rax
	jne	.L201
	.loc 2 1192 62 discriminator 2
	cmpq	$0, -280(%rbp)
	je	.L200
.L201:
.LBB29:
	.loc 2 1193 5
	leaq	.LC106(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L200:
.LBE29:
	.loc 2 1196 8
	movzbl	-220(%rbp), %eax
	.loc 2 1196 6
	testb	%al, %al
	je	.L202
	.loc 2 1196 37 discriminator 1
	movzbl	selinux_enabled(%rip), %eax
	xorl	$1, %eax
	.loc 2 1196 34 discriminator 1
	testb	%al, %al
	je	.L202
.LBB30:
	.loc 2 1197 5
	leaq	.LC107(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L202:
.LBE30:
	.loc 2 1207 6
	cmpq	$0, -280(%rbp)
	je	.L203
	.loc 2 1207 19 discriminator 1
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	setfscreatecon@PLT
	.loc 2 1207 16 discriminator 1
	testl	%eax, %eax
	jns	.L203
.LBB31:
	.loc 2 1208 5
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	leaq	.LC108(%rip), %rdi
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
.L203:
.LBE31:
	.loc 2 1213 8
	movzbl	-218(%rbp), %eax
	.loc 2 1213 6
	testb	%al, %al
	je	.L204
.LBB32:
	.loc 2 1214 5
	leaq	.LC109(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L204:
.LBE32:
	.loc 2 1220 3
	call	hash_init@PLT
	.loc 2 1222 8
	movzbl	-310(%rbp), %edx
	.loc 2 1222 37
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	.loc 2 1222 8
	movq	-336(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movl	optind(%rip), %eax
	movl	-324(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, %edi
	leaq	-272(%rbp), %rcx
	movq	-288(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	do_copy
	movb	%al, -309(%rbp)
	.loc 2 1226 3
	call	forget_all@PLT
	.loc 2 1229 28
	movzbl	-309(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 1230 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L206
	call	__stack_chk_fail@PLT
.L206:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	main, .-main
	.local	x_tmp.7215
	.comm	x_tmp.7215,88,32
	.section	.rodata
.LC110:
	.string	"mode"
.LC111:
	.string	"timestamps"
.LC112:
	.string	"ownership"
.LC113:
	.string	"links"
.LC114:
	.string	"xattr"
.LC115:
	.string	"all"
	.section	.data.rel.ro.local
	.align 32
	.type	preserve_args.7233, @object
	.size	preserve_args.7233, 64
preserve_args.7233:
	.quad	.LC110
	.quad	.LC111
	.quad	.LC112
	.quad	.LC113
	.quad	.LC50
	.quad	.LC114
	.quad	.LC115
	.quad	0
	.section	.rodata
	.align 16
	.type	preserve_vals.7232, @object
	.size	preserve_vals.7232, 28
preserve_vals.7232:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.text
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
	.file 26 "./lib/quote.h"
	.file 27 "./lib/argmatch.h"
	.file 28 "./lib/backupfile.h"
	.file 29 "./lib/hash.h"
	.file 30 "src/copy.h"
	.file 31 "./lib/error.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1746
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF301
	.byte	0xc
	.long	.LASF302
	.long	.LASF303
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
	.long	.LASF65
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
	.long	.LASF304
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
	.byte	0x45
	.byte	0x12
	.long	0xa8
	.uleb128 0x2
	.long	.LASF64
	.byte	0xa
	.byte	0x7
	.byte	0x12
	.long	0xd8
	.uleb128 0x9
	.long	.LASF66
	.byte	0x10
	.byte	0xb
	.byte	0xa
	.byte	0x8
	.long	0x3c5
	.uleb128 0xa
	.long	.LASF67
	.byte	0xb
	.byte	0xc
	.byte	0xc
	.long	0xd8
	.byte	0
	.uleb128 0xa
	.long	.LASF68
	.byte	0xb
	.byte	0x10
	.byte	0x15
	.long	0xfc
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF69
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF70
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF72
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF73
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF74
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF75
	.byte	0x20
	.byte	0xe
	.byte	0x32
	.byte	0x8
	.long	0x44b
	.uleb128 0xa
	.long	.LASF76
	.byte	0xe
	.byte	0x34
	.byte	0xf
	.long	0x302
	.byte	0
	.uleb128 0xa
	.long	.LASF77
	.byte	0xe
	.byte	0x37
	.byte	0x7
	.long	0x65
	.byte	0x8
	.uleb128 0xa
	.long	.LASF78
	.byte	0xe
	.byte	0x38
	.byte	0x8
	.long	0x450
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
	.long	0x409
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0x7
	.byte	0x8
	.long	0x108
	.uleb128 0xd
	.long	0x108
	.long	0x46c
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF79
	.byte	0xf
	.byte	0x9f
	.byte	0xe
	.long	0x45c
	.uleb128 0xf
	.long	.LASF80
	.byte	0xf
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF81
	.byte	0xf
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF82
	.byte	0xf
	.byte	0xa6
	.byte	0xe
	.long	0x45c
	.uleb128 0xf
	.long	.LASF83
	.byte	0xf
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF84
	.byte	0xf
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF85
	.byte	0xf
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF86
	.byte	0x90
	.byte	0x10
	.byte	0x2e
	.byte	0x8
	.long	0x592
	.uleb128 0xa
	.long	.LASF87
	.byte	0x10
	.byte	0x30
	.byte	0xd
	.long	0x78
	.byte	0
	.uleb128 0xa
	.long	.LASF88
	.byte	0x10
	.byte	0x35
	.byte	0xd
	.long	0x9c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF89
	.byte	0x10
	.byte	0x3d
	.byte	0xf
	.long	0xb4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF90
	.byte	0x10
	.byte	0x3e
	.byte	0xe
	.long	0xa8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF91
	.byte	0x10
	.byte	0x40
	.byte	0xd
	.long	0x84
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF92
	.byte	0x10
	.byte	0x41
	.byte	0xd
	.long	0x90
	.byte	0x20
	.uleb128 0xa
	.long	.LASF93
	.byte	0x10
	.byte	0x43
	.byte	0x9
	.long	0x65
	.byte	0x24
	.uleb128 0xa
	.long	.LASF94
	.byte	0x10
	.byte	0x45
	.byte	0xd
	.long	0x78
	.byte	0x28
	.uleb128 0xa
	.long	.LASF95
	.byte	0x10
	.byte	0x4a
	.byte	0xd
	.long	0xc0
	.byte	0x30
	.uleb128 0xa
	.long	.LASF96
	.byte	0x10
	.byte	0x4e
	.byte	0x11
	.long	0xe4
	.byte	0x38
	.uleb128 0xa
	.long	.LASF97
	.byte	0x10
	.byte	0x50
	.byte	0x10
	.long	0xf0
	.byte	0x40
	.uleb128 0xa
	.long	.LASF98
	.byte	0x10
	.byte	0x5b
	.byte	0x15
	.long	0x39d
	.byte	0x48
	.uleb128 0xa
	.long	.LASF99
	.byte	0x10
	.byte	0x5c
	.byte	0x15
	.long	0x39d
	.byte	0x58
	.uleb128 0xa
	.long	.LASF100
	.byte	0x10
	.byte	0x5d
	.byte	0x15
	.long	0x39d
	.byte	0x68
	.uleb128 0xa
	.long	.LASF101
	.byte	0x10
	.byte	0x6a
	.byte	0x17
	.long	0x592
	.byte	0x78
	.byte	0
	.uleb128 0xd
	.long	0xfc
	.long	0x5a2
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x8
	.long	0x5a2
	.uleb128 0xd
	.long	0x308
	.long	0x5b9
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x5a9
	.uleb128 0x11
	.long	.LASF102
	.byte	0x11
	.value	0x11e
	.byte	0x1a
	.long	0x5b9
	.uleb128 0x11
	.long	.LASF103
	.byte	0x11
	.value	0x11f
	.byte	0x1a
	.long	0x5b9
	.uleb128 0x11
	.long	.LASF104
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x456
	.uleb128 0x11
	.long	.LASF105
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x456
	.uleb128 0xf
	.long	.LASF106
	.byte	0x13
	.byte	0x2d
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF107
	.byte	0x13
	.byte	0x2e
	.byte	0xe
	.long	0x108
	.uleb128 0xf
	.long	.LASF108
	.byte	0x14
	.byte	0x1
	.byte	0x14
	.long	0x302
	.uleb128 0xf
	.long	.LASF109
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
	.long	0x63a
	.uleb128 0x15
	.long	.LASF110
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x64f
	.uleb128 0x16
	.long	.LASF111
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.byte	0x5
	.byte	0x4
	.long	0x65
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x66d
	.uleb128 0x18
	.long	.LASF112
	.sleb128 -130
	.uleb128 0x18
	.long	.LASF113
	.sleb128 -131
	.byte	0
	.uleb128 0xd
	.long	0x115
	.long	0x678
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x66d
	.uleb128 0xf
	.long	.LASF114
	.byte	0x17
	.byte	0x19
	.byte	0x13
	.long	0x678
	.uleb128 0xf
	.long	.LASF115
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
	.long	0x6ea
	.uleb128 0x16
	.long	.LASF116
	.byte	0
	.uleb128 0x16
	.long	.LASF117
	.byte	0x1
	.uleb128 0x16
	.long	.LASF118
	.byte	0x2
	.uleb128 0x16
	.long	.LASF119
	.byte	0x3
	.uleb128 0x16
	.long	.LASF120
	.byte	0x4
	.uleb128 0x16
	.long	.LASF121
	.byte	0x5
	.uleb128 0x16
	.long	.LASF122
	.byte	0x6
	.uleb128 0x16
	.long	.LASF123
	.byte	0x7
	.uleb128 0x16
	.long	.LASF124
	.byte	0x8
	.uleb128 0x16
	.long	.LASF125
	.byte	0x9
	.uleb128 0x16
	.long	.LASF126
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x695
	.uleb128 0x11
	.long	.LASF127
	.byte	0x19
	.value	0x10b
	.byte	0x1a
	.long	0x34e
	.uleb128 0xd
	.long	0x6ea
	.long	0x707
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x6fc
	.uleb128 0x11
	.long	.LASF128
	.byte	0x19
	.value	0x10c
	.byte	0x21
	.long	0x707
	.uleb128 0xc
	.long	.LASF129
	.uleb128 0xf
	.long	.LASF130
	.byte	0x1a
	.byte	0x19
	.byte	0x1f
	.long	0x719
	.uleb128 0x2
	.long	.LASF131
	.byte	0x1b
	.byte	0x3d
	.byte	0x10
	.long	0x5a3
	.uleb128 0xf
	.long	.LASF132
	.byte	0x1b
	.byte	0x3e
	.byte	0x19
	.long	0x72a
	.uleb128 0x19
	.long	.LASF134
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1c
	.byte	0x1e
	.byte	0x6
	.long	0x76d
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
	.byte	0
	.uleb128 0xf
	.long	.LASF139
	.byte	0x1c
	.byte	0x31
	.byte	0x14
	.long	0x302
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF140
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF141
	.uleb128 0x2
	.long	.LASF142
	.byte	0x1d
	.byte	0x32
	.byte	0x1b
	.long	0x793
	.uleb128 0xc
	.long	.LASF143
	.uleb128 0x19
	.long	.LASF144
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1e
	.byte	0x1c
	.byte	0x6
	.long	0x7c3
	.uleb128 0x16
	.long	.LASF145
	.byte	0
	.uleb128 0x16
	.long	.LASF146
	.byte	0x1
	.uleb128 0x16
	.long	.LASF147
	.byte	0x2
	.uleb128 0x16
	.long	.LASF148
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x798
	.uleb128 0x19
	.long	.LASF149
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1e
	.byte	0x31
	.byte	0x6
	.long	0x7ed
	.uleb128 0x16
	.long	.LASF150
	.byte	0
	.uleb128 0x16
	.long	.LASF151
	.byte	0x1
	.uleb128 0x16
	.long	.LASF152
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x7c8
	.uleb128 0x19
	.long	.LASF153
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1e
	.byte	0x3e
	.byte	0x6
	.long	0x81d
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
	.uleb128 0x19
	.long	.LASF158
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1e
	.byte	0x47
	.byte	0x6
	.long	0x848
	.uleb128 0x16
	.long	.LASF159
	.byte	0x1
	.uleb128 0x16
	.long	.LASF160
	.byte	0x2
	.uleb128 0x16
	.long	.LASF161
	.byte	0x3
	.uleb128 0x16
	.long	.LASF162
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF163
	.byte	0x58
	.byte	0x1e
	.byte	0x64
	.byte	0x8
	.long	0xa56
	.uleb128 0xa
	.long	.LASF134
	.byte	0x1e
	.byte	0x66
	.byte	0x14
	.long	0x742
	.byte	0
	.uleb128 0xa
	.long	.LASF164
	.byte	0x1e
	.byte	0x69
	.byte	0x1c
	.long	0x81d
	.byte	0x4
	.uleb128 0xa
	.long	.LASF165
	.byte	0x1e
	.byte	0x6e
	.byte	0x14
	.long	0x7f2
	.byte	0x8
	.uleb128 0xa
	.long	.LASF166
	.byte	0x1e
	.byte	0x71
	.byte	0x14
	.long	0x798
	.byte	0xc
	.uleb128 0xa
	.long	.LASF167
	.byte	0x1e
	.byte	0x75
	.byte	0xa
	.long	0x385
	.byte	0x10
	.uleb128 0xa
	.long	.LASF168
	.byte	0x1e
	.byte	0x79
	.byte	0x8
	.long	0x780
	.byte	0x14
	.uleb128 0xa
	.long	.LASF169
	.byte	0x1e
	.byte	0x7d
	.byte	0x8
	.long	0x780
	.byte	0x15
	.uleb128 0xa
	.long	.LASF170
	.byte	0x1e
	.byte	0x84
	.byte	0x8
	.long	0x780
	.byte	0x16
	.uleb128 0xa
	.long	.LASF171
	.byte	0x1e
	.byte	0x88
	.byte	0x8
	.long	0x780
	.byte	0x17
	.uleb128 0xa
	.long	.LASF172
	.byte	0x1e
	.byte	0x8c
	.byte	0x8
	.long	0x780
	.byte	0x18
	.uleb128 0xa
	.long	.LASF173
	.byte	0x1e
	.byte	0x8f
	.byte	0x8
	.long	0x780
	.byte	0x19
	.uleb128 0xa
	.long	.LASF174
	.byte	0x1e
	.byte	0x93
	.byte	0x8
	.long	0x780
	.byte	0x1a
	.uleb128 0xa
	.long	.LASF175
	.byte	0x1e
	.byte	0x9a
	.byte	0x8
	.long	0x780
	.byte	0x1b
	.uleb128 0xa
	.long	.LASF176
	.byte	0x1e
	.byte	0x9e
	.byte	0x8
	.long	0x780
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF177
	.byte	0x1e
	.byte	0xa2
	.byte	0x8
	.long	0x780
	.byte	0x1d
	.uleb128 0xa
	.long	.LASF178
	.byte	0x1e
	.byte	0xa3
	.byte	0x8
	.long	0x780
	.byte	0x1e
	.uleb128 0xa
	.long	.LASF179
	.byte	0x1e
	.byte	0xa4
	.byte	0x8
	.long	0x780
	.byte	0x1f
	.uleb128 0xa
	.long	.LASF180
	.byte	0x1e
	.byte	0xa5
	.byte	0x8
	.long	0x780
	.byte	0x20
	.uleb128 0xa
	.long	.LASF181
	.byte	0x1e
	.byte	0xa8
	.byte	0x1a
	.long	0xa60
	.byte	0x28
	.uleb128 0xa
	.long	.LASF182
	.byte	0x1e
	.byte	0xb4
	.byte	0x8
	.long	0x780
	.byte	0x30
	.uleb128 0xa
	.long	.LASF183
	.byte	0x1e
	.byte	0xb8
	.byte	0x8
	.long	0x780
	.byte	0x31
	.uleb128 0xa
	.long	.LASF184
	.byte	0x1e
	.byte	0xbe
	.byte	0x8
	.long	0x780
	.byte	0x32
	.uleb128 0xa
	.long	.LASF185
	.byte	0x1e
	.byte	0xc2
	.byte	0x8
	.long	0x780
	.byte	0x33
	.uleb128 0xa
	.long	.LASF186
	.byte	0x1e
	.byte	0xcb
	.byte	0x8
	.long	0x780
	.byte	0x34
	.uleb128 0xa
	.long	.LASF187
	.byte	0x1e
	.byte	0xcf
	.byte	0x8
	.long	0x780
	.byte	0x35
	.uleb128 0xa
	.long	.LASF188
	.byte	0x1e
	.byte	0xd8
	.byte	0x8
	.long	0x780
	.byte	0x36
	.uleb128 0xa
	.long	.LASF189
	.byte	0x1e
	.byte	0xe1
	.byte	0x8
	.long	0x780
	.byte	0x37
	.uleb128 0xa
	.long	.LASF190
	.byte	0x1e
	.byte	0xe5
	.byte	0x8
	.long	0x780
	.byte	0x38
	.uleb128 0xa
	.long	.LASF191
	.byte	0x1e
	.byte	0xe9
	.byte	0x8
	.long	0x780
	.byte	0x39
	.uleb128 0xa
	.long	.LASF192
	.byte	0x1e
	.byte	0xed
	.byte	0x8
	.long	0x780
	.byte	0x3a
	.uleb128 0xa
	.long	.LASF193
	.byte	0x1e
	.byte	0xf1
	.byte	0x8
	.long	0x780
	.byte	0x3b
	.uleb128 0xa
	.long	.LASF194
	.byte	0x1e
	.byte	0xf4
	.byte	0x8
	.long	0x780
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF195
	.byte	0x1e
	.byte	0xf7
	.byte	0x8
	.long	0x780
	.byte	0x3d
	.uleb128 0xa
	.long	.LASF196
	.byte	0x1e
	.byte	0xfc
	.byte	0x8
	.long	0x780
	.byte	0x3e
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x1e
	.value	0x100
	.byte	0x8
	.long	0x780
	.byte	0x3f
	.uleb128 0x1a
	.long	.LASF198
	.byte	0x1e
	.value	0x105
	.byte	0x7
	.long	0x65
	.byte	0x40
	.uleb128 0x1a
	.long	.LASF199
	.byte	0x1e
	.value	0x108
	.byte	0x15
	.long	0x7c8
	.byte	0x44
	.uleb128 0x1a
	.long	.LASF200
	.byte	0x1e
	.value	0x113
	.byte	0xf
	.long	0xa66
	.byte	0x48
	.uleb128 0x1a
	.long	.LASF201
	.byte	0x1e
	.value	0x116
	.byte	0xf
	.long	0xa66
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	0x848
	.uleb128 0xc
	.long	.LASF202
	.uleb128 0x7
	.byte	0x8
	.long	0xa5b
	.uleb128 0x7
	.byte	0x8
	.long	0x787
	.uleb128 0xf
	.long	.LASF203
	.byte	0x1f
	.byte	0x32
	.byte	0xf
	.long	0x5a3
	.uleb128 0xf
	.long	.LASF204
	.byte	0x1f
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF205
	.byte	0x1f
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x9
	.long	.LASF206
	.byte	0xa8
	.byte	0x2
	.byte	0x36
	.byte	0x8
	.long	0xad1
	.uleb128 0x12
	.string	"st"
	.byte	0x2
	.byte	0x38
	.byte	0xf
	.long	0x4c1
	.byte	0
	.uleb128 0xa
	.long	.LASF207
	.byte	0x2
	.byte	0x39
	.byte	0x8
	.long	0x780
	.byte	0x90
	.uleb128 0xa
	.long	.LASF208
	.byte	0x2
	.byte	0x3a
	.byte	0xa
	.long	0x2d
	.byte	0x98
	.uleb128 0xa
	.long	.LASF209
	.byte	0x2
	.byte	0x3b
	.byte	0x14
	.long	0xad1
	.byte	0xa0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa90
	.uleb128 0x14
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x41
	.byte	0x1
	.long	0xb1c
	.uleb128 0x16
	.long	.LASF210
	.byte	0x80
	.uleb128 0x16
	.long	.LASF211
	.byte	0x81
	.uleb128 0x16
	.long	.LASF212
	.byte	0x82
	.uleb128 0x16
	.long	.LASF213
	.byte	0x83
	.uleb128 0x16
	.long	.LASF214
	.byte	0x84
	.uleb128 0x16
	.long	.LASF215
	.byte	0x85
	.uleb128 0x16
	.long	.LASF216
	.byte	0x86
	.uleb128 0x16
	.long	.LASF217
	.byte	0x87
	.uleb128 0x16
	.long	.LASF218
	.byte	0x88
	.byte	0
	.uleb128 0x1b
	.long	.LASF219
	.byte	0x2
	.byte	0x4e
	.byte	0xd
	.long	0x780
	.uleb128 0x9
	.byte	0x3
	.quad	selinux_enabled
	.uleb128 0x1b
	.long	.LASF220
	.byte	0x2
	.byte	0x52
	.byte	0xd
	.long	0x780
	.uleb128 0x9
	.byte	0x3
	.quad	parents_option
	.uleb128 0x1b
	.long	.LASF221
	.byte	0x2
	.byte	0x55
	.byte	0xd
	.long	0x780
	.uleb128 0x9
	.byte	0x3
	.quad	remove_trailing_slashes
	.uleb128 0xd
	.long	0x308
	.long	0xb6e
	.uleb128 0xe
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0xb5e
	.uleb128 0x1b
	.long	.LASF222
	.byte	0x2
	.byte	0x57
	.byte	0x1a
	.long	0xb6e
	.uleb128 0x9
	.byte	0x3
	.quad	sparse_type_string
	.uleb128 0xd
	.long	0x7c3
	.long	0xb99
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0xb89
	.uleb128 0x1b
	.long	.LASF223
	.byte	0x2
	.byte	0x5b
	.byte	0x1f
	.long	0xb99
	.uleb128 0x9
	.byte	0x3
	.quad	sparse_type
	.uleb128 0x1b
	.long	.LASF224
	.byte	0x2
	.byte	0x61
	.byte	0x1a
	.long	0xb6e
	.uleb128 0x9
	.byte	0x3
	.quad	reflink_type_string
	.uleb128 0xd
	.long	0x7ed
	.long	0xbda
	.uleb128 0xe
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0xbca
	.uleb128 0x1b
	.long	.LASF225
	.byte	0x2
	.byte	0x65
	.byte	0x20
	.long	0xbda
	.uleb128 0x9
	.byte	0x3
	.quad	reflink_type
	.uleb128 0xd
	.long	0x44b
	.long	0xc05
	.uleb128 0xe
	.long	0x39
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.long	0xbf5
	.uleb128 0x1b
	.long	.LASF226
	.byte	0x2
	.byte	0x6b
	.byte	0x1c
	.long	0xc05
	.uleb128 0x9
	.byte	0x3
	.quad	long_opts
	.uleb128 0x1c
	.long	.LASF290
	.byte	0x2
	.value	0x3a0
	.byte	0x1
	.long	0x65
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0xda8
	.uleb128 0x1d
	.long	.LASF227
	.byte	0x2
	.value	0x3a0
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x1d
	.long	.LASF228
	.byte	0x2
	.value	0x3a0
	.byte	0x18
	.long	0x456
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1e
	.string	"c"
	.byte	0x2
	.value	0x3a2
	.byte	0x7
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x1e
	.string	"ok"
	.byte	0x2
	.value	0x3a3
	.byte	0x8
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -325
	.uleb128 0x1f
	.long	.LASF229
	.byte	0x2
	.value	0x3a4
	.byte	0x8
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x1f
	.long	.LASF230
	.byte	0x2
	.value	0x3a5
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1f
	.long	.LASF231
	.byte	0x2
	.value	0x3a6
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x1e
	.string	"x"
	.byte	0x2
	.value	0x3a7
	.byte	0x15
	.long	0x848
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1f
	.long	.LASF232
	.byte	0x2
	.value	0x3a8
	.byte	0x8
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -327
	.uleb128 0x1f
	.long	.LASF233
	.byte	0x2
	.value	0x3a9
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1f
	.long	.LASF234
	.byte	0x2
	.value	0x3aa
	.byte	0x8
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -326
	.uleb128 0x1f
	.long	.LASF235
	.byte	0x2
	.value	0x3ab
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x20
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x21
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0xd63
	.uleb128 0x1e
	.string	"st"
	.byte	0x2
	.value	0x43c
	.byte	0x1b
	.long	0x4c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x20
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x20
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0
	.uleb128 0x20
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x20
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x20
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x20
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.byte	0
	.uleb128 0x22
	.long	.LASF249
	.byte	0x2
	.value	0x344
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0xeb8
	.uleb128 0x23
	.string	"arg"
	.byte	0x2
	.value	0x344
	.byte	0x22
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"x"
	.byte	0x2
	.value	0x344
	.byte	0x3a
	.long	0xeb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF236
	.byte	0x2
	.value	0x344
	.byte	0x42
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LASF237
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.value	0x346
	.byte	0x8
	.long	0xe34
	.uleb128 0x16
	.long	.LASF238
	.byte	0
	.uleb128 0x16
	.long	.LASF239
	.byte	0x1
	.uleb128 0x16
	.long	.LASF240
	.byte	0x2
	.uleb128 0x16
	.long	.LASF241
	.byte	0x3
	.uleb128 0x16
	.long	.LASF242
	.byte	0x4
	.uleb128 0x16
	.long	.LASF243
	.byte	0x5
	.uleb128 0x16
	.long	.LASF244
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xdf6
	.uleb128 0x1f
	.long	.LASF245
	.byte	0x2
	.value	0x350
	.byte	0x24
	.long	0xece
	.uleb128 0x9
	.byte	0x3
	.quad	preserve_vals.7232
	.uleb128 0x1f
	.long	.LASF246
	.byte	0x2
	.value	0x357
	.byte	0x1c
	.long	0xee3
	.uleb128 0x9
	.byte	0x3
	.quad	preserve_args.7233
	.uleb128 0x1f
	.long	.LASF247
	.byte	0x2
	.value	0x35e
	.byte	0x9
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"s"
	.byte	0x2
	.value	0x35f
	.byte	0x9
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x1f
	.long	.LASF248
	.byte	0x2
	.value	0x363
	.byte	0xd
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.string	"val"
	.byte	0x2
	.value	0x364
	.byte	0x1b
	.long	0xdf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x848
	.uleb128 0xd
	.long	0xe34
	.long	0xece
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0xebe
	.uleb128 0xd
	.long	0x308
	.long	0xee3
	.uleb128 0xe
	.long	0x39
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0xed3
	.uleb128 0x22
	.long	.LASF250
	.byte	0x2
	.value	0x30f
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0xf16
	.uleb128 0x23
	.string	"x"
	.byte	0x2
	.value	0x30f
	.byte	0x24
	.long	0xeb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF270
	.byte	0x2
	.value	0x251
	.byte	0x1
	.long	0x780
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x1243
	.uleb128 0x1d
	.long	.LASF251
	.byte	0x2
	.value	0x251
	.byte	0xe
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x1d
	.long	.LASF252
	.byte	0x2
	.value	0x251
	.byte	0x1e
	.long	0x456
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1d
	.long	.LASF233
	.byte	0x2
	.value	0x251
	.byte	0x30
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1d
	.long	.LASF234
	.byte	0x2
	.value	0x252
	.byte	0xf
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x23
	.string	"x"
	.byte	0x2
	.value	0x252
	.byte	0x37
	.long	0xeb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x1e
	.string	"sb"
	.byte	0x2
	.value	0x254
	.byte	0xf
	.long	0x4c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1f
	.long	.LASF253
	.byte	0x2
	.value	0x255
	.byte	0x8
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -330
	.uleb128 0x1e
	.string	"ok"
	.byte	0x2
	.value	0x256
	.byte	0x8
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x1f
	.long	.LASF254
	.byte	0x2
	.value	0x257
	.byte	0x8
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -326
	.uleb128 0x20
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x21
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x1006
	.uleb128 0x1e
	.string	"__x"
	.byte	0x2
	.value	0x270
	.byte	0x7
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -325
	.byte	0
	.uleb128 0x20
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x21
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x11c3
	.uleb128 0x1e
	.string	"i"
	.byte	0x2
	.value	0x28d
	.byte	0x10
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x25
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x1f
	.long	.LASF255
	.byte	0x2
	.value	0x28f
	.byte	0x11
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1f
	.long	.LASF256
	.byte	0x2
	.value	0x290
	.byte	0x10
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -327
	.uleb128 0x1f
	.long	.LASF257
	.byte	0x2
	.value	0x291
	.byte	0x1c
	.long	0xad1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1f
	.long	.LASF258
	.byte	0x2
	.value	0x292
	.byte	0x11
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x1e
	.string	"arg"
	.byte	0x2
	.value	0x293
	.byte	0x11
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x21
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x110d
	.uleb128 0x1f
	.long	.LASF259
	.byte	0x2
	.value	0x29c
	.byte	0x15
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x25
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x1f
	.long	.LASF260
	.byte	0x2
	.value	0x2a3
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1f
	.long	.LASF261
	.byte	0x2
	.value	0x2a3
	.byte	0xf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1f
	.long	.LASF262
	.byte	0x2
	.value	0x2a3
	.byte	0xf
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x1179
	.uleb128 0x1f
	.long	.LASF263
	.byte	0x2
	.value	0x2b6
	.byte	0x15
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x25
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x1f
	.long	.LASF260
	.byte	0x2
	.value	0x2b8
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1f
	.long	.LASF261
	.byte	0x2
	.value	0x2b8
	.byte	0xf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1f
	.long	.LASF262
	.byte	0x2
	.value	0x2b8
	.byte	0xf
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x11a0
	.uleb128 0x1f
	.long	.LASF264
	.byte	0x2
	.value	0x2c9
	.byte	0x14
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -329
	.byte	0
	.uleb128 0x25
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x1e
	.string	"p"
	.byte	0x2
	.value	0x2d5
	.byte	0x24
	.long	0xad1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x1f
	.long	.LASF265
	.byte	0x2
	.value	0x2e0
	.byte	0x13
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1f
	.long	.LASF266
	.byte	0x2
	.value	0x2e1
	.byte	0x13
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1f
	.long	.LASF267
	.byte	0x2
	.value	0x2e2
	.byte	0x13
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1f
	.long	.LASF268
	.byte	0x2
	.value	0x2e3
	.byte	0xc
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x25
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x1f
	.long	.LASF269
	.byte	0x2
	.value	0x2f7
	.byte	0x24
	.long	0x848
	.uleb128 0x9
	.byte	0x3
	.quad	x_tmp.7215
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF271
	.byte	0x2
	.value	0x23c
	.byte	0x1
	.long	0x780
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x12d9
	.uleb128 0x1d
	.long	.LASF252
	.byte	0x2
	.value	0x23c
	.byte	0x27
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"st"
	.byte	0x2
	.value	0x23c
	.byte	0x3a
	.long	0x12d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF253
	.byte	0x2
	.value	0x23d
	.byte	0x21
	.long	0x12df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF254
	.byte	0x2
	.value	0x23d
	.byte	0x2f
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.string	"err"
	.byte	0x2
	.value	0x23f
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF272
	.byte	0x2
	.value	0x240
	.byte	0x8
	.long	0x780
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x20
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x4c1
	.uleb128 0x7
	.byte	0x8
	.long	0x780
	.uleb128 0x26
	.long	.LASF273
	.byte	0x2
	.value	0x170
	.byte	0x1
	.long	0x780
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x14df
	.uleb128 0x1d
	.long	.LASF274
	.byte	0x2
	.value	0x170
	.byte	0x27
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x1d
	.long	.LASF275
	.byte	0x2
	.value	0x170
	.byte	0x39
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x1d
	.long	.LASF276
	.byte	0x2
	.value	0x171
	.byte	0x27
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x1d
	.long	.LASF257
	.byte	0x2
	.value	0x172
	.byte	0x2d
	.long	0x14df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x1d
	.long	.LASF253
	.byte	0x2
	.value	0x172
	.byte	0x3e
	.long	0x12df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x23
	.string	"x"
	.byte	0x2
	.value	0x173
	.byte	0x34
	.long	0x14e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x1f
	.long	.LASF277
	.byte	0x2
	.value	0x175
	.byte	0xf
	.long	0x4c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1e
	.string	"dir"
	.byte	0x2
	.value	0x176
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x1e
	.string	"src"
	.byte	0x2
	.value	0x177
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1f
	.long	.LASF278
	.byte	0x2
	.value	0x178
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x1f
	.long	.LASF279
	.byte	0x2
	.value	0x179
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x21
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x140a
	.uleb128 0x1f
	.long	.LASF260
	.byte	0x2
	.value	0x17b
	.byte	0x3
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x1f
	.long	.LASF261
	.byte	0x2
	.value	0x17b
	.byte	0x3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x1f
	.long	.LASF262
	.byte	0x2
	.value	0x17b
	.byte	0x3
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.byte	0
	.uleb128 0x25
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1f
	.long	.LASF280
	.byte	0x2
	.value	0x18c
	.byte	0xd
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x25
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1e
	.string	"new"
	.byte	0x2
	.value	0x193
	.byte	0x1c
	.long	0xad1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x1f
	.long	.LASF281
	.byte	0x2
	.value	0x194
	.byte	0x10
	.long	0x780
	.uleb128 0x3
	.byte	0x91
	.sleb128 -425
	.uleb128 0x21
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x1497
	.uleb128 0x1f
	.long	.LASF282
	.byte	0x2
	.value	0x19e
	.byte	0x1b
	.long	0x4c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1f
	.long	.LASF283
	.byte	0x2
	.value	0x19f
	.byte	0x13
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.byte	0
	.uleb128 0x25
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1f
	.long	.LASF284
	.byte	0x2
	.value	0x1bb
	.byte	0x16
	.long	0x385
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x1f
	.long	.LASF285
	.byte	0x2
	.value	0x1bc
	.byte	0x16
	.long	0x385
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x1f
	.long	.LASF286
	.byte	0x2
	.value	0x1bd
	.byte	0x16
	.long	0x385
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xad1
	.uleb128 0x7
	.byte	0x8
	.long	0xa56
	.uleb128 0x26
	.long	.LASF287
	.byte	0x2
	.value	0x117
	.byte	0x1
	.long	0x780
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x1615
	.uleb128 0x1d
	.long	.LASF288
	.byte	0x2
	.value	0x117
	.byte	0x19
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1d
	.long	.LASF275
	.byte	0x2
	.value	0x117
	.byte	0x30
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1d
	.long	.LASF257
	.byte	0x2
	.value	0x118
	.byte	0x1e
	.long	0xad1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x23
	.string	"x"
	.byte	0x2
	.value	0x118
	.byte	0x42
	.long	0x14e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.string	"p"
	.byte	0x2
	.value	0x11a
	.byte	0x14
	.long	0xad1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1f
	.long	.LASF255
	.byte	0x2
	.value	0x11b
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.long	.LASF289
	.byte	0x2
	.value	0x11c
	.byte	0x9
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x15ca
	.uleb128 0x1f
	.long	.LASF260
	.byte	0x2
	.value	0x11e
	.byte	0x3
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1f
	.long	.LASF261
	.byte	0x2
	.value	0x11e
	.byte	0x3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1f
	.long	.LASF262
	.byte	0x2
	.value	0x11e
	.byte	0x3
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x15f1
	.uleb128 0x1f
	.long	.LASF66
	.byte	0x2
	.value	0x12b
	.byte	0x1b
	.long	0x1615
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x25
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1e
	.string	"__x"
	.byte	0x2
	.value	0x144
	.byte	0xf
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x39d
	.long	0x1625
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.long	.LASF291
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x1653
	.uleb128 0x28
	.long	.LASF292
	.byte	0x2
	.byte	0x8e
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x22
	.long	.LASF293
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x16f8
	.uleb128 0x1d
	.long	.LASF294
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x29
	.long	.LASF295
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x16ae
	.uleb128 0x1a
	.long	.LASF294
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x302
	.byte	0
	.uleb128 0x1a
	.long	.LASF296
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x302
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x1683
	.uleb128 0x1f
	.long	.LASF295
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x1708
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.long	.LASF296
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1f
	.long	.LASF297
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x170d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.long	.LASF298
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x16ae
	.long	0x1708
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x16f8
	.uleb128 0x7
	.byte	0x8
	.long	0x16ae
	.uleb128 0x2a
	.long	.LASF299
	.byte	0x1
	.value	0x268
	.byte	0x1
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF300
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
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
.LASF280:
	.string	"slash"
.LASF157:
	.string	"I_UNSPECIFIED"
.LASF229:
	.string	"make_backups"
.LASF101:
	.string	"__glibc_reserved"
.LASF271:
	.string	"target_directory_operand"
.LASF100:
	.string	"st_ctim"
.LASF7:
	.string	"size_t"
.LASF112:
	.string	"GETOPT_HELP_CHAR"
.LASF96:
	.string	"st_blksize"
.LASF97:
	.string	"st_blocks"
.LASF52:
	.string	"_IO_codecvt"
.LASF173:
	.string	"install_mode"
.LASF136:
	.string	"simple_backups"
.LASF32:
	.string	"_IO_save_end"
.LASF224:
	.string	"reflink_type_string"
.LASF301:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF236:
	.string	"on_off"
.LASF10:
	.string	"__gid_t"
.LASF218:
	.string	"UNLINK_DEST_BEFORE_OPENING"
.LASF181:
	.string	"set_security_context"
.LASF102:
	.string	"_sys_siglist"
.LASF99:
	.string	"st_mtim"
.LASF64:
	.string	"time_t"
.LASF183:
	.string	"data_copy_required"
.LASF231:
	.string	"version_control_string"
.LASF25:
	.string	"_IO_write_base"
.LASF205:
	.string	"error_one_per_line"
.LASF137:
	.string	"numbered_existing_backups"
.LASF41:
	.string	"_lock"
.LASF203:
	.string	"error_print_progname"
.LASF245:
	.string	"preserve_vals"
.LASF277:
	.string	"stats"
.LASF232:
	.string	"copy_contents"
.LASF219:
	.string	"selinux_enabled"
.LASF178:
	.string	"preserve_mode"
.LASF279:
	.string	"dirlen"
.LASF251:
	.string	"n_files"
.LASF86:
	.string	"stat"
.LASF79:
	.string	"__tzname"
.LASF30:
	.string	"_IO_save_base"
.LASF132:
	.string	"argmatch_die"
.LASF152:
	.string	"REFLINK_ALWAYS"
.LASF239:
	.string	"PRESERVE_TIMESTAMPS"
.LASF190:
	.string	"recursive"
.LASF237:
	.string	"File_attribute"
.LASF158:
	.string	"Dereference_symlink"
.LASF34:
	.string	"_chain"
.LASF38:
	.string	"_cur_column"
.LASF57:
	.string	"sys_nerr"
.LASF134:
	.string	"backup_type"
.LASF8:
	.string	"__dev_t"
.LASF278:
	.string	"dst_dir"
.LASF59:
	.string	"_sys_nerr"
.LASF155:
	.string	"I_ALWAYS_NO"
.LASF143:
	.string	"hash_table"
.LASF104:
	.string	"__environ"
.LASF147:
	.string	"SPARSE_AUTO"
.LASF6:
	.string	"long int"
.LASF186:
	.string	"require_preserve_context"
.LASF77:
	.string	"has_arg"
.LASF171:
	.string	"hard_link"
.LASF221:
	.string	"remove_trailing_slashes"
.LASF207:
	.string	"restore_mode"
.LASF138:
	.string	"numbered_backups"
.LASF51:
	.string	"_IO_marker"
.LASF290:
	.string	"main"
.LASF213:
	.string	"PARENTS_OPTION"
.LASF161:
	.string	"DEREF_COMMAND_LINE_ARGUMENTS"
.LASF177:
	.string	"preserve_ownership"
.LASF174:
	.string	"chown_privileges"
.LASF187:
	.string	"preserve_xattr"
.LASF4:
	.string	"signed char"
.LASF17:
	.string	"__blksize_t"
.LASF65:
	.string	"_IO_FILE"
.LASF81:
	.string	"__timezone"
.LASF53:
	.string	"_IO_wide_data"
.LASF91:
	.string	"st_uid"
.LASF127:
	.string	"quoting_style_args"
.LASF105:
	.string	"environ"
.LASF2:
	.string	"unsigned char"
.LASF146:
	.string	"SPARSE_NEVER"
.LASF45:
	.string	"_freeres_list"
.LASF94:
	.string	"st_rdev"
.LASF225:
	.string	"reflink_type"
.LASF210:
	.string	"ATTRIBUTES_ONLY_OPTION"
.LASF159:
	.string	"DEREF_UNDEFINED"
.LASF193:
	.string	"update"
.LASF184:
	.string	"require_preserve"
.LASF293:
	.string	"emit_ancillary_info"
.LASF204:
	.string	"error_message_count"
.LASF165:
	.string	"interactive"
.LASF19:
	.string	"__syscall_slong_t"
.LASF141:
	.string	"_Bool"
.LASF185:
	.string	"preserve_security_context"
.LASF255:
	.string	"dst_name"
.LASF20:
	.string	"char"
.LASF144:
	.string	"Sparse_type"
.LASF274:
	.string	"const_dir"
.LASF268:
	.string	"unused"
.LASF304:
	.string	"_IO_lock_t"
.LASF199:
	.string	"reflink_mode"
.LASF211:
	.string	"COPY_CONTENTS_OPTION"
.LASF160:
	.string	"DEREF_NEVER"
.LASF269:
	.string	"x_tmp"
.LASF273:
	.string	"make_dir_parents_private"
.LASF266:
	.string	"source"
.LASF84:
	.string	"timezone"
.LASF120:
	.string	"shell_escape_always_quoting_style"
.LASF208:
	.string	"slash_offset"
.LASF12:
	.string	"__mode_t"
.LASF22:
	.string	"_IO_read_ptr"
.LASF54:
	.string	"stdin"
.LASF58:
	.string	"sys_errlist"
.LASF33:
	.string	"_markers"
.LASF115:
	.string	"program_name"
.LASF265:
	.string	"new_dest"
.LASF252:
	.string	"file"
.LASF170:
	.string	"unlink_dest_after_failed_open"
.LASF264:
	.string	"copy_into_self"
.LASF272:
	.string	"is_a_dir"
.LASF172:
	.string	"move_mode"
.LASF276:
	.string	"verbose_fmt_string"
.LASF122:
	.string	"c_maybe_quoting_style"
.LASF198:
	.string	"rename_errno"
.LASF296:
	.string	"node"
.LASF135:
	.string	"no_backups"
.LASF188:
	.string	"require_preserve_xattr"
.LASF106:
	.string	"program_invocation_name"
.LASF262:
	.string	"__new"
.LASF42:
	.string	"_offset"
.LASF92:
	.string	"st_gid"
.LASF243:
	.string	"PRESERVE_XATTR"
.LASF72:
	.string	"optind"
.LASF145:
	.string	"SPARSE_UNUSED"
.LASF125:
	.string	"clocale_quoting_style"
.LASF202:
	.string	"selabel_handle"
.LASF0:
	.string	"long unsigned int"
.LASF240:
	.string	"PRESERVE_OWNERSHIP"
.LASF299:
	.string	"emit_backup_suffix_note"
.LASF292:
	.string	"status"
.LASF36:
	.string	"_flags2"
.LASF95:
	.string	"st_size"
.LASF24:
	.string	"_IO_read_base"
.LASF156:
	.string	"I_ASK_USER"
.LASF75:
	.string	"option"
.LASF241:
	.string	"PRESERVE_LINK"
.LASF49:
	.string	"_unused2"
.LASF282:
	.string	"src_st"
.LASF191:
	.string	"set_mode"
.LASF227:
	.string	"argc"
.LASF189:
	.string	"reduce_diagnostics"
.LASF244:
	.string	"PRESERVE_ALL"
.LASF37:
	.string	"_old_offset"
.LASF295:
	.string	"infomap"
.LASF139:
	.string	"simple_backup_suffix"
.LASF228:
	.string	"argv"
.LASF18:
	.string	"__blkcnt_t"
.LASF117:
	.string	"shell_quoting_style"
.LASF163:
	.string	"cp_options"
.LASF11:
	.string	"__ino_t"
.LASF235:
	.string	"scontext"
.LASF194:
	.string	"verbose"
.LASF61:
	.string	"long long int"
.LASF294:
	.string	"program"
.LASF108:
	.string	"Version"
.LASF283:
	.string	"src_errno"
.LASF109:
	.string	"exit_failure"
.LASF69:
	.string	"_gl_cxxalias_dummy"
.LASF148:
	.string	"SPARSE_ALWAYS"
.LASF154:
	.string	"I_ALWAYS_YES"
.LASF121:
	.string	"c_quoting_style"
.LASF214:
	.string	"PRESERVE_ATTRIBUTES_OPTION"
.LASF27:
	.string	"_IO_write_end"
.LASF249:
	.string	"decode_preserve_arg"
.LASF103:
	.string	"sys_siglist"
.LASF140:
	.string	"float"
.LASF113:
	.string	"GETOPT_VERSION_CHAR"
.LASF28:
	.string	"_IO_buf_base"
.LASF1:
	.string	"unsigned int"
.LASF114:
	.string	"version_etc_copyright"
.LASF216:
	.string	"SPARSE_OPTION"
.LASF128:
	.string	"quoting_style_vals"
.LASF116:
	.string	"literal_quoting_style"
.LASF93:
	.string	"__pad0"
.LASF82:
	.string	"tzname"
.LASF47:
	.string	"__pad5"
.LASF78:
	.string	"flag"
.LASF288:
	.string	"const_dst_name"
.LASF253:
	.string	"new_dst"
.LASF182:
	.string	"preserve_links"
.LASF129:
	.string	"quoting_options"
.LASF21:
	.string	"_flags"
.LASF179:
	.string	"preserve_timestamps"
.LASF298:
	.string	"lc_messages"
.LASF130:
	.string	"quote_quoting_options"
.LASF48:
	.string	"_mode"
.LASF242:
	.string	"PRESERVE_CONTEXT"
.LASF43:
	.string	"_codecvt"
.LASF111:
	.string	"LOG10_TIMESPEC_HZ"
.LASF89:
	.string	"st_nlink"
.LASF63:
	.string	"mode_t"
.LASF254:
	.string	"forcing"
.LASF196:
	.string	"open_dangling_dest_symlink"
.LASF62:
	.string	"long double"
.LASF286:
	.string	"mkdir_mode"
.LASF50:
	.string	"FILE"
.LASF87:
	.string	"st_dev"
.LASF153:
	.string	"Interactive"
.LASF66:
	.string	"timespec"
.LASF259:
	.string	"arg_no_trailing_slash"
.LASF149:
	.string	"Reflink_type"
.LASF234:
	.string	"no_target_directory"
.LASF74:
	.string	"optopt"
.LASF222:
	.string	"sparse_type_string"
.LASF150:
	.string	"REFLINK_NEVER"
.LASF124:
	.string	"locale_quoting_style"
.LASF275:
	.string	"src_offset"
.LASF70:
	.string	"long long unsigned int"
.LASF226:
	.string	"long_opts"
.LASF250:
	.string	"cp_option_init"
.LASF14:
	.string	"__off_t"
.LASF133:
	.string	"quoting_style"
.LASF107:
	.string	"program_invocation_short_name"
.LASF206:
	.string	"dir_attr"
.LASF300:
	.string	"emit_mandatory_arg_note"
.LASF46:
	.string	"_freeres_buf"
.LASF192:
	.string	"symbolic_link"
.LASF73:
	.string	"opterr"
.LASF246:
	.string	"preserve_args"
.LASF303:
	.string	"/root/coreutils"
.LASF16:
	.string	"__time_t"
.LASF247:
	.string	"arg_writable"
.LASF31:
	.string	"_IO_backup_base"
.LASF40:
	.string	"_shortbuf"
.LASF212:
	.string	"NO_PRESERVE_ATTRIBUTES_OPTION"
.LASF142:
	.string	"Hash_table"
.LASF270:
	.string	"do_copy"
.LASF267:
	.string	"dest"
.LASF217:
	.string	"STRIP_TRAILING_SLASHES_OPTION"
.LASF118:
	.string	"shell_always_quoting_style"
.LASF15:
	.string	"__off64_t"
.LASF284:
	.string	"src_mode"
.LASF197:
	.string	"last_file"
.LASF123:
	.string	"escape_quoting_style"
.LASF29:
	.string	"_IO_buf_end"
.LASF76:
	.string	"name"
.LASF260:
	.string	"__old"
.LASF176:
	.string	"one_file_system"
.LASF297:
	.string	"map_prog"
.LASF56:
	.string	"stderr"
.LASF285:
	.string	"omitted_permissions"
.LASF5:
	.string	"short int"
.LASF175:
	.string	"owner_privileges"
.LASF263:
	.string	"arg_base"
.LASF238:
	.string	"PRESERVE_MODE"
.LASF167:
	.string	"mode"
.LASF256:
	.string	"parent_exists"
.LASF68:
	.string	"tv_nsec"
.LASF291:
	.string	"usage"
.LASF302:
	.string	"src/cp.c"
.LASF119:
	.string	"shell_escape_quoting_style"
.LASF39:
	.string	"_vtable_offset"
.LASF60:
	.string	"_sys_errlist"
.LASF230:
	.string	"backup_suffix"
.LASF162:
	.string	"DEREF_ALWAYS"
.LASF257:
	.string	"attr_list"
.LASF223:
	.string	"sparse_type"
.LASF110:
	.string	"TIMESPEC_HZ"
.LASF180:
	.string	"explicit_no_preserve_mode"
.LASF201:
	.string	"src_info"
.LASF80:
	.string	"__daylight"
.LASF164:
	.string	"dereference"
.LASF90:
	.string	"st_mode"
.LASF9:
	.string	"__uid_t"
.LASF195:
	.string	"stdin_tty"
.LASF23:
	.string	"_IO_read_end"
.LASF248:
	.string	"comma"
.LASF200:
	.string	"dest_info"
.LASF85:
	.string	"getdate_err"
.LASF35:
	.string	"_fileno"
.LASF166:
	.string	"sparse_mode"
.LASF215:
	.string	"REFLINK_OPTION"
.LASF258:
	.string	"arg_in_concat"
.LASF44:
	.string	"_wide_data"
.LASF71:
	.string	"optarg"
.LASF281:
	.string	"missing_dir"
.LASF233:
	.string	"target_directory"
.LASF3:
	.string	"short unsigned int"
.LASF55:
	.string	"stdout"
.LASF26:
	.string	"_IO_write_ptr"
.LASF83:
	.string	"daylight"
.LASF168:
	.string	"copy_as_regular"
.LASF151:
	.string	"REFLINK_AUTO"
.LASF88:
	.string	"st_ino"
.LASF13:
	.string	"__nlink_t"
.LASF261:
	.string	"__len"
.LASF209:
	.string	"next"
.LASF287:
	.string	"re_protect"
.LASF67:
	.string	"tv_sec"
.LASF131:
	.string	"argmatch_exit_fn"
.LASF126:
	.string	"custom_quoting_style"
.LASF220:
	.string	"parents_option"
.LASF98:
	.string	"st_atim"
.LASF169:
	.string	"unlink_dest_before_opening"
.LASF289:
	.string	"src_name"
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
