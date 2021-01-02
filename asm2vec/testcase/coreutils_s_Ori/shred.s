	.file	"shred.c"
	.text
.Ltext0:
	.type	ptr_align, @function
ptr_align:
.LFB33:
	.file 1 "src/system.h"
	.loc 1 502 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 503 15
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 504 35
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	.loc 1 504 15
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 505 25
	movq	-8(%rbp), %rax
	.loc 1 505 37
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rdx, %rax
	.loc 1 505 23
	negq	%rax
	movq	%rax, %rdx
	.loc 1 505 10
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 506 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ptr_align, .-ptr_align
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
	jmp	.L5
.L7:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L5:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L6
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L7
.L6:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L8
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L8:
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
	je	.L9
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L9
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC14(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L9:
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
	jne	.L10
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC16(%rip), %rbx
	jmp	.L11
.L10:
	.loc 1 671 3 discriminator 2
	leaq	.LC17(%rip), %rbx
.L11:
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
	je	.L12
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L12:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	emit_ancillary_info, .-emit_ancillary_info
	.type	randint_choose, @function
randint_choose:
.LFB46:
	.file 2 "./lib/randint.h"
	.loc 2 45 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 2 46 10
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	randint_genmax@PLT
	.loc 2 47 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	randint_choose, .-randint_choose
	.section	.rodata
.LC19:
	.string	"unlink"
.LC20:
	.string	"wipe"
.LC21:
	.string	"wipesync"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	remove_args, @object
	.size	remove_args, 32
remove_args:
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	0
	.section	.rodata
	.align 8
	.type	remove_methods, @object
	.size	remove_methods, 12
remove_methods:
	.long	1
	.long	2
	.long	3
.LC22:
	.string	"exact"
.LC23:
	.string	"force"
.LC24:
	.string	"iterations"
.LC25:
	.string	"size"
.LC26:
	.string	"random-source"
.LC27:
	.string	"remove"
.LC28:
	.string	"verbose"
.LC29:
	.string	"zero"
.LC30:
	.string	"help"
.LC31:
	.string	"version"
	.section	.data.rel.ro.local
	.align 32
	.type	long_opts, @object
	.size	long_opts, 352
long_opts:
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	120
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	102
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
	.long	115
	.zero	4
	.quad	.LC26
	.long	1
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC27
	.long	2
	.zero	4
	.quad	0
	.long	117
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
	.long	122
	.zero	4
	.quad	.LC30
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC31
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
.LC32:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC33:
	.string	"Usage: %s [OPTION]... FILE...\n"
	.align 8
.LC34:
	.string	"Overwrite the specified FILE(s) repeatedly, in order to make it harder\nfor even very expensive hardware probing to recover the data.\n"
	.align 8
.LC35:
	.string	"\nIf FILE is -, shred standard output.\n"
	.align 8
.LC36:
	.ascii	"  -f,"
	.string	" --force    change permissions to allow writing if necessary\n  -n, --iterations=N  overwrite N times instead of the default (%d)\n      --random-source=FILE  get random bytes from FILE\n  -s, --size=N   shred this many bytes (suffixes like K, M, G accepted)\n"
	.align 8
.LC37:
	.ascii	"  -u             deallocate and remove file after overwritin"
	.ascii	"g\n      --remove[=HOW]  like -u but give control o"
	.string	"n HOW to delete;  See below\n  -v, --verbose  show progress\n  -x, --exact    do not round file sizes up to the next full block;\n                   this is the default for non-regular files\n  -z, --zero     add a final overwrite with zeros to hide shredding\n"
	.align 8
.LC38:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC39:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC40:
	.ascii	"\nDelete FILE(s) if --remove (-u) is specified.  The default"
	.ascii	" is not to remove\nthe files because it is common to operate"
	.ascii	" on device files like /dev/hda,\nand those files usually sho"
	.ascii	"uld not be removed.\nThe optional HOW para"
	.string	"meter indicates how to remove a directory entry:\n'unlink' => use a standard unlink call.\n'wipe' => also first obfuscate bytes in the name.\n'wipesync' => also sync each obfuscated byte to disk.\nThe default mode is 'wipesync', but note it can be expensive.\n\n"
	.align 8
.LC41:
	.ascii	"CAUTION: shred assumes the file"
	.string	" system and hardware overwrite data in place.\nAlthough this is common, many platforms operate otherwise.  Also, backups\nand mirrors may contain unremovable copies that will let a shredded file\nbe recovered later.  See the GNU coreutils manual for details.\n"
.LC42:
	.string	"shred"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB47:
	.file 3 "src/shred.c"
	.loc 3 165 1
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
	.loc 3 166 6
	cmpl	$0, -20(%rbp)
	je	.L16
	.loc 3 167 5
	movq	program_name(%rip), %rbx
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L17
.L16:
	.loc 3 170 7
	movq	program_name(%rip), %rbx
	.loc 3 170 15
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	.loc 3 170 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 171 7
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 175 7
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 180 7
	call	emit_mandatory_arg_note
	.loc 3 182 15
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	.loc 3 182 7
	movl	$3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 188 7
	movq	stdout(%rip), %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 196 7
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 197 7
	movq	stdout(%rip), %rbx
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 198 7
	movq	stdout(%rip), %rbx
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 210 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 216 7
	leaq	.LC42(%rip), %rdi
	call	emit_ancillary_info
.L17:
	.loc 3 218 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE47:
	.size	usage, .-usage
	.type	periodic_pattern, @function
periodic_pattern:
.LFB48:
	.loc 3 226 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 3 226 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 3 227 6
	cmpl	$0, -20(%rbp)
	jg	.L19
	.loc 3 228 12
	movl	$0, %eax
	jmp	.L24
.L19:
	.loc 3 231 28
	movl	-20(%rbp), %eax
	.loc 3 231 16
	andl	$4095, %eax
	movl	%eax, -16(%rbp)
	.loc 3 233 16
	movl	-16(%rbp), %eax
	sall	$12, %eax
	.loc 3 233 8
	orl	%eax, -16(%rbp)
	.loc 3 234 16
	movl	-16(%rbp), %eax
	shrl	$4, %eax
	.loc 3 234 8
	movb	%al, -11(%rbp)
	.loc 3 235 16
	movl	-16(%rbp), %eax
	shrl	$8, %eax
	.loc 3 235 8
	movb	%al, -10(%rbp)
	.loc 3 236 8
	movl	-16(%rbp), %eax
	movb	%al, -9(%rbp)
	.loc 3 238 12
	movzbl	-11(%rbp), %edx
	.loc 3 238 20
	movzbl	-10(%rbp), %eax
	.loc 3 238 25
	cmpb	%al, %dl
	jne	.L21
	.loc 3 238 30 discriminator 2
	movzbl	-11(%rbp), %edx
	.loc 3 238 38 discriminator 2
	movzbl	-9(%rbp), %eax
	.loc 3 238 25 discriminator 2
	cmpb	%al, %dl
	je	.L22
.L21:
	.loc 3 238 25 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L23
.L22:
	.loc 3 238 25 discriminator 4
	movl	$0, %eax
.L23:
	.loc 3 238 25 discriminator 6
	andl	$1, %eax
.L24:
	.loc 3 239 1 is_stmt 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L25
	.loc 3 239 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	periodic_pattern, .-periodic_pattern
	.type	fillpattern, @function
fillpattern:
.LFB49:
	.loc 3 249 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 3 251 28
	movl	-20(%rbp), %eax
	.loc 3 251 16
	andl	$4095, %eax
	movl	%eax, -12(%rbp)
	.loc 3 253 16
	movl	-12(%rbp), %eax
	sall	$12, %eax
	.loc 3 253 8
	orl	%eax, -12(%rbp)
	.loc 3 254 16
	movl	-12(%rbp), %eax
	shrl	$4, %eax
	.loc 3 254 8
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	.loc 3 255 16
	movl	-12(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	.loc 3 255 4
	movq	-32(%rbp), %rax
	addq	$1, %rax
	.loc 3 255 8
	movb	%dl, (%rax)
	.loc 3 256 4
	movq	-32(%rbp), %rax
	addq	$2, %rax
	.loc 3 256 8
	movl	-12(%rbp), %edx
	movb	%dl, (%rax)
	.loc 3 257 10
	movq	$3, -8(%rbp)
	.loc 3 257 3
	jmp	.L27
.L28:
	.loc 3 258 15 discriminator 3
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 3 258 5 discriminator 3
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 3 257 32 discriminator 3
	salq	-8(%rbp)
.L27:
	.loc 3 257 25 discriminator 1
	movq	-40(%rbp), %rax
	shrq	%rax
	.loc 3 257 3 discriminator 1
	cmpq	%rax, -8(%rbp)
	jbe	.L28
	.loc 3 259 6
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L29
	.loc 3 260 5
	movq	-40(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	.loc 3 260 15
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rax, %rcx
	.loc 3 260 5
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L29:
	.loc 3 263 12
	movl	-20(%rbp), %eax
	andl	$4096, %eax
	.loc 3 263 6
	testl	%eax, %eax
	je	.L33
	.loc 3 264 12
	movq	$0, -8(%rbp)
	.loc 3 264 5
	jmp	.L31
.L32:
	.loc 3 265 12 discriminator 3
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	$-128, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	.loc 3 264 29 discriminator 3
	addq	$512, -8(%rbp)
.L31:
	.loc 3 264 5 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L32
.L33:
	.loc 3 266 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	fillpattern, .-fillpattern
	.section	.rodata
.LC43:
	.string	"%02x%02x%02x"
.LC44:
	.string	"random"
	.text
	.type	passname, @function
passname:
.LFB50:
	.loc 3 275 1
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
	.loc 3 276 6
	cmpq	$0, -8(%rbp)
	je	.L35
	.loc 3 277 58
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 3 277 5
	movzbl	%al, %esi
	.loc 3 277 49
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 3 277 5
	movzbl	%al, %ecx
	.loc 3 277 40
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 277 5
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 3 280 1
	jmp	.L37
.L35:
	.loc 3 279 5
	movq	-16(%rbp), %rax
	movl	$7, %edx
	leaq	.LC44(%rip), %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L37:
	.loc 3 280 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	passname, .-passname
	.type	ignorable_sync_errno, @function
ignorable_sync_errno:
.LFB51:
	.loc 3 286 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 3 290 11
	cmpl	$22, -4(%rbp)
	je	.L39
	.loc 3 288 11
	cmpl	$9, -4(%rbp)
	je	.L39
	.loc 3 290 11 discriminator 2
	cmpl	$21, -4(%rbp)
	jne	.L40
.L39:
	.loc 3 290 11 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L41
.L40:
	.loc 3 290 11 discriminator 3
	movl	$0, %eax
.L41:
	.loc 3 290 11 discriminator 5
	andl	$1, %eax
	.loc 3 291 1 is_stmt 1 discriminator 5
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	ignorable_sync_errno, .-ignorable_sync_errno
	.section	.rodata
.LC45:
	.string	"%s: fdatasync failed"
.LC46:
	.string	"%s: fsync failed"
	.text
	.type	dosync, @function
dosync:
.LFB52:
	.loc 3 301 1
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
	.loc 3 305 7
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	fdatasync@PLT
	.loc 3 305 6
	testl	%eax, %eax
	jne	.L44
	.loc 3 306 12
	movl	$0, %eax
	jmp	.L45
.L44:
	.loc 3 307 9
	call	__errno_location@PLT
	.loc 3 307 7
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 3 308 10
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ignorable_sync_errno
	.loc 3 308 8
	xorl	$1, %eax
	.loc 3 308 6
	testb	%al, %al
	je	.L46
	.loc 3 310 22
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 3 310 7
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 311 7
	call	__errno_location@PLT
	.loc 3 311 13
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	.loc 3 312 14
	movl	$-1, %eax
	jmp	.L45
.L46:
	.loc 3 316 7
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	fsync@PLT
	.loc 3 316 6
	testl	%eax, %eax
	jne	.L47
	.loc 3 317 12
	movl	$0, %eax
	jmp	.L45
.L47:
	.loc 3 318 9
	call	__errno_location@PLT
	.loc 3 318 7
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	.loc 3 319 10
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ignorable_sync_errno
	.loc 3 319 8
	xorl	$1, %eax
	.loc 3 319 6
	testb	%al, %al
	je	.L48
	.loc 3 321 22
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 3 321 7
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 322 7
	call	__errno_location@PLT
	.loc 3 322 13
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	.loc 3 323 14
	movl	$-1, %eax
	jmp	.L45
.L48:
	.loc 3 326 3
	call	sync@PLT
	.loc 3 327 10
	movl	$0, %eax
.L45:
	.loc 3 328 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	dosync, .-dosync
	.type	direct_mode, @function
direct_mode:
.LFB53:
	.loc 3 334 1
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
.LBB2:
	.loc 3 337 22
	movl	-20(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	rpl_fcntl@PLT
	movl	%eax, -8(%rbp)
	.loc 3 338 10
	cmpl	$0, -8(%rbp)
	jle	.L53
.LBB3:
	.loc 3 342 28
	cmpb	$0, -24(%rbp)
	je	.L51
	.loc 3 342 28 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax
	orb	$64, %ah
	jmp	.L52
.L51:
	.loc 3 342 28 discriminator 2
	movl	-8(%rbp), %eax
	andb	$-65, %ah
.L52:
	.loc 3 340 15 is_stmt 1
	movl	%eax, -4(%rbp)
	.loc 3 343 14
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	.L53
	.loc 3 344 13
	movl	-4(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	rpl_fcntl@PLT
.L53:
.LBE3:
.LBE2:
	.loc 3 352 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	direct_mode, .-direct_mode
	.type	dorewind, @function
dorewind:
.LFB54:
	.loc 3 357 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 3 357 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 3 358 7
	movq	-48(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 3 358 6
	cmpl	$8192, %eax
	jne	.L55
.LBB4:
	.loc 3 365 16
	movw	$6, -16(%rbp)
	.loc 3 366 19
	movl	$1, -12(%rbp)
	.loc 3 367 11
	leaq	-16(%rbp), %rdx
	movl	-36(%rbp), %eax
	movl	$1074294017, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	ioctl@PLT
	.loc 3 367 10
	testl	%eax, %eax
	jne	.L55
	.loc 3 368 16
	movl	$1, %eax
	jmp	.L57
.L55:
.LBE4:
	.loc 3 371 18
	movl	-36(%rbp), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -24(%rbp)
	.loc 3 372 6
	cmpq	$0, -24(%rbp)
	jle	.L58
	.loc 3 373 5
	call	__errno_location@PLT
	.loc 3 373 11
	movl	$22, (%rax)
.L58:
	.loc 3 374 17
	cmpq	$0, -24(%rbp)
	sete	%al
.L57:
	.loc 3 375 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L59
	call	__stack_chk_fail@PLT
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	dorewind, .-dorewind
	.type	known, @function
known:
.LFB55:
	.loc 3 381 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 3 382 12
	movq	-8(%rbp), %rax
	notq	%rax
	shrq	$63, %rax
	.loc 3 383 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	known, .-known
	.section	.rodata
.LC47:
	.string	"%s: cannot rewind"
.LC48:
	.string	"%s: pass %lu/%lu (%s)..."
	.align 8
.LC49:
	.string	"%s: error writing at offset %s"
.LC50:
	.string	"%s: lseek failed"
.LC51:
	.string	"%s: file too large"
.LC52:
	.string	"%s: pass %lu/%lu (%s)...%s"
	.align 8
.LC53:
	.string	"%s: pass %lu/%lu (%s)...%s/%s %d%%"
	.text
	.type	dopass, @function
dopass:
.LFB56:
	.loc 3 399 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$2200, %rsp
	.cfi_offset 3, -24
	movl	%edi, -2164(%rbp)
	movq	%rsi, -2176(%rbp)
	movq	%rdx, -2184(%rbp)
	movq	%rcx, -2192(%rbp)
	movl	%r8d, -2168(%rbp)
	movq	%r9, -2200(%rbp)
	.loc 3 399 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 400 9
	movq	-2192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2136(%rbp)
	.loc 3 402 10
	movq	$0, -2120(%rbp)
	.loc 3 403 10
	movq	$0, -2112(%rbp)
	.loc 3 409 22
	call	getpagesize@PLT
	.loc 3 409 10
	cltq
	movq	%rax, -2064(%rbp)
	.loc 3 413 24
	movl	-2168(%rbp), %eax
	movl	%eax, %edi
	call	periodic_pattern
	.loc 3 414 47
	testb	%al, %al
	je	.L63
	.loc 3 414 47 is_stmt 0 discriminator 1
	movl	$61440, %eax
	jmp	.L64
.L63:
	.loc 3 414 47 discriminator 2
	movl	$65536, %eax
.L64:
	.loc 3 413 10 is_stmt 1
	movq	%rax, -2056(%rbp)
	.loc 3 418 37
	movq	-2056(%rbp), %rax
	addq	$2, %rax
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	shrq	%rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-2064(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 418 28
	subq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -2048(%rbp)
	.loc 3 419 25
	movq	-2064(%rbp), %rdx
	movq	-2048(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ptr_align
	movq	%rax, -2040(%rbp)
	.loc 3 422 8
	movb	$0, -2152(%rbp)
	.loc 3 423 8
	movb	$0, -2151(%rbp)
	.loc 3 427 15
	movq	$0, -2080(%rbp)
	.loc 3 432 40
	cmpq	$0, -2136(%rbp)
	jle	.L65
	.loc 3 432 48 discriminator 1
	movq	-2136(%rbp), %rax
	.loc 3 432 40 discriminator 1
	cmpq	%rax, -2056(%rbp)
	jbe	.L65
	.loc 3 432 40 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L66
.L65:
	.loc 3 432 40 discriminator 4
	movl	$0, %eax
.L66:
	.loc 3 432 8 is_stmt 1 discriminator 6
	movb	%al, -2150(%rbp)
	andb	$1, -2150(%rbp)
	.loc 3 433 7 discriminator 6
	movzbl	-2150(%rbp), %eax
	xorl	$1, %eax
	.loc 3 433 6 discriminator 6
	testb	%al, %al
	je	.L67
	.loc 3 434 5
	movl	-2164(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	direct_mode
.L67:
	.loc 3 436 9
	movq	-2176(%rbp), %rdx
	movl	-2164(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	dorewind
	.loc 3 436 7
	xorl	$1, %eax
	.loc 3 436 6
	testb	%al, %al
	je	.L68
	.loc 3 438 24
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 438 17
	call	__errno_location@PLT
	.loc 3 438 7
	movl	(%rax), %eax
	movq	-2184(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 439 19
	movb	$1, -2151(%rbp)
	.loc 3 440 7
	jmp	.L69
.L68:
	.loc 3 444 6
	cmpl	$0, -2168(%rbp)
	js	.L70
	.loc 3 446 13
	movq	-2136(%rbp), %rax
	movq	%rax, %rdi
	call	known
	.loc 3 446 60
	testb	%al, %al
	je	.L71
	.loc 3 446 36 discriminator 2
	movq	-2056(%rbp), %rax
	addq	$2, %rax
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	shrq	%rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	.loc 3 446 34 discriminator 2
	movq	-2136(%rbp), %rax
	.loc 3 446 26 discriminator 2
	cmpq	%rax, %rdx
	ja	.L72
.L71:
	.loc 3 446 62 discriminator 3
	movq	-2056(%rbp), %rax
	addq	$2, %rax
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	shrq	%rdx
	.loc 3 446 60 discriminator 3
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	jmp	.L73
.L72:
	.loc 3 446 60 is_stmt 0 discriminator 4
	movq	-2136(%rbp), %rax
.L73:
	.loc 3 446 11 is_stmt 1 discriminator 6
	movq	%rax, -2104(%rbp)
	.loc 3 447 7 discriminator 6
	movq	-2104(%rbp), %rdx
	movq	-2040(%rbp), %rcx
	movl	-2168(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	fillpattern
	.loc 3 448 7 discriminator 6
	leaq	-2007(%rbp), %rdx
	movq	-2040(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	passname
	jmp	.L74
.L70:
	.loc 3 452 7
	leaq	-2007(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	passname
.L74:
	.loc 3 456 6
	cmpq	$0, 24(%rbp)
	je	.L75
	.loc 3 458 20
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 3 458 7
	movq	24(%rbp), %rcx
	movq	-2184(%rbp), %rax
	subq	$8, %rsp
	leaq	-2007(%rbp), %rdx
	pushq	%rdx
	movq	%rcx, %r9
	movq	16(%rbp), %r8
	movq	%rax, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	addq	$16, %rsp
	.loc 3 459 16
	movl	$0, %edi
	call	time@PLT
	.loc 3 459 14
	addq	$5, %rax
	movq	%rax, -2120(%rbp)
	.loc 3 460 29
	leaq	.LC17(%rip), %rax
	movq	%rax, -2080(%rbp)
.L75:
	.loc 3 463 10
	movq	$0, -2128(%rbp)
.L106:
.LBB5:
	.loc 3 467 11
	movq	-2056(%rbp), %rax
	movq	%rax, -2104(%rbp)
	.loc 3 468 11
	movq	-2136(%rbp), %rax
	movq	%rax, %rdi
	call	known
	.loc 3 468 10
	testb	%al, %al
	je	.L76
	.loc 3 468 32 discriminator 1
	movq	-2136(%rbp), %rax
	subq	-2128(%rbp), %rax
	.loc 3 468 24 discriminator 1
	cmpq	%rax, -2056(%rbp)
	jbe	.L76
	.loc 3 470 14
	movq	-2136(%rbp), %rax
	cmpq	-2128(%rbp), %rax
	jl	.L112
	.loc 3 472 22
	movq	-2136(%rbp), %rax
	subq	-2128(%rbp), %rax
	.loc 3 472 15
	movq	%rax, -2104(%rbp)
	.loc 3 473 14
	cmpq	$0, -2104(%rbp)
	je	.L113
.L76:
	.loc 3 476 10
	cmpl	$0, -2168(%rbp)
	jns	.L79
	.loc 3 477 9
	movq	-2104(%rbp), %rdx
	movq	-2040(%rbp), %rcx
	movq	-2200(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	randread@PLT
.L79:
	.loc 3 479 17
	movq	$0, -2096(%rbp)
	.loc 3 479 7
	jmp	.L80
.L91:
	.loc 3 481 19
	movq	-2104(%rbp), %rax
	subq	-2096(%rbp), %rax
	movq	%rax, %rdx
	.loc 3 481 35
	movq	-2040(%rbp), %rcx
	movq	-2096(%rbp), %rax
	addq	%rax, %rcx
	.loc 3 481 19
	movl	-2164(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	movq	%rax, -2088(%rbp)
	.loc 3 482 14
	cmpq	$0, -2088(%rbp)
	jle	.L81
	.loc 3 483 13
	movq	-2104(%rbp), %rax
	subq	-2096(%rbp), %rax
	movq	%rax, %rdx
	movq	-2088(%rbp), %rax
	cmpq	%rax, %rdx
	jmp	.L82
.L81:
	.loc 3 486 21
	movq	-2136(%rbp), %rax
	movq	%rax, %rdi
	call	known
	.loc 3 486 19
	xorl	$1, %eax
	.loc 3 486 18
	testb	%al, %al
	je	.L83
	.loc 3 486 34 discriminator 1
	cmpq	$0, -2088(%rbp)
	je	.L84
	.loc 3 486 52 discriminator 2
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 486 49 discriminator 2
	cmpl	$28, %eax
	jne	.L83
.L84:
	.loc 3 489 41
	movabsq	$9223372036854775807, %rax
	subq	-2128(%rbp), %rax
	.loc 3 489 22
	cmpq	%rax, -2096(%rbp)
	ja	.L114
	.loc 3 490 44
	movq	-2128(%rbp), %rdx
	movq	-2096(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 490 35
	movq	%rax, -2136(%rbp)
	.loc 3 490 28
	movq	-2192(%rbp), %rax
	movq	-2136(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 3 491 19
	jmp	.L114
.L83:
.LBB6:
	.loc 3 495 32
	call	__errno_location@PLT
	.loc 3 495 23
	movl	(%rax), %eax
	movl	%eax, -2148(%rbp)
	.loc 3 502 23
	movzbl	-2150(%rbp), %eax
	xorl	$1, %eax
	.loc 3 502 22
	testb	%al, %al
	je	.L87
	.loc 3 502 49 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 502 46 discriminator 1
	cmpl	$22, %eax
	jne	.L87
	.loc 3 504 23
	movl	-2164(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	direct_mode
	.loc 3 505 29
	movq	$0, -2088(%rbp)
	.loc 3 506 44
	movb	$1, -2150(%rbp)
	.loc 3 507 23
	jmp	.L82
.L87:
	.loc 3 509 19
	movq	-2128(%rbp), %rdx
	movq	-2096(%rbp), %rax
	addq	%rax, %rdx
	leaq	-688(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rbx
	.loc 3 509 37
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 3 509 19
	movq	-2184(%rbp), %rdx
	movl	-2148(%rbp), %eax
	movq	%rbx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 519 22
	cmpl	$5, -2148(%rbp)
	jne	.L89
	.loc 3 519 40 discriminator 1
	movq	-2136(%rbp), %rax
	movq	%rax, %rdi
	call	known
	.loc 3 519 37 discriminator 1
	testb	%al, %al
	je	.L89
	.loc 3 520 32
	movq	-2096(%rbp), %rax
	orq	$511, %rax
	.loc 3 520 23
	cmpq	%rax, -2104(%rbp)
	jbe	.L89
.LBB7:
	.loc 3 522 44
	movq	-2096(%rbp), %rax
	orq	$511, %rax
	.loc 3 522 30
	addq	$1, %rax
	movq	%rax, -2032(%rbp)
	.loc 3 523 45
	movq	-2128(%rbp), %rdx
	movq	-2032(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 523 27
	movq	%rax, %rcx
	movl	-2164(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 3 523 26
	cmpq	$-1, %rax
	je	.L90
	.loc 3 526 41
	movq	-2032(%rbp), %rax
	subq	-2096(%rbp), %rax
	.loc 3 526 33
	movq	%rax, -2088(%rbp)
	.loc 3 527 39
	movb	$1, -2152(%rbp)
	.loc 3 528 27
	jmp	.L82
.L90:
	.loc 3 530 40
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 530 33
	call	__errno_location@PLT
	.loc 3 530 23
	movl	(%rax), %eax
	movq	-2184(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L89:
.LBE7:
	.loc 3 532 31
	movb	$1, -2151(%rbp)
	jmp	.L69
.L82:
.LBE6:
	.loc 3 479 39 discriminator 2
	movq	-2088(%rbp), %rax
	addq	%rax, -2096(%rbp)
.L80:
	.loc 3 479 7 discriminator 1
	movq	-2096(%rbp), %rax
	cmpq	-2104(%rbp), %rax
	jb	.L91
	jmp	.L86
.L114:
	.loc 3 491 19
	nop
.L86:
	.loc 3 540 21
	movabsq	$9223372036854775807, %rax
	subq	-2128(%rbp), %rax
	.loc 3 540 10
	cmpq	%rax, -2096(%rbp)
	jbe	.L92
	.loc 3 542 24
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 542 11
	movq	-2184(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 543 23
	movb	$1, -2151(%rbp)
	.loc 3 544 11
	jmp	.L69
.L92:
	.loc 3 547 14
	movq	-2128(%rbp), %rdx
	movq	-2096(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -2128(%rbp)
	.loc 3 549 12
	movq	-2128(%rbp), %rax
	cmpq	-2136(%rbp), %rax
	sete	%al
	movb	%al, -2149(%rbp)
	.loc 3 552 10
	cmpq	$0, 24(%rbp)
	je	.L106
	.loc 3 552 13 discriminator 1
	cmpb	$0, -2149(%rbp)
	je	.L94
	.loc 3 552 26 discriminator 2
	movq	-2080(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 552 23 discriminator 2
	testb	%al, %al
	jne	.L95
.L94:
	.loc 3 553 37
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -2112(%rbp)
	.loc 3 553 17
	movq	-2112(%rbp), %rax
	cmpq	-2120(%rbp), %rax
	jl	.L106
.L95:
.LBB8:
	.loc 3 557 15
	movl	$432, -2144(%rbp)
	.loc 3 560 15
	movl	-2144(%rbp), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-2128(%rbp), %rax
	leaq	-1344(%rbp), %rsi
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	human_readable@PLT
	movq	%rax, -2072(%rbp)
	.loc 3 563 14
	cmpb	$0, -2149(%rbp)
	jne	.L96
	.loc 3 563 24 discriminator 1
	movq	-2072(%rbp), %rdx
	movq	-2080(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 563 20 discriminator 1
	testl	%eax, %eax
	je	.L106
.L96:
	.loc 3 565 21
	movq	-2136(%rbp), %rax
	movq	%rax, %rdi
	call	known
	.loc 3 565 19
	xorl	$1, %eax
	.loc 3 565 18
	testb	%al, %al
	je	.L98
	.loc 3 566 30
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 3 566 17
	movq	24(%rbp), %rcx
	movq	-2184(%rbp), %rax
	pushq	-2072(%rbp)
	leaq	-2007(%rbp), %rdx
	pushq	%rdx
	movq	%rcx, %r9
	movq	16(%rbp), %r8
	movq	%rax, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	addq	$16, %rsp
	jmp	.L99
.L98:
.LBB9:
	.loc 3 570 29
	movq	-2128(%rbp), %rax
	movq	%rax, -2024(%rbp)
	.loc 3 571 23
	cmpq	$0, -2136(%rbp)
	je	.L100
	.loc 3 571 23 is_stmt 0 discriminator 1
	movabsq	$184467440737095516, %rax
	cmpq	%rax, -2024(%rbp)
	ja	.L101
	.loc 3 574 43 is_stmt 1 discriminator 3
	movq	-2024(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	.loc 3 574 49 discriminator 3
	movq	-2136(%rbp), %rbx
	movl	$0, %edx
	divq	%rbx
	jmp	.L103
.L101:
	.loc 3 575 51 discriminator 4
	movq	-2136(%rbp), %rcx
	movabsq	$-6640827866535438581, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	leaq	(%rdx,%rcx), %rax
	sarq	$6, %rax
	movq	%rax, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rbx
	.loc 3 575 43 discriminator 4
	movq	-2024(%rbp), %rax
	movl	$0, %edx
	divq	%rbx
	jmp	.L103
.L100:
	.loc 3 571 23 discriminator 2
	movl	$100, %eax
.L103:
	.loc 3 571 23 is_stmt 0 discriminator 8
	movl	%eax, -2140(%rbp)
	.loc 3 577 23 is_stmt 1 discriminator 8
	movq	-2136(%rbp), %rax
	movl	-2144(%rbp), %edx
	leaq	-688(%rbp), %rsi
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	human_readable@PLT
	movq	%rax, -2016(%rbp)
	.loc 3 580 22 discriminator 8
	cmpb	$0, -2149(%rbp)
	je	.L104
	.loc 3 581 34
	movq	-2016(%rbp), %rax
	movq	%rax, -2072(%rbp)
.L104:
	.loc 3 582 32
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 3 582 19
	movq	24(%rbp), %rcx
	movq	-2184(%rbp), %rax
	movl	-2140(%rbp), %edx
	pushq	%rdx
	pushq	-2016(%rbp)
	pushq	-2072(%rbp)
	leaq	-2007(%rbp), %rdx
	pushq	%rdx
	movq	%rcx, %r9
	movq	16(%rbp), %r8
	movq	%rax, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	addq	$32, %rsp
.L99:
.LBE9:
	.loc 3 587 15
	movq	-2072(%rbp), %rdx
	leaq	-2000(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 3 588 37
	leaq	-2000(%rbp), %rax
	movq	%rax, -2080(%rbp)
	.loc 3 589 22
	movq	-2112(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -2120(%rbp)
	.loc 3 598 19
	movq	-2184(%rbp), %rdx
	movl	-2164(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	dosync
	.loc 3 598 18
	testl	%eax, %eax
	je	.L106
	.loc 3 600 23
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 600 22
	cmpl	$5, %eax
	je	.L105
	.loc 3 602 35
	movb	$1, -2151(%rbp)
	jmp	.L69
.L105:
	.loc 3 605 31
	movb	$1, -2152(%rbp)
.LBE8:
.LBE5:
	.loc 3 465 5
	jmp	.L106
.L112:
.LBB10:
	.loc 3 471 13
	nop
	jmp	.L78
.L113:
	.loc 3 474 13
	nop
.L78:
.LBE10:
	.loc 3 612 7
	movq	-2184(%rbp), %rdx
	movl	-2164(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	dosync
	.loc 3 612 6
	testl	%eax, %eax
	je	.L115
	.loc 3 614 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 614 10
	cmpl	$5, %eax
	je	.L107
	.loc 3 616 23
	movb	$1, -2151(%rbp)
	.loc 3 617 11
	jmp	.L69
.L107:
	.loc 3 619 19
	movb	$1, -2152(%rbp)
	jmp	.L69
.L115:
	.loc 3 622 1
	nop
.L69:
	.loc 3 623 3
	movq	-2048(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 625 27
	cmpb	$0, -2151(%rbp)
	je	.L108
	.loc 3 625 27 is_stmt 0 discriminator 1
	movl	$-1, %eax
	jmp	.L110
.L108:
	.loc 3 625 27 discriminator 2
	movzbl	-2152(%rbp), %eax
.L110:
	.loc 3 626 1 is_stmt 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L111
	call	__stack_chk_fail@PLT
.L111:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	dopass, .-dopass
	.section	.rodata
	.align 32
	.type	patterns, @object
	.size	patterns, 220
patterns:
	.long	-2
	.long	2
	.long	0
	.long	4095
	.long	2
	.long	1365
	.long	2730
	.long	-1
	.long	6
	.long	585
	.long	1170
	.long	1755
	.long	2340
	.long	2925
	.long	3510
	.long	12
	.long	273
	.long	546
	.long	819
	.long	1092
	.long	1638
	.long	1911
	.long	2184
	.long	2457
	.long	3003
	.long	3276
	.long	3549
	.long	3822
	.long	-1
	.long	8
	.long	4096
	.long	4681
	.long	5266
	.long	5851
	.long	6436
	.long	7021
	.long	7606
	.long	8191
	.long	14
	.long	4369
	.long	4642
	.long	4915
	.long	5188
	.long	5461
	.long	5734
	.long	6007
	.long	6280
	.long	6553
	.long	6826
	.long	7099
	.long	7372
	.long	7645
	.long	7918
	.long	-1
	.long	0
	.text
	.type	genpattern, @function
genpattern:
.LFB57:
	.loc 3 709 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	.loc 3 717 6
	cmpq	$0, -80(%rbp)
	je	.L134
	.loc 3 721 5
	leaq	patterns(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 3 722 14
	movq	$0, -56(%rbp)
	.loc 3 723 5
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 3 724 5
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
.L129:
	.loc 3 728 13
	movq	-48(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -48(%rbp)
	.loc 3 728 9
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	.loc 3 729 10
	cmpl	$0, -60(%rbp)
	jne	.L119
	.loc 3 731 13
	leaq	patterns(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	.L129
.L119:
	.loc 3 733 15
	cmpl	$0, -60(%rbp)
	jns	.L121
	.loc 3 735 13
	negl	-60(%rbp)
	.loc 3 736 15
	movl	-60(%rbp), %eax
	cltq
	.loc 3 736 14
	cmpq	%rax, -32(%rbp)
	ja	.L122
	.loc 3 738 26
	movq	-32(%rbp), %rax
	addq	%rax, -56(%rbp)
	.loc 3 739 15
	jmp	.L123
.L122:
	.loc 3 741 22
	movl	-60(%rbp), %eax
	cltq
	addq	%rax, -56(%rbp)
	.loc 3 742 13
	movl	-60(%rbp), %eax
	cltq
	subq	%rax, -32(%rbp)
	jmp	.L129
.L121:
	.loc 3 744 16
	movl	-60(%rbp), %eax
	cltq
	.loc 3 744 15
	cmpq	%rax, -32(%rbp)
	jb	.L124
	.loc 3 746 11
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 3 747 13
	movl	-60(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -48(%rbp)
	.loc 3 748 13
	movl	-60(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, -40(%rbp)
	.loc 3 749 13
	movl	-60(%rbp), %eax
	cltq
	subq	%rax, -32(%rbp)
	jmp	.L129
.L124:
	.loc 3 751 15
	cmpq	$1, -32(%rbp)
	jbe	.L125
	.loc 3 751 27 discriminator 1
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	.loc 3 751 31 discriminator 1
	movl	-60(%rbp), %eax
	cltq
	.loc 3 751 22 discriminator 1
	cmpq	%rax, %rdx
	jnb	.L126
.L125:
	.loc 3 753 22
	movq	-32(%rbp), %rax
	addq	%rax, -56(%rbp)
	.loc 3 754 11
	jmp	.L123
.L126:
	.loc 3 760 24
	movl	-60(%rbp), %eax
	cltq
	.loc 3 760 18
	cmpq	%rax, -32(%rbp)
	je	.L127
	.loc 3 760 38 discriminator 1
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	randint_choose
	.loc 3 760 35 discriminator 1
	cmpq	%rax, -32(%rbp)
	jbe	.L128
.L127:
	.loc 3 762 21
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 3 762 26
	movq	-48(%rbp), %rdx
	movl	(%rdx), %edx
	.loc 3 762 24
	movl	%edx, (%rax)
	.loc 3 763 20
	subq	$1, -32(%rbp)
.L128:
	.loc 3 765 16
	addq	$4, -48(%rbp)
	.loc 3 766 16
	subl	$1, -60(%rbp)
	.loc 3 768 11
	cmpq	$0, -32(%rbp)
	jne	.L126
.L123:
	.loc 3 772 7
	movq	-80(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 3 795 13
	subq	$1, -56(%rbp)
	.loc 3 796 9
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 3 797 10
	movq	$0, -32(%rbp)
	.loc 3 797 3
	jmp	.L130
.L133:
	.loc 3 799 10
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	ja	.L131
	.loc 3 801 17
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	.loc 3 802 29
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 3 802 19
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 3 802 15
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 802 29
	movl	(%rcx), %eax
	.loc 3 802 23
	movl	%eax, (%rdx)
	.loc 3 803 15
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 803 19
	movl	$-1, (%rax)
	jmp	.L132
.L131:
	.loc 3 807 22
	movq	-16(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	randint_choose
	.loc 3 807 16
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 3 808 19
	movq	-32(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 808 13
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	.loc 3 809 25
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 809 15
	movq	-32(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 3 809 25
	movl	(%rax), %eax
	.loc 3 809 19
	movl	%eax, (%rdx)
	.loc 3 810 15
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 810 22
	movl	-60(%rbp), %eax
	movl	%eax, (%rdx)
.L132:
	.loc 3 812 13 discriminator 2
	movq	-56(%rbp), %rax
	subq	%rax, -24(%rbp)
	.loc 3 797 25 discriminator 2
	addq	$1, -32(%rbp)
.L130:
	.loc 3 797 3 discriminator 1
	movq	-32(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L133
	jmp	.L116
.L134:
	.loc 3 718 5
	nop
.L116:
	.loc 3 815 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	genpattern, .-genpattern
	.section	.rodata
.LC54:
	.string	"%s: fstat failed"
.LC55:
	.string	"%s: invalid file type"
.LC56:
	.string	"%s: file has negative size"
.LC57:
	.string	"%s: error truncating"
	.text
	.type	do_wipefd, @function
do_wipefd:
.LFB58:
	.loc 3 824 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 3, -24
	movl	%edi, -276(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movq	%rcx, -304(%rbp)
	.loc 3 824 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 828 9
	movq	$0, -232(%rbp)
	.loc 3 831 8
	movb	$1, -265(%rbp)
	.loc 3 834 5
	movq	$0, -224(%rbp)
	.loc 3 835 12
	movq	-304(%rbp), %rax
	movzbl	28(%rax), %eax
	.loc 3 835 6
	testb	%al, %al
	je	.L136
	.loc 3 836 14
	movq	-304(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 3 836 36
	movq	-304(%rbp), %rax
	movzbl	30(%rax), %eax
	movzbl	%al, %eax
	.loc 3 836 7
	addq	%rdx, %rax
	movq	%rax, -224(%rbp)
.L136:
	.loc 3 838 7
	leaq	-176(%rbp), %rdx
	movl	-276(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	.loc 3 838 6
	testl	%eax, %eax
	je	.L137
	.loc 3 840 24
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 840 17
	call	__errno_location@PLT
	.loc 3 840 7
	movl	(%rax), %eax
	movq	-288(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 841 14
	movl	$0, %eax
	jmp	.L166
.L137:
	.loc 3 847 8
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 847 6
	cmpl	$8192, %eax
	jne	.L139
	.loc 3 847 32 discriminator 1
	movl	-276(%rbp), %eax
	movl	%eax, %edi
	call	isatty@PLT
	.loc 3 847 29 discriminator 1
	testl	%eax, %eax
	jne	.L140
.L139:
	.loc 3 848 10
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 848 7
	cmpl	$4096, %eax
	je	.L140
	.loc 3 849 10
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 849 7
	cmpl	$49152, %eax
	jne	.L141
.L140:
	.loc 3 851 20
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 851 7
	movq	-288(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 852 14
	movl	$0, %eax
	jmp	.L166
.L141:
	.loc 3 854 12
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 854 11
	cmpl	$32768, %eax
	jne	.L142
	.loc 3 854 38 discriminator 1
	movq	-128(%rbp), %rax
	.loc 3 854 33 discriminator 1
	testq	%rax, %rax
	jns	.L142
	.loc 3 856 20
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 856 7
	movq	-288(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 857 14
	movl	$0, %eax
	jmp	.L166
.L142:
	.loc 3 861 15
	movq	-304(%rbp), %rax
	movq	8(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -208(%rbp)
	.loc 3 863 8
	movq	-304(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -240(%rbp)
	.loc 3 864 6
	cmpq	$-1, -240(%rbp)
	jne	.L143
	.loc 3 866 11
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 866 10
	cmpl	$32768, %eax
	jne	.L144
	.loc 3 868 16
	movq	-128(%rbp), %rax
	movq	%rax, -240(%rbp)
	.loc 3 870 22
	movq	-304(%rbp), %rax
	movzbl	29(%rax), %eax
	.loc 3 870 15
	xorl	$1, %eax
	.loc 3 870 14
	testb	%al, %al
	je	.L145
.LBB11:
	.loc 3 873 40
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	jle	.L146
	.loc 3 873 40 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L146
	.loc 3 873 40 discriminator 3
	movq	-120(%rbp), %rbx
	jmp	.L147
.L146:
	.loc 3 873 40 discriminator 4
	movl	$512, %ebx
.L147:
	.loc 3 873 21 is_stmt 1 discriminator 6
	movq	-240(%rbp), %rax
	cqto
	idivq	%rbx
	movq	%rdx, %rcx
	movq	%rcx, -200(%rbp)
	.loc 3 874 18 discriminator 6
	cmpq	$0, -240(%rbp)
	je	.L148
	.loc 3 874 34 discriminator 1
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	jle	.L149
	.loc 3 874 34 is_stmt 0 discriminator 2
	movq	-120(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L149
	.loc 3 874 34 discriminator 4
	movq	-120(%rbp), %rax
	jmp	.L150
.L149:
	.loc 3 874 34 discriminator 5
	movl	$512, %eax
.L150:
	.loc 3 874 24 is_stmt 1 discriminator 7
	cmpq	-240(%rbp), %rax
	jle	.L148
	.loc 3 875 24
	movq	-240(%rbp), %rax
	movq	%rax, -232(%rbp)
.L148:
	.loc 3 876 18
	cmpq	$0, -200(%rbp)
	je	.L145
.LBB12:
	.loc 3 878 37
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	jle	.L151
	.loc 3 878 37 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L151
	.loc 3 878 37 discriminator 3
	movq	-120(%rbp), %rax
	jmp	.L152
.L151:
	.loc 3 878 37 discriminator 4
	movl	$512, %eax
.L152:
	.loc 3 878 25 is_stmt 1 discriminator 6
	subq	-200(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 3 879 27 discriminator 6
	movabsq	$9223372036854775807, %rax
	subq	-240(%rbp), %rax
	cmpq	%rax, -192(%rbp)
	cmovle	-192(%rbp), %rax
	.loc 3 879 24 discriminator 6
	addq	%rax, -240(%rbp)
	jmp	.L145
.L144:
.LBE12:
.LBE11:
	.loc 3 888 18
	movl	-276(%rbp), %eax
	movl	$2, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -240(%rbp)
	.loc 3 889 14
	cmpq	$0, -240(%rbp)
	jg	.L145
	.loc 3 893 20
	movq	$-1, -240(%rbp)
	jmp	.L145
.L143:
	.loc 3 897 12
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 897 11
	cmpl	$32768, %eax
	jne	.L145
	.loc 3 898 17
	movq	-128(%rbp), %rcx
	.loc 3 898 28
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	jle	.L153
	.loc 3 898 28 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L153
	.loc 3 898 28 discriminator 3
	movq	-120(%rbp), %rax
	jmp	.L154
.L153:
	.loc 3 898 28 discriminator 4
	movl	$512, %eax
.L154:
	.loc 3 898 28 discriminator 6
	movq	-240(%rbp), %rdx
	cmpq	%rdx, %rax
	cmovg	%rdx, %rax
	.loc 3 898 12 is_stmt 1 discriminator 6
	cmpq	%rax, %rcx
	jge	.L145
	.loc 3 899 12
	movq	-128(%rbp), %rax
	movq	%rax, -232(%rbp)
.L145:
	.loc 3 902 3
	movq	-304(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-296(%rbp), %rdx
	movq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	genpattern
	.loc 3 904 8
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	randint_get_source@PLT
	movq	%rax, -184(%rbp)
.L165:
.LBB13:
	.loc 3 909 25
	movq	-224(%rbp), %rax
	movq	%rax, -216(%rbp)
	.loc 3 911 10
	cmpq	$0, -232(%rbp)
	je	.L155
	.loc 3 913 21
	movq	-232(%rbp), %rax
	movq	%rax, -256(%rbp)
	.loc 3 914 18
	movq	$0, -232(%rbp)
	.loc 3 915 14
	movq	$0, -216(%rbp)
	jmp	.L156
.L155:
	.loc 3 917 15
	cmpq	$0, -240(%rbp)
	je	.L157
	.loc 3 919 21
	movq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	.loc 3 920 16
	movq	$0, -240(%rbp)
	jmp	.L156
.L157:
.LBE13:
	.loc 3 949 12
	movq	-304(%rbp), %rax
	movl	24(%rax), %eax
	.loc 3 949 6
	testl	%eax, %eax
	jne	.L158
	.loc 3 957 1
	jmp	.L169
.L156:
.LBB15:
	.loc 3 928 14
	movq	$0, -248(%rbp)
	.loc 3 928 7
	jmp	.L160
.L164:
.LBB14:
	.loc 3 930 15
	movl	$0, -264(%rbp)
	.loc 3 931 31
	movq	-304(%rbp), %rax
	movq	8(%rax), %rax
	.loc 3 931 61
	cmpq	%rax, -248(%rbp)
	jnb	.L161
	.loc 3 931 57 discriminator 1
	movq	-248(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 931 61 discriminator 1
	movl	(%rax), %eax
	jmp	.L162
.L161:
	.loc 3 931 61 is_stmt 0 discriminator 2
	movl	$0, %eax
.L162:
	.loc 3 931 15 is_stmt 1 discriminator 4
	movl	%eax, -260(%rbp)
	.loc 3 933 17 discriminator 4
	movq	-248(%rbp), %rax
	leaq	1(%rax), %rdi
	movq	-184(%rbp), %r9
	movl	-260(%rbp), %r8d
	leaq	-256(%rbp), %rcx
	movq	-288(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	movl	-276(%rbp), %eax
	pushq	-216(%rbp)
	pushq	%rdi
	movl	%eax, %edi
	call	dopass
	addq	$16, %rsp
	movl	%eax, -264(%rbp)
	.loc 3 935 14 discriminator 4
	cmpl	$0, -264(%rbp)
	je	.L163
	.loc 3 937 18
	movb	$0, -265(%rbp)
	.loc 3 938 18
	cmpl	$0, -264(%rbp)
	js	.L168
.L163:
.LBE14:
	.loc 3 928 64 discriminator 2
	addq	$1, -248(%rbp)
.L160:
	.loc 3 928 28 discriminator 1
	movq	-304(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 3 928 50 discriminator 1
	movq	-304(%rbp), %rax
	movzbl	30(%rax), %eax
	movzbl	%al, %eax
	.loc 3 928 43 discriminator 1
	addq	%rdx, %rax
	.loc 3 928 7 discriminator 1
	cmpq	%rax, -248(%rbp)
	jb	.L164
.LBE15:
	.loc 3 907 5
	jmp	.L165
.L158:
	.loc 3 949 29 discriminator 1
	movl	-276(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	ftruncate@PLT
	.loc 3 949 26 discriminator 1
	testl	%eax, %eax
	je	.L169
	.loc 3 950 11
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 3 950 7
	cmpl	$32768, %eax
	jne	.L169
	.loc 3 952 24
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 952 17
	call	__errno_location@PLT
	.loc 3 952 7
	movl	(%rax), %eax
	movq	-288(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 953 10
	movb	$0, -265(%rbp)
	.loc 3 954 7
	jmp	.L159
.L168:
.LBB16:
	.loc 3 939 17
	nop
	jmp	.L159
.L169:
.LBE16:
	.loc 3 957 1
	nop
.L159:
	.loc 3 958 3
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 959 10
	movzbl	-265(%rbp), %eax
.L166:
	.loc 3 960 1 discriminator 3
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L167
	.loc 3 960 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L167:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	do_wipefd, .-do_wipefd
	.section	.rodata
.LC58:
	.string	"%s: fcntl failed"
	.align 8
.LC59:
	.string	"%s: cannot shred append-only file descriptor"
	.text
	.type	wipefd, @function
wipefd:
.LFB59:
	.loc 3 966 1 is_stmt 1
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
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	.loc 3 967 18
	movl	-36(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	rpl_fcntl@PLT
	movl	%eax, -20(%rbp)
	.loc 3 969 6
	cmpl	$0, -20(%rbp)
	jns	.L171
	.loc 3 971 24
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 971 17
	call	__errno_location@PLT
	.loc 3 971 7
	movl	(%rax), %eax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 972 14
	movl	$0, %eax
	jmp	.L172
.L171:
	.loc 3 974 16
	movl	-20(%rbp), %eax
	andl	$1024, %eax
	.loc 3 974 6
	testl	%eax, %eax
	je	.L173
	.loc 3 976 20
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 976 7
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 977 14
	movl	$0, %eax
	jmp	.L172
.L173:
	.loc 3 979 10
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	do_wipefd
.L172:
	.loc 3 980 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	wipefd, .-wipefd
	.section	.rodata
	.align 32
	.type	nameset, @object
	.size	nameset, 65
nameset:
	.string	"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_."
.LC60:
	.string	"src/shred.c"
.LC61:
	.string	"p"
	.text
	.type	incname, @function
incname:
.LFB60:
	.loc 3 995 1
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
	.loc 3 996 9
	jmp	.L175
.L179:
.LBB17:
	.loc 3 998 44
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 3 998 23
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	nameset(%rip), %rdi
	call	strchr@PLT
	movq	%rax, -8(%rbp)
	.loc 3 1002 7
	cmpq	$0, -8(%rbp)
	jne	.L176
	.loc 3 1002 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6664(%rip), %rcx
	movl	$1002, %edx
	leaq	.LC60(%rip), %rsi
	leaq	.LC61(%rip), %rdi
	call	__assert_fail@PLT
.L176:
	.loc 3 1005 12 is_stmt 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 3 1005 10
	testb	%al, %al
	je	.L177
	.loc 3 1007 15
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 1007 21
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %eax
	movb	%al, (%rdx)
	.loc 3 1008 18
	movl	$1, %eax
	jmp	.L178
.L177:
	.loc 3 1012 11
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1012 26
	movl	$48, %edx
	.loc 3 1012 17
	movb	%dl, (%rax)
.L175:
.LBE17:
	.loc 3 996 13
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	.loc 3 996 9
	testq	%rax, %rax
	jne	.L179
	.loc 3 1015 10
	movl	$0, %eax
.L178:
	.loc 3 1016 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	incname, .-incname
	.section	.rodata
.LC62:
	.string	"%s: removing"
.LC63:
	.string	"%s: renamed to %s"
.LC64:
	.string	"%s: failed to remove"
.LC65:
	.string	"%s: removed"
.LC66:
	.string	"%s: failed to close"
	.text
	.type	wipename, @function
wipename:
.LFB61:
	.loc 3 1046 1
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
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	.loc 3 1047 19
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -56(%rbp)
	.loc 3 1048 16
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	movq	%rax, -48(%rbp)
	.loc 3 1049 15
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	dir_name@PLT
	movq	%rax, -40(%rbp)
	.loc 3 1050 25
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	.loc 3 1050 16
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -32(%rbp)
	.loc 3 1051 8
	movb	$1, -71(%rbp)
	.loc 3 1052 8
	movb	$1, -70(%rbp)
	.loc 3 1053 7
	movl	$-1, -68(%rbp)
	.loc 3 1055 12
	movq	-104(%rbp), %rax
	movl	24(%rax), %eax
	.loc 3 1055 6
	cmpl	$3, %eax
	jne	.L181
	.loc 3 1056 14
	movq	-40(%rbp), %rax
	movl	$67840, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open_safer@PLT
	movl	%eax, -68(%rbp)
.L181:
	.loc 3 1058 12
	movq	-104(%rbp), %rax
	movzbl	28(%rax), %eax
	.loc 3 1058 6
	testb	%al, %al
	je	.L182
	.loc 3 1059 18
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 1059 5
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L182:
	.loc 3 1061 12
	movq	-104(%rbp), %rax
	movl	24(%rax), %eax
	.loc 3 1061 6
	cmpl	$1, %eax
	je	.L183
.LBB18:
	.loc 3 1062 23
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	base_len@PLT
	movq	%rax, -64(%rbp)
	.loc 3 1062 5
	jmp	.L184
.L193:
.LBB19:
	.loc 3 1064 30
	movl	$48, %eax
	.loc 3 1064 9
	movsbl	%al, %ecx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 3 1065 13
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1065 19
	movb	$0, (%rax)
	.loc 3 1067 15
	jmp	.L185
.L187:
	.loc 3 1071 11
	nop
.L185:
	.loc 3 1067 32
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$-100, %edx
	movq	%rax, %rsi
	movl	$-100, %edi
	call	renameatu@PLT
	.loc 3 1067 29
	testl	%eax, %eax
	sete	%al
	movb	%al, -69(%rbp)
	.loc 3 1067 16
	movzbl	-69(%rbp), %eax
	xorl	$1, %eax
	.loc 3 1067 15
	testb	%al, %al
	je	.L186
	.loc 3 1070 19
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 1070 16
	cmpl	$17, %eax
	jne	.L186
	.loc 3 1070 38 discriminator 1
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	incname
	.loc 3 1070 35 discriminator 1
	testb	%al, %al
	jne	.L187
.L186:
	.loc 3 1072 12
	cmpb	$0, -69(%rbp)
	je	.L188
	.loc 3 1074 16
	cmpl	$0, -68(%rbp)
	js	.L189
	.loc 3 1074 32 discriminator 1
	movq	-32(%rbp), %rdx
	movl	-68(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	dosync
	.loc 3 1074 29 discriminator 1
	testl	%eax, %eax
	je	.L189
	.loc 3 1075 18
	movb	$0, -70(%rbp)
.L189:
	.loc 3 1076 22
	movq	-104(%rbp), %rax
	movzbl	28(%rax), %eax
	.loc 3 1076 16
	testb	%al, %al
	je	.L190
.LBB20:
	.loc 3 1082 52
	cmpb	$0, -71(%rbp)
	je	.L191
	.loc 3 1082 52 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax
	jmp	.L192
.L191:
	.loc 3 1082 52 discriminator 2
	movq	-88(%rbp), %rax
.L192:
	.loc 3 1082 29 is_stmt 1 discriminator 4
	movq	%rax, -24(%rbp)
	.loc 3 1084 24 discriminator 4
	leaq	.LC63(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 1083 17 discriminator 4
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1085 23 discriminator 4
	movb	$0, -71(%rbp)
.L190:
.LBE20:
	.loc 3 1087 13
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 3 1087 37
	movq	-48(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rcx
	.loc 3 1087 29
	movq	-88(%rbp), %rax
	addq	%rax, %rcx
	.loc 3 1087 13
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L188:
.LBE19:
	.loc 3 1062 53 discriminator 2
	subq	$1, -64(%rbp)
.L184:
	.loc 3 1062 5 discriminator 1
	cmpq	$0, -64(%rbp)
	jne	.L193
.L183:
.LBE18:
	.loc 3 1091 7
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	unlink@PLT
	.loc 3 1091 6
	testl	%eax, %eax
	je	.L194
	.loc 3 1093 24
	leaq	.LC64(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 1093 17
	call	__errno_location@PLT
	.loc 3 1093 7
	movl	(%rax), %eax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1094 10
	movb	$0, -70(%rbp)
	jmp	.L195
.L194:
	.loc 3 1096 17
	movq	-104(%rbp), %rax
	movzbl	28(%rax), %eax
	.loc 3 1096 11
	testb	%al, %al
	je	.L195
	.loc 3 1097 18
	leaq	.LC65(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 1097 5
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L195:
	.loc 3 1098 6
	cmpl	$0, -68(%rbp)
	js	.L196
	.loc 3 1100 11
	movq	-32(%rbp), %rdx
	movl	-68(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	dosync
	.loc 3 1100 10
	testl	%eax, %eax
	je	.L197
	.loc 3 1101 12
	movb	$0, -70(%rbp)
.L197:
	.loc 3 1102 11
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 3 1102 10
	testl	%eax, %eax
	je	.L196
	.loc 3 1104 28
	leaq	.LC66(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 1104 21
	call	__errno_location@PLT
	.loc 3 1104 11
	movl	(%rax), %eax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1105 14
	movb	$0, -70(%rbp)
.L196:
	.loc 3 1108 3
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 1109 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 1110 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 1111 10
	movzbl	-70(%rbp), %eax
	.loc 3 1112 1
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	wipename, .-wipename
	.section	.rodata
	.align 8
.LC67:
	.string	"%s: failed to open for writing"
	.text
	.type	wipefile, @function
wipefile:
.LFB62:
	.loc 3 1129 1
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
	movq	%rcx, -64(%rbp)
	.loc 3 1133 8
	movq	-40(%rbp), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open_safer@PLT
	movl	%eax, -20(%rbp)
	.loc 3 1134 6
	cmpl	$0, -20(%rbp)
	jns	.L200
	.loc 3 1135 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 3 1135 7
	cmpl	$13, %eax
	jne	.L200
	.loc 3 1135 35 discriminator 1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 1135 27 discriminator 1
	testb	%al, %al
	je	.L200
	.loc 3 1136 10
	movq	-40(%rbp), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	chmod@PLT
	.loc 3 1136 7
	testl	%eax, %eax
	jne	.L200
	.loc 3 1137 10
	movq	-40(%rbp), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open_safer@PLT
	movl	%eax, -20(%rbp)
.L200:
	.loc 3 1138 6
	cmpl	$0, -20(%rbp)
	jns	.L201
	.loc 3 1140 24
	leaq	.LC67(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 1140 17
	call	__errno_location@PLT
	.loc 3 1140 7
	movl	(%rax), %eax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1141 14
	movl	$0, %eax
	jmp	.L202
.L201:
	.loc 3 1144 8
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	do_wipefd
	movb	%al, -21(%rbp)
	.loc 3 1145 7
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 3 1145 6
	testl	%eax, %eax
	je	.L203
	.loc 3 1147 24
	leaq	.LC66(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 1147 17
	call	__errno_location@PLT
	.loc 3 1147 7
	movl	(%rax), %eax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1148 10
	movb	$0, -21(%rbp)
.L203:
	.loc 3 1150 6
	cmpb	$0, -21(%rbp)
	je	.L204
	.loc 3 1150 18 discriminator 1
	movq	-64(%rbp), %rax
	movl	24(%rax), %eax
	.loc 3 1150 10 discriminator 1
	testl	%eax, %eax
	je	.L204
	.loc 3 1151 10
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	wipename
	movb	%al, -21(%rbp)
.L204:
	.loc 3 1152 10
	movzbl	-21(%rbp), %eax
.L202:
	.loc 3 1153 1
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	wipefile, .-wipefile
	.local	randint_source
	.comm	randint_source,8,8
	.type	clear_random_data, @function
clear_random_data:
.LFB63:
	.loc 3 1164 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 3 1165 3
	movq	randint_source(%rip), %rax
	movq	%rax, %rdi
	call	randint_all_free@PLT
	.loc 3 1166 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	clear_random_data, .-clear_random_data
	.section	.rodata
.LC68:
	.string	"/usr/local/share/locale"
.LC69:
	.string	"invalid number of passes"
	.align 8
.LC70:
	.string	"multiple random sources specified"
.LC71:
	.string	"--remove"
.LC72:
	.string	"invalid file size"
.LC73:
	.string	"cbBkKMGTPEZY0"
.LC74:
	.string	"Colin Plumb"
.LC75:
	.string	"fn:s:uvxz"
.LC76:
	.string	"missing file operand"
.LC77:
	.string	"getrandom"
.LC78:
	.string	"%s"
.LC79:
	.string	"-"
	.text
	.globl	main
	.type	main, @function
main:
.LFB64:
	.loc 3 1171 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	.loc 3 1171 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 1172 8
	movb	$1, -101(%rbp)
	.loc 3 1173 18
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	.loc 3 1178 15
	movq	$0, -88(%rbp)
	.loc 3 1181 3
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 3 1182 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 3 1183 3
	leaq	.LC68(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 3 1184 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 3 1186 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 3 1188 22
	movq	$3, -56(%rbp)
	.loc 3 1189 14
	movq	$-1, -48(%rbp)
	.loc 3 1191 9
	jmp	.L207
.L224:
	.loc 3 1193 7
	cmpl	$128, -96(%rbp)
	jg	.L208
	cmpl	$102, -96(%rbp)
	jge	.L209
	cmpl	$-131, -96(%rbp)
	je	.L210
	cmpl	$-130, -96(%rbp)
	je	.L211
	jmp	.L208
.L209:
	movl	-96(%rbp), %eax
	subl	$102, %eax
	cmpl	$26, %eax
	ja	.L208
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L213(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L213(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L213:
	.long	.L220-.L213
	.long	.L208-.L213
	.long	.L208-.L213
	.long	.L208-.L213
	.long	.L208-.L213
	.long	.L208-.L213
	.long	.L208-.L213
	.long	.L208-.L213
	.long	.L219-.L213
	.long	.L208-.L213
	.long	.L208-.L213
	.long	.L208-.L213
	.long	.L208-.L213
	.long	.L218-.L213
	.long	.L208-.L213
	.long	.L217-.L213
	.long	.L216-.L213
	.long	.L208-.L213
	.long	.L215-.L213
	.long	.L208-.L213
	.long	.L214-.L213
	.long	.L208-.L213
	.long	.L208-.L213
	.long	.L208-.L213
	.long	.L208-.L213
	.long	.L208-.L213
	.long	.L212-.L213
	.text
.L220:
	.loc 3 1196 23
	movb	$1, -64(%rbp)
	.loc 3 1197 11
	jmp	.L207
.L219:
	.loc 3 1203 44
	leaq	.LC69(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 1200 32
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC17(%rip), %rcx
	movabsq	$4611686018427387903, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xdectoumax@PLT
	.loc 3 1200 30
	movq	%rax, -56(%rbp)
	.loc 3 1204 11
	jmp	.L207
.L212:
	.loc 3 1207 14
	cmpq	$0, -88(%rbp)
	je	.L221
	.loc 3 1207 33 discriminator 1
	movq	optarg(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 1207 29 discriminator 1
	testl	%eax, %eax
	je	.L221
.LBB21:
	.loc 3 1208 13
	leaq	.LC70(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L221:
.LBE21:
	.loc 3 1209 25
	movq	optarg(%rip), %rax
	movq	%rax, -88(%rbp)
	.loc 3 1210 11
	jmp	.L207
.L217:
	.loc 3 1213 22
	movq	optarg(%rip), %rax
	.loc 3 1213 14
	testq	%rax, %rax
	jne	.L222
	.loc 3 1214 31
	movl	$3, -40(%rbp)
	jmp	.L207
.L222:
	.loc 3 1216 33
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	remove_methods(%rip), %rcx
	leaq	remove_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC71(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	remove_methods(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 3 1216 31
	movl	%eax, -40(%rbp)
	.loc 3 1218 11
	jmp	.L207
.L218:
	.loc 3 1222 36
	leaq	.LC72(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 3 1221 24
	movq	optarg(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdx, %r9
	leaq	.LC73(%rip), %r8
	movabsq	$9223372036854775807, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xnumtoumax@PLT
	addq	$16, %rsp
	.loc 3 1221 22
	movq	%rax, -48(%rbp)
	.loc 3 1223 11
	jmp	.L207
.L216:
	.loc 3 1226 25
	movb	$1, -36(%rbp)
	.loc 3 1227 11
	jmp	.L207
.L215:
	.loc 3 1230 23
	movb	$1, -35(%rbp)
	.loc 3 1231 11
	jmp	.L207
.L214:
	.loc 3 1234 27
	movb	$1, -34(%rbp)
	.loc 3 1235 11
	jmp	.L207
.L211:
	.loc 3 1237 9
	movl	$0, %edi
	call	usage
.L210:
	.loc 3 1239 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC74(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC42(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L208:
	.loc 3 1242 11
	movl	$1, %edi
	call	usage
.L207:
	.loc 3 1191 15
	movq	-128(%rbp), %rsi
	movl	-116(%rbp), %eax
	movl	$0, %r8d
	leaq	long_opts(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -96(%rbp)
	.loc 3 1191 9
	cmpl	$-1, -96(%rbp)
	jne	.L224
	.loc 3 1246 15
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	.loc 3 1246 8
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	.loc 3 1247 18
	movl	optind(%rip), %eax
	.loc 3 1247 11
	movl	-116(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -92(%rbp)
	.loc 3 1249 6
	cmpl	$0, -92(%rbp)
	jne	.L225
	.loc 3 1251 20
	leaq	.LC76(%rip), %rdi
	call	gettext@PLT
	.loc 3 1251 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1252 7
	movl	$1, %edi
	call	usage
.L225:
	.loc 3 1255 20
	movq	-88(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	randint_all_new@PLT
	.loc 3 1255 18
	movq	%rax, randint_source(%rip)
	.loc 3 1256 7
	movq	randint_source(%rip), %rax
	.loc 3 1256 6
	testq	%rax, %rax
	jne	.L226
.LBB22:
	.loc 3 1257 5
	cmpq	$0, -88(%rbp)
	je	.L227
	.loc 3 1257 5 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax
	jmp	.L228
.L227:
	.loc 3 1257 5 discriminator 2
	leaq	.LC77(%rip), %rax
.L228:
	.loc 3 1257 5 discriminator 4
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC78(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L226:
.LBE22:
	.loc 3 1259 3 is_stmt 1
	leaq	clear_random_data(%rip), %rdi
	call	atexit@PLT
	.loc 3 1261 10
	movl	$0, -100(%rbp)
	.loc 3 1261 3
	jmp	.L229
.L232:
.LBB23:
	.loc 3 1263 30
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	.loc 3 1263 21
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -72(%rbp)
	.loc 3 1264 11
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 1264 10
	testl	%eax, %eax
	jne	.L230
	.loc 3 1266 17
	movq	randint_source(%rip), %rdx
	leaq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	wipefd
	.loc 3 1266 14
	movzbl	-101(%rbp), %edx
	.loc 3 1266 17
	movzbl	%al, %eax
	.loc 3 1266 14
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -101(%rbp)
	jmp	.L231
.L230:
	.loc 3 1271 17
	movq	randint_source(%rip), %rdx
	.loc 3 1271 31
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-80(%rbp), %rax
	addq	%rcx, %rax
	.loc 3 1271 17
	movq	(%rax), %rax
	leaq	-64(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	call	wipefile
	.loc 3 1271 14
	movzbl	-101(%rbp), %edx
	.loc 3 1271 17
	movzbl	%al, %eax
	.loc 3 1271 14
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -101(%rbp)
.L231:
	.loc 3 1273 7 discriminator 2
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE23:
	.loc 3 1261 29 discriminator 2
	addl	$1, -100(%rbp)
.L229:
	.loc 3 1261 3 discriminator 1
	movl	-100(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L232
	.loc 3 1276 28
	movzbl	-101(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 3 1277 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L234
	call	__stack_chk_fail@PLT
.L234:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	main, .-main
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.6664, @object
	.size	__PRETTY_FUNCTION__.6664, 8
__PRETTY_FUNCTION__.6664:
	.string	"incname"
	.text
.Letext0:
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 14 "./lib/sys/select.h"
	.file 15 "/usr/include/x86_64-linux-gnu/sys/mtio.h"
	.file 16 "/usr/include/time.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 18 "/usr/include/signal.h"
	.file 19 "/usr/include/unistd.h"
	.file 20 "/usr/include/errno.h"
	.file 21 "src/version.h"
	.file 22 "./lib/exitfail.h"
	.file 23 "/usr/include/stdint.h"
	.file 24 "./lib/timespec.h"
	.file 25 "./lib/version-etc.h"
	.file 26 "./lib/progname.h"
	.file 27 "./lib/quotearg.h"
	.file 28 "./lib/quote.h"
	.file 29 "./lib/argmatch.h"
	.file 30 "./lib/error.h"
	.file 31 "./lib/human.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1802
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF268
	.byte	0xc
	.long	.LASF269
	.long	.LASF270
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
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
	.byte	0x4
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	0x57
	.uleb128 0x5
	.long	0x57
	.uleb128 0x2
	.long	.LASF3
	.byte	0x4
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF4
	.byte	0x4
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0x8
	.long	.LASF30
	.byte	0x20
	.byte	0x5
	.byte	0x32
	.byte	0x8
	.long	0xc2
	.uleb128 0x9
	.long	.LASF5
	.byte	0x5
	.byte	0x34
	.byte	0xf
	.long	0xc7
	.byte	0
	.uleb128 0x9
	.long	.LASF6
	.byte	0x5
	.byte	0x37
	.byte	0x7
	.long	0x57
	.byte	0x8
	.uleb128 0x9
	.long	.LASF7
	.byte	0x5
	.byte	0x38
	.byte	0x8
	.long	0xd2
	.byte	0x10
	.uleb128 0xa
	.string	"val"
	.byte	0x5
	.byte	0x39
	.byte	0x7
	.long	0x57
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	0x80
	.uleb128 0x3
	.byte	0x8
	.long	0x46
	.uleb128 0x5
	.long	0xc7
	.uleb128 0x3
	.byte	0x8
	.long	0x57
	.uleb128 0xb
	.long	.LASF15
	.byte	0x6
	.byte	0xd1
	.byte	0x17
	.long	0xe4
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0xc
	.byte	0x8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x5
	.long	0xf4
	.uleb128 0x4
	.byte	0x2
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
	.long	.LASF16
	.byte	0x7
	.byte	0x49
	.byte	0x1b
	.long	0xe4
	.uleb128 0xb
	.long	.LASF17
	.byte	0x7
	.byte	0x91
	.byte	0x19
	.long	0xe4
	.uleb128 0xb
	.long	.LASF18
	.byte	0x7
	.byte	0x92
	.byte	0x19
	.long	0xeb
	.uleb128 0xb
	.long	.LASF19
	.byte	0x7
	.byte	0x93
	.byte	0x19
	.long	0xeb
	.uleb128 0xb
	.long	.LASF20
	.byte	0x7
	.byte	0x94
	.byte	0x19
	.long	0xe4
	.uleb128 0xb
	.long	.LASF21
	.byte	0x7
	.byte	0x96
	.byte	0x1a
	.long	0xeb
	.uleb128 0xb
	.long	.LASF22
	.byte	0x7
	.byte	0x97
	.byte	0x1b
	.long	0xe4
	.uleb128 0xb
	.long	.LASF23
	.byte	0x7
	.byte	0x98
	.byte	0x19
	.long	0x115
	.uleb128 0xb
	.long	.LASF24
	.byte	0x7
	.byte	0x99
	.byte	0x1b
	.long	0x115
	.uleb128 0xb
	.long	.LASF25
	.byte	0x7
	.byte	0xa0
	.byte	0x1a
	.long	0x115
	.uleb128 0xb
	.long	.LASF26
	.byte	0x7
	.byte	0xae
	.byte	0x1d
	.long	0x115
	.uleb128 0xb
	.long	.LASF27
	.byte	0x7
	.byte	0xb3
	.byte	0x1c
	.long	0x115
	.uleb128 0xb
	.long	.LASF28
	.byte	0x7
	.byte	0xc1
	.byte	0x1b
	.long	0x115
	.uleb128 0xb
	.long	.LASF29
	.byte	0x7
	.byte	0xc4
	.byte	0x21
	.long	0x115
	.uleb128 0x8
	.long	.LASF31
	.byte	0xd8
	.byte	0x8
	.byte	0x31
	.byte	0x8
	.long	0x34b
	.uleb128 0x9
	.long	.LASF32
	.byte	0x8
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x9
	.long	.LASF33
	.byte	0x8
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF34
	.byte	0x8
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF35
	.byte	0x8
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF36
	.byte	0x8
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF37
	.byte	0x8
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF38
	.byte	0x8
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF39
	.byte	0x8
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF40
	.byte	0x8
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF41
	.byte	0x8
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF42
	.byte	0x8
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF43
	.byte	0x8
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF44
	.byte	0x8
	.byte	0x44
	.byte	0x16
	.long	0x364
	.byte	0x60
	.uleb128 0x9
	.long	.LASF45
	.byte	0x8
	.byte	0x46
	.byte	0x14
	.long	0x36a
	.byte	0x68
	.uleb128 0x9
	.long	.LASF46
	.byte	0x8
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF47
	.byte	0x8
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF48
	.byte	0x8
	.byte	0x4a
	.byte	0xb
	.long	0x170
	.byte	0x78
	.uleb128 0x9
	.long	.LASF49
	.byte	0x8
	.byte	0x4d
	.byte	0x12
	.long	0x100
	.byte	0x80
	.uleb128 0x9
	.long	.LASF50
	.byte	0x8
	.byte	0x4e
	.byte	0xf
	.long	0x107
	.byte	0x82
	.uleb128 0x9
	.long	.LASF51
	.byte	0x8
	.byte	0x4f
	.byte	0x8
	.long	0x370
	.byte	0x83
	.uleb128 0x9
	.long	.LASF52
	.byte	0x8
	.byte	0x51
	.byte	0xf
	.long	0x380
	.byte	0x88
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.byte	0x59
	.byte	0xd
	.long	0x17c
	.byte	0x90
	.uleb128 0x9
	.long	.LASF54
	.byte	0x8
	.byte	0x5b
	.byte	0x17
	.long	0x38b
	.byte	0x98
	.uleb128 0x9
	.long	.LASF55
	.byte	0x8
	.byte	0x5c
	.byte	0x19
	.long	0x396
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF56
	.byte	0x8
	.byte	0x5d
	.byte	0x14
	.long	0x36a
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF57
	.byte	0x8
	.byte	0x5e
	.byte	0x9
	.long	0xf2
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF58
	.byte	0x8
	.byte	0x5f
	.byte	0xa
	.long	0xd8
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF59
	.byte	0x8
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF60
	.byte	0x8
	.byte	0x62
	.byte	0x8
	.long	0x39c
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF61
	.byte	0x9
	.byte	0x7
	.byte	0x19
	.long	0x1c4
	.uleb128 0xd
	.long	.LASF271
	.byte	0x8
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF62
	.uleb128 0x3
	.byte	0x8
	.long	0x35f
	.uleb128 0x3
	.byte	0x8
	.long	0x1c4
	.uleb128 0xf
	.long	0x3f
	.long	0x380
	.uleb128 0x10
	.long	0xe4
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x357
	.uleb128 0xe
	.long	.LASF63
	.uleb128 0x3
	.byte	0x8
	.long	0x386
	.uleb128 0xe
	.long	.LASF64
	.uleb128 0x3
	.byte	0x8
	.long	0x391
	.uleb128 0xf
	.long	0x3f
	.long	0x3ac
	.uleb128 0x10
	.long	0xe4
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.long	.LASF65
	.byte	0xa
	.byte	0x3f
	.byte	0x11
	.long	0x170
	.uleb128 0xb
	.long	.LASF66
	.byte	0xa
	.byte	0x4d
	.byte	0x13
	.long	0x1ac
	.uleb128 0x2
	.long	.LASF67
	.byte	0xa
	.byte	0x89
	.byte	0xe
	.long	0x3d0
	.uleb128 0x3
	.byte	0x8
	.long	0x34b
	.uleb128 0x2
	.long	.LASF68
	.byte	0xa
	.byte	0x8a
	.byte	0xe
	.long	0x3d0
	.uleb128 0x2
	.long	.LASF69
	.byte	0xa
	.byte	0x8b
	.byte	0xe
	.long	0x3d0
	.uleb128 0x2
	.long	.LASF70
	.byte	0xb
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xf
	.long	0xcd
	.long	0x405
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x3fa
	.uleb128 0x2
	.long	.LASF71
	.byte	0xb
	.byte	0x1b
	.byte	0x1a
	.long	0x405
	.uleb128 0x2
	.long	.LASF72
	.byte	0xb
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF73
	.byte	0xb
	.byte	0x1f
	.byte	0x1a
	.long	0x405
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF74
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.long	.LASF75
	.uleb128 0xb
	.long	.LASF76
	.byte	0xc
	.byte	0x7
	.byte	0x12
	.long	0x188
	.uleb128 0x8
	.long	.LASF77
	.byte	0x10
	.byte	0xd
	.byte	0xa
	.byte	0x8
	.long	0x470
	.uleb128 0x9
	.long	.LASF78
	.byte	0xd
	.byte	0xc
	.byte	0xc
	.long	0x188
	.byte	0
	.uleb128 0x9
	.long	.LASF79
	.byte	0xd
	.byte	0x10
	.byte	0x15
	.long	0x1b8
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF80
	.byte	0xe
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF81
	.uleb128 0x8
	.long	.LASF82
	.byte	0x8
	.byte	0xf
	.byte	0x1e
	.byte	0x8
	.long	0x4ac
	.uleb128 0x9
	.long	.LASF83
	.byte	0xf
	.byte	0x20
	.byte	0xf
	.long	0x10e
	.byte	0
	.uleb128 0x9
	.long	.LASF84
	.byte	0xf
	.byte	0x21
	.byte	0x9
	.long	0x57
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x63
	.uleb128 0xf
	.long	0x39
	.long	0x4c2
	.uleb128 0x10
	.long	0xe4
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF85
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x4b2
	.uleb128 0x2
	.long	.LASF86
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF87
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x115
	.uleb128 0x2
	.long	.LASF88
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x4b2
	.uleb128 0x2
	.long	.LASF89
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.long	.LASF90
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x115
	.uleb128 0x12
	.long	.LASF91
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x8
	.long	.LASF92
	.byte	0x90
	.byte	0x11
	.byte	0x2e
	.byte	0x8
	.long	0x5e8
	.uleb128 0x9
	.long	.LASF93
	.byte	0x11
	.byte	0x30
	.byte	0xd
	.long	0x128
	.byte	0
	.uleb128 0x9
	.long	.LASF94
	.byte	0x11
	.byte	0x35
	.byte	0xd
	.long	0x14c
	.byte	0x8
	.uleb128 0x9
	.long	.LASF95
	.byte	0x11
	.byte	0x3d
	.byte	0xf
	.long	0x164
	.byte	0x10
	.uleb128 0x9
	.long	.LASF96
	.byte	0x11
	.byte	0x3e
	.byte	0xe
	.long	0x158
	.byte	0x18
	.uleb128 0x9
	.long	.LASF97
	.byte	0x11
	.byte	0x40
	.byte	0xd
	.long	0x134
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF98
	.byte	0x11
	.byte	0x41
	.byte	0xd
	.long	0x140
	.byte	0x20
	.uleb128 0x9
	.long	.LASF99
	.byte	0x11
	.byte	0x43
	.byte	0x9
	.long	0x57
	.byte	0x24
	.uleb128 0x9
	.long	.LASF100
	.byte	0x11
	.byte	0x45
	.byte	0xd
	.long	0x128
	.byte	0x28
	.uleb128 0x9
	.long	.LASF101
	.byte	0x11
	.byte	0x4a
	.byte	0xd
	.long	0x170
	.byte	0x30
	.uleb128 0x9
	.long	.LASF102
	.byte	0x11
	.byte	0x4e
	.byte	0x11
	.long	0x194
	.byte	0x38
	.uleb128 0x9
	.long	.LASF103
	.byte	0x11
	.byte	0x50
	.byte	0x10
	.long	0x1a0
	.byte	0x40
	.uleb128 0x9
	.long	.LASF104
	.byte	0x11
	.byte	0x5b
	.byte	0x15
	.long	0x448
	.byte	0x48
	.uleb128 0x9
	.long	.LASF105
	.byte	0x11
	.byte	0x5c
	.byte	0x15
	.long	0x448
	.byte	0x58
	.uleb128 0x9
	.long	.LASF106
	.byte	0x11
	.byte	0x5d
	.byte	0x15
	.long	0x448
	.byte	0x68
	.uleb128 0x9
	.long	.LASF107
	.byte	0x11
	.byte	0x6a
	.byte	0x17
	.long	0x5ed
	.byte	0x78
	.byte	0
	.uleb128 0x5
	.long	0x517
	.uleb128 0xf
	.long	0x1b8
	.long	0x5fd
	.uleb128 0x10
	.long	0xe4
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.uleb128 0x3
	.byte	0x8
	.long	0x5fd
	.uleb128 0xf
	.long	0xcd
	.long	0x614
	.uleb128 0x10
	.long	0xe4
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x604
	.uleb128 0x12
	.long	.LASF108
	.byte	0x12
	.value	0x11e
	.byte	0x1a
	.long	0x614
	.uleb128 0x12
	.long	.LASF109
	.byte	0x12
	.value	0x11f
	.byte	0x1a
	.long	0x614
	.uleb128 0x12
	.long	.LASF110
	.byte	0x13
	.value	0x21f
	.byte	0xf
	.long	0x640
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0x12
	.long	.LASF111
	.byte	0x13
	.value	0x221
	.byte	0xf
	.long	0x640
	.uleb128 0x2
	.long	.LASF112
	.byte	0x14
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF113
	.byte	0x14
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.long	0x671
	.uleb128 0x14
	.uleb128 0x2
	.long	.LASF114
	.byte	0x15
	.byte	0x1
	.byte	0x14
	.long	0xc7
	.uleb128 0x2
	.long	.LASF115
	.byte	0x16
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0xb
	.long	.LASF116
	.byte	0x17
	.byte	0x66
	.byte	0x16
	.long	0x11c
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xeb
	.byte	0x18
	.byte	0x29
	.byte	0x6
	.long	0x6ae
	.uleb128 0x16
	.long	.LASF117
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xeb
	.byte	0x18
	.byte	0x2a
	.byte	0x6
	.long	0x6c3
	.uleb128 0x17
	.long	.LASF118
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x6e1
	.uleb128 0x19
	.long	.LASF119
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF120
	.sleb128 -131
	.byte	0
	.uleb128 0xf
	.long	0x46
	.long	0x6ec
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x6e1
	.uleb128 0x2
	.long	.LASF121
	.byte	0x19
	.byte	0x19
	.byte	0x13
	.long	0x6ec
	.uleb128 0x2
	.long	.LASF122
	.byte	0x1a
	.byte	0x20
	.byte	0x14
	.long	0xc7
	.uleb128 0x1a
	.long	.LASF158
	.byte	0x7
	.byte	0x4
	.long	0xeb
	.byte	0x1b
	.byte	0x20
	.byte	0x6
	.long	0x75e
	.uleb128 0x17
	.long	.LASF123
	.byte	0
	.uleb128 0x17
	.long	.LASF124
	.byte	0x1
	.uleb128 0x17
	.long	.LASF125
	.byte	0x2
	.uleb128 0x17
	.long	.LASF126
	.byte	0x3
	.uleb128 0x17
	.long	.LASF127
	.byte	0x4
	.uleb128 0x17
	.long	.LASF128
	.byte	0x5
	.uleb128 0x17
	.long	.LASF129
	.byte	0x6
	.uleb128 0x17
	.long	.LASF130
	.byte	0x7
	.uleb128 0x17
	.long	.LASF131
	.byte	0x8
	.uleb128 0x17
	.long	.LASF132
	.byte	0x9
	.uleb128 0x17
	.long	.LASF133
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x709
	.uleb128 0x12
	.long	.LASF134
	.byte	0x1b
	.value	0x10b
	.byte	0x1a
	.long	0x405
	.uleb128 0xf
	.long	0x75e
	.long	0x77b
	.uleb128 0x11
	.byte	0
	.uleb128 0x5
	.long	0x770
	.uleb128 0x12
	.long	.LASF135
	.byte	0x1b
	.value	0x10c
	.byte	0x21
	.long	0x77b
	.uleb128 0xe
	.long	.LASF136
	.uleb128 0x2
	.long	.LASF137
	.byte	0x1c
	.byte	0x19
	.byte	0x1f
	.long	0x78d
	.uleb128 0xb
	.long	.LASF138
	.byte	0x1d
	.byte	0x3d
	.byte	0x10
	.long	0x5fe
	.uleb128 0x2
	.long	.LASF139
	.byte	0x1d
	.byte	0x3e
	.byte	0x19
	.long	0x79e
	.uleb128 0x2
	.long	.LASF140
	.byte	0x1e
	.byte	0x32
	.byte	0xf
	.long	0x5fe
	.uleb128 0x2
	.long	.LASF141
	.byte	0x1e
	.byte	0x35
	.byte	0x15
	.long	0xeb
	.uleb128 0x2
	.long	.LASF142
	.byte	0x1e
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xeb
	.byte	0x1f
	.byte	0x2c
	.byte	0x1
	.long	0x826
	.uleb128 0x17
	.long	.LASF143
	.byte	0
	.uleb128 0x17
	.long	.LASF144
	.byte	0x1
	.uleb128 0x17
	.long	.LASF145
	.byte	0x2
	.uleb128 0x17
	.long	.LASF146
	.byte	0x4
	.uleb128 0x17
	.long	.LASF147
	.byte	0x8
	.uleb128 0x17
	.long	.LASF148
	.byte	0x10
	.uleb128 0x17
	.long	.LASF149
	.byte	0x20
	.uleb128 0x17
	.long	.LASF150
	.byte	0x40
	.uleb128 0x17
	.long	.LASF151
	.byte	0x80
	.uleb128 0x1b
	.long	.LASF152
	.value	0x100
	.byte	0
	.uleb128 0xb
	.long	.LASF153
	.byte	0x2
	.byte	0x1e
	.byte	0x13
	.long	0x68a
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xeb
	.byte	0x3
	.byte	0x64
	.byte	0x6
	.long	0x847
	.uleb128 0x17
	.long	.LASF154
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xeb
	.byte	0x3
	.byte	0x68
	.byte	0x6
	.long	0x85c
	.uleb128 0x17
	.long	.LASF155
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xeb
	.byte	0x3
	.byte	0x6c
	.byte	0x6
	.long	0x872
	.uleb128 0x1b
	.long	.LASF156
	.value	0x200
	.byte	0
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xeb
	.byte	0x3
	.byte	0x6d
	.byte	0x6
	.long	0x888
	.uleb128 0x1b
	.long	.LASF157
	.value	0x1ff
	.byte	0
	.uleb128 0x1a
	.long	.LASF159
	.byte	0x7
	.byte	0x4
	.long	0xeb
	.byte	0x3
	.byte	0x70
	.byte	0x6
	.long	0x8b3
	.uleb128 0x17
	.long	.LASF160
	.byte	0
	.uleb128 0x17
	.long	.LASF161
	.byte	0x1
	.uleb128 0x17
	.long	.LASF162
	.byte	0x2
	.uleb128 0x17
	.long	.LASF163
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x888
	.uleb128 0xf
	.long	0xcd
	.long	0x8c8
	.uleb128 0x10
	.long	0xe4
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x8b8
	.uleb128 0x1c
	.long	.LASF164
	.byte	0x3
	.byte	0x78
	.byte	0x1a
	.long	0x8c8
	.uleb128 0x9
	.byte	0x3
	.quad	remove_args
	.uleb128 0xf
	.long	0x8b3
	.long	0x8f3
	.uleb128 0x10
	.long	0xe4
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	0x8e3
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x3
	.byte	0x7d
	.byte	0x21
	.long	0x8f3
	.uleb128 0x9
	.byte	0x3
	.quad	remove_methods
	.uleb128 0x8
	.long	.LASF166
	.byte	0x20
	.byte	0x3
	.byte	0x82
	.byte	0x8
	.long	0x977
	.uleb128 0x9
	.long	.LASF167
	.byte	0x3
	.byte	0x84
	.byte	0x8
	.long	0x97c
	.byte	0
	.uleb128 0x9
	.long	.LASF168
	.byte	0x3
	.byte	0x85
	.byte	0xa
	.long	0xd8
	.byte	0x8
	.uleb128 0x9
	.long	.LASF169
	.byte	0x3
	.byte	0x86
	.byte	0x9
	.long	0x3ac
	.byte	0x10
	.uleb128 0x9
	.long	.LASF170
	.byte	0x3
	.byte	0x87
	.byte	0x16
	.long	0x888
	.byte	0x18
	.uleb128 0x9
	.long	.LASF171
	.byte	0x3
	.byte	0x88
	.byte	0x8
	.long	0x97c
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF172
	.byte	0x3
	.byte	0x89
	.byte	0x8
	.long	0x97c
	.byte	0x1d
	.uleb128 0x9
	.long	.LASF173
	.byte	0x3
	.byte	0x8a
	.byte	0x8
	.long	0x97c
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.long	0x90e
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF174
	.uleb128 0x15
	.byte	0x7
	.byte	0x4
	.long	0xeb
	.byte	0x3
	.byte	0x90
	.byte	0x1
	.long	0x998
	.uleb128 0x17
	.long	.LASF175
	.byte	0x80
	.byte	0
	.uleb128 0xf
	.long	0xc2
	.long	0x9a8
	.uleb128 0x10
	.long	0xe4
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x998
	.uleb128 0x1c
	.long	.LASF176
	.byte	0x3
	.byte	0x94
	.byte	0x1c
	.long	0x9a8
	.uleb128 0x9
	.byte	0x3
	.quad	long_opts
	.uleb128 0xf
	.long	0x63
	.long	0x9d3
	.uleb128 0x10
	.long	0xe4
	.byte	0x36
	.byte	0
	.uleb128 0x5
	.long	0x9c3
	.uleb128 0x1d
	.long	.LASF177
	.byte	0x3
	.value	0x2ab
	.byte	0x3
	.long	0x9d3
	.uleb128 0x9
	.byte	0x3
	.quad	patterns
	.uleb128 0xf
	.long	0x46
	.long	0x9ff
	.uleb128 0x10
	.long	0xe4
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x9ef
	.uleb128 0x1d
	.long	.LASF178
	.byte	0x3
	.value	0x3d9
	.byte	0x13
	.long	0x9ff
	.uleb128 0x9
	.byte	0x3
	.quad	nameset
	.uleb128 0xe
	.long	.LASF179
	.uleb128 0x1d
	.long	.LASF179
	.byte	0x3
	.value	0x485
	.byte	0x1f
	.long	0xa37
	.uleb128 0x9
	.byte	0x3
	.quad	randint_source
	.uleb128 0x3
	.byte	0x8
	.long	0xa1b
	.uleb128 0x1e
	.long	.LASF253
	.byte	0x3
	.value	0x492
	.byte	0x1
	.long	0x57
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0xb3a
	.uleb128 0x1f
	.long	.LASF180
	.byte	0x3
	.value	0x492
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1f
	.long	.LASF181
	.byte	0x3
	.value	0x492
	.byte	0x18
	.long	0x640
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x20
	.string	"ok"
	.byte	0x3
	.value	0x494
	.byte	0x8
	.long	0x97c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.uleb128 0x1d
	.long	.LASF182
	.byte	0x3
	.value	0x495
	.byte	0x12
	.long	0x90e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	.LASF183
	.byte	0x3
	.value	0x496
	.byte	0xa
	.long	0x640
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.long	.LASF184
	.byte	0x3
	.value	0x497
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x20
	.string	"c"
	.byte	0x3
	.value	0x498
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.string	"i"
	.byte	0x3
	.value	0x499
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1d
	.long	.LASF185
	.byte	0x3
	.value	0x49a
	.byte	0xf
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x21
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x22
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x1d
	.long	.LASF186
	.byte	0x3
	.value	0x4ef
	.byte	0xd
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF264
	.byte	0x3
	.value	0x48b
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.long	.LASF187
	.byte	0x3
	.value	0x467
	.byte	0x1
	.long	0x97c
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0xbd7
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x3
	.value	0x467
	.byte	0x11
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF186
	.byte	0x3
	.value	0x467
	.byte	0x23
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"s"
	.byte	0x3
	.value	0x468
	.byte	0x22
	.long	0xa37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF182
	.byte	0x3
	.value	0x468
	.byte	0x3b
	.long	0xbd7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.string	"ok"
	.byte	0x3
	.value	0x46a
	.byte	0x8
	.long	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x20
	.string	"fd"
	.byte	0x3
	.value	0x46b
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x977
	.uleb128 0x24
	.long	.LASF188
	.byte	0x3
	.value	0x415
	.byte	0x1
	.long	0x97c
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0xd0f
	.uleb128 0x1f
	.long	.LASF189
	.byte	0x3
	.value	0x415
	.byte	0x11
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.long	.LASF190
	.byte	0x3
	.value	0x415
	.byte	0x26
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1f
	.long	.LASF182
	.byte	0x3
	.value	0x415
	.byte	0x46
	.long	0xbd7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1d
	.long	.LASF191
	.byte	0x3
	.value	0x417
	.byte	0x9
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF192
	.byte	0x3
	.value	0x418
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"dir"
	.byte	0x3
	.value	0x419
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF193
	.byte	0x3
	.value	0x41a
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF194
	.byte	0x3
	.value	0x41b
	.byte	0x8
	.long	0x97c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -87
	.uleb128 0x20
	.string	"ok"
	.byte	0x3
	.value	0x41c
	.byte	0x8
	.long	0x97c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -86
	.uleb128 0x1d
	.long	.LASF195
	.byte	0x3
	.value	0x41d
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x22
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x20
	.string	"len"
	.byte	0x3
	.value	0x426
	.byte	0x11
	.long	0xd8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x1d
	.long	.LASF196
	.byte	0x3
	.value	0x42a
	.byte	0xe
	.long	0x97c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x22
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x20
	.string	"old"
	.byte	0x3
	.value	0x43a
	.byte	0x1d
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF197
	.byte	0x3
	.value	0x3e2
	.byte	0x1
	.long	0x97c
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0xd86
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x3
	.value	0x3e2
	.byte	0x10
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"len"
	.byte	0x3
	.value	0x3e2
	.byte	0x1d
	.long	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF272
	.long	0xd96
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6664
	.uleb128 0x22
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x20
	.string	"p"
	.byte	0x3
	.value	0x3e6
	.byte	0x13
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x46
	.long	0xd96
	.uleb128 0x10
	.long	0xe4
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0xd86
	.uleb128 0x24
	.long	.LASF198
	.byte	0x3
	.value	0x3c4
	.byte	0x1
	.long	0x97c
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0xe0e
	.uleb128 0x25
	.string	"fd"
	.byte	0x3
	.value	0x3c4
	.byte	0xd
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.long	.LASF186
	.byte	0x3
	.value	0x3c4
	.byte	0x1d
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"s"
	.byte	0x3
	.value	0x3c4
	.byte	0x3b
	.long	0xa37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF182
	.byte	0x3
	.value	0x3c5
	.byte	0x1f
	.long	0xbd7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	.LASF199
	.byte	0x3
	.value	0x3c7
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.long	.LASF200
	.byte	0x3
	.value	0x336
	.byte	0x1
	.long	0x97c
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0xfaa
	.uleb128 0x25
	.string	"fd"
	.byte	0x3
	.value	0x336
	.byte	0x10
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x1f
	.long	.LASF186
	.byte	0x3
	.value	0x336
	.byte	0x20
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x25
	.string	"s"
	.byte	0x3
	.value	0x336
	.byte	0x3e
	.long	0xa37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x1f
	.long	.LASF182
	.byte	0x3
	.value	0x337
	.byte	0x22
	.long	0xbd7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x20
	.string	"i"
	.byte	0x3
	.value	0x339
	.byte	0xa
	.long	0xd8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x20
	.string	"st"
	.byte	0x3
	.value	0x33a
	.byte	0xf
	.long	0x517
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1d
	.long	.LASF169
	.byte	0x3
	.value	0x33b
	.byte	0x9
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1d
	.long	.LASF201
	.byte	0x3
	.value	0x33c
	.byte	0x9
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x20
	.string	"n"
	.byte	0x3
	.value	0x33d
	.byte	0x15
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1d
	.long	.LASF202
	.byte	0x3
	.value	0x33e
	.byte	0x8
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x20
	.string	"ok"
	.byte	0x3
	.value	0x33f
	.byte	0x8
	.long	0x97c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -281
	.uleb128 0x20
	.string	"rs"
	.byte	0x3
	.value	0x340
	.byte	0x1b
	.long	0xfaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x27
	.long	.LASF228
	.byte	0x3
	.value	0x3bd
	.byte	0x1
	.quad	.L159
	.uleb128 0x28
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0xf4e
	.uleb128 0x1d
	.long	.LASF203
	.byte	0x3
	.value	0x369
	.byte	0x15
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x22
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x1d
	.long	.LASF204
	.byte	0x3
	.value	0x36e
	.byte	0x19
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1d
	.long	.LASF205
	.byte	0x3
	.value	0x38c
	.byte	0xd
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x20
	.string	"pn"
	.byte	0x3
	.value	0x38d
	.byte	0x19
	.long	0xe4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x22
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x20
	.string	"err"
	.byte	0x3
	.value	0x3a2
	.byte	0xf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1d
	.long	.LASF206
	.byte	0x3
	.value	0x3a3
	.byte	0xf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF207
	.uleb128 0x3
	.byte	0x8
	.long	0xfaa
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x3
	.value	0x2c4
	.byte	0x1
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x1080
	.uleb128 0x1f
	.long	.LASF208
	.byte	0x3
	.value	0x2c4
	.byte	0x12
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"num"
	.byte	0x3
	.value	0x2c4
	.byte	0x1f
	.long	0xd8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"s"
	.byte	0x3
	.value	0x2c4
	.byte	0x3b
	.long	0xa37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1d
	.long	.LASF209
	.byte	0x3
	.value	0x2c6
	.byte	0xa
	.long	0xd8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.string	"p"
	.byte	0x3
	.value	0x2c7
	.byte	0xe
	.long	0x4ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"d"
	.byte	0x3
	.value	0x2c8
	.byte	0x8
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"n"
	.byte	0x3
	.value	0x2c9
	.byte	0xa
	.long	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF210
	.byte	0x3
	.value	0x2ca
	.byte	0xa
	.long	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"top"
	.byte	0x3
	.value	0x2ca
	.byte	0x11
	.long	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.long	.LASF211
	.byte	0x3
	.value	0x2ca
	.byte	0x16
	.long	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"k"
	.byte	0x3
	.value	0x2cb
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x24
	.long	.LASF212
	.byte	0x3
	.value	0x18c
	.byte	0x1
	.long	0x57
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x1361
	.uleb128 0x25
	.string	"fd"
	.byte	0x3
	.value	0x18c
	.byte	0xd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2180
	.uleb128 0x25
	.string	"st"
	.byte	0x3
	.value	0x18c
	.byte	0x24
	.long	0x1361
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2192
	.uleb128 0x1f
	.long	.LASF186
	.byte	0x3
	.value	0x18c
	.byte	0x34
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2200
	.uleb128 0x1f
	.long	.LASF213
	.byte	0x3
	.value	0x18c
	.byte	0x42
	.long	0x1367
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2208
	.uleb128 0x1f
	.long	.LASF206
	.byte	0x3
	.value	0x18d
	.byte	0xd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2184
	.uleb128 0x25
	.string	"s"
	.byte	0x3
	.value	0x18d
	.byte	0x2b
	.long	0xfaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2216
	.uleb128 0x25
	.string	"k"
	.byte	0x3
	.value	0x18e
	.byte	0x1b
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"n"
	.byte	0x3
	.value	0x18e
	.byte	0x30
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.long	.LASF169
	.byte	0x3
	.value	0x190
	.byte	0x9
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2152
	.uleb128 0x1d
	.long	.LASF214
	.byte	0x3
	.value	0x191
	.byte	0x9
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2144
	.uleb128 0x1d
	.long	.LASF215
	.byte	0x3
	.value	0x192
	.byte	0xa
	.long	0x43c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2136
	.uleb128 0x20
	.string	"now"
	.byte	0x3
	.value	0x193
	.byte	0xa
	.long	0x43c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2128
	.uleb128 0x20
	.string	"lim"
	.byte	0x3
	.value	0x194
	.byte	0xa
	.long	0xd8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2120
	.uleb128 0x1d
	.long	.LASF216
	.byte	0x3
	.value	0x195
	.byte	0xa
	.long	0xd8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x1d
	.long	.LASF217
	.byte	0x3
	.value	0x196
	.byte	0xb
	.long	0x3b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2104
	.uleb128 0x1d
	.long	.LASF218
	.byte	0x3
	.value	0x199
	.byte	0xa
	.long	0xd8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2080
	.uleb128 0x1d
	.long	.LASF219
	.byte	0x3
	.value	0x19d
	.byte	0xa
	.long	0xd8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2072
	.uleb128 0x1d
	.long	.LASF220
	.byte	0x3
	.value	0x1a2
	.byte	0x9
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2064
	.uleb128 0x1d
	.long	.LASF221
	.byte	0x3
	.value	0x1a3
	.byte	0x12
	.long	0x136d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2056
	.uleb128 0x1d
	.long	.LASF222
	.byte	0x3
	.value	0x1a5
	.byte	0x8
	.long	0x1373
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2023
	.uleb128 0x1d
	.long	.LASF223
	.byte	0x3
	.value	0x1a6
	.byte	0x8
	.long	0x97c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2168
	.uleb128 0x1d
	.long	.LASF224
	.byte	0x3
	.value	0x1a7
	.byte	0x8
	.long	0x97c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2167
	.uleb128 0x1d
	.long	.LASF225
	.byte	0x3
	.value	0x1aa
	.byte	0x8
	.long	0x1383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2016
	.uleb128 0x1d
	.long	.LASF226
	.byte	0x3
	.value	0x1ab
	.byte	0xf
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2096
	.uleb128 0x1d
	.long	.LASF227
	.byte	0x3
	.value	0x1b0
	.byte	0x8
	.long	0x97c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2166
	.uleb128 0x27
	.long	.LASF229
	.byte	0x3
	.value	0x26e
	.byte	0x1
	.quad	.L69
	.uleb128 0x29
	.long	.Ldebug_ranges0+0
	.uleb128 0x1d
	.long	.LASF230
	.byte	0x3
	.value	0x225
	.byte	0xc
	.long	0x97c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2165
	.uleb128 0x28
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x12c4
	.uleb128 0x1d
	.long	.LASF231
	.byte	0x3
	.value	0x1ef
	.byte	0x17
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2164
	.uleb128 0x20
	.string	"buf"
	.byte	0x3
	.value	0x1f0
	.byte	0x18
	.long	0x1394
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x22
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1d
	.long	.LASF232
	.byte	0x3
	.value	0x20a
	.byte	0x1e
	.long	0xd8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2048
	.byte	0
	.byte	0
	.uleb128 0x22
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1d
	.long	.LASF233
	.byte	0x3
	.value	0x22b
	.byte	0x10
	.long	0x1383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1360
	.uleb128 0x1d
	.long	.LASF234
	.byte	0x3
	.value	0x22c
	.byte	0x10
	.long	0x1383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x1d
	.long	.LASF235
	.byte	0x3
	.value	0x22d
	.byte	0xf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2160
	.uleb128 0x1d
	.long	.LASF236
	.byte	0x3
	.value	0x22f
	.byte	0x17
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2088
	.uleb128 0x22
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x20
	.string	"off"
	.byte	0x3
	.value	0x23a
	.byte	0x1d
	.long	0x68a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2040
	.uleb128 0x1d
	.long	.LASF237
	.byte	0x3
	.value	0x23b
	.byte	0x17
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2156
	.uleb128 0x1d
	.long	.LASF238
	.byte	0x3
	.value	0x240
	.byte	0x1f
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2032
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x5e8
	.uleb128 0x3
	.byte	0x8
	.long	0x3ac
	.uleb128 0x3
	.byte	0x8
	.long	0xf4
	.uleb128 0xf
	.long	0x3f
	.long	0x1383
	.uleb128 0x10
	.long	0xe4
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.long	0x3f
	.long	0x1394
	.uleb128 0x2b
	.long	0xe4
	.value	0x28b
	.byte	0
	.uleb128 0xf
	.long	0x3f
	.long	0x13a4
	.uleb128 0x10
	.long	0xe4
	.byte	0x14
	.byte	0
	.uleb128 0x2c
	.long	.LASF239
	.byte	0x3
	.value	0x17c
	.byte	0x1
	.long	0x97c
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x13d8
	.uleb128 0x1f
	.long	.LASF169
	.byte	0x3
	.value	0x17c
	.byte	0xe
	.long	0x3ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF240
	.byte	0x3
	.value	0x164
	.byte	0x1
	.long	0x97c
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x144b
	.uleb128 0x25
	.string	"fd"
	.byte	0x3
	.value	0x164
	.byte	0xf
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"st"
	.byte	0x3
	.value	0x164
	.byte	0x26
	.long	0x1361
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF214
	.byte	0x3
	.value	0x173
	.byte	0x9
	.long	0x3ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x20
	.string	"op"
	.byte	0x3
	.value	0x16c
	.byte	0x13
	.long	0x484
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF242
	.byte	0x3
	.value	0x14d
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x14ce
	.uleb128 0x25
	.string	"fd"
	.byte	0x3
	.value	0x14d
	.byte	0x12
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF243
	.byte	0x3
	.value	0x14d
	.byte	0x1b
	.long	0x97c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1d
	.long	.LASF199
	.byte	0x3
	.value	0x151
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1d
	.long	.LASF244
	.byte	0x3
	.value	0x154
	.byte	0xf
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF245
	.byte	0x3
	.value	0x12c
	.byte	0x1
	.long	0x57
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x1521
	.uleb128 0x25
	.string	"fd"
	.byte	0x3
	.value	0x12c
	.byte	0xd
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF186
	.byte	0x3
	.value	0x12c
	.byte	0x1d
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.string	"err"
	.byte	0x3
	.value	0x12e
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF246
	.byte	0x3
	.value	0x11d
	.byte	0x1
	.long	0x97c
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x1555
	.uleb128 0x1f
	.long	.LASF247
	.byte	0x3
	.value	0x11d
	.byte	0x1b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF248
	.byte	0x3
	.value	0x112
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x1595
	.uleb128 0x1f
	.long	.LASF249
	.byte	0x3
	.value	0x112
	.byte	0x20
	.long	0x1595
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF5
	.byte	0x3
	.value	0x112
	.byte	0x2b
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xfb
	.uleb128 0x2d
	.long	.LASF250
	.byte	0x3
	.byte	0xf8
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x1601
	.uleb128 0x2e
	.long	.LASF206
	.byte	0x3
	.byte	0xf8
	.byte	0x12
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.string	"r"
	.byte	0x3
	.byte	0xf8
	.byte	0x27
	.long	0x136d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF169
	.byte	0x3
	.byte	0xf8
	.byte	0x31
	.long	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"i"
	.byte	0x3
	.byte	0xfa
	.byte	0xa
	.long	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF251
	.byte	0x3
	.byte	0xfb
	.byte	0x10
	.long	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x31
	.long	.LASF252
	.byte	0x3
	.byte	0xe1
	.byte	0x1
	.long	0x97c
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x164f
	.uleb128 0x2e
	.long	.LASF206
	.byte	0x3
	.byte	0xe1
	.byte	0x17
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.string	"r"
	.byte	0x3
	.byte	0xe6
	.byte	0x11
	.long	0x164f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x1c
	.long	.LASF251
	.byte	0x3
	.byte	0xe7
	.byte	0x10
	.long	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xf
	.long	0xf4
	.long	0x165f
	.uleb128 0x10
	.long	0xe4
	.byte	0x2
	.byte	0
	.uleb128 0x32
	.long	.LASF254
	.byte	0x3
	.byte	0xa4
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x168d
	.uleb128 0x2e
	.long	.LASF255
	.byte	0x3
	.byte	0xa4
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x31
	.long	.LASF256
	.byte	0x2
	.byte	0x2c
	.byte	0x1
	.long	0x826
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x16cc
	.uleb128 0x2f
	.string	"s"
	.byte	0x2
	.byte	0x2c
	.byte	0x28
	.long	0xa37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF257
	.byte	0x2
	.byte	0x2c
	.byte	0x33
	.long	0x826
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF258
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1771
	.uleb128 0x1f
	.long	.LASF259
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x33
	.long	.LASF260
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1727
	.uleb128 0x34
	.long	.LASF259
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xc7
	.byte	0
	.uleb128 0x34
	.long	.LASF261
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xc7
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x16fc
	.uleb128 0x1d
	.long	.LASF260
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x1781
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1d
	.long	.LASF261
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1d
	.long	.LASF262
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x1786
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1d
	.long	.LASF263
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xf
	.long	0x1727
	.long	0x1781
	.uleb128 0x10
	.long	0xe4
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x1771
	.uleb128 0x3
	.byte	0x8
	.long	0x1727
	.uleb128 0x23
	.long	.LASF265
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.long	.LASF266
	.byte	0x1
	.value	0x1f5
	.byte	0x1
	.long	0xf2
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.string	"ptr"
	.byte	0x1
	.value	0x1f5
	.byte	0x18
	.long	0x66b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF267
	.byte	0x1
	.value	0x1f5
	.byte	0x24
	.long	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.string	"p0"
	.byte	0x1
	.value	0x1f7
	.byte	0xf
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.string	"p1"
	.byte	0x1
	.value	0x1f8
	.byte	0xf
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x30
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
	.uleb128 0x2116
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.quad	.LBB5-.Ltext0
	.quad	.LBE5-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF187:
	.string	"wipefile"
.LASF107:
	.string	"__glibc_reserved"
.LASF106:
	.string	"st_ctim"
.LASF15:
	.string	"size_t"
.LASF119:
	.string	"GETOPT_HELP_CHAR"
.LASF102:
	.string	"st_blksize"
.LASF103:
	.string	"st_blocks"
.LASF212:
	.string	"dopass"
.LASF28:
	.string	"__ssize_t"
.LASF229:
	.string	"free_pattern_mem"
.LASF63:
	.string	"_IO_codecvt"
.LASF267:
	.string	"alignment"
.LASF223:
	.string	"write_error"
.LASF43:
	.string	"_IO_save_end"
.LASF268:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF162:
	.string	"remove_wipe"
.LASF19:
	.string	"__gid_t"
.LASF108:
	.string	"_sys_siglist"
.LASF105:
	.string	"st_mtim"
.LASF76:
	.string	"time_t"
.LASF36:
	.string	"_IO_write_base"
.LASF213:
	.string	"sizep"
.LASF232:
	.string	"soff1"
.LASF165:
	.string	"remove_methods"
.LASF142:
	.string	"error_one_per_line"
.LASF52:
	.string	"_lock"
.LASF184:
	.string	"n_files"
.LASF206:
	.string	"type"
.LASF92:
	.string	"stat"
.LASF85:
	.string	"__tzname"
.LASF41:
	.string	"_IO_save_base"
.LASF139:
	.string	"argmatch_die"
.LASF226:
	.string	"previous_human_offset"
.LASF167:
	.string	"force"
.LASF45:
	.string	"_chain"
.LASF66:
	.string	"ssize_t"
.LASF49:
	.string	"_cur_column"
.LASF70:
	.string	"sys_nerr"
.LASF83:
	.string	"mt_op"
.LASF227:
	.string	"try_without_directio"
.LASF17:
	.string	"__dev_t"
.LASF84:
	.string	"mt_count"
.LASF195:
	.string	"dir_fd"
.LASF156:
	.string	"SECTOR_SIZE"
.LASF72:
	.string	"_sys_nerr"
.LASF110:
	.string	"__environ"
.LASF238:
	.string	"human_size"
.LASF14:
	.string	"long int"
.LASF6:
	.string	"has_arg"
.LASF62:
	.string	"_IO_marker"
.LASF143:
	.string	"human_ceiling"
.LASF220:
	.string	"fill_pattern_mem"
.LASF253:
	.string	"main"
.LASF168:
	.string	"n_iterations"
.LASF228:
	.string	"wipefd_out"
.LASF196:
	.string	"rename_ok"
.LASF231:
	.string	"errnum"
.LASF82:
	.string	"mtop"
.LASF12:
	.string	"signed char"
.LASF26:
	.string	"__blksize_t"
.LASF245:
	.string	"dosync"
.LASF31:
	.string	"_IO_FILE"
.LASF87:
	.string	"__timezone"
.LASF64:
	.string	"_IO_wide_data"
.LASF97:
	.string	"st_uid"
.LASF272:
	.string	"__PRETTY_FUNCTION__"
.LASF134:
	.string	"quoting_style_args"
.LASF111:
	.string	"environ"
.LASF10:
	.string	"unsigned char"
.LASF179:
	.string	"randint_source"
.LASF250:
	.string	"fillpattern"
.LASF56:
	.string	"_freeres_list"
.LASF100:
	.string	"st_rdev"
.LASF216:
	.string	"soff"
.LASF258:
	.string	"emit_ancillary_info"
.LASF141:
	.string	"error_message_count"
.LASF29:
	.string	"__syscall_slong_t"
.LASF174:
	.string	"_Bool"
.LASF170:
	.string	"remove_file"
.LASF157:
	.string	"SECTOR_MASK"
.LASF182:
	.string	"flags"
.LASF2:
	.string	"char"
.LASF221:
	.string	"pbuf"
.LASF244:
	.string	"new_flags"
.LASF222:
	.string	"pass_string"
.LASF186:
	.string	"qname"
.LASF235:
	.string	"human_progress_opts"
.LASF148:
	.string	"human_autoscale"
.LASF271:
	.string	"_IO_lock_t"
.LASF248:
	.string	"passname"
.LASF90:
	.string	"timezone"
.LASF127:
	.string	"shell_escape_always_quoting_style"
.LASF21:
	.string	"__mode_t"
.LASF159:
	.string	"remove_method"
.LASF199:
	.string	"fd_flags"
.LASF33:
	.string	"_IO_read_ptr"
.LASF189:
	.string	"oldname"
.LASF145:
	.string	"human_floor"
.LASF147:
	.string	"human_suppress_point_zero"
.LASF67:
	.string	"stdin"
.LASF71:
	.string	"sys_errlist"
.LASF152:
	.string	"human_B"
.LASF44:
	.string	"_markers"
.LASF122:
	.string	"program_name"
.LASF183:
	.string	"file"
.LASF129:
	.string	"c_maybe_quoting_style"
.LASF191:
	.string	"newname"
.LASF261:
	.string	"node"
.LASF151:
	.string	"human_SI"
.LASF190:
	.string	"qoldname"
.LASF112:
	.string	"program_invocation_name"
.LASF53:
	.string	"_offset"
.LASF241:
	.string	"genpattern"
.LASF155:
	.string	"VERBOSE_UPDATE"
.LASF98:
	.string	"st_gid"
.LASF172:
	.string	"exact"
.LASF215:
	.string	"thresh"
.LASF210:
	.string	"accum"
.LASF150:
	.string	"human_space_before_unit"
.LASF1:
	.string	"optind"
.LASF197:
	.string	"incname"
.LASF132:
	.string	"clocale_quoting_style"
.LASF140:
	.string	"error_print_progname"
.LASF8:
	.string	"long unsigned int"
.LASF255:
	.string	"status"
.LASF47:
	.string	"_flags2"
.LASF101:
	.string	"st_size"
.LASF35:
	.string	"_IO_read_base"
.LASF217:
	.string	"ssize"
.LASF30:
	.string	"option"
.LASF60:
	.string	"_unused2"
.LASF164:
	.string	"remove_args"
.LASF180:
	.string	"argc"
.LASF188:
	.string	"wipename"
.LASF48:
	.string	"_old_offset"
.LASF230:
	.string	"done"
.LASF260:
	.string	"infomap"
.LASF181:
	.string	"argv"
.LASF27:
	.string	"__blkcnt_t"
.LASF246:
	.string	"ignorable_sync_errno"
.LASF124:
	.string	"shell_quoting_style"
.LASF204:
	.string	"size_incr"
.LASF20:
	.string	"__ino_t"
.LASF171:
	.string	"verbose"
.LASF74:
	.string	"long long int"
.LASF259:
	.string	"program"
.LASF114:
	.string	"Version"
.LASF115:
	.string	"exit_failure"
.LASF80:
	.string	"_gl_cxxalias_dummy"
.LASF243:
	.string	"enable"
.LASF128:
	.string	"c_quoting_style"
.LASF257:
	.string	"choices"
.LASF38:
	.string	"_IO_write_end"
.LASF237:
	.string	"percent"
.LASF116:
	.string	"uintmax_t"
.LASF109:
	.string	"sys_siglist"
.LASF120:
	.string	"GETOPT_VERSION_CHAR"
.LASF39:
	.string	"_IO_buf_base"
.LASF247:
	.string	"errno_val"
.LASF9:
	.string	"unsigned int"
.LASF121:
	.string	"version_etc_copyright"
.LASF233:
	.string	"offset_buf"
.LASF135:
	.string	"quoting_style_vals"
.LASF123:
	.string	"literal_quoting_style"
.LASF99:
	.string	"__pad0"
.LASF88:
	.string	"tzname"
.LASF175:
	.string	"RANDOM_SOURCE_OPTION"
.LASF58:
	.string	"__pad5"
.LASF201:
	.string	"i_size"
.LASF7:
	.string	"flag"
.LASF251:
	.string	"bits"
.LASF200:
	.string	"do_wipefd"
.LASF136:
	.string	"quoting_options"
.LASF32:
	.string	"_flags"
.LASF214:
	.string	"offset"
.LASF263:
	.string	"lc_messages"
.LASF137:
	.string	"quote_quoting_options"
.LASF194:
	.string	"first"
.LASF59:
	.string	"_mode"
.LASF54:
	.string	"_codecvt"
.LASF118:
	.string	"LOG10_TIMESPEC_HZ"
.LASF95:
	.string	"st_nlink"
.LASF65:
	.string	"off_t"
.LASF178:
	.string	"nameset"
.LASF252:
	.string	"periodic_pattern"
.LASF269:
	.string	"src/shred.c"
.LASF160:
	.string	"remove_none"
.LASF75:
	.string	"long double"
.LASF236:
	.string	"human_offset"
.LASF61:
	.string	"FILE"
.LASF173:
	.string	"zero_fill"
.LASF93:
	.string	"st_dev"
.LASF77:
	.string	"timespec"
.LASF4:
	.string	"optopt"
.LASF264:
	.string	"clear_random_data"
.LASF131:
	.string	"locale_quoting_style"
.LASF169:
	.string	"size"
.LASF81:
	.string	"long long unsigned int"
.LASF211:
	.string	"swap"
.LASF176:
	.string	"long_opts"
.LASF23:
	.string	"__off_t"
.LASF158:
	.string	"quoting_style"
.LASF113:
	.string	"program_invocation_short_name"
.LASF193:
	.string	"qdir"
.LASF166:
	.string	"Options"
.LASF265:
	.string	"emit_mandatory_arg_note"
.LASF57:
	.string	"_freeres_buf"
.LASF266:
	.string	"ptr_align"
.LASF3:
	.string	"opterr"
.LASF256:
	.string	"randint_choose"
.LASF270:
	.string	"/root/coreutils"
.LASF25:
	.string	"__time_t"
.LASF42:
	.string	"_IO_backup_base"
.LASF51:
	.string	"_shortbuf"
.LASF224:
	.string	"other_error"
.LASF242:
	.string	"direct_mode"
.LASF146:
	.string	"human_group_digits"
.LASF208:
	.string	"dest"
.LASF205:
	.string	"pass_size"
.LASF225:
	.string	"previous_offset_buf"
.LASF125:
	.string	"shell_always_quoting_style"
.LASF24:
	.string	"__off64_t"
.LASF153:
	.string	"randint"
.LASF240:
	.string	"dorewind"
.LASF130:
	.string	"escape_quoting_style"
.LASF40:
	.string	"_IO_buf_end"
.LASF5:
	.string	"name"
.LASF262:
	.string	"map_prog"
.LASF69:
	.string	"stderr"
.LASF13:
	.string	"short int"
.LASF177:
	.string	"patterns"
.LASF154:
	.string	"DEFAULT_PASSES"
.LASF79:
	.string	"tv_nsec"
.LASF254:
	.string	"usage"
.LASF126:
	.string	"shell_escape_quoting_style"
.LASF50:
	.string	"_vtable_offset"
.LASF73:
	.string	"_sys_errlist"
.LASF16:
	.string	"__uintmax_t"
.LASF117:
	.string	"TIMESPEC_HZ"
.LASF144:
	.string	"human_round_to_nearest"
.LASF86:
	.string	"__daylight"
.LASF219:
	.string	"output_size"
.LASF96:
	.string	"st_mode"
.LASF18:
	.string	"__uid_t"
.LASF239:
	.string	"known"
.LASF34:
	.string	"_IO_read_end"
.LASF91:
	.string	"getdate_err"
.LASF46:
	.string	"_fileno"
.LASF55:
	.string	"_wide_data"
.LASF0:
	.string	"optarg"
.LASF218:
	.string	"page_size"
.LASF11:
	.string	"short unsigned int"
.LASF68:
	.string	"stdout"
.LASF234:
	.string	"size_buf"
.LASF192:
	.string	"base"
.LASF161:
	.string	"remove_unlink"
.LASF37:
	.string	"_IO_write_ptr"
.LASF163:
	.string	"remove_wipesync"
.LASF202:
	.string	"passarray"
.LASF89:
	.string	"daylight"
.LASF209:
	.string	"randpasses"
.LASF94:
	.string	"st_ino"
.LASF22:
	.string	"__nlink_t"
.LASF198:
	.string	"wipefd"
.LASF185:
	.string	"random_source"
.LASF249:
	.string	"data"
.LASF203:
	.string	"remainder"
.LASF78:
	.string	"tv_sec"
.LASF138:
	.string	"argmatch_exit_fn"
.LASF149:
	.string	"human_base_1024"
.LASF133:
	.string	"custom_quoting_style"
.LASF207:
	.string	"randread_source"
.LASF104:
	.string	"st_atim"
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
