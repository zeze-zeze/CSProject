	.file	"stat.c"
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
	.type	statx_timestamp_to_timespec, @function
statx_timestamp_to_timespec:
.LFB55:
	.file 2 "src/statx.h"
	.loc 2 24 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 2 27 18
	movq	-32(%rbp), %rax
	.loc 2 27 13
	movq	%rax, -16(%rbp)
	.loc 2 28 19
	movl	-24(%rbp), %eax
	movl	%eax, %eax
	.loc 2 28 14
	movq	%rax, -8(%rbp)
	.loc 2 29 10
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	.loc 2 30 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	statx_timestamp_to_timespec, .-statx_timestamp_to_timespec
	.type	statx_to_stat, @function
statx_to_stat:
.LFB56:
	.loc 2 34 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 35 18
	movq	-24(%rbp), %rax
	movl	140(%rax), %edx
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	gnu_dev_makedev@PLT
	.loc 2 35 16
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 2 36 21
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 2 36 16
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 37 22
	movq	-24(%rbp), %rax
	movzwl	28(%rax), %eax
	movzwl	%ax, %edx
	.loc 2 37 17
	movq	-32(%rbp), %rax
	movl	%edx, 24(%rax)
	.loc 2 38 23
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edx
	.loc 2 38 18
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 39 21
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	.loc 2 39 16
	movq	-32(%rbp), %rax
	movl	%edx, 28(%rax)
	.loc 2 40 21
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	.loc 2 40 16
	movq	-32(%rbp), %rax
	movl	%edx, 32(%rax)
	.loc 2 41 19
	movq	-24(%rbp), %rax
	movl	132(%rax), %edx
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	gnu_dev_makedev@PLT
	.loc 2 41 17
	movq	-32(%rbp), %rdx
	movq	%rax, 40(%rdx)
	.loc 2 42 22
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdx
	.loc 2 42 17
	movq	-32(%rbp), %rax
	movq	%rdx, 48(%rax)
	.loc 2 43 25
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	.loc 2 43 20
	movq	-32(%rbp), %rax
	movq	%rdx, 56(%rax)
	.loc 2 46 27
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdx
	.loc 2 46 22
	movq	-32(%rbp), %rax
	movq	%rdx, 64(%rax)
	.loc 2 47 19
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	72(%rax), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	statx_timestamp_to_timespec
	movq	%rax, 72(%rbx)
	movq	%rdx, 80(%rbx)
	.loc 2 48 19
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movq	120(%rax), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	statx_timestamp_to_timespec
	movq	%rax, 88(%rbx)
	movq	%rdx, 96(%rbx)
	.loc 2 49 19
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	104(%rax), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	statx_timestamp_to_timespec
	movq	%rax, 104(%rbx)
	movq	%rdx, 112(%rbx)
	.loc 2 50 1
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	statx_to_stat, .-statx_to_stat
	.section	.rodata
	.align 8
	.type	digits, @object
	.size	digits, 11
digits:
	.string	"0123456789"
	.align 8
	.type	printf_flags, @object
	.size	printf_flags, 8
printf_flags:
	.string	"'-+ #0I"
	.align 32
	.type	fmt_terse_fs, @object
	.size	fmt_terse_fs, 34
fmt_terse_fs:
	.string	"%n %i %l %t %s %S %b %f %a %c %d\n"
	.align 32
	.type	fmt_terse_regular, @object
	.size	fmt_terse_regular, 49
fmt_terse_regular:
	.string	"%n %s %b %f %u %g %D %i %h %t %T %X %Y %Z %W %o\n"
	.align 32
	.type	fmt_terse_selinux, @object
	.size	fmt_terse_selinux, 52
fmt_terse_selinux:
	.string	"%n %s %b %f %u %g %D %i %h %t %T %X %Y %Z %W %o %C\n"
.LC19:
	.string	"default"
.LC20:
	.string	"never"
.LC21:
	.string	"always"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	cached_args, @object
	.size	cached_args, 32
cached_args:
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	0
	.section	.rodata
	.align 8
	.type	cached_modes, @object
	.size	cached_modes, 12
cached_modes:
	.long	0
	.long	1
	.long	2
.LC22:
	.string	"dereference"
.LC23:
	.string	"file-system"
.LC24:
	.string	"format"
.LC25:
	.string	"printf"
.LC26:
	.string	"terse"
.LC27:
	.string	"cached"
.LC28:
	.string	"help"
.LC29:
	.string	"version"
	.section	.data.rel.ro.local
	.align 32
	.type	long_options, @object
	.size	long_options, 288
long_options:
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	76
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
	.long	99
	.zero	4
	.quad	.LC25
	.long	1
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC27
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC28
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC29
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
	.local	follow_links
	.comm	follow_links,1,1
	.local	interpret_backslash_escapes
	.comm	interpret_backslash_escapes,1,1
	.section	.data.rel.local,"aw"
	.align 8
	.type	trailing_delim, @object
	.size	trailing_delim, 8
trailing_delim:
	.quad	.LC17
	.local	decimal_point
	.comm	decimal_point,8,8
	.local	decimal_point_len
	.comm	decimal_point_len,8,8
	.section	.rodata
.LC30:
	.string	"aafs"
.LC31:
	.string	"acfs"
.LC32:
	.string	"adfs"
.LC33:
	.string	"affs"
.LC34:
	.string	"afs"
.LC35:
	.string	"anon-inode FS"
.LC36:
	.string	"aufs"
.LC37:
	.string	"autofs"
.LC38:
	.string	"balloon-kvm-fs"
.LC39:
	.string	"befs"
.LC40:
	.string	"bdevfs"
.LC41:
	.string	"bfs"
.LC42:
	.string	"binderfs"
.LC43:
	.string	"bpf_fs"
.LC44:
	.string	"binfmt_misc"
.LC45:
	.string	"btrfs"
.LC46:
	.string	"btrfs_test"
.LC47:
	.string	"ceph"
.LC48:
	.string	"cgroupfs"
.LC49:
	.string	"cgroup2fs"
.LC50:
	.string	"cifs"
.LC51:
	.string	"coda"
.LC52:
	.string	"coh"
.LC53:
	.string	"configfs"
.LC54:
	.string	"cramfs"
.LC55:
	.string	"cramfs-wend"
.LC56:
	.string	"daxfs"
.LC57:
	.string	"debugfs"
.LC58:
	.string	"devfs"
.LC59:
	.string	"devmem"
.LC60:
	.string	"devpts"
.LC61:
	.string	"dma-buf-fs"
.LC62:
	.string	"ecryptfs"
.LC63:
	.string	"efivarfs"
.LC64:
	.string	"efs"
.LC65:
	.string	"erofs"
.LC66:
	.string	"exfs"
.LC67:
	.string	"exofs"
.LC68:
	.string	"ext"
.LC69:
	.string	"ext2/ext3"
.LC70:
	.string	"ext2"
.LC71:
	.string	"f2fs"
.LC72:
	.string	"fat"
.LC73:
	.string	"fhgfs"
.LC74:
	.string	"fuseblk"
.LC75:
	.string	"fusectl"
.LC76:
	.string	"futexfs"
.LC77:
	.string	"gfs/gfs2"
.LC78:
	.string	"gpfs"
.LC79:
	.string	"hfs"
.LC80:
	.string	"hfs+"
.LC81:
	.string	"hfsx"
.LC82:
	.string	"hostfs"
.LC83:
	.string	"hpfs"
.LC84:
	.string	"hugetlbfs"
.LC85:
	.string	"inodefs"
.LC86:
	.string	"ibrix"
.LC87:
	.string	"inotifyfs"
.LC88:
	.string	"isofs"
.LC89:
	.string	"jffs"
.LC90:
	.string	"jffs2"
.LC91:
	.string	"jfs"
.LC92:
	.string	"k-afs"
.LC93:
	.string	"logfs"
.LC94:
	.string	"lustre"
.LC95:
	.string	"m1fs"
.LC96:
	.string	"minix"
.LC97:
	.string	"minix (30 char.)"
.LC98:
	.string	"minix v2"
.LC99:
	.string	"minix v2 (30 char.)"
.LC100:
	.string	"minix3"
.LC101:
	.string	"mqueue"
.LC102:
	.string	"msdos"
.LC103:
	.string	"novell"
.LC104:
	.string	"nfs"
.LC105:
	.string	"nfsd"
.LC106:
	.string	"nilfs"
.LC107:
	.string	"nsfs"
.LC108:
	.string	"ntfs"
.LC109:
	.string	"openprom"
.LC110:
	.string	"ocfs2"
.LC111:
	.string	"overlayfs"
.LC112:
	.string	"panfs"
.LC113:
	.string	"pipefs"
.LC114:
	.string	"ppc-cmm-fs"
.LC115:
	.string	"prl_fs"
.LC116:
	.string	"proc"
.LC117:
	.string	"pstorefs"
.LC118:
	.string	"qnx4"
.LC119:
	.string	"qnx6"
.LC120:
	.string	"ramfs"
.LC121:
	.string	"rdt"
.LC122:
	.string	"reiserfs"
.LC123:
	.string	"romfs"
.LC124:
	.string	"rpc_pipefs"
.LC125:
	.string	"sdcardfs"
.LC126:
	.string	"securityfs"
.LC127:
	.string	"selinux"
.LC128:
	.string	"smackfs"
.LC129:
	.string	"smb"
.LC130:
	.string	"smb2"
.LC131:
	.string	"snfs"
.LC132:
	.string	"sockfs"
.LC133:
	.string	"squashfs"
.LC134:
	.string	"sysfs"
.LC135:
	.string	"sysv2"
.LC136:
	.string	"sysv4"
.LC137:
	.string	"tmpfs"
.LC138:
	.string	"tracefs"
.LC139:
	.string	"ubifs"
.LC140:
	.string	"udf"
.LC141:
	.string	"ufs"
.LC142:
	.string	"usbdevfs"
.LC143:
	.string	"v9fs"
.LC144:
	.string	"vboxsf"
.LC145:
	.string	"vmhgfs"
.LC146:
	.string	"vxfs"
.LC147:
	.string	"vzfs"
.LC148:
	.string	"wslfs"
.LC149:
	.string	"xenfs"
.LC150:
	.string	"xenix"
.LC151:
	.string	"xfs"
.LC152:
	.string	"xia"
.LC153:
	.string	"z3fold"
.LC154:
	.string	"zfs"
.LC155:
	.string	"zonefs"
.LC156:
	.string	"zsmallocfs"
.LC157:
	.string	"UNKNOWN (0x%lx)"
	.text
	.type	human_fstype, @function
human_fstype:
.LFB57:
	.file 3 "src/stat.c"
	.loc 3 261 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 3 265 20
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 265 3
	movl	$4283649346, %edx
	cmpq	%rdx, %rax
	je	.L19
	movl	$4283649346, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$4266872130, %edx
	cmpq	%rdx, %rax
	je	.L21
	movl	$4266872130, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$4187351113, %edx
	cmpq	%rdx, %rax
	je	.L22
	movl	$4187351113, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$4185718668, %edx
	cmpq	%rdx, %rax
	je	.L23
	movl	$4185718668, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$4076150800, %edx
	cmpq	%rdx, %rax
	je	.L24
	movl	$4076150800, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$3774210530, %edx
	cmpq	%rdx, %rax
	je	.L25
	movl	$3774210530, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$3730735588, %edx
	cmpq	%rdx, %rax
	je	.L26
	movl	$3730735588, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$3405662737, %edx
	cmpq	%rdx, %rax
	je	.L27
	movl	$3405662737, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$3380511080, %edx
	cmpq	%rdx, %rax
	je	.L28
	movl	$3380511080, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$3344373136, %edx
	cmpq	%rdx, %rax
	je	.L29
	movl	$3344373136, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$3203391149, %edx
	cmpq	%rdx, %rax
	je	.L30
	movl	$3203391149, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$3133910204, %edx
	cmpq	%rdx, %rax
	je	.L31
	movl	$3133910204, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$2881100148, %edx
	cmpq	%rdx, %rax
	je	.L32
	movl	$2881100148, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$2866260714, %edx
	cmpq	%rdx, %rax
	je	.L33
	movl	$2866260714, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$2768370933, %edx
	cmpq	%rdx, %rax
	je	.L34
	movl	$2768370933, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$2508478710, %edx
	cmpq	%rdx, %rax
	je	.L35
	movl	$2508478710, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$2435016766, %edx
	cmpq	%rdx, %rax
	je	.L36
	movl	$2435016766, %edx
	cmpq	%rdx, %rax
	jg	.L20
	movl	$2240043254, %edx
	cmpq	%rdx, %rax
	je	.L37
	movl	$2240043254, %edx
	cmpq	%rdx, %rax
	jg	.L20
	cmpq	$2088527475, %rax
	je	.L38
	cmpq	$2088527475, %rax
	jg	.L20
	cmpq	$2035054128, %rax
	je	.L39
	cmpq	$2035054128, %rax
	jg	.L20
	cmpq	$2020557398, %rax
	je	.L40
	cmpq	$2020557398, %rax
	jg	.L20
	cmpq	$1953653091, %rax
	je	.L41
	cmpq	$1953653091, %rax
	jg	.L20
	cmpq	$1952539503, %rax
	je	.L42
	cmpq	$1952539503, %rax
	jg	.L20
	cmpq	$1937076805, %rax
	je	.L43
	cmpq	$1937076805, %rax
	jg	.L20
	cmpq	$1936880249, %rax
	je	.L44
	cmpq	$1936880249, %rax
	jg	.L20
	cmpq	$1936814952, %rax
	je	.L45
	cmpq	$1936814952, %rax
	jg	.L20
	cmpq	$1935894131, %rax
	je	.L46
	cmpq	$1935894131, %rax
	jg	.L20
	cmpq	$1853056627, %rax
	je	.L47
	cmpq	$1853056627, %rax
	jg	.L20
	cmpq	$1852207972, %rax
	je	.L48
	cmpq	$1852207972, %rax
	jg	.L20
	cmpq	$1819242352, %rax
	je	.L49
	cmpq	$1819242352, %rax
	jg	.L20
	cmpq	$1799439955, %rax
	je	.L50
	cmpq	$1799439955, %rax
	jg	.L20
	cmpq	$1746473250, %rax
	je	.L51
	cmpq	$1746473250, %rax
	jg	.L20
	cmpq	$1733912937, %rax
	je	.L52
	cmpq	$1733912937, %rax
	jg	.L20
	cmpq	$1702057286, %rax
	je	.L53
	cmpq	$1702057286, %rax
	jg	.L20
	cmpq	$1702057283, %rax
	je	.L54
	cmpq	$1702057283, %rax
	jg	.L20
	cmpq	$1684300152, %rax
	je	.L55
	cmpq	$1684300152, %rax
	jg	.L20
	cmpq	$1684170528, %rax
	je	.L56
	cmpq	$1684170528, %rax
	jg	.L20
	cmpq	$1667723888, %rax
	je	.L57
	cmpq	$1667723888, %rax
	jg	.L20
	cmpq	$1650812274, %rax
	je	.L58
	cmpq	$1650812274, %rax
	jg	.L20
	cmpq	$1650812272, %rax
	je	.L59
	cmpq	$1650812272, %rax
	jg	.L20
	cmpq	$1650746742, %rax
	je	.L60
	cmpq	$1650746742, %rax
	jg	.L20
	cmpq	$1635083891, %rax
	je	.L61
	cmpq	$1635083891, %rax
	jg	.L20
	cmpq	$1634035564, %rax
	je	.L62
	cmpq	$1634035564, %rax
	jg	.L20
	cmpq	$1633904243, %rax
	je	.L63
	cmpq	$1633904243, %rax
	jg	.L20
	cmpq	$1573531125, %rax
	je	.L64
	cmpq	$1573531125, %rax
	jg	.L20
	cmpq	$1515144787, %rax
	je	.L65
	cmpq	$1515144787, %rax
	jg	.L20
	cmpq	$1513908720, %rax
	je	.L66
	cmpq	$1513908720, %rax
	jg	.L20
	cmpq	$1481003842, %rax
	je	.L67
	cmpq	$1481003842, %rax
	jg	.L20
	cmpq	$1479104553, %rax
	je	.L68
	cmpq	$1479104553, %rax
	jg	.L20
	cmpq	$1448756819, %rax
	je	.L69
	cmpq	$1448756819, %rax
	jg	.L20
	cmpq	$1410924800, %rax
	je	.L70
	cmpq	$1410924800, %rax
	jg	.L20
	cmpq	$1397703499, %rax
	je	.L71
	cmpq	$1397703499, %rax
	jg	.L20
	cmpq	$1397118030, %rax
	je	.L72
	cmpq	$1397118030, %rax
	jg	.L20
	cmpq	$1397114950, %rax
	je	.L73
	cmpq	$1397114950, %rax
	jg	.L20
	cmpq	$1397113167, %rax
	je	.L74
	cmpq	$1397113167, %rax
	jg	.L20
	cmpq	$1397109069, %rax
	je	.L75
	cmpq	$1397109069, %rax
	jg	.L20
	cmpq	$1382369651, %rax
	je	.L76
	cmpq	$1382369651, %rax
	jg	.L20
	cmpq	$1346981957, %rax
	je	.L77
	cmpq	$1346981957, %rax
	jg	.L20
	cmpq	$1196443219, %rax
	je	.L78
	cmpq	$1196443219, %rax
	jg	.L20
	cmpq	$1163413075, %rax
	je	.L79
	cmpq	$1163413075, %rax
	jg	.L20
	cmpq	$1162691661, %rax
	je	.L80
	cmpq	$1162691661, %rax
	jg	.L20
	cmpq	$1161678120, %rax
	je	.L81
	cmpq	$1161678120, %rax
	jg	.L20
	cmpq	$1145913666, %rax
	je	.L82
	cmpq	$1145913666, %rax
	jg	.L20
	cmpq	$1128357203, %rax
	je	.L83
	cmpq	$1128357203, %rax
	jg	.L20
	cmpq	$1112100429, %rax
	je	.L84
	cmpq	$1112100429, %rax
	jg	.L20
	cmpq	$1111905073, %rax
	je	.L85
	cmpq	$1111905073, %rax
	jg	.L20
	cmpq	$827541066, %rax
	je	.L86
	cmpq	$827541066, %rax
	jg	.L20
	cmpq	$801189825, %rax
	je	.L87
	cmpq	$801189825, %rax
	jg	.L20
	cmpq	$732765674, %rax
	je	.L88
	cmpq	$732765674, %rax
	jg	.L20
	cmpq	$684539205, %rax
	je	.L89
	cmpq	$684539205, %rax
	jg	.L20
	cmpq	$604313861, %rax
	je	.L90
	cmpq	$604313861, %rax
	jg	.L20
	cmpq	$464386766, %rax
	je	.L91
	cmpq	$464386766, %rax
	jg	.L20
	cmpq	$428016422, %rax
	je	.L92
	cmpq	$428016422, %rax
	jg	.L20
	cmpq	$427819522, %rax
	je	.L93
	cmpq	$427819522, %rax
	jg	.L20
	cmpq	$352400198, %rax
	je	.L94
	cmpq	$352400198, %rax
	jg	.L20
	cmpq	$325456742, %rax
	je	.L95
	cmpq	$325456742, %rax
	jg	.L20
	cmpq	$288389204, %rax
	je	.L96
	cmpq	$288389204, %rax
	jg	.L20
	cmpq	$198183888, %rax
	je	.L97
	cmpq	$198183888, %rax
	jg	.L20
	cmpq	$195894762, %rax
	je	.L98
	cmpq	$195894762, %rax
	jg	.L20
	cmpq	$151263540, %rax
	je	.L99
	cmpq	$151263540, %rax
	jg	.L20
	cmpq	$124082209, %rax
	je	.L100
	cmpq	$124082209, %rax
	jg	.L20
	cmpq	$19993000, %rax
	je	.L101
	cmpq	$19993000, %rax
	jg	.L20
	cmpq	$19920823, %rax
	je	.L102
	cmpq	$19920823, %rax
	jg	.L20
	cmpq	$19920822, %rax
	je	.L103
	cmpq	$19920822, %rax
	jg	.L20
	cmpq	$19920821, %rax
	je	.L104
	cmpq	$19920821, %rax
	jg	.L20
	cmpq	$19920820, %rax
	je	.L105
	cmpq	$19920820, %rax
	jg	.L20
	cmpq	$19911021, %rax
	je	.L106
	cmpq	$19911021, %rax
	jg	.L20
	cmpq	$18225520, %rax
	je	.L107
	cmpq	$18225520, %rax
	jg	.L20
	cmpq	$16914839, %rax
	je	.L108
	cmpq	$16914839, %rax
	jg	.L20
	cmpq	$16914836, %rax
	je	.L109
	cmpq	$16914836, %rax
	jg	.L20
	cmpq	$12805120, %rax
	je	.L110
	cmpq	$12805120, %rax
	jg	.L20
	cmpq	$12648430, %rax
	je	.L111
	cmpq	$12648430, %rax
	jg	.L20
	cmpq	$4278867, %rax
	je	.L112
	cmpq	$4278867, %rax
	jg	.L20
	cmpq	$2613483, %rax
	je	.L113
	cmpq	$2613483, %rax
	jg	.L20
	cmpq	$72020, %rax
	je	.L114
	cmpq	$72020, %rax
	jg	.L20
	cmpq	$61791, %rax
	je	.L115
	cmpq	$61791, %rax
	jg	.L20
	cmpq	$61267, %rax
	je	.L116
	cmpq	$61267, %rax
	jg	.L20
	cmpq	$61265, %rax
	je	.L117
	cmpq	$61265, %rax
	jg	.L20
	cmpq	$44543, %rax
	je	.L118
	cmpq	$44543, %rax
	jg	.L20
	cmpq	$44533, %rax
	je	.L119
	cmpq	$44533, %rax
	jg	.L20
	cmpq	$40866, %rax
	je	.L120
	cmpq	$40866, %rax
	jg	.L20
	cmpq	$40865, %rax
	je	.L121
	cmpq	$40865, %rax
	jg	.L20
	cmpq	$40864, %rax
	je	.L122
	cmpq	$40864, %rax
	jg	.L20
	cmpq	$38496, %rax
	je	.L123
	cmpq	$38496, %rax
	jg	.L20
	cmpq	$29366, %rax
	je	.L124
	cmpq	$29366, %rax
	jg	.L20
	cmpq	$29301, %rax
	je	.L125
	cmpq	$29301, %rax
	jg	.L20
	cmpq	$26985, %rax
	je	.L126
	cmpq	$26985, %rax
	jg	.L20
	cmpq	$24053, %rax
	je	.L127
	cmpq	$24053, %rax
	jg	.L20
	cmpq	$22092, %rax
	je	.L128
	cmpq	$22092, %rax
	jg	.L20
	cmpq	$20859, %rax
	je	.L129
	cmpq	$20859, %rax
	jg	.L20
	cmpq	$19802, %rax
	je	.L130
	cmpq	$19802, %rax
	jg	.L20
	cmpq	$19780, %rax
	je	.L131
	cmpq	$19780, %rax
	jg	.L20
	cmpq	$18520, %rax
	je	.L132
	cmpq	$18520, %rax
	jg	.L20
	cmpq	$18475, %rax
	je	.L133
	cmpq	$18475, %rax
	jg	.L20
	cmpq	$16964, %rax
	je	.L134
	cmpq	$16964, %rax
	jg	.L20
	cmpq	$16390, %rax
	je	.L135
	cmpq	$16390, %rax
	jg	.L20
	cmpq	$16388, %rax
	je	.L136
	cmpq	$16388, %rax
	jg	.L20
	cmpq	$16384, %rax
	je	.L137
	cmpq	$16384, %rax
	jg	.L20
	cmpq	$13364, %rax
	je	.L138
	cmpq	$13364, %rax
	jg	.L20
	cmpq	$9336, %rax
	je	.L139
	cmpq	$9336, %rax
	jg	.L20
	cmpq	$9320, %rax
	je	.L140
	cmpq	$9320, %rax
	jg	.L20
	cmpq	$7377, %rax
	je	.L141
	cmpq	$7377, %rax
	jg	.L20
	cmpq	$5007, %rax
	je	.L142
	cmpq	$5007, %rax
	jg	.L20
	cmpq	$4991, %rax
	je	.L143
	cmpq	$4991, %rax
	jg	.L20
	cmpq	$4989, %rax
	je	.L144
	cmpq	$4989, %rax
	jg	.L20
	cmpq	$4979, %rax
	je	.L145
	cmpq	$4979, %rax
	jg	.L20
	cmpq	$1984, %rax
	je	.L146
	cmpq	$1984, %rax
	jg	.L20
	cmpq	$391, %rax
	je	.L147
	cmpq	$391, %rax
	jg	.L20
	cmpq	$47, %rax
	je	.L148
	cmpq	$51, %rax
	je	.L149
	jmp	.L20
.L66:
	.loc 3 290 14
	leaq	.LC30(%rip), %rax
	jmp	.L150
.L63:
	.loc 3 292 14
	leaq	.LC31(%rip), %rax
	jmp	.L150
.L119:
	.loc 3 294 14
	leaq	.LC32(%rip), %rax
	jmp	.L150
.L118:
	.loc 3 296 14
	leaq	.LC33(%rip), %rax
	jmp	.L150
.L74:
	.loc 3 298 14
	leaq	.LC34(%rip), %rax
	jmp	.L150
.L99:
	.loc 3 300 14
	leaq	.LC35(%rip), %rax
	jmp	.L150
.L61:
	.loc 3 305 14
	leaq	.LC36(%rip), %rax
	jmp	.L150
.L147:
	.loc 3 307 14
	leaq	.LC37(%rip), %rax
	jmp	.L150
.L95:
	.loc 3 309 14
	leaq	.LC38(%rip), %rax
	jmp	.L150
.L85:
	.loc 3 311 14
	leaq	.LC39(%rip), %rax
	jmp	.L150
.L60:
	.loc 3 313 14
	leaq	.LC40(%rip), %rax
	jmp	.L150
.L91:
	.loc 3 315 14
	leaq	.LC41(%rip), %rax
	jmp	.L150
.L49:
	.loc 3 317 14
	leaq	.LC42(%rip), %rax
	jmp	.L150
.L27:
	.loc 3 319 14
	leaq	.LC43(%rip), %rax
	jmp	.L150
.L84:
	.loc 3 321 14
	leaq	.LC44(%rip), %rax
	jmp	.L150
.L36:
	.loc 3 323 14
	leaq	.LC45(%rip), %rax
	jmp	.L150
.L44:
	.loc 3 325 14
	leaq	.LC46(%rip), %rax
	jmp	.L150
.L110:
	.loc 3 327 14
	leaq	.LC47(%rip), %rax
	jmp	.L150
.L113:
	.loc 3 329 14
	leaq	.LC48(%rip), %rax
	jmp	.L150
.L57:
	.loc 3 331 14
	leaq	.LC49(%rip), %rax
	jmp	.L150
.L19:
	.loc 3 333 14
	leaq	.LC50(%rip), %rax
	jmp	.L150
.L43:
	.loc 3 335 14
	leaq	.LC51(%rip), %rax
	jmp	.L150
.L102:
	.loc 3 337 14
	leaq	.LC52(%rip), %rax
	jmp	.L150
.L59:
	.loc 3 339 14
	leaq	.LC53(%rip), %rax
	jmp	.L150
.L89:
	.loc 3 341 14
	leaq	.LC54(%rip), %rax
	jmp	.L150
.L81:
	.loc 3 343 14
	leaq	.LC55(%rip), %rax
	jmp	.L150
.L55:
	.loc 3 345 14
	leaq	.LC56(%rip), %rax
	jmp	.L150
.L56:
	.loc 3 347 14
	leaq	.LC57(%rip), %rax
	jmp	.L150
.L145:
	.loc 3 349 14
	leaq	.LC58(%rip), %rax
	jmp	.L150
.L80:
	.loc 3 351 14
	leaq	.LC59(%rip), %rax
	jmp	.L150
.L141:
	.loc 3 353 14
	leaq	.LC60(%rip), %rax
	jmp	.L150
.L82:
	.loc 3 355 14
	leaq	.LC61(%rip), %rax
	jmp	.L150
.L115:
	.loc 3 357 14
	leaq	.LC62(%rip), %rax
	jmp	.L150
.L26:
	.loc 3 359 14
	leaq	.LC63(%rip), %rax
	jmp	.L150
.L112:
	.loc 3 361 14
	leaq	.LC64(%rip), %rax
	jmp	.L150
.L25:
	.loc 3 363 14
	leaq	.LC65(%rip), %rax
	jmp	.L150
.L79:
	.loc 3 365 14
	leaq	.LC66(%rip), %rax
	jmp	.L150
.L127:
	.loc 3 367 14
	leaq	.LC67(%rip), %rax
	jmp	.L150
.L144:
	.loc 3 369 14
	leaq	.LC68(%rip), %rax
	jmp	.L150
.L116:
	.loc 3 371 14
	leaq	.LC69(%rip), %rax
	jmp	.L150
.L117:
	.loc 3 373 14
	leaq	.LC70(%rip), %rax
	jmp	.L150
.L24:
	.loc 3 375 14
	leaq	.LC71(%rip), %rax
	jmp	.L150
.L135:
	.loc 3 377 14
	leaq	.LC72(%rip), %rax
	jmp	.L150
.L92:
	.loc 3 379 14
	leaq	.LC73(%rip), %rax
	jmp	.L150
.L53:
	.loc 3 381 14
	leaq	.LC74(%rip), %rax
	jmp	.L150
.L54:
	.loc 3 383 14
	leaq	.LC75(%rip), %rax
	jmp	.L150
.L98:
	.loc 3 385 14
	leaq	.LC76(%rip), %rax
	jmp	.L150
.L107:
	.loc 3 387 14
	leaq	.LC77(%rip), %rax
	jmp	.L150
.L78:
	.loc 3 389 14
	leaq	.LC78(%rip), %rax
	jmp	.L150
.L134:
	.loc 3 391 14
	leaq	.LC79(%rip), %rax
	jmp	.L150
.L133:
	.loc 3 393 14
	leaq	.LC80(%rip), %rax
	jmp	.L150
.L132:
	.loc 3 395 14
	leaq	.LC81(%rip), %rax
	jmp	.L150
.L111:
	.loc 3 397 14
	leaq	.LC82(%rip), %rax
	jmp	.L150
.L22:
	.loc 3 399 14
	leaq	.LC83(%rip), %rax
	jmp	.L150
.L35:
	.loc 3 401 14
	leaq	.LC84(%rip), %rax
	jmp	.L150
.L96:
	.loc 3 403 14
	leaq	.LC85(%rip), %rax
	jmp	.L150
.L101:
	.loc 3 405 14
	leaq	.LC86(%rip), %rax
	jmp	.L150
.L88:
	.loc 3 407 14
	leaq	.LC87(%rip), %rax
	jmp	.L150
.L123:
	.loc 3 409 14
	leaq	.LC88(%rip), %rax
	jmp	.L150
.L136:
	.loc 3 411 14
	leaq	.LC88(%rip), %rax
	jmp	.L150
.L137:
	.loc 3 413 14
	leaq	.LC88(%rip), %rax
	jmp	.L150
.L146:
	.loc 3 415 14
	leaq	.LC89(%rip), %rax
	jmp	.L150
.L124:
	.loc 3 417 14
	leaq	.LC90(%rip), %rax
	jmp	.L150
.L86:
	.loc 3 419 14
	leaq	.LC91(%rip), %rax
	jmp	.L150
.L50:
	.loc 3 421 14
	leaq	.LC92(%rip), %rax
	jmp	.L150
.L28:
	.loc 3 423 14
	leaq	.LC93(%rip), %rax
	jmp	.L150
.L97:
	.loc 3 425 14
	leaq	.LC94(%rip), %rax
	jmp	.L150
.L75:
	.loc 3 427 14
	leaq	.LC95(%rip), %rax
	jmp	.L150
.L143:
	.loc 3 429 14
	leaq	.LC96(%rip), %rax
	jmp	.L150
.L142:
	.loc 3 431 14
	leaq	.LC97(%rip), %rax
	jmp	.L150
.L140:
	.loc 3 433 14
	leaq	.LC98(%rip), %rax
	jmp	.L150
.L139:
	.loc 3 435 14
	leaq	.LC99(%rip), %rax
	jmp	.L150
.L130:
	.loc 3 437 14
	leaq	.LC100(%rip), %rax
	jmp	.L150
.L93:
	.loc 3 439 14
	leaq	.LC101(%rip), %rax
	jmp	.L150
.L131:
	.loc 3 441 14
	leaq	.LC102(%rip), %rax
	jmp	.L150
.L128:
	.loc 3 443 14
	leaq	.LC103(%rip), %rax
	jmp	.L150
.L126:
	.loc 3 445 14
	leaq	.LC104(%rip), %rax
	jmp	.L150
.L48:
	.loc 3 447 14
	leaq	.LC105(%rip), %rax
	jmp	.L150
.L138:
	.loc 3 449 14
	leaq	.LC106(%rip), %rax
	jmp	.L150
.L47:
	.loc 3 451 14
	leaq	.LC107(%rip), %rax
	jmp	.L150
.L72:
	.loc 3 453 14
	leaq	.LC108(%rip), %rax
	jmp	.L150
.L121:
	.loc 3 455 14
	leaq	.LC109(%rip), %rax
	jmp	.L150
.L42:
	.loc 3 457 14
	leaq	.LC110(%rip), %rax
	jmp	.L150
.L39:
	.loc 3 462 14
	leaq	.LC111(%rip), %rax
	jmp	.L150
.L33:
	.loc 3 464 14
	leaq	.LC112(%rip), %rax
	jmp	.L150
.L77:
	.loc 3 469 14
	leaq	.LC113(%rip), %rax
	jmp	.L150
.L29:
	.loc 3 471 14
	leaq	.LC114(%rip), %rax
	jmp	.L150
.L38:
	.loc 3 473 14
	leaq	.LC115(%rip), %rax
	jmp	.L150
.L122:
	.loc 3 475 14
	leaq	.LC116(%rip), %rax
	jmp	.L150
.L62:
	.loc 3 477 14
	leaq	.LC117(%rip), %rax
	jmp	.L150
.L148:
	.loc 3 479 14
	leaq	.LC118(%rip), %rax
	jmp	.L150
.L51:
	.loc 3 481 14
	leaq	.LC119(%rip), %rax
	jmp	.L150
.L37:
	.loc 3 483 14
	leaq	.LC120(%rip), %rax
	jmp	.L150
.L100:
	.loc 3 485 14
	leaq	.LC121(%rip), %rax
	jmp	.L150
.L76:
	.loc 3 487 14
	leaq	.LC122(%rip), %rax
	jmp	.L150
.L125:
	.loc 3 489 14
	leaq	.LC123(%rip), %rax
	jmp	.L150
.L52:
	.loc 3 491 14
	leaq	.LC124(%rip), %rax
	jmp	.L150
.L64:
	.loc 3 493 14
	leaq	.LC125(%rip), %rax
	jmp	.L150
.L46:
	.loc 3 495 14
	leaq	.LC126(%rip), %rax
	jmp	.L150
.L23:
	.loc 3 497 14
	leaq	.LC127(%rip), %rax
	jmp	.L150
.L83:
	.loc 3 499 14
	leaq	.LC128(%rip), %rax
	jmp	.L150
.L129:
	.loc 3 501 14
	leaq	.LC129(%rip), %rax
	jmp	.L150
.L21:
	.loc 3 503 14
	leaq	.LC130(%rip), %rax
	jmp	.L150
.L30:
	.loc 3 505 14
	leaq	.LC131(%rip), %rax
	jmp	.L150
.L71:
	.loc 3 507 14
	leaq	.LC132(%rip), %rax
	jmp	.L150
.L45:
	.loc 3 509 14
	leaq	.LC133(%rip), %rax
	jmp	.L150
.L58:
	.loc 3 511 14
	leaq	.LC134(%rip), %rax
	jmp	.L150
.L103:
	.loc 3 513 14
	leaq	.LC135(%rip), %rax
	jmp	.L150
.L104:
	.loc 3 515 14
	leaq	.LC136(%rip), %rax
	jmp	.L150
.L109:
	.loc 3 517 14
	leaq	.LC137(%rip), %rax
	jmp	.L150
.L41:
	.loc 3 519 14
	leaq	.LC138(%rip), %rax
	jmp	.L150
.L90:
	.loc 3 521 14
	leaq	.LC139(%rip), %rax
	jmp	.L150
.L94:
	.loc 3 523 14
	leaq	.LC140(%rip), %rax
	jmp	.L150
.L114:
	.loc 3 525 14
	leaq	.LC141(%rip), %rax
	jmp	.L150
.L70:
	.loc 3 527 14
	leaq	.LC141(%rip), %rax
	jmp	.L150
.L120:
	.loc 3 529 14
	leaq	.LC142(%rip), %rax
	jmp	.L150
.L108:
	.loc 3 531 14
	leaq	.LC143(%rip), %rax
	jmp	.L150
.L40:
	.loc 3 533 14
	leaq	.LC144(%rip), %rax
	jmp	.L150
.L31:
	.loc 3 535 14
	leaq	.LC145(%rip), %rax
	jmp	.L150
.L34:
	.loc 3 539 14
	leaq	.LC146(%rip), %rax
	jmp	.L150
.L69:
	.loc 3 541 14
	leaq	.LC147(%rip), %rax
	jmp	.L150
.L73:
	.loc 3 543 14
	leaq	.LC148(%rip), %rax
	jmp	.L150
.L32:
	.loc 3 545 14
	leaq	.LC149(%rip), %rax
	jmp	.L150
.L105:
	.loc 3 547 14
	leaq	.LC150(%rip), %rax
	jmp	.L150
.L67:
	.loc 3 549 14
	leaq	.LC151(%rip), %rax
	jmp	.L150
.L106:
	.loc 3 551 14
	leaq	.LC152(%rip), %rax
	jmp	.L150
.L149:
	.loc 3 553 14
	leaq	.LC153(%rip), %rax
	jmp	.L150
.L87:
	.loc 3 555 14
	leaq	.LC154(%rip), %rax
	jmp	.L150
.L65:
	.loc 3 557 14
	leaq	.LC155(%rip), %rax
	jmp	.L150
.L68:
	.loc 3 559 14
	leaq	.LC156(%rip), %rax
	jmp	.L150
.L20:
.LBB2:
	.loc 3 620 43
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 620 27
	movq	%rax, -8(%rbp)
	.loc 3 623 9
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC157(%rip), %rsi
	leaq	buf.7112(%rip), %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 3 624 16
	leaq	buf.7112(%rip), %rax
.L150:
.LBE2:
	.loc 3 628 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	human_fstype, .-human_fstype
	.type	human_access, @function
human_access:
.LFB58:
	.loc 3 632 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 3 634 3
	movq	-8(%rbp), %rax
	leaq	modebuf.7116(%rip), %rsi
	movq	%rax, %rdi
	call	filemodestring@PLT
	.loc 3 635 15
	movb	$0, 10+modebuf.7116(%rip)
	.loc 3 636 10
	leaq	modebuf.7116(%rip), %rax
	.loc 3 637 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	human_access, .-human_access
	.section	.rodata
.LC158:
	.string	"TZ"
.LC159:
	.string	"%Y-%m-%d %H:%M:%S.%N %z"
.LC160:
	.string	"%s.%09d"
	.text
	.type	human_time, @function
human_time:
.LFB59:
	.loc 3 641 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	.loc 3 641 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 3 650 7
	movq	tz.7121(%rip), %rax
	.loc 3 650 6
	testq	%rax, %rax
	jne	.L154
	.loc 3 651 19
	leaq	.LC158(%rip), %rdi
	call	getenv@PLT
	.loc 3 651 10
	movq	%rax, %rdi
	call	tzalloc@PLT
	.loc 3 651 8
	movq	%rax, tz.7121(%rip)
.L154:
	.loc 3 653 13
	movq	-120(%rbp), %rax
	.loc 3 653 7
	movl	%eax, -100(%rbp)
	.loc 3 654 7
	movq	tz.7121(%rip), %rax
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	localtime_rz@PLT
	.loc 3 654 6
	testq	%rax, %rax
	je	.L155
	.loc 3 655 5
	movq	tz.7121(%rip), %rdx
	movl	-100(%rbp), %ecx
	leaq	-96(%rbp), %rax
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movq	%rax, %rcx
	leaq	.LC159(%rip), %rdx
	movl	$61, %esi
	leaq	str.7120(%rip), %rdi
	call	nstrftime@PLT
	jmp	.L156
.L155:
.LBB3:
	.loc 3 659 7
	movq	-128(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	timetostr
	movq	%rax, %rdx
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC160(%rip), %rsi
	leaq	str.7120(%rip), %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L156:
.LBE3:
	.loc 3 661 10
	leaq	str.7120(%rip), %rax
	.loc 3 662 1
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L158
	call	__stack_chk_fail@PLT
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	human_time, .-human_time
	.type	make_format, @function
make_format:
.LFB60:
	.loc 3 671 1
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
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	.loc 3 672 9
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	.loc 3 674 15
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 3 675 12
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 3 675 3
	jmp	.L160
.L163:
	.loc 3 676 32
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 676 9
	movsbl	%al, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 3 676 8
	testq	%rax, %rax
	je	.L161
	.loc 3 677 11
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 3 677 16
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %edx
	.loc 3 677 14
	movb	%dl, (%rax)
.L161:
	.loc 3 675 67 discriminator 2
	addq	$1, -16(%rbp)
.L160:
	.loc 3 675 3 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L164
	.loc 3 675 57 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 675 35 discriminator 3
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	printf_flags(%rip), %rdi
	call	strchr@PLT
	.loc 3 675 32 discriminator 3
	testq	%rax, %rax
	jne	.L163
	.loc 3 678 9
	jmp	.L164
.L165:
	.loc 3 679 18
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -16(%rbp)
	.loc 3 679 9
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	.loc 3 679 14
	movzbl	(%rdx), %edx
	.loc 3 679 12
	movb	%dl, (%rax)
.L164:
	.loc 3 678 9
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L165
	.loc 3 680 3
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 3 681 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	make_format, .-make_format
	.section	.rodata
.LC161:
	.string	"s"
.LC162:
	.string	"-"
	.text
	.type	out_string, @function
out_string:
.LFB61:
	.loc 3 685 1
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
	.loc 3 686 3
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	.LC161(%rip), %rcx
	leaq	.LC162(%rip), %rdx
	movq	%rax, %rdi
	call	make_format
	.loc 3 687 3
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 688 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	out_string, .-out_string
	.section	.rodata
.LC163:
	.string	"ld"
.LC164:
	.string	"'-+ 0"
	.text
	.type	out_int, @function
out_int:
.LFB62:
	.loc 3 691 1
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
	.loc 3 692 3
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	.LC163(%rip), %rcx
	leaq	.LC164(%rip), %rdx
	movq	%rax, %rdi
	call	make_format
	.loc 3 693 10
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 694 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	out_int, .-out_int
	.section	.rodata
.LC165:
	.string	"lu"
.LC166:
	.string	"'-0"
	.text
	.type	out_uint, @function
out_uint:
.LFB63:
	.loc 3 697 1
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
	.loc 3 698 3
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	.LC165(%rip), %rcx
	leaq	.LC166(%rip), %rdx
	movq	%rax, %rdi
	call	make_format
	.loc 3 699 10
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 700 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	out_uint, .-out_uint
	.section	.rodata
.LC167:
	.string	"lo"
.LC168:
	.string	"-#0"
	.text
	.type	out_uint_o, @function
out_uint_o:
.LFB64:
	.loc 3 703 1
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
	.loc 3 704 3
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	.LC167(%rip), %rcx
	leaq	.LC168(%rip), %rdx
	movq	%rax, %rdi
	call	make_format
	.loc 3 705 3
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 706 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	out_uint_o, .-out_uint_o
	.section	.rodata
.LC169:
	.string	"lx"
	.text
	.type	out_uint_x, @function
out_uint_x:
.LFB65:
	.loc 3 709 1
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
	.loc 3 710 3
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	.LC169(%rip), %rcx
	leaq	.LC168(%rip), %rdx
	movq	%rax, %rdi
	call	make_format
	.loc 3 711 3
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 712 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	out_uint_x, .-out_uint_x
	.section	.rodata
.LC170:
	.string	".0f"
	.text
	.type	out_minus_zero, @function
out_minus_zero:
.LFB66:
	.loc 3 715 1
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
	.loc 3 716 3
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	.LC170(%rip), %rcx
	leaq	.LC164(%rip), %rdx
	movq	%rax, %rdi
	call	make_format
	.loc 3 717 10
	movq	.LC171(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 3 718 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	out_minus_zero, .-out_minus_zero
	.section	.rodata
.LC172:
	.string	"%d"
.LC173:
	.string	"%s%.*d%-*.*d"
	.text
	.type	out_epoch_sec, @function
out_epoch_sec:
.LFB67:
	.loc 3 725 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	.loc 3 726 15
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -40(%rbp)
	.loc 3 727 10
	movq	-144(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 3 728 7
	movl	$0, -124(%rbp)
	.loc 3 729 7
	movl	$0, -120(%rbp)
	.loc 3 730 8
	movb	$0, -126(%rbp)
	.loc 3 732 6
	cmpq	$0, -40(%rbp)
	je	.L176
	.loc 3 734 28
	movq	-40(%rbp), %rax
	subq	-136(%rbp), %rax
	.loc 3 734 22
	movq	%rax, -72(%rbp)
	.loc 3 735 14
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 735 27
	movb	$0, (%rax)
	.loc 3 737 11
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 3 737 10
	cmpl	$9, %eax
	ja	.L177
.LBB4:
	.loc 3 739 40
	movq	-40(%rbp), %rax
	addq	$1, %rax
	.loc 3 739 28
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -32(%rbp)
	.loc 3 740 49
	movl	$2147483648, %eax
	movl	$2147483647, %edx
	cmpq	%rax, -32(%rbp)
	movq	%rdx, %rax
	cmovl	-32(%rbp), %rax
	.loc 3 740 21
	movl	%eax, -120(%rbp)
.LBE4:
	jmp	.L178
.L177:
	.loc 3 744 21
	movl	$9, -120(%rbp)
.L178:
	.loc 3 747 10
	cmpl	$0, -120(%rbp)
	je	.L176
	.loc 3 747 24 discriminator 1
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 3 747 21 discriminator 1
	cmpl	$9, %eax
	ja	.L176
.LBB5:
	.loc 3 752 17
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 3 753 16
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
.L179:
	.loc 3 756 13 discriminator 1
	subq	$1, -64(%rbp)
	.loc 3 757 18 discriminator 1
	movq	-64(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 3 757 11 discriminator 1
	cmpl	$9, %eax
	jbe	.L179
	.loc 3 759 29
	movq	-64(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -24(%rbp)
	.loc 3 760 47
	movl	$2147483648, %eax
	movl	$2147483647, %edx
	cmpq	%rax, -24(%rbp)
	movq	%rdx, %rax
	cmovl	-24(%rbp), %rax
	.loc 3 760 17
	movl	%eax, -124(%rbp)
	.loc 3 761 14
	cmpl	$1, -124(%rbp)
	jle	.L176
.LBB6:
	.loc 3 763 21
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 763 24
	cmpb	$48, %al
	sete	%al
	movzbl	%al, %eax
	.loc 3 763 17
	addq	%rax, -64(%rbp)
	.loc 3 764 34
	movq	-64(%rbp), %rax
	subq	-136(%rbp), %rax
	.loc 3 764 30
	movq	%rax, -72(%rbp)
	.loc 3 765 44
	movl	-124(%rbp), %eax
	movslq	%eax, %rdx
	movq	decimal_point_len(%rip), %rax
	.loc 3 765 19
	cmpq	%rax, %rdx
	jbe	.L180
	.loc 3 766 34 discriminator 1
	movl	-124(%rbp), %eax
	movq	decimal_point_len(%rip), %rdx
	subl	%edx, %eax
	jmp	.L181
.L180:
	.loc 3 765 19 discriminator 2
	movl	$0, %eax
.L181:
	.loc 3 765 19 is_stmt 0 discriminator 4
	movl	%eax, -104(%rbp)
	.loc 3 768 18 is_stmt 1 discriminator 4
	cmpl	$1, -104(%rbp)
	jle	.L176
.LBB7:
	.loc 3 770 23
	movl	-104(%rbp), %eax
	subl	-120(%rbp), %eax
	movl	%eax, -100(%rbp)
	.loc 3 771 22
	cmpl	$1, -100(%rbp)
	jle	.L176
.LBB8:
	.loc 3 773 29
	movq	-136(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB9:
	.loc 3 774 40
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 3 774 23
	jmp	.L182
.L185:
	.loc 3 776 31
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 776 30
	cmpb	$45, %al
	jne	.L183
	.loc 3 777 46
	movb	$1, -126(%rbp)
	jmp	.L184
.L183:
	.loc 3 779 33
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	.loc 3 779 38
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %edx
	.loc 3 779 36
	movb	%dl, (%rax)
.L184:
	.loc 3 774 63 discriminator 2
	addq	$1, -48(%rbp)
.L182:
	.loc 3 774 23 discriminator 1
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L185
.LBE9:
	.loc 3 782 30
	movq	-56(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	%rax, %rbx
	.loc 3 783 46
	movzbl	-126(%rbp), %eax
	xorl	$1, %eax
	.loc 3 783 50
	testb	%al, %al
	je	.L186
	.loc 3 783 52 discriminator 1
	movl	-100(%rbp), %edx
	movq	-56(%rbp), %rax
	leaq	.LC172(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 3 783 50 discriminator 1
	cltq
	jmp	.L187
.L186:
	.loc 3 783 50 is_stmt 0 discriminator 2
	movl	$0, %eax
.L187:
	.loc 3 783 26 is_stmt 1 discriminator 4
	addq	%rbx, %rax
	.loc 3 781 38 discriminator 4
	movq	%rax, -72(%rbp)
.L176:
.LBE8:
.LBE7:
.LBE6:
.LBE5:
	.loc 3 790 7
	movl	$1, -116(%rbp)
.LBB10:
	.loc 3 791 12
	movl	-120(%rbp), %eax
	movl	%eax, -112(%rbp)
	.loc 3 791 3
	jmp	.L188
.L189:
	.loc 3 792 13 discriminator 3
	movl	-116(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -116(%rbp)
	.loc 3 791 35 discriminator 3
	addl	$1, -112(%rbp)
.L188:
	.loc 3 791 3 discriminator 1
	cmpl	$8, -112(%rbp)
	jle	.L189
.LBE10:
	.loc 3 793 21
	movq	-152(%rbp), %rax
	.loc 3 793 30
	movl	-116(%rbp), %edx
	movslq	%edx, %rbx
	cqto
	idivq	%rbx
	.loc 3 793 7
	movl	%eax, -108(%rbp)
.LBB11:
	.loc 3 798 12
	movb	$0, -125(%rbp)
	.loc 3 799 14
	movq	-160(%rbp), %rax
	.loc 3 799 10
	testq	%rax, %rax
	jns	.L190
	.loc 3 799 32 discriminator 1
	movq	-152(%rbp), %rax
	.loc 3 799 26 discriminator 1
	testq	%rax, %rax
	je	.L190
.LBB12:
	.loc 3 801 15
	movl	$1000000000, %eax
	cltd
	idivl	-116(%rbp)
	movl	%eax, -96(%rbp)
	.loc 3 802 40
	movl	-96(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, %ecx
	.loc 3 803 29
	movq	-152(%rbp), %rax
	.loc 3 803 38
	movl	-116(%rbp), %edx
	movslq	%edx, %rsi
	cqto
	idivq	%rsi
	movq	%rdx, %rax
	.loc 3 803 48
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	.loc 3 802 20
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -108(%rbp)
	.loc 3 804 22
	movq	-160(%rbp), %rdx
	.loc 3 804 35
	cmpl	$0, -108(%rbp)
	setne	%al
	movzbl	%al, %eax
	.loc 3 804 22
	addq	%rdx, %rax
	movq	%rax, -160(%rbp)
	.loc 3 805 28
	movq	-160(%rbp), %rax
	.loc 3 805 22
	testq	%rax, %rax
	sete	%al
	movb	%al, -125(%rbp)
.L190:
.LBE12:
	.loc 3 809 18
	cmpb	$0, -125(%rbp)
	je	.L191
	.loc 3 808 20
	movq	-72(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	out_minus_zero
	jmp	.L192
.L191:
	.loc 3 809 20 discriminator 1
	movq	-160(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_int
.L192:
	.loc 3 807 15
	movl	%eax, -92(%rbp)
.LBE11:
	.loc 3 814 6
	cmpl	$0, -120(%rbp)
	je	.L196
.LBB13:
	.loc 3 816 11
	movl	$9, %eax
	cmpl	$9, -120(%rbp)
	cmovle	-120(%rbp), %eax
	movl	%eax, -88(%rbp)
	.loc 3 817 11
	movl	-120(%rbp), %eax
	subl	-88(%rbp), %eax
	movl	%eax, -84(%rbp)
	.loc 3 818 11
	movl	$0, %eax
	cmpl	$0, -92(%rbp)
	cmovns	-92(%rbp), %eax
	movl	%eax, -80(%rbp)
	.loc 3 819 11
	movl	-80(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.L194
	.loc 3 819 71 discriminator 1
	movl	-124(%rbp), %eax
	subl	-80(%rbp), %eax
	movslq	%eax, %rdx
	.loc 3 819 63 discriminator 1
	movq	decimal_point_len(%rip), %rax
	.loc 3 819 42 discriminator 1
	cmpq	%rax, %rdx
	jbe	.L194
	.loc 3 820 37 discriminator 3
	movl	-124(%rbp), %eax
	subl	-80(%rbp), %eax
	movl	%eax, %edx
	.loc 3 820 44 discriminator 3
	movq	decimal_point_len(%rip), %rax
	subl	%eax, %edx
	.loc 3 820 64 discriminator 3
	movl	-88(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 3 819 11 discriminator 3
	jmp	.L195
.L194:
	.loc 3 819 11 is_stmt 0 discriminator 4
	movl	$0, %eax
.L195:
	.loc 3 819 11 discriminator 6
	movl	%eax, -76(%rbp)
	.loc 3 822 7 is_stmt 1 discriminator 6
	movq	decimal_point(%rip), %rax
	movl	-84(%rbp), %edi
	movl	-76(%rbp), %esi
	movl	-108(%rbp), %ecx
	movl	-88(%rbp), %edx
	subq	$8, %rsp
	pushq	$0
	movl	%edi, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	leaq	.LC173(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
.L196:
.LBE13:
	.loc 3 825 1
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	out_epoch_sec, .-out_epoch_sec
	.section	.rodata
	.align 8
.LC174:
	.string	"failed to get security context of %s"
.LC175:
	.string	"?"
	.text
	.type	out_file_context, @function
out_file_context:
.LFB68:
	.loc 3 831 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 3 831 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 833 8
	movb	$0, -33(%rbp)
	.loc 3 836 8
	movzbl	follow_links(%rip), %eax
	.loc 3 837 45
	testb	%al, %al
	je	.L198
	.loc 3 836 10 discriminator 1
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rpl_getfilecon@PLT
	.loc 3 837 45 discriminator 1
	shrl	$31, %eax
	jmp	.L199
.L198:
	.loc 3 837 10 discriminator 2
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rpl_lgetfilecon@PLT
	.loc 3 837 45 discriminator 2
	shrl	$31, %eax
.L199:
	.loc 3 835 6
	testb	%al, %al
	je	.L200
	.loc 3 839 7
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 839 24
	leaq	.LC174(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 839 17
	call	__errno_location@PLT
	.loc 3 839 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 841 16
	movq	$0, -32(%rbp)
	.loc 3 842 12
	movb	$1, -33(%rbp)
.L200:
	.loc 3 844 3
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movw	$115, (%rax)
	.loc 3 845 30
	movq	-32(%rbp), %rax
	.loc 3 845 3
	testq	%rax, %rax
	je	.L201
	.loc 3 845 3 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	jmp	.L202
.L201:
	.loc 3 845 3 discriminator 2
	leaq	.LC175(%rip), %rax
.L202:
	.loc 3 845 3 discriminator 4
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 846 7 is_stmt 1 discriminator 4
	movq	-32(%rbp), %rax
	.loc 3 846 6 discriminator 4
	testq	%rax, %rax
	je	.L203
	.loc 3 847 5
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	freecon@PLT
.L203:
	.loc 3 848 10
	movzbl	-33(%rbp), %eax
	.loc 3 849 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L205
	call	__stack_chk_fail@PLT
.L205:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	out_file_context, .-out_file_context
	.type	print_statfs, @function
print_statfs:
.LFB69:
	.loc 3 856 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	%ecx, -88(%rbp)
	movq	%r8, -96(%rbp)
	movq	%r9, -104(%rbp)
	.loc 3 857 25
	movq	-104(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 3 858 8
	movb	$0, -49(%rbp)
	movl	-84(%rbp), %eax
	subl	$83, %eax
	cmpl	$33, %eax
	ja	.L207
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L209(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L209(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L209:
	.long	.L220-.L209
	.long	.L219-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L218-.L209
	.long	.L217-.L209
	.long	.L216-.L209
	.long	.L215-.L209
	.long	.L207-.L209
	.long	.L214-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L213-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L212-.L209
	.long	.L207-.L209
	.long	.L211-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L207-.L209
	.long	.L210-.L209
	.long	.L208-.L209
	.text
.L211:
	.loc 3 863 7
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_string
	.loc 3 864 7
	jmp	.L221
.L213:
.LBB14:
	.loc 3 875 26
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -16(%rbp)
	.loc 3 879 19
	movq	$0, -40(%rbp)
	.loc 3 880 13
	movl	$2, -44(%rbp)
.LBB15:
	.loc 3 881 18
	movl	$0, -48(%rbp)
	.loc 3 881 9
	jmp	.L222
.L224:
.LBB16:
	.loc 3 883 35 discriminator 4
	movl	-44(%rbp), %eax
	subl	$1, %eax
	.loc 3 883 39 discriminator 4
	subl	-48(%rbp), %eax
	cltq
	.loc 3 883 28 discriminator 4
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 3 883 23 discriminator 4
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	.loc 3 884 29 discriminator 4
	movl	-48(%rbp), %eax
	sall	$3, %eax
	cltq
	.loc 3 884 23 discriminator 4
	sall	$2, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	.loc 3 884 18 discriminator 4
	orq	%rax, -40(%rbp)
.LBE16:
	.loc 3 881 68 discriminator 4
	addl	$1, -48(%rbp)
.L222:
	.loc 3 881 9 discriminator 1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.L223
	.loc 3 881 40 discriminator 3
	movl	-48(%rbp), %eax
	cltq
	salq	$2, %rax
	.loc 3 881 35 discriminator 3
	cmpq	$7, %rax
	jbe	.L224
.L223:
.LBE15:
	.loc 3 887 9
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint_x
.LBE14:
	.loc 3 889 7
	jmp	.L221
.L212:
	.loc 3 892 41
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	.loc 3 892 7
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint
	.loc 3 893 7
	jmp	.L221
.L208:
	.loc 3 896 49
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 896 7
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint_x
	.loc 3 900 7
	jmp	.L221
.L219:
	.loc 3 902 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	human_fstype
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_string
	.loc 3 903 7
	jmp	.L221
.L217:
	.loc 3 905 46
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 3 905 7
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_int
	.loc 3 906 7
	jmp	.L221
.L214:
	.loc 3 908 46
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	.loc 3 908 7
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_int
	.loc 3 909 7
	jmp	.L221
.L218:
	.loc 3 911 46
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	.loc 3 911 7
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_int
	.loc 3 912 7
	jmp	.L221
.L210:
	.loc 3 914 47
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 3 914 7
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint
	.loc 3 915 7
	jmp	.L221
.L220:
.LBB17:
	.loc 3 918 28
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	.loc 3 918 19
	movq	%rax, -32(%rbp)
	.loc 3 919 12
	cmpq	$0, -32(%rbp)
	jne	.L225
	.loc 3 920 29
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 3 920 18
	movq	%rax, -32(%rbp)
.L225:
	.loc 3 921 9
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint
.LBE17:
	.loc 3 923 7
	jmp	.L221
.L216:
	.loc 3 925 7
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint
	.loc 3 926 7
	jmp	.L221
.L215:
	.loc 3 928 46
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	.loc 3 928 7
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_int
	.loc 3 929 7
	jmp	.L221
.L207:
	.loc 3 931 7
	movq	stdout(%rip), %rax
	movq	%rax, %rsi
	movl	$63, %edi
	call	fputc_unlocked@PLT
	.loc 3 932 7
	nop
.L221:
	.loc 3 934 10
	movzbl	-49(%rbp), %eax
	.loc 3 935 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	print_statfs, .-print_statfs
	.section	.rodata
	.align 8
.LC176:
	.string	"cannot read table of mounted file systems"
.LC177:
	.string	"%s"
	.text
	.type	find_bind_mount, @function
find_bind_mount:
.LFB70:
	.loc 3 942 1
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
	movq	%rdi, -344(%rbp)
	.loc 3 942 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 943 16
	movq	$0, -336(%rbp)
	.loc 3 947 7
	movzbl	tried_mount_list.7250(%rip), %eax
	xorl	$1, %eax
	.loc 3 947 6
	testb	%al, %al
	je	.L228
	.loc 3 949 26
	movl	$0, %edi
	call	read_file_system_list@PLT
	.loc 3 949 24
	movq	%rax, mount_list.7249(%rip)
	movq	mount_list.7249(%rip), %rax
	.loc 3 949 10
	testq	%rax, %rax
	jne	.L229
	.loc 3 950 9
	leaq	.LC176(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 950 19
	call	__errno_location@PLT
	.loc 3 950 9
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC177(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L229:
	.loc 3 951 24
	movb	$1, tried_mount_list.7250(%rip)
.L228:
	.loc 3 955 7
	leaq	-320(%rbp), %rdx
	movq	-344(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 3 955 6
	testl	%eax, %eax
	je	.L230
	.loc 3 956 12
	movl	$0, %eax
	jmp	.L237
.L230:
	.loc 3 959 11
	movq	mount_list.7249(%rip), %rax
	movq	%rax, -328(%rbp)
	.loc 3 959 3
	jmp	.L232
.L236:
	.loc 3 961 11
	movq	-328(%rbp), %rax
	movzbl	40(%rax), %eax
	andl	$1, %eax
	.loc 3 961 10
	testb	%al, %al
	je	.L233
	.loc 3 961 29 discriminator 1
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 961 41 discriminator 1
	movzbl	(%rax), %eax
	.loc 3 961 24 discriminator 1
	cmpb	$47, %al
	jne	.L233
	.loc 3 962 14
	movq	-328(%rbp), %rax
	movq	8(%rax), %rax
	movq	-344(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 962 11
	testl	%eax, %eax
	jne	.L233
.LBB18:
	.loc 3 966 23
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 966 15
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	.loc 3 966 14
	testl	%eax, %eax
	jne	.L233
	.loc 3 967 18
	movq	-312(%rbp), %rdx
	movq	-168(%rbp), %rax
	.loc 3 967 15
	cmpq	%rax, %rdx
	jne	.L233
	.loc 3 967 18 discriminator 1
	movq	-320(%rbp), %rdx
	movq	-176(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L233
	.loc 3 969 26
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	jmp	.L235
.L233:
.LBE18:
	.loc 3 959 32 discriminator 2
	movq	-328(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -328(%rbp)
.L232:
	.loc 3 959 3 discriminator 1
	cmpq	$0, -328(%rbp)
	jne	.L236
.L235:
	.loc 3 975 10
	movq	-336(%rbp), %rax
.L237:
	.loc 3 976 1 discriminator 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L238
	.loc 3 976 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L238:
	addq	$344, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	find_bind_mount, .-find_bind_mount
	.section	.rodata
.LC178:
	.string	"failed to canonicalize %s"
	.text
	.type	out_mount_point, @function
out_mount_point:
.LFB71:
	.loc 3 982 1 is_stmt 1
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
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	.loc 3 984 15
	leaq	.LC175(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 3 984 26
	movq	$0, -48(%rbp)
	.loc 3 985 9
	movq	$0, -40(%rbp)
	.loc 3 986 8
	movb	$1, -49(%rbp)
	.loc 3 990 7
	movzbl	follow_links(%rip), %eax
	.loc 3 990 6
	testb	%al, %al
	jne	.L240
	.loc 3 990 24 discriminator 1
	movq	-96(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 3 990 20 discriminator 1
	cmpl	$40960, %eax
	je	.L241
.L240:
.LBB19:
	.loc 3 992 24
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	canonicalize_file_name@PLT
	movq	%rax, -24(%rbp)
	.loc 3 993 10
	cmpq	$0, -24(%rbp)
	jne	.L242
	.loc 3 995 11
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 995 28
	leaq	.LC178(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 995 21
	call	__errno_location@PLT
	.loc 3 995 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 996 11
	jmp	.L243
.L242:
	.loc 3 998 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	find_bind_mount
	movq	%rax, -48(%rbp)
	.loc 3 999 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 1000 10
	cmpq	$0, -48(%rbp)
	je	.L241
	.loc 3 1002 16
	movb	$0, -49(%rbp)
	.loc 3 1003 11
	jmp	.L243
.L241:
.LBE19:
	.loc 3 1012 13
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	find_mount_point@PLT
	movq	%rax, -40(%rbp)
	.loc 3 1012 6
	cmpq	$0, -40(%rbp)
	je	.L249
	.loc 3 1016 12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	find_bind_mount
	movq	%rax, -48(%rbp)
	.loc 3 1017 12
	movb	$0, -49(%rbp)
	jmp	.L243
.L249:
	.loc 3 1020 1
	nop
.L243:
	.loc 3 1022 3
	cmpq	$0, -48(%rbp)
	jne	.L244
	.loc 3 1022 54 discriminator 1
	cmpq	$0, -40(%rbp)
	je	.L245
	.loc 3 1022 54 is_stmt 0 discriminator 3
	movq	-40(%rbp), %rax
	jmp	.L247
.L245:
	.loc 3 1022 54 discriminator 4
	movq	-32(%rbp), %rax
	jmp	.L247
.L244:
	.loc 3 1022 3 is_stmt 1 discriminator 2
	movq	-48(%rbp), %rax
.L247:
	.loc 3 1022 3 is_stmt 0 discriminator 8
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	out_string
	.loc 3 1023 3 is_stmt 1 discriminator 8
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 1024 10 discriminator 8
	movzbl	-49(%rbp), %eax
	.loc 3 1025 1 discriminator 8
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	out_mount_point, .-out_mount_point
	.type	neg_to_zero, @function
neg_to_zero:
.LFB72:
	.loc 3 1030 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 3 1031 14
	movq	-24(%rbp), %rax
	.loc 3 1031 6
	testq	%rax, %rax
	js	.L251
	.loc 3 1032 12
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	jmp	.L253
.L251:
	.loc 3 1033 19
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	.loc 3 1034 10
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
.L253:
	.loc 3 1035 1 discriminator 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	neg_to_zero, .-neg_to_zero
	.section	.rodata
.LC179:
	.string	"QUOTING_STYLE"
	.align 8
.LC180:
	.string	"ignoring invalid value of environment variable QUOTING_STYLE: %s"
	.text
	.type	getenv_quoting_style, @function
getenv_quoting_style:
.LFB73:
	.loc 3 1042 1
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
	.loc 3 1043 25
	leaq	.LC179(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -24(%rbp)
	.loc 3 1044 6
	cmpq	$0, -24(%rbp)
	je	.L255
.LBB20:
	.loc 3 1046 15
	movq	-24(%rbp), %rax
	movl	$4, %ecx
	leaq	quoting_style_vals(%rip), %rdx
	leaq	quoting_style_args(%rip), %rsi
	movq	%rax, %rdi
	call	argmatch@PLT
	.loc 3 1046 11
	movl	%eax, -28(%rbp)
	.loc 3 1047 10
	cmpl	$0, -28(%rbp)
	js	.L256
	.loc 3 1048 9
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	quoting_style_vals(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	set_quoting_style@PLT
.LBE20:
	.loc 3 1058 1
	jmp	.L258
.L256:
.LBB21:
	.loc 3 1051 11
	movl	$4, %esi
	movl	$0, %edi
	call	set_quoting_style@PLT
	.loc 3 1052 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 3 1052 24
	leaq	.LC180(%rip), %rdi
	call	gettext@PLT
	.loc 3 1052 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.LBE21:
	.loc 3 1058 1
	jmp	.L258
.L255:
	.loc 3 1057 5
	movl	$4, %esi
	movl	$0, %edi
	call	set_quoting_style@PLT
.L258:
	.loc 3 1058 1
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	getenv_quoting_style, .-getenv_quoting_style
	.section	.rodata
	.align 8
.LC181:
	.string	"warning: unrecognized escape '\\%c'"
	.text
	.type	print_esc_char, @function
print_esc_char:
.LFB74:
	.loc 3 1067 1
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
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 3 1068 3
	movsbl	-20(%rbp), %eax
	cmpl	$34, %eax
	je	.L272
	cmpl	$34, %eax
	jl	.L261
	cmpl	$118, %eax
	jg	.L261
	cmpl	$92, %eax
	jl	.L261
	subl	$92, %eax
	cmpl	$26, %eax
	ja	.L261
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L263(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L263(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L263:
	.long	.L272-.L263
	.long	.L261-.L263
	.long	.L261-.L263
	.long	.L261-.L263
	.long	.L261-.L263
	.long	.L270-.L263
	.long	.L269-.L263
	.long	.L261-.L263
	.long	.L261-.L263
	.long	.L268-.L263
	.long	.L267-.L263
	.long	.L261-.L263
	.long	.L261-.L263
	.long	.L261-.L263
	.long	.L261-.L263
	.long	.L261-.L263
	.long	.L261-.L263
	.long	.L261-.L263
	.long	.L266-.L263
	.long	.L261-.L263
	.long	.L261-.L263
	.long	.L261-.L263
	.long	.L265-.L263
	.long	.L261-.L263
	.long	.L264-.L263
	.long	.L261-.L263
	.long	.L262-.L263
	.text
.L270:
	.loc 3 1071 9
	movb	$7, -20(%rbp)
	.loc 3 1072 7
	jmp	.L271
.L269:
	.loc 3 1074 9
	movb	$8, -20(%rbp)
	.loc 3 1075 7
	jmp	.L271
.L268:
	.loc 3 1077 9
	movb	$27, -20(%rbp)
	.loc 3 1078 7
	jmp	.L271
.L267:
	.loc 3 1080 9
	movb	$12, -20(%rbp)
	.loc 3 1081 7
	jmp	.L271
.L266:
	.loc 3 1083 9
	movb	$10, -20(%rbp)
	.loc 3 1084 7
	jmp	.L271
.L265:
	.loc 3 1086 9
	movb	$13, -20(%rbp)
	.loc 3 1087 7
	jmp	.L271
.L264:
	.loc 3 1089 9
	movb	$9, -20(%rbp)
	.loc 3 1090 7
	jmp	.L271
.L262:
	.loc 3 1092 9
	movb	$11, -20(%rbp)
	.loc 3 1093 7
	jmp	.L271
.L261:
	.loc 3 1098 7
	movsbl	-20(%rbp), %ebx
	.loc 3 1098 20
	leaq	.LC181(%rip), %rdi
	call	gettext@PLT
	.loc 3 1098 7
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1099 7
	jmp	.L271
.L272:
	.loc 3 1096 7
	nop
.L271:
	.loc 3 1101 3
	movsbl	-20(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 3 1102 1
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	print_esc_char, .-print_esc_char
	.type	format_code_offset, @function
format_code_offset:
.LFB75:
	.loc 3 1106 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 3 1107 16
	movq	-24(%rbp), %rax
	addq	$1, %rax
	leaq	printf_flags(%rip), %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	movq	%rax, -8(%rbp)
	.loc 3 1108 42
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 3 1108 15
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 3 1109 15
	movq	-16(%rbp), %rax
	leaq	digits(%rip), %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	.loc 3 1109 12
	addq	%rax, -16(%rbp)
	.loc 3 1110 7
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 1110 6
	cmpb	$46, %al
	jne	.L274
	.loc 3 1111 21
	movq	-16(%rbp), %rax
	addq	$1, %rax
	leaq	digits(%rip), %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	.loc 3 1111 19
	addq	$1, %rax
	.loc 3 1111 14
	addq	%rax, -16(%rbp)
.L274:
	.loc 3 1112 19
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	.loc 3 1113 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	format_code_offset, .-format_code_offset
	.section	.rodata
.LC182:
	.string	"%s: invalid directive"
	.align 8
.LC183:
	.string	"warning: backslash at end of format"
	.text
	.type	print_it, @function
print_it:
.LFB76:
	.loc 3 1123 1
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
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	.loc 3 1124 8
	movb	$0, -69(%rbp)
	.loc 3 1135 20
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 3 1135 10
	addq	$3, %rax
	movq	%rax, -48(%rbp)
	.loc 3 1136 16
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -40(%rbp)
	.loc 3 1138 10
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 3 1138 3
	jmp	.L277
.L304:
	.loc 3 1140 15
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 3 1140 7
	cmpl	$37, %eax
	je	.L278
	cmpl	$92, %eax
	je	.L279
	jmp	.L306
.L278:
.LBB22:
	.loc 3 1144 26
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	format_code_offset
	movq	%rax, -32(%rbp)
	.loc 3 1145 25
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 3 1146 13
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 3 1147 15
	movq	-32(%rbp), %rax
	addq	%rax, -56(%rbp)
	.loc 3 1149 21
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	testl	%eax, %eax
	je	.L281
	cmpl	$37, %eax
	je	.L282
	jmp	.L307
.L281:
	.loc 3 1152 17
	subq	$1, -56(%rbp)
.L282:
	.loc 3 1155 20
	cmpq	$1, -32(%rbp)
	jbe	.L284
.LBB23:
	.loc 3 1157 25
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	.loc 3 1157 33
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 1157 31
	movb	%al, (%rdx)
	.loc 3 1158 25
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1158 35
	movb	$0, (%rax)
	.loc 3 1159 21
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC182(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L284:
.LBE23:
	.loc 3 1162 17
	movl	$37, %edi
	call	putchar_unlocked@PLT
	.loc 3 1163 17
	jmp	.L285
.L307:
	.loc 3 1165 58
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 1165 48
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	.loc 3 1165 25
	movzbl	%al, %edx
	movq	-120(%rbp), %r8
	movq	-104(%rbp), %rdi
	movl	-92(%rbp), %ecx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	-112(%rbp), %r10
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
.LVL0:
	.loc 3 1165 22
	orb	-69(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -69(%rbp)
	.loc 3 1167 17
	nop
.L285:
	.loc 3 1169 13
	jmp	.L286
.L279:
.LBE22:
	.loc 3 1173 16
	movzbl	interpret_backslash_escapes(%rip), %eax
	xorl	$1, %eax
	.loc 3 1173 14
	testb	%al, %al
	je	.L287
	.loc 3 1175 15
	movl	$92, %edi
	call	putchar_unlocked@PLT
	.loc 3 1176 15
	jmp	.L286
.L287:
	.loc 3 1178 11
	addq	$1, -56(%rbp)
	.loc 3 1179 15
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 1179 14
	cmpb	$47, %al
	jle	.L288
	.loc 3 1179 15 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$55, %al
	jg	.L288
.LBB24:
	.loc 3 1181 31
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 3 1181 19
	subl	$48, %eax
	movl	%eax, -68(%rbp)
	.loc 3 1182 19
	movl	$1, -64(%rbp)
	.loc 3 1183 20
	addq	$1, -56(%rbp)
	.loc 3 1183 15
	jmp	.L289
.L291:
	.loc 3 1186 41
	movl	-68(%rbp), %eax
	leal	0(,%rax,8), %edx
	.loc 3 1186 47
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 3 1186 29
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	.loc 3 1184 20
	addl	$1, -64(%rbp)
	.loc 3 1184 34
	addq	$1, -56(%rbp)
.L289:
	.loc 3 1183 15 discriminator 1
	cmpl	$2, -64(%rbp)
	jg	.L290
	.loc 3 1183 43 discriminator 2
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 1183 40 discriminator 2
	cmpb	$47, %al
	jle	.L290
	.loc 3 1183 43 discriminator 3
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$55, %al
	jle	.L291
.L290:
	.loc 3 1188 15
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 3 1189 15
	subq	$1, -56(%rbp)
.LBE24:
	.loc 3 1180 13
	jmp	.L292
.L288:
	.loc 3 1191 20
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 1191 19
	cmpb	$120, %al
	jne	.L293
	.loc 3 1191 33 discriminator 1
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	.loc 3 1191 30 discriminator 1
	testl	%eax, %eax
	je	.L293
.LBB25:
	.loc 3 1193 31
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$96, %al
	jle	.L294
	.loc 3 1193 31 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$102, %al
	jg	.L294
	.loc 3 1193 31 discriminator 3
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$87, %eax
	jmp	.L295
.L294:
	.loc 3 1193 31 discriminator 4
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L296
	.loc 3 1193 31 discriminator 6
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$70, %al
	jg	.L296
	.loc 3 1193 31 discriminator 8
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$55, %eax
	jmp	.L295
.L296:
	.loc 3 1193 31 discriminator 9
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
.L295:
	.loc 3 1193 19 is_stmt 1 discriminator 12
	movl	%eax, -60(%rbp)
	.loc 3 1196 15 discriminator 12
	addq	$1, -56(%rbp)
	.loc 3 1197 19 discriminator 12
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	.loc 3 1197 18 discriminator 12
	testl	%eax, %eax
	je	.L298
	.loc 3 1199 19
	addq	$1, -56(%rbp)
	.loc 3 1200 41
	movl	-60(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	.loc 3 1200 48
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$96, %al
	jle	.L299
	.loc 3 1200 48 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$102, %al
	jg	.L299
	.loc 3 1200 48 discriminator 3
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$87, %eax
	jmp	.L300
.L299:
	.loc 3 1200 48 discriminator 4
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L301
	.loc 3 1200 48 discriminator 6
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$70, %al
	jg	.L301
	.loc 3 1200 48 discriminator 8
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$55, %eax
	jmp	.L300
.L301:
	.loc 3 1200 48 discriminator 9
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
.L300:
	.loc 3 1200 29 is_stmt 1 discriminator 12
	addl	%edx, %eax
	movl	%eax, -60(%rbp)
.L298:
	.loc 3 1202 15
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.LBE25:
	.loc 3 1192 13
	jmp	.L292
.L293:
	.loc 3 1204 20
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 1204 19
	testb	%al, %al
	jne	.L303
	.loc 3 1206 28
	leaq	.LC183(%rip), %rdi
	call	gettext@PLT
	.loc 3 1206 15
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1207 15
	movl	$92, %edi
	call	putchar_unlocked@PLT
	.loc 3 1209 15
	subq	$1, -56(%rbp)
	.loc 3 1215 11
	jmp	.L286
.L303:
	.loc 3 1213 31
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 1213 15
	movsbl	%al, %eax
	movl	%eax, %edi
	call	print_esc_char
	.loc 3 1215 11
	jmp	.L286
.L292:
	jmp	.L286
.L306:
	.loc 3 1218 11
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 3 1219 11
	nop
.L286:
	.loc 3 1138 25 discriminator 2
	addq	$1, -56(%rbp)
.L277:
	.loc 3 1138 20 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 1138 3 discriminator 1
	testb	%al, %al
	jne	.L304
	.loc 3 1222 3
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 1224 3
	movq	stdout(%rip), %rdx
	movq	trailing_delim(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 1226 10
	movzbl	-69(%rbp), %eax
	.loc 3 1227 1
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	print_it, .-print_it
	.section	.rodata
	.align 8
.LC184:
	.string	"using %s to denote standard input does not work in file system mode"
	.align 8
.LC185:
	.string	"cannot read file system information for %s"
	.text
	.type	do_statfs, @function
do_statfs:
.LFB77:
	.loc 3 1232 1
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
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	.loc 3 1232 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 1235 7
	movq	-168(%rbp), %rax
	leaq	.LC162(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 1235 6
	testl	%eax, %eax
	jne	.L309
	.loc 3 1237 7
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 3 1237 20
	leaq	.LC184(%rip), %rdi
	call	gettext@PLT
	.loc 3 1237 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1239 14
	movl	$0, %eax
	jmp	.L312
.L309:
	.loc 3 1242 7
	leaq	-144(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	statfs@PLT
	.loc 3 1242 6
	testl	%eax, %eax
	je	.L311
	.loc 3 1244 7
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 1244 24
	leaq	.LC185(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 1244 17
	call	__errno_location@PLT
	.loc 3 1244 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1246 14
	movl	$0, %eax
	jmp	.L312
.L311:
	.loc 3 1249 15
	leaq	-144(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rcx, %r8
	leaq	print_statfs(%rip), %rcx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	print_it
	movb	%al, -145(%rbp)
	.loc 3 1250 3
	movzbl	-145(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 3 1250 10
	andl	$1, %eax
.L312:
	.loc 3 1251 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L313
	.loc 3 1251 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L313:
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	do_statfs, .-do_statfs
	.local	dont_sync
	.comm	dont_sync,1,1
	.local	force_sync
	.comm	force_sync,1,1
	.type	fmt_to_mask, @function
fmt_to_mask:
.LFB78:
	.loc 3 1267 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 3 1268 3
	movsbl	-4(%rbp), %eax
	subl	$65, %eax
	cmpl	$57, %eax
	ja	.L315
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L317(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L317(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L317:
	.long	.L331-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L329-.L317
	.long	.L315-.L317
	.long	.L333-.L317
	.long	.L327-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L332-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L322-.L317
	.long	.L321-.L317
	.long	.L315-.L317
	.long	.L320-.L317
	.long	.L319-.L317
	.long	.L318-.L317
	.long	.L316-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L331-.L317
	.long	.L330-.L317
	.long	.L315-.L317
	.long	.L329-.L317
	.long	.L315-.L317
	.long	.L328-.L317
	.long	.L327-.L317
	.long	.L326-.L317
	.long	.L325-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L324-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L315-.L317
	.long	.L323-.L317
	.long	.L322-.L317
	.long	.L321-.L317
	.long	.L315-.L317
	.long	.L320-.L317
	.long	.L319-.L317
	.long	.L318-.L317
	.long	.L316-.L317
	.text
.L332:
	.loc 3 1271 14
	movl	$2, %eax
	jmp	.L334
.L329:
	.loc 3 1274 14
	movl	$2, %eax
	jmp	.L334
.L325:
	.loc 3 1276 14
	movl	$256, %eax
	jmp	.L334
.L331:
	.loc 3 1279 14
	movl	$2, %eax
	jmp	.L334
.L328:
	.loc 3 1281 14
	movl	$3, %eax
	jmp	.L334
.L333:
	.loc 3 1283 14
	movl	$1, %eax
	jmp	.L334
.L326:
	.loc 3 1285 14
	movl	$4, %eax
	jmp	.L334
.L321:
	.loc 3 1288 14
	movl	$8, %eax
	jmp	.L334
.L327:
	.loc 3 1291 14
	movl	$16, %eax
	jmp	.L334
.L324:
	.loc 3 1293 14
	movl	$258, %eax
	jmp	.L334
.L323:
	.loc 3 1295 14
	movl	$512, %eax
	jmp	.L334
.L322:
	.loc 3 1298 14
	movl	$2, %eax
	jmp	.L334
.L330:
	.loc 3 1300 14
	movl	$1024, %eax
	jmp	.L334
.L320:
	.loc 3 1303 14
	movl	$2048, %eax
	jmp	.L334
.L319:
	.loc 3 1306 14
	movl	$32, %eax
	jmp	.L334
.L318:
	.loc 3 1309 14
	movl	$64, %eax
	jmp	.L334
.L316:
	.loc 3 1312 14
	movl	$128, %eax
	jmp	.L334
.L315:
	.loc 3 1314 10
	movl	$0, %eax
.L334:
	.loc 3 1315 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	fmt_to_mask, .-fmt_to_mask
	.type	format_to_mask, @function
format_to_mask:
.LFB79:
	.loc 3 1319 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 3 1320 16
	movl	$0, -12(%rbp)
	.loc 3 1323 10
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 3 1323 3
	jmp	.L336
.L341:
	.loc 3 1325 11
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 1325 10
	cmpb	$37, %al
	jne	.L343
	.loc 3 1328 12
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	format_code_offset
	.loc 3 1328 9
	addq	%rax, -8(%rbp)
	.loc 3 1329 11
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 1329 10
	testb	%al, %al
	je	.L344
	.loc 3 1331 28
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 1331 15
	movsbl	%al, %eax
	movl	%eax, %edi
	call	fmt_to_mask
	.loc 3 1331 12
	orl	%eax, -12(%rbp)
	jmp	.L338
.L343:
	.loc 3 1326 9
	nop
.L338:
	.loc 3 1323 25 discriminator 2
	addq	$1, -8(%rbp)
.L336:
	.loc 3 1323 20 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 3 1323 3 discriminator 1
	testb	%al, %al
	jne	.L341
	jmp	.L340
.L344:
	.loc 3 1330 9
	nop
.L340:
	.loc 3 1333 10
	movl	-12(%rbp), %eax
	.loc 3 1334 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	format_to_mask, .-format_to_mask
	.section	.rodata
.LC186:
	.string	"cannot stat standard input"
.LC187:
	.string	"cannot statx %s"
	.text
	.type	do_stat, @function
do_stat:
.LFB80:
	.loc 3 1339 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$512, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -504(%rbp)
	movq	%rsi, -512(%rbp)
	movq	%rdx, -520(%rbp)
	.loc 3 1339 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 1340 12
	movq	-504(%rbp), %rax
	leaq	.LC162(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 3 1340 38
	testl	%eax, %eax
	jne	.L346
	.loc 3 1340 38 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L347
.L346:
	.loc 3 1340 38 discriminator 2
	movl	$-100, %eax
.L347:
	.loc 3 1340 7 is_stmt 1 discriminator 4
	movl	%eax, -476(%rbp)
	.loc 3 1341 7 discriminator 4
	movl	$0, -480(%rbp)
	.loc 3 1343 16 discriminator 4
	leaq	-288(%rbp), %rdx
	movl	$0, %eax
	movl	$32, %ecx
	movq	%rdx, %rdi
	rep stosq
	.loc 3 1344 15 discriminator 4
	movq	-504(%rbp), %rax
	movq	%rax, -472(%rbp)
	.loc 3 1346 9 discriminator 4
	leaq	-432(%rbp), %rax
	movq	%rax, -464(%rbp)
	.loc 3 1347 12 discriminator 4
	movq	$-1, -456(%rbp)
	movq	$-1, -448(%rbp)
	.loc 3 1349 6 discriminator 4
	cmpl	$-100, -476(%rbp)
	je	.L348
	.loc 3 1351 16
	leaq	.LC17(%rip), %rax
	movq	%rax, -472(%rbp)
	.loc 3 1352 13
	movl	$4096, -480(%rbp)
	jmp	.L349
.L348:
	.loc 3 1354 12
	movzbl	follow_links(%rip), %eax
	xorl	$1, %eax
	.loc 3 1354 11
	testb	%al, %al
	je	.L349
	.loc 3 1356 13
	movl	$256, -480(%rbp)
.L349:
	.loc 3 1359 7
	movzbl	dont_sync(%rip), %eax
	.loc 3 1359 6
	testb	%al, %al
	je	.L350
	.loc 3 1360 11
	orl	$16384, -480(%rbp)
	jmp	.L351
.L350:
	.loc 3 1361 12
	movzbl	force_sync(%rip), %eax
	.loc 3 1361 11
	testb	%al, %al
	je	.L351
	.loc 3 1362 11
	orl	$8192, -480(%rbp)
.L351:
	.loc 3 1364 8
	movq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	format_to_mask
	movl	%eax, %ecx
	leaq	-288(%rbp), %rdi
	movl	-480(%rbp), %edx
	movq	-472(%rbp), %rsi
	movl	-476(%rbp), %eax
	movq	%rdi, %r8
	movl	%eax, %edi
	call	statx@PLT
	movl	%eax, -476(%rbp)
	.loc 3 1365 6
	cmpl	$0, -476(%rbp)
	jns	.L352
	.loc 3 1367 17
	movl	-480(%rbp), %eax
	andl	$4096, %eax
	.loc 3 1367 10
	testl	%eax, %eax
	je	.L353
	.loc 3 1368 26
	leaq	.LC186(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 1368 19
	call	__errno_location@PLT
	.loc 3 1368 9
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L354
.L353:
	.loc 3 1370 9
	movq	-504(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 1370 26
	leaq	.LC187(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 1370 19
	call	__errno_location@PLT
	.loc 3 1370 9
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L354:
	.loc 3 1371 14
	movl	$0, %eax
	jmp	.L355
.L352:
	.loc 3 1374 7
	movzwl	-260(%rbp), %eax
	movzwl	%ax, %eax
	andl	$61440, %eax
	.loc 3 1374 6
	cmpl	$24576, %eax
	je	.L356
	.loc 3 1374 33 discriminator 1
	movzwl	-260(%rbp), %eax
	movzwl	%ax, %eax
	andl	$61440, %eax
	.loc 3 1374 30 discriminator 1
	cmpl	$8192, %eax
	jne	.L357
.L356:
	.loc 3 1375 12
	movq	-520(%rbp), %rax
	movq	%rax, -512(%rbp)
.L357:
	.loc 3 1377 3
	leaq	-432(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	statx_to_stat
	.loc 3 1378 10
	movl	-288(%rbp), %eax
	.loc 3 1378 20
	andl	$2048, %eax
	.loc 3 1378 6
	testl	%eax, %eax
	je	.L358
	.loc 3 1379 16
	movq	-208(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	statx_timestamp_to_timespec
	movq	%rax, -456(%rbp)
	movq	%rdx, -448(%rbp)
.L358:
	.loc 3 1381 15
	leaq	-464(%rbp), %rcx
	movq	-504(%rbp), %rdx
	movl	-476(%rbp), %esi
	movq	-512(%rbp), %rax
	movq	%rcx, %r8
	leaq	print_stat(%rip), %rcx
	movq	%rax, %rdi
	call	print_it
	movb	%al, -481(%rbp)
	.loc 3 1382 3
	movzbl	-481(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 3 1382 10
	andl	$1, %eax
.L355:
	.loc 3 1383 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L360
	call	__stack_chk_fail@PLT
.L360:
	addq	$512, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	do_stat, .-do_stat
	.section	.rodata
.LC188:
	.string	"cannot read symbolic link %s"
.LC189:
	.string	" -> "
.LC190:
	.string	"UNKNOWN"
	.text
	.type	print_stat, @function
print_stat:
.LFB81:
	.loc 3 1463 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movl	%ecx, -104(%rbp)
	movq	%r8, -112(%rbp)
	movq	%r9, -120(%rbp)
	.loc 3 1464 22
	movq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 3 1465 16
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	.loc 3 1466 19
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 3 1469 8
	movb	$0, -73(%rbp)
	movl	-100(%rbp), %eax
	subl	$65, %eax
	cmpl	$57, %eax
	ja	.L362
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L364(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L364(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L364:
	.long	.L393-.L364
	.long	.L392-.L364
	.long	.L391-.L364
	.long	.L390-.L364
	.long	.L362-.L364
	.long	.L389-.L364
	.long	.L388-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L387-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L386-.L364
	.long	.L385-.L364
	.long	.L362-.L364
	.long	.L384-.L364
	.long	.L383-.L364
	.long	.L382-.L364
	.long	.L381-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L380-.L364
	.long	.L379-.L364
	.long	.L362-.L364
	.long	.L378-.L364
	.long	.L362-.L364
	.long	.L377-.L364
	.long	.L376-.L364
	.long	.L375-.L364
	.long	.L374-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L373-.L364
	.long	.L372-.L364
	.long	.L371-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L362-.L364
	.long	.L370-.L364
	.long	.L369-.L364
	.long	.L368-.L364
	.long	.L362-.L364
	.long	.L367-.L364
	.long	.L366-.L364
	.long	.L365-.L364
	.long	.L363-.L364
	.text
.L372:
	.loc 3 1474 7
	movq	-112(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_string
	.loc 3 1475 7
	jmp	.L394
.L387:
	.loc 3 1477 40
	movl	$0, %edi
	call	get_quoting_style@PLT
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	quotearg_style@PLT
	movq	%rax, %rdx
	.loc 3 1477 7
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_string
	.loc 3 1478 11
	movq	-64(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 3 1478 10
	cmpl	$40960, %eax
	jne	.L407
.LBB26:
	.loc 3 1480 66
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	.loc 3 1480 28
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	areadlink_with_size@PLT
	movq	%rax, -48(%rbp)
	.loc 3 1481 14
	cmpq	$0, -48(%rbp)
	jne	.L396
	.loc 3 1483 15
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 3 1483 32
	leaq	.LC188(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 3 1483 25
	call	__errno_location@PLT
	.loc 3 1483 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1485 22
	movl	$1, %eax
	jmp	.L406
.L396:
	.loc 3 1487 11
	leaq	.LC189(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 1488 44
	movl	$0, %edi
	call	get_quoting_style@PLT
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	quotearg_style@PLT
	movq	%rax, %rdx
	.loc 3 1488 11
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_string
	.loc 3 1489 11
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.LBE26:
	.loc 3 1491 7
	jmp	.L407
.L378:
	.loc 3 1493 7
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint
	.loc 3 1494 7
	jmp	.L394
.L390:
	.loc 3 1496 7
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint_x
	.loc 3 1497 7
	jmp	.L394
.L374:
	.loc 3 1499 7
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint
	.loc 3 1500 7
	jmp	.L394
.L380:
	.loc 3 1502 47
	movq	-64(%rbp), %rax
	movl	24(%rax), %eax
	.loc 3 1502 57
	movl	%eax, %eax
	.loc 3 1502 7
	andl	$4095, %eax
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint_o
	.loc 3 1503 7
	jmp	.L394
.L393:
	.loc 3 1505 40
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	human_access
	movq	%rax, %rdx
	.loc 3 1505 7
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_string
	.loc 3 1506 7
	jmp	.L394
.L377:
	.loc 3 1508 47
	movq	-64(%rbp), %rax
	movl	24(%rax), %eax
	.loc 3 1508 7
	movl	%eax, %edx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint_x
	.loc 3 1509 7
	jmp	.L394
.L389:
	.loc 3 1511 7
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	file_type@PLT
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_string
	.loc 3 1512 7
	jmp	.L394
.L375:
	.loc 3 1514 7
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint
	.loc 3 1515 7
	jmp	.L394
.L368:
	.loc 3 1517 45
	movq	-64(%rbp), %rax
	movl	28(%rax), %eax
	.loc 3 1517 7
	movl	%eax, %edx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint
	.loc 3 1518 7
	jmp	.L394
.L385:
	.loc 3 1520 16
	movq	-64(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %edi
	call	getpwuid@PLT
	movq	%rax, -56(%rbp)
	.loc 3 1521 7
	cmpq	$0, -56(%rbp)
	je	.L398
	.loc 3 1521 7 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L399
.L398:
	.loc 3 1521 7 discriminator 2
	leaq	.LC190(%rip), %rax
.L399:
	.loc 3 1521 7 discriminator 4
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	out_string
	.loc 3 1523 7 is_stmt 1 discriminator 4
	jmp	.L394
.L376:
	.loc 3 1525 45
	movq	-64(%rbp), %rax
	movl	32(%rax), %eax
	.loc 3 1525 7
	movl	%eax, %edx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint
	.loc 3 1526 7
	jmp	.L394
.L388:
	.loc 3 1528 16
	movq	-64(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %edi
	call	getgrgid@PLT
	movq	%rax, -40(%rbp)
	.loc 3 1529 7
	cmpq	$0, -40(%rbp)
	je	.L400
	.loc 3 1529 7 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L401
.L400:
	.loc 3 1529 7 discriminator 2
	leaq	.LC190(%rip), %rax
.L401:
	.loc 3 1529 7 discriminator 4
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	out_string
	.loc 3 1531 7 is_stmt 1 discriminator 4
	jmp	.L394
.L373:
	.loc 3 1533 15
	movq	-64(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	out_mount_point
	.loc 3 1533 12
	orb	-73(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -73(%rbp)
	.loc 3 1534 7
	jmp	.L394
.L370:
	.loc 3 1536 7
	movq	-64(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_int
	.loc 3 1537 7
	jmp	.L394
.L369:
	.loc 3 1539 40
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	gnu_dev_major@PLT
	.loc 3 1539 7
	movl	%eax, %edx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint_x
	.loc 3 1540 7
	jmp	.L394
.L386:
	.loc 3 1542 40
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	gnu_dev_minor@PLT
	.loc 3 1542 7
	movl	%eax, %edx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint_x
	.loc 3 1543 7
	jmp	.L394
.L392:
	.loc 3 1545 7
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$512, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint
	.loc 3 1546 7
	jmp	.L394
.L379:
	.loc 3 1548 38
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	.loc 3 1548 7
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint
	.loc 3 1549 7
	jmp	.L394
.L371:
	.loc 3 1551 38
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	.loc 3 1551 7
	testq	%rax, %rax
	jle	.L402
	.loc 3 1551 38 discriminator 1
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdx
	movabsq	$2305843009213693952, %rax
	cmpq	%rax, %rdx
	ja	.L402
	.loc 3 1551 38 is_stmt 0 discriminator 3
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	.loc 3 1551 7 is_stmt 1 discriminator 3
	movq	%rax, %rdx
	jmp	.L403
.L402:
	.loc 3 1551 7 is_stmt 0 discriminator 4
	movl	$512, %edx
.L403:
	.loc 3 1551 7 discriminator 6
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_uint
	.loc 3 1552 7 is_stmt 1 discriminator 6
	jmp	.L394
.L367:
	.loc 3 1558 18
	movq	-24(%rbp), %rax
	.loc 3 1558 12
	testq	%rax, %rax
	jns	.L404
	.loc 3 1559 11
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	leaq	.LC162(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_string
	.loc 3 1563 7
	jmp	.L394
.L404:
	.loc 3 1561 44
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	human_time
	movq	%rax, %rdx
	.loc 3 1561 11
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_string
	.loc 3 1563 7
	jmp	.L394
.L384:
	.loc 3 1569 9
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	neg_to_zero
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	out_epoch_sec
	.loc 3 1571 7
	jmp	.L394
.L366:
	.loc 3 1573 40
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_atime@PLT
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	human_time
	movq	%rax, %rdx
	.loc 3 1573 7
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_string
	.loc 3 1574 7
	jmp	.L394
.L383:
	.loc 3 1576 7
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_atime@PLT
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	out_epoch_sec
	.loc 3 1577 7
	jmp	.L394
.L365:
	.loc 3 1579 40
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	human_time
	movq	%rax, %rdx
	.loc 3 1579 7
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_string
	.loc 3 1580 7
	jmp	.L394
.L382:
	.loc 3 1582 7
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	out_epoch_sec
	.loc 3 1583 7
	jmp	.L394
.L363:
	.loc 3 1585 40
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_ctime@PLT
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	human_time
	movq	%rax, %rdx
	.loc 3 1585 7
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_string
	.loc 3 1586 7
	jmp	.L394
.L381:
	.loc 3 1588 7
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_ctime@PLT
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	out_epoch_sec
	.loc 3 1589 7
	jmp	.L394
.L391:
	.loc 3 1591 15
	movq	-112(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	out_file_context
	.loc 3 1591 12
	orb	-73(%rbp), %al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -73(%rbp)
	.loc 3 1592 7
	jmp	.L394
.L362:
	.loc 3 1594 7
	movq	stdout(%rip), %rax
	movq	%rax, %rsi
	movl	$63, %edi
	call	fputc_unlocked@PLT
	.loc 3 1595 7
	jmp	.L394
.L407:
	.loc 3 1491 7
	nop
.L394:
	.loc 3 1597 10
	movzbl	-73(%rbp), %eax
.L406:
	.loc 3 1598 1 discriminator 1
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	print_stat, .-print_stat
	.section	.rodata
	.align 8
.LC191:
	.string	"  File: \"%n\"\n    ID: %-8i Namelen: %-7l Type: %T\nBlock size: %-10s Fundamental block size: %S\nBlocks: Total: %-10b Free: %-10f Available: %a\nInodes: Total: %-10c Free: %d\n"
	.align 8
.LC192:
	.string	"  File: %N\n  Size: %-10s\tBlocks: %-10b IO Block: %-6o %F\n"
	.align 8
.LC193:
	.string	"Device: %Dh/%dd\tInode: %-10i  Links: %-5h Device type: %t,%T\n"
.LC194:
	.string	"%s%s"
	.align 8
.LC195:
	.string	"Device: %Dh/%dd\tInode: %-10i  Links: %h\n"
	.align 8
.LC196:
	.string	"Access: (%04a/%10.10A)  Uid: (%5u/%8U)   Gid: (%5g/%8G)\n"
.LC197:
	.string	"Context: %C\n"
	.align 8
.LC198:
	.string	"Access: %x\nModify: %y\nChange: %z\n Birth: %w\n"
	.text
	.type	default_format, @function
default_format:
.LFB82:
	.loc 3 1604 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%esi, %ecx
	movl	%edx, %eax
	movl	%edi, %edx
	movb	%dl, -20(%rbp)
	movl	%ecx, %edx
	movb	%dl, -24(%rbp)
	movb	%al, -28(%rbp)
	.loc 3 1606 6
	cmpb	$0, -20(%rbp)
	je	.L409
	.loc 3 1608 10
	cmpb	$0, -24(%rbp)
	je	.L410
	.loc 3 1609 18
	leaq	fmt_terse_fs(%rip), %rdi
	call	xstrdup@PLT
	movq	%rax, -16(%rbp)
	jmp	.L411
.L410:
	.loc 3 1614 29
	leaq	.LC191(%rip), %rdi
	call	gettext@PLT
	.loc 3 1614 20
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -16(%rbp)
	jmp	.L411
.L409:
	.loc 3 1623 10
	cmpb	$0, -24(%rbp)
	je	.L412
	.loc 3 1625 19
	call	is_selinux_enabled@PLT
	.loc 3 1625 14
	testl	%eax, %eax
	jle	.L413
	.loc 3 1626 22
	leaq	fmt_terse_selinux(%rip), %rdi
	call	xstrdup@PLT
	movq	%rax, -16(%rbp)
	jmp	.L411
.L413:
	.loc 3 1628 22
	leaq	fmt_terse_regular(%rip), %rdi
	call	xstrdup@PLT
	movq	%rax, -16(%rbp)
	jmp	.L411
.L412:
.LBB27:
	.loc 3 1635 29
	leaq	.LC192(%rip), %rdi
	call	gettext@PLT
	.loc 3 1635 20
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, -16(%rbp)
	.loc 3 1640 16
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 3 1641 14
	cmpb	$0, -28(%rbp)
	je	.L414
	.loc 3 1645 24
	leaq	.LC193(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC194(%rip), %rdi
	movl	$0, %eax
	call	xasprintf@PLT
	movq	%rax, -16(%rbp)
	jmp	.L415
.L414:
	.loc 3 1653 24
	leaq	.LC195(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC194(%rip), %rdi
	movl	$0, %eax
	call	xasprintf@PLT
	movq	%rax, -16(%rbp)
.L415:
	.loc 3 1657 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 1659 16
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 3 1662 20
	leaq	.LC196(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC194(%rip), %rdi
	movl	$0, %eax
	call	xasprintf@PLT
	movq	%rax, -16(%rbp)
	.loc 3 1665 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 3 1667 19
	call	is_selinux_enabled@PLT
	.loc 3 1667 14
	testl	%eax, %eax
	jle	.L416
	.loc 3 1669 20
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 3 1672 24
	leaq	.LC197(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC194(%rip), %rdi
	movl	$0, %eax
	call	xasprintf@PLT
	movq	%rax, -16(%rbp)
	.loc 3 1673 15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L416:
	.loc 3 1676 16
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 3 1679 20
	leaq	.LC198(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC194(%rip), %rdi
	movl	$0, %eax
	call	xasprintf@PLT
	movq	%rax, -16(%rbp)
	.loc 3 1684 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L411:
.LBE27:
	.loc 3 1687 10
	movq	-16(%rbp), %rax
	.loc 3 1688 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	default_format, .-default_format
	.section	.rodata
	.align 8
.LC199:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC200:
	.string	"Usage: %s [OPTION]... FILE...\n"
	.align 8
.LC201:
	.string	"Display file or file system status.\n"
	.align 8
.LC202:
	.string	"  -L, --dereference     follow links\n  -f, --file-system     display file system status instead of file status\n"
	.align 8
.LC203:
	.string	"      --cached=MODE     specify how to use cached attributes;\n                          useful on remote file systems. See MODE below\n"
	.align 8
.LC204:
	.ascii	"  -c  --format=FORMAT   use the specified FORMAT instead of "
	.ascii	"the default;\n                          output a newline aft"
	.ascii	"er each use of FORMAT\n      --printf=FORMA"
	.string	"T   like --format, but interpret backslash escapes,\n                          and do not output a mandatory trailing newline;\n                          if you want a newline, include \\n in FORMAT\n  -t, --terse           print the information in terse form\n"
	.align 8
.LC205:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC206:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC207:
	.string	"\nThe MODE argument of --cached can be: always, never, or default.\n'always' will use cached attributes if available, while\n'never' will try to synchronize with the latest attributes, and\n'default' will leave it up to the underlying file system.\n"
	.align 8
.LC208:
	.ascii	"\nThe valid format sequences for files (without --file-syste"
	.ascii	"m):\n\n  %a"
	.string	"   permission bits in octal (note '#' and '0' printf flags)\n  %A   permission bits and file type in human readable form\n  %b   number of blocks allocated (see %B)\n  %B   the size in bytes of each block reported by %b\n  %C   SELinux security context string\n"
	.align 8
.LC209:
	.string	"  %d   device number in decimal\n  %D   device number in hex\n  %f   raw mode in hex\n  %F   file type\n  %g   group ID of owner\n  %G   group name of owner\n"
	.align 8
.LC210:
	.ascii	"  %h   number of hard links\n  %i   inode number\n  %m   mou"
	.ascii	"nt point\n  %n   file name\n  %N   quoted fi"
	.string	"le name with dereference if symbolic link\n  %o   optimal I/O transfer size hint\n  %s   total size, in bytes\n  %t   major device type in hex, for character/block device special files\n  %T   minor device type in hex, for character/block device special files\n"
	.align 8
.LC211:
	.ascii	"  %u   user ID of owner\n  %U   user name of owner\n  %w   t"
	.ascii	"ime of file birth, human-readable; - if unknown\n  %W   time"
	.ascii	" of file birth, seconds since Epoch; 0 if unknown\n  %x   ti"
	.ascii	"me of last access, human-readable\n  %X   time"
	.string	" of last access, seconds since Epoch\n  %y   time of last data modification, human-readable\n  %Y   time of last data modification, seconds since Epoch\n  %z   time of last status change, human-readable\n  %Z   time of last status change, seconds since Epoch\n\n"
	.align 8
.LC212:
	.string	"Valid format sequences for file systems:\n\n  %a   free blocks available to non-superuser\n  %b   total data blocks in file system\n  %c   total file nodes in file system\n  %d   free file nodes in file system\n  %f   free blocks in file system\n"
	.align 8
.LC213:
	.string	"  %i   file system ID in hex\n  %l   maximum length of filenames\n  %n   file name\n  %s   block size (for faster transfers)\n  %S   fundamental block size (for block counts)\n  %t   file system type in hex\n  %T   file system type in human readable form\n"
	.align 8
.LC214:
	.string	"\n--terse is equivalent to the following FORMAT:\n    %s"
	.align 8
.LC215:
	.string	"--terse --file-system is equivalent to the following FORMAT:\n    %s"
	.align 8
.LC216:
	.string	"\nNOTE: your shell may have its own version of %s, which usually supersedes\nthe version described here.  Please refer to your shell's documentation\nfor details about the options it supports.\n"
.LC217:
	.string	"stat"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB83:
	.loc 3 1692 1
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
	.loc 3 1693 6
	cmpl	$0, -20(%rbp)
	je	.L419
	.loc 3 1694 5
	movq	program_name(%rip), %rbx
	leaq	.LC199(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L420
.L419:
	.loc 3 1697 7
	movq	program_name(%rip), %rbx
	.loc 3 1697 15
	leaq	.LC200(%rip), %rdi
	call	gettext@PLT
	.loc 3 1697 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 1698 7
	movq	stdout(%rip), %rbx
	leaq	.LC201(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 1702 7
	call	emit_mandatory_arg_note
	.loc 3 1704 7
	movq	stdout(%rip), %rbx
	leaq	.LC202(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 1708 7
	movq	stdout(%rip), %rbx
	leaq	.LC203(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 1712 7
	movq	stdout(%rip), %rbx
	leaq	.LC204(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 1720 7
	movq	stdout(%rip), %rbx
	leaq	.LC205(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 1721 7
	movq	stdout(%rip), %rbx
	leaq	.LC206(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 1723 7
	movq	stdout(%rip), %rbx
	leaq	.LC207(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 1730 7
	movq	stdout(%rip), %rbx
	leaq	.LC208(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 1739 7
	movq	stdout(%rip), %rbx
	leaq	.LC209(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 1747 7
	movq	stdout(%rip), %rbx
	leaq	.LC210(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 1758 7
	movq	stdout(%rip), %rbx
	leaq	.LC211(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 1772 7
	movq	stdout(%rip), %rbx
	leaq	.LC212(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 1781 7
	movq	stdout(%rip), %rbx
	leaq	.LC213(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 3 1791 15
	leaq	.LC214(%rip), %rdi
	call	gettext@PLT
	.loc 3 1791 7
	leaq	fmt_terse_selinux(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 1802 17
	leaq	.LC215(%rip), %rdi
	call	gettext@PLT
	.loc 3 1802 9
	leaq	fmt_terse_fs(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 1807 15
	leaq	.LC216(%rip), %rdi
	call	gettext@PLT
	.loc 3 1807 7
	leaq	.LC217(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 3 1808 7
	leaq	.LC217(%rip), %rdi
	call	emit_ancillary_info
.L420:
	.loc 3 1810 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE83:
	.size	usage, .-usage
	.section	.rodata
.LC218:
	.string	"/usr/local/share/locale"
.LC219:
	.string	"."
.LC220:
	.string	"\n"
.LC221:
	.string	"--cached"
.LC222:
	.string	"Michael Meskes"
.LC223:
	.string	"c:fLt"
.LC224:
	.string	"missing operand"
.LC225:
	.string	"%N"
	.text
	.globl	main
	.type	main, @function
main:
.LFB84:
	.loc 3 1815 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 3 1817 8
	movb	$0, -35(%rbp)
	.loc 3 1818 8
	movb	$0, -34(%rbp)
	.loc 3 1819 9
	movq	$0, -24(%rbp)
	.loc 3 1821 8
	movb	$1, -33(%rbp)
	.loc 3 1824 3
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 3 1825 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 3 1826 3
	leaq	.LC218(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 3 1827 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 3 1829 32
	call	localeconv@PLT
	movq	%rax, -8(%rbp)
	.loc 3 1830 26
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 3 1830 41
	movzbl	(%rax), %eax
	.loc 3 1830 69
	testb	%al, %al
	je	.L422
	.loc 3 1830 69 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L423
.L422:
	.loc 3 1830 69 discriminator 2
	leaq	.LC219(%rip), %rax
.L423:
	.loc 3 1830 17 is_stmt 1 discriminator 4
	movq	%rax, decimal_point(%rip)
	.loc 3 1831 23 discriminator 4
	movq	decimal_point(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 3 1831 21 discriminator 4
	movq	%rax, decimal_point_len(%rip)
	.loc 3 1833 3 discriminator 4
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 3 1835 9 discriminator 4
	jmp	.L424
.L437:
	.loc 3 1837 7
	cmpl	$128, -28(%rbp)
	je	.L425
	cmpl	$128, -28(%rbp)
	jg	.L426
	cmpl	$116, -28(%rbp)
	je	.L427
	cmpl	$116, -28(%rbp)
	jg	.L426
	cmpl	$102, -28(%rbp)
	je	.L428
	cmpl	$102, -28(%rbp)
	jg	.L426
	cmpl	$99, -28(%rbp)
	je	.L429
	cmpl	$99, -28(%rbp)
	jg	.L426
	cmpl	$76, -28(%rbp)
	je	.L430
	cmpl	$76, -28(%rbp)
	jg	.L426
	cmpl	$0, -28(%rbp)
	je	.L431
	cmpl	$0, -28(%rbp)
	jg	.L426
	cmpl	$-131, -28(%rbp)
	je	.L432
	cmpl	$-130, -28(%rbp)
	je	.L433
	jmp	.L426
.L425:
	.loc 3 1840 18
	movq	optarg(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 3 1841 39
	movb	$1, interpret_backslash_escapes(%rip)
	.loc 3 1842 26
	leaq	.LC17(%rip), %rax
	movq	%rax, trailing_delim(%rip)
	.loc 3 1843 11
	jmp	.L424
.L429:
	.loc 3 1846 18
	movq	optarg(%rip), %rax
	movq	%rax, -24(%rbp)
	.loc 3 1847 39
	movb	$0, interpret_backslash_escapes(%rip)
	.loc 3 1848 26
	leaq	.LC220(%rip), %rax
	movq	%rax, trailing_delim(%rip)
	.loc 3 1849 11
	jmp	.L424
.L430:
	.loc 3 1852 24
	movb	$1, follow_links(%rip)
	.loc 3 1853 11
	jmp	.L424
.L428:
	.loc 3 1856 14
	movb	$1, -35(%rbp)
	.loc 3 1857 11
	jmp	.L424
.L427:
	.loc 3 1860 17
	movb	$1, -34(%rbp)
	.loc 3 1861 11
	jmp	.L424
.L431:
	.loc 3 1864 19
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	cached_modes(%rip), %rcx
	leaq	cached_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC221(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	cached_modes(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	je	.L434
	cmpl	$2, %eax
	ja	.L424
	testl	%eax, %eax
	je	.L436
	cmpl	$1, %eax
	jne	.L424
	.loc 3 1867 28
	movb	$1, force_sync(%rip)
	.loc 3 1868 27
	movb	$0, dont_sync(%rip)
	.loc 3 1869 17
	jmp	.L435
.L434:
	.loc 3 1871 28
	movb	$0, force_sync(%rip)
	.loc 3 1872 27
	movb	$1, dont_sync(%rip)
	.loc 3 1873 17
	jmp	.L435
.L436:
	.loc 3 1875 28
	movb	$0, force_sync(%rip)
	.loc 3 1876 27
	movb	$0, dont_sync(%rip)
.L435:
	.loc 3 1878 11
	jmp	.L424
.L433:
	.loc 3 1880 9
	movl	$0, %edi
	call	usage
.L432:
	.loc 3 1882 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC222(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC217(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L426:
	.loc 3 1885 11
	movl	$1, %edi
	call	usage
.L424:
	.loc 3 1835 15
	movq	-64(%rbp), %rsi
	movl	-52(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC223(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -28(%rbp)
	.loc 3 1835 9
	cmpl	$-1, -28(%rbp)
	jne	.L437
	.loc 3 1889 12
	movl	optind(%rip), %eax
	.loc 3 1889 6
	cmpl	%eax, -52(%rbp)
	jne	.L438
	.loc 3 1891 20
	leaq	.LC224(%rip), %rdi
	call	gettext@PLT
	.loc 3 1891 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 3 1892 7
	movl	$1, %edi
	call	usage
.L438:
	.loc 3 1895 6
	cmpq	$0, -24(%rbp)
	je	.L439
	.loc 3 1897 11
	movq	-24(%rbp), %rax
	leaq	.LC225(%rip), %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	.loc 3 1897 10
	testq	%rax, %rax
	je	.L440
	.loc 3 1898 9
	call	getenv_quoting_style
.L440:
	.loc 3 1899 15
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L441
.L439:
	.loc 3 1903 16
	movzbl	-34(%rbp), %ecx
	movzbl	-35(%rbp), %eax
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	default_format
	movq	%rax, -24(%rbp)
	.loc 3 1904 17
	movzbl	-34(%rbp), %ecx
	movzbl	-35(%rbp), %eax
	movl	$1, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	default_format
	movq	%rax, -16(%rbp)
.L441:
.LBB28:
	.loc 3 1907 12
	movl	optind(%rip), %eax
	movl	%eax, -32(%rbp)
	.loc 3 1907 3
	jmp	.L442
.L445:
	.loc 3 1910 12
	cmpb	$0, -35(%rbp)
	je	.L443
	.loc 3 1909 29 discriminator 1
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1909 14 discriminator 1
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_statfs
	.loc 3 1910 12 discriminator 1
	movzbl	%al, %eax
	jmp	.L444
.L443:
	.loc 3 1910 27 discriminator 2
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	.loc 3 1910 14 discriminator 2
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_stat
	.loc 3 1910 12 discriminator 2
	movzbl	%al, %eax
.L444:
	.loc 3 1908 8 discriminator 4
	movzbl	-33(%rbp), %edx
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -33(%rbp)
	.loc 3 1907 35 discriminator 4
	addl	$1, -32(%rbp)
.L442:
	.loc 3 1907 3 discriminator 2
	movl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L445
.LBE28:
	.loc 3 1912 28
	movzbl	-33(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 3 1913 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	main, .-main
	.local	buf.7112
	.comm	buf.7112,29,16
	.local	modebuf.7116
	.comm	modebuf.7116,12,8
	.local	tz.7121
	.comm	tz.7121,8,8
	.local	str.7120
	.comm	str.7120,61,32
	.local	tried_mount_list.7250
	.comm	tried_mount_list.7250,1,1
	.local	mount_list.7249
	.comm	mount_list.7249,8,8
	.section	.rodata
	.align 8
.LC171:
	.long	0
	.long	-1076887552
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
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 13 "./lib/sys/select.h"
	.file 14 "/usr/include/pwd.h"
	.file 15 "/usr/include/grp.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/statfs.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 18 "/usr/include/time.h"
	.file 19 "./lib/time.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 21 "/usr/include/asm-generic/int-ll64.h"
	.file 22 "/usr/include/linux/stat.h"
	.file 23 "/usr/include/signal.h"
	.file 24 "/usr/include/unistd.h"
	.file 25 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 26 "/usr/include/errno.h"
	.file 27 "src/version.h"
	.file 28 "./lib/exitfail.h"
	.file 29 "/usr/include/stdint.h"
	.file 30 "./lib/timespec.h"
	.file 31 "/usr/include/ctype.h"
	.file 32 "/usr/include/locale.h"
	.file 33 "./lib/version-etc.h"
	.file 34 "./lib/progname.h"
	.file 35 "./lib/quotearg.h"
	.file 36 "./lib/quote.h"
	.file 37 "./lib/argmatch.h"
	.file 38 "./lib/error.h"
	.file 39 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 40 "./lib/mountlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2347
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF385
	.byte	0xc
	.long	.LASF386
	.long	.LASF387
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF9
	.byte	0x4
	.byte	0xd1
	.byte	0x17
	.long	0x40
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.long	0x47
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF10
	.byte	0x5
	.byte	0x48
	.byte	0x12
	.long	0x2d
	.uleb128 0x3
	.long	.LASF11
	.byte	0x5
	.byte	0x49
	.byte	0x1b
	.long	0x40
	.uleb128 0x3
	.long	.LASF12
	.byte	0x5
	.byte	0x91
	.byte	0x19
	.long	0x40
	.uleb128 0x3
	.long	.LASF13
	.byte	0x5
	.byte	0x92
	.byte	0x19
	.long	0x61
	.uleb128 0x3
	.long	.LASF14
	.byte	0x5
	.byte	0x93
	.byte	0x19
	.long	0x61
	.uleb128 0x3
	.long	.LASF15
	.byte	0x5
	.byte	0x94
	.byte	0x19
	.long	0x40
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0x96
	.byte	0x1a
	.long	0x61
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x97
	.byte	0x1b
	.long	0x40
	.uleb128 0x3
	.long	.LASF18
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x2d
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x2d
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.byte	0x9b
	.byte	0xc
	.long	0x115
	.uleb128 0x8
	.long	.LASF29
	.byte	0x5
	.byte	0x9b
	.byte	0xc
	.long	0x115
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x47
	.long	0x125
	.uleb128 0xa
	.long	0x40
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x9b
	.byte	0x1a
	.long	0xfe
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x2d
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0xae
	.byte	0x1d
	.long	0x2d
	.uleb128 0x3
	.long	.LASF23
	.byte	0x5
	.byte	0xb3
	.byte	0x1c
	.long	0x2d
	.uleb128 0x3
	.long	.LASF24
	.byte	0x5
	.byte	0xb7
	.byte	0x1e
	.long	0x40
	.uleb128 0x3
	.long	.LASF25
	.byte	0x5
	.byte	0xbb
	.byte	0x1e
	.long	0x40
	.uleb128 0x3
	.long	.LASF26
	.byte	0x5
	.byte	0xbf
	.byte	0x1c
	.long	0x2d
	.uleb128 0x3
	.long	.LASF27
	.byte	0x5
	.byte	0xc4
	.byte	0x21
	.long	0x2d
	.uleb128 0xb
	.byte	0x8
	.long	0x18b
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF28
	.uleb128 0xc
	.long	0x18b
	.uleb128 0xd
	.long	.LASF72
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x31e
	.uleb128 0x8
	.long	.LASF30
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x47
	.byte	0
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x185
	.byte	0x8
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x185
	.byte	0x10
	.uleb128 0x8
	.long	.LASF33
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x185
	.byte	0x18
	.uleb128 0x8
	.long	.LASF34
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x185
	.byte	0x20
	.uleb128 0x8
	.long	.LASF35
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x185
	.byte	0x28
	.uleb128 0x8
	.long	.LASF36
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x185
	.byte	0x30
	.uleb128 0x8
	.long	.LASF37
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x185
	.byte	0x38
	.uleb128 0x8
	.long	.LASF38
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x185
	.byte	0x40
	.uleb128 0x8
	.long	.LASF39
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x185
	.byte	0x48
	.uleb128 0x8
	.long	.LASF40
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x185
	.byte	0x50
	.uleb128 0x8
	.long	.LASF41
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x185
	.byte	0x58
	.uleb128 0x8
	.long	.LASF42
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x337
	.byte	0x60
	.uleb128 0x8
	.long	.LASF43
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x33d
	.byte	0x68
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x47
	.byte	0x70
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x47
	.byte	0x74
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0xe6
	.byte	0x78
	.uleb128 0x8
	.long	.LASF47
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x71
	.byte	0x80
	.uleb128 0x8
	.long	.LASF48
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x78
	.byte	0x82
	.uleb128 0x8
	.long	.LASF49
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x343
	.byte	0x83
	.uleb128 0x8
	.long	.LASF50
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x353
	.byte	0x88
	.uleb128 0x8
	.long	.LASF51
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0xf2
	.byte	0x90
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x35e
	.byte	0x98
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x369
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x33d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x68
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x34
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x47
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x36f
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF59
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x197
	.uleb128 0xe
	.long	.LASF388
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xf
	.long	.LASF60
	.uleb128 0xb
	.byte	0x8
	.long	0x332
	.uleb128 0xb
	.byte	0x8
	.long	0x197
	.uleb128 0x9
	.long	0x18b
	.long	0x353
	.uleb128 0xa
	.long	0x40
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x32a
	.uleb128 0xf
	.long	.LASF61
	.uleb128 0xb
	.byte	0x8
	.long	0x359
	.uleb128 0xf
	.long	.LASF62
	.uleb128 0xb
	.byte	0x8
	.long	0x364
	.uleb128 0x9
	.long	0x18b
	.long	0x37f
	.uleb128 0xa
	.long	0x40
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x192
	.uleb128 0xc
	.long	0x37f
	.uleb128 0x10
	.long	.LASF63
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.long	0x396
	.uleb128 0xb
	.byte	0x8
	.long	0x31e
	.uleb128 0x10
	.long	.LASF64
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.long	0x396
	.uleb128 0x10
	.long	.LASF65
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.long	0x396
	.uleb128 0x10
	.long	.LASF66
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.long	0x47
	.uleb128 0x9
	.long	0x385
	.long	0x3cb
	.uleb128 0x11
	.byte	0
	.uleb128 0xc
	.long	0x3c0
	.uleb128 0x10
	.long	.LASF67
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.long	0x3cb
	.uleb128 0x10
	.long	.LASF68
	.byte	0x9
	.byte	0x1e
	.byte	0xc
	.long	0x47
	.uleb128 0x10
	.long	.LASF69
	.byte	0x9
	.byte	0x1f
	.byte	0x1a
	.long	0x3cb
	.uleb128 0x3
	.long	.LASF70
	.byte	0xa
	.byte	0x3b
	.byte	0x11
	.long	0x9e
	.uleb128 0x3
	.long	.LASF71
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0x131
	.uleb128 0xd
	.long	.LASF73
	.byte	0x10
	.byte	0xc
	.byte	0xa
	.byte	0x8
	.long	0x434
	.uleb128 0x8
	.long	.LASF74
	.byte	0xc
	.byte	0xc
	.byte	0xc
	.long	0x131
	.byte	0
	.uleb128 0x8
	.long	.LASF75
	.byte	0xc
	.byte	0x10
	.byte	0x15
	.long	0x179
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF76
	.byte	0xd
	.value	0x30c
	.byte	0x1
	.long	0x47
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF77
	.uleb128 0xd
	.long	.LASF78
	.byte	0x30
	.byte	0xe
	.byte	0x31
	.byte	0x8
	.long	0x4b1
	.uleb128 0x8
	.long	.LASF79
	.byte	0xe
	.byte	0x33
	.byte	0x9
	.long	0x185
	.byte	0
	.uleb128 0x8
	.long	.LASF80
	.byte	0xe
	.byte	0x34
	.byte	0x9
	.long	0x185
	.byte	0x8
	.uleb128 0x8
	.long	.LASF81
	.byte	0xe
	.byte	0x36
	.byte	0xb
	.long	0xaa
	.byte	0x10
	.uleb128 0x8
	.long	.LASF82
	.byte	0xe
	.byte	0x37
	.byte	0xb
	.long	0xb6
	.byte	0x14
	.uleb128 0x8
	.long	.LASF83
	.byte	0xe
	.byte	0x38
	.byte	0x9
	.long	0x185
	.byte	0x18
	.uleb128 0x8
	.long	.LASF84
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.long	0x185
	.byte	0x20
	.uleb128 0x8
	.long	.LASF85
	.byte	0xe
	.byte	0x3a
	.byte	0x9
	.long	0x185
	.byte	0x28
	.byte	0
	.uleb128 0xd
	.long	.LASF86
	.byte	0x20
	.byte	0xf
	.byte	0x2a
	.byte	0x8
	.long	0x4f3
	.uleb128 0x8
	.long	.LASF87
	.byte	0xf
	.byte	0x2c
	.byte	0xb
	.long	0x185
	.byte	0
	.uleb128 0x8
	.long	.LASF88
	.byte	0xf
	.byte	0x2d
	.byte	0xb
	.long	0x185
	.byte	0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0xf
	.byte	0x2e
	.byte	0xd
	.long	0xb6
	.byte	0x10
	.uleb128 0x8
	.long	.LASF90
	.byte	0xf
	.byte	0x2f
	.byte	0xc
	.long	0x4f3
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x185
	.uleb128 0xd
	.long	.LASF91
	.byte	0x78
	.byte	0x10
	.byte	0x18
	.byte	0x8
	.long	0x5a3
	.uleb128 0x8
	.long	.LASF92
	.byte	0x10
	.byte	0x1a
	.byte	0x10
	.long	0x16d
	.byte	0
	.uleb128 0x8
	.long	.LASF93
	.byte	0x10
	.byte	0x1b
	.byte	0x10
	.long	0x16d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF94
	.byte	0x10
	.byte	0x1d
	.byte	0x12
	.long	0x155
	.byte	0x10
	.uleb128 0x8
	.long	.LASF95
	.byte	0x10
	.byte	0x1e
	.byte	0x12
	.long	0x155
	.byte	0x18
	.uleb128 0x8
	.long	.LASF96
	.byte	0x10
	.byte	0x1f
	.byte	0x12
	.long	0x155
	.byte	0x20
	.uleb128 0x8
	.long	.LASF97
	.byte	0x10
	.byte	0x20
	.byte	0x12
	.long	0x161
	.byte	0x28
	.uleb128 0x8
	.long	.LASF98
	.byte	0x10
	.byte	0x21
	.byte	0x12
	.long	0x161
	.byte	0x30
	.uleb128 0x8
	.long	.LASF99
	.byte	0x10
	.byte	0x29
	.byte	0xe
	.long	0x125
	.byte	0x38
	.uleb128 0x8
	.long	.LASF100
	.byte	0x10
	.byte	0x2a
	.byte	0x10
	.long	0x16d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF101
	.byte	0x10
	.byte	0x2b
	.byte	0x10
	.long	0x16d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF102
	.byte	0x10
	.byte	0x2c
	.byte	0x10
	.long	0x16d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF103
	.byte	0x10
	.byte	0x2d
	.byte	0x10
	.long	0x5a8
	.byte	0x58
	.byte	0
	.uleb128 0xc
	.long	0x4f9
	.uleb128 0x9
	.long	0x16d
	.long	0x5b8
	.uleb128 0xa
	.long	0x40
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.string	"tm"
	.byte	0x38
	.byte	0x11
	.byte	0x7
	.byte	0x8
	.long	0x654
	.uleb128 0x8
	.long	.LASF104
	.byte	0x11
	.byte	0x9
	.byte	0x7
	.long	0x47
	.byte	0
	.uleb128 0x8
	.long	.LASF105
	.byte	0x11
	.byte	0xa
	.byte	0x7
	.long	0x47
	.byte	0x4
	.uleb128 0x8
	.long	.LASF106
	.byte	0x11
	.byte	0xb
	.byte	0x7
	.long	0x47
	.byte	0x8
	.uleb128 0x8
	.long	.LASF107
	.byte	0x11
	.byte	0xc
	.byte	0x7
	.long	0x47
	.byte	0xc
	.uleb128 0x8
	.long	.LASF108
	.byte	0x11
	.byte	0xd
	.byte	0x7
	.long	0x47
	.byte	0x10
	.uleb128 0x8
	.long	.LASF109
	.byte	0x11
	.byte	0xe
	.byte	0x7
	.long	0x47
	.byte	0x14
	.uleb128 0x8
	.long	.LASF110
	.byte	0x11
	.byte	0xf
	.byte	0x7
	.long	0x47
	.byte	0x18
	.uleb128 0x8
	.long	.LASF111
	.byte	0x11
	.byte	0x10
	.byte	0x7
	.long	0x47
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF112
	.byte	0x11
	.byte	0x11
	.byte	0x7
	.long	0x47
	.byte	0x20
	.uleb128 0x8
	.long	.LASF113
	.byte	0x11
	.byte	0x14
	.byte	0xc
	.long	0x2d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF114
	.byte	0x11
	.byte	0x15
	.byte	0xf
	.long	0x37f
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.long	0x185
	.long	0x664
	.uleb128 0xa
	.long	0x40
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF115
	.byte	0x12
	.byte	0x9f
	.byte	0xe
	.long	0x654
	.uleb128 0x10
	.long	.LASF116
	.byte	0x12
	.byte	0xa0
	.byte	0xc
	.long	0x47
	.uleb128 0x10
	.long	.LASF117
	.byte	0x12
	.byte	0xa1
	.byte	0x11
	.long	0x2d
	.uleb128 0x10
	.long	.LASF118
	.byte	0x12
	.byte	0xa6
	.byte	0xe
	.long	0x654
	.uleb128 0x10
	.long	.LASF119
	.byte	0x12
	.byte	0xae
	.byte	0xc
	.long	0x47
	.uleb128 0x10
	.long	.LASF120
	.byte	0x12
	.byte	0xaf
	.byte	0x11
	.long	0x2d
	.uleb128 0x12
	.long	.LASF121
	.byte	0x12
	.value	0x112
	.byte	0xc
	.long	0x47
	.uleb128 0x14
	.long	.LASF122
	.byte	0x13
	.value	0x32c
	.byte	0x19
	.long	0x6c6
	.uleb128 0xb
	.byte	0x8
	.long	0x6cc
	.uleb128 0xf
	.long	.LASF114
	.uleb128 0xd
	.long	.LASF123
	.byte	0x90
	.byte	0x14
	.byte	0x2e
	.byte	0x8
	.long	0x7a2
	.uleb128 0x8
	.long	.LASF124
	.byte	0x14
	.byte	0x30
	.byte	0xd
	.long	0x9e
	.byte	0
	.uleb128 0x8
	.long	.LASF125
	.byte	0x14
	.byte	0x35
	.byte	0xd
	.long	0xc2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF126
	.byte	0x14
	.byte	0x3d
	.byte	0xf
	.long	0xda
	.byte	0x10
	.uleb128 0x8
	.long	.LASF127
	.byte	0x14
	.byte	0x3e
	.byte	0xe
	.long	0xce
	.byte	0x18
	.uleb128 0x8
	.long	.LASF128
	.byte	0x14
	.byte	0x40
	.byte	0xd
	.long	0xaa
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF129
	.byte	0x14
	.byte	0x41
	.byte	0xd
	.long	0xb6
	.byte	0x20
	.uleb128 0x8
	.long	.LASF130
	.byte	0x14
	.byte	0x43
	.byte	0x9
	.long	0x47
	.byte	0x24
	.uleb128 0x8
	.long	.LASF131
	.byte	0x14
	.byte	0x45
	.byte	0xd
	.long	0x9e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF132
	.byte	0x14
	.byte	0x4a
	.byte	0xd
	.long	0xe6
	.byte	0x30
	.uleb128 0x8
	.long	.LASF133
	.byte	0x14
	.byte	0x4e
	.byte	0x11
	.long	0x13d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF134
	.byte	0x14
	.byte	0x50
	.byte	0x10
	.long	0x149
	.byte	0x40
	.uleb128 0x8
	.long	.LASF135
	.byte	0x14
	.byte	0x5b
	.byte	0x15
	.long	0x40c
	.byte	0x48
	.uleb128 0x8
	.long	.LASF136
	.byte	0x14
	.byte	0x5c
	.byte	0x15
	.long	0x40c
	.byte	0x58
	.uleb128 0x8
	.long	.LASF137
	.byte	0x14
	.byte	0x5d
	.byte	0x15
	.long	0x40c
	.byte	0x68
	.uleb128 0x8
	.long	.LASF138
	.byte	0x14
	.byte	0x6a
	.byte	0x17
	.long	0x7a7
	.byte	0x78
	.byte	0
	.uleb128 0xc
	.long	0x6d1
	.uleb128 0x9
	.long	0x179
	.long	0x7b7
	.uleb128 0xa
	.long	0x40
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF139
	.byte	0x15
	.byte	0x18
	.byte	0x18
	.long	0x71
	.uleb128 0x3
	.long	.LASF140
	.byte	0x15
	.byte	0x1a
	.byte	0x18
	.long	0x47
	.uleb128 0x3
	.long	.LASF141
	.byte	0x15
	.byte	0x1b
	.byte	0x16
	.long	0x61
	.uleb128 0x3
	.long	.LASF142
	.byte	0x15
	.byte	0x1e
	.byte	0x2c
	.long	0x53
	.uleb128 0x3
	.long	.LASF143
	.byte	0x15
	.byte	0x1f
	.byte	0x2a
	.long	0x441
	.uleb128 0xd
	.long	.LASF144
	.byte	0x10
	.byte	0x16
	.byte	0x38
	.byte	0x8
	.long	0x828
	.uleb128 0x8
	.long	.LASF74
	.byte	0x16
	.byte	0x39
	.byte	0x8
	.long	0x7db
	.byte	0
	.uleb128 0x8
	.long	.LASF75
	.byte	0x16
	.byte	0x3a
	.byte	0x8
	.long	0x7cf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF145
	.byte	0x16
	.byte	0x3b
	.byte	0x8
	.long	0x7c3
	.byte	0xc
	.byte	0
	.uleb128 0x15
	.long	.LASF146
	.value	0x100
	.byte	0x16
	.byte	0x63
	.byte	0x8
	.long	0x948
	.uleb128 0x8
	.long	.LASF147
	.byte	0x16
	.byte	0x65
	.byte	0x8
	.long	0x7cf
	.byte	0
	.uleb128 0x8
	.long	.LASF148
	.byte	0x16
	.byte	0x66
	.byte	0x8
	.long	0x7cf
	.byte	0x4
	.uleb128 0x8
	.long	.LASF149
	.byte	0x16
	.byte	0x67
	.byte	0x8
	.long	0x7e7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF150
	.byte	0x16
	.byte	0x69
	.byte	0x8
	.long	0x7cf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF151
	.byte	0x16
	.byte	0x6a
	.byte	0x8
	.long	0x7cf
	.byte	0x14
	.uleb128 0x8
	.long	.LASF152
	.byte	0x16
	.byte	0x6b
	.byte	0x8
	.long	0x7cf
	.byte	0x18
	.uleb128 0x8
	.long	.LASF153
	.byte	0x16
	.byte	0x6c
	.byte	0x8
	.long	0x7b7
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF154
	.byte	0x16
	.byte	0x6d
	.byte	0x8
	.long	0x948
	.byte	0x1e
	.uleb128 0x8
	.long	.LASF155
	.byte	0x16
	.byte	0x6f
	.byte	0x8
	.long	0x7e7
	.byte	0x20
	.uleb128 0x8
	.long	.LASF156
	.byte	0x16
	.byte	0x70
	.byte	0x8
	.long	0x7e7
	.byte	0x28
	.uleb128 0x8
	.long	.LASF157
	.byte	0x16
	.byte	0x71
	.byte	0x8
	.long	0x7e7
	.byte	0x30
	.uleb128 0x8
	.long	.LASF158
	.byte	0x16
	.byte	0x72
	.byte	0x8
	.long	0x7e7
	.byte	0x38
	.uleb128 0x8
	.long	.LASF159
	.byte	0x16
	.byte	0x74
	.byte	0x19
	.long	0x7f3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF160
	.byte	0x16
	.byte	0x75
	.byte	0x19
	.long	0x7f3
	.byte	0x50
	.uleb128 0x8
	.long	.LASF161
	.byte	0x16
	.byte	0x76
	.byte	0x19
	.long	0x7f3
	.byte	0x60
	.uleb128 0x8
	.long	.LASF162
	.byte	0x16
	.byte	0x77
	.byte	0x19
	.long	0x7f3
	.byte	0x70
	.uleb128 0x8
	.long	.LASF163
	.byte	0x16
	.byte	0x79
	.byte	0x8
	.long	0x7cf
	.byte	0x80
	.uleb128 0x8
	.long	.LASF164
	.byte	0x16
	.byte	0x7a
	.byte	0x8
	.long	0x7cf
	.byte	0x84
	.uleb128 0x8
	.long	.LASF165
	.byte	0x16
	.byte	0x7b
	.byte	0x8
	.long	0x7cf
	.byte	0x88
	.uleb128 0x8
	.long	.LASF166
	.byte	0x16
	.byte	0x7c
	.byte	0x8
	.long	0x7cf
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF167
	.byte	0x16
	.byte	0x7e
	.byte	0x8
	.long	0x958
	.byte	0x90
	.byte	0
	.uleb128 0x9
	.long	0x7b7
	.long	0x958
	.uleb128 0xa
	.long	0x40
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x7e7
	.long	0x968
	.uleb128 0xa
	.long	0x40
	.byte	0xd
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x8
	.long	0x968
	.uleb128 0x9
	.long	0x385
	.long	0x97f
	.uleb128 0xa
	.long	0x40
	.byte	0x40
	.byte	0
	.uleb128 0xc
	.long	0x96f
	.uleb128 0x12
	.long	.LASF168
	.byte	0x17
	.value	0x11e
	.byte	0x1a
	.long	0x97f
	.uleb128 0x12
	.long	.LASF169
	.byte	0x17
	.value	0x11f
	.byte	0x1a
	.long	0x97f
	.uleb128 0x12
	.long	.LASF170
	.byte	0x18
	.value	0x21f
	.byte	0xf
	.long	0x4f3
	.uleb128 0x12
	.long	.LASF171
	.byte	0x18
	.value	0x221
	.byte	0xf
	.long	0x4f3
	.uleb128 0x10
	.long	.LASF172
	.byte	0x19
	.byte	0x24
	.byte	0xe
	.long	0x185
	.uleb128 0x10
	.long	.LASF173
	.byte	0x19
	.byte	0x32
	.byte	0xc
	.long	0x47
	.uleb128 0x10
	.long	.LASF174
	.byte	0x19
	.byte	0x37
	.byte	0xc
	.long	0x47
	.uleb128 0x10
	.long	.LASF175
	.byte	0x19
	.byte	0x3b
	.byte	0xc
	.long	0x47
	.uleb128 0x10
	.long	.LASF176
	.byte	0x1a
	.byte	0x2d
	.byte	0xe
	.long	0x185
	.uleb128 0x10
	.long	.LASF177
	.byte	0x1a
	.byte	0x2e
	.byte	0xe
	.long	0x185
	.uleb128 0xb
	.byte	0x8
	.long	0xa06
	.uleb128 0x17
	.uleb128 0x10
	.long	.LASF178
	.byte	0x1b
	.byte	0x1
	.byte	0x14
	.long	0x37f
	.uleb128 0x10
	.long	.LASF179
	.byte	0x1c
	.byte	0x12
	.byte	0x15
	.long	0x4e
	.uleb128 0x3
	.long	.LASF180
	.byte	0x1d
	.byte	0x65
	.byte	0x15
	.long	0x86
	.uleb128 0x3
	.long	.LASF181
	.byte	0x1d
	.byte	0x66
	.byte	0x16
	.long	0x92
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x61
	.byte	0x1e
	.byte	0x29
	.byte	0x6
	.long	0xa4f
	.uleb128 0x19
	.long	.LASF182
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x61
	.byte	0x1e
	.byte	0x2a
	.byte	0x6
	.long	0xa64
	.uleb128 0x1a
	.long	.LASF183
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x61
	.byte	0x1f
	.byte	0x2f
	.byte	0x1
	.long	0xac3
	.uleb128 0x1b
	.long	.LASF184
	.value	0x100
	.uleb128 0x1b
	.long	.LASF185
	.value	0x200
	.uleb128 0x1b
	.long	.LASF186
	.value	0x400
	.uleb128 0x1b
	.long	.LASF187
	.value	0x800
	.uleb128 0x1b
	.long	.LASF188
	.value	0x1000
	.uleb128 0x1b
	.long	.LASF189
	.value	0x2000
	.uleb128 0x1b
	.long	.LASF190
	.value	0x4000
	.uleb128 0x1b
	.long	.LASF191
	.value	0x8000
	.uleb128 0x1a
	.long	.LASF192
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF193
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF194
	.byte	0x4
	.uleb128 0x1a
	.long	.LASF195
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF196
	.byte	0x60
	.byte	0x20
	.byte	0x33
	.byte	0x8
	.long	0xc09
	.uleb128 0x8
	.long	.LASF197
	.byte	0x20
	.byte	0x37
	.byte	0x9
	.long	0x185
	.byte	0
	.uleb128 0x8
	.long	.LASF198
	.byte	0x20
	.byte	0x38
	.byte	0x9
	.long	0x185
	.byte	0x8
	.uleb128 0x8
	.long	.LASF199
	.byte	0x20
	.byte	0x3e
	.byte	0x9
	.long	0x185
	.byte	0x10
	.uleb128 0x8
	.long	.LASF200
	.byte	0x20
	.byte	0x44
	.byte	0x9
	.long	0x185
	.byte	0x18
	.uleb128 0x8
	.long	.LASF201
	.byte	0x20
	.byte	0x45
	.byte	0x9
	.long	0x185
	.byte	0x20
	.uleb128 0x8
	.long	.LASF202
	.byte	0x20
	.byte	0x46
	.byte	0x9
	.long	0x185
	.byte	0x28
	.uleb128 0x8
	.long	.LASF203
	.byte	0x20
	.byte	0x47
	.byte	0x9
	.long	0x185
	.byte	0x30
	.uleb128 0x8
	.long	.LASF204
	.byte	0x20
	.byte	0x48
	.byte	0x9
	.long	0x185
	.byte	0x38
	.uleb128 0x8
	.long	.LASF205
	.byte	0x20
	.byte	0x49
	.byte	0x9
	.long	0x185
	.byte	0x40
	.uleb128 0x8
	.long	.LASF206
	.byte	0x20
	.byte	0x4a
	.byte	0x9
	.long	0x185
	.byte	0x48
	.uleb128 0x8
	.long	.LASF207
	.byte	0x20
	.byte	0x4b
	.byte	0x8
	.long	0x18b
	.byte	0x50
	.uleb128 0x8
	.long	.LASF208
	.byte	0x20
	.byte	0x4c
	.byte	0x8
	.long	0x18b
	.byte	0x51
	.uleb128 0x8
	.long	.LASF209
	.byte	0x20
	.byte	0x4e
	.byte	0x8
	.long	0x18b
	.byte	0x52
	.uleb128 0x8
	.long	.LASF210
	.byte	0x20
	.byte	0x50
	.byte	0x8
	.long	0x18b
	.byte	0x53
	.uleb128 0x8
	.long	.LASF211
	.byte	0x20
	.byte	0x52
	.byte	0x8
	.long	0x18b
	.byte	0x54
	.uleb128 0x8
	.long	.LASF212
	.byte	0x20
	.byte	0x54
	.byte	0x8
	.long	0x18b
	.byte	0x55
	.uleb128 0x8
	.long	.LASF213
	.byte	0x20
	.byte	0x5b
	.byte	0x8
	.long	0x18b
	.byte	0x56
	.uleb128 0x8
	.long	.LASF214
	.byte	0x20
	.byte	0x5c
	.byte	0x8
	.long	0x18b
	.byte	0x57
	.uleb128 0x8
	.long	.LASF215
	.byte	0x20
	.byte	0x5f
	.byte	0x8
	.long	0x18b
	.byte	0x58
	.uleb128 0x8
	.long	.LASF216
	.byte	0x20
	.byte	0x61
	.byte	0x8
	.long	0x18b
	.byte	0x59
	.uleb128 0x8
	.long	.LASF217
	.byte	0x20
	.byte	0x63
	.byte	0x8
	.long	0x18b
	.byte	0x5a
	.uleb128 0x8
	.long	.LASF218
	.byte	0x20
	.byte	0x65
	.byte	0x8
	.long	0x18b
	.byte	0x5b
	.uleb128 0x8
	.long	.LASF219
	.byte	0x20
	.byte	0x6c
	.byte	0x8
	.long	0x18b
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF220
	.byte	0x20
	.byte	0x6d
	.byte	0x8
	.long	0x18b
	.byte	0x5d
	.byte	0
	.uleb128 0xc
	.long	0xac3
	.uleb128 0x1c
	.byte	0x5
	.byte	0x4
	.long	0x47
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0xc2c
	.uleb128 0x1d
	.long	.LASF221
	.sleb128 -130
	.uleb128 0x1d
	.long	.LASF222
	.sleb128 -131
	.byte	0
	.uleb128 0x9
	.long	0x192
	.long	0xc37
	.uleb128 0x11
	.byte	0
	.uleb128 0xc
	.long	0xc2c
	.uleb128 0x10
	.long	.LASF223
	.byte	0x21
	.byte	0x19
	.byte	0x13
	.long	0xc37
	.uleb128 0x10
	.long	.LASF224
	.byte	0x22
	.byte	0x20
	.byte	0x14
	.long	0x37f
	.uleb128 0x1e
	.long	.LASF265
	.byte	0x7
	.byte	0x4
	.long	0x61
	.byte	0x23
	.byte	0x20
	.byte	0x6
	.long	0xca9
	.uleb128 0x1a
	.long	.LASF225
	.byte	0
	.uleb128 0x1a
	.long	.LASF226
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF227
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF228
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF229
	.byte	0x4
	.uleb128 0x1a
	.long	.LASF230
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF231
	.byte	0x6
	.uleb128 0x1a
	.long	.LASF232
	.byte	0x7
	.uleb128 0x1a
	.long	.LASF233
	.byte	0x8
	.uleb128 0x1a
	.long	.LASF234
	.byte	0x9
	.uleb128 0x1a
	.long	.LASF235
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.long	0xc54
	.uleb128 0x12
	.long	.LASF236
	.byte	0x23
	.value	0x10b
	.byte	0x1a
	.long	0x3cb
	.uleb128 0x9
	.long	0xca9
	.long	0xcc6
	.uleb128 0x11
	.byte	0
	.uleb128 0xc
	.long	0xcbb
	.uleb128 0x12
	.long	.LASF237
	.byte	0x23
	.value	0x10c
	.byte	0x21
	.long	0xcc6
	.uleb128 0xf
	.long	.LASF238
	.uleb128 0x10
	.long	.LASF239
	.byte	0x24
	.byte	0x19
	.byte	0x1f
	.long	0xcd8
	.uleb128 0x3
	.long	.LASF240
	.byte	0x25
	.byte	0x3d
	.byte	0x10
	.long	0x969
	.uleb128 0x10
	.long	.LASF241
	.byte	0x25
	.byte	0x3e
	.byte	0x19
	.long	0xce9
	.uleb128 0x10
	.long	.LASF242
	.byte	0x26
	.byte	0x32
	.byte	0xf
	.long	0x969
	.uleb128 0x10
	.long	.LASF243
	.byte	0x26
	.byte	0x35
	.byte	0x15
	.long	0x61
	.uleb128 0x10
	.long	.LASF244
	.byte	0x26
	.byte	0x39
	.byte	0xc
	.long	0x47
	.uleb128 0xd
	.long	.LASF245
	.byte	0x20
	.byte	0x27
	.byte	0x32
	.byte	0x8
	.long	0xd67
	.uleb128 0x8
	.long	.LASF246
	.byte	0x27
	.byte	0x34
	.byte	0xf
	.long	0x37f
	.byte	0
	.uleb128 0x8
	.long	.LASF247
	.byte	0x27
	.byte	0x37
	.byte	0x7
	.long	0x47
	.byte	0x8
	.uleb128 0x8
	.long	.LASF248
	.byte	0x27
	.byte	0x38
	.byte	0x8
	.long	0xd6c
	.byte	0x10
	.uleb128 0x1f
	.string	"val"
	.byte	0x27
	.byte	0x39
	.byte	0x7
	.long	0x47
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0xd25
	.uleb128 0xb
	.byte	0x8
	.long	0x47
	.uleb128 0xd
	.long	.LASF249
	.byte	0x38
	.byte	0x28
	.byte	0x1a
	.byte	0x8
	.long	0xdfe
	.uleb128 0x8
	.long	.LASF250
	.byte	0x28
	.byte	0x1c
	.byte	0x9
	.long	0x185
	.byte	0
	.uleb128 0x8
	.long	.LASF251
	.byte	0x28
	.byte	0x1d
	.byte	0x9
	.long	0x185
	.byte	0x8
	.uleb128 0x8
	.long	.LASF252
	.byte	0x28
	.byte	0x1e
	.byte	0x9
	.long	0x185
	.byte	0x10
	.uleb128 0x8
	.long	.LASF253
	.byte	0x28
	.byte	0x20
	.byte	0x9
	.long	0x185
	.byte	0x18
	.uleb128 0x8
	.long	.LASF254
	.byte	0x28
	.byte	0x21
	.byte	0x9
	.long	0x3f4
	.byte	0x20
	.uleb128 0x20
	.long	.LASF255
	.byte	0x28
	.byte	0x22
	.byte	0x10
	.long	0x61
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x28
	.uleb128 0x20
	.long	.LASF256
	.byte	0x28
	.byte	0x23
	.byte	0x10
	.long	0x61
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x28
	.uleb128 0x20
	.long	.LASF257
	.byte	0x28
	.byte	0x24
	.byte	0x10
	.long	0x61
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF258
	.byte	0x28
	.byte	0x25
	.byte	0x17
	.long	0xdfe
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0xd72
	.uleb128 0x9
	.long	0x192
	.long	0xe14
	.uleb128 0xa
	.long	0x40
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.long	0xe04
	.uleb128 0x21
	.long	.LASF259
	.byte	0x3
	.byte	0xb2
	.byte	0x13
	.long	0xe14
	.uleb128 0x9
	.byte	0x3
	.quad	digits
	.uleb128 0x9
	.long	0x192
	.long	0xe3f
	.uleb128 0xa
	.long	0x40
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.long	0xe2f
	.uleb128 0x21
	.long	.LASF260
	.byte	0x3
	.byte	0xba
	.byte	0x13
	.long	0xe3f
	.uleb128 0x9
	.byte	0x3
	.quad	printf_flags
	.uleb128 0x9
	.long	0x192
	.long	0xe6a
	.uleb128 0xa
	.long	0x40
	.byte	0x21
	.byte	0
	.uleb128 0xc
	.long	0xe5a
	.uleb128 0x21
	.long	.LASF261
	.byte	0x3
	.byte	0xbd
	.byte	0x13
	.long	0xe6a
	.uleb128 0x9
	.byte	0x3
	.quad	fmt_terse_fs
	.uleb128 0x9
	.long	0x192
	.long	0xe95
	.uleb128 0xa
	.long	0x40
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.long	0xe85
	.uleb128 0x21
	.long	.LASF262
	.byte	0x3
	.byte	0xbe
	.byte	0x13
	.long	0xe95
	.uleb128 0x9
	.byte	0x3
	.quad	fmt_terse_regular
	.uleb128 0x9
	.long	0x192
	.long	0xec0
	.uleb128 0xa
	.long	0x40
	.byte	0x33
	.byte	0
	.uleb128 0xc
	.long	0xeb0
	.uleb128 0x21
	.long	.LASF263
	.byte	0x3
	.byte	0xc0
	.byte	0x13
	.long	0xec0
	.uleb128 0x9
	.byte	0x3
	.quad	fmt_terse_selinux
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x61
	.byte	0x3
	.byte	0xc8
	.byte	0x1
	.long	0xef0
	.uleb128 0x1a
	.long	.LASF264
	.byte	0x80
	.byte	0
	.uleb128 0x1e
	.long	.LASF266
	.byte	0x7
	.byte	0x4
	.long	0x61
	.byte	0x3
	.byte	0xcc
	.byte	0x6
	.long	0xf15
	.uleb128 0x1a
	.long	.LASF267
	.byte	0
	.uleb128 0x1a
	.long	.LASF268
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF269
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0xef0
	.uleb128 0x9
	.long	0x385
	.long	0xf2a
	.uleb128 0xa
	.long	0x40
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	0xf1a
	.uleb128 0x21
	.long	.LASF270
	.byte	0x3
	.byte	0xd3
	.byte	0x1a
	.long	0xf2a
	.uleb128 0x9
	.byte	0x3
	.quad	cached_args
	.uleb128 0x9
	.long	0xf15
	.long	0xf55
	.uleb128 0xa
	.long	0x40
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0xf45
	.uleb128 0x21
	.long	.LASF271
	.byte	0x3
	.byte	0xd8
	.byte	0x1f
	.long	0xf55
	.uleb128 0x9
	.byte	0x3
	.quad	cached_modes
	.uleb128 0x9
	.long	0xd67
	.long	0xf80
	.uleb128 0xa
	.long	0x40
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0xf70
	.uleb128 0x21
	.long	.LASF272
	.byte	0x3
	.byte	0xdd
	.byte	0x1c
	.long	0xf80
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x21
	.long	.LASF273
	.byte	0x3
	.byte	0xeb
	.byte	0xd
	.long	0xfb1
	.uleb128 0x9
	.byte	0x3
	.quad	follow_links
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF274
	.uleb128 0x21
	.long	.LASF275
	.byte	0x3
	.byte	0xef
	.byte	0xd
	.long	0xfb1
	.uleb128 0x9
	.byte	0x3
	.quad	interpret_backslash_escapes
	.uleb128 0x21
	.long	.LASF276
	.byte	0x3
	.byte	0xf3
	.byte	0x14
	.long	0x37f
	.uleb128 0x9
	.byte	0x3
	.quad	trailing_delim
	.uleb128 0x21
	.long	.LASF197
	.byte	0x3
	.byte	0xf6
	.byte	0x14
	.long	0x37f
	.uleb128 0x9
	.byte	0x3
	.quad	decimal_point
	.uleb128 0x21
	.long	.LASF277
	.byte	0x3
	.byte	0xf7
	.byte	0xf
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	decimal_point_len
	.uleb128 0x22
	.long	.LASF278
	.byte	0x18
	.byte	0x3
	.value	0x4e5
	.byte	0x8
	.long	0x103a
	.uleb128 0x23
	.string	"st"
	.byte	0x3
	.value	0x4e6
	.byte	0x10
	.long	0x103a
	.byte	0
	.uleb128 0x24
	.long	.LASF279
	.byte	0x3
	.value	0x4e7
	.byte	0x13
	.long	0x40c
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x6d1
	.uleb128 0x25
	.long	.LASF280
	.byte	0x3
	.value	0x4eb
	.byte	0xd
	.long	0xfb1
	.uleb128 0x9
	.byte	0x3
	.quad	dont_sync
	.uleb128 0x25
	.long	.LASF281
	.byte	0x3
	.value	0x4ee
	.byte	0xd
	.long	0xfb1
	.uleb128 0x9
	.byte	0x3
	.quad	force_sync
	.uleb128 0x26
	.long	.LASF288
	.byte	0x3
	.value	0x716
	.byte	0x1
	.long	0x47
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x1140
	.uleb128 0x27
	.long	.LASF282
	.byte	0x3
	.value	0x716
	.byte	0xb
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LASF283
	.byte	0x3
	.value	0x716
	.byte	0x17
	.long	0x4f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"c"
	.byte	0x3
	.value	0x718
	.byte	0x7
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.string	"fs"
	.byte	0x3
	.value	0x719
	.byte	0x8
	.long	0xfb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -51
	.uleb128 0x25
	.long	.LASF284
	.byte	0x3
	.value	0x71a
	.byte	0x8
	.long	0xfb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x25
	.long	.LASF285
	.byte	0x3
	.value	0x71b
	.byte	0x9
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF286
	.byte	0x3
	.value	0x71c
	.byte	0x9
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"ok"
	.byte	0x3
	.value	0x71d
	.byte	0x8
	.long	0xfb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x25
	.long	.LASF287
	.byte	0x3
	.value	0x725
	.byte	0x17
	.long	0x1140
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x28
	.string	"i"
	.byte	0x3
	.value	0x773
	.byte	0xc
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0xc09
	.uleb128 0x2a
	.long	.LASF289
	.byte	0x3
	.value	0x69b
	.byte	0x1
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x1176
	.uleb128 0x27
	.long	.LASF290
	.byte	0x3
	.value	0x69b
	.byte	0xc
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2b
	.long	.LASF293
	.byte	0x3
	.value	0x643
	.byte	0x1
	.long	0x185
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x11fb
	.uleb128 0x2c
	.string	"fs"
	.byte	0x3
	.value	0x643
	.byte	0x16
	.long	0xfb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LASF284
	.byte	0x3
	.value	0x643
	.byte	0x1f
	.long	0xfb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF291
	.byte	0x3
	.value	0x643
	.byte	0x2b
	.long	0xfb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.long	.LASF285
	.byte	0x3
	.value	0x645
	.byte	0x9
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x25
	.long	.LASF292
	.byte	0x3
	.value	0x660
	.byte	0x11
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF294
	.byte	0x3
	.value	0x5b5
	.byte	0x1
	.long	0xfb1
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1308
	.uleb128 0x27
	.long	.LASF295
	.byte	0x3
	.value	0x5b5
	.byte	0x13
	.long	0x185
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF296
	.byte	0x3
	.value	0x5b5
	.byte	0x23
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.string	"m"
	.byte	0x3
	.value	0x5b5
	.byte	0x3c
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.string	"fd"
	.byte	0x3
	.value	0x5b6
	.byte	0x11
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.long	.LASF297
	.byte	0x3
	.value	0x5b6
	.byte	0x21
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.long	.LASF298
	.byte	0x3
	.value	0x5b6
	.byte	0x37
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.long	.LASF299
	.byte	0x3
	.value	0x5b8
	.byte	0x16
	.long	0x1308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF300
	.byte	0x3
	.value	0x5b9
	.byte	0x10
	.long	0x103a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF279
	.byte	0x3
	.value	0x5ba
	.byte	0x13
	.long	0x40c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF301
	.byte	0x3
	.value	0x5bb
	.byte	0x12
	.long	0x130e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF302
	.byte	0x3
	.value	0x5bc
	.byte	0x11
	.long	0x1314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF303
	.byte	0x3
	.value	0x5bd
	.byte	0x8
	.long	0xfb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.uleb128 0x29
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x25
	.long	.LASF304
	.byte	0x3
	.value	0x5c8
	.byte	0x11
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x1010
	.uleb128 0xb
	.byte	0x8
	.long	0x448
	.uleb128 0xb
	.byte	0x8
	.long	0x4b1
	.uleb128 0x2b
	.long	.LASF305
	.byte	0x3
	.value	0x53a
	.byte	0x1
	.long	0xfb1
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x13e5
	.uleb128 0x27
	.long	.LASF297
	.byte	0x3
	.value	0x53a
	.byte	0x16
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x27
	.long	.LASF285
	.byte	0x3
	.value	0x53a
	.byte	0x2c
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x27
	.long	.LASF286
	.byte	0x3
	.value	0x53a
	.byte	0x40
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x28
	.string	"fd"
	.byte	0x3
	.value	0x53c
	.byte	0x7
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -492
	.uleb128 0x25
	.long	.LASF306
	.byte	0x3
	.value	0x53d
	.byte	0x7
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x28
	.string	"st"
	.byte	0x3
	.value	0x53e
	.byte	0xf
	.long	0x6d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x28
	.string	"stx"
	.byte	0x3
	.value	0x53f
	.byte	0x10
	.long	0x828
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x25
	.long	.LASF307
	.byte	0x3
	.value	0x540
	.byte	0xf
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x28
	.string	"pa"
	.byte	0x3
	.value	0x541
	.byte	0x15
	.long	0x1010
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x25
	.long	.LASF303
	.byte	0x3
	.value	0x565
	.byte	0x8
	.long	0xfb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -497
	.byte	0
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x3
	.value	0x526
	.byte	0x1
	.long	0x61
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x1437
	.uleb128 0x27
	.long	.LASF285
	.byte	0x3
	.value	0x526
	.byte	0x1d
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF309
	.byte	0x3
	.value	0x528
	.byte	0x10
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.string	"b"
	.byte	0x3
	.value	0x529
	.byte	0xf
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF310
	.byte	0x3
	.value	0x4f2
	.byte	0x1
	.long	0x61
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x146b
	.uleb128 0x2c
	.string	"fmt"
	.byte	0x3
	.value	0x4f2
	.byte	0x13
	.long	0x18b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF311
	.byte	0x3
	.value	0x4cf
	.byte	0x1
	.long	0xfb1
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x14d3
	.uleb128 0x27
	.long	.LASF297
	.byte	0x3
	.value	0x4cf
	.byte	0x18
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x27
	.long	.LASF285
	.byte	0x3
	.value	0x4cf
	.byte	0x2e
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x25
	.long	.LASF312
	.byte	0x3
	.value	0x4d1
	.byte	0x12
	.long	0x4f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x25
	.long	.LASF303
	.byte	0x3
	.value	0x4e1
	.byte	0x8
	.long	0xfb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -161
	.byte	0
	.uleb128 0x2b
	.long	.LASF313
	.byte	0x3
	.value	0x45f
	.byte	0x1
	.long	0xfb1
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x1643
	.uleb128 0x27
	.long	.LASF285
	.byte	0x3
	.value	0x45f
	.byte	0x17
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.string	"fd"
	.byte	0x3
	.value	0x45f
	.byte	0x23
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x27
	.long	.LASF297
	.byte	0x3
	.value	0x45f
	.byte	0x33
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.long	.LASF314
	.byte	0x3
	.value	0x460
	.byte	0x12
	.long	0x166b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.long	.LASF298
	.byte	0x3
	.value	0x462
	.byte	0x17
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.long	.LASF303
	.byte	0x3
	.value	0x464
	.byte	0x8
	.long	0xfb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x61
	.byte	0x3
	.value	0x469
	.byte	0x5
	.long	0x1571
	.uleb128 0x1a
	.long	.LASF315
	.byte	0x2
	.byte	0
	.uleb128 0x25
	.long	.LASF316
	.byte	0x3
	.value	0x46f
	.byte	0xa
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF317
	.byte	0x3
	.value	0x470
	.byte	0x9
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"b"
	.byte	0x3
	.value	0x471
	.byte	0xf
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x15e7
	.uleb128 0x28
	.string	"len"
	.byte	0x3
	.value	0x478
	.byte	0x14
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF318
	.byte	0x3
	.value	0x479
	.byte	0x19
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0
	.uleb128 0x2e
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x161f
	.uleb128 0x25
	.long	.LASF319
	.byte	0x3
	.value	0x49d
	.byte	0x13
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x25
	.long	.LASF320
	.byte	0x3
	.value	0x49e
	.byte	0x13
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x29
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x25
	.long	.LASF319
	.byte	0x3
	.value	0x4a9
	.byte	0x13
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0xfb1
	.long	0x166b
	.uleb128 0x31
	.long	0x185
	.uleb128 0x31
	.long	0x34
	.uleb128 0x31
	.long	0x61
	.uleb128 0x31
	.long	0x47
	.uleb128 0x31
	.long	0x37f
	.uleb128 0x31
	.long	0xa00
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x1643
	.uleb128 0x2b
	.long	.LASF321
	.byte	0x3
	.value	0x451
	.byte	0x1
	.long	0x34
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x16c5
	.uleb128 0x27
	.long	.LASF322
	.byte	0x3
	.value	0x451
	.byte	0x21
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"len"
	.byte	0x3
	.value	0x453
	.byte	0xa
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF318
	.byte	0x3
	.value	0x454
	.byte	0xf
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.long	.LASF323
	.byte	0x3
	.value	0x42a
	.byte	0x1
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x16f3
	.uleb128 0x2c
	.string	"c"
	.byte	0x3
	.value	0x42a
	.byte	0x16
	.long	0x18b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x32
	.long	.LASF324
	.byte	0x3
	.value	0x411
	.byte	0x1
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x1737
	.uleb128 0x25
	.long	.LASF325
	.byte	0x3
	.value	0x413
	.byte	0xf
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.Ldebug_ranges0+0
	.uleb128 0x28
	.string	"i"
	.byte	0x3
	.value	0x416
	.byte	0xb
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF326
	.byte	0x3
	.value	0x405
	.byte	0x1
	.long	0x40c
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x1778
	.uleb128 0x2c
	.string	"ts"
	.byte	0x3
	.value	0x405
	.byte	0x1e
	.long	0x40c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"z"
	.byte	0x3
	.value	0x409
	.byte	0x13
	.long	0x40c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF327
	.byte	0x3
	.value	0x3d4
	.byte	0x1
	.long	0xfb1
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x1851
	.uleb128 0x27
	.long	.LASF297
	.byte	0x3
	.value	0x3d4
	.byte	0x1e
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF295
	.byte	0x3
	.value	0x3d4
	.byte	0x2e
	.long	0x185
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.long	.LASF296
	.byte	0x3
	.value	0x3d4
	.byte	0x3e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF328
	.byte	0x3
	.value	0x3d5
	.byte	0x25
	.long	0x1851
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"np"
	.byte	0x3
	.value	0x3d8
	.byte	0xf
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"bp"
	.byte	0x3
	.value	0x3d8
	.byte	0x1a
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"mp"
	.byte	0x3
	.value	0x3d9
	.byte	0x9
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF303
	.byte	0x3
	.value	0x3da
	.byte	0x8
	.long	0xfb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x34
	.long	.LASF389
	.byte	0x3
	.value	0x3fc
	.byte	0x1
	.quad	.L243
	.uleb128 0x29
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x25
	.long	.LASF329
	.byte	0x3
	.value	0x3e0
	.byte	0xd
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x7a2
	.uleb128 0x2b
	.long	.LASF330
	.byte	0x3
	.value	0x3ad
	.byte	0x1
	.long	0x37f
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x190f
	.uleb128 0x27
	.long	.LASF246
	.byte	0x3
	.value	0x3ad
	.byte	0x1f
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x25
	.long	.LASF331
	.byte	0x3
	.value	0x3af
	.byte	0x10
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x25
	.long	.LASF332
	.byte	0x3
	.value	0x3b1
	.byte	0x1e
	.long	0xdfe
	.uleb128 0x9
	.byte	0x3
	.quad	mount_list.7249
	.uleb128 0x25
	.long	.LASF333
	.byte	0x3
	.value	0x3b2
	.byte	0xf
	.long	0xfb1
	.uleb128 0x9
	.byte	0x3
	.quad	tried_mount_list.7250
	.uleb128 0x25
	.long	.LASF334
	.byte	0x3
	.value	0x3ba
	.byte	0xf
	.long	0x6d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x28
	.string	"me"
	.byte	0x3
	.value	0x3be
	.byte	0x17
	.long	0xdfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x29
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x25
	.long	.LASF335
	.byte	0x3
	.value	0x3c4
	.byte	0x17
	.long	0x6d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF336
	.byte	0x3
	.value	0x355
	.byte	0x1
	.long	0xfb1
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a75
	.uleb128 0x27
	.long	.LASF295
	.byte	0x3
	.value	0x355
	.byte	0x15
	.long	0x185
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF296
	.byte	0x3
	.value	0x355
	.byte	0x25
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.string	"m"
	.byte	0x3
	.value	0x355
	.byte	0x3e
	.long	0x61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2c
	.string	"fd"
	.byte	0x3
	.value	0x356
	.byte	0x13
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF297
	.byte	0x3
	.value	0x356
	.byte	0x23
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.long	.LASF298
	.byte	0x3
	.value	0x357
	.byte	0x1b
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.long	.LASF312
	.byte	0x3
	.value	0x359
	.byte	0x19
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF303
	.byte	0x3
	.value	0x35a
	.byte	0x8
	.long	0xfb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x2e
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x1a52
	.uleb128 0x14
	.long	.LASF337
	.byte	0x3
	.value	0x367
	.byte	0x1e
	.long	0x61
	.uleb128 0xc
	.long	0x19cb
	.uleb128 0x28
	.string	"p"
	.byte	0x3
	.value	0x36b
	.byte	0x1a
	.long	0x19eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.byte	0x8
	.long	0x19d8
	.uleb128 0x25
	.long	.LASF338
	.byte	0x3
	.value	0x36f
	.byte	0x13
	.long	0xa2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF339
	.byte	0x3
	.value	0x370
	.byte	0xd
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x28
	.string	"i"
	.byte	0x3
	.value	0x371
	.byte	0x12
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x28
	.string	"u"
	.byte	0x3
	.value	0x373
	.byte	0x17
	.long	0xa2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x25
	.long	.LASF340
	.byte	0x3
	.value	0x396
	.byte	0x13
	.long	0xa2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x5a3
	.uleb128 0x2b
	.long	.LASF341
	.byte	0x3
	.value	0x33e
	.byte	0x1
	.long	0xfb1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x1af2
	.uleb128 0x27
	.long	.LASF295
	.byte	0x3
	.value	0x33e
	.byte	0x19
	.long	0x185
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF296
	.byte	0x3
	.value	0x33e
	.byte	0x29
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF297
	.byte	0x3
	.value	0x33e
	.byte	0x41
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF342
	.byte	0x3
	.value	0x340
	.byte	0x9
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF303
	.byte	0x3
	.value	0x341
	.byte	0x8
	.long	0xfb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.byte	0
	.uleb128 0x32
	.long	.LASF343
	.byte	0x3
	.value	0x2d3
	.byte	0x1
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d75
	.uleb128 0x27
	.long	.LASF295
	.byte	0x3
	.value	0x2d3
	.byte	0x16
	.long	0x185
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x27
	.long	.LASF296
	.byte	0x3
	.value	0x2d3
	.byte	0x26
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2c
	.string	"arg"
	.byte	0x3
	.value	0x2d4
	.byte	0x20
	.long	0x40c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.string	"dot"
	.byte	0x3
	.value	0x2d6
	.byte	0x9
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF344
	.byte	0x3
	.value	0x2d7
	.byte	0xa
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF345
	.byte	0x3
	.value	0x2d8
	.byte	0x7
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x25
	.long	.LASF346
	.byte	0x3
	.value	0x2d9
	.byte	0x7
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.long	.LASF347
	.byte	0x3
	.value	0x2da
	.byte	0x8
	.long	0xfb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -142
	.uleb128 0x25
	.long	.LASF348
	.byte	0x3
	.value	0x316
	.byte	0x7
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x25
	.long	.LASF349
	.byte	0x3
	.value	0x319
	.byte	0x7
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x25
	.long	.LASF350
	.byte	0x3
	.value	0x31a
	.byte	0x7
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2e
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1bf1
	.uleb128 0x25
	.long	.LASF351
	.byte	0x3
	.value	0x2e3
	.byte	0x14
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1caf
	.uleb128 0x28
	.string	"p"
	.byte	0x3
	.value	0x2f0
	.byte	0x11
	.long	0x185
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF352
	.byte	0x3
	.value	0x2f7
	.byte	0x14
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x28
	.string	"w_d"
	.byte	0x3
	.value	0x2fd
	.byte	0x13
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x28
	.string	"w"
	.byte	0x3
	.value	0x302
	.byte	0x17
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x28
	.string	"dst"
	.byte	0x3
	.value	0x305
	.byte	0x1d
	.long	0x185
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x28
	.string	"src"
	.byte	0x3
	.value	0x306
	.byte	0x28
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x1cd4
	.uleb128 0x28
	.string	"i"
	.byte	0x3
	.value	0x317
	.byte	0xc
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x2e
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x1d1e
	.uleb128 0x25
	.long	.LASF353
	.byte	0x3
	.value	0x31e
	.byte	0xc
	.long	0xfb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -141
	.uleb128 0x29
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x25
	.long	.LASF354
	.byte	0x3
	.value	0x321
	.byte	0xf
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x25
	.long	.LASF355
	.byte	0x3
	.value	0x330
	.byte	0xb
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.long	.LASF356
	.byte	0x3
	.value	0x331
	.byte	0xb
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.long	.LASF357
	.byte	0x3
	.value	0x332
	.byte	0xb
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.long	.LASF358
	.byte	0x3
	.value	0x333
	.byte	0xb
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF359
	.byte	0x3
	.value	0x2ca
	.byte	0x1
	.long	0x47
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x1db9
	.uleb128 0x27
	.long	.LASF295
	.byte	0x3
	.value	0x2ca
	.byte	0x17
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF296
	.byte	0x3
	.value	0x2ca
	.byte	0x27
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.long	.LASF360
	.byte	0x3
	.value	0x2c4
	.byte	0x1
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e09
	.uleb128 0x27
	.long	.LASF295
	.byte	0x3
	.value	0x2c4
	.byte	0x13
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF296
	.byte	0x3
	.value	0x2c4
	.byte	0x23
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"arg"
	.byte	0x3
	.value	0x2c4
	.byte	0x39
	.long	0xa2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x32
	.long	.LASF361
	.byte	0x3
	.value	0x2be
	.byte	0x1
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e59
	.uleb128 0x27
	.long	.LASF295
	.byte	0x3
	.value	0x2be
	.byte	0x13
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF296
	.byte	0x3
	.value	0x2be
	.byte	0x23
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"arg"
	.byte	0x3
	.value	0x2be
	.byte	0x39
	.long	0xa2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2b
	.long	.LASF362
	.byte	0x3
	.value	0x2b8
	.byte	0x1
	.long	0x47
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ead
	.uleb128 0x27
	.long	.LASF295
	.byte	0x3
	.value	0x2b8
	.byte	0x11
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF296
	.byte	0x3
	.value	0x2b8
	.byte	0x21
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"arg"
	.byte	0x3
	.value	0x2b8
	.byte	0x37
	.long	0xa2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2b
	.long	.LASF363
	.byte	0x3
	.value	0x2b2
	.byte	0x1
	.long	0x47
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f01
	.uleb128 0x27
	.long	.LASF295
	.byte	0x3
	.value	0x2b2
	.byte	0x10
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF296
	.byte	0x3
	.value	0x2b2
	.byte	0x20
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"arg"
	.byte	0x3
	.value	0x2b2
	.byte	0x35
	.long	0xa1f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x32
	.long	.LASF364
	.byte	0x3
	.value	0x2ac
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f51
	.uleb128 0x27
	.long	.LASF295
	.byte	0x3
	.value	0x2ac
	.byte	0x13
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF296
	.byte	0x3
	.value	0x2ac
	.byte	0x23
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"arg"
	.byte	0x3
	.value	0x2ac
	.byte	0x3b
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x32
	.long	.LASF365
	.byte	0x3
	.value	0x29d
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fe3
	.uleb128 0x27
	.long	.LASF295
	.byte	0x3
	.value	0x29d
	.byte	0x14
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF296
	.byte	0x3
	.value	0x29d
	.byte	0x24
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF366
	.byte	0x3
	.value	0x29d
	.byte	0x3c
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF367
	.byte	0x3
	.value	0x29e
	.byte	0x1a
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"dst"
	.byte	0x3
	.value	0x2a0
	.byte	0x9
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"src"
	.byte	0x3
	.value	0x2a1
	.byte	0xf
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF368
	.byte	0x3
	.value	0x2a2
	.byte	0xf
	.long	0x37f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF369
	.byte	0x3
	.value	0x280
	.byte	0x1
	.long	0x185
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x2085
	.uleb128 0x2c
	.string	"t"
	.byte	0x3
	.value	0x280
	.byte	0x1d
	.long	0x40c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.string	"str"
	.byte	0x3
	.value	0x285
	.byte	0xf
	.long	0x2085
	.uleb128 0x9
	.byte	0x3
	.quad	str.7120
	.uleb128 0x28
	.string	"tz"
	.byte	0x3
	.value	0x289
	.byte	0x15
	.long	0x6b9
	.uleb128 0x9
	.byte	0x3
	.quad	tz.7121
	.uleb128 0x28
	.string	"tm"
	.byte	0x3
	.value	0x28c
	.byte	0xd
	.long	0x5b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"ns"
	.byte	0x3
	.value	0x28d
	.byte	0x7
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x25
	.long	.LASF370
	.byte	0x3
	.value	0x292
	.byte	0xc
	.long	0x2095
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x18b
	.long	0x2095
	.uleb128 0xa
	.long	0x40
	.byte	0x3c
	.byte	0
	.uleb128 0x9
	.long	0x18b
	.long	0x20a5
	.uleb128 0xa
	.long	0x40
	.byte	0x14
	.byte	0
	.uleb128 0x2b
	.long	.LASF371
	.byte	0x3
	.value	0x277
	.byte	0x1
	.long	0x185
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x20f0
	.uleb128 0x27
	.long	.LASF300
	.byte	0x3
	.value	0x277
	.byte	0x22
	.long	0x1851
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF372
	.byte	0x3
	.value	0x279
	.byte	0xf
	.long	0x20f0
	.uleb128 0x9
	.byte	0x3
	.quad	modebuf.7116
	.byte	0
	.uleb128 0x9
	.long	0x18b
	.long	0x2100
	.uleb128 0xa
	.long	0x40
	.byte	0xb
	.byte	0
	.uleb128 0x2b
	.long	.LASF373
	.byte	0x3
	.value	0x104
	.byte	0x1
	.long	0x37f
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x216d
	.uleb128 0x27
	.long	.LASF312
	.byte	0x3
	.value	0x104
	.byte	0x25
	.long	0x1a75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x25
	.long	.LASF374
	.byte	0x3
	.value	0x26c
	.byte	0x1b
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"buf"
	.byte	0x3
	.value	0x26d
	.byte	0x15
	.long	0x216d
	.uleb128 0x9
	.byte	0x3
	.quad	buf.7112
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x18b
	.long	0x217d
	.uleb128 0xa
	.long	0x40
	.byte	0x1c
	.byte	0
	.uleb128 0x35
	.long	.LASF375
	.byte	0x2
	.byte	0x21
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x21ba
	.uleb128 0x36
	.string	"stx"
	.byte	0x2
	.byte	0x21
	.byte	0x1e
	.long	0x21ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF123
	.byte	0x2
	.byte	0x21
	.byte	0x30
	.long	0x103a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x828
	.uleb128 0x38
	.long	.LASF376
	.byte	0x2
	.byte	0x17
	.byte	0x1
	.long	0x40c
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x2200
	.uleb128 0x36
	.string	"tsx"
	.byte	0x2
	.byte	0x17
	.byte	0x35
	.long	0x7f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.string	"ts"
	.byte	0x2
	.byte	0x19
	.byte	0x13
	.long	0x40c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF377
	.byte	0x1
	.value	0x2b2
	.byte	0x1
	.long	0x185
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x2242
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.value	0x2b2
	.byte	0x13
	.long	0x400
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"buf"
	.byte	0x1
	.value	0x2b2
	.byte	0x1c
	.long	0x185
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.long	.LASF378
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x22e7
	.uleb128 0x27
	.long	.LASF379
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x22
	.long	.LASF380
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x229d
	.uleb128 0x24
	.long	.LASF379
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x37f
	.byte	0
	.uleb128 0x24
	.long	.LASF381
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x37f
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x2272
	.uleb128 0x25
	.long	.LASF380
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x22f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x25
	.long	.LASF381
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x25
	.long	.LASF382
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x22fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x25
	.long	.LASF383
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x37f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x9
	.long	0x229d
	.long	0x22f7
	.uleb128 0xa
	.long	0x40
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.long	0x22e7
	.uleb128 0xb
	.byte	0x8
	.long	0x229d
	.uleb128 0x3a
	.long	.LASF390
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.long	.LASF384
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0x6a
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x36
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x18b
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
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
	.uleb128 0xb
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF138:
	.string	"__glibc_reserved"
.LASF137:
	.string	"st_ctim"
.LASF9:
	.string	"size_t"
.LASF302:
	.string	"gw_ent"
.LASF106:
	.string	"tm_hour"
.LASF349:
	.string	"frac_sec"
.LASF89:
	.string	"gr_gid"
.LASF221:
	.string	"GETOPT_HELP_CHAR"
.LASF191:
	.string	"_ISgraph"
.LASF133:
	.string	"st_blksize"
.LASF134:
	.string	"st_blocks"
.LASF94:
	.string	"f_blocks"
.LASF61:
	.string	"_IO_codecvt"
.LASF263:
	.string	"fmt_terse_selinux"
.LASF345:
	.string	"width"
.LASF41:
	.string	"_IO_save_end"
.LASF164:
	.string	"stx_rdev_minor"
.LASF385:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF300:
	.string	"statbuf"
.LASF20:
	.string	"__fsid_t"
.LASF139:
	.string	"__u16"
.LASF14:
	.string	"__gid_t"
.LASF98:
	.string	"f_ffree"
.LASF259:
	.string	"digits"
.LASF168:
	.string	"_sys_siglist"
.LASF136:
	.string	"st_mtim"
.LASF71:
	.string	"time_t"
.LASF208:
	.string	"frac_digits"
.LASF34:
	.string	"_IO_write_base"
.LASF174:
	.string	"opterr"
.LASF338:
	.string	"fsid"
.LASF244:
	.string	"error_one_per_line"
.LASF343:
	.string	"out_epoch_sec"
.LASF50:
	.string	"_lock"
.LASF200:
	.string	"int_curr_symbol"
.LASF371:
	.string	"human_access"
.LASF146:
	.string	"statx"
.LASF122:
	.string	"timezone_t"
.LASF389:
	.string	"print_mount_point"
.LASF374:
	.string	"type"
.LASF160:
	.string	"stx_btime"
.LASF123:
	.string	"stat"
.LASF103:
	.string	"f_spare"
.LASF115:
	.string	"__tzname"
.LASF296:
	.string	"prefix_len"
.LASF39:
	.string	"_IO_save_base"
.LASF241:
	.string	"argmatch_die"
.LASF90:
	.string	"gr_mem"
.LASF281:
	.string	"force_sync"
.LASF269:
	.string	"cached_always"
.LASF207:
	.string	"int_frac_digits"
.LASF43:
	.string	"_chain"
.LASF141:
	.string	"__u32"
.LASF47:
	.string	"_cur_column"
.LASF66:
	.string	"sys_nerr"
.LASF93:
	.string	"f_bsize"
.LASF287:
	.string	"locale"
.LASF205:
	.string	"positive_sign"
.LASF370:
	.string	"secbuf"
.LASF12:
	.string	"__dev_t"
.LASF212:
	.string	"n_sep_by_space"
.LASF249:
	.string	"mount_entry"
.LASF271:
	.string	"cached_modes"
.LASF68:
	.string	"_sys_nerr"
.LASF170:
	.string	"__environ"
.LASF202:
	.string	"mon_decimal_point"
.LASF78:
	.string	"passwd"
.LASF350:
	.string	"int_len"
.LASF0:
	.string	"long int"
.LASF112:
	.string	"tm_isdst"
.LASF84:
	.string	"pw_dir"
.LASF247:
	.string	"has_arg"
.LASF308:
	.string	"format_to_mask"
.LASF60:
	.string	"_IO_marker"
.LASF252:
	.string	"me_mntroot"
.LASF217:
	.string	"int_n_cs_precedes"
.LASF190:
	.string	"_ISprint"
.LASF251:
	.string	"me_mountdir"
.LASF358:
	.string	"trailing_width"
.LASF163:
	.string	"stx_rdev_major"
.LASF85:
	.string	"pw_shell"
.LASF7:
	.string	"signed char"
.LASF22:
	.string	"__blksize_t"
.LASF72:
	.string	"_IO_FILE"
.LASF117:
	.string	"__timezone"
.LASF62:
	.string	"_IO_wide_data"
.LASF128:
	.string	"st_uid"
.LASF143:
	.string	"__u64"
.LASF312:
	.string	"statfsbuf"
.LASF375:
	.string	"statx_to_stat"
.LASF150:
	.string	"stx_nlink"
.LASF236:
	.string	"quoting_style_args"
.LASF369:
	.string	"human_time"
.LASF171:
	.string	"environ"
.LASF5:
	.string	"unsigned char"
.LASF54:
	.string	"_freeres_list"
.LASF131:
	.string	"st_rdev"
.LASF357:
	.string	"ilen"
.LASF257:
	.string	"me_type_malloced"
.LASF83:
	.string	"pw_gecos"
.LASF286:
	.string	"format2"
.LASF159:
	.string	"stx_atime"
.LASF378:
	.string	"emit_ancillary_info"
.LASF264:
	.string	"PRINTF_OPTION"
.LASF243:
	.string	"error_message_count"
.LASF27:
	.string	"__syscall_slong_t"
.LASF274:
	.string	"_Bool"
.LASF24:
	.string	"__fsblkcnt_t"
.LASF354:
	.string	"frac_sec_modulus"
.LASF337:
	.string	"fsid_word"
.LASF28:
	.string	"char"
.LASF278:
	.string	"print_args"
.LASF258:
	.string	"me_next"
.LASF246:
	.string	"name"
.LASF333:
	.string	"tried_mount_list"
.LASF388:
	.string	"_IO_lock_t"
.LASF214:
	.string	"n_sign_posn"
.LASF297:
	.string	"filename"
.LASF120:
	.string	"timezone"
.LASF99:
	.string	"f_fsid"
.LASF372:
	.string	"modebuf"
.LASF16:
	.string	"__mode_t"
.LASF306:
	.string	"flags"
.LASF105:
	.string	"tm_min"
.LASF31:
	.string	"_IO_read_ptr"
.LASF322:
	.string	"directive"
.LASF26:
	.string	"__fsword_t"
.LASF153:
	.string	"stx_mode"
.LASF63:
	.string	"stdin"
.LASF206:
	.string	"negative_sign"
.LASF67:
	.string	"sys_errlist"
.LASF215:
	.string	"int_p_cs_precedes"
.LASF323:
	.string	"print_esc_char"
.LASF42:
	.string	"_markers"
.LASF224:
	.string	"program_name"
.LASF194:
	.string	"_ISpunct"
.LASF107:
	.string	"tm_mday"
.LASF376:
	.string	"statx_timestamp_to_timespec"
.LASF229:
	.string	"shell_escape_always_quoting_style"
.LASF88:
	.string	"gr_passwd"
.LASF231:
	.string	"c_maybe_quoting_style"
.LASF176:
	.string	"program_invocation_name"
.LASF305:
	.string	"do_stat"
.LASF381:
	.string	"node"
.LASF196:
	.string	"lconv"
.LASF276:
	.string	"trailing_delim"
.LASF97:
	.string	"f_files"
.LASF295:
	.string	"pformat"
.LASF261:
	.string	"fmt_terse_fs"
.LASF70:
	.string	"dev_t"
.LASF104:
	.string	"tm_sec"
.LASF155:
	.string	"stx_ino"
.LASF51:
	.string	"_offset"
.LASF118:
	.string	"tzname"
.LASF162:
	.string	"stx_mtime"
.LASF272:
	.string	"long_options"
.LASF129:
	.string	"st_gid"
.LASF377:
	.string	"timetostr"
.LASF173:
	.string	"optind"
.LASF234:
	.string	"clocale_quoting_style"
.LASF270:
	.string	"cached_args"
.LASF242:
	.string	"error_print_progname"
.LASF1:
	.string	"long unsigned int"
.LASF285:
	.string	"format"
.LASF363:
	.string	"out_int"
.LASF290:
	.string	"status"
.LASF45:
	.string	"_flags2"
.LASF353:
	.string	"minus_zero"
.LASF132:
	.string	"st_size"
.LASF157:
	.string	"stx_blocks"
.LASF33:
	.string	"_IO_read_base"
.LASF245:
	.string	"option"
.LASF262:
	.string	"fmt_terse_regular"
.LASF58:
	.string	"_unused2"
.LASF356:
	.string	"trailing_prec"
.LASF210:
	.string	"p_sep_by_space"
.LASF326:
	.string	"neg_to_zero"
.LASF361:
	.string	"out_uint_o"
.LASF188:
	.string	"_ISxdigit"
.LASF86:
	.string	"group"
.LASF360:
	.string	"out_uint_x"
.LASF282:
	.string	"argc"
.LASF46:
	.string	"_old_offset"
.LASF380:
	.string	"infomap"
.LASF335:
	.string	"dev_stats"
.LASF283:
	.string	"argv"
.LASF218:
	.string	"int_n_sep_by_space"
.LASF23:
	.string	"__blkcnt_t"
.LASF226:
	.string	"shell_quoting_style"
.LASF15:
	.string	"__ino_t"
.LASF342:
	.string	"scontext"
.LASF2:
	.string	"long long int"
.LASF379:
	.string	"program"
.LASF178:
	.string	"Version"
.LASF158:
	.string	"stx_attributes_mask"
.LASF179:
	.string	"exit_failure"
.LASF76:
	.string	"_gl_cxxalias_dummy"
.LASF108:
	.string	"tm_mon"
.LASF293:
	.string	"default_format"
.LASF184:
	.string	"_ISupper"
.LASF230:
	.string	"c_quoting_style"
.LASF193:
	.string	"_IScntrl"
.LASF36:
	.string	"_IO_write_end"
.LASF301:
	.string	"pw_ent"
.LASF307:
	.string	"pathname"
.LASF309:
	.string	"mask"
.LASF181:
	.string	"uintmax_t"
.LASF341:
	.string	"out_file_context"
.LASF169:
	.string	"sys_siglist"
.LASF268:
	.string	"cached_never"
.LASF10:
	.string	"__intmax_t"
.LASF222:
	.string	"GETOPT_VERSION_CHAR"
.LASF37:
	.string	"_IO_buf_base"
.LASF4:
	.string	"unsigned int"
.LASF311:
	.string	"do_statfs"
.LASF223:
	.string	"version_etc_copyright"
.LASF332:
	.string	"mount_list"
.LASF294:
	.string	"print_stat"
.LASF237:
	.string	"quoting_style_vals"
.LASF213:
	.string	"p_sign_posn"
.LASF225:
	.string	"literal_quoting_style"
.LASF130:
	.string	"__pad0"
.LASF81:
	.string	"pw_uid"
.LASF56:
	.string	"__pad5"
.LASF248:
	.string	"flag"
.LASF336:
	.string	"print_statfs"
.LASF25:
	.string	"__fsfilcnt_t"
.LASF334:
	.string	"name_stats"
.LASF238:
	.string	"quoting_options"
.LASF30:
	.string	"_flags"
.LASF367:
	.string	"suffix"
.LASF383:
	.string	"lc_messages"
.LASF239:
	.string	"quote_quoting_options"
.LASF313:
	.string	"print_it"
.LASF255:
	.string	"me_dummy"
.LASF57:
	.string	"_mode"
.LASF260:
	.string	"printf_flags"
.LASF197:
	.string	"decimal_point"
.LASF52:
	.string	"_codecvt"
.LASF314:
	.string	"print_func"
.LASF183:
	.string	"LOG10_TIMESPEC_HZ"
.LASF126:
	.string	"st_nlink"
.LASF324:
	.string	"getenv_quoting_style"
.LASF151:
	.string	"stx_uid"
.LASF303:
	.string	"fail"
.LASF180:
	.string	"intmax_t"
.LASF330:
	.string	"find_bind_mount"
.LASF3:
	.string	"long double"
.LASF254:
	.string	"me_dev"
.LASF144:
	.string	"statx_timestamp"
.LASF348:
	.string	"divisor"
.LASF304:
	.string	"linkname"
.LASF59:
	.string	"FILE"
.LASF250:
	.string	"me_devname"
.LASF329:
	.string	"resolved"
.LASF124:
	.string	"st_dev"
.LASF211:
	.string	"n_cs_precedes"
.LASF273:
	.string	"follow_links"
.LASF73:
	.string	"timespec"
.LASF366:
	.string	"allowed_flags"
.LASF331:
	.string	"bind_mount"
.LASF95:
	.string	"f_bfree"
.LASF253:
	.string	"me_type"
.LASF186:
	.string	"_ISalpha"
.LASF100:
	.string	"f_namelen"
.LASF347:
	.string	"frac_left_adjust"
.LASF175:
	.string	"optopt"
.LASF233:
	.string	"locale_quoting_style"
.LASF291:
	.string	"device"
.LASF148:
	.string	"stx_blksize"
.LASF77:
	.string	"long long unsigned int"
.LASF216:
	.string	"int_p_sep_by_space"
.LASF316:
	.string	"n_alloc"
.LASF192:
	.string	"_ISblank"
.LASF18:
	.string	"__off_t"
.LASF318:
	.string	"fmt_char"
.LASF265:
	.string	"quoting_style"
.LASF195:
	.string	"_ISalnum"
.LASF87:
	.string	"gr_name"
.LASF177:
	.string	"program_invocation_short_name"
.LASF140:
	.string	"__s32"
.LASF390:
	.string	"emit_mandatory_arg_note"
.LASF55:
	.string	"_freeres_buf"
.LASF110:
	.string	"tm_wday"
.LASF189:
	.string	"_ISspace"
.LASF275:
	.string	"interpret_backslash_escapes"
.LASF111:
	.string	"tm_yday"
.LASF102:
	.string	"f_flags"
.LASF368:
	.string	"srclim"
.LASF327:
	.string	"out_mount_point"
.LASF284:
	.string	"terse"
.LASF387:
	.string	"/root/coreutils"
.LASF21:
	.string	"__time_t"
.LASF310:
	.string	"fmt_to_mask"
.LASF149:
	.string	"stx_attributes"
.LASF319:
	.string	"esc_value"
.LASF351:
	.string	"lprec"
.LASF40:
	.string	"_IO_backup_base"
.LASF49:
	.string	"_shortbuf"
.LASF267:
	.string	"cached_default"
.LASF199:
	.string	"grouping"
.LASF384:
	.string	"to_uchar"
.LASF82:
	.string	"pw_gid"
.LASF256:
	.string	"me_remote"
.LASF154:
	.string	"__spare0"
.LASF167:
	.string	"__spare2"
.LASF317:
	.string	"dest"
.LASF266:
	.string	"cached_mode"
.LASF227:
	.string	"shell_always_quoting_style"
.LASF373:
	.string	"human_fstype"
.LASF19:
	.string	"__off64_t"
.LASF279:
	.string	"btime"
.LASF325:
	.string	"q_style"
.LASF321:
	.string	"format_code_offset"
.LASF352:
	.string	"lwidth"
.LASF198:
	.string	"thousands_sep"
.LASF232:
	.string	"escape_quoting_style"
.LASF38:
	.string	"_IO_buf_end"
.LASF96:
	.string	"f_bavail"
.LASF386:
	.string	"src/stat.c"
.LASF185:
	.string	"_ISlower"
.LASF152:
	.string	"stx_gid"
.LASF382:
	.string	"map_prog"
.LASF142:
	.string	"__s64"
.LASF113:
	.string	"tm_gmtoff"
.LASF364:
	.string	"out_string"
.LASF92:
	.string	"f_type"
.LASF201:
	.string	"currency_symbol"
.LASF65:
	.string	"stderr"
.LASF8:
	.string	"short int"
.LASF340:
	.string	"frsize"
.LASF346:
	.string	"precision"
.LASF166:
	.string	"stx_dev_minor"
.LASF75:
	.string	"tv_nsec"
.LASF289:
	.string	"usage"
.LASF228:
	.string	"shell_escape_quoting_style"
.LASF339:
	.string	"words"
.LASF48:
	.string	"_vtable_offset"
.LASF204:
	.string	"mon_grouping"
.LASF69:
	.string	"_sys_errlist"
.LASF80:
	.string	"pw_passwd"
.LASF11:
	.string	"__uintmax_t"
.LASF328:
	.string	"statp"
.LASF320:
	.string	"esc_length"
.LASF29:
	.string	"__val"
.LASF182:
	.string	"TIMESPEC_HZ"
.LASF280:
	.string	"dont_sync"
.LASF156:
	.string	"stx_size"
.LASF344:
	.string	"sec_prefix_len"
.LASF219:
	.string	"int_p_sign_posn"
.LASF277:
	.string	"decimal_point_len"
.LASF116:
	.string	"__daylight"
.LASF114:
	.string	"tm_zone"
.LASF288:
	.string	"main"
.LASF365:
	.string	"make_format"
.LASF362:
	.string	"out_uint"
.LASF79:
	.string	"pw_name"
.LASF127:
	.string	"st_mode"
.LASF13:
	.string	"__uid_t"
.LASF32:
	.string	"_IO_read_end"
.LASF121:
	.string	"getdate_err"
.LASF203:
	.string	"mon_thousands_sep"
.LASF220:
	.string	"int_n_sign_posn"
.LASF44:
	.string	"_fileno"
.LASF53:
	.string	"_wide_data"
.LASF172:
	.string	"optarg"
.LASF359:
	.string	"out_minus_zero"
.LASF101:
	.string	"f_frsize"
.LASF187:
	.string	"_ISdigit"
.LASF209:
	.string	"p_cs_precedes"
.LASF109:
	.string	"tm_year"
.LASF91:
	.string	"statfs"
.LASF6:
	.string	"short unsigned int"
.LASF64:
	.string	"stdout"
.LASF161:
	.string	"stx_ctime"
.LASF35:
	.string	"_IO_write_ptr"
.LASF145:
	.string	"__reserved"
.LASF119:
	.string	"daylight"
.LASF125:
	.string	"st_ino"
.LASF292:
	.string	"temp"
.LASF315:
	.string	"MAX_ADDITIONAL_BYTES"
.LASF17:
	.string	"__nlink_t"
.LASF355:
	.string	"prec"
.LASF299:
	.string	"parg"
.LASF298:
	.string	"data"
.LASF165:
	.string	"stx_dev_major"
.LASF74:
	.string	"tv_sec"
.LASF240:
	.string	"argmatch_exit_fn"
.LASF147:
	.string	"stx_mask"
.LASF235:
	.string	"custom_quoting_style"
.LASF135:
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
