	.file	"ls.c"
	.text
.Ltext0:
	.type	initialize_exit_failure, @function
initialize_exit_failure:
.LFB6:
	.file 1 "src/system.h"
	.loc 1 100 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 101 6
	cmpl	$1, -4(%rbp)
	je	.L3
	.loc 1 102 18
	movl	-4(%rbp), %eax
	movl	%eax, exit_failure(%rip)
.L3:
	.loc 1 103 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	initialize_exit_failure, .-initialize_exit_failure
	.type	to_uchar, @function
to_uchar:
.LFB11:
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
	.type	dot_or_dotdot, @function
dot_or_dotdot:
.LFB28:
	.loc 1 266 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 267 16
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 267 6
	cmpb	$46, %al
	jne	.L7
.LBB2:
	.loc 1 269 38
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 269 27
	cmpb	$46, %al
	jne	.L8
	.loc 1 269 27 is_stmt 0 discriminator 1
	movl	$2, %edx
	jmp	.L9
.L8:
	.loc 1 269 27 discriminator 2
	movl	$1, %edx
.L9:
	.loc 1 269 27 discriminator 4
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 269 12 is_stmt 1 discriminator 4
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	.loc 1 270 21 discriminator 4
	cmpb	$0, -1(%rbp)
	je	.L10
	.loc 1 270 21 is_stmt 0 discriminator 2
	cmpb	$47, -1(%rbp)
	jne	.L11
.L10:
	.loc 1 270 21 discriminator 3
	movl	$1, %eax
	jmp	.L12
.L11:
	.loc 1 270 21 discriminator 4
	movl	$0, %eax
.L12:
	.loc 1 270 21 discriminator 6
	andl	$1, %eax
	jmp	.L13
.L7:
.LBE2:
	.loc 1 273 12 is_stmt 1
	movl	$0, %eax
.L13:
	.loc 1 274 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	dot_or_dotdot, .-dot_or_dotdot
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
	.align 8
.LC1:
	.string	"\nThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\nUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\nBinary prefixes can be used, too: KiB=K, MiB=M, and so on.\n"
	.text
	.type	emit_size_note, @function
emit_size_note:
.LFB37:
	.loc 1 597 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 1 598 3
	movq	stdout(%rip), %rbx
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 1 603 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	emit_size_note, .-emit_size_note
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
	jmp	.L17
.L19:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L17:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L18
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L19
.L18:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L20
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L20:
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
	je	.L21
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L21
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L21:
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
	jne	.L22
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC17(%rip), %rbx
	jmp	.L23
.L22:
	.loc 1 671 3 discriminator 2
	leaq	.LC18(%rip), %rbx
.L23:
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
	je	.L24
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L24:
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
	.type	bad_cast, @function
bad_cast:
.LFB42:
	.loc 1 699 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 700 10
	movq	-8(%rbp), %rax
	.loc 1 701 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	bad_cast, .-bad_cast
	.type	is_ENOTSUP, @function
is_ENOTSUP:
.LFB45:
	.loc 1 760 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 1 761 28
	cmpl	$95, -4(%rbp)
	sete	%al
	.loc 1 762 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	is_ENOTSUP, .-is_ENOTSUP
	.type	is_smack_enabled, @function
is_smack_enabled:
.LFB48:
	.file 2 "./lib/smack.h"
	.loc 2 40 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 44 10
	movl	$0, %eax
	.loc 2 46 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	is_smack_enabled, .-is_smack_enabled
	.section	.rodata
	.align 32
	.type	G_line, @object
	.size	G_line, 4304
G_line:
	.string	"# Configuration file for dircolors, a utility to help you set the"
	.string	"# LS_COLORS environment variable used by GNU ls with the --color option."
	.string	"# Copyright (C) 1996-2020 Free Software Foundation, Inc."
	.string	"# Copying and distribution of this file, with or without modification,"
	.string	"# are permitted provided the copyright notice and this notice are preserved."
	.string	"# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the"
	.string	"# slackware version of dircolors) are recognized but ignored."
	.string	"# Below are TERM entries, which can be a glob patterns, to match"
	.string	"# against the TERM environment variable to determine if it is colorizable."
	.string	"TERM Eterm"
	.string	"TERM ansi"
	.string	"TERM *color*"
	.string	"TERM con[0-9]*x[0-9]*"
	.string	"TERM cons25"
	.string	"TERM console"
	.string	"TERM cygwin"
	.string	"TERM dtterm"
	.string	"TERM gnome"
	.string	"TERM hurd"
	.string	"TERM jfbterm"
	.string	"TERM konsole"
	.string	"TERM kterm"
	.string	"TERM linux"
	.string	"TERM linux-c"
	.string	"TERM mlterm"
	.string	"TERM putty"
	.string	"TERM rxvt*"
	.string	"TERM screen*"
	.string	"TERM st"
	.string	"TERM terminator"
	.string	"TERM tmux*"
	.string	"TERM vt100"
	.string	"TERM xterm*"
	.string	"# Below are the color init strings for the basic file types."
	.string	"# One can use codes for 256 or more colors supported by modern terminals."
	.string	"# The default color codes use the capabilities of an 8 color terminal"
	.string	"# with some additional attributes as per the following codes:"
	.string	"# Attribute codes:"
	.string	"# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed"
	.string	"# Text color codes:"
	.string	"# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white"
	.string	"# Background color codes:"
	.string	"# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white"
	.string	"#NORMAL 00 # no color code at all"
	.string	"#FILE 00 # regular file: use no color at all"
	.string	"RESET 0 # reset to \"normal\" color"
	.string	"DIR 01;34 # directory"
	.string	"LINK 01;36 # symbolic link. (If you set this to 'target' instead of a"
	.string	" # numerical value, the color is as for the file pointed to.)"
	.string	"MULTIHARDLINK 00 # regular file with more than one link"
	.string	"FIFO 40;33 # pipe"
	.string	"SOCK 01;35 # socket"
	.string	"DOOR 01;35 # door"
	.string	"BLK 40;33;01 # block device driver"
	.string	"CHR 40;33;01 # character device driver"
	.string	"ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ..."
	.ascii	"MISSING 00 # ... and the files th"
	.string	"ey point to"
	.string	"SETUID 37;41 # file that is setuid (u+s)"
	.string	"SETGID 30;43 # file that is setgid (g+s)"
	.string	"CAPABILITY 30;41 # file with capability"
	.string	"STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)"
	.string	"OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky"
	.string	"STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable"
	.string	"# This is for files with execute permission:"
	.string	"EXEC 01;32"
	.string	"# List any file extensions like '.gz' or '.tar' that you would like ls"
	.string	"# to colorize below. Put the extension, a space, and the color init string."
	.string	"# (and any comments you want to add after a '#')"
	.string	"# If you use DOS-style suffixes, you may want to uncomment the following:"
	.string	"#.cmd 01;32 # executables (bright green)"
	.string	"#.exe 01;32"
	.string	"#.com 01;32"
	.string	"#.btm 01;32"
	.string	"#.bat 01;32"
	.string	"# Or if you want to colorize scripts even if they do not have the"
	.string	"# executable bit actually set."
	.string	"#.sh 01;32"
	.string	"#.csh 01;32"
	.string	" # archives or compressed (bright red)"
	.string	".tar 01;31"
	.string	".tgz 01;31"
	.string	".arc 01;31"
	.string	".arj 01;31"
	.string	".taz 01;31"
	.string	".lha 01;31"
	.string	".lz4 01;31"
	.string	".lzh 01;31"
	.string	".lzma 01;31"
	.string	".tlz 01;31"
	.string	".txz 01;31"
	.string	".tzo 01;31"
	.string	".t7z 01;31"
	.string	".zip 01;31"
	.string	".z 01;31"
	.string	".dz 01;31"
	.string	".gz 01;31"
	.string	".lrz 01;31"
	.string	".lz 01;31"
	.string	".lzo 01;31"
	.string	".xz 01;31"
	.string	".zst 01;31"
	.string	".tzst 01;31"
	.string	".bz2 01;31"
	.string	".bz 01;31"
	.string	".tbz 01;31"
	.string	".tbz2 01;31"
	.string	".tz 01;31"
	.string	".deb 01;31"
	.string	".rpm 01;31"
	.string	".jar 01;31"
	.string	".war 01;31"
	.string	".ear 01;31"
	.string	".sar 01;31"
	.string	".rar 01;31"
	.string	".alz 01;31"
	.string	".ace 01;31"
	.string	".zoo 01;31"
	.string	".cpio 01;31"
	.string	".7z 01;31"
	.string	".rz 01;31"
	.string	".cab 01;31"
	.string	".wim 01;31"
	.string	".swm 01;31"
	.string	".dwm 01;31"
	.string	".esd 01;31"
	.string	"# image formats"
	.string	".jpg 01;35"
	.string	".jpeg 01;35"
	.string	".mjpg 01;35"
	.string	".mjpeg 01;35"
	.string	".gif 01;35"
	.string	".bmp 01;35"
	.string	".pbm 01;35"
	.string	".pgm 01;35"
	.string	".ppm 01;35"
	.string	".tga 01;35"
	.string	".xbm 01;35"
	.string	".xpm 01;35"
	.string	".tif 01;35"
	.string	".tiff 01;35"
	.string	".png 01;35"
	.string	".svg 01;35"
	.string	".svgz 01;35"
	.string	".mng 01;35"
	.string	".pcx 01;35"
	.string	".mov 01;35"
	.string	".mpg 01;35"
	.string	".mpeg 01;35"
	.string	".m2v 01;35"
	.string	".mkv 01;35"
	.string	".webm 01;35"
	.string	".webp 01;35"
	.string	".ogm 01;35"
	.string	".mp4 01;35"
	.string	".m4v 01;35"
	.string	".mp4v 01;35"
	.string	".vob 01;35"
	.string	".qt 01;35"
	.string	".nuv 01;35"
	.string	".wmv 01;35"
	.string	".asf 01;35"
	.string	".rm 01;35"
	.string	".rmvb 01;35"
	.string	".flc 01;35"
	.string	".avi 01;35"
	.string	".fli 01;35"
	.string	".flv 01;35"
	.string	".gl 01;35"
	.string	".dl 01;35"
	.string	".xcf 01;35"
	.string	".xwd 01;35"
	.string	".yuv 01;35"
	.string	".cgm 01;35"
	.string	".emf 01;35"
	.ascii	"# https://wiki.xiph.or"
	.string	"g/MIME_Types_and_File_Extensions"
	.string	".ogv 01;35"
	.string	".ogx 01;35"
	.string	"# audio formats"
	.string	".aac 00;36"
	.string	".au 00;36"
	.string	".flac 00;36"
	.string	".m4a 00;36"
	.string	".mid 00;36"
	.string	".midi 00;36"
	.string	".mka 00;36"
	.string	".mp3 00;36"
	.string	".mpc 00;36"
	.string	".ogg 00;36"
	.string	".ra 00;36"
	.string	".wav 00;36"
	.string	"# https://wiki.xiph.org/MIME_Types_and_File_Extensions"
	.string	".oga 00;36"
	.string	".opus 00;36"
	.string	".spx 00;36"
	.string	".xspf 00;36"
	.text
	.type	statx_timestamp_to_timespec, @function
statx_timestamp_to_timespec:
.LFB73:
	.file 3 "src/statx.h"
	.loc 3 24 1
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
	.loc 3 27 18
	movq	-32(%rbp), %rax
	.loc 3 27 13
	movq	%rax, -16(%rbp)
	.loc 3 28 19
	movl	-24(%rbp), %eax
	movl	%eax, %eax
	.loc 3 28 14
	movq	%rax, -8(%rbp)
	.loc 3 29 10
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	.loc 3 30 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	statx_timestamp_to_timespec, .-statx_timestamp_to_timespec
	.type	statx_to_stat, @function
statx_to_stat:
.LFB74:
	.loc 3 34 1
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
	.loc 3 35 18
	movq	-24(%rbp), %rax
	movl	140(%rax), %edx
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	gnu_dev_makedev@PLT
	.loc 3 35 16
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 3 36 21
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	.loc 3 36 16
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 3 37 22
	movq	-24(%rbp), %rax
	movzwl	28(%rax), %eax
	movzwl	%ax, %edx
	.loc 3 37 17
	movq	-32(%rbp), %rax
	movl	%edx, 24(%rax)
	.loc 3 38 23
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edx
	.loc 3 38 18
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 3 39 21
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	.loc 3 39 16
	movq	-32(%rbp), %rax
	movl	%edx, 28(%rax)
	.loc 3 40 21
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	.loc 3 40 16
	movq	-32(%rbp), %rax
	movl	%edx, 32(%rax)
	.loc 3 41 19
	movq	-24(%rbp), %rax
	movl	132(%rax), %edx
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	gnu_dev_makedev@PLT
	.loc 3 41 17
	movq	-32(%rbp), %rdx
	movq	%rax, 40(%rdx)
	.loc 3 42 22
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdx
	.loc 3 42 17
	movq	-32(%rbp), %rax
	movq	%rdx, 48(%rax)
	.loc 3 43 25
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	.loc 3 43 20
	movq	-32(%rbp), %rax
	movq	%rdx, 56(%rax)
	.loc 3 46 27
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdx
	.loc 3 46 22
	movq	-32(%rbp), %rax
	movq	%rdx, 64(%rax)
	.loc 3 47 19
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	72(%rax), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	statx_timestamp_to_timespec
	movq	%rax, 72(%rbx)
	movq	%rdx, 80(%rbx)
	.loc 3 48 19
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movq	120(%rax), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	statx_timestamp_to_timespec
	movq	%rax, 88(%rbx)
	movq	%rdx, 96(%rbx)
	.loc 3 49 19
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	104(%rax), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	statx_timestamp_to_timespec
	movq	%rax, 104(%rbx)
	movq	%rdx, 112(%rbx)
	.loc 3 50 1
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	statx_to_stat, .-statx_to_stat
	.section	.rodata
	.align 8
	.type	filetype_letter, @object
	.size	filetype_letter, 11
filetype_letter:
	.string	"?pcdb-lswd"
	.local	active_dir_set
	.comm	active_dir_set,8,8
	.local	cwd_file
	.comm	cwd_file,8,8
	.local	cwd_n_alloc
	.comm	cwd_n_alloc,8,8
	.local	cwd_n_used
	.comm	cwd_n_used,8,8
	.local	cwd_some_quoted
	.comm	cwd_some_quoted,1,1
	.local	align_variable_outer_quotes
	.comm	align_variable_outer_quotes,1,1
	.local	sorted_file
	.comm	sorted_file,8,8
	.local	sorted_file_alloc
	.comm	sorted_file_alloc,8,8
	.local	color_symlink_as_referent
	.comm	color_symlink_as_referent,1,1
	.local	hostname
	.comm	hostname,8,8
	.local	pending_dirs
	.comm	pending_dirs,8,8
	.local	current_time
	.comm	current_time,16,16
	.local	print_scontext
	.comm	print_scontext,1,1
	.data
	.type	UNKNOWN_SECURITY_CONTEXT, @object
	.size	UNKNOWN_SECURITY_CONTEXT, 2
UNKNOWN_SECURITY_CONTEXT:
	.string	"?"
	.local	any_has_acl
	.comm	any_has_acl,1,1
	.local	inode_number_width
	.comm	inode_number_width,4,4
	.local	block_size_width
	.comm	block_size_width,4,4
	.local	nlink_width
	.comm	nlink_width,4,4
	.local	scontext_width
	.comm	scontext_width,4,4
	.local	owner_width
	.comm	owner_width,4,4
	.local	group_width
	.comm	group_width,4,4
	.local	author_width
	.comm	author_width,4,4
	.local	major_device_number_width
	.comm	major_device_number_width,4,4
	.local	minor_device_number_width
	.comm	minor_device_number_width,4,4
	.local	file_size_width
	.comm	file_size_width,4,4
	.local	format
	.comm	format,4,4
	.section	.rodata
.LC20:
	.string	"full-iso"
.LC21:
	.string	"long-iso"
.LC22:
	.string	"iso"
.LC23:
	.string	"locale"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	time_style_args, @object
	.size	time_style_args, 40
time_style_args:
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	0
	.section	.rodata
	.align 16
	.type	time_style_types, @object
	.size	time_style_types, 16
time_style_types:
	.long	0
	.long	1
	.long	2
	.long	3
	.local	time_type
	.comm	time_type,4,4
	.local	sort_type
	.comm	sort_type,4,4
	.local	sort_reverse
	.comm	sort_reverse,1,1
	.data
	.type	print_owner, @object
	.size	print_owner, 1
print_owner:
	.byte	1
	.local	print_author
	.comm	print_author,1,1
	.type	print_group, @object
	.size	print_group, 1
print_group:
	.byte	1
	.local	numeric_ids
	.comm	numeric_ids,1,1
	.local	print_block_size
	.comm	print_block_size,1,1
	.local	human_output_opts
	.comm	human_output_opts,4,4
	.local	output_block_size
	.comm	output_block_size,8,8
	.local	file_human_output_opts
	.comm	file_human_output_opts,4,4
	.align 8
	.type	file_output_block_size, @object
	.size	file_output_block_size, 8
file_output_block_size:
	.quad	1
	.local	dired
	.comm	dired,1,1
	.local	indicator_style
	.comm	indicator_style,4,4
	.section	.rodata
.LC24:
	.string	"none"
.LC25:
	.string	"slash"
.LC26:
	.string	"file-type"
.LC27:
	.string	"classify"
	.section	.data.rel.ro.local
	.align 32
	.type	indicator_style_args, @object
	.size	indicator_style_args, 40
indicator_style_args:
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	0
	.section	.rodata
	.align 16
	.type	indicator_style_types, @object
	.size	indicator_style_types, 16
indicator_style_types:
	.long	0
	.long	1
	.long	2
	.long	3
	.local	print_with_color
	.comm	print_with_color,1,1
	.local	print_hyperlink
	.comm	print_hyperlink,1,1
	.local	used_color
	.comm	used_color,1,1
.LC28:
	.string	"lc"
.LC29:
	.string	"rc"
.LC30:
	.string	"ec"
.LC31:
	.string	"rs"
.LC32:
	.string	"no"
.LC33:
	.string	"fi"
.LC34:
	.string	"di"
.LC35:
	.string	"ln"
.LC36:
	.string	"pi"
.LC37:
	.string	"so"
.LC38:
	.string	"bd"
.LC39:
	.string	"cd"
.LC40:
	.string	"mi"
.LC41:
	.string	"or"
.LC42:
	.string	"ex"
.LC43:
	.string	"do"
.LC44:
	.string	"su"
.LC45:
	.string	"sg"
.LC46:
	.string	"st"
.LC47:
	.string	"ow"
.LC48:
	.string	"tw"
.LC49:
	.string	"ca"
.LC50:
	.string	"mh"
.LC51:
	.string	"cl"
	.section	.data.rel.ro.local
	.align 32
	.type	indicator_name, @object
	.size	indicator_name, 200
indicator_name:
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC36
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	.LC42
	.quad	.LC43
	.quad	.LC44
	.quad	.LC45
	.quad	.LC46
	.quad	.LC47
	.quad	.LC48
	.quad	.LC49
	.quad	.LC50
	.quad	.LC51
	.quad	0
	.section	.rodata
.LC52:
	.string	"\033["
.LC53:
	.string	"m"
.LC54:
	.string	"0"
.LC55:
	.string	"01;34"
.LC56:
	.string	"01;36"
.LC57:
	.string	"33"
.LC58:
	.string	"01;35"
.LC59:
	.string	"01;33"
.LC60:
	.string	"01;32"
.LC61:
	.string	"37;41"
.LC62:
	.string	"30;43"
.LC63:
	.string	"37;44"
.LC64:
	.string	"34;42"
.LC65:
	.string	"30;42"
.LC66:
	.string	"30;41"
.LC67:
	.string	"\033[K"
	.section	.data.rel.local,"aw"
	.align 32
	.type	color_indicator, @object
	.size	color_indicator, 384
color_indicator:
	.quad	2
	.quad	.LC52
	.quad	1
	.quad	.LC53
	.quad	0
	.quad	0
	.quad	1
	.quad	.LC54
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	5
	.quad	.LC55
	.quad	5
	.quad	.LC56
	.quad	2
	.quad	.LC57
	.quad	5
	.quad	.LC58
	.quad	5
	.quad	.LC59
	.quad	5
	.quad	.LC59
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	5
	.quad	.LC60
	.quad	5
	.quad	.LC58
	.quad	5
	.quad	.LC61
	.quad	5
	.quad	.LC62
	.quad	5
	.quad	.LC63
	.quad	5
	.quad	.LC64
	.quad	5
	.quad	.LC65
	.quad	5
	.quad	.LC66
	.quad	0
	.quad	0
	.quad	3
	.quad	.LC67
	.local	color_ext_list
	.comm	color_ext_list,8,8
	.local	color_buf
	.comm	color_buf,8,8
	.local	check_symlink_mode
	.comm	check_symlink_mode,1,1
	.local	print_inode
	.comm	print_inode,1,1
	.local	dereference
	.comm	dereference,4,4
	.local	recursive
	.comm	recursive,1,1
	.local	immediate_dirs
	.comm	immediate_dirs,1,1
	.local	directories_first
	.comm	directories_first,1,1
	.local	ignore_mode
	.comm	ignore_mode,4,4
	.local	ignore_patterns
	.comm	ignore_patterns,8,8
	.local	hide_patterns
	.comm	hide_patterns,8,8
	.local	qmark_funny_chars
	.comm	qmark_funny_chars,1,1
	.local	filename_quoting_options
	.comm	filename_quoting_options,8,8
	.local	dirname_quoting_options
	.comm	dirname_quoting_options,8,8
	.local	tabsize
	.comm	tabsize,8,8
	.local	print_dir_name
	.comm	print_dir_name,1,1
	.local	line_length
	.comm	line_length,8,8
	.local	localtz
	.comm	localtz,8,8
	.local	format_needs_stat
	.comm	format_needs_stat,1,1
	.local	format_needs_type
	.comm	format_needs_type,1,1
	.section	.rodata
.LC68:
	.string	"%b %e  %Y"
.LC69:
	.string	"%b %e %H:%M"
	.section	.data.rel.local
	.align 16
	.type	long_time_format, @object
	.size	long_time_format, 16
long_time_format:
	.quad	.LC68
	.quad	.LC69
	.local	caught_signals
	.comm	caught_signals,128,32
	.local	interrupt_signal
	.comm	interrupt_signal,4,4
	.local	stop_signal_count
	.comm	stop_signal_count,4,4
	.local	exit_status
	.comm	exit_status,4,4
	.section	.rodata
.LC70:
	.string	"all"
.LC71:
	.string	"escape"
.LC72:
	.string	"directory"
.LC73:
	.string	"dired"
.LC74:
	.string	"full-time"
.LC75:
	.string	"group-directories-first"
.LC76:
	.string	"human-readable"
.LC77:
	.string	"inode"
.LC78:
	.string	"kibibytes"
.LC79:
	.string	"numeric-uid-gid"
.LC80:
	.string	"no-group"
.LC81:
	.string	"hide-control-chars"
.LC82:
	.string	"reverse"
.LC83:
	.string	"size"
.LC84:
	.string	"width"
.LC85:
	.string	"almost-all"
.LC86:
	.string	"ignore-backups"
.LC87:
	.string	"si"
.LC88:
	.string	"dereference-command-line"
	.align 8
.LC89:
	.string	"dereference-command-line-symlink-to-dir"
.LC90:
	.string	"hide"
.LC91:
	.string	"ignore"
.LC92:
	.string	"indicator-style"
.LC93:
	.string	"dereference"
.LC94:
	.string	"literal"
.LC95:
	.string	"quote-name"
.LC96:
	.string	"quoting-style"
.LC97:
	.string	"recursive"
.LC98:
	.string	"format"
.LC99:
	.string	"show-control-chars"
.LC100:
	.string	"sort"
.LC101:
	.string	"tabsize"
.LC102:
	.string	"time"
.LC103:
	.string	"time-style"
.LC104:
	.string	"color"
.LC105:
	.string	"hyperlink"
.LC106:
	.string	"block-size"
.LC107:
	.string	"context"
.LC108:
	.string	"author"
.LC109:
	.string	"help"
.LC110:
	.string	"version"
	.section	.data.rel.ro.local
	.align 32
	.type	long_options, @object
	.size	long_options, 1408
long_options:
	.quad	.LC70
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC71
	.long	0
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC72
	.long	0
	.zero	4
	.quad	0
	.long	100
	.zero	4
	.quad	.LC73
	.long	0
	.zero	4
	.quad	0
	.long	68
	.zero	4
	.quad	.LC74
	.long	0
	.zero	4
	.quad	0
	.long	134
	.zero	4
	.quad	.LC75
	.long	0
	.zero	4
	.quad	0
	.long	135
	.zero	4
	.quad	.LC76
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC77
	.long	0
	.zero	4
	.quad	0
	.long	105
	.zero	4
	.quad	.LC78
	.long	0
	.zero	4
	.quad	0
	.long	107
	.zero	4
	.quad	.LC79
	.long	0
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC80
	.long	0
	.zero	4
	.quad	0
	.long	71
	.zero	4
	.quad	.LC81
	.long	0
	.zero	4
	.quad	0
	.long	113
	.zero	4
	.quad	.LC82
	.long	0
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC83
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC84
	.long	1
	.zero	4
	.quad	0
	.long	119
	.zero	4
	.quad	.LC85
	.long	0
	.zero	4
	.quad	0
	.long	65
	.zero	4
	.quad	.LC86
	.long	0
	.zero	4
	.quad	0
	.long	66
	.zero	4
	.quad	.LC27
	.long	2
	.zero	4
	.quad	0
	.long	70
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	132
	.zero	4
	.quad	.LC87
	.long	0
	.zero	4
	.quad	0
	.long	141
	.zero	4
	.quad	.LC88
	.long	0
	.zero	4
	.quad	0
	.long	72
	.zero	4
	.quad	.LC89
	.long	0
	.zero	4
	.quad	0
	.long	131
	.zero	4
	.quad	.LC90
	.long	1
	.zero	4
	.quad	0
	.long	136
	.zero	4
	.quad	.LC91
	.long	1
	.zero	4
	.quad	0
	.long	73
	.zero	4
	.quad	.LC92
	.long	1
	.zero	4
	.quad	0
	.long	138
	.zero	4
	.quad	.LC93
	.long	0
	.zero	4
	.quad	0
	.long	76
	.zero	4
	.quad	.LC94
	.long	0
	.zero	4
	.quad	0
	.long	78
	.zero	4
	.quad	.LC95
	.long	0
	.zero	4
	.quad	0
	.long	81
	.zero	4
	.quad	.LC96
	.long	1
	.zero	4
	.quad	0
	.long	139
	.zero	4
	.quad	.LC97
	.long	0
	.zero	4
	.quad	0
	.long	82
	.zero	4
	.quad	.LC98
	.long	1
	.zero	4
	.quad	0
	.long	133
	.zero	4
	.quad	.LC99
	.long	0
	.zero	4
	.quad	0
	.long	140
	.zero	4
	.quad	.LC100
	.long	1
	.zero	4
	.quad	0
	.long	142
	.zero	4
	.quad	.LC101
	.long	1
	.zero	4
	.quad	0
	.long	84
	.zero	4
	.quad	.LC102
	.long	1
	.zero	4
	.quad	0
	.long	143
	.zero	4
	.quad	.LC103
	.long	1
	.zero	4
	.quad	0
	.long	144
	.zero	4
	.quad	.LC104
	.long	2
	.zero	4
	.quad	0
	.long	130
	.zero	4
	.quad	.LC105
	.long	2
	.zero	4
	.quad	0
	.long	137
	.zero	4
	.quad	.LC106
	.long	1
	.zero	4
	.quad	0
	.long	129
	.zero	4
	.quad	.LC107
	.long	0
	.zero	4
	.quad	0
	.long	90
	.zero	4
	.quad	.LC108
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC109
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC110
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
.LC111:
	.string	"verbose"
.LC112:
	.string	"long"
.LC113:
	.string	"commas"
.LC114:
	.string	"horizontal"
.LC115:
	.string	"across"
.LC116:
	.string	"vertical"
.LC117:
	.string	"single-column"
	.section	.data.rel.ro.local
	.align 32
	.type	format_args, @object
	.size	format_args, 64
format_args:
	.quad	.LC111
	.quad	.LC112
	.quad	.LC113
	.quad	.LC114
	.quad	.LC115
	.quad	.LC116
	.quad	.LC117
	.quad	0
	.section	.rodata
	.align 16
	.type	format_types, @object
	.size	format_types, 28
format_types:
	.long	0
	.long	0
	.long	4
	.long	3
	.long	3
	.long	2
	.long	1
.LC118:
	.string	"extension"
	.section	.data.rel.ro.local
	.align 32
	.type	sort_args, @object
	.size	sort_args, 48
sort_args:
	.quad	.LC24
	.quad	.LC102
	.quad	.LC83
	.quad	.LC118
	.quad	.LC110
	.quad	0
	.section	.rodata
	.align 16
	.type	sort_types, @object
	.size	sort_types, 20
sort_types:
	.long	-1
	.long	4
	.long	2
	.long	1
	.long	3
.LC119:
	.string	"atime"
.LC120:
	.string	"access"
.LC121:
	.string	"use"
.LC122:
	.string	"ctime"
.LC123:
	.string	"status"
.LC124:
	.string	"birth"
.LC125:
	.string	"creation"
	.section	.data.rel.ro.local
	.align 32
	.type	time_args, @object
	.size	time_args, 64
time_args:
	.quad	.LC119
	.quad	.LC120
	.quad	.LC121
	.quad	.LC122
	.quad	.LC123
	.quad	.LC124
	.quad	.LC125
	.quad	0
	.section	.rodata
	.align 16
	.type	time_types, @object
	.size	time_types, 28
time_types:
	.long	2
	.long	2
	.long	2
	.long	1
	.long	1
	.long	3
	.long	3
.LC126:
	.string	"always"
.LC127:
	.string	"yes"
.LC128:
	.string	"force"
.LC129:
	.string	"never"
.LC130:
	.string	"auto"
.LC131:
	.string	"tty"
.LC132:
	.string	"if-tty"
	.section	.data.rel.ro.local
	.align 32
	.type	when_args, @object
	.size	when_args, 80
when_args:
	.quad	.LC126
	.quad	.LC127
	.quad	.LC128
	.quad	.LC129
	.quad	.LC32
	.quad	.LC24
	.quad	.LC130
	.quad	.LC131
	.quad	.LC132
	.quad	0
	.section	.rodata
	.align 32
	.type	when_types, @object
	.size	when_types, 36
when_types:
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	2
	.local	column_info
	.comm	column_info,8,8
	.local	max_idx
	.comm	max_idx,8,8
	.local	dired_pos
	.comm	dired_pos,8,8
	.local	dired_obstack
	.comm	dired_obstack,88,32
	.local	subdired_obstack
	.comm	subdired_obstack,88,32
	.local	dev_ino_obstack
	.comm	dev_ino_obstack,88,32
	.text
	.type	dev_ino_push, @function
dev_ino_push:
.LFB75:
	.file 4 "src/ls.c"
	.loc 4 1015 1
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
	.loc 4 1018 7
	movl	$16, -44(%rbp)
.LBB3:
	.loc 4 1019 3
	leaq	dev_ino_obstack(%rip), %rax
	movq	%rax, -40(%rbp)
	movl	-44(%rbp), %eax
	cltq
	movq	%rax, -32(%rbp)
.LBB4:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE4:
	cmpq	-32(%rbp), %rax
	jnb	.L37
	.loc 4 1019 3 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L37:
	.loc 4 1019 3 discriminator 3
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
.LBE3:
	.loc 4 1020 7 is_stmt 1 discriminator 3
	movq	24+dev_ino_obstack(%rip), %rax
	movq	%rax, -16(%rbp)
	.loc 4 1021 6 discriminator 3
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 4 1022 5 discriminator 3
	subq	$16, -8(%rbp)
	.loc 4 1023 14 discriminator 3
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 4 1024 14 discriminator 3
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 4 1025 1 discriminator 3
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	dev_ino_push, .-dev_ino_push
	.section	.rodata
.LC133:
	.string	"src/ls.c"
	.align 8
.LC134:
	.string	"dev_ino_size <= obstack_object_size (&dev_ino_obstack)"
	.text
	.type	dev_ino_pop, @function
dev_ino_pop:
.LFB76:
	.loc 4 1031 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 4 1034 7
	movl	$16, -28(%rbp)
	.loc 4 1035 3
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
.LBB5:
	leaq	dev_ino_obstack(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
.LBE5:
	cmpq	%rdx, %rax
	jnb	.L39
	.loc 4 1035 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.9190(%rip), %rcx
	movl	$1035, %edx
	leaq	.LC133(%rip), %rsi
	leaq	.LC134(%rip), %rdi
	call	__assert_fail@PLT
.L39:
	.loc 4 1036 3 is_stmt 1
	movq	24+dev_ino_obstack(%rip), %rdx
	movl	-28(%rbp), %eax
	negl	%eax
	cltq
	addq	%rdx, %rax
	movq	%rax, 24+dev_ino_obstack(%rip)
	.loc 4 1037 7
	movq	24+dev_ino_obstack(%rip), %rax
	movq	%rax, -16(%rbp)
	.loc 4 1038 6
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 4 1039 10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	.loc 4 1040 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	dev_ino_pop, .-dev_ino_pop
	.section	.rodata
.LC135:
	.string	" %lu"
	.text
	.type	dired_dump_obstack, @function
dired_dump_obstack:
.LFB77:
	.loc 4 1060 1
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
.LBB6:
	.loc 4 1063 11
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE6:
	.loc 4 1063 9
	shrq	$3, %rax
	movq	%rax, -32(%rbp)
	.loc 4 1064 6
	cmpq	$0, -32(%rbp)
	je	.L47
.LBB7:
.LBB8:
	.loc 4 1066 32
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L43
	.loc 4 1066 32 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	80(%rax), %edx
	orl	$2, %edx
	movb	%dl, 80(%rax)
.L43:
	.loc 4 1066 32 discriminator 3
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	notq	%rax
	andq	%rdx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	%rax, %rcx
	jbe	.L44
	.loc 4 1066 32 discriminator 4
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
.L44:
	.loc 4 1066 32 discriminator 6
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
.LBE8:
	.loc 4 1066 15 is_stmt 1 discriminator 6
	movq	%rax, -8(%rbp)
	.loc 4 1067 7 discriminator 6
	movq	stdout(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.LBB9:
	.loc 4 1068 19 discriminator 6
	movq	$0, -48(%rbp)
	.loc 4 1068 7 discriminator 6
	jmp	.L45
.L46:
	.loc 4 1069 48 discriminator 3
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 4 1069 9 discriminator 3
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC135(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 4 1068 38 discriminator 3
	addq	$1, -48(%rbp)
.L45:
	.loc 4 1068 7 discriminator 1
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L46
.LBE9:
	.loc 4 1070 7
	movl	$10, %edi
	call	putchar_unlocked@PLT
.L47:
.LBE7:
	.loc 4 1072 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	dired_dump_obstack, .-dired_dump_obstack
	.type	get_stat_btime, @function
get_stat_btime:
.LFB78:
	.loc 4 1080 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 4 1084 15
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	.loc 4 1089 10
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	.loc 4 1090 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	get_stat_btime, .-get_stat_btime
	.type	time_type_to_statx, @function
time_type_to_statx:
.LFB79:
	.loc 4 1095 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 4 1096 3
	movl	time_type(%rip), %eax
	cmpl	$3, %eax
	je	.L51
	cmpl	$3, %eax
	ja	.L52
	cmpl	$2, %eax
	je	.L53
	cmpl	$2, %eax
	ja	.L52
	testl	%eax, %eax
	je	.L54
	cmpl	$1, %eax
	jne	.L52
	.loc 4 1099 14
	movl	$128, %eax
	jmp	.L55
.L54:
	.loc 4 1101 14
	movl	$64, %eax
	jmp	.L55
.L53:
	.loc 4 1103 14
	movl	$32, %eax
	jmp	.L55
.L51:
	.loc 4 1105 14
	movl	$2048, %eax
	jmp	.L55
.L52:
	.loc 4 1107 7
	call	abort@PLT
.L55:
	.loc 4 1110 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	time_type_to_statx, .-time_type_to_statx
	.type	calc_req_mask, @function
calc_req_mask:
.LFB80:
	.loc 4 1114 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 4 1115 16
	movl	$2, -4(%rbp)
	.loc 4 1117 7
	movzbl	print_inode(%rip), %eax
	.loc 4 1117 6
	testb	%al, %al
	je	.L57
	.loc 4 1118 10
	orl	$256, -4(%rbp)
.L57:
	.loc 4 1120 7
	movzbl	print_block_size(%rip), %eax
	.loc 4 1120 6
	testb	%al, %al
	je	.L58
	.loc 4 1121 10
	orl	$1024, -4(%rbp)
.L58:
	.loc 4 1123 14
	movl	format(%rip), %eax
	.loc 4 1123 6
	testl	%eax, %eax
	jne	.L59
	.loc 4 1124 40
	call	time_type_to_statx
	.loc 4 1124 10
	orl	-4(%rbp), %eax
	orl	$516, %eax
	movl	%eax, -4(%rbp)
	.loc 4 1125 9
	movzbl	print_owner(%rip), %eax
	.loc 4 1125 8
	testb	%al, %al
	jne	.L60
	.loc 4 1125 21 discriminator 1
	movzbl	print_author(%rip), %eax
	testb	%al, %al
	je	.L61
.L60:
	.loc 4 1126 12
	orl	$8, -4(%rbp)
.L61:
	.loc 4 1127 9
	movzbl	print_group(%rip), %eax
	.loc 4 1127 8
	testb	%al, %al
	je	.L59
	.loc 4 1128 12
	orl	$16, -4(%rbp)
.L59:
	.loc 4 1131 3
	movl	sort_type(%rip), %eax
	cmpl	$4, %eax
	je	.L62
	cmpl	$4, %eax
	jg	.L63
	cmpl	$3, %eax
	je	.L69
	cmpl	$3, %eax
	jg	.L63
	cmpl	$1, %eax
	jg	.L65
	cmpl	$-1, %eax
	jge	.L69
	jmp	.L63
.L65:
	cmpl	$2, %eax
	je	.L66
	jmp	.L63
.L62:
	.loc 4 1139 15
	call	time_type_to_statx
	.loc 4 1139 12
	orl	%eax, -4(%rbp)
	.loc 4 1140 7
	jmp	.L67
.L66:
	.loc 4 1142 12
	orl	$512, -4(%rbp)
	.loc 4 1143 7
	jmp	.L67
.L63:
	.loc 4 1145 7
	call	abort@PLT
.L69:
	.loc 4 1137 7
	nop
.L67:
	.loc 4 1148 10
	movl	-4(%rbp), %eax
	.loc 4 1149 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	calc_req_mask, .-calc_req_mask
	.type	do_statx, @function
do_statx:
.LFB81:
	.loc 4 1154 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$328, %rsp
	.cfi_offset 3, -24
	movl	%edi, -308(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movl	%ecx, -312(%rbp)
	movl	%r8d, -332(%rbp)
	.loc 4 1154 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 4 1156 26
	movl	-332(%rbp), %eax
	andl	$2048, %eax
	.loc 4 1156 8
	testl	%eax, %eax
	setne	%al
	movb	%al, -293(%rbp)
	.loc 4 1157 13
	leaq	-288(%rbp), %rdi
	movl	-332(%rbp), %ecx
	movl	-312(%rbp), %edx
	movq	-320(%rbp), %rsi
	movl	-308(%rbp), %eax
	movq	%rdi, %r8
	movl	%eax, %edi
	call	statx@PLT
	movl	%eax, -292(%rbp)
	.loc 4 1158 6
	cmpl	$0, -292(%rbp)
	js	.L71
	.loc 4 1160 7
	movq	-328(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	statx_to_stat
	.loc 4 1163 10
	cmpb	$0, -293(%rbp)
	je	.L71
	.loc 4 1165 18
	movl	-288(%rbp), %eax
	.loc 4 1165 28
	andl	$2048, %eax
	.loc 4 1165 14
	testl	%eax, %eax
	je	.L72
	.loc 4 1166 27
	movq	-328(%rbp), %rbx
	movq	-208(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	statx_timestamp_to_timespec
	movq	%rax, 88(%rbx)
	movq	%rdx, 96(%rbx)
	jmp	.L71
.L72:
	.loc 4 1168 54
	movq	-328(%rbp), %rax
	movq	$-1, 96(%rax)
	.loc 4 1168 45
	movq	-328(%rbp), %rax
	movq	96(%rax), %rdx
	.loc 4 1168 32
	movq	-328(%rbp), %rax
	movq	%rdx, 88(%rax)
.L71:
	.loc 4 1172 10
	movl	-292(%rbp), %eax
	.loc 4 1173 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L74
	call	__stack_chk_fail@PLT
.L74:
	addq	$328, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	do_statx, .-do_statx
	.type	do_stat, @function
do_stat:
.LFB82:
	.loc 4 1177 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 4 1178 10
	call	calc_req_mask
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$-100, %edi
	call	do_statx
	.loc 4 1179 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	do_stat, .-do_stat
	.type	do_lstat, @function
do_lstat:
.LFB83:
	.loc 4 1183 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 4 1184 10
	call	calc_req_mask
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%ecx, %r8d
	movl	$256, %ecx
	movq	%rax, %rsi
	movl	$-100, %edi
	call	do_statx
	.loc 4 1185 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	do_lstat, .-do_lstat
	.type	stat_for_mode, @function
stat_for_mode:
.LFB84:
	.loc 4 1189 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 4 1190 10
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$2, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$-100, %edi
	call	do_statx
	.loc 4 1191 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	stat_for_mode, .-stat_for_mode
	.type	stat_for_ino, @function
stat_for_ino:
.LFB85:
	.loc 4 1196 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 4 1197 10
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$256, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$-100, %edi
	call	do_statx
	.loc 4 1198 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	stat_for_ino, .-stat_for_ino
	.type	fstat_for_ino, @function
fstat_for_ino:
.LFB86:
	.loc 4 1202 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 4 1203 10
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	$256, %r8d
	movl	$4096, %ecx
	leaq	.LC18(%rip), %rsi
	movl	%eax, %edi
	call	do_statx
	.loc 4 1204 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	fstat_for_ino, .-fstat_for_ino
	.type	first_percent_b, @function
first_percent_b:
.LFB87:
	.loc 4 1243 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 4 1244 3
	jmp	.L86
.L90:
	.loc 4 1245 12
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 1245 8
	cmpb	$37, %al
	jne	.L91
	.loc 4 1246 18
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 4 1246 7
	cmpl	$37, %eax
	je	.L88
	cmpl	$98, %eax
	jne	.L87
	.loc 4 1248 26
	movq	-8(%rbp), %rax
	jmp	.L89
.L88:
	.loc 4 1249 22
	addq	$1, -8(%rbp)
	.loc 4 1249 9
	jmp	.L87
.L91:
	.loc 4 1251 3
	nop
.L87:
	.loc 4 1244 19
	addq	$1, -8(%rbp)
.L86:
	.loc 4 1244 10 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 1244 3 discriminator 1
	testb	%al, %al
	jne	.L90
	.loc 4 1251 10
	movl	$0, %eax
.L89:
	.loc 4 1252 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	first_percent_b, .-first_percent_b
	.local	RFC3986
	.comm	RFC3986,256,32
	.type	file_escape_init, @function
file_escape_init:
.LFB88:
	.loc 4 1257 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
.LBB10:
	.loc 4 1258 12
	movl	$0, -4(%rbp)
	.loc 4 1258 3
	jmp	.L93
.L97:
	.loc 4 1259 19
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	c_isalnum@PLT
	.loc 4 1259 69
	testb	%al, %al
	jne	.L94
	.loc 4 1259 33 discriminator 2
	cmpl	$126, -4(%rbp)
	je	.L94
	.loc 4 1259 45 discriminator 4
	cmpl	$45, -4(%rbp)
	je	.L94
	.loc 4 1259 57 discriminator 6
	cmpl	$46, -4(%rbp)
	je	.L94
	.loc 4 1259 69 discriminator 8
	cmpl	$95, -4(%rbp)
	jne	.L95
.L94:
	.loc 4 1259 69 is_stmt 0 discriminator 9
	movl	$1, %ecx
	jmp	.L96
.L95:
	.loc 4 1259 69 discriminator 10
	movl	$0, %ecx
.L96:
	.loc 4 1259 16 is_stmt 1 discriminator 12
	movl	-4(%rbp), %eax
	cltq
	leaq	RFC3986(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movl	%ecx, %edx
	orl	%edx, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	RFC3986(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	.loc 4 1258 29 discriminator 12
	addl	$1, -4(%rbp)
.L93:
	.loc 4 1258 3 discriminator 2
	cmpl	$255, -4(%rbp)
	jle	.L97
.LBE10:
	.loc 4 1260 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	file_escape_init, .-file_escape_init
	.local	abformat
	.comm	abformat,3072,32
	.local	use_abformat
	.comm	use_abformat,1,1
	.type	abmon_init, @function
abmon_init:
.LFB89:
	.loc 4 1289 1
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
	movq	%rdi, -88(%rbp)
	.loc 4 1289 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 4 1293 10
	movq	$12, -56(%rbp)
.L105:
	.loc 4 1297 22
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 4 1298 26
	movq	$0, -56(%rbp)
.LBB11:
	.loc 4 1299 16
	movl	$0, -72(%rbp)
	.loc 4 1299 7
	jmp	.L99
.L104:
.LBB12:
	.loc 4 1301 18
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 4 1302 30
	movl	-72(%rbp), %eax
	addl	$131086, %eax
	movl	%eax, %edi
	call	nl_langinfo@PLT
	movq	%rax, -40(%rbp)
	.loc 4 1303 15
	movq	-40(%rbp), %rax
	movl	$37, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 4 1303 14
	testq	%rax, %rax
	je	.L100
	.loc 4 1304 20
	movl	$0, %eax
	jmp	.L103
.L100:
	.loc 4 1305 35
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	.loc 4 1306 53
	testl	%eax, %eax
	setne	%al
	.loc 4 1305 23
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	.loc 4 1307 45
	movl	-72(%rbp), %eax
	cltq
	salq	$7, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	.loc 4 1307 24
	movl	-68(%rbp), %ecx
	leaq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$128, %edx
	movq	%rax, %rdi
	call	mbsalign@PLT
	movq	%rax, -32(%rbp)
	.loc 4 1309 14
	cmpq	$127, -32(%rbp)
	jbe	.L102
	.loc 4 1310 20
	movl	$0, %eax
	jmp	.L103
.L102:
	.loc 4 1311 32
	movq	-64(%rbp), %rax
	.loc 4 1311 30
	cmpq	%rax, -56(%rbp)
	cmovnb	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBE12:
	.loc 4 1299 32
	addl	$1, -72(%rbp)
.L99:
	.loc 4 1299 7 discriminator 1
	cmpl	$11, -72(%rbp)
	jle	.L104
.LBE11:
	.loc 4 1314 3
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	ja	.L105
	.loc 4 1316 10
	movl	$1, %eax
.L103:
	.loc 4 1318 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L106
	call	__stack_chk_fail@PLT
.L106:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	abmon_init, .-abmon_init
	.section	.rodata
.LC136:
	.string	"%s"
.LC137:
	.string	"%.*s%s%s"
	.text
	.type	abformat_init, @function
abformat_init:
.LFB90:
	.loc 4 1324 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1616, %rsp
	.loc 4 1324 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.LBB13:
	.loc 4 1326 12
	movl	$0, -1604(%rbp)
	.loc 4 1326 3
	jmp	.L108
.L109:
	.loc 4 1327 18 discriminator 3
	movl	-1604(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	long_time_format(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	first_percent_b
	.loc 4 1327 16 discriminator 3
	movl	-1604(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -1568(%rbp,%rdx,8)
	.loc 4 1326 42 discriminator 3
	addl	$1, -1604(%rbp)
.L108:
	.loc 4 1326 3 discriminator 1
	cmpl	$1, -1604(%rbp)
	jle	.L109
.LBE13:
	.loc 4 1328 12
	movq	-1568(%rbp), %rax
	.loc 4 1328 6
	testq	%rax, %rax
	jne	.L110
	.loc 4 1328 21 discriminator 1
	movq	-1560(%rbp), %rax
	.loc 4 1328 7 discriminator 1
	testq	%rax, %rax
	je	.L124
.L110:
	.loc 4 1332 9
	leaq	-1552(%rbp), %rax
	movq	%rax, %rdi
	call	abmon_init
	.loc 4 1332 7
	xorl	$1, %eax
	.loc 4 1332 6
	testb	%al, %al
	jne	.L125
.LBB14:
	.loc 4 1335 12
	movl	$0, -1600(%rbp)
	.loc 4 1335 3
	jmp	.L113
.L121:
.LBB15:
	.loc 4 1337 19
	movl	-1600(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	long_time_format(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -1584(%rbp)
.LBB16:
	.loc 4 1338 16
	movl	$0, -1596(%rbp)
	.loc 4 1338 7
	jmp	.L114
.L120:
.LBB17:
	.loc 4 1340 17
	movl	-1596(%rbp), %eax
	movslq	%eax, %rcx
	movl	-1600(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$7, %rax
	movq	%rax, %rdx
	leaq	abformat(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -1576(%rbp)
	.loc 4 1343 19
	movl	-1600(%rbp), %eax
	cltq
	movq	-1568(%rbp,%rax,8), %rax
	.loc 4 1343 14
	testq	%rax, %rax
	jne	.L115
	.loc 4 1344 22
	movq	-1584(%rbp), %rdx
	movq	-1576(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC136(%rip), %rdx
	movl	$128, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	movl	%eax, -1592(%rbp)
	jmp	.L116
.L115:
.LBB18:
	.loc 4 1347 24
	movl	-1600(%rbp), %eax
	cltq
	movq	-1568(%rbp,%rax,8), %rax
	.loc 4 1347 33
	subq	-1584(%rbp), %rax
	.loc 4 1347 18
	cmpq	$128, %rax
	jg	.L126
	.loc 4 1349 34
	movl	-1600(%rbp), %eax
	cltq
	movq	-1568(%rbp,%rax,8), %rax
	.loc 4 1349 43
	subq	-1584(%rbp), %rax
	.loc 4 1349 19
	movl	%eax, -1588(%rbp)
	.loc 4 1351 63
	movl	-1600(%rbp), %eax
	cltq
	movq	-1568(%rbp,%rax,8), %rax
	.loc 4 1350 24
	leaq	2(%rax), %rcx
	.loc 4 1351 56
	leaq	-1552(%rbp), %rax
	movl	-1596(%rbp), %edx
	movslq	%edx, %rdx
	salq	$7, %rdx
	leaq	(%rax,%rdx), %rdi
	.loc 4 1350 24
	movq	-1584(%rbp), %rsi
	movl	-1588(%rbp), %edx
	movq	-1576(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	%edx, %ecx
	leaq	.LC137(%rip), %rdx
	movl	$128, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	addq	$16, %rsp
	movl	%eax, -1592(%rbp)
.L116:
.LBE18:
	.loc 4 1354 14
	cmpl	$0, -1592(%rbp)
	js	.L127
	.loc 4 1354 15 discriminator 1
	cmpl	$127, -1592(%rbp)
	jg	.L127
.LBE17:
	.loc 4 1338 32 discriminator 2
	addl	$1, -1596(%rbp)
.L114:
	.loc 4 1338 7 discriminator 1
	cmpl	$11, -1596(%rbp)
	jle	.L120
.LBE16:
.LBE15:
	.loc 4 1335 42 discriminator 2
	addl	$1, -1600(%rbp)
.L113:
	.loc 4 1335 3 discriminator 1
	cmpl	$1, -1600(%rbp)
	jle	.L121
.LBE14:
	.loc 4 1359 16
	movb	$1, use_abformat(%rip)
	jmp	.L107
.L124:
	.loc 4 1329 5
	nop
	jmp	.L107
.L125:
	.loc 4 1333 5
	nop
	jmp	.L107
.L126:
.LBB23:
.LBB22:
.LBB21:
.LBB20:
.LBB19:
	.loc 4 1348 17
	nop
	jmp	.L107
.L127:
.LBE19:
	.loc 4 1355 13
	nop
.L107:
.LBE20:
.LBE21:
.LBE22:
.LBE23:
	.loc 4 1360 1
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L123
	call	__stack_chk_fail@PLT
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	abformat_init, .-abformat_init
	.type	dev_ino_hash, @function
dev_ino_hash:
.LFB91:
	.loc 4 1364 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 4 1365 25
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 4 1366 23
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 1366 32
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rdx, %rax
	.loc 4 1367 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	dev_ino_hash, .-dev_ino_hash
	.type	dev_ino_compare, @function
dev_ino_compare:
.LFB92:
	.loc 4 1371 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 4 1372 25
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 4 1373 25
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 4 1374 10
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 1374 37
	cmpq	%rax, %rdx
	jne	.L131
	.loc 4 1374 10 discriminator 1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 4 1374 37 discriminator 1
	cmpq	%rax, %rdx
	jne	.L131
	.loc 4 1374 37 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L132
.L131:
	.loc 4 1374 37 discriminator 4
	movl	$0, %eax
.L132:
	.loc 4 1374 37 discriminator 6
	andl	$1, %eax
	.loc 4 1375 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	dev_ino_compare, .-dev_ino_compare
	.type	dev_ino_free, @function
dev_ino_free:
.LFB93:
	.loc 4 1379 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 4 1380 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 4 1381 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	dev_ino_free, .-dev_ino_free
	.type	visit_dir, @function
visit_dir:
.LFB94:
	.loc 4 1389 1
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
	.loc 4 1394 9
	movl	$16, %edi
	call	xmalloc@PLT
	movq	%rax, -16(%rbp)
	.loc 4 1395 15
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 4 1396 15
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 4 1399 20
	movq	active_dir_set(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_insert@PLT
	movq	%rax, -8(%rbp)
	.loc 4 1401 6
	cmpq	$0, -8(%rbp)
	jne	.L136
	.loc 4 1404 7
	call	xalloc_die@PLT
.L136:
	.loc 4 1407 15
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setne	%al
	movb	%al, -17(%rbp)
	.loc 4 1409 6
	cmpb	$0, -17(%rbp)
	je	.L137
	.loc 4 1412 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L137:
	.loc 4 1415 10
	movzbl	-17(%rbp), %eax
	.loc 4 1416 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	visit_dir, .-visit_dir
	.type	free_pending_ent, @function
free_pending_ent:
.LFB95:
	.loc 4 1420 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 4 1421 10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 1421 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 4 1422 10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 4 1422 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 4 1423 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 4 1424 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	free_pending_ent, .-free_pending_ent
	.section	.rodata
.LC138:
	.string	"00"
	.text
	.type	is_colored, @function
is_colored:
.LFB96:
	.loc 4 1428 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	.loc 4 1429 10
	movl	-20(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	color_indicator(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 4 1430 15
	movl	-20(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+color_indicator(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 4 1431 10
	cmpq	$0, -16(%rbp)
	je	.L141
	.loc 4 1432 13
	cmpq	$1, -16(%rbp)
	jne	.L142
	.loc 4 1432 29 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movzbl	.LC54(%rip), %eax
	movzbl	%dl, %edx
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 4 1432 26 discriminator 1
	testl	%eax, %eax
	je	.L141
.L142:
	.loc 4 1431 10
	cmpq	$2, -16(%rbp)
	jne	.L143
	.loc 4 1433 29
	movq	-8(%rbp), %rax
	movl	$2, %edx
	leaq	.LC138(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 4 1433 26
	testl	%eax, %eax
	je	.L141
.L143:
	.loc 4 1431 10 discriminator 2
	movl	$1, %eax
	jmp	.L144
.L141:
	.loc 4 1431 10 is_stmt 0 discriminator 1
	movl	$0, %eax
.L144:
	.loc 4 1431 10 discriminator 4
	andl	$1, %eax
	.loc 4 1434 1 is_stmt 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	is_colored, .-is_colored
	.type	restore_default_color, @function
restore_default_color:
.LFB97:
	.loc 4 1438 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 4 1439 3
	leaq	color_indicator(%rip), %rdi
	call	put_indicator
	.loc 4 1440 3
	leaq	16+color_indicator(%rip), %rdi
	call	put_indicator
	.loc 4 1441 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	restore_default_color, .-restore_default_color
	.type	set_normal_color, @function
set_normal_color:
.LFB98:
	.loc 4 1445 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 4 1446 7
	movzbl	print_with_color(%rip), %eax
	.loc 4 1446 6
	testb	%al, %al
	je	.L149
	.loc 4 1446 27 discriminator 1
	movl	$4, %edi
	call	is_colored
	.loc 4 1446 24 discriminator 1
	testb	%al, %al
	je	.L149
	.loc 4 1448 7
	leaq	color_indicator(%rip), %rdi
	call	put_indicator
	.loc 4 1449 7
	leaq	64+color_indicator(%rip), %rdi
	call	put_indicator
	.loc 4 1450 7
	leaq	16+color_indicator(%rip), %rdi
	call	put_indicator
.L149:
	.loc 4 1452 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	set_normal_color, .-set_normal_color
	.type	sighandler, @function
sighandler:
.LFB99:
	.loc 4 1458 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 4 1461 7
	movl	interrupt_signal(%rip), %eax
	.loc 4 1461 6
	testl	%eax, %eax
	jne	.L152
	.loc 4 1462 22
	movl	-4(%rbp), %eax
	movl	%eax, interrupt_signal(%rip)
.L152:
	.loc 4 1463 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	sighandler, .-sighandler
	.type	stophandler, @function
stophandler:
.LFB100:
	.loc 4 1469 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 4 1472 7
	movl	interrupt_signal(%rip), %eax
	.loc 4 1472 6
	testl	%eax, %eax
	jne	.L155
	.loc 4 1473 22
	movl	stop_signal_count(%rip), %eax
	addl	$1, %eax
	movl	%eax, stop_signal_count(%rip)
.L155:
	.loc 4 1474 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	stophandler, .-stophandler
	.type	process_signals, @function
process_signals:
.LFB101:
	.loc 4 1484 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	.loc 4 1484 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 1485 9
	jmp	.L157
.L161:
.LBB24:
	.loc 4 1491 11
	movzbl	used_color(%rip), %eax
	.loc 4 1491 10
	testb	%al, %al
	je	.L158
	.loc 4 1492 9
	call	restore_default_color
.L158:
	.loc 4 1493 7
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush_unlocked@PLT
	.loc 4 1495 7
	leaq	-144(%rbp), %rax
	movq	%rax, %rdx
	leaq	caught_signals(%rip), %rsi
	movl	$0, %edi
	call	sigprocmask@PLT
	.loc 4 1499 11
	movl	interrupt_signal(%rip), %eax
	movl	%eax, -152(%rbp)
	.loc 4 1500 13
	movl	stop_signal_count(%rip), %eax
	movl	%eax, -148(%rbp)
	.loc 4 1505 10
	cmpl	$0, -148(%rbp)
	je	.L159
	.loc 4 1507 37
	movl	-148(%rbp), %eax
	subl	$1, %eax
	.loc 4 1507 29
	movl	%eax, stop_signal_count(%rip)
	.loc 4 1508 15
	movl	$19, -152(%rbp)
	jmp	.L160
.L159:
	.loc 4 1511 9
	movl	-152(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	signal@PLT
.L160:
	.loc 4 1514 7
	movl	-152(%rbp), %eax
	movl	%eax, %edi
	call	raise@PLT
	.loc 4 1515 7
	leaq	-144(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$2, %edi
	call	sigprocmask@PLT
.L157:
.LBE24:
	.loc 4 1485 10
	movl	interrupt_signal(%rip), %eax
	.loc 4 1485 9
	testl	%eax, %eax
	jne	.L161
	.loc 4 1485 27 discriminator 1
	movl	stop_signal_count(%rip), %eax
	testl	%eax, %eax
	jne	.L161
	.loc 4 1520 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L162
	call	__stack_chk_fail@PLT
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	process_signals, .-process_signals
	.type	signal_setup, @function
signal_setup:
.LFB102:
	.loc 4 1527 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	%edi, %eax
	movb	%al, -180(%rbp)
	.loc 4 1527 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 1560 6
	cmpb	$0, -180(%rbp)
	je	.L164
.LBB25:
	.loc 4 1565 7
	leaq	caught_signals(%rip), %rdi
	call	sigemptyset@PLT
	.loc 4 1566 14
	movl	$0, -164(%rbp)
	.loc 4 1566 7
	jmp	.L165
.L167:
	.loc 4 1568 11
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sig.9372(%rip), %rax
	movl	(%rdx,%rax), %eax
	leaq	-160(%rbp), %rdx
	movl	$0, %esi
	movl	%eax, %edi
	call	sigaction@PLT
	.loc 4 1569 19
	movq	-160(%rbp), %rax
	.loc 4 1569 14
	cmpq	$1, %rax
	je	.L166
	.loc 4 1570 13
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sig.9372(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	leaq	caught_signals(%rip), %rdi
	call	sigaddset@PLT
.L166:
	.loc 4 1566 31 discriminator 2
	addl	$1, -164(%rbp)
.L165:
	.loc 4 1566 7 discriminator 1
	cmpl	$11, -164(%rbp)
	jle	.L167
	.loc 4 1573 19
	movq	caught_signals(%rip), %rax
	movq	8+caught_signals(%rip), %rdx
	movq	%rax, -152(%rbp)
	movq	%rdx, -144(%rbp)
	movq	16+caught_signals(%rip), %rax
	movq	24+caught_signals(%rip), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	32+caught_signals(%rip), %rax
	movq	40+caught_signals(%rip), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	48+caught_signals(%rip), %rax
	movq	56+caught_signals(%rip), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	64+caught_signals(%rip), %rax
	movq	72+caught_signals(%rip), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	80+caught_signals(%rip), %rax
	movq	88+caught_signals(%rip), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	96+caught_signals(%rip), %rax
	movq	104+caught_signals(%rip), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	112+caught_signals(%rip), %rax
	movq	120+caught_signals(%rip), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	.loc 4 1574 20
	movl	$268435456, -24(%rbp)
	.loc 4 1576 14
	movl	$0, -164(%rbp)
	.loc 4 1576 7
	jmp	.L168
.L172:
	.loc 4 1577 13
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sig.9372(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	leaq	caught_signals(%rip), %rdi
	call	sigismember@PLT
	.loc 4 1577 12
	testl	%eax, %eax
	je	.L169
	.loc 4 1579 33
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sig.9372(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 4 1579 62
	cmpl	$20, %eax
	jne	.L170
	.loc 4 1579 62 is_stmt 0 discriminator 1
	leaq	stophandler(%rip), %rax
	jmp	.L171
.L170:
	.loc 4 1579 62 discriminator 2
	leaq	sighandler(%rip), %rax
.L171:
	.loc 4 1579 28 is_stmt 1 discriminator 4
	movq	%rax, -160(%rbp)
	.loc 4 1580 13 discriminator 4
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sig.9372(%rip), %rax
	movl	(%rdx,%rax), %eax
	leaq	-160(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	sigaction@PLT
.L169:
	.loc 4 1576 31 discriminator 2
	addl	$1, -164(%rbp)
.L168:
	.loc 4 1576 7 discriminator 1
	cmpl	$11, -164(%rbp)
	jle	.L172
.LBE25:
	.loc 4 1606 1
	jmp	.L178
.L164:
	.loc 4 1597 14
	movl	$0, -164(%rbp)
	.loc 4 1597 7
	jmp	.L174
.L176:
	.loc 4 1598 13
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sig.9372(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	leaq	caught_signals(%rip), %rdi
	call	sigismember@PLT
	.loc 4 1598 12
	testl	%eax, %eax
	je	.L175
	.loc 4 1599 11
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sig.9372(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	signal@PLT
.L175:
	.loc 4 1597 31 discriminator 2
	addl	$1, -164(%rbp)
.L174:
	.loc 4 1597 7 discriminator 1
	cmpl	$11, -164(%rbp)
	jle	.L176
.L178:
	.loc 4 1606 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L177
	call	__stack_chk_fail@PLT
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	signal_setup, .-signal_setup
	.type	signal_init, @function
signal_init:
.LFB103:
	.loc 4 1610 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 4 1611 3
	movl	$1, %edi
	call	signal_setup
	.loc 4 1612 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	signal_init, .-signal_init
	.type	signal_restore, @function
signal_restore:
.LFB104:
	.loc 4 1616 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 4 1617 3
	movl	$0, %edi
	call	signal_setup
	.loc 4 1618 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	signal_restore, .-signal_restore
	.section	.rodata
.LC139:
	.string	"/usr/local/share/locale"
.LC140:
	.string	"TZ"
.LC141:
	.string	"."
.LC142:
	.string	"found"
.LC143:
	.string	"//DIRED//"
.LC144:
	.string	"//SUBDIRED//"
	.align 8
.LC145:
	.string	"//DIRED-OPTIONS// --quoting-style=%s\n"
	.align 8
.LC146:
	.string	"hash_get_n_entries (active_dir_set) == 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB105:
	.loc 4 1622 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 4 1622 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 1628 3
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 4 1629 3
	leaq	.LC18(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 4 1630 3
	leaq	.LC139(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 4 1631 3
	leaq	.LC4(%rip), %rdi
	call	textdomain@PLT
	.loc 4 1633 3
	movl	$2, %edi
	call	initialize_exit_failure
	.loc 4 1634 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 4 1639 15
	movl	$0, exit_status(%rip)
	.loc 4 1640 18
	movb	$1, print_dir_name(%rip)
	.loc 4 1641 16
	movq	$0, pending_dirs(%rip)
	.loc 4 1643 23
	movabsq	$-9223372036854775808, %rax
	movq	%rax, current_time(%rip)
	.loc 4 1644 24
	movq	$-1, 8+current_time(%rip)
	.loc 4 1646 7
	movq	-80(%rbp), %rdx
	movl	-68(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	decode_switches
	movl	%eax, -60(%rbp)
	.loc 4 1648 7
	movzbl	print_with_color(%rip), %eax
	.loc 4 1648 6
	testb	%al, %al
	je	.L182
	.loc 4 1649 5
	call	parse_ls_color
.L182:
	.loc 4 1653 7
	movzbl	directories_first(%rip), %eax
	.loc 4 1653 6
	testb	%al, %al
	je	.L183
	.loc 4 1654 24
	movb	$1, check_symlink_mode(%rip)
	jmp	.L184
.L183:
	.loc 4 1655 12
	movzbl	print_with_color(%rip), %eax
	.loc 4 1655 11
	testb	%al, %al
	je	.L184
	.loc 4 1658 11
	movl	$13, %edi
	call	is_colored
	.loc 4 1658 10
	testb	%al, %al
	jne	.L185
	.loc 4 1659 15
	movl	$14, %edi
	call	is_colored
	.loc 4 1659 11
	testb	%al, %al
	je	.L186
	.loc 4 1659 35 discriminator 1
	movzbl	color_symlink_as_referent(%rip), %eax
	testb	%al, %al
	jne	.L185
.L186:
	.loc 4 1660 15
	movl	$12, %edi
	call	is_colored
	.loc 4 1660 11
	testb	%al, %al
	je	.L184
	.loc 4 1660 48 discriminator 1
	movl	format(%rip), %eax
	.loc 4 1660 38 discriminator 1
	testl	%eax, %eax
	jne	.L184
.L185:
	.loc 4 1661 28
	movb	$1, check_symlink_mode(%rip)
.L184:
	.loc 4 1664 19
	movl	dereference(%rip), %eax
	.loc 4 1664 6
	cmpl	$1, %eax
	jne	.L187
	.loc 4 1665 21
	movzbl	immediate_dirs(%rip), %eax
	.loc 4 1669 20
	testb	%al, %al
	jne	.L188
	.loc 4 1666 40
	movl	indicator_style(%rip), %eax
	.loc 4 1666 21
	cmpl	$3, %eax
	je	.L188
	.loc 4 1667 31
	movl	format(%rip), %eax
	.loc 4 1667 21
	testl	%eax, %eax
	jne	.L189
.L188:
	.loc 4 1669 20 discriminator 1
	movl	$2, %eax
	jmp	.L190
.L189:
	.loc 4 1669 20 is_stmt 0
	movl	$4, %eax
.L190:
	.loc 4 1665 17 is_stmt 1
	movl	%eax, dereference(%rip)
.L187:
	.loc 4 1673 7
	movzbl	recursive(%rip), %eax
	.loc 4 1673 6
	testb	%al, %al
	je	.L191
	.loc 4 1675 24
	leaq	dev_ino_free(%rip), %r8
	leaq	dev_ino_compare(%rip), %rcx
	leaq	dev_ino_hash(%rip), %rdx
	movl	$0, %esi
	movl	$30, %edi
	call	hash_initialize@PLT
	.loc 4 1675 22
	movq	%rax, active_dir_set(%rip)
	.loc 4 1679 26
	movq	active_dir_set(%rip), %rax
	.loc 4 1679 10
	testq	%rax, %rax
	jne	.L192
	.loc 4 1680 9
	call	xalloc_die@PLT
.L192:
	.loc 4 1682 7
	movq	free@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	movq	malloc@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	leaq	dev_ino_obstack(%rip), %rdi
	call	_obstack_begin@PLT
.L191:
	.loc 4 1685 22
	leaq	.LC140(%rip), %rdi
	call	getenv@PLT
	.loc 4 1685 13
	movq	%rax, %rdi
	call	tzalloc@PLT
	.loc 4 1685 11
	movq	%rax, localtz(%rip)
	.loc 4 1687 33
	movl	sort_type(%rip), %eax
	.loc 4 1690 5
	cmpl	$4, %eax
	je	.L193
	.loc 4 1687 59
	movl	sort_type(%rip), %eax
	.loc 4 1687 46
	cmpl	$2, %eax
	je	.L193
	.loc 4 1688 15
	movl	format(%rip), %eax
	.loc 4 1688 5
	testl	%eax, %eax
	je	.L193
	.loc 4 1689 5
	movzbl	print_scontext(%rip), %eax
	testb	%al, %al
	jne	.L193
	.loc 4 1690 5 discriminator 2
	movzbl	print_block_size(%rip), %eax
	testb	%al, %al
	je	.L194
.L193:
	.loc 4 1690 5 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L195
.L194:
	.loc 4 1690 5 discriminator 3
	movl	$0, %eax
.L195:
	.loc 4 1690 5 discriminator 5
	andl	$1, %eax
	.loc 4 1687 21 is_stmt 1 discriminator 5
	movb	%al, format_needs_stat(%rip)
	.loc 4 1691 24 discriminator 5
	movzbl	format_needs_stat(%rip), %eax
	xorl	$1, %eax
	.loc 4 1692 24 discriminator 5
	testb	%al, %al
	je	.L196
	.loc 4 1692 28 discriminator 1
	movzbl	recursive(%rip), %eax
	.loc 4 1692 24 discriminator 1
	testb	%al, %al
	jne	.L197
	.loc 4 1693 28
	movzbl	print_with_color(%rip), %eax
	testb	%al, %al
	jne	.L197
	.loc 4 1694 47
	movl	indicator_style(%rip), %eax
	.loc 4 1694 28
	testl	%eax, %eax
	jne	.L197
	.loc 4 1695 28
	movzbl	directories_first(%rip), %eax
	testb	%al, %al
	je	.L196
.L197:
	.loc 4 1692 24 discriminator 3
	movl	$1, %eax
	jmp	.L198
.L196:
	.loc 4 1692 24 is_stmt 0 discriminator 2
	movl	$0, %eax
.L198:
	.loc 4 1692 24 discriminator 5
	andl	$1, %eax
	.loc 4 1691 21 is_stmt 1 discriminator 5
	movb	%al, format_needs_type(%rip)
	.loc 4 1697 7 discriminator 5
	movzbl	dired(%rip), %eax
	.loc 4 1697 6 discriminator 5
	testb	%al, %al
	je	.L199
	.loc 4 1699 7
	movq	free@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	movq	malloc@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	leaq	dired_obstack(%rip), %rdi
	call	_obstack_begin@PLT
	.loc 4 1700 7
	movq	free@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	movq	malloc@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	leaq	subdired_obstack(%rip), %rdi
	call	_obstack_begin@PLT
.L199:
	.loc 4 1703 7
	movzbl	print_hyperlink(%rip), %eax
	.loc 4 1703 6
	testb	%al, %al
	je	.L200
	.loc 4 1705 7
	call	file_escape_init
	.loc 4 1707 18
	call	xgethostname@PLT
	.loc 4 1707 16
	movq	%rax, hostname(%rip)
	.loc 4 1710 11
	movq	hostname(%rip), %rax
	.loc 4 1710 10
	testq	%rax, %rax
	jne	.L200
	.loc 4 1711 18
	leaq	.LC18(%rip), %rax
	movq	%rax, hostname(%rip)
.L200:
	.loc 4 1714 15
	movq	$100, cwd_n_alloc(%rip)
	.loc 4 1715 14
	movq	cwd_n_alloc(%rip), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	.loc 4 1715 12
	movq	%rax, cwd_file(%rip)
	.loc 4 1716 14
	movq	$0, cwd_n_used(%rip)
	.loc 4 1718 3
	call	clear_files
	.loc 4 1720 11
	movl	-68(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -52(%rbp)
	.loc 4 1722 6
	cmpl	$0, -52(%rbp)
	jg	.L201
	.loc 4 1724 11
	movzbl	immediate_dirs(%rip), %eax
	.loc 4 1724 10
	testb	%al, %al
	je	.L202
	.loc 4 1725 9
	leaq	.LC18(%rip), %r8
	movl	$1, %ecx
	movl	$0, %edx
	movl	$3, %esi
	leaq	.LC141(%rip), %rdi
	call	gobble_file
	jmp	.L203
.L202:
	.loc 4 1727 9
	movl	$1, %edx
	movl	$0, %esi
	leaq	.LC141(%rip), %rdi
	call	queue_directory
	jmp	.L203
.L201:
	.loc 4 1731 26 discriminator 1
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	cltq
	.loc 4 1731 24 discriminator 1
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	.loc 4 1731 7 discriminator 1
	movq	(%rax), %rax
	leaq	.LC18(%rip), %r8
	movl	$1, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	gobble_file
	.loc 4 1732 5 discriminator 1
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L201
.L203:
	.loc 4 1734 7
	movq	cwd_n_used(%rip), %rax
	.loc 4 1734 6
	testq	%rax, %rax
	je	.L204
	.loc 4 1736 7
	call	sort_files
	.loc 4 1737 11
	movzbl	immediate_dirs(%rip), %eax
	xorl	$1, %eax
	.loc 4 1737 10
	testb	%al, %al
	je	.L204
	.loc 4 1738 9
	movl	$1, %esi
	movl	$0, %edi
	call	extract_dirs_from_files
.L204:
	.loc 4 1746 7
	movq	cwd_n_used(%rip), %rax
	.loc 4 1746 6
	testq	%rax, %rax
	je	.L205
	.loc 4 1748 7
	call	print_current_files
	.loc 4 1749 11
	movq	pending_dirs(%rip), %rax
	.loc 4 1749 10
	testq	%rax, %rax
	je	.L207
	.loc 4 1750 9
	movl	$10, %edi
	call	putchar_unlocked@PLT
	movq	dired_pos(%rip), %rax
	addq	$1, %rax
	movq	%rax, dired_pos(%rip)
	jmp	.L207
.L205:
	.loc 4 1752 11
	cmpl	$1, -52(%rbp)
	jg	.L207
	.loc 4 1752 25 discriminator 1
	movq	pending_dirs(%rip), %rax
	testq	%rax, %rax
	je	.L207
	.loc 4 1752 56 discriminator 2
	movq	pending_dirs(%rip), %rax
	movq	24(%rax), %rax
	.loc 4 1752 41 discriminator 2
	testq	%rax, %rax
	jne	.L207
	.loc 4 1753 20
	movb	$0, print_dir_name(%rip)
	.loc 4 1755 9
	jmp	.L207
.L210:
	.loc 4 1757 16
	movq	pending_dirs(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 4 1758 34
	movq	pending_dirs(%rip), %rax
	movq	24(%rax), %rax
	.loc 4 1758 20
	movq	%rax, pending_dirs(%rip)
	.loc 4 1760 11
	movq	active_dir_set(%rip), %rax
	.loc 4 1760 10
	testq	%rax, %rax
	je	.L208
	.loc 4 1762 23
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 1762 14
	testq	%rax, %rax
	jne	.L208
.LBB26:
	.loc 4 1768 35
	call	dev_ino_pop
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 4 1769 39
	movq	active_dir_set(%rip), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hash_remove@PLT
	movq	%rax, -40(%rbp)
	.loc 4 1771 15
	cmpq	$0, -40(%rbp)
	jne	.L209
	.loc 4 1771 15 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.9399(%rip), %rcx
	movl	$1771, %edx
	leaq	.LC133(%rip), %rsi
	leaq	.LC142(%rip), %rdi
	call	__assert_fail@PLT
.L209:
	.loc 4 1772 15 is_stmt 1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	dev_ino_free
	.loc 4 1773 15
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free_pending_ent
	jmp	.L207
.L208:
.LBE26:
	.loc 4 1779 26
	movq	-48(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 4 1778 7
	movzbl	%al, %edx
	.loc 4 1778 42
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 4 1778 26
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 1778 7
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_dir
	.loc 4 1781 7
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free_pending_ent
	.loc 4 1782 22
	movb	$1, print_dir_name(%rip)
.L207:
	.loc 4 1755 10
	movq	pending_dirs(%rip), %rax
	.loc 4 1755 9
	testq	%rax, %rax
	jne	.L210
	.loc 4 1785 7
	movzbl	print_with_color(%rip), %eax
	.loc 4 1785 6
	testb	%al, %al
	je	.L211
	.loc 4 1785 24 discriminator 1
	movzbl	used_color(%rip), %eax
	testb	%al, %al
	je	.L211
.LBB27:
	.loc 4 1791 36
	movq	color_indicator(%rip), %rax
	.loc 4 1791 10
	cmpq	$2, %rax
	jne	.L212
	.loc 4 1792 47
	movq	8+color_indicator(%rip), %rax
	.loc 4 1792 16
	movl	$2, %edx
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	.loc 4 1792 13
	testl	%eax, %eax
	jne	.L212
	.loc 4 1793 40
	movq	16+color_indicator(%rip), %rax
	.loc 4 1793 13
	cmpq	$1, %rax
	jne	.L212
	.loc 4 1794 40
	movq	24+color_indicator(%rip), %rax
	.loc 4 1794 47
	movzbl	(%rax), %eax
	.loc 4 1791 11
	cmpb	$109, %al
	je	.L213
.L212:
	.loc 4 1795 9
	call	restore_default_color
.L213:
	.loc 4 1797 7
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush_unlocked@PLT
	.loc 4 1799 7
	call	signal_restore
	.loc 4 1805 14
	movl	stop_signal_count(%rip), %eax
	movl	%eax, -56(%rbp)
	.loc 4 1805 7
	jmp	.L214
.L215:
	.loc 4 1806 9 discriminator 3
	movl	$19, %edi
	call	raise@PLT
	.loc 4 1805 39 discriminator 3
	subl	$1, -56(%rbp)
.L214:
	.loc 4 1805 7 discriminator 1
	cmpl	$0, -56(%rbp)
	jne	.L215
	.loc 4 1807 9
	movl	interrupt_signal(%rip), %eax
	movl	%eax, -56(%rbp)
	.loc 4 1808 10
	cmpl	$0, -56(%rbp)
	je	.L211
	.loc 4 1809 9
	movl	-56(%rbp), %eax
	movl	%eax, %edi
	call	raise@PLT
.L211:
.LBE27:
	.loc 4 1812 7
	movzbl	dired(%rip), %eax
	.loc 4 1812 6
	testb	%al, %al
	je	.L216
	.loc 4 1815 7
	leaq	dired_obstack(%rip), %rsi
	leaq	.LC143(%rip), %rdi
	call	dired_dump_obstack
	.loc 4 1816 7
	leaq	subdired_obstack(%rip), %rsi
	leaq	.LC144(%rip), %rdi
	call	dired_dump_obstack
	.loc 4 1818 34
	movq	filename_quoting_options(%rip), %rax
	movq	%rax, %rdi
	call	get_quoting_style@PLT
	.loc 4 1817 7
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	quoting_style_args(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC145(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L216:
	.loc 4 1821 7
	movq	active_dir_set(%rip), %rax
	.loc 4 1821 6
	testq	%rax, %rax
	je	.L217
	.loc 4 1823 7
	movq	active_dir_set(%rip), %rax
	movq	%rax, %rdi
	call	hash_get_n_entries@PLT
	testq	%rax, %rax
	je	.L218
	.loc 4 1823 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.9399(%rip), %rcx
	movl	$1823, %edx
	leaq	.LC133(%rip), %rsi
	leaq	.LC146(%rip), %rdi
	call	__assert_fail@PLT
.L218:
	.loc 4 1824 7 is_stmt 1
	movq	active_dir_set(%rip), %rax
	movq	%rax, %rdi
	call	hash_free@PLT
.L217:
	.loc 4 1827 10
	movl	exit_status(%rip), %eax
	.loc 4 1828 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L220
	call	__stack_chk_fail@PLT
.L220:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	main, .-main
	.type	set_line_length, @function
set_line_length:
.LFB106:
	.loc 4 1835 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 4 1835 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 1840 11
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC18(%rip), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 4 1840 3
	testl	%eax, %eax
	je	.L222
	cmpl	$1, %eax
	je	.L223
	jmp	.L228
.L222:
	.loc 4 1843 19
	movq	-16(%rbp), %rax
	movq	%rax, line_length(%rip)
	.loc 4 1844 14
	movl	$1, %eax
	jmp	.L226
.L223:
	.loc 4 1847 19
	movq	$-1, line_length(%rip)
	.loc 4 1848 14
	movl	$1, %eax
	jmp	.L226
.L228:
	.loc 4 1851 14
	movl	$0, %eax
.L226:
	.loc 4 1853 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L227
	.loc 4 1853 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	set_line_length, .-set_line_length
	.section	.rodata
.LC147:
	.string	"COLUMNS"
	.align 8
.LC148:
	.string	"ignoring invalid width in environment variable COLUMNS: %s"
.LC149:
	.string	"TABSIZE"
	.align 8
.LC150:
	.string	"ignoring invalid tab size in environment variable TABSIZE: %s"
	.align 8
.LC151:
	.string	"abcdfghiklmnopqrstuvw:xABCDFGHI:LNQRST:UXZ1"
.LC152:
	.string	"invalid line width"
.LC153:
	.string	"%s: %s"
.LC154:
	.string	"*~"
.LC155:
	.string	".*~"
.LC156:
	.string	"--classify"
.LC157:
	.string	"invalid tab size"
.LC158:
	.string	"--sort"
.LC159:
	.string	"--time"
.LC160:
	.string	"--format"
.LC161:
	.string	"--color"
.LC162:
	.string	"--hyperlink"
.LC163:
	.string	"--indicator-style"
.LC164:
	.string	"--quoting-style"
.LC165:
	.string	"dir"
.LC166:
	.string	"vdir"
.LC167:
	.string	"ls"
.LC168:
	.string	"David MacKenzie"
.LC169:
	.string	"Richard M. Stallman"
.LC170:
	.string	"LS_BLOCK_SIZE"
.LC171:
	.string	"BLOCK_SIZE"
.LC172:
	.string	"*=>@|"
.LC173:
	.string	"TIME_STYLE"
.LC174:
	.string	"invalid time style format %s"
.LC175:
	.string	"time style"
.LC176:
	.string	"Valid arguments are:\n"
.LC177:
	.string	"  - [posix-]%s\n"
	.align 8
.LC178:
	.string	"  - +FORMAT (e.g., +%H:%M) for a 'date'-style format\n"
.LC179:
	.string	"%Y-%m-%d %H:%M:%S.%N %z"
.LC180:
	.string	"%Y-%m-%d %H:%M"
.LC181:
	.string	"%Y-%m-%d "
.LC182:
	.string	"%m-%d %H:%M"
	.text
	.type	decode_switches, @function
decode_switches:
.LFB107:
	.loc 4 1860 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	.loc 4 1860 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 4 1861 9
	movq	$0, -120(%rbp)
	.loc 4 1863 8
	movb	$0, -150(%rbp)
	.loc 4 1864 8
	movb	$0, -149(%rbp)
	.loc 4 1866 21
	movb	$0, qmark_funny_chars(%rip)
	.loc 4 1870 3
	movl	ls_mode(%rip), %eax
	cmpl	$3, %eax
	je	.L230
	cmpl	$3, %eax
	jg	.L231
	cmpl	$1, %eax
	je	.L232
	cmpl	$2, %eax
	jne	.L231
	.loc 4 1874 14
	movl	$2, format(%rip)
	.loc 4 1875 7
	movl	$7, %esi
	movl	$0, %edi
	call	set_quoting_style@PLT
	.loc 4 1876 7
	jmp	.L233
.L230:
	.loc 4 1880 14
	movl	$0, format(%rip)
	.loc 4 1881 7
	movl	$7, %esi
	movl	$0, %edi
	call	set_quoting_style@PLT
	.loc 4 1882 7
	jmp	.L233
.L232:
	.loc 4 1886 11
	movl	$1, %edi
	call	isatty@PLT
	.loc 4 1886 10
	testl	%eax, %eax
	je	.L234
	.loc 4 1888 18
	movl	$2, format(%rip)
	.loc 4 1889 11
	movl	$3, %esi
	movl	$0, %edi
	call	set_quoting_style@PLT
	.loc 4 1891 29
	movb	$1, qmark_funny_chars(%rip)
	.loc 4 1898 7
	jmp	.L233
.L234:
	.loc 4 1895 18
	movl	$1, format(%rip)
	.loc 4 1896 29
	movb	$0, qmark_funny_chars(%rip)
	.loc 4 1898 7
	jmp	.L233
.L231:
	.loc 4 1901 7
	call	abort@PLT
.L233:
	.loc 4 1904 13
	movl	$0, time_type(%rip)
	.loc 4 1905 13
	movl	$0, sort_type(%rip)
	.loc 4 1906 16
	movb	$0, sort_reverse(%rip)
	.loc 4 1907 15
	movb	$0, numeric_ids(%rip)
	.loc 4 1908 20
	movb	$0, print_block_size(%rip)
	.loc 4 1909 19
	movl	$0, indicator_style(%rip)
	.loc 4 1910 15
	movb	$0, print_inode(%rip)
	.loc 4 1911 15
	movl	$1, dereference(%rip)
	.loc 4 1912 13
	movb	$0, recursive(%rip)
	.loc 4 1913 18
	movb	$0, immediate_dirs(%rip)
	.loc 4 1914 15
	movl	$0, ignore_mode(%rip)
	.loc 4 1915 19
	movq	$0, ignore_patterns(%rip)
	.loc 4 1916 17
	movq	$0, hide_patterns(%rip)
	.loc 4 1917 18
	movb	$0, print_scontext(%rip)
	.loc 4 1919 3
	call	getenv_quoting_style
	.loc 4 1921 15
	movq	$80, line_length(%rip)
.LBB28:
	.loc 4 1923 21
	leaq	.LC147(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -80(%rbp)
	.loc 4 1924 8
	cmpq	$0, -80(%rbp)
	je	.L236
	.loc 4 1924 14 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 1924 11 discriminator 1
	testb	%al, %al
	je	.L236
	.loc 4 1924 22 discriminator 2
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	set_line_length
	.loc 4 1924 20 discriminator 2
	xorl	$1, %eax
	.loc 4 1924 17 discriminator 2
	testb	%al, %al
	je	.L236
	.loc 4 1925 7
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 4 1926 14
	leaq	.LC148(%rip), %rdi
	call	gettext@PLT
	.loc 4 1925 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L236:
.LBE28:
.LBB29:
	.loc 4 1934 9
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$21523, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	ioctl@PLT
	.loc 4 1934 8
	cmpl	$-1, %eax
	je	.L237
	.loc 4 1935 18
	movzwl	-30(%rbp), %eax
	.loc 4 1935 9
	testw	%ax, %ax
	je	.L237
	.loc 4 1936 23
	movzwl	-30(%rbp), %eax
	movzwl	%ax, %eax
	.loc 4 1936 19
	movq	%rax, line_length(%rip)
.L237:
.LBE29:
.LBB30:
	.loc 4 1941 21
	leaq	.LC149(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -72(%rbp)
	.loc 4 1942 13
	movq	$8, tabsize(%rip)
	.loc 4 1943 8
	cmpq	$0, -72(%rbp)
	je	.L331
.LBB31:
	.loc 4 1946 13
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC18(%rip), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 4 1946 12
	testl	%eax, %eax
	jne	.L239
	.loc 4 1948 19
	movq	-32(%rbp), %rax
	movq	%rax, tabsize(%rip)
	jmp	.L331
.L239:
	.loc 4 1950 11
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 4 1951 18
	leaq	.LC150(%rip), %rdi
	call	gettext@PLT
	.loc 4 1950 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L331:
.LBE31:
.LBE30:
.LBB32:
	.loc 4 1959 11
	movl	$-1, -32(%rbp)
	.loc 4 1960 15
	leaq	-32(%rbp), %rdx
	movq	-176(%rbp), %rsi
	movl	-164(%rbp), %eax
	movq	%rdx, %r8
	leaq	long_options(%rip), %rcx
	leaq	.LC151(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -132(%rbp)
	.loc 4 1963 10
	cmpl	$-1, -132(%rbp)
	jne	.L241
.LBE32:
	.loc 4 2295 7
	movq	output_block_size(%rip), %rax
	.loc 4 2295 6
	testq	%rax, %rax
	je	.L242
.LBB41:
	jmp	.L243
.L241:
	movl	-132(%rbp), %eax
	addl	$131, %eax
	cmpl	$275, %eax
	ja	.L244
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L246(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L246(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L246:
	.long	.L304-.L246
	.long	.L303-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L302-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L301-.L246
	.long	.L300-.L246
	.long	.L299-.L246
	.long	.L298-.L246
	.long	.L244-.L246
	.long	.L297-.L246
	.long	.L296-.L246
	.long	.L295-.L246
	.long	.L294-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L293-.L246
	.long	.L244-.L246
	.long	.L292-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L291-.L246
	.long	.L290-.L246
	.long	.L289-.L246
	.long	.L288-.L246
	.long	.L287-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L286-.L246
	.long	.L244-.L246
	.long	.L285-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L284-.L246
	.long	.L283-.L246
	.long	.L282-.L246
	.long	.L281-.L246
	.long	.L244-.L246
	.long	.L280-.L246
	.long	.L279-.L246
	.long	.L278-.L246
	.long	.L277-.L246
	.long	.L244-.L246
	.long	.L276-.L246
	.long	.L275-.L246
	.long	.L274-.L246
	.long	.L273-.L246
	.long	.L272-.L246
	.long	.L271-.L246
	.long	.L270-.L246
	.long	.L269-.L246
	.long	.L268-.L246
	.long	.L267-.L246
	.long	.L266-.L246
	.long	.L265-.L246
	.long	.L264-.L246
	.long	.L263-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L244-.L246
	.long	.L262-.L246
	.long	.L261-.L246
	.long	.L260-.L246
	.long	.L259-.L246
	.long	.L258-.L246
	.long	.L257-.L246
	.long	.L256-.L246
	.long	.L255-.L246
	.long	.L254-.L246
	.long	.L253-.L246
	.long	.L252-.L246
	.long	.L251-.L246
	.long	.L250-.L246
	.long	.L249-.L246
	.long	.L248-.L246
	.long	.L247-.L246
	.long	.L245-.L246
	.text
.L284:
.LBE41:
.LBB42:
	.loc 4 1969 23
	movl	$2, ignore_mode(%rip)
	.loc 4 1970 11
	jmp	.L305
.L283:
	.loc 4 1973 11
	movl	$7, %esi
	movl	$0, %edi
	call	set_quoting_style@PLT
	.loc 4 1974 11
	jmp	.L305
.L282:
	.loc 4 1977 21
	movl	$1, time_type(%rip)
	.loc 4 1978 11
	jmp	.L305
.L281:
	.loc 4 1981 26
	movb	$1, immediate_dirs(%rip)
	.loc 4 1982 11
	jmp	.L305
.L280:
	.loc 4 1986 23
	movl	$2, ignore_mode(%rip)
	.loc 4 1987 21
	movl	$-1, sort_type(%rip)
	.loc 4 1988 31
	movb	$1, -150(%rbp)
	.loc 4 1990 22
	movl	format(%rip), %eax
	.loc 4 1990 14
	testl	%eax, %eax
	jne	.L306
	.loc 4 1991 23
	movl	$1, %edi
	call	isatty@PLT
	.loc 4 1991 62
	testl	%eax, %eax
	je	.L307
	.loc 4 1991 62 is_stmt 0 discriminator 1
	movl	$2, %eax
	jmp	.L308
.L307:
	.loc 4 1991 62 discriminator 2
	movl	$1, %eax
.L308:
	.loc 4 1991 20 is_stmt 1 discriminator 4
	movl	%eax, format(%rip)
.L306:
	.loc 4 1992 28
	movb	$0, print_block_size(%rip)
	.loc 4 1993 28
	movb	$0, print_with_color(%rip)
	.loc 4 1994 27
	movb	$0, print_hyperlink(%rip)
	.loc 4 1995 11
	jmp	.L305
.L258:
	.loc 4 1998 27
	movl	$2, indicator_style(%rip)
	.loc 4 1999 11
	jmp	.L305
.L279:
	.loc 4 2002 18
	movl	$0, format(%rip)
	.loc 4 2003 23
	movb	$0, print_owner(%rip)
	.loc 4 2004 11
	jmp	.L305
.L278:
	.loc 4 2007 54
	movl	$176, human_output_opts(%rip)
	.loc 4 2007 34
	movl	human_output_opts(%rip), %eax
	movl	%eax, file_human_output_opts(%rip)
	.loc 4 2009 54
	movq	$1, output_block_size(%rip)
	.loc 4 2009 34
	movq	output_block_size(%rip), %rax
	movq	%rax, file_output_block_size(%rip)
	.loc 4 2010 11
	jmp	.L305
.L277:
	.loc 4 2013 23
	movb	$1, print_inode(%rip)
	.loc 4 2014 11
	jmp	.L305
.L276:
	.loc 4 2017 31
	movb	$1, -149(%rbp)
	.loc 4 2018 11
	jmp	.L305
.L275:
	.loc 4 2021 18
	movl	$0, format(%rip)
	.loc 4 2022 11
	jmp	.L305
.L274:
	.loc 4 2025 18
	movl	$4, format(%rip)
	.loc 4 2026 11
	jmp	.L305
.L273:
	.loc 4 2029 23
	movb	$1, numeric_ids(%rip)
	.loc 4 2030 18
	movl	$0, format(%rip)
	.loc 4 2031 11
	jmp	.L305
.L272:
	.loc 4 2034 18
	movl	$0, format(%rip)
	.loc 4 2035 23
	movb	$0, print_group(%rip)
	.loc 4 2036 11
	jmp	.L305
.L271:
	.loc 4 2039 27
	movl	$1, indicator_style(%rip)
	.loc 4 2040 11
	jmp	.L305
.L270:
	.loc 4 2043 29
	movb	$1, qmark_funny_chars(%rip)
	.loc 4 2044 11
	jmp	.L305
.L269:
	.loc 4 2047 24
	movb	$1, sort_reverse(%rip)
	.loc 4 2048 11
	jmp	.L305
.L268:
	.loc 4 2051 28
	movb	$1, print_block_size(%rip)
	.loc 4 2052 11
	jmp	.L305
.L267:
	.loc 4 2055 21
	movl	$4, sort_type(%rip)
	.loc 4 2056 31
	movb	$1, -150(%rbp)
	.loc 4 2057 11
	jmp	.L305
.L266:
	.loc 4 2060 21
	movl	$2, time_type(%rip)
	.loc 4 2061 11
	jmp	.L305
.L265:
	.loc 4 2064 21
	movl	$3, sort_type(%rip)
	.loc 4 2065 31
	movb	$1, -150(%rbp)
	.loc 4 2066 11
	jmp	.L305
.L264:
	.loc 4 2069 17
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	set_line_length
	.loc 4 2069 15
	xorl	$1, %eax
	.loc 4 2069 14
	testb	%al, %al
	je	.L367
.LBB33:
	.loc 4 2070 13
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC152(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %r8
	movq	%rax, %rcx
	leaq	.LC153(%rip), %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L263:
.LBE33:
	.loc 4 2075 18
	movl	$3, format(%rip)
	.loc 4 2076 11
	jmp	.L305
.L301:
	.loc 4 2079 23
	movl	$1, ignore_mode(%rip)
	.loc 4 2080 11
	jmp	.L305
.L300:
	.loc 4 2083 11
	leaq	.LC154(%rip), %rdi
	call	add_ignore_pattern
	.loc 4 2084 11
	leaq	.LC155(%rip), %rdi
	call	add_ignore_pattern
	.loc 4 2085 11
	jmp	.L305
.L299:
	.loc 4 2088 18
	movl	$2, format(%rip)
	.loc 4 2089 11
	jmp	.L305
.L298:
	.loc 4 2092 17
	movb	$1, dired(%rip)
	.loc 4 2093 11
	jmp	.L305
.L297:
.LBB34:
	.loc 4 2098 17
	movq	optarg(%rip), %rax
	.loc 4 2098 16
	testq	%rax, %rax
	je	.L310
	.loc 4 2099 19
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	when_types(%rip), %rcx
	leaq	when_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC156(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	when_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 4 2099 17
	movl	%eax, -148(%rbp)
	jmp	.L311
.L310:
	.loc 4 2103 17
	movl	$1, -148(%rbp)
.L311:
	.loc 4 2105 16
	cmpl	$1, -148(%rbp)
	je	.L312
	.loc 4 2106 17
	cmpl	$2, -148(%rbp)
	jne	.L368
	.loc 4 2106 41 discriminator 1
	movl	$1, %edi
	call	isatty@PLT
	.loc 4 2106 38 discriminator 1
	testl	%eax, %eax
	je	.L368
.L312:
	.loc 4 2107 31
	movl	$3, indicator_style(%rip)
	.loc 4 2108 13
	jmp	.L368
.L296:
.LBE34:
	.loc 4 2112 23
	movb	$0, print_group(%rip)
	.loc 4 2113 11
	jmp	.L305
.L295:
	.loc 4 2116 23
	movl	$3, dereference(%rip)
	.loc 4 2117 11
	jmp	.L305
.L259:
	.loc 4 2120 23
	movl	$4, dereference(%rip)
	.loc 4 2121 11
	jmp	.L305
.L294:
	.loc 4 2124 11
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	add_ignore_pattern
	.loc 4 2125 11
	jmp	.L305
.L293:
	.loc 4 2128 23
	movl	$5, dereference(%rip)
	.loc 4 2129 11
	jmp	.L305
.L292:
	.loc 4 2132 11
	movl	$0, %esi
	movl	$0, %edi
	call	set_quoting_style@PLT
	.loc 4 2133 11
	jmp	.L305
.L291:
	.loc 4 2136 11
	movl	$5, %esi
	movl	$0, %edi
	call	set_quoting_style@PLT
	.loc 4 2137 11
	jmp	.L305
.L290:
	.loc 4 2140 21
	movb	$1, recursive(%rip)
	.loc 4 2141 11
	jmp	.L305
.L289:
	.loc 4 2144 21
	movl	$2, sort_type(%rip)
	.loc 4 2145 31
	movb	$1, -150(%rbp)
	.loc 4 2146 11
	jmp	.L305
.L288:
	.loc 4 2150 33
	leaq	.LC157(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 4 2149 21
	movq	optarg(%rip), %rax
	subq	$8, %rsp
	pushq	$2
	movq	%rdx, %r9
	leaq	.LC18(%rip), %r8
	movq	$-1, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xnumtoumax@PLT
	addq	$16, %rsp
	.loc 4 2149 19
	movq	%rax, tabsize(%rip)
	.loc 4 2151 11
	jmp	.L305
.L287:
	.loc 4 2154 21
	movl	$-1, sort_type(%rip)
	.loc 4 2155 31
	movb	$1, -150(%rbp)
	.loc 4 2156 11
	jmp	.L305
.L286:
	.loc 4 2159 21
	movl	$1, sort_type(%rip)
	.loc 4 2160 31
	movb	$1, -150(%rbp)
	.loc 4 2161 11
	jmp	.L305
.L302:
	.loc 4 2165 22
	movl	format(%rip), %eax
	.loc 4 2165 14
	testl	%eax, %eax
	je	.L369
	.loc 4 2166 20
	movl	$1, format(%rip)
	.loc 4 2167 11
	jmp	.L369
.L262:
	.loc 4 2170 24
	movb	$1, print_author(%rip)
	.loc 4 2171 11
	jmp	.L305
.L254:
.LBB35:
	.loc 4 2175 43
	movl	$16, %edi
	call	xmalloc@PLT
	movq	%rax, -64(%rbp)
	.loc 4 2176 27
	movq	optarg(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 4 2177 24
	movq	hide_patterns(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 4 2178 27
	movq	-64(%rbp), %rax
	movq	%rax, hide_patterns(%rip)
.LBE35:
	.loc 4 2180 11
	jmp	.L305
.L248:
	.loc 4 2183 23
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	sort_types(%rip), %rcx
	leaq	sort_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC158(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	sort_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 4 2183 21
	movl	%eax, sort_type(%rip)
	.loc 4 2184 31
	movb	$1, -150(%rbp)
	.loc 4 2185 11
	jmp	.L305
.L255:
	.loc 4 2188 29
	movb	$1, directories_first(%rip)
	.loc 4 2189 11
	jmp	.L305
.L247:
	.loc 4 2192 23
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	time_types(%rip), %rcx
	leaq	time_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC159(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	time_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 4 2192 21
	movl	%eax, time_type(%rip)
	.loc 4 2193 11
	jmp	.L305
.L257:
	.loc 4 2196 20
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	format_types(%rip), %rcx
	leaq	format_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC160(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	format_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 4 2196 18
	movl	%eax, format(%rip)
	.loc 4 2197 11
	jmp	.L305
.L256:
	.loc 4 2200 18
	movl	$0, format(%rip)
	.loc 4 2201 31
	leaq	.LC20(%rip), %rdi
	call	bad_cast
	movq	%rax, -120(%rbp)
	.loc 4 2202 11
	jmp	.L305
.L260:
.LBB36:
	.loc 4 2207 17
	movq	optarg(%rip), %rax
	.loc 4 2207 16
	testq	%rax, %rax
	je	.L315
	.loc 4 2208 19
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	when_types(%rip), %rcx
	leaq	when_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC161(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	when_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 4 2208 17
	movl	%eax, -144(%rbp)
	jmp	.L316
.L315:
	.loc 4 2212 17
	movl	$1, -144(%rbp)
.L316:
	.loc 4 2215 33
	cmpl	$1, -144(%rbp)
	je	.L317
	.loc 4 2215 33 is_stmt 0 discriminator 2
	cmpl	$2, -144(%rbp)
	jne	.L318
	.loc 4 2216 40 is_stmt 1
	movl	$1, %edi
	call	isatty@PLT
	.loc 4 2216 37
	testl	%eax, %eax
	je	.L318
.L317:
	.loc 4 2215 33 discriminator 1
	movl	$1, %eax
	jmp	.L319
.L318:
	.loc 4 2215 33 is_stmt 0 discriminator 3
	movl	$0, %eax
.L319:
	.loc 4 2215 33 discriminator 5
	andl	$1, %eax
	.loc 4 2214 30 is_stmt 1 discriminator 5
	movb	%al, print_with_color(%rip)
	.loc 4 2218 17 discriminator 5
	movzbl	print_with_color(%rip), %eax
	.loc 4 2218 16 discriminator 5
	testb	%al, %al
	je	.L370
	.loc 4 2223 25
	movq	$0, tabsize(%rip)
	.loc 4 2225 13
	jmp	.L370
.L253:
.LBE36:
.LBB37:
	.loc 4 2231 17
	movq	optarg(%rip), %rax
	.loc 4 2231 16
	testq	%rax, %rax
	je	.L321
	.loc 4 2232 19
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	when_types(%rip), %rcx
	leaq	when_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC162(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	when_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 4 2232 17
	movl	%eax, -140(%rbp)
	jmp	.L322
.L321:
	.loc 4 2236 17
	movl	$1, -140(%rbp)
.L322:
	.loc 4 2239 32
	cmpl	$1, -140(%rbp)
	je	.L323
	.loc 4 2239 32 is_stmt 0 discriminator 2
	cmpl	$2, -140(%rbp)
	jne	.L324
	.loc 4 2240 39 is_stmt 1
	movl	$1, %edi
	call	isatty@PLT
	.loc 4 2240 36
	testl	%eax, %eax
	je	.L324
.L323:
	.loc 4 2239 32 discriminator 1
	movl	$1, %eax
	jmp	.L325
.L324:
	.loc 4 2239 32 is_stmt 0 discriminator 3
	movl	$0, %eax
.L325:
	.loc 4 2239 32 discriminator 5
	andl	$1, %eax
	.loc 4 2238 29 is_stmt 1 discriminator 5
	movb	%al, print_hyperlink(%rip)
	.loc 4 2241 13 discriminator 5
	jmp	.L305
.L252:
.LBE37:
	.loc 4 2245 29
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	indicator_style_types(%rip), %rcx
	leaq	indicator_style_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC163(%rip), %rdi
	call	__xargmatch_internal@PLT
	leaq	0(,%rax,4), %rdx
	leaq	indicator_style_types(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 4 2245 27
	movl	%eax, indicator_style(%rip)
	.loc 4 2248 11
	jmp	.L305
.L251:
	.loc 4 2252 30
	movq	argmatch_die(%rip), %rdx
	movq	optarg(%rip), %rax
	movq	%rdx, %r9
	movl	$4, %r8d
	leaq	quoting_style_vals(%rip), %rcx
	leaq	quoting_style_args(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC164(%rip), %rdi
	call	__xargmatch_internal@PLT
	.loc 4 2251 11
	leaq	0(,%rax,4), %rdx
	leaq	quoting_style_vals(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	set_quoting_style@PLT
	.loc 4 2255 11
	jmp	.L305
.L245:
	.loc 4 2258 29
	movq	optarg(%rip), %rax
	movq	%rax, -120(%rbp)
	.loc 4 2259 11
	jmp	.L305
.L250:
	.loc 4 2262 29
	movb	$0, qmark_funny_chars(%rip)
	.loc 4 2263 11
	jmp	.L305
.L261:
.LBB38:
	.loc 4 2267 35
	movq	optarg(%rip), %rax
	leaq	output_block_size(%rip), %rdx
	leaq	human_output_opts(%rip), %rsi
	movq	%rax, %rdi
	call	human_options@PLT
	movl	%eax, -128(%rbp)
	.loc 4 2269 16
	cmpl	$0, -128(%rbp)
	je	.L326
	.loc 4 2270 15
	movq	optarg(%rip), %rdx
	movl	-32(%rbp), %esi
	movl	-128(%rbp), %eax
	movq	%rdx, %r8
	leaq	long_options(%rip), %rcx
	movl	$0, %edx
	movl	%eax, %edi
	call	xstrtol_fatal@PLT
.L326:
	.loc 4 2271 36
	movl	human_output_opts(%rip), %eax
	movl	%eax, file_human_output_opts(%rip)
	.loc 4 2272 36
	movq	output_block_size(%rip), %rax
	movq	%rax, file_output_block_size(%rip)
.LBE38:
	.loc 4 2274 11
	jmp	.L305
.L249:
	.loc 4 2277 54
	movl	$144, human_output_opts(%rip)
	.loc 4 2277 34
	movl	human_output_opts(%rip), %eax
	movl	%eax, file_human_output_opts(%rip)
	.loc 4 2279 54
	movq	$1, output_block_size(%rip)
	.loc 4 2279 34
	movq	output_block_size(%rip), %rax
	movq	%rax, file_output_block_size(%rip)
	.loc 4 2280 11
	jmp	.L305
.L285:
	.loc 4 2283 26
	movb	$1, print_scontext(%rip)
	.loc 4 2284 11
	jmp	.L305
.L303:
	.loc 4 2286 9
	movl	$0, %edi
	call	usage
.L304:
	.loc 4 2288 9
	movq	Version(%rip), %rdx
	movl	ls_mode(%rip), %eax
	cmpl	$1, %eax
	je	.L327
	.loc 4 2288 9 is_stmt 0 discriminator 1
	movl	ls_mode(%rip), %eax
	cmpl	$2, %eax
	jne	.L328
	.loc 4 2288 9 discriminator 3
	leaq	.LC165(%rip), %rax
	jmp	.L330
.L328:
	.loc 4 2288 9 discriminator 4
	leaq	.LC166(%rip), %rax
	jmp	.L330
.L327:
	.loc 4 2288 9 discriminator 2
	leaq	.LC167(%rip), %rax
.L330:
	.loc 4 2288 9 discriminator 8
	movq	stdout(%rip), %rdi
	subq	$8, %rsp
	pushq	$0
	leaq	.LC168(%rip), %r9
	leaq	.LC169(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rsi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L244:
	.loc 4 2291 11 is_stmt 1
	movl	$2, %edi
	call	usage
.L367:
	.loc 4 2072 11
	nop
	jmp	.L331
.L368:
.LBB39:
	.loc 4 2108 13
	nop
	jmp	.L331
.L369:
.LBE39:
	.loc 4 2167 11
	nop
	jmp	.L331
.L370:
.LBB40:
	.loc 4 2225 13
	nop
.L305:
.LBE40:
.LBE42:
	.loc 4 1958 5 discriminator 1
	jmp	.L331
.L242:
.LBB43:
	.loc 4 2297 35
	leaq	.LC170(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -56(%rbp)
	.loc 4 2298 7
	movq	-56(%rbp), %rax
	leaq	output_block_size(%rip), %rdx
	leaq	human_output_opts(%rip), %rsi
	movq	%rax, %rdi
	call	human_options@PLT
	.loc 4 2300 10
	cmpq	$0, -56(%rbp)
	jne	.L332
	.loc 4 2300 28 discriminator 1
	leaq	.LC171(%rip), %rdi
	call	getenv@PLT
	.loc 4 2300 25 discriminator 1
	testq	%rax, %rax
	je	.L333
.L332:
	.loc 4 2302 34
	movl	human_output_opts(%rip), %eax
	movl	%eax, file_human_output_opts(%rip)
	.loc 4 2303 34
	movq	output_block_size(%rip), %rax
	movq	%rax, file_output_block_size(%rip)
.L333:
	.loc 4 2305 10
	cmpb	$0, -149(%rbp)
	je	.L243
	.loc 4 2307 29
	movl	$0, human_output_opts(%rip)
	.loc 4 2308 29
	movq	$1024, output_block_size(%rip)
.L243:
.LBE43:
	.loc 4 2313 25
	movq	line_length(%rip), %rax
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	.loc 4 2313 11
	movq	%rax, max_idx(%rip)
	.loc 4 2316 26
	movq	line_length(%rip), %rcx
	movabsq	$-6148914691236517205, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	movq	%rax, %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	.loc 4 2316 45
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	.loc 4 2316 11
	movq	max_idx(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, max_idx(%rip)
	.loc 4 2318 27
	movl	$0, %edi
	call	get_quoting_style@PLT
	movl	%eax, -124(%rbp)
	.loc 4 2319 40
	movl	format(%rip), %eax
	.loc 4 2322 33
	cmpl	$4, %eax
	je	.L334
	.loc 4 2320 43
	movl	format(%rip), %eax
	.loc 4 2320 33
	cmpl	$1, %eax
	je	.L334
	.loc 4 2321 37
	movq	line_length(%rip), %rax
	.loc 4 2321 33
	testq	%rax, %rax
	jne	.L335
	.loc 4 2321 59 discriminator 1
	movl	format(%rip), %eax
	.loc 4 2321 49 discriminator 1
	testl	%eax, %eax
	jne	.L334
.L335:
	.loc 4 2322 33
	cmpl	$1, -124(%rbp)
	je	.L336
	.loc 4 2323 37
	cmpl	$3, -124(%rbp)
	je	.L336
	.loc 4 2324 37
	cmpl	$6, -124(%rbp)
	jne	.L334
.L336:
	.loc 4 2322 33 discriminator 2
	movl	$1, %eax
	jmp	.L337
.L334:
	.loc 4 2322 33 is_stmt 0 discriminator 1
	movl	$0, %eax
.L337:
	.loc 4 2322 33 discriminator 4
	andl	$1, %eax
	.loc 4 2319 31 is_stmt 1 discriminator 4
	movb	%al, align_variable_outer_quotes(%rip)
	.loc 4 2325 30 discriminator 4
	movl	$0, %edi
	call	clone_quoting_options@PLT
	.loc 4 2325 28 discriminator 4
	movq	%rax, filename_quoting_options(%rip)
	.loc 4 2326 6 discriminator 4
	cmpl	$7, -124(%rbp)
	jne	.L338
	.loc 4 2327 5
	movq	filename_quoting_options(%rip), %rax
	movl	$1, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	set_char_quoting@PLT
.L338:
	.loc 4 2328 17
	movl	indicator_style(%rip), %eax
	.loc 4 2328 6
	cmpl	$1, %eax
	jbe	.L339
.LBB44:
	.loc 4 2331 41
	movl	indicator_style(%rip), %eax
	subl	$2, %eax
	.loc 4 2331 14
	movl	%eax, %edx
	leaq	.LC172(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	.loc 4 2331 7
	jmp	.L340
.L341:
	.loc 4 2332 53 discriminator 3
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 2332 9 discriminator 3
	movsbl	%al, %ecx
	movq	filename_quoting_options(%rip), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	set_char_quoting@PLT
	.loc 4 2331 60 discriminator 3
	addq	$1, -112(%rbp)
.L340:
	.loc 4 2331 55 discriminator 1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 2331 7 discriminator 1
	testb	%al, %al
	jne	.L341
.L339:
.LBE44:
	.loc 4 2335 29
	movl	$0, %edi
	call	clone_quoting_options@PLT
	.loc 4 2335 27
	movq	%rax, dirname_quoting_options(%rip)
	.loc 4 2336 3
	movq	dirname_quoting_options(%rip), %rax
	movl	$1, %edx
	movl	$58, %esi
	movq	%rax, %rdi
	call	set_char_quoting@PLT
	.loc 4 2341 7
	movzbl	dired(%rip), %eax
	.loc 4 2341 6
	testb	%al, %al
	je	.L342
	.loc 4 2341 24 discriminator 1
	movl	format(%rip), %eax
	.loc 4 2341 13 discriminator 1
	testl	%eax, %eax
	jne	.L343
	.loc 4 2341 39 discriminator 2
	movzbl	print_hyperlink(%rip), %eax
	testb	%al, %al
	je	.L342
.L343:
	.loc 4 2342 11
	movb	$0, dired(%rip)
.L342:
	.loc 4 2352 18
	movl	time_type(%rip), %eax
	.loc 4 2352 6
	cmpl	$1, %eax
	je	.L344
	.loc 4 2352 45 discriminator 1
	movl	time_type(%rip), %eax
	.loc 4 2352 32 discriminator 1
	cmpl	$2, %eax
	je	.L344
	.loc 4 2353 21
	movl	time_type(%rip), %eax
	.loc 4 2353 8
	cmpl	$3, %eax
	jne	.L345
.L344:
	.loc 4 2354 10
	movzbl	-150(%rbp), %eax
	xorl	$1, %eax
	.loc 4 2354 7
	testb	%al, %al
	je	.L345
	.loc 4 2354 41 discriminator 1
	movl	format(%rip), %eax
	.loc 4 2354 31 discriminator 1
	testl	%eax, %eax
	je	.L345
	.loc 4 2356 17
	movl	$4, sort_type(%rip)
.L345:
	.loc 4 2359 14
	movl	format(%rip), %eax
	.loc 4 2359 6
	testl	%eax, %eax
	jne	.L346
.LBB45:
	.loc 4 2361 13
	movq	-120(%rbp), %rax
	movq	%rax, -104(%rbp)
	.loc 4 2364 10
	cmpq	$0, -104(%rbp)
	jne	.L348
	.loc 4 2365 24
	leaq	.LC173(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -104(%rbp)
	.loc 4 2365 12
	cmpq	$0, -104(%rbp)
	jne	.L348
	.loc 4 2366 19
	leaq	.LC23(%rip), %rdi
	call	bad_cast
	movq	%rax, -104(%rbp)
	.loc 4 2368 13
	jmp	.L348
.L351:
	.loc 4 2370 17
	movl	$2, %edi
	call	hard_locale@PLT
	.loc 4 2370 15
	xorl	$1, %eax
	.loc 4 2370 14
	testb	%al, %al
	je	.L349
	.loc 4 2371 20
	movl	optind(%rip), %eax
	jmp	.L350
.L349:
	.loc 4 2372 17
	addq	$6, -104(%rbp)
.L348:
	.loc 4 2368 14
	movq	-104(%rbp), %rax
	movl	$6, %edx
	leaq	posix_prefix.9513(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 4 2368 13
	testl	%eax, %eax
	je	.L351
	.loc 4 2375 11
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 2375 10
	cmpb	$43, %al
	jne	.L352
.LBB46:
	.loc 4 2377 17
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	.loc 4 2378 22
	movq	-40(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -96(%rbp)
	.loc 4 2379 14
	cmpq	$0, -96(%rbp)
	jne	.L353
	.loc 4 2380 16
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L354
.L353:
	.loc 4 2383 30
	movq	-96(%rbp), %rax
	addq	$1, %rax
	.loc 4 2383 19
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	.loc 4 2383 18
	testq	%rax, %rax
	je	.L355
.LBB47:
	.loc 4 2384 17
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC174(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	error@PLT
.L355:
.LBE47:
	.loc 4 2386 18
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -96(%rbp)
	.loc 4 2386 21
	movb	$0, (%rax)
.L354:
	.loc 4 2388 31
	movq	-40(%rbp), %rax
	movq	%rax, long_time_format(%rip)
	.loc 4 2389 31
	movq	-96(%rbp), %rax
	movq	%rax, 8+long_time_format(%rip)
.LBE46:
	jmp	.L356
.L352:
.LBB48:
	.loc 4 2393 27
	movq	-104(%rbp), %rax
	movl	$4, %ecx
	leaq	time_style_types(%rip), %rdx
	leaq	time_style_args(%rip), %rsi
	movq	%rax, %rdi
	call	argmatch@PLT
	movq	%rax, -48(%rbp)
	.loc 4 2396 14
	cmpq	$0, -48(%rbp)
	jns	.L357
.LBB49:
	.loc 4 2401 15
	movq	-48(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC175(%rip), %rdi
	call	argmatch_invalid@PLT
	.loc 4 2408 15
	movq	stderr(%rip), %rbx
	leaq	.LC176(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 2409 34
	leaq	time_style_args(%rip), %rax
	movq	%rax, -88(%rbp)
	.loc 4 2410 21
	jmp	.L358
.L359:
	.loc 4 2411 56
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -88(%rbp)
	.loc 4 2411 17
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC177(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L358:
	.loc 4 2410 22
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 2410 21
	testq	%rax, %rax
	jne	.L359
	.loc 4 2412 15
	movq	stderr(%rip), %rbx
	leaq	.LC178(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 2414 15
	movl	$2, %edi
	call	usage
.L357:
.LBE49:
	.loc 4 2416 11
	cmpq	$3, -48(%rbp)
	je	.L360
	cmpq	$3, -48(%rbp)
	jg	.L356
	cmpq	$2, -48(%rbp)
	je	.L361
	cmpq	$2, -48(%rbp)
	jg	.L356
	cmpq	$0, -48(%rbp)
	je	.L362
	cmpq	$1, -48(%rbp)
	je	.L363
	jmp	.L356
.L362:
	.loc 4 2419 57
	leaq	.LC179(%rip), %rax
	movq	%rax, 8+long_time_format(%rip)
	.loc 4 2419 53
	movq	8+long_time_format(%rip), %rax
	.loc 4 2419 35
	movq	%rax, long_time_format(%rip)
	.loc 4 2421 15
	jmp	.L356
.L363:
	.loc 4 2424 57
	leaq	.LC180(%rip), %rax
	movq	%rax, 8+long_time_format(%rip)
	.loc 4 2424 53
	movq	8+long_time_format(%rip), %rax
	.loc 4 2424 35
	movq	%rax, long_time_format(%rip)
	.loc 4 2425 15
	jmp	.L356
.L361:
	.loc 4 2428 35
	leaq	.LC181(%rip), %rax
	movq	%rax, long_time_format(%rip)
	.loc 4 2429 35
	leaq	.LC182(%rip), %rax
	movq	%rax, 8+long_time_format(%rip)
	.loc 4 2430 15
	jmp	.L356
.L360:
	.loc 4 2433 19
	movl	$2, %edi
	call	hard_locale@PLT
	.loc 4 2433 18
	testb	%al, %al
	je	.L356
.LBB50:
	.loc 4 2435 28
	movl	$0, -136(%rbp)
	.loc 4 2435 19
	jmp	.L364
.L365:
	.loc 4 2437 23 discriminator 3
	movl	-136(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	long_time_format(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$2, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	dcgettext@PLT
	.loc 4 2436 41 discriminator 3
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	long_time_format(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	.loc 4 2435 43 discriminator 3
	addl	$1, -136(%rbp)
.L364:
	.loc 4 2435 19 discriminator 1
	cmpl	$1, -136(%rbp)
	jle	.L365
.L356:
.LBE50:
.LBE48:
	.loc 4 2442 7
	call	abformat_init
.L346:
.LBE45:
	.loc 4 2445 10
	movl	optind(%rip), %eax
.L350:
	.loc 4 2446 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L366
	call	__stack_chk_fail@PLT
.L366:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	decode_switches, .-decode_switches
	.type	get_funky_string, @function
get_funky_string:
.LFB108:
	.loc 4 2464 1
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
	movq	%rcx, -64(%rbp)
	movb	%al, -52(%rbp)
	.loc 4 2473 5
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 4 2474 5
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 4 2476 9
	movq	$0, -24(%rbp)
	.loc 4 2477 7
	movb	$0, -29(%rbp)
	.loc 4 2479 9
	movl	$0, -28(%rbp)
	.loc 4 2480 9
	jmp	.L372
.L415:
	cmpl	$4, -28(%rbp)
	ja	.L373
	movl	-28(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L375(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L375(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L375:
	.long	.L379-.L375
	.long	.L378-.L375
	.long	.L377-.L375
	.long	.L376-.L375
	.long	.L374-.L375
	.text
.L379:
	.loc 4 2485 19
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$94, %eax
	je	.L380
	cmpl	$94, %eax
	jg	.L381
	cmpl	$92, %eax
	je	.L382
	cmpl	$92, %eax
	jg	.L381
	cmpl	$61, %eax
	je	.L383
	cmpl	$61, %eax
	jg	.L381
	testl	%eax, %eax
	je	.L384
	cmpl	$58, %eax
	jne	.L381
.L384:
	.loc 4 2489 21
	movl	$5, -28(%rbp)
	.loc 4 2490 15
	jmp	.L385
.L382:
	.loc 4 2492 21
	movl	$1, -28(%rbp)
	.loc 4 2493 15
	addq	$1, -16(%rbp)
	.loc 4 2494 15
	jmp	.L385
.L380:
	.loc 4 2496 21
	movl	$4, -28(%rbp)
	.loc 4 2497 15
	addq	$1, -16(%rbp)
	.loc 4 2498 15
	jmp	.L385
.L383:
	.loc 4 2500 18
	cmpb	$0, -52(%rbp)
	je	.L381
	.loc 4 2502 25
	movl	$5, -28(%rbp)
	.loc 4 2503 19
	jmp	.L385
.L381:
	.loc 4 2507 27
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -16(%rbp)
	.loc 4 2507 18
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -8(%rbp)
	.loc 4 2507 24
	movzbl	(%rdx), %edx
	.loc 4 2507 22
	movb	%dl, (%rax)
	.loc 4 2508 15
	addq	$1, -24(%rbp)
	.loc 4 2509 15
	nop
.L385:
	.loc 4 2511 11
	jmp	.L372
.L378:
	.loc 4 2514 19
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	testl	%eax, %eax
	je	.L386
	testl	%eax, %eax
	js	.L387
	cmpl	$120, %eax
	jg	.L387
	cmpl	$48, %eax
	jl	.L387
	subl	$48, %eax
	cmpl	$72, %eax
	ja	.L387
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L389(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L389(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L389:
	.long	.L400-.L389
	.long	.L400-.L389
	.long	.L400-.L389
	.long	.L400-.L389
	.long	.L400-.L389
	.long	.L400-.L389
	.long	.L400-.L389
	.long	.L400-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L399-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L388-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L398-.L389
	.long	.L387-.L389
	.long	.L397-.L389
	.long	.L396-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L395-.L389
	.long	.L394-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L393-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L387-.L389
	.long	.L392-.L389
	.long	.L387-.L389
	.long	.L391-.L389
	.long	.L387-.L389
	.long	.L390-.L389
	.long	.L387-.L389
	.long	.L388-.L389
	.text
.L400:
	.loc 4 2524 21
	movl	$2, -28(%rbp)
	.loc 4 2525 21
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 2525 24
	subl	$48, %eax
	.loc 4 2525 19
	movb	%al, -29(%rbp)
	.loc 4 2526 15
	jmp	.L401
.L388:
	.loc 4 2529 21
	movl	$3, -28(%rbp)
	.loc 4 2530 19
	movb	$0, -29(%rbp)
	.loc 4 2531 15
	jmp	.L401
.L397:
	.loc 4 2533 19
	movb	$7, -29(%rbp)
	.loc 4 2534 15
	jmp	.L401
.L396:
	.loc 4 2536 19
	movb	$8, -29(%rbp)
	.loc 4 2537 15
	jmp	.L401
.L395:
	.loc 4 2539 19
	movb	$27, -29(%rbp)
	.loc 4 2540 15
	jmp	.L401
.L394:
	.loc 4 2542 19
	movb	$12, -29(%rbp)
	.loc 4 2543 15
	jmp	.L401
.L393:
	.loc 4 2545 19
	movb	$10, -29(%rbp)
	.loc 4 2546 15
	jmp	.L401
.L392:
	.loc 4 2548 19
	movb	$13, -29(%rbp)
	.loc 4 2549 15
	jmp	.L401
.L391:
	.loc 4 2551 19
	movb	$9, -29(%rbp)
	.loc 4 2552 15
	jmp	.L401
.L390:
	.loc 4 2554 19
	movb	$11, -29(%rbp)
	.loc 4 2555 15
	jmp	.L401
.L399:
	.loc 4 2557 19
	movb	$127, -29(%rbp)
	.loc 4 2558 15
	jmp	.L401
.L398:
	.loc 4 2560 19
	movb	$32, -29(%rbp)
	.loc 4 2561 15
	jmp	.L401
.L386:
	.loc 4 2563 21
	movl	$6, -28(%rbp)
	.loc 4 2564 15
	jmp	.L401
.L387:
	.loc 4 2566 19
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -29(%rbp)
	.loc 4 2567 15
	nop
.L401:
	.loc 4 2569 14
	cmpl	$1, -28(%rbp)
	jne	.L402
	.loc 4 2571 18
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 4 2571 22
	movzbl	-29(%rbp), %edx
	movb	%dl, (%rax)
	.loc 4 2572 15
	addq	$1, -24(%rbp)
	.loc 4 2573 21
	movl	$0, -28(%rbp)
.L402:
	.loc 4 2575 11
	addq	$1, -16(%rbp)
	.loc 4 2576 11
	jmp	.L372
.L377:
	.loc 4 2579 15
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 2579 14
	cmpb	$47, %al
	jle	.L403
	.loc 4 2579 27 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 2579 24 discriminator 1
	cmpb	$55, %al
	jle	.L404
.L403:
	.loc 4 2581 18
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 4 2581 22
	movzbl	-29(%rbp), %edx
	movb	%dl, (%rax)
	.loc 4 2582 15
	addq	$1, -24(%rbp)
	.loc 4 2583 21
	movl	$0, -28(%rbp)
	jmp	.L405
.L404:
	.loc 4 2586 24
	movzbl	-29(%rbp), %eax
	leal	0(,%rax,8), %ecx
	.loc 4 2586 36
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 4 2586 33
	movzbl	(%rax), %eax
	.loc 4 2586 30
	addl	%ecx, %eax
	subl	$48, %eax
	.loc 4 2586 17
	movb	%al, -29(%rbp)
.L405:
	.loc 4 2587 11
	jmp	.L372
.L376:
	.loc 4 2590 19
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$102, %eax
	jg	.L406
	cmpl	$97, %eax
	jge	.L407
	cmpl	$57, %eax
	jg	.L408
	cmpl	$48, %eax
	jge	.L409
	jmp	.L406
.L408:
	subl	$65, %eax
	cmpl	$5, %eax
	ja	.L406
	jmp	.L417
.L409:
	.loc 4 2602 26
	movzbl	-29(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %ecx
	.loc 4 2602 38
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 4 2602 35
	movzbl	(%rax), %eax
	.loc 4 2602 32
	addl	%ecx, %eax
	subl	$48, %eax
	.loc 4 2602 19
	movb	%al, -29(%rbp)
	.loc 4 2603 15
	jmp	.L411
.L407:
	.loc 4 2610 26
	movzbl	-29(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %ecx
	.loc 4 2610 38
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 4 2610 35
	movzbl	(%rax), %eax
	.loc 4 2610 32
	addl	%ecx, %eax
	.loc 4 2610 49
	subl	$87, %eax
	.loc 4 2610 19
	movb	%al, -29(%rbp)
	.loc 4 2611 15
	jmp	.L411
.L417:
	.loc 4 2618 26
	movzbl	-29(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %ecx
	.loc 4 2618 38
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 4 2618 35
	movzbl	(%rax), %eax
	.loc 4 2618 32
	addl	%ecx, %eax
	.loc 4 2618 49
	subl	$55, %eax
	.loc 4 2618 19
	movb	%al, -29(%rbp)
	.loc 4 2619 15
	jmp	.L411
.L406:
	.loc 4 2621 18
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 4 2621 22
	movzbl	-29(%rbp), %edx
	movb	%dl, (%rax)
	.loc 4 2622 15
	addq	$1, -24(%rbp)
	.loc 4 2623 21
	movl	$0, -28(%rbp)
	.loc 4 2624 15
	nop
.L411:
	.loc 4 2626 11
	jmp	.L372
.L374:
	.loc 4 2629 17
	movl	$0, -28(%rbp)
	.loc 4 2630 15
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 2630 14
	cmpb	$63, %al
	jle	.L412
	.loc 4 2630 28 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 2630 25 discriminator 1
	cmpb	$127, %al
	je	.L412
	.loc 4 2632 27
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 4 2632 24
	movzbl	(%rax), %ecx
	.loc 4 2632 18
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 4 2632 31
	andl	$31, %ecx
	movl	%ecx, %edx
	.loc 4 2632 22
	movb	%dl, (%rax)
	.loc 4 2633 15
	addq	$1, -24(%rbp)
	jmp	.L413
.L412:
	.loc 4 2635 20
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 2635 19
	cmpb	$63, %al
	jne	.L414
	.loc 4 2637 18
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 4 2637 22
	movb	$127, (%rax)
	.loc 4 2638 15
	addq	$1, -24(%rbp)
	jmp	.L372
.L414:
	.loc 4 2641 19
	movl	$6, -28(%rbp)
.L413:
	.loc 4 2642 11
	jmp	.L372
.L373:
	.loc 4 2645 11
	call	abort@PLT
.L372:
	.loc 4 2480 9
	cmpl	$4, -28(%rbp)
	jbe	.L415
	.loc 4 2649 9
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 4 2650 8
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 4 2651 17
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 4 2653 16
	cmpl	$6, -28(%rbp)
	setne	%al
	.loc 4 2654 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	get_funky_string, .-get_funky_string
	.section	.rodata
.LC183:
	.string	"TERM"
.LC184:
	.string	"TERM "
	.text
	.type	known_term_type, @function
known_term_type:
.LFB109:
	.loc 4 2671 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 4 2672 22
	leaq	.LC183(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -8(%rbp)
	.loc 4 2673 6
	cmpq	$0, -8(%rbp)
	je	.L419
	.loc 4 2673 19 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 2673 14 discriminator 1
	testb	%al, %al
	jne	.L420
.L419:
	.loc 4 2674 12
	movl	$0, %eax
	jmp	.L421
.L420:
	.loc 4 2676 15
	leaq	G_line(%rip), %rax
	movq	%rax, -16(%rbp)
	.loc 4 2677 9
	jmp	.L422
.L424:
	.loc 4 2679 11
	movq	-16(%rbp), %rax
	movl	$5, %edx
	leaq	.LC184(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 4 2679 10
	testl	%eax, %eax
	jne	.L423
	.loc 4 2681 15
	movq	-16(%rbp), %rax
	leaq	5(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	fnmatch@PLT
	.loc 4 2681 14
	testl	%eax, %eax
	jne	.L423
	.loc 4 2682 20
	movl	$1, %eax
	jmp	.L421
.L423:
	.loc 4 2684 15
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 2684 12
	addq	$1, %rax
	addq	%rax, -16(%rbp)
.L422:
	.loc 4 2677 15
	leaq	G_line(%rip), %rdx
	movq	-16(%rbp), %rax
	subq	%rdx, %rax
	.loc 4 2677 9
	cmpq	$4303, %rax
	jbe	.L424
	.loc 4 2687 10
	movl	$0, %eax
.L421:
	.loc 4 2688 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	known_term_type, .-known_term_type
	.section	.rodata
.LC185:
	.string	"LS_COLORS"
.LC186:
	.string	"COLORTERM"
.LC187:
	.string	"unrecognized prefix: %s"
	.align 8
.LC188:
	.string	"unparsable value for LS_COLORS environment variable"
.LC189:
	.string	"target"
	.text
	.type	parse_ls_color, @function
parse_ls_color:
.LFB110:
	.loc 4 2692 1
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
	.loc 4 2692 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 4 2699 12
	leaq	.LC185(%rip), %rdi
	call	getenv@PLT
	.loc 4 2699 10
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	.loc 4 2699 6
	testq	%rax, %rax
	je	.L426
	.loc 4 2699 45 discriminator 1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 2699 42 discriminator 1
	testb	%al, %al
	jne	.L427
.L426:
.LBB51:
	.loc 4 2705 31
	leaq	.LC186(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -40(%rbp)
	.loc 4 2706 10
	cmpq	$0, -40(%rbp)
	je	.L428
	.loc 4 2706 27 discriminator 2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 2706 11 discriminator 2
	testb	%al, %al
	jne	.L466
.L428:
	.loc 4 2706 44 discriminator 3
	call	known_term_type
	.loc 4 2706 42 discriminator 3
	xorl	$1, %eax
	.loc 4 2706 39 discriminator 3
	testb	%al, %al
	je	.L466
	.loc 4 2707 26
	movb	$0, print_with_color(%rip)
	jmp	.L425
.L427:
.LBE51:
	.loc 4 2711 7
	movq	$0, -64(%rbp)
	.loc 4 2712 3
	movw	$16191, -27(%rbp)
	movb	$0, -25(%rbp)
	.loc 4 2718 21
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	.loc 4 2718 19
	movq	%rax, color_buf(%rip)
	.loc 4 2718 7
	movq	color_buf(%rip), %rax
	movq	%rax, -72(%rbp)
	.loc 4 2720 20
	movl	$1, -84(%rbp)
.L460:
	cmpl	$6, -84(%rbp)
	ja	.L431
	movl	-84(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L433(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L433(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L433:
	.long	.L431-.L433
	.long	.L437-.L433
	.long	.L436-.L433
	.long	.L435-.L433
	.long	.L434-.L433
	.long	.L431-.L433
	.long	.L467-.L433
	.text
.L437:
	.loc 4 2726 19
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$58, %eax
	je	.L438
	cmpl	$58, %eax
	jg	.L439
	testl	%eax, %eax
	je	.L440
	cmpl	$42, %eax
	je	.L441
	jmp	.L439
.L438:
	.loc 4 2729 15
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	.loc 4 2730 15
	jmp	.L442
.L441:
	.loc 4 2738 21
	movl	$40, %edi
	call	xmalloc@PLT
	movq	%rax, -64(%rbp)
	.loc 4 2739 25
	movq	color_ext_list(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 32(%rax)
	.loc 4 2740 30
	movq	-64(%rbp), %rax
	movq	%rax, color_ext_list(%rip)
	.loc 4 2742 15
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	.loc 4 2743 31
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 4 2745 24
	movq	-64(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	leaq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	get_funky_string
	.loc 4 2746 31
	testb	%al, %al
	je	.L443
	.loc 4 2746 31 is_stmt 0 discriminator 1
	movl	$4, %eax
	jmp	.L444
.L443:
	.loc 4 2746 31 discriminator 2
	movl	$6, %eax
.L444:
	.loc 4 2745 21 is_stmt 1
	movl	%eax, -84(%rbp)
	.loc 4 2747 15
	jmp	.L442
.L440:
	.loc 4 2750 21
	movl	$5, -84(%rbp)
	.loc 4 2751 15
	jmp	.L445
.L439:
	.loc 4 2754 29
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	.loc 4 2754 26
	movzbl	(%rax), %eax
	.loc 4 2754 24
	movb	%al, -27(%rbp)
	.loc 4 2755 21
	movl	$2, -84(%rbp)
	.loc 4 2756 15
	nop
.L442:
	.loc 4 2758 11
	jmp	.L446
.L436:
	.loc 4 2761 15
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 2761 14
	testb	%al, %al
	je	.L447
	.loc 4 2763 29
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	.loc 4 2763 26
	movzbl	(%rax), %eax
	.loc 4 2763 24
	movb	%al, -26(%rbp)
	.loc 4 2764 21
	movl	$3, -84(%rbp)
	.loc 4 2768 11
	jmp	.L446
.L447:
	.loc 4 2767 19
	movl	$6, -84(%rbp)
	.loc 4 2768 11
	jmp	.L446
.L435:
	.loc 4 2771 17
	movl	$6, -84(%rbp)
	.loc 4 2772 18
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	.loc 4 2772 15
	movzbl	(%rax), %eax
	.loc 4 2772 14
	cmpb	$61, %al
	jne	.L468
	.loc 4 2774 27
	movl	$0, -88(%rbp)
	.loc 4 2774 15
	jmp	.L450
.L455:
	.loc 4 2776 23
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	indicator_name(%rip), %rax
	movq	(%rdx,%rax), %rdx
	leaq	-27(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 4 2776 22
	testl	%eax, %eax
	jne	.L451
	.loc 4 2778 54
	movq	-72(%rbp), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	8+color_indicator(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	.loc 4 2779 32
	movl	-88(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	color_indicator(%rip), %rax
	addq	%rax, %rdx
	leaq	-80(%rbp), %rsi
	leaq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	get_funky_string
	.loc 4 2781 43
	testb	%al, %al
	je	.L452
	.loc 4 2781 43 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L453
.L452:
	.loc 4 2781 43 discriminator 2
	movl	$6, %eax
.L453:
	.loc 4 2779 29 is_stmt 1
	movl	%eax, -84(%rbp)
	.loc 4 2782 23
	jmp	.L454
.L451:
	.loc 4 2774 64 discriminator 2
	addl	$1, -88(%rbp)
.L450:
	.loc 4 2774 46 discriminator 1
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	indicator_name(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 4 2774 15 discriminator 1
	testq	%rax, %rax
	jne	.L455
.L454:
	.loc 4 2785 18
	cmpl	$6, -84(%rbp)
	jne	.L468
	.loc 4 2786 17
	leaq	-27(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 4 2786 30
	leaq	.LC187(%rip), %rdi
	call	gettext@PLT
	.loc 4 2786 17
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 4 2788 11
	jmp	.L468
.L434:
	.loc 4 2791 18
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	.loc 4 2791 15
	movzbl	(%rax), %eax
	.loc 4 2791 14
	cmpb	$61, %al
	jne	.L456
	.loc 4 2793 31
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 4 2794 24
	movq	-64(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-80(%rbp), %rsi
	leaq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	get_funky_string
	.loc 4 2795 35
	testb	%al, %al
	je	.L457
	.loc 4 2795 35 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L458
.L457:
	.loc 4 2795 35 discriminator 2
	movl	$6, %eax
.L458:
	.loc 4 2794 21 is_stmt 1
	movl	%eax, -84(%rbp)
	.loc 4 2799 11
	jmp	.L446
.L456:
	.loc 4 2798 19
	movl	$6, -84(%rbp)
	.loc 4 2799 11
	jmp	.L446
.L431:
	.loc 4 2805 11
	call	abort@PLT
.L468:
	.loc 4 2788 11
	nop
.L446:
	.loc 4 2723 7
	jmp	.L460
.L467:
	.loc 4 2802 11
	nop
.L445:
	.loc 4 2810 6
	cmpl	$6, -84(%rbp)
	jne	.L461
.LBB52:
	.loc 4 2816 14
	leaq	.LC188(%rip), %rdi
	call	gettext@PLT
	.loc 4 2815 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 4 2817 7
	movq	color_buf(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 4 2818 14
	movq	color_ext_list(%rip), %rax
	movq	%rax, -56(%rbp)
	.loc 4 2818 7
	jmp	.L462
.L463:
	.loc 4 2820 14
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 4 2821 13
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 4 2822 11
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L462:
	.loc 4 2818 7 discriminator 1
	cmpq	$0, -56(%rbp)
	jne	.L463
	.loc 4 2824 24
	movb	$0, print_with_color(%rip)
.L461:
.LBE52:
	.loc 4 2827 30
	movq	112+color_indicator(%rip), %rax
	.loc 4 2827 6
	cmpq	$6, %rax
	jne	.L425
	.loc 4 2828 11
	movq	120+color_indicator(%rip), %rax
	movl	$6, %edx
	leaq	.LC189(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 4 2828 7
	testl	%eax, %eax
	jne	.L425
	.loc 4 2829 31
	movb	$1, color_symlink_as_referent(%rip)
	jmp	.L425
.L466:
	.loc 4 2708 7
	nop
.L425:
	.loc 4 2830 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L465
	call	__stack_chk_fail@PLT
.L465:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	parse_ls_color, .-parse_ls_color
	.section	.rodata
.LC190:
	.string	"QUOTING_STYLE"
	.align 8
.LC191:
	.string	"ignoring invalid value of environment variable QUOTING_STYLE: %s"
	.text
	.type	getenv_quoting_style, @function
getenv_quoting_style:
.LFB111:
	.loc 4 2837 1
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
	.loc 4 2838 25
	leaq	.LC190(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -24(%rbp)
	.loc 4 2839 6
	cmpq	$0, -24(%rbp)
	je	.L472
.LBB53:
	.loc 4 2841 15
	movq	-24(%rbp), %rax
	movl	$4, %ecx
	leaq	quoting_style_vals(%rip), %rdx
	leaq	quoting_style_args(%rip), %rsi
	movq	%rax, %rdi
	call	argmatch@PLT
	.loc 4 2841 11
	movl	%eax, -28(%rbp)
	.loc 4 2842 10
	cmpl	$0, -28(%rbp)
	js	.L471
	.loc 4 2843 9
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	quoting_style_vals(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	set_quoting_style@PLT
.LBE53:
	.loc 4 2849 1
	jmp	.L472
.L471:
.LBB54:
	.loc 4 2845 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 4 2846 8
	leaq	.LC191(%rip), %rdi
	call	gettext@PLT
	.loc 4 2845 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L472:
.LBE54:
	.loc 4 2849 1
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	getenv_quoting_style, .-getenv_quoting_style
	.type	set_exit_status, @function
set_exit_status:
.LFB112:
	.loc 4 2856 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	.loc 4 2857 6
	cmpb	$0, -4(%rbp)
	je	.L474
	.loc 4 2858 17
	movl	$2, exit_status(%rip)
	.loc 4 2861 1
	jmp	.L476
.L474:
	.loc 4 2859 24
	movl	exit_status(%rip), %eax
	.loc 4 2859 11
	testl	%eax, %eax
	jne	.L476
	.loc 4 2860 17
	movl	$1, exit_status(%rip)
.L476:
	.loc 4 2861 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	set_exit_status, .-set_exit_status
	.type	file_failure, @function
file_failure:
.LFB113:
	.loc 4 2869 1
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
	movl	%edi, %eax
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	%al, -20(%rbp)
	.loc 4 2870 3
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 4 2870 13
	call	__errno_location@PLT
	.loc 4 2870 3
	movl	(%rax), %eax
	movq	-32(%rbp), %rdx
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 4 2871 3
	movzbl	-20(%rbp), %eax
	movl	%eax, %edi
	call	set_exit_status
	.loc 4 2872 1
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	file_failure, .-file_failure
	.type	queue_directory, @function
queue_directory:
.LFB114:
	.loc 4 2886 1
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
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	.loc 4 2887 25
	movl	$32, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 4 2888 49
	cmpq	$0, -32(%rbp)
	je	.L479
	.loc 4 2888 30 discriminator 1
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, %rdx
	jmp	.L480
.L479:
	.loc 4 2888 49 discriminator 2
	movl	$0, %edx
.L480:
	.loc 4 2888 17 discriminator 4
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 4 2889 37 discriminator 4
	cmpq	$0, -24(%rbp)
	je	.L481
	.loc 4 2889 22 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, %rdx
	jmp	.L482
.L481:
	.loc 4 2889 37 discriminator 2
	movl	$0, %edx
.L482:
	.loc 4 2889 13 discriminator 4
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 4 2890 25 discriminator 4
	movq	-8(%rbp), %rax
	movzbl	-36(%rbp), %edx
	movb	%dl, 16(%rax)
	.loc 4 2891 13 discriminator 4
	movq	pending_dirs(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 4 2892 16 discriminator 4
	movq	-8(%rbp), %rax
	movq	%rax, pending_dirs(%rip)
	.loc 4 2893 1 discriminator 4
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	queue_directory, .-queue_directory
	.section	.rodata
.LC192:
	.string	"cannot open directory %s"
	.align 8
.LC193:
	.string	"cannot determine device and inode of %s"
	.align 8
.LC194:
	.string	"%s: not listing already-listed directory"
.LC195:
	.string	"  "
.LC196:
	.string	"error canonicalizing %s"
.LC197:
	.string	":\n"
.LC198:
	.string	"reading directory %s"
.LC199:
	.string	"closing directory %s"
.LC200:
	.string	"total"
	.text
	.type	print_dir, @function
print_dir:
.LFB115:
	.loc 4 2902 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$904, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -888(%rbp)
	movq	%rsi, -896(%rbp)
	movl	%edx, %eax
	movb	%al, -900(%rbp)
	.loc 4 2902 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 4 2905 13
	movq	$0, -872(%rbp)
	.loc 4 2908 3
	call	__errno_location@PLT
	.loc 4 2908 9
	movl	$0, (%rax)
	.loc 4 2909 10
	movq	-888(%rbp), %rax
	movq	%rax, %rdi
	call	opendir@PLT
	movq	%rax, -856(%rbp)
	.loc 4 2910 6
	cmpq	$0, -856(%rbp)
	jne	.L484
	.loc 4 2912 39
	leaq	.LC192(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 4 2912 7
	movzbl	-900(%rbp), %eax
	movq	-888(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	file_failure
	.loc 4 2913 7
	jmp	.L483
.L484:
	.loc 4 2916 7
	movq	active_dir_set(%rip), %rax
	.loc 4 2916 6
	testq	%rax, %rax
	je	.L486
.LBB55:
	.loc 4 2919 16
	movq	-856(%rbp), %rax
	movq	%rax, %rdi
	call	dirfd@PLT
	movl	%eax, -876(%rbp)
	.loc 4 2924 46
	cmpl	$0, -876(%rbp)
	js	.L487
	.loc 4 2923 14 discriminator 1
	leaq	-832(%rbp), %rdx
	movl	-876(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat_for_ino
	.loc 4 2924 46 discriminator 1
	shrl	$31, %eax
	jmp	.L488
.L487:
	.loc 4 2924 14 discriminator 2
	leaq	-832(%rbp), %rdx
	movq	-888(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat_for_ino
	.loc 4 2924 46 discriminator 2
	shrl	$31, %eax
.L488:
	.loc 4 2922 10
	testb	%al, %al
	je	.L489
	.loc 4 2927 25
	leaq	.LC193(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 4 2926 11
	movzbl	-900(%rbp), %eax
	movq	-888(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	file_failure
	.loc 4 2928 11
	movq	-856(%rbp), %rax
	movq	%rax, %rdi
	call	closedir@PLT
	.loc 4 2929 11
	jmp	.L483
.L489:
	.loc 4 2934 11
	movq	-824(%rbp), %rdx
	movq	-832(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	visit_dir
	.loc 4 2934 10
	testb	%al, %al
	je	.L491
	.loc 4 2936 11
	movq	-888(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 4 2936 24
	leaq	.LC194(%rip), %rdi
	call	gettext@PLT
	.loc 4 2936 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 4 2938 11
	movq	-856(%rbp), %rax
	movq	%rax, %rdi
	call	closedir@PLT
	.loc 4 2939 11
	movl	$1, %edi
	call	set_exit_status
	.loc 4 2940 11
	jmp	.L483
.L491:
	.loc 4 2943 7
	movq	-824(%rbp), %rdx
	movq	-832(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dev_ino_push
.L486:
.LBE55:
	.loc 4 2946 3
	call	clear_files
	.loc 4 2948 7
	movzbl	recursive(%rip), %eax
	.loc 4 2948 6
	testb	%al, %al
	jne	.L492
	.loc 4 2948 17 discriminator 1
	movzbl	print_dir_name(%rip), %eax
	testb	%al, %al
	je	.L513
.L492:
.LBB56:
	.loc 4 2950 11
	movzbl	first.9692(%rip), %eax
	xorl	$1, %eax
	.loc 4 2950 10
	testb	%al, %al
	je	.L494
	.loc 4 2951 9
	movl	$10, %edi
	call	putchar_unlocked@PLT
	movq	dired_pos(%rip), %rax
	addq	$1, %rax
	movq	%rax, dired_pos(%rip)
.L494:
	.loc 4 2952 13
	movb	$0, first.9692(%rip)
	.loc 4 2953 7
	movzbl	dired(%rip), %eax
	testb	%al, %al
	je	.L495
	.loc 4 2953 7 is_stmt 0 discriminator 1
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC195(%rip), %rdi
	call	fwrite_unlocked@PLT
	movq	dired_pos(%rip), %rax
	addq	$2, %rax
	movq	%rax, dired_pos(%rip)
.L495:
	.loc 4 2955 13 is_stmt 1
	movq	$0, -864(%rbp)
	.loc 4 2956 11
	movzbl	print_hyperlink(%rip), %eax
	.loc 4 2956 10
	testb	%al, %al
	je	.L496
	.loc 4 2958 27
	movq	-888(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	canonicalize_filename_mode@PLT
	movq	%rax, -864(%rbp)
	.loc 4 2959 14
	cmpq	$0, -864(%rbp)
	jne	.L496
	.loc 4 2961 27
	leaq	.LC196(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 4 2960 13
	movzbl	-900(%rbp), %eax
	movq	-888(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	file_failure
.L496:
	.loc 4 2963 7
	movq	dirname_quoting_options(%rip), %rsi
	cmpq	$0, -896(%rbp)
	je	.L497
	.loc 4 2963 7 is_stmt 0 discriminator 1
	movq	-896(%rbp), %rax
	jmp	.L498
.L497:
	.loc 4 2963 7 discriminator 2
	movq	-888(%rbp), %rax
.L498:
	.loc 4 2963 7 discriminator 4
	subq	$8, %rsp
	pushq	-864(%rbp)
	leaq	subdired_obstack(%rip), %r9
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	quote_name
	addq	$16, %rsp
	.loc 4 2966 7 is_stmt 1 discriminator 4
	movq	-864(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 4 2968 7 discriminator 4
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC197(%rip), %rdi
	call	fwrite_unlocked@PLT
	movq	dired_pos(%rip), %rax
	addq	$2, %rax
	movq	%rax, dired_pos(%rip)
.L513:
.LBE56:
	.loc 4 2978 7
	call	__errno_location@PLT
	.loc 4 2978 13
	movl	$0, (%rax)
	.loc 4 2979 14
	movq	-856(%rbp), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -848(%rbp)
	.loc 4 2980 10
	cmpq	$0, -848(%rbp)
	je	.L499
	.loc 4 2982 35
	movq	-848(%rbp), %rax
	addq	$19, %rax
	.loc 4 2982 17
	movq	%rax, %rdi
	call	file_ignored
	.loc 4 2982 15
	xorl	$1, %eax
	.loc 4 2982 14
	testb	%al, %al
	je	.L500
.LBB57:
	.loc 4 2984 29
	movl	$0, -880(%rbp)
	.loc 4 2987 27
	movq	-848(%rbp), %rax
	movzbl	18(%rax), %eax
	movzbl	%al, %eax
	cmpl	$14, %eax
	ja	.L501
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L503(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L503(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L503:
	.long	.L501-.L503
	.long	.L510-.L503
	.long	.L509-.L503
	.long	.L501-.L503
	.long	.L508-.L503
	.long	.L501-.L503
	.long	.L507-.L503
	.long	.L501-.L503
	.long	.L506-.L503
	.long	.L501-.L503
	.long	.L505-.L503
	.long	.L501-.L503
	.long	.L504-.L503
	.long	.L501-.L503
	.long	.L502-.L503
	.text
.L507:
	.loc 4 2989 36
	movl	$4, -880(%rbp)
	.loc 4 2989 17
	jmp	.L501
.L509:
	.loc 4 2990 36
	movl	$2, -880(%rbp)
	.loc 4 2990 17
	jmp	.L501
.L508:
	.loc 4 2991 36
	movl	$3, -880(%rbp)
	.loc 4 2991 17
	jmp	.L501
.L510:
	.loc 4 2992 36
	movl	$1, -880(%rbp)
	.loc 4 2992 17
	jmp	.L501
.L505:
	.loc 4 2993 36
	movl	$6, -880(%rbp)
	.loc 4 2993 17
	jmp	.L501
.L506:
	.loc 4 2994 36
	movl	$5, -880(%rbp)
	.loc 4 2994 17
	jmp	.L501
.L504:
	.loc 4 2995 36
	movl	$7, -880(%rbp)
	.loc 4 2995 17
	jmp	.L501
.L502:
	.loc 4 2997 36
	movl	$8, -880(%rbp)
	.loc 4 2997 17
	nop
.L501:
	.loc 4 3001 48
	movq	-848(%rbp), %rax
	leaq	19(%rax), %rdi
	.loc 4 3001 31
	movq	-888(%rbp), %rdx
	movl	-880(%rbp), %eax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	call	gobble_file
	.loc 4 3001 28
	addq	%rax, -872(%rbp)
	.loc 4 3009 26
	movl	format(%rip), %eax
	.loc 4 3009 18
	cmpl	$1, %eax
	jne	.L500
	.loc 4 3009 55 discriminator 1
	movl	sort_type(%rip), %eax
	.loc 4 3009 42 discriminator 1
	cmpl	$-1, %eax
	jne	.L500
	.loc 4 3010 26
	movzbl	print_block_size(%rip), %eax
	xorl	$1, %eax
	.loc 4 3010 23
	testb	%al, %al
	je	.L500
	.loc 4 3010 47 discriminator 1
	movzbl	recursive(%rip), %eax
	xorl	$1, %eax
	.loc 4 3010 44 discriminator 1
	testb	%al, %al
	je	.L500
	.loc 4 3015 19
	call	sort_files
	.loc 4 3016 19
	call	print_current_files
	.loc 4 3017 19
	call	clear_files
	jmp	.L500
.L499:
.LBE57:
	.loc 4 3021 16
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 4 3021 15
	testl	%eax, %eax
	je	.L520
	.loc 4 3023 43
	leaq	.LC198(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 4 3023 11
	movzbl	-900(%rbp), %eax
	movq	-888(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	file_failure
	.loc 4 3024 15
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 4 3024 14
	cmpl	$75, %eax
	jne	.L521
.L500:
	.loc 4 3033 7
	call	process_signals
	.loc 4 2978 13
	jmp	.L513
.L520:
	.loc 4 3028 9
	nop
	jmp	.L512
.L521:
	.loc 4 3025 13
	nop
.L512:
	.loc 4 3036 7
	movq	-856(%rbp), %rax
	movq	%rax, %rdi
	call	closedir@PLT
	.loc 4 3036 6
	testl	%eax, %eax
	je	.L514
	.loc 4 3038 39
	leaq	.LC199(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 4 3038 7
	movzbl	-900(%rbp), %eax
	movq	-888(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	file_failure
.L514:
	.loc 4 3043 3
	call	sort_files
	.loc 4 3048 7
	movzbl	recursive(%rip), %eax
	.loc 4 3048 6
	testb	%al, %al
	je	.L515
	.loc 4 3049 5
	movq	-888(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	extract_dirs_from_files
.L515:
	.loc 4 3051 14
	movl	format(%rip), %eax
	.loc 4 3051 6
	testl	%eax, %eax
	je	.L516
	.loc 4 3051 29 discriminator 1
	movzbl	print_block_size(%rip), %eax
	testb	%al, %al
	je	.L517
.L516:
.LBB58:
	.loc 4 3056 7
	movzbl	dired(%rip), %eax
	testb	%al, %al
	je	.L518
	.loc 4 3056 7 is_stmt 0 discriminator 1
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC195(%rip), %rdi
	call	fwrite_unlocked@PLT
	movq	dired_pos(%rip), %rax
	addq	$2, %rax
	movq	%rax, dired_pos(%rip)
.L518:
	.loc 4 3057 11 is_stmt 1
	leaq	.LC200(%rip), %rdi
	call	gettext@PLT
	movq	%rax, -840(%rbp)
	.loc 4 3058 7
	movq	stdout(%rip), %rdx
	movq	-840(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	movq	-840(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	dired_pos(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, dired_pos(%rip)
	.loc 4 3059 7
	movl	$32, %edi
	call	putchar_unlocked@PLT
	movq	dired_pos(%rip), %rax
	addq	$1, %rax
	movq	%rax, dired_pos(%rip)
	.loc 4 3060 11
	movq	output_block_size(%rip), %rcx
	movl	human_output_opts(%rip), %edx
	leaq	-688(%rbp), %rsi
	movq	-872(%rbp), %rax
	movq	%rcx, %r8
	movl	$512, %ecx
	movq	%rax, %rdi
	call	human_readable@PLT
	movq	%rax, -840(%rbp)
	.loc 4 3062 7
	movq	stdout(%rip), %rdx
	movq	-840(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	movq	-840(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	dired_pos(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, dired_pos(%rip)
	.loc 4 3063 7
	movl	$10, %edi
	call	putchar_unlocked@PLT
	movq	dired_pos(%rip), %rax
	addq	$1, %rax
	movq	%rax, dired_pos(%rip)
.L517:
.LBE58:
	.loc 4 3066 7
	movq	cwd_n_used(%rip), %rax
	.loc 4 3066 6
	testq	%rax, %rax
	je	.L483
	.loc 4 3067 5
	call	print_current_files
.L483:
	.loc 4 3068 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L519
	call	__stack_chk_fail@PLT
.L519:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	print_dir, .-print_dir
	.type	add_ignore_pattern, @function
add_ignore_pattern:
.LFB116:
	.loc 4 3075 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 4 3078 12
	movl	$16, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 4 3079 19
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 4 3081 16
	movq	ignore_patterns(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 4 3082 19
	movq	-8(%rbp), %rax
	movq	%rax, ignore_patterns(%rip)
	.loc 4 3083 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	add_ignore_pattern, .-add_ignore_pattern
	.type	patterns_match, @function
patterns_match:
.LFB117:
	.loc 4 3089 1
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
	.loc 4 3091 10
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 4 3091 3
	jmp	.L524
.L527:
	.loc 4 3092 9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fnmatch@PLT
	.loc 4 3092 8
	testl	%eax, %eax
	jne	.L525
	.loc 4 3093 14
	movl	$1, %eax
	jmp	.L526
.L525:
	.loc 4 3091 27 discriminator 2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L524:
	.loc 4 3091 3 discriminator 1
	cmpq	$0, -8(%rbp)
	jne	.L527
	.loc 4 3094 10
	movl	$0, %eax
.L526:
	.loc 4 3095 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	patterns_match, .-patterns_match
	.type	file_ignored, @function
file_ignored:
.LFB118:
	.loc 4 3101 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 4 3102 24
	movl	ignore_mode(%rip), %eax
	.loc 4 3107 11
	cmpl	$2, %eax
	je	.L529
	.loc 4 3103 19
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 3103 12
	cmpb	$46, %al
	jne	.L529
	.loc 4 3104 28
	movl	ignore_mode(%rip), %eax
	.loc 4 3104 12
	testl	%eax, %eax
	je	.L530
	.loc 4 3104 65 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 4 3104 58 discriminator 1
	cmpb	$46, %al
	jne	.L531
	.loc 4 3104 58 is_stmt 0 discriminator 2
	movl	$2, %edx
	jmp	.L532
.L531:
	.loc 4 3104 58 discriminator 3
	movl	$1, %edx
.L532:
	.loc 4 3104 55 is_stmt 1 discriminator 5
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 4 3104 46 discriminator 5
	testb	%al, %al
	je	.L530
.L529:
	.loc 4 3105 27
	movl	ignore_mode(%rip), %eax
	.loc 4 3105 11
	testl	%eax, %eax
	jne	.L533
	.loc 4 3106 18
	movq	hide_patterns(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	patterns_match
	.loc 4 3106 15
	testb	%al, %al
	jne	.L530
.L533:
	.loc 4 3107 14
	movq	ignore_patterns(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	patterns_match
	.loc 4 3107 11
	testb	%al, %al
	je	.L534
.L530:
	.loc 4 3107 11 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L535
.L534:
	.loc 4 3107 11 discriminator 2
	movl	$0, %eax
.L535:
	.loc 4 3107 11 discriminator 4
	andl	$1, %eax
	.loc 4 3108 1 is_stmt 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	file_ignored, .-file_ignored
	.type	unsigned_file_size, @function
unsigned_file_size:
.LFB119:
	.loc 4 3116 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 4 3117 15
	movq	-8(%rbp), %rax
	.loc 4 3118 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	unsigned_file_size, .-unsigned_file_size
	.type	has_capability, @function
has_capability:
.LFB120:
	.loc 4 3146 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 4 3147 3
	call	__errno_location@PLT
	.loc 4 3147 9
	movl	$95, (%rax)
	.loc 4 3148 10
	movl	$0, %eax
	.loc 4 3149 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	has_capability, .-has_capability
	.type	free_ent, @function
free_ent:
.LFB121:
	.loc 4 3156 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 4 3157 10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 3157 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 4 3158 10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 4 3158 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 4 3159 10
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 4 3159 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 4 3160 8
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	.loc 4 3160 6
	leaq	UNKNOWN_SECURITY_CONTEXT(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L544
	.loc 4 3162 11
	call	is_smack_enabled
	.loc 4 3162 10
	testb	%al, %al
	je	.L543
	.loc 4 3163 16
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	.loc 4 3163 9
	movq	%rax, %rdi
	call	free@PLT
	.loc 4 3167 1
	jmp	.L544
.L543:
	.loc 4 3165 9
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	freecon@PLT
.L544:
	.loc 4 3167 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	free_ent, .-free_ent
	.type	clear_files, @function
clear_files:
.LFB122:
	.loc 4 3172 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
.LBB59:
	.loc 4 3173 15
	movq	$0, -16(%rbp)
	.loc 4 3173 3
	jmp	.L546
.L547:
.LBB60:
	.loc 4 3175 39 discriminator 3
	movq	sorted_file(%rip), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 4 3175 24 discriminator 3
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 4 3176 7 discriminator 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free_ent
.LBE60:
	.loc 4 3173 39 discriminator 3
	addq	$1, -16(%rbp)
.L546:
	.loc 4 3173 24 discriminator 1
	movq	cwd_n_used(%rip), %rax
	.loc 4 3173 3 discriminator 1
	cmpq	%rax, -16(%rbp)
	jb	.L547
.LBE59:
	.loc 4 3179 14
	movq	$0, cwd_n_used(%rip)
	.loc 4 3180 19
	movb	$0, cwd_some_quoted(%rip)
	.loc 4 3181 15
	movb	$0, any_has_acl(%rip)
	.loc 4 3182 22
	movl	$0, inode_number_width(%rip)
	.loc 4 3183 20
	movl	$0, block_size_width(%rip)
	.loc 4 3184 15
	movl	$0, nlink_width(%rip)
	.loc 4 3185 15
	movl	$0, owner_width(%rip)
	.loc 4 3186 15
	movl	$0, group_width(%rip)
	.loc 4 3187 16
	movl	$0, author_width(%rip)
	.loc 4 3188 18
	movl	$0, scontext_width(%rip)
	.loc 4 3189 29
	movl	$0, major_device_number_width(%rip)
	.loc 4 3190 29
	movl	$0, minor_device_number_width(%rip)
	.loc 4 3191 19
	movl	$0, file_size_width(%rip)
	.loc 4 3192 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE122:
	.size	clear_files, .-clear_files
	.type	errno_unsupported, @function
errno_unsupported:
.LFB123:
	.loc 4 3198 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	.loc 4 3199 42
	cmpl	$22, -4(%rbp)
	je	.L549
	.loc 4 3199 25 discriminator 2
	cmpl	$38, -4(%rbp)
	je	.L549
	.loc 4 3199 45 discriminator 4
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	is_ENOTSUP
	.loc 4 3199 42 discriminator 4
	testb	%al, %al
	je	.L550
.L549:
	.loc 4 3199 42 is_stmt 0 discriminator 5
	movl	$1, %eax
	jmp	.L551
.L550:
	.loc 4 3199 42 discriminator 6
	movl	$0, %eax
.L551:
	.loc 4 3199 42 discriminator 8
	andl	$1, %eax
	.loc 4 3200 1 is_stmt 1 discriminator 8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE123:
	.size	errno_unsupported, .-errno_unsupported
	.type	getfilecon_cache, @function
getfilecon_cache:
.LFB124:
	.loc 4 3207 1
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
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	.loc 4 3212 14
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 4 3212 22
	movq	unsupported_device.9750(%rip), %rax
	.loc 4 3212 6
	cmpq	%rax, %rdx
	jne	.L554
	.loc 4 3214 7
	call	__errno_location@PLT
	.loc 4 3214 13
	movl	$95, (%rax)
	.loc 4 3215 14
	movl	$-1, %eax
	jmp	.L555
.L554:
	.loc 4 3217 7
	movl	$0, -4(%rbp)
	.loc 4 3226 10
	cmpb	$0, -36(%rbp)
	je	.L556
	.loc 4 3225 12
	movq	-32(%rbp), %rax
	leaq	176(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rpl_getfilecon@PLT
	jmp	.L557
.L556:
	.loc 4 3226 12 discriminator 1
	movq	-32(%rbp), %rax
	leaq	176(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rpl_lgetfilecon@PLT
.L557:
	.loc 4 3224 7
	movl	%eax, -4(%rbp)
	.loc 4 3227 6
	cmpl	$0, -4(%rbp)
	jns	.L558
	.loc 4 3227 35 discriminator 1
	call	__errno_location@PLT
	.loc 4 3227 16 discriminator 1
	movl	(%rax), %eax
	movl	%eax, %edi
	call	errno_unsupported
	.loc 4 3227 13 discriminator 1
	testb	%al, %al
	je	.L558
	.loc 4 3228 33
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 4 3228 24
	movq	%rax, unsupported_device.9750(%rip)
.L558:
	.loc 4 3229 10
	movl	-4(%rbp), %eax
.L555:
	.loc 4 3230 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.size	getfilecon_cache, .-getfilecon_cache
	.type	file_has_acl_cache, @function
file_has_acl_cache:
.LFB125:
	.loc 4 3237 1
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
	.loc 4 3242 14
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 4 3242 22
	movq	unsupported_device.9756(%rip), %rax
	.loc 4 3242 6
	cmpq	%rax, %rdx
	jne	.L560
	.loc 4 3244 7
	call	__errno_location@PLT
	.loc 4 3244 13
	movl	$95, (%rax)
	.loc 4 3245 14
	movl	$0, %eax
	jmp	.L561
.L560:
	.loc 4 3250 3
	call	__errno_location@PLT
	.loc 4 3250 9
	movl	$0, (%rax)
	.loc 4 3251 31
	movq	-32(%rbp), %rax
	leaq	24(%rax), %rdx
	.loc 4 3251 11
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	file_has_acl@PLT
	movl	%eax, -4(%rbp)
	.loc 4 3252 6
	cmpl	$0, -4(%rbp)
	jg	.L562
	.loc 4 3252 36 discriminator 1
	call	__errno_location@PLT
	.loc 4 3252 17 discriminator 1
	movl	(%rax), %eax
	movl	%eax, %edi
	call	errno_unsupported
	.loc 4 3252 14 discriminator 1
	testb	%al, %al
	je	.L562
	.loc 4 3253 33
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 4 3253 24
	movq	%rax, unsupported_device.9756(%rip)
.L562:
	.loc 4 3254 10
	movl	-4(%rbp), %eax
.L561:
	.loc 4 3255 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.size	file_has_acl_cache, .-file_has_acl_cache
	.type	has_capability_cache, @function
has_capability_cache:
.LFB126:
	.loc 4 3262 1
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
	.loc 4 3267 14
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 4 3267 22
	movq	unsupported_device.9762(%rip), %rax
	.loc 4 3267 6
	cmpq	%rax, %rdx
	jne	.L564
	.loc 4 3269 7
	call	__errno_location@PLT
	.loc 4 3269 13
	movl	$95, (%rax)
	.loc 4 3270 14
	movl	$0, %eax
	jmp	.L565
.L564:
	.loc 4 3273 12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	has_capability
	movb	%al, -1(%rbp)
	.loc 4 3274 8
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	.loc 4 3274 6
	testb	%al, %al
	je	.L566
	.loc 4 3274 33 discriminator 1
	call	__errno_location@PLT
	.loc 4 3274 14 discriminator 1
	movl	(%rax), %eax
	movl	%eax, %edi
	call	errno_unsupported
	.loc 4 3274 11 discriminator 1
	testb	%al, %al
	je	.L566
	.loc 4 3275 33
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	.loc 4 3275 24
	movq	%rax, unsupported_device.9762(%rip)
.L566:
	.loc 4 3276 10
	movzbl	-1(%rbp), %eax
.L565:
	.loc 4 3277 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.size	has_capability_cache, .-has_capability_cache
	.type	needs_quoting, @function
needs_quoting:
.LFB127:
	.loc 4 3281 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 4 3281 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 3283 16
	movq	filename_quoting_options(%rip), %rcx
	movq	-40(%rbp), %rdx
	leaq	-10(%rbp), %rax
	movq	%rcx, %r8
	movq	$-1, %rcx
	movl	$2, %esi
	movq	%rax, %rdi
	call	quotearg_buffer@PLT
	movq	%rax, -24(%rbp)
	.loc 4 3285 10
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 4 3285 16
	movzbl	-10(%rbp), %eax
	.loc 4 3285 25
	cmpb	%al, %dl
	jne	.L568
	.loc 4 3285 28 discriminator 2
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 3285 25 discriminator 2
	cmpq	%rax, -24(%rbp)
	je	.L569
.L568:
	.loc 4 3285 25 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L570
.L569:
	.loc 4 3285 25 discriminator 4
	movl	$0, %eax
.L570:
	.loc 4 3285 25 discriminator 6
	andl	$1, %eax
	.loc 4 3286 1 is_stmt 1 discriminator 6
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L572
	.loc 4 3286 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L572:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE127:
	.size	needs_quoting, .-needs_quoting
	.section	.rodata
	.align 8
.LC201:
	.string	"! command_line_arg || inode == NOT_AN_INODE_NUMBER"
.LC202:
	.string	"cannot access %s"
.LC203:
	.string	"_"
.LC204:
	.string	"unlabeled"
	.text
	.type	gobble_file, @function
gobble_file:
.LFB128:
	.loc 4 3294 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$984, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -968(%rbp)
	movl	%esi, -972(%rbp)
	movq	%rdx, -984(%rbp)
	movl	%ecx, %eax
	movq	%r8, -992(%rbp)
	movb	%al, -976(%rbp)
	.loc 4 3294 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 4 3295 13
	movq	$0, -904(%rbp)
	.loc 4 3300 3
	movzbl	-976(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L574
	.loc 4 3300 3 is_stmt 0 discriminator 1
	cmpq	$0, -984(%rbp)
	je	.L574
	.loc 4 3300 3 discriminator 2
	leaq	__PRETTY_FUNCTION__.9778(%rip), %rcx
	movl	$3300, %edx
	leaq	.LC133(%rip), %rsi
	leaq	.LC201(%rip), %rdi
	call	__assert_fail@PLT
.L574:
	.loc 4 3302 18 is_stmt 1
	movq	cwd_n_used(%rip), %rdx
	movq	cwd_n_alloc(%rip), %rax
	.loc 4 3302 6
	cmpq	%rax, %rdx
	jne	.L575
	.loc 4 3304 18
	movq	cwd_n_alloc(%rip), %rcx
	movq	cwd_file(%rip), %rax
	movl	$400, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xnrealloc@PLT
	.loc 4 3304 16
	movq	%rax, cwd_file(%rip)
	.loc 4 3305 19
	movq	cwd_n_alloc(%rip), %rax
	addq	%rax, %rax
	movq	%rax, cwd_n_alloc(%rip)
.L575:
	.loc 4 3308 7
	movq	cwd_file(%rip), %rcx
	.loc 4 3308 16
	movq	cwd_n_used(%rip), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	.loc 4 3308 5
	addq	%rcx, %rax
	movq	%rax, -888(%rbp)
	.loc 4 3309 3
	movq	-888(%rbp), %rax
	movl	$200, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 4 3310 18
	movq	-888(%rbp), %rax
	movq	-984(%rbp), %rdx
	movq	%rdx, 32(%rax)
	.loc 4 3311 15
	movq	-888(%rbp), %rax
	movl	-972(%rbp), %edx
	movl	%edx, 168(%rax)
	.loc 4 3313 13
	movq	-888(%rbp), %rax
	movl	$-1, 196(%rax)
	.loc 4 3314 8
	movzbl	cwd_some_quoted(%rip), %eax
	xorl	$1, %eax
	.loc 4 3314 6
	testb	%al, %al
	je	.L576
	.loc 4 3314 27 discriminator 1
	movzbl	align_variable_outer_quotes(%rip), %eax
	testb	%al, %al
	je	.L576
	.loc 4 3317 19
	movq	-968(%rbp), %rax
	movq	%rax, %rdi
	call	needs_quoting
	movzbl	%al, %edx
	.loc 4 3317 17
	movq	-888(%rbp), %rax
	movl	%edx, 196(%rax)
	.loc 4 3318 12
	movq	-888(%rbp), %rax
	movl	196(%rax), %eax
	.loc 4 3318 10
	testl	%eax, %eax
	je	.L576
	.loc 4 3319 25
	movb	$1, cwd_some_quoted(%rip)
.L576:
	.loc 4 3322 6
	cmpb	$0, -976(%rbp)
	jne	.L577
	.loc 4 3323 7
	movzbl	print_hyperlink(%rip), %eax
	testb	%al, %al
	jne	.L577
	.loc 4 3324 7
	movzbl	format_needs_stat(%rip), %eax
	testb	%al, %al
	jne	.L577
	.loc 4 3328 7
	cmpl	$3, -972(%rbp)
	jne	.L578
	.loc 4 3328 29 discriminator 1
	movzbl	print_with_color(%rip), %eax
	testb	%al, %al
	je	.L578
	.loc 4 3329 15
	movl	$19, %edi
	call	is_colored
	.loc 4 3329 11
	testb	%al, %al
	jne	.L577
	.loc 4 3330 18
	movl	$18, %edi
	call	is_colored
	.loc 4 3330 15
	testb	%al, %al
	jne	.L577
	.loc 4 3331 18
	movl	$20, %edi
	call	is_colored
	.loc 4 3331 15
	testb	%al, %al
	jne	.L577
.L578:
	.loc 4 3334 12
	movzbl	print_inode(%rip), %eax
	.loc 4 3334 7
	testb	%al, %al
	jne	.L579
	.loc 4 3334 24 discriminator 1
	movzbl	format_needs_type(%rip), %eax
	testb	%al, %al
	je	.L580
.L579:
	.loc 4 3335 11
	cmpl	$6, -972(%rbp)
	je	.L581
	.loc 4 3335 37 discriminator 1
	cmpl	$0, -972(%rbp)
	jne	.L580
.L581:
	.loc 4 3336 27
	movl	dereference(%rip), %eax
	.loc 4 3336 11
	cmpl	$5, %eax
	je	.L577
	.loc 4 3337 15
	movzbl	color_symlink_as_referent(%rip), %eax
	testb	%al, %al
	jne	.L577
	.loc 4 3337 44 discriminator 1
	movzbl	check_symlink_mode(%rip), %eax
	testb	%al, %al
	jne	.L577
.L580:
	.loc 4 3340 11
	movzbl	print_inode(%rip), %eax
	.loc 4 3340 7
	testb	%al, %al
	je	.L582
	.loc 4 3340 23 discriminator 1
	cmpq	$0, -984(%rbp)
	je	.L577
.L582:
	.loc 4 3341 11
	movzbl	format_needs_type(%rip), %eax
	.loc 4 3341 7
	testb	%al, %al
	je	.L583
	.loc 4 3342 11
	cmpl	$0, -972(%rbp)
	je	.L577
	.loc 4 3342 31 discriminator 1
	cmpb	$0, -976(%rbp)
	jne	.L577
	.loc 4 3346 15
	cmpl	$5, -972(%rbp)
	jne	.L583
	.loc 4 3346 54 discriminator 1
	movl	indicator_style(%rip), %eax
	.loc 4 3346 34 discriminator 1
	cmpl	$3, %eax
	je	.L577
	.loc 4 3353 42
	movzbl	print_with_color(%rip), %eax
	.loc 4 3353 38
	testb	%al, %al
	je	.L583
	.loc 4 3354 46
	movl	$14, %edi
	call	is_colored
	.loc 4 3354 42
	testb	%al, %al
	jne	.L577
	.loc 4 3355 49
	movl	$16, %edi
	call	is_colored
	.loc 4 3355 46
	testb	%al, %al
	jne	.L577
	.loc 4 3356 49
	movl	$17, %edi
	call	is_colored
	.loc 4 3356 46
	testb	%al, %al
	jne	.L577
	.loc 4 3357 49
	movl	$21, %edi
	call	is_colored
	.loc 4 3357 46
	testb	%al, %al
	je	.L583
.L577:
.LBB61:
	.loc 4 3366 15
	movq	-968(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 3366 10
	cmpb	$47, %al
	je	.L584
	.loc 4 3366 36 discriminator 1
	movq	-992(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 3366 26 discriminator 1
	testb	%al, %al
	jne	.L585
.L584:
	.loc 4 3367 19
	movq	-968(%rbp), %rax
	movq	%rax, -896(%rbp)
	jmp	.L586
.L585:
	.loc 4 3370 31
	movq	-968(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	.loc 4 3370 47
	movq	-992(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 3370 45
	addq	%rbx, %rax
	.loc 4 3370 23
	addq	$2, %rax
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
.L587:
	cmpq	%rdx, %rsp
	je	.L588
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L587
.L588:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L589
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L589:
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -896(%rbp)
	.loc 4 3371 11
	movq	-968(%rbp), %rdx
	movq	-992(%rbp), %rcx
	movq	-896(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	attach
.L586:
	.loc 4 3374 11
	movzbl	print_hyperlink(%rip), %eax
	.loc 4 3374 10
	testb	%al, %al
	je	.L590
	.loc 4 3376 30
	movq	-896(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	canonicalize_filename_mode@PLT
	.loc 4 3376 28
	movq	-888(%rbp), %rdx
	movq	%rax, 16(%rdx)
	.loc 4 3378 18
	movq	-888(%rbp), %rax
	movq	16(%rax), %rax
	.loc 4 3378 14
	testq	%rax, %rax
	jne	.L590
	.loc 4 3380 27
	leaq	.LC196(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 4 3379 13
	movzbl	-976(%rbp), %eax
	movq	-896(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	file_failure
.L590:
	.loc 4 3383 7
	movl	dereference(%rip), %eax
	cmpl	$4, %eax
	ja	.L591
	cmpl	$3, %eax
	jnb	.L592
	jmp	.L593
.L591:
	cmpl	$5, %eax
	jne	.L593
	.loc 4 3386 17
	movq	-888(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_stat
	movl	%eax, -952(%rbp)
	.loc 4 3387 20
	movb	$1, -956(%rbp)
	.loc 4 3388 11
	jmp	.L594
.L592:
	.loc 4 3392 14
	cmpb	$0, -976(%rbp)
	je	.L593
.LBB62:
	.loc 4 3395 21
	movq	-888(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_stat
	movl	%eax, -952(%rbp)
	.loc 4 3396 24
	movb	$1, -956(%rbp)
	.loc 4 3398 31
	movl	dereference(%rip), %eax
	.loc 4 3398 18
	cmpl	$3, %eax
	je	.L643
	.loc 4 3403 29
	cmpl	$0, -952(%rbp)
	jns	.L596
	.loc 4 3402 31 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 4 3403 29 discriminator 1
	cmpl	$2, %eax
	sete	%al
	jmp	.L597
.L596:
	.loc 4 3403 33 discriminator 2
	movq	-888(%rbp), %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 4 3403 29 discriminator 2
	cmpl	$16384, %eax
	setne	%al
.L597:
	.loc 4 3401 26
	movb	%al, -953(%rbp)
	.loc 4 3404 19
	movzbl	-953(%rbp), %eax
	xorl	$1, %eax
	.loc 4 3404 18
	testb	%al, %al
	jne	.L644
.L593:
.LBE62:
	.loc 4 3415 17
	movq	-888(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_lstat
	movl	%eax, -952(%rbp)
	.loc 4 3416 20
	movb	$0, -956(%rbp)
	.loc 4 3417 11
	jmp	.L594
.L643:
.LBB63:
	.loc 4 3399 17
	nop
	jmp	.L594
.L644:
	.loc 4 3405 17
	nop
.L594:
.LBE63:
	.loc 4 3420 10
	cmpl	$0, -952(%rbp)
	je	.L598
	.loc 4 3426 25
	leaq	.LC202(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 4 3425 11
	movzbl	-976(%rbp), %eax
	movq	-896(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	file_failure
	.loc 4 3428 23
	movq	-888(%rbp), %rax
	leaq	UNKNOWN_SECURITY_CONTEXT(%rip), %rdx
	movq	%rdx, 176(%rax)
	.loc 4 3430 14
	cmpb	$0, -976(%rbp)
	je	.L599
	.loc 4 3431 20
	movl	$0, %eax
	jmp	.L600
.L599:
	.loc 4 3433 21
	movq	-968(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, %rdx
	.loc 4 3433 19
	movq	-888(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 4 3434 21
	movq	cwd_n_used(%rip), %rax
	addq	$1, %rax
	movq	%rax, cwd_n_used(%rip)
	.loc 4 3436 18
	movl	$0, %eax
	jmp	.L600
.L598:
	.loc 4 3439 18
	movq	-888(%rbp), %rax
	movb	$1, 184(%rax)
	.loc 4 3442 10
	cmpl	$5, -972(%rbp)
	je	.L601
	.loc 4 3442 30 discriminator 1
	movq	-888(%rbp), %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 4 3442 27 discriminator 1
	cmpl	$32768, %eax
	jne	.L602
.L601:
	.loc 4 3443 11
	movzbl	print_with_color(%rip), %eax
	testb	%al, %al
	je	.L602
	.loc 4 3443 34 discriminator 1
	movl	$21, %edi
	call	is_colored
	.loc 4 3443 31 discriminator 1
	testb	%al, %al
	je	.L602
	.loc 4 3444 29
	movq	-888(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	has_capability_cache
	.loc 4 3444 27
	movq	-888(%rbp), %rdx
	movb	%al, 192(%rdx)
.L602:
	.loc 4 3446 18
	movl	format(%rip), %eax
	.loc 4 3446 10
	testl	%eax, %eax
	je	.L603
	.loc 4 3446 33 discriminator 1
	movzbl	print_scontext(%rip), %eax
	testb	%al, %al
	je	.L604
.L603:
.LBB64:
	.loc 4 3448 16
	movb	$0, -955(%rbp)
	.loc 4 3449 16
	movb	$0, -954(%rbp)
	.loc 4 3450 26
	movzbl	-956(%rbp), %edx
	movq	-888(%rbp), %rcx
	movq	-896(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getfilecon_cache
	movl	%eax, -948(%rbp)
	.loc 4 3451 27
	movl	-948(%rbp), %eax
	shrl	$31, %eax
	.loc 4 3451 15
	movzbl	%al, %eax
	movl	%eax, -952(%rbp)
	.loc 4 3453 14
	cmpl	$0, -952(%rbp)
	jne	.L605
	.loc 4 3455 19
	call	is_smack_enabled
	.loc 4 3455 18
	testb	%al, %al
	je	.L606
	.loc 4 3456 35
	movq	-888(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC203(%rip), %rdi
	call	strcmp@PLT
	.loc 4 3456 31
	testl	%eax, %eax
	setne	%al
	movb	%al, -955(%rbp)
	jmp	.L607
.L606:
	.loc 4 3458 35
	movq	-888(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC204(%rip), %rdi
	call	strcmp@PLT
	.loc 4 3458 31
	testl	%eax, %eax
	setne	%al
	movb	%al, -955(%rbp)
	jmp	.L607
.L605:
	.loc 4 3462 27
	movq	-888(%rbp), %rax
	leaq	UNKNOWN_SECURITY_CONTEXT(%rip), %rdx
	movq	%rdx, 176(%rax)
	.loc 4 3468 31
	call	__errno_location@PLT
	.loc 4 3468 19
	movl	(%rax), %eax
	movl	%eax, %edi
	call	is_ENOTSUP
	.loc 4 3468 18
	testb	%al, %al
	jne	.L608
	.loc 4 3468 41 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 4 3468 38 discriminator 1
	cmpl	$61, %eax
	jne	.L607
.L608:
	.loc 4 3469 21
	movl	$0, -952(%rbp)
.L607:
	.loc 4 3472 14
	cmpl	$0, -952(%rbp)
	jne	.L609
	.loc 4 3472 34 discriminator 1
	movl	format(%rip), %eax
	.loc 4 3472 24 discriminator 1
	testl	%eax, %eax
	jne	.L609
.LBB65:
	.loc 4 3474 23
	movq	-888(%rbp), %rdx
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	file_has_acl_cache
	movl	%eax, -944(%rbp)
	.loc 4 3475 24
	movl	-944(%rbp), %eax
	shrl	$31, %eax
	.loc 4 3475 19
	movzbl	%al, %eax
	movl	%eax, -952(%rbp)
	.loc 4 3476 24
	cmpl	$0, -944(%rbp)
	setg	%al
	movb	%al, -954(%rbp)
.L609:
.LBE65:
	.loc 4 3481 26
	cmpb	$0, -955(%rbp)
	jne	.L610
	.loc 4 3479 41
	cmpb	$0, -954(%rbp)
	je	.L611
.L610:
	.loc 4 3481 26 discriminator 1
	cmpb	$0, -955(%rbp)
	je	.L612
	.loc 4 3481 46 discriminator 2
	movzbl	-954(%rbp), %eax
	xorl	$1, %eax
	.loc 4 3481 43 discriminator 2
	testb	%al, %al
	je	.L612
	.loc 4 3481 26 discriminator 4
	movl	$1, %eax
	jmp	.L614
.L612:
	.loc 4 3481 26 is_stmt 0 discriminator 5
	movl	$2, %eax
	jmp	.L614
.L611:
	.loc 4 3481 26
	movl	$0, %eax
.L614:
	.loc 4 3479 23 is_stmt 1
	movq	-888(%rbp), %rdx
	movl	%eax, 188(%rdx)
	.loc 4 3484 23
	movzbl	any_has_acl(%rip), %eax
	movzbl	%al, %edx
	.loc 4 3484 27
	movq	-888(%rbp), %rax
	movl	188(%rax), %eax
	.loc 4 3484 38
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 4 3484 23
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, any_has_acl(%rip)
	.loc 4 3486 14
	cmpl	$0, -952(%rbp)
	je	.L604
	.loc 4 3487 13
	movq	-896(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 4 3487 23
	call	__errno_location@PLT
	.loc 4 3487 13
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC136(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L604:
.LBE64:
	.loc 4 3490 11
	movq	-888(%rbp), %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 4 3490 10
	cmpl	$40960, %eax
	jne	.L615
	.loc 4 3491 22
	movl	format(%rip), %eax
	.loc 4 3491 11
	testl	%eax, %eax
	je	.L616
	.loc 4 3491 37 discriminator 1
	movzbl	check_symlink_mode(%rip), %eax
	testb	%al, %al
	je	.L615
.L616:
.LBB66:
	.loc 4 3495 11
	movzbl	-976(%rbp), %edx
	movq	-888(%rbp), %rcx
	movq	-896(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_link_name
	.loc 4 3496 56
	movq	-888(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 4 3496 28
	movq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_link_name
	movq	%rax, -880(%rbp)
	.loc 4 3500 14
	cmpq	$0, -880(%rbp)
	je	.L617
	.loc 4 3500 28 discriminator 1
	movq	-888(%rbp), %rax
	movl	196(%rax), %eax
	.loc 4 3500 24 discriminator 1
	testl	%eax, %eax
	jne	.L617
	.loc 4 3500 61 discriminator 2
	movq	-888(%rbp), %rax
	movq	8(%rax), %rax
	.loc 4 3500 45 discriminator 2
	movq	%rax, %rdi
	call	needs_quoting
	.loc 4 3500 42 discriminator 2
	testb	%al, %al
	je	.L617
	.loc 4 3501 23
	movq	-888(%rbp), %rax
	movl	$-1, 196(%rax)
.L617:
	.loc 4 3505 14
	cmpq	$0, -880(%rbp)
	je	.L618
	.loc 4 3506 29
	movl	indicator_style(%rip), %eax
	.loc 4 3506 15
	cmpl	$1, %eax
	ja	.L619
	.loc 4 3506 48 discriminator 1
	movzbl	check_symlink_mode(%rip), %eax
	testb	%al, %al
	je	.L618
.L619:
	.loc 4 3507 18
	leaq	-864(%rbp), %rdx
	movq	-880(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat_for_mode
	.loc 4 3507 15
	testl	%eax, %eax
	jne	.L618
	.loc 4 3509 25
	movq	-888(%rbp), %rax
	movb	$1, 185(%rax)
	.loc 4 3510 38
	movl	-840(%rbp), %edx
	.loc 4 3510 27
	movq	-888(%rbp), %rax
	movl	%edx, 172(%rax)
.L618:
	.loc 4 3512 11
	movq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L615:
.LBE66:
	.loc 4 3515 11
	movq	-888(%rbp), %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 4 3515 10
	cmpl	$40960, %eax
	jne	.L620
	.loc 4 3516 21
	movq	-888(%rbp), %rax
	movl	$6, 168(%rax)
	jmp	.L621
.L620:
	.loc 4 3517 16
	movq	-888(%rbp), %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 4 3517 15
	cmpl	$16384, %eax
	jne	.L622
	.loc 4 3519 14
	cmpb	$0, -976(%rbp)
	je	.L623
	.loc 4 3519 35 discriminator 1
	movzbl	immediate_dirs(%rip), %eax
	xorl	$1, %eax
	.loc 4 3519 32 discriminator 1
	testb	%al, %al
	je	.L623
	.loc 4 3520 25
	movq	-888(%rbp), %rax
	movl	$9, 168(%rax)
	jmp	.L621
.L623:
	.loc 4 3522 25
	movq	-888(%rbp), %rax
	movl	$3, 168(%rax)
	jmp	.L621
.L622:
	.loc 4 3525 21
	movq	-888(%rbp), %rax
	movl	$5, 168(%rax)
.L621:
	.loc 4 3527 16
	movq	-888(%rbp), %rax
	movq	88(%rax), %rax
	.loc 4 3527 14
	movq	%rax, -904(%rbp)
	.loc 4 3528 18
	movl	format(%rip), %eax
	.loc 4 3528 10
	testl	%eax, %eax
	je	.L625
	.loc 4 3528 33 discriminator 1
	movzbl	print_block_size(%rip), %eax
	testb	%al, %al
	je	.L626
.L625:
.LBB67:
	.loc 4 3531 21
	movq	output_block_size(%rip), %rcx
	movl	human_output_opts(%rip), %edx
	.loc 4 3531 31
	leaq	-688(%rbp), %rsi
	movq	-904(%rbp), %rax
	movq	%rcx, %r8
	movl	$512, %ecx
	movq	%rax, %rdi
	call	human_readable@PLT
	.loc 4 3531 21
	movl	$0, %esi
	movq	%rax, %rdi
	call	gnu_mbswidth@PLT
	movl	%eax, -940(%rbp)
	.loc 4 3534 32
	movl	block_size_width(%rip), %eax
	.loc 4 3534 14
	cmpl	%eax, -940(%rbp)
	jle	.L626
	.loc 4 3535 30
	movl	-940(%rbp), %eax
	movl	%eax, block_size_width(%rip)
.L626:
.LBE67:
	.loc 4 3538 18
	movl	format(%rip), %eax
	.loc 4 3538 10
	testl	%eax, %eax
	jne	.L628
	.loc 4 3540 15
	movzbl	print_owner(%rip), %eax
	.loc 4 3540 14
	testb	%al, %al
	je	.L629
.LBB68:
	.loc 4 3542 25
	movq	-888(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, %edi
	call	format_user_width
	movl	%eax, -936(%rbp)
	.loc 4 3543 31
	movl	owner_width(%rip), %eax
	.loc 4 3543 18
	cmpl	%eax, -936(%rbp)
	jle	.L629
	.loc 4 3544 29
	movl	-936(%rbp), %eax
	movl	%eax, owner_width(%rip)
.L629:
.LBE68:
	.loc 4 3547 15
	movzbl	print_group(%rip), %eax
	.loc 4 3547 14
	testb	%al, %al
	je	.L630
.LBB69:
	.loc 4 3549 25
	movq	-888(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %edi
	call	format_group_width
	movl	%eax, -932(%rbp)
	.loc 4 3550 31
	movl	group_width(%rip), %eax
	.loc 4 3550 18
	cmpl	%eax, -932(%rbp)
	jle	.L630
	.loc 4 3551 29
	movl	-932(%rbp), %eax
	movl	%eax, group_width(%rip)
.L630:
.LBE69:
	.loc 4 3554 15
	movzbl	print_author(%rip), %eax
	.loc 4 3554 14
	testb	%al, %al
	je	.L628
.LBB70:
	.loc 4 3556 25
	movq	-888(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, %edi
	call	format_user_width
	movl	%eax, -928(%rbp)
	.loc 4 3557 32
	movl	author_width(%rip), %eax
	.loc 4 3557 18
	cmpl	%eax, -928(%rbp)
	jle	.L628
	.loc 4 3558 30
	movl	-928(%rbp), %eax
	movl	%eax, author_width(%rip)
.L628:
.LBE70:
	.loc 4 3562 11
	movzbl	print_scontext(%rip), %eax
	.loc 4 3562 10
	testb	%al, %al
	je	.L631
.LBB71:
	.loc 4 3564 30
	movq	-888(%rbp), %rax
	movq	176(%rax), %rax
	.loc 4 3564 21
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 3564 15
	movl	%eax, -924(%rbp)
	.loc 4 3565 30
	movl	scontext_width(%rip), %eax
	.loc 4 3565 14
	cmpl	%eax, -924(%rbp)
	jle	.L631
	.loc 4 3566 28
	movl	-924(%rbp), %eax
	movl	%eax, scontext_width(%rip)
.L631:
.LBE71:
	.loc 4 3569 18
	movl	format(%rip), %eax
	.loc 4 3569 10
	testl	%eax, %eax
	jne	.L583
.LBB72:
	.loc 4 3572 31
	movq	-888(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-720(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	.loc 4 3572 23
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 3572 15
	movl	%eax, -920(%rbp)
	.loc 4 3573 27
	movl	nlink_width(%rip), %eax
	.loc 4 3573 14
	cmpl	%eax, -920(%rbp)
	jle	.L632
	.loc 4 3574 25
	movl	-920(%rbp), %eax
	movl	%eax, nlink_width(%rip)
.L632:
	.loc 4 3576 15
	movq	-888(%rbp), %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 4 3576 14
	cmpl	$8192, %eax
	je	.L633
	.loc 4 3576 44 discriminator 1
	movq	-888(%rbp), %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 4 3576 41 discriminator 1
	cmpl	$24576, %eax
	jne	.L634
.L633:
.LBB73:
	.loc 4 3579 44
	movq	-888(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	gnu_dev_major@PLT
	.loc 4 3579 33
	movl	%eax, %edx
	leaq	-688(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	umaxtostr@PLT
	.loc 4 3579 25
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 3579 19
	movl	%eax, -912(%rbp)
	.loc 4 3580 45
	movl	major_device_number_width(%rip), %eax
	.loc 4 3580 18
	cmpl	%eax, -912(%rbp)
	jle	.L635
	.loc 4 3581 43
	movl	-912(%rbp), %eax
	movl	%eax, major_device_number_width(%rip)
.L635:
	.loc 4 3582 40
	movq	-888(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	gnu_dev_minor@PLT
	.loc 4 3582 29
	movl	%eax, %edx
	leaq	-688(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	umaxtostr@PLT
	.loc 4 3582 21
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 3582 19
	movl	%eax, -912(%rbp)
	.loc 4 3583 45
	movl	minor_device_number_width(%rip), %eax
	.loc 4 3583 18
	cmpl	%eax, -912(%rbp)
	jle	.L636
	.loc 4 3584 43
	movl	-912(%rbp), %eax
	movl	%eax, minor_device_number_width(%rip)
.L636:
	.loc 4 3585 47
	movl	major_device_number_width(%rip), %eax
	leal	2(%rax), %edx
	.loc 4 3585 51
	movl	minor_device_number_width(%rip), %eax
	.loc 4 3585 19
	addl	%edx, %eax
	movl	%eax, -912(%rbp)
	.loc 4 3586 35
	movl	file_size_width(%rip), %eax
	.loc 4 3586 18
	cmpl	%eax, -912(%rbp)
	jle	.L645
	.loc 4 3587 33
	movl	-912(%rbp), %eax
	movl	%eax, file_size_width(%rip)
.LBE73:
	.loc 4 3577 13
	jmp	.L645
.L634:
.LBB74:
	.loc 4 3592 32
	movq	-888(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	unsigned_file_size
	movq	%rax, -872(%rbp)
	.loc 4 3593 25
	movq	file_output_block_size(%rip), %rcx
	movl	file_human_output_opts(%rip), %edx
	.loc 4 3593 35
	leaq	-688(%rbp), %rsi
	movq	-872(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	human_readable@PLT
	.loc 4 3593 25
	movl	$0, %esi
	movq	%rax, %rdi
	call	gnu_mbswidth@PLT
	movl	%eax, -916(%rbp)
	.loc 4 3597 35
	movl	file_size_width(%rip), %eax
	.loc 4 3597 18
	cmpl	%eax, -916(%rbp)
	jle	.L583
	.loc 4 3598 33
	movl	-916(%rbp), %eax
	movl	%eax, file_size_width(%rip)
	jmp	.L583
.L645:
.LBE74:
	.loc 4 3577 13
	nop
.L583:
.LBE72:
.LBE61:
	.loc 4 3603 7
	movzbl	print_inode(%rip), %eax
	.loc 4 3603 6
	testb	%al, %al
	je	.L640
.LBB75:
	.loc 4 3606 25
	movq	-888(%rbp), %rax
	movq	32(%rax), %rax
	leaq	-688(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	.loc 4 3606 17
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 3606 11
	movl	%eax, -908(%rbp)
	.loc 4 3607 30
	movl	inode_number_width(%rip), %eax
	.loc 4 3607 10
	cmpl	%eax, -908(%rbp)
	jle	.L640
	.loc 4 3608 28
	movl	-908(%rbp), %eax
	movl	%eax, inode_number_width(%rip)
.L640:
.LBE75:
	.loc 4 3611 13
	movq	-968(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	movq	%rax, %rdx
	.loc 4 3611 11
	movq	-888(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 4 3612 13
	movq	cwd_n_used(%rip), %rax
	addq	$1, %rax
	movq	%rax, cwd_n_used(%rip)
	.loc 4 3614 10
	movq	-904(%rbp), %rax
.L600:
	.loc 4 3615 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L642
	call	__stack_chk_fail@PLT
.L642:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.size	gobble_file, .-gobble_file
	.type	is_directory, @function
is_directory:
.LFB129:
	.loc 4 3620 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 4 3621 11
	movq	-8(%rbp), %rax
	movl	168(%rax), %eax
	.loc 4 3621 35
	cmpl	$3, %eax
	je	.L647
	.loc 4 3621 39 discriminator 2
	movq	-8(%rbp), %rax
	movl	168(%rax), %eax
	.loc 4 3621 35 discriminator 2
	cmpl	$9, %eax
	jne	.L648
.L647:
	.loc 4 3621 35 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L649
.L648:
	.loc 4 3621 35 discriminator 4
	movl	$0, %eax
.L649:
	.loc 4 3621 35 discriminator 6
	andl	$1, %eax
	.loc 4 3622 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.size	is_directory, .-is_directory
	.type	is_linked_directory, @function
is_linked_directory:
.LFB130:
	.loc 4 3627 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 4 3628 11
	movq	-8(%rbp), %rax
	movl	168(%rax), %eax
	.loc 4 3629 10
	cmpl	$3, %eax
	je	.L652
	.loc 4 3628 39
	movq	-8(%rbp), %rax
	movl	168(%rax), %eax
	.loc 4 3628 35
	cmpl	$9, %eax
	je	.L652
	.loc 4 3629 13 discriminator 2
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
	andl	$61440, %eax
	.loc 4 3629 10 discriminator 2
	cmpl	$16384, %eax
	jne	.L653
.L652:
	.loc 4 3629 10 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L654
.L653:
	.loc 4 3629 10 discriminator 3
	movl	$0, %eax
.L654:
	.loc 4 3629 10 discriminator 5
	andl	$1, %eax
	.loc 4 3630 1 is_stmt 1 discriminator 5
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE130:
	.size	is_linked_directory, .-is_linked_directory
	.section	.rodata
.LC205:
	.string	"cannot read symbolic link %s"
	.text
	.type	get_link_name, @function
get_link_name:
.LFB131:
	.loc 4 3638 1
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
	movl	%edx, %eax
	movb	%al, -20(%rbp)
	.loc 4 3639 55
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	.loc 4 3639 17
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	areadlink_with_size@PLT
	.loc 4 3639 15
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	.loc 4 3640 8
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	.loc 4 3640 6
	testq	%rax, %rax
	jne	.L658
	.loc 4 3641 37
	leaq	.LC205(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 4 3641 5
	movzbl	-20(%rbp), %eax
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	file_failure
.L658:
	.loc 4 3643 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE131:
	.size	get_link_name, .-get_link_name
	.type	make_link_name, @function
make_link_name:
.LFB132:
	.loc 4 3652 1
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
	.loc 4 3653 6
	cmpq	$0, -32(%rbp)
	jne	.L660
	.loc 4 3654 12
	movl	$0, %eax
	jmp	.L661
.L660:
	.loc 4 3656 7
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 3656 6
	cmpb	$47, %al
	jne	.L662
	.loc 4 3657 12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	jmp	.L661
.L662:
	.loc 4 3661 23
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dir_len@PLT
	movq	%rax, -16(%rbp)
	.loc 4 3662 6
	cmpq	$0, -16(%rbp)
	jne	.L663
	.loc 4 3663 12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	xstrdup@PLT
	jmp	.L661
.L663:
	.loc 4 3665 39
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 3665 37
	movq	-16(%rbp), %rdx
	addq	%rdx, %rax
	.loc 4 3665 13
	addq	$2, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 4 3670 10
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 4 3670 6
	cmpb	$47, %al
	je	.L664
	.loc 4 3671 5
	addq	$1, -16(%rbp)
.L664:
	.loc 4 3673 3
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stpncpy@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	.loc 4 3674 10
	movq	-8(%rbp), %rax
.L661:
	.loc 4 3675 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.size	make_link_name, .-make_link_name
	.type	basename_is_dot_or_dotdot, @function
basename_is_dot_or_dotdot:
.LFB133:
	.loc 4 3682 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 4 3683 22
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	movq	%rax, -8(%rbp)
	.loc 4 3684 10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dot_or_dotdot
	.loc 4 3685 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.size	basename_is_dot_or_dotdot, .-basename_is_dot_or_dotdot
	.type	extract_dirs_from_files, @function
extract_dirs_from_files:
.LFB134:
	.loc 4 3697 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movb	%al, -60(%rbp)
	.loc 4 3700 8
	cmpq	$0, -56(%rbp)
	setne	%al
	movb	%al, -41(%rbp)
	.loc 4 3702 6
	cmpq	$0, -56(%rbp)
	je	.L668
	.loc 4 3702 18 discriminator 1
	movq	active_dir_set(%rip), %rax
	.loc 4 3702 15 discriminator 1
	testq	%rax, %rax
	je	.L668
	.loc 4 3707 7
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	queue_directory
.L668:
	.loc 4 3712 10
	movq	cwd_n_used(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 4 3712 3
	jmp	.L669
.L674:
.LBB76:
	.loc 4 3714 39
	movq	sorted_file(%rip), %rax
	movq	-40(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 4 3714 24
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 4 3716 11
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	is_directory
	.loc 4 3716 10
	testb	%al, %al
	je	.L669
	.loc 4 3717 15
	movzbl	-41(%rbp), %eax
	xorl	$1, %eax
	.loc 4 3717 11
	testb	%al, %al
	jne	.L670
	.loc 4 3718 48
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 3718 20
	movq	%rax, %rdi
	call	basename_is_dot_or_dotdot
	.loc 4 3718 18
	xorl	$1, %eax
	.loc 4 3718 15
	testb	%al, %al
	je	.L669
.L670:
	.loc 4 3720 14
	cmpq	$0, -56(%rbp)
	je	.L671
	.loc 4 3720 28 discriminator 1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 3720 34 discriminator 1
	movzbl	(%rax), %eax
	.loc 4 3720 24 discriminator 1
	cmpb	$47, %al
	jne	.L672
.L671:
	.loc 4 3721 13
	movzbl	-60(%rbp), %edx
	.loc 4 3721 40
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 4 3721 31
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 3721 13
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	queue_directory
	jmp	.L673
.L672:
.LBB77:
	.loc 4 3724 56
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	.loc 4 3724 28
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_name_concat@PLT
	movq	%rax, -8(%rbp)
	.loc 4 3725 15
	movzbl	-60(%rbp), %edx
	.loc 4 3725 39
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	.loc 4 3725 15
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	queue_directory
	.loc 4 3726 15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L673:
.LBE77:
	.loc 4 3728 16
	movq	-16(%rbp), %rax
	movl	168(%rax), %eax
	.loc 4 3728 14
	cmpl	$9, %eax
	jne	.L669
	.loc 4 3729 13
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free_ent
.L669:
.LBE76:
	.loc 4 3712 25 discriminator 1
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	.loc 4 3712 3 discriminator 1
	testq	%rax, %rax
	jne	.L674
	.loc 4 3736 10
	movq	$0, -40(%rbp)
	.loc 4 3736 17
	movq	$0, -32(%rbp)
	.loc 4 3736 3
	jmp	.L675
.L676:
.LBB78:
	.loc 4 3738 39 discriminator 3
	movq	sorted_file(%rip), %rax
	movq	-40(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 4 3738 24 discriminator 3
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 4 3739 18 discriminator 3
	movq	sorted_file(%rip), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	.loc 4 3739 22 discriminator 3
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 4 3740 14 discriminator 3
	movq	-24(%rbp), %rax
	movl	168(%rax), %eax
	.loc 4 3740 25 discriminator 3
	cmpl	$9, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 4 3740 9 discriminator 3
	addq	%rax, -32(%rbp)
.LBE78:
	.loc 4 3736 39 discriminator 3
	addq	$1, -40(%rbp)
.L675:
	.loc 4 3736 24 discriminator 1
	movq	cwd_n_used(%rip), %rax
	.loc 4 3736 3 discriminator 1
	cmpq	%rax, -40(%rbp)
	jb	.L676
	.loc 4 3742 14
	movq	-32(%rbp), %rax
	movq	%rax, cwd_n_used(%rip)
	.loc 4 3743 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.size	extract_dirs_from_files, .-extract_dirs_from_files
	.local	failed_strcoll
	.comm	failed_strcoll,200,32
	.section	.rodata
	.align 8
.LC206:
	.string	"cannot compare file names %s and %s"
	.text
	.type	xstrcoll, @function
xstrcoll:
.LFB135:
	.loc 4 3752 1
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
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 4 3754 3
	call	__errno_location@PLT
	.loc 4 3754 9
	movl	$0, (%rax)
	.loc 4 3755 10
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcoll@PLT
	movl	%eax, -36(%rbp)
	.loc 4 3756 7
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 4 3756 6
	testl	%eax, %eax
	je	.L678
	.loc 4 3758 7
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	quote_n@PLT
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	quote_n@PLT
	movq	%rax, %r12
	.loc 4 3758 24
	leaq	.LC206(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 4 3758 17
	call	__errno_location@PLT
	.loc 4 3758 7
	movl	(%rax), %eax
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 4 3760 7
	movl	$0, %edi
	call	set_exit_status
	.loc 4 3761 7
	movl	$1, %esi
	leaq	failed_strcoll(%rip), %rdi
	call	longjmp@PLT
.L678:
	.loc 4 3763 10
	movl	-36(%rbp), %eax
	.loc 4 3764 1
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.size	xstrcoll, .-xstrcoll
	.type	cmp_ctime, @function
cmp_ctime:
.LFB136:
	.loc 4 3819 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 4 3820 14
	movq	-56(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	get_stat_ctime@PLT
	movq	%rax, %r12
	movq	%rdx, %r13
	movq	-64(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	get_stat_ctime@PLT
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rcx, %rsi
	movq	%rdx, %rax
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	timespec_cmp@PLT
	movl	%eax, -36(%rbp)
	.loc 4 3822 22
	cmpl	$0, -36(%rbp)
	jne	.L681
	.loc 4 3822 39 discriminator 1
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	.loc 4 3822 30 discriminator 1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 3822 24 discriminator 1
	movq	-72(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.LVL0:
	.loc 4 3822 22 discriminator 1
	jmp	.L683
.L681:
	.loc 4 3822 22 is_stmt 0 discriminator 2
	movl	-36(%rbp), %eax
.L683:
	.loc 4 3823 1 is_stmt 1 discriminator 5
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE136:
	.size	cmp_ctime, .-cmp_ctime
	.type	cmp_mtime, @function
cmp_mtime:
.LFB137:
	.loc 4 3828 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 4 3829 14
	movq	-56(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, %r12
	movq	%rdx, %r13
	movq	-64(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rcx, %rsi
	movq	%rdx, %rax
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	timespec_cmp@PLT
	movl	%eax, -36(%rbp)
	.loc 4 3831 22
	cmpl	$0, -36(%rbp)
	jne	.L685
	.loc 4 3831 39 discriminator 1
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	.loc 4 3831 30 discriminator 1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 3831 24 discriminator 1
	movq	-72(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.LVL1:
	.loc 4 3831 22 discriminator 1
	jmp	.L687
.L685:
	.loc 4 3831 22 is_stmt 0 discriminator 2
	movl	-36(%rbp), %eax
.L687:
	.loc 4 3832 1 is_stmt 1 discriminator 5
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE137:
	.size	cmp_mtime, .-cmp_mtime
	.type	cmp_atime, @function
cmp_atime:
.LFB138:
	.loc 4 3837 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 4 3838 14
	movq	-56(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	get_stat_atime@PLT
	movq	%rax, %r12
	movq	%rdx, %r13
	movq	-64(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	get_stat_atime@PLT
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rcx, %rsi
	movq	%rdx, %rax
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	timespec_cmp@PLT
	movl	%eax, -36(%rbp)
	.loc 4 3840 22
	cmpl	$0, -36(%rbp)
	jne	.L689
	.loc 4 3840 39 discriminator 1
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	.loc 4 3840 30 discriminator 1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 3840 24 discriminator 1
	movq	-72(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.LVL2:
	.loc 4 3840 22 discriminator 1
	jmp	.L691
.L689:
	.loc 4 3840 22 is_stmt 0 discriminator 2
	movl	-36(%rbp), %eax
.L691:
	.loc 4 3841 1 is_stmt 1 discriminator 5
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE138:
	.size	cmp_atime, .-cmp_atime
	.type	cmp_btime, @function
cmp_btime:
.LFB139:
	.loc 4 3846 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 4 3847 14
	movq	-56(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	get_stat_btime
	movq	%rax, %r12
	movq	%rdx, %r13
	movq	-64(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	get_stat_btime
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rcx, %rsi
	movq	%rdx, %rax
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	timespec_cmp@PLT
	movl	%eax, -36(%rbp)
	.loc 4 3849 22
	cmpl	$0, -36(%rbp)
	jne	.L693
	.loc 4 3849 39 discriminator 1
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	.loc 4 3849 30 discriminator 1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 3849 24 discriminator 1
	movq	-72(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.LVL3:
	.loc 4 3849 22 discriminator 1
	jmp	.L695
.L693:
	.loc 4 3849 22 is_stmt 0 discriminator 2
	movl	-36(%rbp), %eax
.L695:
	.loc 4 3850 1 is_stmt 1 discriminator 5
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE139:
	.size	cmp_btime, .-cmp_btime
	.type	cmp_size, @function
cmp_size:
.LFB140:
	.loc 4 3855 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 4 3856 14
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L697
	.loc 4 3856 14 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	%rax, %rdx
	setg	%al
	movzbl	%al, %eax
	jmp	.L698
.L697:
	.loc 4 3856 14 discriminator 2
	movl	$-1, %eax
.L698:
	.loc 4 3856 7 is_stmt 1 discriminator 4
	movl	%eax, -4(%rbp)
	.loc 4 3857 22 discriminator 4
	cmpl	$0, -4(%rbp)
	jne	.L699
	.loc 4 3857 39 discriminator 1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	.loc 4 3857 30 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 3857 24 discriminator 1
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.LVL4:
	.loc 4 3857 22 discriminator 1
	jmp	.L701
.L699:
	.loc 4 3857 22 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax
.L701:
	.loc 4 3858 1 is_stmt 1 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE140:
	.size	cmp_size, .-cmp_size
	.type	cmp_name, @function
cmp_name:
.LFB141:
	.loc 4 3863 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 4 3864 25
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	.loc 4 3864 16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 3864 10
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.LVL5:
	.loc 4 3865 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE141:
	.size	cmp_name, .-cmp_name
	.type	cmp_extension, @function
cmp_extension:
.LFB142:
	.loc 4 3873 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 4 3874 33
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 3874 23
	movl	$46, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -16(%rbp)
	.loc 4 3875 33
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 3875 23
	movl	$46, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -8(%rbp)
	.loc 4 3876 14
	cmpq	$0, -8(%rbp)
	je	.L705
	.loc 4 3876 14 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rdx
	jmp	.L706
.L705:
	.loc 4 3876 14 discriminator 2
	leaq	.LC18(%rip), %rdx
.L706:
	.loc 4 3876 14 discriminator 4
	cmpq	$0, -16(%rbp)
	je	.L707
	.loc 4 3876 14 discriminator 5
	movq	-16(%rbp), %rax
	jmp	.L708
.L707:
	.loc 4 3876 14 discriminator 6
	leaq	.LC18(%rip), %rax
.L708:
	.loc 4 3876 14 discriminator 8
	movq	-56(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.LVL6:
	movl	%eax, -20(%rbp)
	.loc 4 3877 22 is_stmt 1 discriminator 8
	cmpl	$0, -20(%rbp)
	jne	.L709
	.loc 4 3877 39 discriminator 1
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	.loc 4 3877 30 discriminator 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 3877 24 discriminator 1
	movq	-56(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.LVL7:
	.loc 4 3877 22 discriminator 1
	jmp	.L711
.L709:
	.loc 4 3877 22 is_stmt 0 discriminator 2
	movl	-20(%rbp), %eax
.L711:
	.loc 4 3878 1 is_stmt 1 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.size	cmp_extension, .-cmp_extension
	.type	xstrcoll_ctime, @function
xstrcoll_ctime:
.LFB143:
	.loc 4 3880 1
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
	.loc 4 3880 1
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_ctime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE143:
	.size	xstrcoll_ctime, .-xstrcoll_ctime
	.type	strcmp_ctime, @function
strcmp_ctime:
.LFB144:
	.loc 4 3880 1
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
	.loc 4 3880 1
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_ctime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	strcmp_ctime, .-strcmp_ctime
	.type	rev_xstrcoll_ctime, @function
rev_xstrcoll_ctime:
.LFB145:
	.loc 4 3880 1
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
	.loc 4 3880 1
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_ctime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	rev_xstrcoll_ctime, .-rev_xstrcoll_ctime
	.type	rev_strcmp_ctime, @function
rev_strcmp_ctime:
.LFB146:
	.loc 4 3880 1
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
	.loc 4 3880 1
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_ctime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	rev_strcmp_ctime, .-rev_strcmp_ctime
	.type	xstrcoll_df_ctime, @function
xstrcoll_df_ctime:
.LFB147:
	.loc 4 3880 1
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
.LBB79:
	.loc 4 3880 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L721
	.loc 4 3880 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L721
	.loc 4 3880 1 discriminator 3
	movl	$-1, %eax
	jmp	.L722
.L721:
	.loc 4 3880 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L723
	.loc 4 3880 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L723
	.loc 4 3880 1 discriminator 7
	movl	$1, %eax
	jmp	.L722
.L723:
.LBE79:
	.loc 4 3880 1 discriminator 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_ctime
.L722:
	.loc 4 3880 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	xstrcoll_df_ctime, .-xstrcoll_df_ctime
	.type	strcmp_df_ctime, @function
strcmp_df_ctime:
.LFB148:
	.loc 4 3880 1 is_stmt 1
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
.LBB80:
	.loc 4 3880 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L725
	.loc 4 3880 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L725
	.loc 4 3880 1 discriminator 3
	movl	$-1, %eax
	jmp	.L726
.L725:
	.loc 4 3880 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L727
	.loc 4 3880 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L727
	.loc 4 3880 1 discriminator 7
	movl	$1, %eax
	jmp	.L726
.L727:
.LBE80:
	.loc 4 3880 1 discriminator 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_ctime
.L726:
	.loc 4 3880 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	strcmp_df_ctime, .-strcmp_df_ctime
	.type	rev_xstrcoll_df_ctime, @function
rev_xstrcoll_df_ctime:
.LFB149:
	.loc 4 3880 1 is_stmt 1
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
.LBB81:
	.loc 4 3880 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L729
	.loc 4 3880 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L729
	.loc 4 3880 1 discriminator 3
	movl	$-1, %eax
	jmp	.L730
.L729:
	.loc 4 3880 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L731
	.loc 4 3880 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L731
	.loc 4 3880 1 discriminator 7
	movl	$1, %eax
	jmp	.L730
.L731:
.LBE81:
	.loc 4 3880 1 discriminator 8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_ctime
.L730:
	.loc 4 3880 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.size	rev_xstrcoll_df_ctime, .-rev_xstrcoll_df_ctime
	.type	rev_strcmp_df_ctime, @function
rev_strcmp_df_ctime:
.LFB150:
	.loc 4 3880 1 is_stmt 1
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
.LBB82:
	.loc 4 3880 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L733
	.loc 4 3880 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L733
	.loc 4 3880 1 discriminator 3
	movl	$-1, %eax
	jmp	.L734
.L733:
	.loc 4 3880 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L735
	.loc 4 3880 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L735
	.loc 4 3880 1 discriminator 7
	movl	$1, %eax
	jmp	.L734
.L735:
.LBE82:
	.loc 4 3880 1 discriminator 8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_ctime
.L734:
	.loc 4 3880 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE150:
	.size	rev_strcmp_df_ctime, .-rev_strcmp_df_ctime
	.type	xstrcoll_mtime, @function
xstrcoll_mtime:
.LFB151:
	.loc 4 3881 1 is_stmt 1
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
	.loc 4 3881 1
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_mtime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE151:
	.size	xstrcoll_mtime, .-xstrcoll_mtime
	.type	strcmp_mtime, @function
strcmp_mtime:
.LFB152:
	.loc 4 3881 1
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
	.loc 4 3881 1
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_mtime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE152:
	.size	strcmp_mtime, .-strcmp_mtime
	.type	rev_xstrcoll_mtime, @function
rev_xstrcoll_mtime:
.LFB153:
	.loc 4 3881 1
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
	.loc 4 3881 1
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_mtime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE153:
	.size	rev_xstrcoll_mtime, .-rev_xstrcoll_mtime
	.type	rev_strcmp_mtime, @function
rev_strcmp_mtime:
.LFB154:
	.loc 4 3881 1
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
	.loc 4 3881 1
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_mtime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE154:
	.size	rev_strcmp_mtime, .-rev_strcmp_mtime
	.type	xstrcoll_df_mtime, @function
xstrcoll_df_mtime:
.LFB155:
	.loc 4 3881 1
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
.LBB83:
	.loc 4 3881 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L745
	.loc 4 3881 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L745
	.loc 4 3881 1 discriminator 3
	movl	$-1, %eax
	jmp	.L746
.L745:
	.loc 4 3881 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L747
	.loc 4 3881 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L747
	.loc 4 3881 1 discriminator 7
	movl	$1, %eax
	jmp	.L746
.L747:
.LBE83:
	.loc 4 3881 1 discriminator 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_mtime
.L746:
	.loc 4 3881 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE155:
	.size	xstrcoll_df_mtime, .-xstrcoll_df_mtime
	.type	strcmp_df_mtime, @function
strcmp_df_mtime:
.LFB156:
	.loc 4 3881 1 is_stmt 1
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
.LBB84:
	.loc 4 3881 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L749
	.loc 4 3881 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L749
	.loc 4 3881 1 discriminator 3
	movl	$-1, %eax
	jmp	.L750
.L749:
	.loc 4 3881 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L751
	.loc 4 3881 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L751
	.loc 4 3881 1 discriminator 7
	movl	$1, %eax
	jmp	.L750
.L751:
.LBE84:
	.loc 4 3881 1 discriminator 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_mtime
.L750:
	.loc 4 3881 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE156:
	.size	strcmp_df_mtime, .-strcmp_df_mtime
	.type	rev_xstrcoll_df_mtime, @function
rev_xstrcoll_df_mtime:
.LFB157:
	.loc 4 3881 1 is_stmt 1
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
.LBB85:
	.loc 4 3881 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L753
	.loc 4 3881 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L753
	.loc 4 3881 1 discriminator 3
	movl	$-1, %eax
	jmp	.L754
.L753:
	.loc 4 3881 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L755
	.loc 4 3881 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L755
	.loc 4 3881 1 discriminator 7
	movl	$1, %eax
	jmp	.L754
.L755:
.LBE85:
	.loc 4 3881 1 discriminator 8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_mtime
.L754:
	.loc 4 3881 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE157:
	.size	rev_xstrcoll_df_mtime, .-rev_xstrcoll_df_mtime
	.type	rev_strcmp_df_mtime, @function
rev_strcmp_df_mtime:
.LFB158:
	.loc 4 3881 1 is_stmt 1
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
.LBB86:
	.loc 4 3881 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L757
	.loc 4 3881 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L757
	.loc 4 3881 1 discriminator 3
	movl	$-1, %eax
	jmp	.L758
.L757:
	.loc 4 3881 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L759
	.loc 4 3881 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L759
	.loc 4 3881 1 discriminator 7
	movl	$1, %eax
	jmp	.L758
.L759:
.LBE86:
	.loc 4 3881 1 discriminator 8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_mtime
.L758:
	.loc 4 3881 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE158:
	.size	rev_strcmp_df_mtime, .-rev_strcmp_df_mtime
	.type	xstrcoll_atime, @function
xstrcoll_atime:
.LFB159:
	.loc 4 3882 1 is_stmt 1
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
	.loc 4 3882 1
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_atime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE159:
	.size	xstrcoll_atime, .-xstrcoll_atime
	.type	strcmp_atime, @function
strcmp_atime:
.LFB160:
	.loc 4 3882 1
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
	.loc 4 3882 1
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_atime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	strcmp_atime, .-strcmp_atime
	.type	rev_xstrcoll_atime, @function
rev_xstrcoll_atime:
.LFB161:
	.loc 4 3882 1
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
	.loc 4 3882 1
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_atime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	rev_xstrcoll_atime, .-rev_xstrcoll_atime
	.type	rev_strcmp_atime, @function
rev_strcmp_atime:
.LFB162:
	.loc 4 3882 1
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
	.loc 4 3882 1
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_atime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	rev_strcmp_atime, .-rev_strcmp_atime
	.type	xstrcoll_df_atime, @function
xstrcoll_df_atime:
.LFB163:
	.loc 4 3882 1
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
.LBB87:
	.loc 4 3882 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L769
	.loc 4 3882 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L769
	.loc 4 3882 1 discriminator 3
	movl	$-1, %eax
	jmp	.L770
.L769:
	.loc 4 3882 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L771
	.loc 4 3882 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L771
	.loc 4 3882 1 discriminator 7
	movl	$1, %eax
	jmp	.L770
.L771:
.LBE87:
	.loc 4 3882 1 discriminator 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_atime
.L770:
	.loc 4 3882 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	xstrcoll_df_atime, .-xstrcoll_df_atime
	.type	strcmp_df_atime, @function
strcmp_df_atime:
.LFB164:
	.loc 4 3882 1 is_stmt 1
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
.LBB88:
	.loc 4 3882 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L773
	.loc 4 3882 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L773
	.loc 4 3882 1 discriminator 3
	movl	$-1, %eax
	jmp	.L774
.L773:
	.loc 4 3882 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L775
	.loc 4 3882 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L775
	.loc 4 3882 1 discriminator 7
	movl	$1, %eax
	jmp	.L774
.L775:
.LBE88:
	.loc 4 3882 1 discriminator 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_atime
.L774:
	.loc 4 3882 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	strcmp_df_atime, .-strcmp_df_atime
	.type	rev_xstrcoll_df_atime, @function
rev_xstrcoll_df_atime:
.LFB165:
	.loc 4 3882 1 is_stmt 1
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
.LBB89:
	.loc 4 3882 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L777
	.loc 4 3882 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L777
	.loc 4 3882 1 discriminator 3
	movl	$-1, %eax
	jmp	.L778
.L777:
	.loc 4 3882 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L779
	.loc 4 3882 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L779
	.loc 4 3882 1 discriminator 7
	movl	$1, %eax
	jmp	.L778
.L779:
.LBE89:
	.loc 4 3882 1 discriminator 8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_atime
.L778:
	.loc 4 3882 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	rev_xstrcoll_df_atime, .-rev_xstrcoll_df_atime
	.type	rev_strcmp_df_atime, @function
rev_strcmp_df_atime:
.LFB166:
	.loc 4 3882 1 is_stmt 1
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
.LBB90:
	.loc 4 3882 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L781
	.loc 4 3882 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L781
	.loc 4 3882 1 discriminator 3
	movl	$-1, %eax
	jmp	.L782
.L781:
	.loc 4 3882 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L783
	.loc 4 3882 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L783
	.loc 4 3882 1 discriminator 7
	movl	$1, %eax
	jmp	.L782
.L783:
.LBE90:
	.loc 4 3882 1 discriminator 8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_atime
.L782:
	.loc 4 3882 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	rev_strcmp_df_atime, .-rev_strcmp_df_atime
	.type	xstrcoll_btime, @function
xstrcoll_btime:
.LFB167:
	.loc 4 3883 1 is_stmt 1
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
	.loc 4 3883 1
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_btime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	xstrcoll_btime, .-xstrcoll_btime
	.type	strcmp_btime, @function
strcmp_btime:
.LFB168:
	.loc 4 3883 1
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
	.loc 4 3883 1
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_btime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	strcmp_btime, .-strcmp_btime
	.type	rev_xstrcoll_btime, @function
rev_xstrcoll_btime:
.LFB169:
	.loc 4 3883 1
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
	.loc 4 3883 1
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_btime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	rev_xstrcoll_btime, .-rev_xstrcoll_btime
	.type	rev_strcmp_btime, @function
rev_strcmp_btime:
.LFB170:
	.loc 4 3883 1
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
	.loc 4 3883 1
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_btime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	rev_strcmp_btime, .-rev_strcmp_btime
	.type	xstrcoll_df_btime, @function
xstrcoll_df_btime:
.LFB171:
	.loc 4 3883 1
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
.LBB91:
	.loc 4 3883 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L793
	.loc 4 3883 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L793
	.loc 4 3883 1 discriminator 3
	movl	$-1, %eax
	jmp	.L794
.L793:
	.loc 4 3883 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L795
	.loc 4 3883 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L795
	.loc 4 3883 1 discriminator 7
	movl	$1, %eax
	jmp	.L794
.L795:
.LBE91:
	.loc 4 3883 1 discriminator 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_btime
.L794:
	.loc 4 3883 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	xstrcoll_df_btime, .-xstrcoll_df_btime
	.type	strcmp_df_btime, @function
strcmp_df_btime:
.LFB172:
	.loc 4 3883 1 is_stmt 1
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
.LBB92:
	.loc 4 3883 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L797
	.loc 4 3883 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L797
	.loc 4 3883 1 discriminator 3
	movl	$-1, %eax
	jmp	.L798
.L797:
	.loc 4 3883 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L799
	.loc 4 3883 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L799
	.loc 4 3883 1 discriminator 7
	movl	$1, %eax
	jmp	.L798
.L799:
.LBE92:
	.loc 4 3883 1 discriminator 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_btime
.L798:
	.loc 4 3883 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	strcmp_df_btime, .-strcmp_df_btime
	.type	rev_xstrcoll_df_btime, @function
rev_xstrcoll_df_btime:
.LFB173:
	.loc 4 3883 1 is_stmt 1
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
.LBB93:
	.loc 4 3883 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L801
	.loc 4 3883 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L801
	.loc 4 3883 1 discriminator 3
	movl	$-1, %eax
	jmp	.L802
.L801:
	.loc 4 3883 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L803
	.loc 4 3883 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L803
	.loc 4 3883 1 discriminator 7
	movl	$1, %eax
	jmp	.L802
.L803:
.LBE93:
	.loc 4 3883 1 discriminator 8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_btime
.L802:
	.loc 4 3883 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	rev_xstrcoll_df_btime, .-rev_xstrcoll_df_btime
	.type	rev_strcmp_df_btime, @function
rev_strcmp_df_btime:
.LFB174:
	.loc 4 3883 1 is_stmt 1
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
.LBB94:
	.loc 4 3883 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L805
	.loc 4 3883 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L805
	.loc 4 3883 1 discriminator 3
	movl	$-1, %eax
	jmp	.L806
.L805:
	.loc 4 3883 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L807
	.loc 4 3883 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L807
	.loc 4 3883 1 discriminator 7
	movl	$1, %eax
	jmp	.L806
.L807:
.LBE94:
	.loc 4 3883 1 discriminator 8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_btime
.L806:
	.loc 4 3883 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	rev_strcmp_df_btime, .-rev_strcmp_df_btime
	.type	xstrcoll_size, @function
xstrcoll_size:
.LFB175:
	.loc 4 3884 1 is_stmt 1
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
	.loc 4 3884 1
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_size
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	xstrcoll_size, .-xstrcoll_size
	.type	strcmp_size, @function
strcmp_size:
.LFB176:
	.loc 4 3884 1
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
	.loc 4 3884 1
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_size
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	strcmp_size, .-strcmp_size
	.type	rev_xstrcoll_size, @function
rev_xstrcoll_size:
.LFB177:
	.loc 4 3884 1
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
	.loc 4 3884 1
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_size
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	rev_xstrcoll_size, .-rev_xstrcoll_size
	.type	rev_strcmp_size, @function
rev_strcmp_size:
.LFB178:
	.loc 4 3884 1
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
	.loc 4 3884 1
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_size
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	rev_strcmp_size, .-rev_strcmp_size
	.type	xstrcoll_df_size, @function
xstrcoll_df_size:
.LFB179:
	.loc 4 3884 1
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
.LBB95:
	.loc 4 3884 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L817
	.loc 4 3884 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L817
	.loc 4 3884 1 discriminator 3
	movl	$-1, %eax
	jmp	.L818
.L817:
	.loc 4 3884 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L819
	.loc 4 3884 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L819
	.loc 4 3884 1 discriminator 7
	movl	$1, %eax
	jmp	.L818
.L819:
.LBE95:
	.loc 4 3884 1 discriminator 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_size
.L818:
	.loc 4 3884 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	xstrcoll_df_size, .-xstrcoll_df_size
	.type	strcmp_df_size, @function
strcmp_df_size:
.LFB180:
	.loc 4 3884 1 is_stmt 1
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
.LBB96:
	.loc 4 3884 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L821
	.loc 4 3884 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L821
	.loc 4 3884 1 discriminator 3
	movl	$-1, %eax
	jmp	.L822
.L821:
	.loc 4 3884 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L823
	.loc 4 3884 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L823
	.loc 4 3884 1 discriminator 7
	movl	$1, %eax
	jmp	.L822
.L823:
.LBE96:
	.loc 4 3884 1 discriminator 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_size
.L822:
	.loc 4 3884 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	strcmp_df_size, .-strcmp_df_size
	.type	rev_xstrcoll_df_size, @function
rev_xstrcoll_df_size:
.LFB181:
	.loc 4 3884 1 is_stmt 1
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
.LBB97:
	.loc 4 3884 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L825
	.loc 4 3884 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L825
	.loc 4 3884 1 discriminator 3
	movl	$-1, %eax
	jmp	.L826
.L825:
	.loc 4 3884 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L827
	.loc 4 3884 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L827
	.loc 4 3884 1 discriminator 7
	movl	$1, %eax
	jmp	.L826
.L827:
.LBE97:
	.loc 4 3884 1 discriminator 8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_size
.L826:
	.loc 4 3884 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	rev_xstrcoll_df_size, .-rev_xstrcoll_df_size
	.type	rev_strcmp_df_size, @function
rev_strcmp_df_size:
.LFB182:
	.loc 4 3884 1 is_stmt 1
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
.LBB98:
	.loc 4 3884 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L829
	.loc 4 3884 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L829
	.loc 4 3884 1 discriminator 3
	movl	$-1, %eax
	jmp	.L830
.L829:
	.loc 4 3884 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L831
	.loc 4 3884 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L831
	.loc 4 3884 1 discriminator 7
	movl	$1, %eax
	jmp	.L830
.L831:
.LBE98:
	.loc 4 3884 1 discriminator 8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_size
.L830:
	.loc 4 3884 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	rev_strcmp_df_size, .-rev_strcmp_df_size
	.type	xstrcoll_name, @function
xstrcoll_name:
.LFB183:
	.loc 4 3885 1 is_stmt 1
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
	.loc 4 3885 1
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	xstrcoll_name, .-xstrcoll_name
	.type	strcmp_name, @function
strcmp_name:
.LFB184:
	.loc 4 3885 1
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
	.loc 4 3885 1
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE184:
	.size	strcmp_name, .-strcmp_name
	.type	rev_xstrcoll_name, @function
rev_xstrcoll_name:
.LFB185:
	.loc 4 3885 1
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
	.loc 4 3885 1
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	rev_xstrcoll_name, .-rev_xstrcoll_name
	.type	rev_strcmp_name, @function
rev_strcmp_name:
.LFB186:
	.loc 4 3885 1
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
	.loc 4 3885 1
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_name
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	rev_strcmp_name, .-rev_strcmp_name
	.type	xstrcoll_df_name, @function
xstrcoll_df_name:
.LFB187:
	.loc 4 3885 1
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
.LBB99:
	.loc 4 3885 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L841
	.loc 4 3885 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L841
	.loc 4 3885 1 discriminator 3
	movl	$-1, %eax
	jmp	.L842
.L841:
	.loc 4 3885 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L843
	.loc 4 3885 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L843
	.loc 4 3885 1 discriminator 7
	movl	$1, %eax
	jmp	.L842
.L843:
.LBE99:
	.loc 4 3885 1 discriminator 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_name
.L842:
	.loc 4 3885 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	xstrcoll_df_name, .-xstrcoll_df_name
	.type	strcmp_df_name, @function
strcmp_df_name:
.LFB188:
	.loc 4 3885 1 is_stmt 1
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
.LBB100:
	.loc 4 3885 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L845
	.loc 4 3885 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L845
	.loc 4 3885 1 discriminator 3
	movl	$-1, %eax
	jmp	.L846
.L845:
	.loc 4 3885 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L847
	.loc 4 3885 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L847
	.loc 4 3885 1 discriminator 7
	movl	$1, %eax
	jmp	.L846
.L847:
.LBE100:
	.loc 4 3885 1 discriminator 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_name
.L846:
	.loc 4 3885 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	strcmp_df_name, .-strcmp_df_name
	.type	rev_xstrcoll_df_name, @function
rev_xstrcoll_df_name:
.LFB189:
	.loc 4 3885 1 is_stmt 1
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
.LBB101:
	.loc 4 3885 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L849
	.loc 4 3885 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L849
	.loc 4 3885 1 discriminator 3
	movl	$-1, %eax
	jmp	.L850
.L849:
	.loc 4 3885 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L851
	.loc 4 3885 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L851
	.loc 4 3885 1 discriminator 7
	movl	$1, %eax
	jmp	.L850
.L851:
.LBE101:
	.loc 4 3885 1 discriminator 8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_name
.L850:
	.loc 4 3885 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	rev_xstrcoll_df_name, .-rev_xstrcoll_df_name
	.type	rev_strcmp_df_name, @function
rev_strcmp_df_name:
.LFB190:
	.loc 4 3885 1 is_stmt 1
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
.LBB102:
	.loc 4 3885 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L853
	.loc 4 3885 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L853
	.loc 4 3885 1 discriminator 3
	movl	$-1, %eax
	jmp	.L854
.L853:
	.loc 4 3885 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L855
	.loc 4 3885 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L855
	.loc 4 3885 1 discriminator 7
	movl	$1, %eax
	jmp	.L854
.L855:
.LBE102:
	.loc 4 3885 1 discriminator 8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_name
.L854:
	.loc 4 3885 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	rev_strcmp_df_name, .-rev_strcmp_df_name
	.type	xstrcoll_extension, @function
xstrcoll_extension:
.LFB191:
	.loc 4 3886 1 is_stmt 1
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
	.loc 4 3886 1
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_extension
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	xstrcoll_extension, .-xstrcoll_extension
	.type	strcmp_extension, @function
strcmp_extension:
.LFB192:
	.loc 4 3886 1
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
	.loc 4 3886 1
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_extension
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	strcmp_extension, .-strcmp_extension
	.type	rev_xstrcoll_extension, @function
rev_xstrcoll_extension:
.LFB193:
	.loc 4 3886 1
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
	.loc 4 3886 1
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_extension
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	rev_xstrcoll_extension, .-rev_xstrcoll_extension
	.type	rev_strcmp_extension, @function
rev_strcmp_extension:
.LFB194:
	.loc 4 3886 1
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
	.loc 4 3886 1
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_extension
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE194:
	.size	rev_strcmp_extension, .-rev_strcmp_extension
	.type	xstrcoll_df_extension, @function
xstrcoll_df_extension:
.LFB195:
	.loc 4 3886 1
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
.LBB103:
	.loc 4 3886 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L865
	.loc 4 3886 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L865
	.loc 4 3886 1 discriminator 3
	movl	$-1, %eax
	jmp	.L866
.L865:
	.loc 4 3886 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L867
	.loc 4 3886 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L867
	.loc 4 3886 1 discriminator 7
	movl	$1, %eax
	jmp	.L866
.L867:
.LBE103:
	.loc 4 3886 1 discriminator 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_extension
.L866:
	.loc 4 3886 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE195:
	.size	xstrcoll_df_extension, .-xstrcoll_df_extension
	.type	strcmp_df_extension, @function
strcmp_df_extension:
.LFB196:
	.loc 4 3886 1 is_stmt 1
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
.LBB104:
	.loc 4 3886 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L869
	.loc 4 3886 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L869
	.loc 4 3886 1 discriminator 3
	movl	$-1, %eax
	jmp	.L870
.L869:
	.loc 4 3886 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L871
	.loc 4 3886 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L871
	.loc 4 3886 1 discriminator 7
	movl	$1, %eax
	jmp	.L870
.L871:
.LBE104:
	.loc 4 3886 1 discriminator 8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_extension
.L870:
	.loc 4 3886 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE196:
	.size	strcmp_df_extension, .-strcmp_df_extension
	.type	rev_xstrcoll_df_extension, @function
rev_xstrcoll_df_extension:
.LFB197:
	.loc 4 3886 1 is_stmt 1
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
.LBB105:
	.loc 4 3886 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L873
	.loc 4 3886 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L873
	.loc 4 3886 1 discriminator 3
	movl	$-1, %eax
	jmp	.L874
.L873:
	.loc 4 3886 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L875
	.loc 4 3886 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L875
	.loc 4 3886 1 discriminator 7
	movl	$1, %eax
	jmp	.L874
.L875:
.LBE105:
	.loc 4 3886 1 discriminator 8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	leaq	xstrcoll(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_extension
.L874:
	.loc 4 3886 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE197:
	.size	rev_xstrcoll_df_extension, .-rev_xstrcoll_df_extension
	.type	rev_strcmp_df_extension, @function
rev_strcmp_df_extension:
.LFB198:
	.loc 4 3886 1 is_stmt 1
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
.LBB106:
	.loc 4 3886 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L877
	.loc 4 3886 1 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L877
	.loc 4 3886 1 discriminator 3
	movl	$-1, %eax
	jmp	.L878
.L877:
	.loc 4 3886 1 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L879
	.loc 4 3886 1 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L879
	.loc 4 3886 1 discriminator 7
	movl	$1, %eax
	jmp	.L878
.L879:
.LBE106:
	.loc 4 3886 1 discriminator 8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cmp_extension
.L878:
	.loc 4 3886 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE198:
	.size	rev_strcmp_df_extension, .-rev_strcmp_df_extension
	.type	cmp_version, @function
cmp_version:
.LFB199:
	.loc 4 3899 1 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 4 3900 32
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	.loc 4 3900 23
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 3900 10
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	filevercmp@PLT
	.loc 4 3901 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE199:
	.size	cmp_version, .-cmp_version
	.type	xstrcoll_version, @function
xstrcoll_version:
.LFB200:
	.loc 4 3904 1
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
	.loc 4 3904 10
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cmp_version
	.loc 4 3904 30
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE200:
	.size	xstrcoll_version, .-xstrcoll_version
	.type	rev_xstrcoll_version, @function
rev_xstrcoll_version:
.LFB201:
	.loc 4 3906 1
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
	.loc 4 3906 10
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cmp_version
	.loc 4 3906 30
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE201:
	.size	rev_xstrcoll_version, .-rev_xstrcoll_version
	.type	xstrcoll_df_version, @function
xstrcoll_df_version:
.LFB202:
	.loc 4 3908 1
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
.LBB107:
	.loc 4 3908 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L887
	.loc 4 3908 3 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L887
	.loc 4 3908 3 discriminator 3
	movl	$-1, %eax
	jmp	.L888
.L887:
	.loc 4 3908 3 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L889
	.loc 4 3908 3 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L889
	.loc 4 3908 3 discriminator 7
	movl	$1, %eax
	jmp	.L888
.L889:
.LBE107:
	.loc 4 3908 33 is_stmt 1 discriminator 8
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cmp_version
.L888:
	.loc 4 3908 53
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE202:
	.size	xstrcoll_df_version, .-xstrcoll_df_version
	.type	rev_xstrcoll_df_version, @function
rev_xstrcoll_df_version:
.LFB203:
	.loc 4 3910 1
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
.LBB108:
	.loc 4 3910 3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	is_linked_directory
	movb	%al, -1(%rbp)
	cmpb	$0, -2(%rbp)
	je	.L891
	.loc 4 3910 3 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L891
	.loc 4 3910 3 discriminator 3
	movl	$-1, %eax
	jmp	.L892
.L891:
	.loc 4 3910 3 discriminator 4
	movzbl	-2(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L893
	.loc 4 3910 3 discriminator 5
	cmpb	$0, -1(%rbp)
	je	.L893
	.loc 4 3910 3 discriminator 7
	movl	$1, %eax
	jmp	.L892
.L893:
.LBE108:
	.loc 4 3910 33 is_stmt 1 discriminator 8
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cmp_version
.L892:
	.loc 4 3910 53
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE203:
	.size	rev_xstrcoll_df_version, .-rev_xstrcoll_df_version
	.section	.data.rel.ro.local
	.align 32
	.type	sort_functions, @object
	.size	sort_functions, 512
sort_functions:
	.quad	xstrcoll_name
	.quad	xstrcoll_df_name
	.quad	rev_xstrcoll_name
	.quad	rev_xstrcoll_df_name
	.quad	strcmp_name
	.quad	strcmp_df_name
	.quad	rev_strcmp_name
	.quad	rev_strcmp_df_name
	.quad	xstrcoll_extension
	.quad	xstrcoll_df_extension
	.quad	rev_xstrcoll_extension
	.quad	rev_xstrcoll_df_extension
	.quad	strcmp_extension
	.quad	strcmp_df_extension
	.quad	rev_strcmp_extension
	.quad	rev_strcmp_df_extension
	.quad	xstrcoll_size
	.quad	xstrcoll_df_size
	.quad	rev_xstrcoll_size
	.quad	rev_xstrcoll_df_size
	.quad	strcmp_size
	.quad	strcmp_df_size
	.quad	rev_strcmp_size
	.quad	rev_strcmp_df_size
	.quad	xstrcoll_version
	.quad	xstrcoll_df_version
	.quad	rev_xstrcoll_version
	.quad	rev_xstrcoll_df_version
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	xstrcoll_mtime
	.quad	xstrcoll_df_mtime
	.quad	rev_xstrcoll_mtime
	.quad	rev_xstrcoll_df_mtime
	.quad	strcmp_mtime
	.quad	strcmp_df_mtime
	.quad	rev_strcmp_mtime
	.quad	rev_strcmp_df_mtime
	.quad	xstrcoll_ctime
	.quad	xstrcoll_df_ctime
	.quad	rev_xstrcoll_ctime
	.quad	rev_xstrcoll_df_ctime
	.quad	strcmp_ctime
	.quad	strcmp_df_ctime
	.quad	rev_strcmp_ctime
	.quad	rev_strcmp_df_ctime
	.quad	xstrcoll_atime
	.quad	xstrcoll_df_atime
	.quad	rev_xstrcoll_atime
	.quad	rev_xstrcoll_df_atime
	.quad	strcmp_atime
	.quad	strcmp_df_atime
	.quad	rev_strcmp_atime
	.quad	rev_strcmp_df_atime
	.quad	xstrcoll_btime
	.quad	xstrcoll_df_btime
	.quad	rev_xstrcoll_btime
	.quad	rev_xstrcoll_df_btime
	.quad	strcmp_btime
	.quad	strcmp_df_btime
	.quad	rev_strcmp_btime
	.quad	rev_strcmp_df_btime
	.text
	.type	initialize_ordering_vector, @function
initialize_ordering_vector:
.LFB204:
	.loc 4 3979 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
.LBB109:
	.loc 4 3980 15
	movq	$0, -8(%rbp)
	.loc 4 3980 3
	jmp	.L895
.L896:
	.loc 4 3981 22 discriminator 3
	movq	cwd_file(%rip), %rcx
	.loc 4 3981 31 discriminator 3
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	.loc 4 3981 16 discriminator 3
	movq	sorted_file(%rip), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 4 3981 22 discriminator 3
	leaq	(%rcx,%rsi), %rdx
	.loc 4 3981 20 discriminator 3
	movq	%rdx, (%rax)
	.loc 4 3980 39 discriminator 3
	addq	$1, -8(%rbp)
.L895:
	.loc 4 3980 24 discriminator 1
	movq	cwd_n_used(%rip), %rax
	.loc 4 3980 3 discriminator 1
	cmpq	%rax, -8(%rbp)
	jb	.L896
.LBE109:
	.loc 4 3982 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE204:
	.size	initialize_ordering_vector, .-initialize_ordering_vector
	.section	.rodata
.LC207:
	.string	"sort_type != sort_version"
	.text
	.type	sort_files, @function
sort_files:
.LFB205:
	.loc 4 3988 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 4 3991 51
	movq	cwd_n_used(%rip), %rax
	shrq	%rax
	movq	%rax, %rdx
	.loc 4 3991 38
	movq	cwd_n_used(%rip), %rax
	addq	%rax, %rdx
	.loc 4 3991 25
	movq	sorted_file_alloc(%rip), %rax
	.loc 4 3991 6
	cmpq	%rax, %rdx
	jbe	.L898
	.loc 4 3993 7
	movq	sorted_file(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 4 3994 21
	movq	cwd_n_used(%rip), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	.loc 4 3994 19
	movq	%rax, sorted_file(%rip)
	.loc 4 3995 29
	movq	cwd_n_used(%rip), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	.loc 4 3995 25
	movq	%rax, sorted_file_alloc(%rip)
.L898:
	.loc 4 3998 3
	call	initialize_ordering_vector
	.loc 4 4000 17
	movl	sort_type(%rip), %eax
	.loc 4 4000 6
	cmpl	$-1, %eax
	je	.L907
	.loc 4 4008 9
	leaq	failed_strcoll(%rip), %rdi
	call	_setjmp@PLT
	endbr64
	.loc 4 4008 6
	testl	%eax, %eax
	jne	.L902
	.loc 4 4009 16
	movb	$0, -1(%rbp)
	jmp	.L903
.L902:
	.loc 4 4012 18
	movb	$1, -1(%rbp)
	.loc 4 4013 7
	movl	sort_type(%rip), %eax
	cmpl	$3, %eax
	jne	.L904
	.loc 4 4013 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.10229(%rip), %rcx
	movl	$4013, %edx
	leaq	.LC133(%rip), %rsi
	leaq	.LC207(%rip), %rdi
	call	__assert_fail@PLT
.L904:
	.loc 4 4014 7 is_stmt 1
	call	initialize_ordering_vector
.L903:
	.loc 4 4019 49
	movl	sort_type(%rip), %eax
	.loc 4 4019 74
	cmpl	$4, %eax
	jne	.L905
	.loc 4 4019 74 is_stmt 0 discriminator 1
	movl	time_type(%rip), %eax
	jmp	.L906
.L905:
	.loc 4 4019 74 discriminator 2
	movl	$0, %eax
.L906:
	.loc 4 4019 36 is_stmt 1 discriminator 4
	movl	sort_type(%rip), %edx
	leal	(%rax,%rdx), %esi
	.loc 4 4018 3 discriminator 4
	movzbl	-1(%rbp), %ecx
	movzbl	sort_reverse(%rip), %eax
	movzbl	%al, %edx
	movzbl	directories_first(%rip), %eax
	movzbl	%al, %eax
	.loc 4 4021 25 discriminator 4
	cltq
	movslq	%ecx, %rcx
	movl	%esi, %esi
	addq	%rsi, %rsi
	addq	%rsi, %rcx
	movslq	%edx, %rdx
	addq	%rcx, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	sort_functions(%rip), %rax
	movq	(%rdx,%rax), %rdx
	.loc 4 4018 3 discriminator 4
	movq	cwd_n_used(%rip), %rcx
	movq	sorted_file(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mpsort@PLT
	jmp	.L897
.L907:
	.loc 4 4001 5
	nop
.L897:
	.loc 4 4022 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE205:
	.size	sort_files, .-sort_files
	.type	print_current_files, @function
print_current_files:
.LFB206:
	.loc 4 4028 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 4 4031 3
	movl	format(%rip), %eax
	cmpl	$4, %eax
	ja	.L924
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L911(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L911(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L911:
	.long	.L915-.L911
	.long	.L914-.L911
	.long	.L913-.L911
	.long	.L912-.L911
	.long	.L910-.L911
	.text
.L914:
	.loc 4 4034 14
	movq	$0, -8(%rbp)
	.loc 4 4034 7
	jmp	.L916
.L917:
	.loc 4 4036 50 discriminator 3
	movq	sorted_file(%rip), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 4 4036 11 discriminator 3
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	print_file_name_and_frills
	.loc 4 4037 11 discriminator 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 4 4034 36 discriminator 3
	addq	$1, -8(%rbp)
.L916:
	.loc 4 4034 21 discriminator 1
	movq	cwd_n_used(%rip), %rax
	.loc 4 4034 7 discriminator 1
	cmpq	%rax, -8(%rbp)
	jb	.L917
	.loc 4 4039 7
	jmp	.L909
.L913:
	.loc 4 4042 11
	movq	line_length(%rip), %rax
	.loc 4 4042 10
	testq	%rax, %rax
	jne	.L918
	.loc 4 4043 9
	movl	$32, %edi
	call	print_with_separator
	.loc 4 4046 7
	jmp	.L909
.L918:
	.loc 4 4045 9
	call	print_many_per_line
	.loc 4 4046 7
	jmp	.L909
.L912:
	.loc 4 4049 11
	movq	line_length(%rip), %rax
	.loc 4 4049 10
	testq	%rax, %rax
	jne	.L920
	.loc 4 4050 9
	movl	$32, %edi
	call	print_with_separator
	.loc 4 4053 7
	jmp	.L909
.L920:
	.loc 4 4052 9
	call	print_horizontal
	.loc 4 4053 7
	jmp	.L909
.L910:
	.loc 4 4056 7
	movl	$44, %edi
	call	print_with_separator
	.loc 4 4057 7
	jmp	.L909
.L915:
	.loc 4 4060 14
	movq	$0, -8(%rbp)
	.loc 4 4060 7
	jmp	.L922
.L923:
	.loc 4 4062 11 discriminator 3
	call	set_normal_color
	.loc 4 4063 41 discriminator 3
	movq	sorted_file(%rip), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 4 4063 11 discriminator 3
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	print_long_format
	.loc 4 4064 11 discriminator 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	movq	dired_pos(%rip), %rax
	addq	$1, %rax
	movq	%rax, dired_pos(%rip)
	.loc 4 4060 36 discriminator 3
	addq	$1, -8(%rbp)
.L922:
	.loc 4 4060 21 discriminator 1
	movq	cwd_n_used(%rip), %rax
	.loc 4 4060 7 discriminator 1
	cmpq	%rax, -8(%rbp)
	jb	.L923
	.loc 4 4066 7
	nop
.L909:
.L924:
	.loc 4 4068 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE206:
	.size	print_current_files, .-print_current_files
	.type	align_nstrftime, @function
align_nstrftime:
.LFB207:
	.loc 4 4077 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -40(%rbp)
	movb	%al, -36(%rbp)
	.loc 4 4079 23
	movzbl	use_abformat(%rip), %eax
	.loc 4 4080 23
	testb	%al, %al
	je	.L926
	.loc 4 4079 41 discriminator 1
	movzbl	-36(%rbp), %edx
	.loc 4 4079 44 discriminator 1
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	.loc 4 4080 23 discriminator 1
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$7, %rax
	movq	%rax, %rdx
	leaq	abformat(%rip), %rax
	addq	%rdx, %rax
	jmp	.L927
.L926:
	.loc 4 4080 41 discriminator 2
	movzbl	-36(%rbp), %eax
	.loc 4 4080 23 discriminator 2
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	long_time_format(%rip), %rax
	movq	(%rdx,%rax), %rax
.L927:
	.loc 4 4078 15
	movq	%rax, -8(%rbp)
	.loc 4 4081 10
	movl	-40(%rbp), %r8d
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	nstrftime@PLT
	.loc 4 4082 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	align_nstrftime, .-align_nstrftime
	.type	long_time_expected_width, @function
long_time_expected_width:
.LFB208:
	.loc 4 4089 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1104, %rsp
	.loc 4 4089 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 4092 13
	movl	width.10258(%rip), %eax
	.loc 4 4092 6
	testl	%eax, %eax
	jns	.L930
.LBB110:
	.loc 4 4094 14
	movq	$0, -1104(%rbp)
	.loc 4 4105 11
	movq	localtz(%rip), %rax
	leaq	-1088(%rbp), %rdx
	leaq	-1104(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	localtime_rz@PLT
	.loc 4 4105 10
	testq	%rax, %rax
	je	.L931
.LBB111:
	.loc 4 4107 24
	movq	localtz(%rip), %rcx
	leaq	-1088(%rbp), %rdx
	leaq	-1024(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1001, %esi
	movq	%rax, %rdi
	call	align_nstrftime
	movq	%rax, -1096(%rbp)
	.loc 4 4109 14
	cmpq	$0, -1096(%rbp)
	je	.L931
	.loc 4 4110 21
	movq	-1096(%rbp), %rcx
	leaq	-1024(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mbsnwidth@PLT
	.loc 4 4110 19
	movl	%eax, width.10258(%rip)
.L931:
.LBE111:
	.loc 4 4113 17
	movl	width.10258(%rip), %eax
	.loc 4 4113 10
	testl	%eax, %eax
	jns	.L930
	.loc 4 4114 15
	movl	$0, width.10258(%rip)
.L930:
.LBE110:
	.loc 4 4117 10
	movl	width.10258(%rip), %eax
	.loc 4 4118 1
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L934
	call	__stack_chk_fail@PLT
.L934:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE208:
	.size	long_time_expected_width, .-long_time_expected_width
	.section	.rodata
.LC208:
	.string	"%*lu "
	.text
	.type	format_user_or_group, @function
format_user_or_group:
.LFB209:
	.loc 4 4125 1
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
	movl	%edx, -36(%rbp)
	.loc 4 4128 6
	cmpq	$0, -24(%rbp)
	je	.L936
.LBB112:
	.loc 4 4130 31
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gnu_mbswidth@PLT
	.loc 4 4130 11
	movl	-36(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	.loc 4 4131 11
	movl	$0, %eax
	cmpl	$0, -12(%rbp)
	cmovns	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	.loc 4 4132 7
	movq	stdout(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 4133 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 4133 27
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	.loc 4 4133 11
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L937:
	.loc 4 4136 9 discriminator 1
	movl	$32, %edi
	call	putchar_unlocked@PLT
	.loc 4 4137 17 discriminator 1
	movl	-16(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -16(%rbp)
	.loc 4 4137 7 discriminator 1
	testl	%eax, %eax
	jne	.L937
	jmp	.L938
.L936:
.LBE112:
	.loc 4 4141 7
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC208(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 4 4142 11
	movl	-36(%rbp), %eax
	cltq
	movq	%rax, -8(%rbp)
.L938:
	.loc 4 4145 13
	movq	dired_pos(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, dired_pos(%rip)
	.loc 4 4146 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE209:
	.size	format_user_or_group, .-format_user_or_group
	.section	.rodata
.LC209:
	.string	"?"
	.text
	.type	format_user, @function
format_user:
.LFB210:
	.loc 4 4153 1
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
	movl	%esi, -24(%rbp)
	movl	%edx, %eax
	movb	%al, -28(%rbp)
	.loc 4 4154 3
	movl	-20(%rbp), %ebx
	.loc 4 4154 25
	movzbl	-28(%rbp), %eax
	xorl	$1, %eax
	.loc 4 4154 3
	testb	%al, %al
	je	.L940
	.loc 4 4154 3 is_stmt 0 discriminator 1
	leaq	.LC209(%rip), %rax
	jmp	.L941
.L940:
	.loc 4 4155 38 is_stmt 1
	movzbl	numeric_ids(%rip), %eax
	xorl	$1, %eax
	.loc 4 4155 45
	testb	%al, %al
	je	.L942
	.loc 4 4155 47 discriminator 1
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	getuser@PLT
	jmp	.L941
.L942:
	.loc 4 4155 45 discriminator 2
	movl	$0, %eax
.L941:
	.loc 4 4154 3 discriminator 2
	movl	-24(%rbp), %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	format_user_or_group
	.loc 4 4156 1 discriminator 2
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE210:
	.size	format_user, .-format_user
	.type	format_group, @function
format_group:
.LFB211:
	.loc 4 4162 1
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
	movl	%esi, -24(%rbp)
	movl	%edx, %eax
	movb	%al, -28(%rbp)
	.loc 4 4163 3
	movl	-20(%rbp), %ebx
	.loc 4 4163 25
	movzbl	-28(%rbp), %eax
	xorl	$1, %eax
	.loc 4 4163 3
	testb	%al, %al
	je	.L945
	.loc 4 4163 3 is_stmt 0 discriminator 1
	leaq	.LC209(%rip), %rax
	jmp	.L946
.L945:
	.loc 4 4164 38 is_stmt 1
	movzbl	numeric_ids(%rip), %eax
	xorl	$1, %eax
	.loc 4 4164 45
	testb	%al, %al
	je	.L947
	.loc 4 4164 47 discriminator 1
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	getgroup@PLT
	jmp	.L946
.L947:
	.loc 4 4164 45 discriminator 2
	movl	$0, %eax
.L946:
	.loc 4 4163 3 discriminator 2
	movl	-24(%rbp), %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	format_user_or_group
	.loc 4 4165 1 discriminator 2
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE211:
	.size	format_group, .-format_group
	.section	.rodata
.LC210:
	.string	"%lu"
	.text
	.type	format_user_or_group_width, @function
format_user_or_group_width:
.LFB212:
	.loc 4 4171 1
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
	.loc 4 4171 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 4172 6
	cmpq	$0, -56(%rbp)
	je	.L950
.LBB113:
	.loc 4 4174 17
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gnu_mbswidth@PLT
	movl	%eax, -36(%rbp)
	.loc 4 4175 14
	movl	$0, %eax
	cmpl	$0, -36(%rbp)
	cmovns	-36(%rbp), %eax
	jmp	.L951
.L950:
.LBE113:
.LBB114:
	.loc 4 4180 7
	movq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	leaq	.LC210(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 4 4181 14
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
.L951:
.LBE114:
	.loc 4 4183 1 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L952
	.loc 4 4183 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L952:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE212:
	.size	format_user_or_group_width, .-format_user_or_group_width
	.type	format_user_width, @function
format_user_width:
.LFB213:
	.loc 4 4189 1 is_stmt 1
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
	.loc 4 4190 10
	movl	-20(%rbp), %ebx
	.loc 4 4190 50
	movzbl	numeric_ids(%rip), %eax
	.loc 4 4190 10
	testb	%al, %al
	jne	.L954
	.loc 4 4190 59 discriminator 1
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	getuser@PLT
	jmp	.L955
.L954:
	.loc 4 4190 10 discriminator 2
	movl	$0, %eax
.L955:
	.loc 4 4190 10 is_stmt 0 discriminator 4
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	format_user_or_group_width
	.loc 4 4191 1 is_stmt 1 discriminator 4
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE213:
	.size	format_user_width, .-format_user_width
	.type	format_group_width, @function
format_group_width:
.LFB214:
	.loc 4 4197 1
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
	.loc 4 4198 10
	movl	-20(%rbp), %ebx
	.loc 4 4198 50
	movzbl	numeric_ids(%rip), %eax
	.loc 4 4198 10
	testb	%al, %al
	jne	.L958
	.loc 4 4198 59 discriminator 1
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	getgroup@PLT
	jmp	.L959
.L958:
	.loc 4 4198 10 discriminator 2
	movl	$0, %eax
.L959:
	.loc 4 4198 10 is_stmt 0 discriminator 4
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	format_user_or_group_width
	.loc 4 4199 1 is_stmt 1 discriminator 4
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE214:
	.size	format_group_width, .-format_group_width
	.section	.rodata
	.align 8
.LC211:
	.string	"INT_BUFSIZE_BOUND (uintmax_t) <= buflen"
	.text
	.type	format_inode, @function
format_inode:
.LFB215:
	.loc 4 4206 1
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
	.loc 4 4207 3
	cmpq	$20, -16(%rbp)
	ja	.L962
	.loc 4 4207 3 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.10300(%rip), %rcx
	movl	$4207, %edx
	leaq	.LC133(%rip), %rsi
	leaq	.LC211(%rip), %rdi
	call	__assert_fail@PLT
.L962:
	.loc 4 4208 12 is_stmt 1
	movq	-24(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4210 11
	testb	%al, %al
	je	.L963
	.loc 4 4208 32
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	.loc 4 4208 22
	testq	%rax, %rax
	je	.L963
	.loc 4 4209 13
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	.loc 4 4210 11
	jmp	.L965
.L963:
	.loc 4 4210 11 is_stmt 0 discriminator 1
	leaq	.LC209(%rip), %rax
.L965:
	.loc 4 4211 1 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE215:
	.size	format_inode, .-format_inode
	.section	.rodata
.LC212:
	.string	"%*s "
.LC213:
	.string	"%s %*s "
.LC214:
	.string	"%*s, %*s "
.LC215:
	.string	" -> "
	.text
	.type	print_long_format, @function
print_long_format:
.LFB216:
	.loc 4 4216 1
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
	subq	$448, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -4552(%rbp)
	.loc 4 4216 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 4 4231 8
	movb	$1, -4534(%rbp)
	.loc 4 4235 8
	movq	-4552(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4235 6
	testb	%al, %al
	je	.L967
	.loc 4 4236 5
	movq	-4552(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	-4380(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	filemodestring@PLT
	jmp	.L968
.L967:
	.loc 4 4239 37
	movq	-4552(%rbp), %rax
	movl	168(%rax), %eax
	.loc 4 4239 35
	movl	%eax, %edx
	leaq	filetype_letter(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	.loc 4 4239 18
	movb	%al, -4380(%rbp)
	.loc 4 4240 7
	leaq	-4380(%rbp), %rax
	addq	$1, %rax
	movl	$10, %edx
	movl	$63, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 4 4241 19
	movb	$0, -4369(%rbp)
.L968:
	.loc 4 4243 7
	movzbl	any_has_acl(%rip), %eax
	xorl	$1, %eax
	.loc 4 4243 6
	testb	%al, %al
	je	.L969
	.loc 4 4244 17
	movb	$0, -4370(%rbp)
	jmp	.L970
.L969:
	.loc 4 4245 13
	movq	-4552(%rbp), %rax
	movl	188(%rax), %eax
	.loc 4 4245 11
	cmpl	$1, %eax
	jne	.L971
	.loc 4 4246 17
	movb	$46, -4370(%rbp)
	jmp	.L970
.L971:
	.loc 4 4247 13
	movq	-4552(%rbp), %rax
	movl	188(%rax), %eax
	.loc 4 4247 11
	cmpl	$2, %eax
	jne	.L970
	.loc 4 4248 17
	movb	$43, -4370(%rbp)
.L970:
	.loc 4 4250 3
	movl	time_type(%rip), %eax
	cmpl	$3, %eax
	je	.L972
	cmpl	$3, %eax
	ja	.L973
	cmpl	$2, %eax
	je	.L974
	cmpl	$2, %eax
	ja	.L973
	testl	%eax, %eax
	je	.L975
	cmpl	$1, %eax
	jne	.L973
	.loc 4 4253 23
	movq	-4552(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	get_stat_ctime@PLT
	movq	%rax, -4480(%rbp)
	movq	%rdx, -4472(%rbp)
	.loc 4 4254 7
	jmp	.L976
.L975:
	.loc 4 4256 23
	movq	-4552(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	get_stat_mtime@PLT
	movq	%rax, -4480(%rbp)
	movq	%rdx, -4472(%rbp)
	.loc 4 4257 7
	jmp	.L976
.L974:
	.loc 4 4259 23
	movq	-4552(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	get_stat_atime@PLT
	movq	%rax, -4480(%rbp)
	movq	%rdx, -4472(%rbp)
	.loc 4 4260 7
	jmp	.L976
.L972:
	.loc 4 4262 23
	movq	-4552(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	get_stat_btime
	movq	%rax, -4480(%rbp)
	movq	%rdx, -4472(%rbp)
	.loc 4 4263 24
	movq	-4480(%rbp), %rax
	.loc 4 4263 10
	cmpq	$-1, %rax
	jne	.L1016
	.loc 4 4263 54 discriminator 1
	movq	-4472(%rbp), %rax
	.loc 4 4263 38 discriminator 1
	cmpq	$-1, %rax
	jne	.L1016
	.loc 4 4264 18
	movb	$0, -4534(%rbp)
	.loc 4 4265 7
	jmp	.L1016
.L973:
	.loc 4 4267 7
	call	abort@PLT
.L1016:
	.loc 4 4265 7
	nop
.L976:
	.loc 4 4270 5
	leaq	-3680(%rbp), %rax
	movq	%rax, -4512(%rbp)
	.loc 4 4272 7
	movzbl	print_inode(%rip), %eax
	.loc 4 4272 6
	testb	%al, %al
	je	.L978
.LBB115:
	.loc 4 4275 7
	movq	-4552(%rbp), %rdx
	leaq	-4336(%rbp), %rax
	movl	$21, %esi
	movq	%rax, %rdi
	call	format_inode
	movq	%rax, %rcx
	movl	inode_number_width(%rip), %edx
	movq	-4512(%rbp), %rax
	leaq	.LC212(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 4 4279 12
	movq	-4512(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 4279 9
	addq	%rax, -4512(%rbp)
.L978:
.LBE115:
	.loc 4 4282 7
	movzbl	print_block_size(%rip), %eax
	.loc 4 4282 6
	testb	%al, %al
	je	.L979
.LBB116:
	.loc 4 4286 13
	movq	-4552(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4286 10
	xorl	$1, %eax
	.loc 4 4288 10
	testb	%al, %al
	je	.L980
	.loc 4 4288 10 is_stmt 0 discriminator 1
	leaq	.LC209(%rip), %rax
	jmp	.L981
.L980:
	.loc 4 4288 12 is_stmt 1 discriminator 2
	movq	output_block_size(%rip), %rcx
	movl	human_output_opts(%rip), %edx
	.loc 4 4288 28 discriminator 2
	movq	-4552(%rbp), %rax
	movq	88(%rax), %rax
	.loc 4 4288 12 discriminator 2
	movq	%rax, %rdi
	leaq	-4336(%rbp), %rax
	movq	%rcx, %r8
	movl	$512, %ecx
	movq	%rax, %rsi
	call	human_readable@PLT
.L981:
	.loc 4 4285 19
	movq	%rax, -4504(%rbp)
	.loc 4 4291 35
	movl	block_size_width(%rip), %ebx
	.loc 4 4291 37
	movq	-4504(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gnu_mbswidth@PLT
	.loc 4 4291 16
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -4532(%rbp)
	.loc 4 4291 7
	jmp	.L982
.L983:
	.loc 4 4292 11 discriminator 3
	movq	-4512(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -4512(%rbp)
	.loc 4 4292 14 discriminator 3
	movb	$32, (%rax)
	.loc 4 4291 71 discriminator 3
	subl	$1, -4532(%rbp)
.L982:
	.loc 4 4291 7 discriminator 1
	cmpl	$0, -4532(%rbp)
	jg	.L983
	.loc 4 4293 13
	jmp	.L984
.L985:
	.loc 4 4294 9
	nop
.L984:
	.loc 4 4293 29
	movq	-4504(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -4504(%rbp)
	.loc 4 4293 17
	movq	-4512(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -4512(%rbp)
	.loc 4 4293 22
	movzbl	(%rdx), %edx
	.loc 4 4293 20
	movb	%dl, (%rax)
	.loc 4 4293 15
	movzbl	(%rax), %eax
	.loc 4 4293 13
	testb	%al, %al
	jne	.L985
	.loc 4 4295 8
	movq	-4512(%rbp), %rax
	subq	$1, %rax
	.loc 4 4295 13
	movb	$32, (%rax)
.L979:
.LBE116:
.LBB117:
	.loc 4 4303 17
	movq	-4552(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4303 14
	xorl	$1, %eax
	.loc 4 4302 5
	testb	%al, %al
	je	.L986
	.loc 4 4302 5 is_stmt 0 discriminator 1
	leaq	.LC209(%rip), %rax
	jmp	.L987
.L986:
	.loc 4 4303 35 is_stmt 1
	movq	-4552(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-4336(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
.L987:
	.loc 4 4302 5 discriminator 2
	movl	nlink_width(%rip), %ecx
	leaq	-4380(%rbp), %rdx
	movq	-4512(%rbp), %rdi
	movq	%rax, %r8
	leaq	.LC213(%rip), %rsi
	movl	$0, %eax
	call	sprintf@PLT
.LBE117:
	.loc 4 4308 8 discriminator 2
	movq	-4512(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 4308 5 discriminator 2
	addq	%rax, -4512(%rbp)
	.loc 4 4310 3 discriminator 2
	movzbl	dired(%rip), %eax
	testb	%al, %al
	je	.L988
	.loc 4 4310 3 is_stmt 0 discriminator 1
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	leaq	.LC195(%rip), %rdi
	call	fwrite_unlocked@PLT
	movq	dired_pos(%rip), %rax
	addq	$2, %rax
	movq	%rax, dired_pos(%rip)
.L988:
	.loc 4 4312 7 is_stmt 1
	movzbl	print_owner(%rip), %eax
	.loc 4 4312 6
	testb	%al, %al
	jne	.L989
	.loc 4 4312 19 discriminator 1
	movzbl	print_group(%rip), %eax
	testb	%al, %al
	jne	.L989
	.loc 4 4312 34 discriminator 2
	movzbl	print_author(%rip), %eax
	testb	%al, %al
	jne	.L989
	.loc 4 4312 50 discriminator 3
	movzbl	print_scontext(%rip), %eax
	testb	%al, %al
	je	.L990
.L989:
	.loc 4 4314 7
	movq	stdout(%rip), %rdx
	leaq	-3680(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	leaq	-3680(%rbp), %rax
	movq	-4512(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	dired_pos(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, dired_pos(%rip)
	.loc 4 4316 11
	movzbl	print_owner(%rip), %eax
	.loc 4 4316 10
	testb	%al, %al
	je	.L991
	.loc 4 4317 52
	movq	-4552(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4317 9
	movzbl	%al, %edx
	movl	owner_width(%rip), %ecx
	movq	-4552(%rbp), %rax
	movl	52(%rax), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	format_user
.L991:
	.loc 4 4319 11
	movzbl	print_group(%rip), %eax
	.loc 4 4319 10
	testb	%al, %al
	je	.L992
	.loc 4 4320 53
	movq	-4552(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4320 9
	movzbl	%al, %edx
	movl	group_width(%rip), %ecx
	movq	-4552(%rbp), %rax
	movl	56(%rax), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	format_group
.L992:
	.loc 4 4322 11
	movzbl	print_author(%rip), %eax
	.loc 4 4322 10
	testb	%al, %al
	je	.L993
	.loc 4 4323 56
	movq	-4552(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4323 9
	movzbl	%al, %edx
	movl	author_width(%rip), %ecx
	movq	-4552(%rbp), %rax
	movl	52(%rax), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	format_user
.L993:
	.loc 4 4325 11
	movzbl	print_scontext(%rip), %eax
	.loc 4 4325 10
	testb	%al, %al
	je	.L994
	.loc 4 4326 9
	movl	scontext_width(%rip), %edx
	.loc 4 4326 32
	movq	-4552(%rbp), %rax
	movq	176(%rax), %rax
	.loc 4 4326 9
	movl	$0, %esi
	movq	%rax, %rdi
	call	format_user_or_group
.L994:
	.loc 4 4328 9
	leaq	-3680(%rbp), %rax
	movq	%rax, -4512(%rbp)
.L990:
	.loc 4 4331 8
	movq	-4552(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4331 6
	testb	%al, %al
	je	.L995
	.loc 4 4332 11
	movq	-4552(%rbp), %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 4 4332 7
	cmpl	$8192, %eax
	je	.L996
	.loc 4 4332 40 discriminator 1
	movq	-4552(%rbp), %rax
	movl	48(%rax), %eax
	andl	$61440, %eax
	.loc 4 4332 37 discriminator 1
	cmpl	$24576, %eax
	jne	.L995
.L996:
.LBB118:
	.loc 4 4337 27
	movl	file_size_width(%rip), %eax
	.loc 4 4337 56
	movl	major_device_number_width(%rip), %edx
	leal	2(%rdx), %ecx
	.loc 4 4338 30
	movl	minor_device_number_width(%rip), %edx
	addl	%ecx, %edx
	.loc 4 4336 11
	subl	%edx, %eax
	movl	%eax, -4524(%rbp)
	.loc 4 4343 27
	movq	-4552(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	gnu_dev_minor@PLT
	.loc 4 4339 7
	movl	%eax, %edx
	leaq	-4336(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rbx
	movl	minor_device_number_width(%rip), %r12d
	.loc 4 4341 27
	movq	-4552(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	gnu_dev_major@PLT
	.loc 4 4339 7
	movl	%eax, %edx
	leaq	-4368(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rcx
	.loc 4 4340 44
	movl	$0, %eax
	cmpl	$0, -4524(%rbp)
	cmovns	-4524(%rbp), %eax
	movl	%eax, %edx
	.loc 4 4339 7
	movl	major_device_number_width(%rip), %eax
	addl	%eax, %edx
	movq	-4512(%rbp), %rax
	movq	%rbx, %r9
	movl	%r12d, %r8d
	leaq	.LC214(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 4 4344 9
	movl	file_size_width(%rip), %eax
	cltq
	addq	$1, %rax
	addq	%rax, -4512(%rbp)
.LBE118:
	.loc 4 4333 5
	jmp	.L997
.L995:
.LBB119:
	.loc 4 4350 13
	movq	-4552(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4350 10
	xorl	$1, %eax
	.loc 4 4352 10
	testb	%al, %al
	je	.L998
	.loc 4 4352 10 is_stmt 0 discriminator 1
	leaq	.LC209(%rip), %rax
	jmp	.L999
.L998:
	.loc 4 4352 12 is_stmt 1 discriminator 2
	movq	file_output_block_size(%rip), %r12
	movl	file_human_output_opts(%rip), %ebx
	movq	-4552(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	unsigned_file_size
	movq	%rax, %rdi
	leaq	-4336(%rbp), %rax
	movq	%r12, %r8
	movl	$1, %ecx
	movl	%ebx, %edx
	movq	%rax, %rsi
	call	human_readable@PLT
.L999:
	.loc 4 4349 19
	movq	%rax, -4496(%rbp)
	.loc 4 4356 34
	movl	file_size_width(%rip), %ebx
	.loc 4 4356 36
	movq	-4496(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gnu_mbswidth@PLT
	.loc 4 4356 16
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -4528(%rbp)
	.loc 4 4356 7
	jmp	.L1000
.L1001:
	.loc 4 4357 11 discriminator 3
	movq	-4512(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -4512(%rbp)
	.loc 4 4357 14 discriminator 3
	movb	$32, (%rax)
	.loc 4 4356 68 discriminator 3
	subl	$1, -4528(%rbp)
.L1000:
	.loc 4 4356 7 discriminator 1
	cmpl	$0, -4528(%rbp)
	jg	.L1001
	.loc 4 4358 13
	jmp	.L1002
.L1003:
	.loc 4 4359 9
	nop
.L1002:
	.loc 4 4358 27
	movq	-4496(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -4496(%rbp)
	.loc 4 4358 17
	movq	-4512(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -4512(%rbp)
	.loc 4 4358 22
	movzbl	(%rdx), %edx
	.loc 4 4358 20
	movb	%dl, (%rax)
	.loc 4 4358 15
	movzbl	(%rax), %eax
	.loc 4 4358 13
	testb	%al, %al
	jne	.L1003
	.loc 4 4360 8
	movq	-4512(%rbp), %rax
	subq	$1, %rax
	.loc 4 4360 13
	movb	$32, (%rax)
.L997:
.LBE119:
	.loc 4 4363 5
	movq	$0, -4520(%rbp)
	.loc 4 4364 6
	movq	-4512(%rbp), %rax
	movb	$1, (%rax)
	.loc 4 4366 8
	movq	-4552(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4366 6
	testb	%al, %al
	je	.L1004
	.loc 4 4366 18 discriminator 1
	cmpb	$0, -4534(%rbp)
	je	.L1004
	.loc 4 4367 10
	movq	localtz(%rip), %rax
	leaq	-4448(%rbp), %rdx
	leaq	-4480(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	localtime_rz@PLT
	.loc 4 4367 7
	testq	%rax, %rax
	je	.L1004
.LBB120:
	.loc 4 4375 11
	movq	-4480(%rbp), %rax
	movq	-4472(%rbp), %rdx
	movq	current_time(%rip), %rdi
	movq	8+current_time(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	timespec_cmp@PLT
	.loc 4 4375 10
	testl	%eax, %eax
	jns	.L1005
	.loc 4 4376 9
	leaq	current_time(%rip), %rdi
	call	gettime@PLT
.L1005:
	.loc 4 4382 43
	movq	current_time(%rip), %rax
	.loc 4 4382 51
	subq	$15778476, %rax
	.loc 4 4382 29
	movq	%rax, -4464(%rbp)
	.loc 4 4383 44
	movq	8+current_time(%rip), %rax
	.loc 4 4383 30
	movq	%rax, -4456(%rbp)
	.loc 4 4385 17
	movq	-4480(%rbp), %rax
	movq	-4472(%rbp), %rdx
	movq	-4464(%rbp), %rdi
	movq	-4456(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	timespec_cmp@PLT
	.loc 4 4386 17
	testl	%eax, %eax
	jns	.L1006
	.loc 4 4386 21 discriminator 1
	movq	current_time(%rip), %rax
	movq	8+current_time(%rip), %rdx
	movq	-4480(%rbp), %rdi
	movq	-4472(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	timespec_cmp@PLT
	.loc 4 4386 17 discriminator 1
	testl	%eax, %eax
	jns	.L1006
	.loc 4 4386 17 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L1007
.L1006:
	.loc 4 4386 17 discriminator 4
	movl	$0, %eax
.L1007:
	.loc 4 4385 14 is_stmt 1
	movb	%al, -4533(%rbp)
	andb	$1, -4533(%rbp)
	.loc 4 4391 63
	movq	-4472(%rbp), %rax
	.loc 4 4390 11
	movl	%eax, %edi
	movq	localtz(%rip), %rsi
	movzbl	-4533(%rbp), %edx
	leaq	-4448(%rbp), %rcx
	movq	-4512(%rbp), %rax
	movl	%edi, %r9d
	movq	%rsi, %r8
	movl	$1001, %esi
	movq	%rax, %rdi
	call	align_nstrftime
	movq	%rax, -4520(%rbp)
.L1004:
.LBE120:
	.loc 4 4394 6
	cmpq	$0, -4520(%rbp)
	jne	.L1008
	.loc 4 4394 13 discriminator 1
	movq	-4512(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 4394 9 discriminator 1
	testb	%al, %al
	jne	.L1009
.L1008:
	.loc 4 4396 9
	movq	-4520(%rbp), %rax
	addq	%rax, -4512(%rbp)
	.loc 4 4397 9
	movq	-4512(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -4512(%rbp)
	.loc 4 4397 12
	movb	$32, (%rax)
	.loc 4 4400 10
	movq	-4512(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L1010
.L1009:
.LBB121:
	.loc 4 4408 20
	movq	-4552(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4407 7
	testb	%al, %al
	je	.L1011
	.loc 4 4408 30
	cmpb	$0, -4534(%rbp)
	je	.L1011
	.loc 4 4410 19
	movq	-4480(%rbp), %rax
	leaq	-4336(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	timetostr
	movq	%rax, %rbx
	.loc 4 4407 7
	jmp	.L1012
.L1011:
	.loc 4 4407 7 is_stmt 0 discriminator 1
	leaq	.LC209(%rip), %rbx
.L1012:
	.loc 4 4407 7 discriminator 2
	call	long_time_expected_width
	movl	%eax, %edx
	movq	-4512(%rbp), %rax
	movq	%rbx, %rcx
	leaq	.LC212(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	.loc 4 4412 12 is_stmt 1 discriminator 2
	movq	-4512(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 4412 9 discriminator 2
	addq	%rax, -4512(%rbp)
.L1010:
.LBE121:
	.loc 4 4415 3
	movq	stdout(%rip), %rdx
	leaq	-3680(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	leaq	-3680(%rbp), %rax
	movq	-4512(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	dired_pos(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, dired_pos(%rip)
	.loc 4 4416 67
	leaq	-3680(%rbp), %rax
	movq	-4512(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 4 4416 14
	movq	%rax, %rdx
	movq	-4552(%rbp), %rax
	movq	%rdx, %rcx
	leaq	dired_obstack(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	print_name_with_quoting
	movq	%rax, -4488(%rbp)
	.loc 4 4418 8
	movq	-4552(%rbp), %rax
	movl	168(%rax), %eax
	.loc 4 4418 6
	cmpl	$6, %eax
	jne	.L1013
	.loc 4 4420 12
	movq	-4552(%rbp), %rax
	movq	8(%rax), %rax
	.loc 4 4420 10
	testq	%rax, %rax
	je	.L1017
	.loc 4 4422 11
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC215(%rip), %rdi
	call	fwrite_unlocked@PLT
	movq	dired_pos(%rip), %rax
	addq	$4, %rax
	movq	%rax, dired_pos(%rip)
	.loc 4 4423 54
	leaq	-3680(%rbp), %rax
	movq	-4512(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	.loc 4 4423 61
	movq	-4488(%rbp), %rax
	addq	%rdx, %rax
	.loc 4 4423 11
	leaq	4(%rax), %rdx
	movq	-4552(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	print_name_with_quoting
	.loc 4 4424 31
	movl	indicator_style(%rip), %eax
	.loc 4 4424 14
	testl	%eax, %eax
	je	.L1017
	.loc 4 4425 13
	movq	-4552(%rbp), %rax
	movl	172(%rax), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	print_type_indicator
	.loc 4 4430 1
	jmp	.L1017
.L1013:
	.loc 4 4428 28
	movl	indicator_style(%rip), %eax
	.loc 4 4428 11
	testl	%eax, %eax
	je	.L1017
	.loc 4 4429 5
	movq	-4552(%rbp), %rax
	movl	168(%rax), %edx
	movq	-4552(%rbp), %rax
	movl	48(%rax), %ecx
	.loc 4 4429 28
	movq	-4552(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4429 5
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	print_type_indicator
.L1017:
	.loc 4 4430 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1015
	call	__stack_chk_fail@PLT
.L1015:
	addq	$4544, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE216:
	.size	print_long_format, .-print_long_format
	.type	quote_name_buf, @function
quote_name_buf:
.LFB217:
	.loc 4 4445 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movl	%r8d, -180(%rbp)
	movq	%r9, -192(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	.loc 4 4445 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 4 4446 9
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	.loc 4 4447 10
	movq	$0, -112(%rbp)
	.loc 4 4448 10
	movq	$0, -104(%rbp)
	.loc 4 4451 27
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	get_quoting_style@PLT
	movl	%eax, -128(%rbp)
	.loc 4 4452 32
	movzbl	qmark_funny_chars(%rip), %eax
	.loc 4 4453 32
	testb	%al, %al
	je	.L1019
	.loc 4 4453 32 is_stmt 0 discriminator 1
	cmpl	$1, -128(%rbp)
	je	.L1020
	.loc 4 4454 36 is_stmt 1
	cmpl	$2, -128(%rbp)
	je	.L1020
	.loc 4 4455 36
	cmpl	$0, -128(%rbp)
	jne	.L1019
.L1020:
	.loc 4 4453 32 discriminator 3
	movl	$1, %eax
	jmp	.L1021
.L1019:
	.loc 4 4453 32 is_stmt 0 discriminator 2
	movl	$0, %eax
.L1021:
	.loc 4 4452 8 is_stmt 1
	movb	%al, -133(%rbp)
	andb	$1, -133(%rbp)
	.loc 4 4457 6
	cmpl	$0, -180(%rbp)
	je	.L1022
	.loc 4 4459 13
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rcx, %r8
	movq	$-1, %rcx
	movq	%rax, %rdi
	call	quotearg_buffer@PLT
	movq	%rax, -104(%rbp)
	.loc 4 4460 10
	movq	-160(%rbp), %rax
	cmpq	-104(%rbp), %rax
	ja	.L1023
	.loc 4 4462 17
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -120(%rbp)
	.loc 4 4463 11
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rcx, %r8
	movq	$-1, %rcx
	movq	%rax, %rdi
	call	quotearg_buffer@PLT
.L1023:
	.loc 4 4466 17
	movq	-168(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 4 4466 26
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 4466 32
	cmpb	%al, %dl
	jne	.L1024
	.loc 4 4466 35 discriminator 2
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 4466 32 discriminator 2
	cmpq	%rax, -104(%rbp)
	je	.L1025
.L1024:
	.loc 4 4466 32 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L1026
.L1025:
	.loc 4 4466 32 discriminator 4
	movl	$0, %eax
.L1026:
	.loc 4 4466 14 is_stmt 1 discriminator 6
	movb	%al, -134(%rbp)
	andb	$1, -134(%rbp)
	jmp	.L1027
.L1022:
	.loc 4 4468 11
	cmpb	$0, -133(%rbp)
	je	.L1028
	.loc 4 4470 13
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -104(%rbp)
	.loc 4 4471 10
	movq	-160(%rbp), %rax
	cmpq	-104(%rbp), %rax
	ja	.L1029
	.loc 4 4472 15
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, -120(%rbp)
.L1029:
	.loc 4 4473 7
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-168(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 4 4475 14
	movb	$0, -134(%rbp)
	jmp	.L1027
.L1028:
	.loc 4 4479 13
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -104(%rbp)
	.loc 4 4480 11
	movq	-168(%rbp), %rax
	movq	%rax, -120(%rbp)
	.loc 4 4481 14
	movb	$0, -134(%rbp)
.L1027:
	.loc 4 4484 6
	cmpb	$0, -133(%rbp)
	je	.L1030
	.loc 4 4486 11
	call	__ctype_get_mb_cur_max@PLT
	.loc 4 4486 10
	cmpq	$1, %rax
	jbe	.L1031
.LBB122:
	.loc 4 4488 23
	movq	-120(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 4 4489 23
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 4 4490 17
	movq	-120(%rbp), %rax
	movq	%rax, -88(%rbp)
	.loc 4 4491 27
	movq	$0, -112(%rbp)
	.loc 4 4493 17
	jmp	.L1032
.L1046:
	.loc 4 4494 21
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 4 4494 13
	cmpl	$126, %eax
	jg	.L1033
	cmpl	$97, %eax
	jge	.L1034
	cmpl	$95, %eax
	jg	.L1033
	cmpl	$65, %eax
	jge	.L1034
	cmpl	$35, %eax
	jg	.L1035
	cmpl	$32, %eax
	jge	.L1034
	jmp	.L1033
.L1035:
	subl	$37, %eax
	cmpl	$26, %eax
	ja	.L1033
.L1034:
	.loc 4 4517 28
	movq	-96(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -96(%rbp)
	.loc 4 4517 21
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -88(%rbp)
	.loc 4 4517 26
	movzbl	(%rdx), %edx
	.loc 4 4517 24
	movb	%dl, (%rax)
	.loc 4 4518 35
	addq	$1, -112(%rbp)
	.loc 4 4519 19
	jmp	.L1032
.L1033:
.LBB123:
	.loc 4 4525 31
	movq	$0, -32(%rbp)
.L1044:
.LBB124:
	.loc 4 4532 57
	movq	-40(%rbp), %rax
	subq	-96(%rbp), %rax
	.loc 4 4532 33
	movq	%rax, %rdi
	leaq	-32(%rbp), %rdx
	movq	-96(%rbp), %rsi
	leaq	-132(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	rpl_mbrtowc@PLT
	movq	%rax, -80(%rbp)
	.loc 4 4534 28
	cmpq	$-1, -80(%rbp)
	jne	.L1036
	.loc 4 4539 30
	addq	$1, -96(%rbp)
	.loc 4 4540 31
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	.loc 4 4540 34
	movb	$63, (%rax)
	.loc 4 4541 45
	addq	$1, -112(%rbp)
	.loc 4 4542 29
	jmp	.L1045
.L1036:
	.loc 4 4545 28
	cmpq	$-2, -80(%rbp)
	jne	.L1038
	.loc 4 4550 31
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc 4 4551 31
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	.loc 4 4551 34
	movb	$63, (%rax)
	.loc 4 4552 45
	addq	$1, -112(%rbp)
	.loc 4 4553 29
	jmp	.L1045
.L1038:
	.loc 4 4556 28
	cmpq	$0, -80(%rbp)
	jne	.L1039
	.loc 4 4558 33
	movq	$1, -80(%rbp)
.L1039:
	.loc 4 4560 29
	movl	-132(%rbp), %eax
	movl	%eax, %edi
	call	wcwidth@PLT
	movl	%eax, -124(%rbp)
	.loc 4 4561 28
	cmpl	$0, -124(%rbp)
	js	.L1040
	.loc 4 4565 29
	jmp	.L1041
.L1042:
	.loc 4 4566 40 discriminator 2
	movq	-96(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -96(%rbp)
	.loc 4 4566 33 discriminator 2
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -88(%rbp)
	.loc 4 4566 38 discriminator 2
	movzbl	(%rdx), %edx
	.loc 4 4566 36 discriminator 2
	movb	%dl, (%rax)
	.loc 4 4565 47 discriminator 2
	subq	$1, -80(%rbp)
.L1041:
	.loc 4 4565 29 discriminator 1
	cmpq	$0, -80(%rbp)
	jne	.L1042
	.loc 4 4567 45
	movl	-124(%rbp), %eax
	cltq
	addq	%rax, -112(%rbp)
	jmp	.L1043
.L1040:
	.loc 4 4574 31
	movq	-80(%rbp), %rax
	addq	%rax, -96(%rbp)
	.loc 4 4575 31
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -88(%rbp)
	.loc 4 4575 34
	movb	$63, (%rax)
	.loc 4 4576 45
	addq	$1, -112(%rbp)
.L1043:
.LBE124:
	.loc 4 4579 30
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	mbsinit@PLT
	.loc 4 4579 21
	testl	%eax, %eax
	je	.L1044
.L1045:
.LBE123:
	.loc 4 4581 19
	nop
.L1032:
	.loc 4 4493 17
	movq	-96(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L1046
	.loc 4 4585 19
	movq	-88(%rbp), %rax
	subq	-120(%rbp), %rax
	.loc 4 4585 15
	movq	%rax, -104(%rbp)
.LBE122:
	jmp	.L1047
.L1031:
.LBB125:
	.loc 4 4589 17
	movq	-120(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc 4 4590 23
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	.loc 4 4592 17
	jmp	.L1048
.L1050:
	.loc 4 4594 21
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	.loc 4 4594 18
	testl	%eax, %eax
	jne	.L1049
	.loc 4 4595 20
	movq	-72(%rbp), %rax
	movb	$63, (%rax)
.L1049:
	.loc 4 4596 16
	addq	$1, -72(%rbp)
.L1048:
	.loc 4 4592 17
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L1050
	.loc 4 4598 27
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.L1047
.L1030:
.LBE125:
	.loc 4 4601 11
	cmpq	$0, -192(%rbp)
	je	.L1047
	.loc 4 4603 11
	call	__ctype_get_mb_cur_max@PLT
	.loc 4 4603 10
	cmpq	$1, %rax
	jbe	.L1051
	.loc 4 4604 27
	movq	-104(%rbp), %rcx
	movq	-120(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mbsnwidth@PLT
	.loc 4 4604 25
	cltq
	movq	%rax, -112(%rbp)
	jmp	.L1047
.L1051:
.LBB126:
	.loc 4 4607 23
	movq	-120(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 4 4608 23
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 4 4610 27
	movq	$0, -112(%rbp)
	.loc 4 4611 17
	jmp	.L1052
.L1054:
	.loc 4 4613 19
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	.loc 4 4613 18
	testl	%eax, %eax
	je	.L1053
	.loc 4 4614 32
	addq	$1, -112(%rbp)
.L1053:
	.loc 4 4615 16
	addq	$1, -64(%rbp)
.L1052:
	.loc 4 4611 17
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L1054
.L1047:
.LBE126:
	.loc 4 4623 11
	movzbl	align_variable_outer_quotes(%rip), %eax
	.loc 4 4623 58
	testb	%al, %al
	je	.L1055
	.loc 4 4623 39 discriminator 1
	movzbl	cwd_some_quoted(%rip), %eax
	testb	%al, %al
	je	.L1055
	.loc 4 4623 61 discriminator 3
	movzbl	-134(%rbp), %eax
	xorl	$1, %eax
	.loc 4 4623 58 discriminator 3
	testb	%al, %al
	je	.L1055
	.loc 4 4623 58 is_stmt 0 discriminator 5
	movl	$1, %eax
	jmp	.L1056
.L1055:
	.loc 4 4623 58 discriminator 6
	movl	$0, %eax
.L1056:
	.loc 4 4623 58 discriminator 8
	andl	$1, %eax
	.loc 4 4623 8 is_stmt 1 discriminator 8
	movq	-200(%rbp), %rdx
	movb	%al, (%rdx)
	.loc 4 4625 6 discriminator 8
	cmpq	$0, -192(%rbp)
	je	.L1057
	.loc 4 4626 12
	movq	-192(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, (%rax)
.L1057:
	.loc 4 4628 10
	movq	-152(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 4 4630 10
	movq	-104(%rbp), %rax
	.loc 4 4631 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L1059
	call	__stack_chk_fail@PLT
.L1059:
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE217:
	.size	quote_name_buf, .-quote_name_buf
	.type	quote_name_width, @function
quote_name_width:
.LFB218:
	.loc 4 4636 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$80, %rsp
	movq	%rdi, -8248(%rbp)
	movq	%rsi, -8256(%rbp)
	movl	%edx, -8260(%rbp)
	.loc 4 4636 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 4638 9
	leaq	-8208(%rbp), %rax
	movq	%rax, -8224(%rbp)
	.loc 4 4642 3
	leaq	-8216(%rbp), %r8
	movl	-8260(%rbp), %edi
	movq	-8256(%rbp), %rcx
	movq	-8248(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	subq	$8, %rsp
	leaq	-8225(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	$8192, %esi
	movq	%rax, %rdi
	call	quote_name_buf
	addq	$16, %rsp
	.loc 4 4645 11
	movq	-8224(%rbp), %rdx
	.loc 4 4645 6
	leaq	-8208(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L1061
	.loc 4 4645 30 discriminator 1
	movq	-8224(%rbp), %rax
	.loc 4 4645 23 discriminator 1
	cmpq	%rax, -8248(%rbp)
	je	.L1061
	.loc 4 4646 5
	movq	-8224(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L1061:
	.loc 4 4648 9
	movzbl	-8225(%rbp), %eax
	movzbl	%al, %edx
	movq	-8216(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8216(%rbp)
	.loc 4 4650 10
	movq	-8216(%rbp), %rax
	.loc 4 4651 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1063
	call	__stack_chk_fail@PLT
.L1063:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE218:
	.size	quote_name_width, .-quote_name_width
	.section	.rodata
.LC216:
	.string	"%%%02x"
	.text
	.type	file_escape, @function
file_escape:
.LFB219:
	.loc 4 4657 1
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
	.loc 4 4658 28
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 4658 15
	addq	$1, %rax
	movq	%rax, %rsi
	movl	$3, %edi
	call	xnmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 4 4659 9
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 4 4660 9
	jmp	.L1065
.L1068:
	.loc 4 4662 10
	cmpb	$0, -28(%rbp)
	je	.L1066
	.loc 4 4662 19 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 4662 16 discriminator 1
	cmpb	$47, %al
	jne	.L1066
	.loc 4 4664 13
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 4 4664 16
	movb	$47, (%rax)
	.loc 4 4665 14
	addq	$1, -24(%rbp)
	jmp	.L1065
.L1066:
	.loc 4 4667 34
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 4667 24
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 4 4667 23
	cltq
	leaq	RFC3986(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 4 4667 15
	testb	%al, %al
	je	.L1067
	.loc 4 4668 20
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -24(%rbp)
	.loc 4 4668 11
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -16(%rbp)
	.loc 4 4668 16
	movzbl	(%rdx), %edx
	.loc 4 4668 14
	movb	%dl, (%rax)
	jmp	.L1065
.L1067:
	.loc 4 4670 50
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 4 4670 46
	movzbl	(%rax), %eax
	.loc 4 4670 36
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	.loc 4 4670 14
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	leaq	.LC216(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	cltq
	.loc 4 4670 11
	addq	%rax, -16(%rbp)
.L1065:
	.loc 4 4660 10
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 4660 9
	testb	%al, %al
	jne	.L1068
	.loc 4 4672 6
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	.loc 4 4673 10
	movq	-8(%rbp), %rax
	.loc 4 4674 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE219:
	.size	file_escape, .-file_escape
	.section	.rodata
.LC217:
	.string	"/"
.LC218:
	.string	"\033]8;;file://%s%s%s\007"
.LC219:
	.string	"\033]8;;\007"
	.text
	.type	quote_name, @function
quote_name:
.LFB220:
	.loc 4 4680 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$160, %rsp
	movq	%rdi, -8312(%rbp)
	movq	%rsi, -8320(%rbp)
	movl	%edx, -8324(%rbp)
	movq	%rcx, -8336(%rbp)
	movl	%r8d, %eax
	movq	%r9, -8344(%rbp)
	movb	%al, -8328(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8352(%rbp)
	.loc 4 4680 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 4682 9
	leaq	-8208(%rbp), %rax
	movq	%rax, -8288(%rbp)
	.loc 4 4686 9
	movl	-8324(%rbp), %edi
	movq	-8320(%rbp), %rcx
	movq	-8312(%rbp), %rdx
	leaq	-8288(%rbp), %rax
	subq	$8, %rsp
	leaq	-8290(%rbp), %rsi
	pushq	%rsi
	movl	$0, %r9d
	movl	%edi, %r8d
	movl	$8192, %esi
	movq	%rax, %rdi
	call	quote_name_buf
	addq	$16, %rsp
	movq	%rax, -8280(%rbp)
	.loc 4 4689 7
	movzbl	-8290(%rbp), %eax
	.loc 4 4689 6
	testb	%al, %al
	je	.L1071
	.loc 4 4689 11 discriminator 1
	cmpb	$0, -8328(%rbp)
	je	.L1071
	.loc 4 4690 7
	movl	$32, %edi
	call	putchar_unlocked@PLT
	movq	dired_pos(%rip), %rax
	addq	$1, %rax
	movq	%rax, dired_pos(%rip)
.L1071:
	.loc 4 4692 6
	cmpq	$0, -8336(%rbp)
	je	.L1072
	.loc 4 4693 5
	movq	-8336(%rbp), %rax
	movq	%rax, %rdi
	call	print_color_indicator
.L1072:
	.loc 4 4697 8
	movb	$0, -8289(%rbp)
	.loc 4 4699 6
	cmpq	$0, -8352(%rbp)
	je	.L1073
.LBB127:
	.loc 4 4701 11
	movzbl	align_variable_outer_quotes(%rip), %eax
	.loc 4 4701 10
	testb	%al, %al
	je	.L1074
	.loc 4 4701 39 discriminator 1
	movzbl	cwd_some_quoted(%rip), %eax
	testb	%al, %al
	je	.L1074
	.loc 4 4701 61 discriminator 2
	movzbl	-8290(%rbp), %eax
	xorl	$1, %eax
	.loc 4 4701 58 discriminator 2
	testb	%al, %al
	je	.L1074
	.loc 4 4703 23
	movb	$1, -8289(%rbp)
	.loc 4 4704 11
	movq	-8288(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.L1074:
	.loc 4 4706 17
	movq	hostname(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	file_escape
	movq	%rax, -8272(%rbp)
	.loc 4 4707 17
	movq	-8352(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	file_escape
	movq	%rax, -8264(%rbp)
	.loc 4 4713 45
	movq	-8264(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 4713 7
	cmpb	$47, %al
	jne	.L1075
	.loc 4 4713 7 is_stmt 0 discriminator 1
	leaq	.LC18(%rip), %rax
	jmp	.L1076
.L1075:
	.loc 4 4713 7 discriminator 2
	leaq	.LC217(%rip), %rax
.L1076:
	.loc 4 4713 7 discriminator 4
	movq	-8264(%rbp), %rdx
	movq	-8272(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC218(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 4 4714 7 is_stmt 1 discriminator 4
	movq	-8272(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 4 4715 7 discriminator 4
	movq	-8264(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L1073:
.LBE127:
	.loc 4 4718 6
	cmpq	$0, -8344(%rbp)
	je	.L1077
	.loc 4 4719 5
	movzbl	dired(%rip), %eax
	testb	%al, %al
	je	.L1077
.LBB128:
	.loc 4 4719 5 is_stmt 0 discriminator 1
	movq	-8344(%rbp), %rax
	movq	%rax, -8256(%rbp)
	movq	$8, -8248(%rbp)
.LBB129:
	movq	-8256(%rbp), %rax
	movq	%rax, -8240(%rbp)
	movq	-8240(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8240(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE129:
	cmpq	-8248(%rbp), %rax
	jnb	.L1078
	.loc 4 4719 5 discriminator 2
	movq	-8248(%rbp), %rdx
	movq	-8256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L1078:
	.loc 4 4719 5 discriminator 4
	movq	-8256(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8248(%rbp), %rdx
	leaq	dired_pos(%rip), %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8256(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8248(%rbp), %rax
	addq	%rax, %rdx
	movq	-8256(%rbp), %rax
	movq	%rdx, 24(%rax)
.L1077:
.LBE128:
	.loc 4 4721 3 is_stmt 1
	movq	stdout(%rip), %rax
	movzbl	-8289(%rbp), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	movq	-8280(%rbp), %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-8288(%rbp), %rsi
	movzbl	-8289(%rbp), %ecx
	leaq	(%rsi,%rcx), %rdi
	movq	%rax, %rcx
	movl	$1, %esi
	call	fwrite_unlocked@PLT
	.loc 4 4723 13
	movq	dired_pos(%rip), %rdx
	movq	-8280(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, dired_pos(%rip)
	.loc 4 4725 6
	cmpq	$0, -8344(%rbp)
	je	.L1079
	.loc 4 4726 5
	movzbl	dired(%rip), %eax
	testb	%al, %al
	je	.L1079
.LBB130:
	.loc 4 4726 5 is_stmt 0 discriminator 1
	movq	-8344(%rbp), %rax
	movq	%rax, -8232(%rbp)
	movq	$8, -8224(%rbp)
.LBB131:
	movq	-8232(%rbp), %rax
	movq	%rax, -8216(%rbp)
	movq	-8216(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8216(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE131:
	cmpq	-8224(%rbp), %rax
	jnb	.L1080
	.loc 4 4726 5 discriminator 2
	movq	-8224(%rbp), %rdx
	movq	-8232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L1080:
	.loc 4 4726 5 discriminator 4
	movq	-8232(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8224(%rbp), %rdx
	leaq	dired_pos(%rip), %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8232(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8224(%rbp), %rax
	addq	%rax, %rdx
	movq	-8232(%rbp), %rax
	movq	%rdx, 24(%rax)
.L1079:
.LBE130:
	.loc 4 4728 6 is_stmt 1
	cmpq	$0, -8352(%rbp)
	je	.L1081
	.loc 4 4730 7
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$6, %edx
	movl	$1, %esi
	leaq	.LC219(%rip), %rdi
	call	fwrite_unlocked@PLT
	.loc 4 4731 10
	cmpb	$0, -8289(%rbp)
	je	.L1081
	.loc 4 4732 9
	movq	-8288(%rbp), %rax
	movq	-8280(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.L1081:
	.loc 4 4735 11
	movq	-8288(%rbp), %rdx
	.loc 4 4735 6
	leaq	-8208(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L1082
	.loc 4 4735 30 discriminator 1
	movq	-8288(%rbp), %rax
	.loc 4 4735 23 discriminator 1
	cmpq	%rax, -8312(%rbp)
	je	.L1082
	.loc 4 4736 5
	movq	-8288(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L1082:
	.loc 4 4738 14
	movzbl	-8290(%rbp), %eax
	movzbl	%al, %edx
	movq	-8280(%rbp), %rax
	addq	%rdx, %rax
	.loc 4 4739 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1084
	call	__stack_chk_fail@PLT
.L1084:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE220:
	.size	quote_name, .-quote_name
	.type	print_name_with_quoting, @function
print_name_with_quoting:
.LFB221:
	.loc 4 4746 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, %eax
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movb	%al, -44(%rbp)
	.loc 4 4747 15
	cmpb	$0, -44(%rbp)
	je	.L1086
	.loc 4 4747 15 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L1087
.L1086:
	.loc 4 4747 15 discriminator 2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
.L1087:
	.loc 4 4747 15 discriminator 4
	movq	%rax, -24(%rbp)
	.loc 4 4749 50 is_stmt 1 discriminator 4
	movzbl	print_with_color(%rip), %eax
	.loc 4 4750 73 discriminator 4
	testb	%al, %al
	je	.L1088
	.loc 4 4750 33 discriminator 1
	movzbl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	get_color_indicator
	jmp	.L1089
.L1088:
	.loc 4 4750 73 discriminator 2
	movl	$0, %eax
.L1089:
	.loc 4 4749 25
	movq	%rax, -16(%rbp)
	.loc 4 4752 32
	movzbl	print_with_color(%rip), %eax
	.loc 4 4753 32
	testb	%al, %al
	je	.L1090
	.loc 4 4753 32 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)
	jne	.L1091
	.loc 4 4753 45 is_stmt 1 discriminator 4
	movl	$4, %edi
	call	is_colored
	.loc 4 4753 42 discriminator 4
	testb	%al, %al
	je	.L1090
.L1091:
	.loc 4 4753 32 discriminator 5
	movl	$1, %eax
	jmp	.L1092
.L1090:
	.loc 4 4753 32 is_stmt 0 discriminator 6
	movl	$0, %eax
.L1092:
	.loc 4 4752 8 is_stmt 1
	movb	%al, -25(%rbp)
	andb	$1, -25(%rbp)
	.loc 4 4756 60
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	.loc 4 4756 28
	movzbl	-44(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 4 4756 35
	andl	$1, %eax
	.loc 4 4755 16
	movzbl	%al, %r8d
	movq	-40(%rbp), %rax
	movl	196(%rax), %edx
	movq	filename_quoting_options(%rip), %rsi
	movq	-56(%rbp), %r9
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	quote_name
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	.loc 4 4758 3
	call	process_signals
	.loc 4 4759 6
	cmpb	$0, -25(%rbp)
	je	.L1093
	.loc 4 4761 7
	call	prep_non_filename_text
	.loc 4 4769 11
	movq	line_length(%rip), %rax
	.loc 4 4769 10
	testq	%rax, %rax
	je	.L1093
	.loc 4 4770 25
	movq	line_length(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rax, %rcx
	.loc 4 4770 53
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 4 4770 59
	subq	$1, %rax
	.loc 4 4770 64
	movq	line_length(%rip), %rsi
	movl	$0, %edx
	divq	%rsi
	.loc 4 4770 11
	cmpq	%rax, %rcx
	je	.L1093
	.loc 4 4771 9
	leaq	368+color_indicator(%rip), %rdi
	call	put_indicator
.L1093:
	.loc 4 4774 10
	movq	-8(%rbp), %rax
	.loc 4 4775 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE221:
	.size	print_name_with_quoting, .-print_name_with_quoting
	.type	prep_non_filename_text, @function
prep_non_filename_text:
.LFB222:
	.loc 4 4779 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 4 4780 29
	movq	40+color_indicator(%rip), %rax
	.loc 4 4780 6
	testq	%rax, %rax
	je	.L1096
	.loc 4 4781 5
	leaq	32+color_indicator(%rip), %rdi
	call	put_indicator
	.loc 4 4788 1
	jmp	.L1098
.L1096:
	.loc 4 4784 7
	leaq	color_indicator(%rip), %rdi
	call	put_indicator
	.loc 4 4785 7
	leaq	48+color_indicator(%rip), %rdi
	call	put_indicator
	.loc 4 4786 7
	leaq	16+color_indicator(%rip), %rdi
	call	put_indicator
.L1098:
	.loc 4 4788 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE222:
	.size	prep_non_filename_text, .-prep_non_filename_text
	.type	print_file_name_and_frills, @function
print_file_name_and_frills:
.LFB223:
	.loc 4 4796 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$704, %rsp
	movq	%rdi, -696(%rbp)
	movq	%rsi, -704(%rbp)
	.loc 4 4796 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 4799 3
	call	set_normal_color
	.loc 4 4801 7
	movzbl	print_inode(%rip), %eax
	.loc 4 4801 6
	testb	%al, %al
	je	.L1100
	.loc 4 4802 5
	movq	-696(%rbp), %rdx
	leaq	-672(%rbp), %rax
	movl	$652, %esi
	movq	%rax, %rdi
	call	format_inode
	movq	%rax, %rdx
	.loc 4 4802 28
	movl	format(%rip), %eax
	.loc 4 4802 5
	cmpl	$4, %eax
	je	.L1101
	.loc 4 4802 5 is_stmt 0 discriminator 1
	movl	inode_number_width(%rip), %eax
	jmp	.L1102
.L1101:
	.loc 4 4802 5 discriminator 2
	movl	$0, %eax
.L1102:
	.loc 4 4802 5 discriminator 4
	movl	%eax, %esi
	leaq	.LC212(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L1100:
	.loc 4 4805 7 is_stmt 1
	movzbl	print_block_size(%rip), %eax
	.loc 4 4805 6
	testb	%al, %al
	je	.L1103
	.loc 4 4807 16
	movq	-696(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4807 13
	xorl	$1, %eax
	.loc 4 4806 5
	testb	%al, %al
	je	.L1104
	.loc 4 4806 5 is_stmt 0 discriminator 1
	leaq	.LC209(%rip), %rax
	jmp	.L1105
.L1104:
	.loc 4 4808 15 is_stmt 1
	movq	output_block_size(%rip), %rcx
	movl	human_output_opts(%rip), %edx
	.loc 4 4808 31
	movq	-696(%rbp), %rax
	movq	88(%rax), %rax
	.loc 4 4808 15
	movq	%rax, %rdi
	leaq	-672(%rbp), %rax
	movq	%rcx, %r8
	movl	$512, %ecx
	movq	%rax, %rsi
	call	human_readable@PLT
.L1105:
	.loc 4 4806 28 discriminator 2
	movl	format(%rip), %edx
	.loc 4 4806 5 discriminator 2
	cmpl	$4, %edx
	je	.L1106
	.loc 4 4806 5 is_stmt 0 discriminator 3
	movl	block_size_width(%rip), %ecx
	jmp	.L1107
.L1106:
	.loc 4 4806 5 discriminator 4
	movl	$0, %ecx
.L1107:
	.loc 4 4806 5 discriminator 6
	movq	%rax, %rdx
	movl	%ecx, %esi
	leaq	.LC212(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L1103:
	.loc 4 4811 7 is_stmt 1
	movzbl	print_scontext(%rip), %eax
	.loc 4 4811 6
	testb	%al, %al
	je	.L1108
	.loc 4 4812 5
	movq	-696(%rbp), %rax
	movq	176(%rax), %rdx
	.loc 4 4812 28
	movl	format(%rip), %eax
	.loc 4 4812 5
	cmpl	$4, %eax
	je	.L1109
	.loc 4 4812 5 is_stmt 0 discriminator 1
	movl	scontext_width(%rip), %eax
	jmp	.L1110
.L1109:
	.loc 4 4812 5 discriminator 2
	movl	$0, %eax
.L1110:
	.loc 4 4812 5 discriminator 4
	movl	%eax, %esi
	leaq	.LC212(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L1108:
	.loc 4 4814 18 is_stmt 1
	movq	-704(%rbp), %rdx
	movq	-696(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	print_name_with_quoting
	movq	%rax, -680(%rbp)
	.loc 4 4816 23
	movl	indicator_style(%rip), %eax
	.loc 4 4816 6
	testl	%eax, %eax
	je	.L1111
	.loc 4 4817 14
	movq	-696(%rbp), %rax
	movl	168(%rax), %edx
	movq	-696(%rbp), %rax
	movl	48(%rax), %ecx
	.loc 4 4817 37
	movq	-696(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4817 14
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	print_type_indicator
	movzbl	%al, %eax
	.loc 4 4817 11
	addq	%rax, -680(%rbp)
.L1111:
	.loc 4 4819 10
	movq	-680(%rbp), %rax
	.loc 4 4820 1
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L1113
	call	__stack_chk_fail@PLT
.L1113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE223:
	.size	print_file_name_and_frills, .-print_file_name_and_frills
	.type	get_type_indicator, @function
get_type_indicator:
.LFB224:
	.loc 4 4826 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movb	%al, -20(%rbp)
	.loc 4 4829 7
	cmpb	$0, -20(%rbp)
	je	.L1115
	.loc 4 4829 17 discriminator 1
	movl	-24(%rbp), %eax
	andl	$61440, %eax
	.loc 4 4829 7 discriminator 1
	cmpl	$32768, %eax
	sete	%al
	jmp	.L1116
.L1115:
	.loc 4 4829 7 is_stmt 0 discriminator 2
	cmpl	$5, -28(%rbp)
	sete	%al
.L1116:
	.loc 4 4829 6 is_stmt 1 discriminator 4
	testb	%al, %al
	je	.L1117
	.loc 4 4831 10
	cmpb	$0, -20(%rbp)
	je	.L1118
	.loc 4 4831 38 discriminator 1
	movl	indicator_style(%rip), %eax
	.loc 4 4831 19 discriminator 1
	cmpl	$3, %eax
	jne	.L1118
	.loc 4 4831 59 discriminator 2
	movl	-24(%rbp), %eax
	andl	$73, %eax
	.loc 4 4831 50 discriminator 2
	testl	%eax, %eax
	je	.L1118
	.loc 4 4832 11
	movb	$42, -1(%rbp)
	jmp	.L1120
.L1118:
	.loc 4 4834 11
	movb	$0, -1(%rbp)
	jmp	.L1120
.L1117:
	.loc 4 4838 11
	cmpb	$0, -20(%rbp)
	je	.L1121
	.loc 4 4838 21 discriminator 1
	movl	-24(%rbp), %eax
	andl	$61440, %eax
	.loc 4 4838 11 discriminator 1
	cmpl	$16384, %eax
	sete	%al
	jmp	.L1122
.L1121:
	.loc 4 4838 56 discriminator 2
	cmpl	$3, -28(%rbp)
	je	.L1123
	.loc 4 4838 56 is_stmt 0 discriminator 5
	cmpl	$9, -28(%rbp)
	jne	.L1124
.L1123:
	.loc 4 4838 56 discriminator 6
	movl	$1, %eax
	jmp	.L1125
.L1124:
	.loc 4 4838 56 discriminator 7
	movl	$0, %eax
.L1125:
	.loc 4 4838 11 is_stmt 1 discriminator 9
	andl	$1, %eax
.L1122:
	.loc 4 4838 10 discriminator 10
	testb	%al, %al
	je	.L1126
	.loc 4 4839 11
	movb	$47, -1(%rbp)
	jmp	.L1120
.L1126:
	.loc 4 4840 32
	movl	indicator_style(%rip), %eax
	.loc 4 4840 15
	cmpl	$1, %eax
	jne	.L1127
	.loc 4 4841 11
	movb	$0, -1(%rbp)
	jmp	.L1120
.L1127:
	.loc 4 4842 16
	cmpb	$0, -20(%rbp)
	je	.L1128
	.loc 4 4842 26 discriminator 1
	movl	-24(%rbp), %eax
	andl	$61440, %eax
	.loc 4 4842 16 discriminator 1
	cmpl	$40960, %eax
	sete	%al
	jmp	.L1129
.L1128:
	.loc 4 4842 16 is_stmt 0 discriminator 2
	cmpl	$6, -28(%rbp)
	sete	%al
.L1129:
	.loc 4 4842 15 is_stmt 1 discriminator 4
	testb	%al, %al
	je	.L1130
	.loc 4 4843 11
	movb	$64, -1(%rbp)
	jmp	.L1120
.L1130:
	.loc 4 4844 16
	cmpb	$0, -20(%rbp)
	je	.L1131
	.loc 4 4844 26 discriminator 1
	movl	-24(%rbp), %eax
	andl	$61440, %eax
	.loc 4 4844 16 discriminator 1
	cmpl	$4096, %eax
	sete	%al
	jmp	.L1132
.L1131:
	.loc 4 4844 16 is_stmt 0 discriminator 2
	cmpl	$1, -28(%rbp)
	sete	%al
.L1132:
	.loc 4 4844 15 is_stmt 1 discriminator 4
	testb	%al, %al
	je	.L1133
	.loc 4 4845 11
	movb	$124, -1(%rbp)
	jmp	.L1120
.L1133:
	.loc 4 4846 16
	cmpb	$0, -20(%rbp)
	je	.L1134
	.loc 4 4846 26 discriminator 1
	movl	-24(%rbp), %eax
	andl	$61440, %eax
	.loc 4 4846 16 discriminator 1
	cmpl	$49152, %eax
	sete	%al
	jmp	.L1135
.L1134:
	.loc 4 4846 16 is_stmt 0 discriminator 2
	cmpl	$7, -28(%rbp)
	sete	%al
.L1135:
	.loc 4 4846 15 is_stmt 1 discriminator 4
	testb	%al, %al
	je	.L1136
	.loc 4 4847 11
	movb	$61, -1(%rbp)
	jmp	.L1120
.L1136:
	.loc 4 4851 11
	movb	$0, -1(%rbp)
.L1120:
	.loc 4 4853 10
	movzbl	-1(%rbp), %eax
	.loc 4 4854 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE224:
	.size	get_type_indicator, .-get_type_indicator
	.type	print_type_indicator, @function
print_type_indicator:
.LFB225:
	.loc 4 4858 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movb	%al, -20(%rbp)
	.loc 4 4859 12
	movzbl	-20(%rbp), %eax
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	get_type_indicator
	movb	%al, -1(%rbp)
	.loc 4 4860 6
	cmpb	$0, -1(%rbp)
	je	.L1139
	.loc 4 4861 5
	movsbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	movq	dired_pos(%rip), %rax
	addq	$1, %rax
	movq	%rax, dired_pos(%rip)
.L1139:
	.loc 4 4862 10
	cmpb	$0, -1(%rbp)
	setne	%al
	.loc 4 4863 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE225:
	.size	print_type_indicator, .-print_type_indicator
	.type	print_color_indicator, @function
print_color_indicator:
.LFB226:
	.loc 4 4868 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 4 4869 6
	cmpq	$0, -8(%rbp)
	je	.L1142
	.loc 4 4872 11
	movl	$4, %edi
	call	is_colored
	.loc 4 4872 10
	testb	%al, %al
	je	.L1143
	.loc 4 4873 9
	call	restore_default_color
.L1143:
	.loc 4 4874 7
	leaq	color_indicator(%rip), %rdi
	call	put_indicator
	.loc 4 4875 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	put_indicator
	.loc 4 4876 7
	leaq	16+color_indicator(%rip), %rdi
	call	put_indicator
.L1142:
	.loc 4 4879 14
	cmpq	$0, -8(%rbp)
	setne	%al
	.loc 4 4880 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE226:
	.size	print_color_indicator, .-print_color_indicator
	.type	get_color_indicator, @function
get_color_indicator:
.LFB227:
	.loc 4 4885 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movb	%al, -60(%rbp)
	.loc 4 4893 6
	cmpb	$0, -60(%rbp)
	je	.L1146
	.loc 4 4895 12
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 4 4896 12
	movq	-56(%rbp), %rax
	movl	172(%rax), %eax
	movl	%eax, -40(%rbp)
	.loc 4 4897 17
	movq	-56(%rbp), %rax
	movzbl	185(%rax), %eax
	.loc 4 4897 30
	testb	%al, %al
	je	.L1147
	.loc 4 4897 30 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	.L1148
.L1147:
	.loc 4 4897 30 discriminator 2
	movl	$-1, %eax
.L1148:
	.loc 4 4897 14 is_stmt 1 discriminator 4
	movl	%eax, -36(%rbp)
	jmp	.L1149
.L1146:
	.loc 4 4901 12
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 4 4902 14
	movzbl	color_symlink_as_referent(%rip), %eax
	testb	%al, %al
	je	.L1150
	.loc 4 4902 14 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	185(%rax), %eax
	testb	%al, %al
	je	.L1150
	.loc 4 4902 14 discriminator 3
	movq	-56(%rbp), %rax
	movl	172(%rax), %eax
	jmp	.L1151
.L1150:
	.loc 4 4902 14 discriminator 4
	movq	-56(%rbp), %rax
	movl	48(%rax), %eax
.L1151:
	.loc 4 4902 12 is_stmt 1 discriminator 6
	movl	%eax, -40(%rbp)
	.loc 4 4903 17 discriminator 6
	movq	-56(%rbp), %rax
	movzbl	185(%rax), %eax
	.loc 4 4903 14 discriminator 6
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
.L1149:
	.loc 4 4908 6
	cmpl	$-1, -36(%rbp)
	jne	.L1152
	.loc 4 4908 23 discriminator 1
	movl	$12, %edi
	call	is_colored
	.loc 4 4908 20 discriminator 1
	testb	%al, %al
	je	.L1152
	.loc 4 4909 10
	movl	$12, -44(%rbp)
	jmp	.L1153
.L1152:
	.loc 4 4910 14
	movq	-56(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 4910 12
	xorl	$1, %eax
	.loc 4 4910 11
	testb	%al, %al
	je	.L1154
.LBB132:
	.loc 4 4913 34
	movq	-56(%rbp), %rax
	movl	168(%rax), %eax
	.loc 4 4913 12
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	filetype_indicator.10564(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -44(%rbp)
.LBE132:
	jmp	.L1153
.L1154:
	.loc 4 4917 11
	movl	-40(%rbp), %eax
	andl	$61440, %eax
	.loc 4 4917 10
	cmpl	$32768, %eax
	jne	.L1155
	.loc 4 4919 16
	movl	$5, -44(%rbp)
	.loc 4 4921 21
	movl	-40(%rbp), %eax
	andl	$2048, %eax
	.loc 4 4921 14
	testl	%eax, %eax
	je	.L1156
	.loc 4 4921 40 discriminator 1
	movl	$16, %edi
	call	is_colored
	.loc 4 4921 37 discriminator 1
	testb	%al, %al
	je	.L1156
	.loc 4 4922 18
	movl	$16, -44(%rbp)
	jmp	.L1153
.L1156:
	.loc 4 4923 26
	movl	-40(%rbp), %eax
	andl	$1024, %eax
	.loc 4 4923 19
	testl	%eax, %eax
	je	.L1158
	.loc 4 4923 45 discriminator 1
	movl	$17, %edi
	call	is_colored
	.loc 4 4923 42 discriminator 1
	testb	%al, %al
	je	.L1158
	.loc 4 4924 18
	movl	$17, -44(%rbp)
	jmp	.L1153
.L1158:
	.loc 4 4925 20
	movl	$21, %edi
	call	is_colored
	.loc 4 4925 19
	testb	%al, %al
	je	.L1159
	.loc 4 4925 43 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	192(%rax), %eax
	.loc 4 4925 39 discriminator 1
	testb	%al, %al
	je	.L1159
	.loc 4 4926 18
	movl	$21, -44(%rbp)
	jmp	.L1153
.L1159:
	.loc 4 4927 26
	movl	-40(%rbp), %eax
	andl	$73, %eax
	.loc 4 4927 19
	testl	%eax, %eax
	je	.L1160
	.loc 4 4927 45 discriminator 1
	movl	$14, %edi
	call	is_colored
	.loc 4 4927 42 discriminator 1
	testb	%al, %al
	je	.L1160
	.loc 4 4928 18
	movl	$14, -44(%rbp)
	jmp	.L1153
.L1160:
	.loc 4 4929 32
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	.loc 4 4929 19
	cmpq	$1, %rax
	jbe	.L1153
	.loc 4 4929 46 discriminator 1
	movl	$22, %edi
	call	is_colored
	.loc 4 4929 43 discriminator 1
	testb	%al, %al
	je	.L1153
	.loc 4 4930 18
	movl	$22, -44(%rbp)
	jmp	.L1153
.L1155:
	.loc 4 4932 16
	movl	-40(%rbp), %eax
	andl	$61440, %eax
	.loc 4 4932 15
	cmpl	$16384, %eax
	jne	.L1161
	.loc 4 4934 16
	movl	$6, -44(%rbp)
	.loc 4 4936 21
	movl	-40(%rbp), %eax
	andl	$512, %eax
	.loc 4 4936 14
	testl	%eax, %eax
	je	.L1162
	.loc 4 4936 41 discriminator 1
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 4 4936 32 discriminator 1
	testl	%eax, %eax
	je	.L1162
	.loc 4 4937 18
	movl	$20, %edi
	call	is_colored
	.loc 4 4937 15
	testb	%al, %al
	je	.L1162
	.loc 4 4938 18
	movl	$20, -44(%rbp)
	jmp	.L1153
.L1162:
	.loc 4 4939 26
	movl	-40(%rbp), %eax
	andl	$2, %eax
	.loc 4 4939 19
	testl	%eax, %eax
	je	.L1164
	.loc 4 4939 45 discriminator 1
	movl	$19, %edi
	call	is_colored
	.loc 4 4939 42 discriminator 1
	testb	%al, %al
	je	.L1164
	.loc 4 4940 18
	movl	$19, -44(%rbp)
	jmp	.L1153
.L1164:
	.loc 4 4941 26
	movl	-40(%rbp), %eax
	andl	$512, %eax
	.loc 4 4941 19
	testl	%eax, %eax
	je	.L1153
	.loc 4 4941 45 discriminator 1
	movl	$18, %edi
	call	is_colored
	.loc 4 4941 42 discriminator 1
	testb	%al, %al
	je	.L1153
	.loc 4 4942 18
	movl	$18, -44(%rbp)
	jmp	.L1153
.L1161:
	.loc 4 4944 16
	movl	-40(%rbp), %eax
	andl	$61440, %eax
	.loc 4 4944 15
	cmpl	$40960, %eax
	jne	.L1165
	.loc 4 4945 14
	movl	$7, -44(%rbp)
	jmp	.L1153
.L1165:
	.loc 4 4946 16
	movl	-40(%rbp), %eax
	andl	$61440, %eax
	.loc 4 4946 15
	cmpl	$4096, %eax
	jne	.L1166
	.loc 4 4947 14
	movl	$8, -44(%rbp)
	jmp	.L1153
.L1166:
	.loc 4 4948 16
	movl	-40(%rbp), %eax
	andl	$61440, %eax
	.loc 4 4948 15
	cmpl	$49152, %eax
	jne	.L1167
	.loc 4 4949 14
	movl	$9, -44(%rbp)
	jmp	.L1153
.L1167:
	.loc 4 4950 16
	movl	-40(%rbp), %eax
	andl	$61440, %eax
	.loc 4 4950 15
	cmpl	$24576, %eax
	jne	.L1168
	.loc 4 4951 14
	movl	$10, -44(%rbp)
	jmp	.L1153
.L1168:
	.loc 4 4952 16
	movl	-40(%rbp), %eax
	andl	$61440, %eax
	.loc 4 4952 15
	cmpl	$8192, %eax
	jne	.L1169
	.loc 4 4953 14
	movl	$11, -44(%rbp)
	jmp	.L1153
.L1169:
	.loc 4 4959 16
	movl	$13, -44(%rbp)
.L1153:
	.loc 4 4964 7
	movq	$0, -32(%rbp)
	.loc 4 4965 6
	cmpl	$5, -44(%rbp)
	jne	.L1170
	.loc 4 4969 13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	.loc 4 4970 12
	movq	-16(%rbp), %rax
	addq	%rax, -24(%rbp)
	.loc 4 4971 16
	movq	color_ext_list(%rip), %rax
	movq	%rax, -32(%rbp)
	.loc 4 4971 7
	jmp	.L1171
.L1173:
	.loc 4 4973 23
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 4973 14
	cmpq	%rax, -16(%rbp)
	jb	.L1172
	.loc 4 4974 18
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	.loc 4 4974 48
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	.loc 4 4974 38
	movq	%rcx, %rsi
	negq	%rsi
	.loc 4 4974 18
	movq	-24(%rbp), %rcx
	addq	%rsi, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	c_strncasecmp@PLT
	.loc 4 4974 15
	testl	%eax, %eax
	je	.L1181
.L1172:
	.loc 4 4971 51 discriminator 2
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
.L1171:
	.loc 4 4971 7 discriminator 1
	cmpq	$0, -32(%rbp)
	jne	.L1173
	jmp	.L1170
.L1181:
	.loc 4 4976 13
	nop
.L1170:
	.loc 4 4981 6
	cmpl	$7, -44(%rbp)
	jne	.L1174
	.loc 4 4981 22 discriminator 1
	cmpl	$0, -36(%rbp)
	jne	.L1174
	.loc 4 4983 11
	movzbl	color_symlink_as_referent(%rip), %eax
	.loc 4 4983 10
	testb	%al, %al
	jne	.L1175
	.loc 4 4983 40 discriminator 1
	movl	$13, %edi
	call	is_colored
	.loc 4 4983 37 discriminator 1
	testb	%al, %al
	je	.L1174
.L1175:
	.loc 4 4984 14
	movl	$13, -44(%rbp)
.L1174:
	.loc 4 4987 31
	cmpq	$0, -32(%rbp)
	je	.L1176
	.loc 4 4987 31 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	addq	$16, %rax
	jmp	.L1177
.L1176:
	.loc 4 4987 31 discriminator 2
	movl	-44(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	color_indicator(%rip), %rax
	addq	%rdx, %rax
.L1177:
	.loc 4 4987 31 discriminator 4
	movq	%rax, -8(%rbp)
	.loc 4 4990 11 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 4 4990 24 discriminator 4
	testq	%rax, %rax
	je	.L1178
	.loc 4 4990 24 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	jmp	.L1180
.L1178:
	.loc 4 4990 24 discriminator 2
	movl	$0, %eax
.L1180:
	.loc 4 4991 1 is_stmt 1 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE227:
	.size	get_color_indicator, .-get_color_indicator
	.type	put_indicator, @function
put_indicator:
.LFB228:
	.loc 4 4996 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 4 4997 7
	movzbl	used_color(%rip), %eax
	xorl	$1, %eax
	.loc 4 4997 6
	testb	%al, %al
	je	.L1183
	.loc 4 4999 18
	movb	$1, used_color(%rip)
	.loc 4 5005 16
	movl	$1, %edi
	call	tcgetpgrp@PLT
	.loc 4 5005 10
	testl	%eax, %eax
	js	.L1184
	.loc 4 5006 9
	call	signal_init
.L1184:
	.loc 4 5008 7
	call	prep_non_filename_text
.L1183:
	.loc 4 5011 3
	movq	stdout(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 4 5012 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE228:
	.size	put_indicator, .-put_indicator
	.type	length_of_file_name_and_frills, @function
length_of_file_name_and_frills:
.LFB229:
	.loc 4 5016 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$704, %rsp
	movq	%rdi, -696(%rbp)
	.loc 4 5016 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 5017 10
	movq	$0, -680(%rbp)
	.loc 4 5020 7
	movzbl	print_inode(%rip), %eax
	.loc 4 5020 6
	testb	%al, %al
	je	.L1186
	.loc 4 5021 24
	movl	format(%rip), %eax
	.loc 4 5021 14
	cmpl	$4, %eax
	jne	.L1187
	.loc 4 5022 27 discriminator 1
	movq	-696(%rbp), %rax
	movq	32(%rax), %rax
	leaq	-672(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	.loc 4 5022 19 discriminator 1
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 5021 14 discriminator 1
	addq	$1, %rax
	jmp	.L1188
.L1187:
	.loc 4 5021 14 is_stmt 0 discriminator 2
	movl	inode_number_width(%rip), %eax
	cltq
	addq	$1, %rax
.L1188:
	.loc 4 5021 9 is_stmt 1 discriminator 4
	addq	%rax, -680(%rbp)
.L1186:
	.loc 4 5025 7
	movzbl	print_block_size(%rip), %eax
	.loc 4 5025 6
	testb	%al, %al
	je	.L1189
	.loc 4 5026 24
	movl	format(%rip), %eax
	.loc 4 5026 14
	cmpl	$4, %eax
	jne	.L1190
	.loc 4 5027 30
	movq	-696(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 5027 27
	xorl	$1, %eax
	.loc 4 5027 19
	testb	%al, %al
	je	.L1191
	.loc 4 5027 19 is_stmt 0 discriminator 1
	leaq	.LC209(%rip), %rax
	jmp	.L1192
.L1191:
	.loc 4 5028 29 is_stmt 1
	movq	output_block_size(%rip), %rcx
	movl	human_output_opts(%rip), %edx
	.loc 4 5028 45
	movq	-696(%rbp), %rax
	movq	88(%rax), %rax
	.loc 4 5028 29
	movq	%rax, %rdi
	leaq	-672(%rbp), %rax
	movq	%rcx, %r8
	movl	$512, %ecx
	movq	%rax, %rsi
	call	human_readable@PLT
.L1192:
	.loc 4 5027 19 discriminator 2
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 5026 14 discriminator 2
	addq	$1, %rax
	jmp	.L1193
.L1190:
	.loc 4 5026 14 is_stmt 0 discriminator 1
	movl	block_size_width(%rip), %eax
	cltq
	addq	$1, %rax
.L1193:
	.loc 4 5026 9 is_stmt 1 discriminator 3
	addq	%rax, -680(%rbp)
.L1189:
	.loc 4 5033 7
	movzbl	print_scontext(%rip), %eax
	.loc 4 5033 6
	testb	%al, %al
	je	.L1194
	.loc 4 5034 24
	movl	format(%rip), %eax
	.loc 4 5034 14
	cmpl	$4, %eax
	jne	.L1195
	.loc 4 5034 50 discriminator 1
	movq	-696(%rbp), %rax
	movq	176(%rax), %rax
	.loc 4 5034 41 discriminator 1
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 4 5034 14 discriminator 1
	addq	$1, %rax
	jmp	.L1196
.L1195:
	.loc 4 5034 14 is_stmt 0 discriminator 2
	movl	scontext_width(%rip), %eax
	cltq
	addq	$1, %rax
.L1196:
	.loc 4 5034 9 is_stmt 1 discriminator 4
	addq	%rax, -680(%rbp)
.L1194:
	.loc 4 5036 10
	movq	-696(%rbp), %rax
	movl	196(%rax), %edx
	movq	filename_quoting_options(%rip), %rcx
	.loc 4 5036 29
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	.loc 4 5036 10
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	quote_name_width
	.loc 4 5036 7
	addq	%rax, -680(%rbp)
	.loc 4 5038 23
	movl	indicator_style(%rip), %eax
	.loc 4 5038 6
	testl	%eax, %eax
	je	.L1197
.LBB133:
	.loc 4 5040 16
	movq	-696(%rbp), %rax
	movl	168(%rax), %edx
	movq	-696(%rbp), %rax
	movl	48(%rax), %ecx
	.loc 4 5040 37
	movq	-696(%rbp), %rax
	movzbl	184(%rax), %eax
	.loc 4 5040 16
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	get_type_indicator
	movb	%al, -681(%rbp)
	.loc 4 5041 17
	cmpb	$0, -681(%rbp)
	setne	%al
	movzbl	%al, %eax
	.loc 4 5041 11
	addq	%rax, -680(%rbp)
.L1197:
.LBE133:
	.loc 4 5044 10
	movq	-680(%rbp), %rax
	.loc 4 5045 1
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L1199
	call	__stack_chk_fail@PLT
.L1199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE229:
	.size	length_of_file_name_and_frills, .-length_of_file_name_and_frills
	.type	print_many_per_line, @function
print_many_per_line:
.LFB230:
	.loc 4 5049 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.loc 4 5051 17
	movl	$1, %edi
	call	calculate_columns
	movq	%rax, -48(%rbp)
	.loc 4 5052 40
	movq	column_info(%rip), %rcx
	.loc 4 5052 52
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	subq	$24, %rax
	.loc 4 5052 29
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	.loc 4 5056 28
	movq	cwd_n_used(%rip), %rax
	movl	$0, %edx
	divq	-48(%rbp)
	movq	%rax, %rcx
	.loc 4 5056 49
	movq	cwd_n_used(%rip), %rax
	movl	$0, %edx
	divq	-48(%rbp)
	movq	%rdx, %rax
	.loc 4 5056 56
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	.loc 4 5056 10
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	.loc 4 5058 12
	movq	$0, -80(%rbp)
	.loc 4 5058 3
	jmp	.L1201
.L1205:
.LBB134:
	.loc 4 5060 14
	movq	$0, -72(%rbp)
	.loc 4 5061 14
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc 4 5062 14
	movq	$0, -56(%rbp)
.L1204:
.LBB135:
	.loc 4 5067 49
	movq	sorted_file(%rip), %rax
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 4 5067 34
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 4 5068 32
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	length_of_file_name_and_frills
	movq	%rax, -16(%rbp)
	.loc 4 5069 44
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	.loc 4 5069 57
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	.loc 4 5069 53
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 4 5069 18
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 4 5070 11
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_file_name_and_frills
	.loc 4 5072 19
	movq	-32(%rbp), %rax
	addq	%rax, -64(%rbp)
	.loc 4 5073 23
	movq	cwd_n_used(%rip), %rax
	.loc 4 5073 14
	cmpq	%rax, -64(%rbp)
	jnb	.L1207
	.loc 4 5076 11
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	indent
	.loc 4 5077 15
	movq	-8(%rbp), %rax
	addq	%rax, -56(%rbp)
.LBE135:
	.loc 4 5066 9
	jmp	.L1204
.L1207:
.LBB136:
	.loc 4 5074 13
	nop
.LBE136:
	.loc 4 5079 7
	movl	$10, %edi
	call	putchar_unlocked@PLT
.LBE134:
	.loc 4 5058 32
	addq	$1, -80(%rbp)
.L1201:
	.loc 4 5058 3 discriminator 1
	movq	-80(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L1205
	.loc 4 5081 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE230:
	.size	print_many_per_line, .-print_many_per_line
	.type	print_horizontal, @function
print_horizontal:
.LFB231:
	.loc 4 5085 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.loc 4 5087 10
	movq	$0, -56(%rbp)
	.loc 4 5088 17
	movl	$0, %edi
	call	calculate_columns
	movq	%rax, -32(%rbp)
	.loc 4 5089 40
	movq	column_info(%rip), %rcx
	.loc 4 5089 52
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	subq	$24, %rax
	.loc 4 5089 29
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	.loc 4 5090 41
	movq	sorted_file(%rip), %rax
	.loc 4 5090 26
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 4 5091 24
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	length_of_file_name_and_frills
	movq	%rax, -48(%rbp)
	.loc 4 5092 36
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 4 5092 10
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 4 5095 3
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	print_file_name_and_frills
	.loc 4 5098 16
	movq	$1, -64(%rbp)
	.loc 4 5098 3
	jmp	.L1209
.L1212:
.LBB137:
	.loc 4 5100 14
	movq	-64(%rbp), %rax
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rdx, -8(%rbp)
	.loc 4 5102 10
	cmpq	$0, -8(%rbp)
	jne	.L1210
	.loc 4 5104 11
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 4 5105 15
	movq	$0, -56(%rbp)
	jmp	.L1211
.L1210:
	.loc 4 5109 11
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	indent
	.loc 4 5110 15
	movq	-40(%rbp), %rax
	addq	%rax, -56(%rbp)
.L1211:
	.loc 4 5113 22 discriminator 2
	movq	sorted_file(%rip), %rax
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 4 5113 9 discriminator 2
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 4 5114 7 discriminator 2
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_file_name_and_frills
	.loc 4 5116 21 discriminator 2
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	length_of_file_name_and_frills
	movq	%rax, -48(%rbp)
	.loc 4 5117 33 discriminator 2
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 4 5117 42 discriminator 2
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 4 5117 23 discriminator 2
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBE137:
	.loc 4 5098 43 discriminator 2
	addq	$1, -64(%rbp)
.L1209:
	.loc 4 5098 29 discriminator 1
	movq	cwd_n_used(%rip), %rax
	.loc 4 5098 3 discriminator 1
	cmpq	%rax, -64(%rbp)
	jb	.L1212
	.loc 4 5119 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 4 5120 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE231:
	.size	print_horizontal, .-print_horizontal
	.type	print_with_separator, @function
print_with_separator:
.LFB232:
	.loc 4 5126 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movb	%al, -52(%rbp)
	.loc 4 5128 10
	movq	$0, -24(%rbp)
	.loc 4 5130 16
	movq	$0, -32(%rbp)
	.loc 4 5130 3
	jmp	.L1214
.L1221:
.LBB138:
	.loc 4 5132 45
	movq	sorted_file(%rip), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 4 5132 30
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 4 5133 32
	movq	line_length(%rip), %rax
	.loc 4 5133 69
	testq	%rax, %rax
	je	.L1215
	.loc 4 5133 34 discriminator 1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	length_of_file_name_and_frills
	jmp	.L1216
.L1215:
	.loc 4 5133 69 discriminator 2
	movl	$0, %eax
.L1216:
	.loc 4 5133 14 discriminator 4
	movq	%rax, -8(%rbp)
	.loc 4 5135 10 discriminator 4
	cmpq	$0, -32(%rbp)
	je	.L1217
.LBB139:
	.loc 4 5139 15
	movq	line_length(%rip), %rax
	.loc 4 5139 14
	testq	%rax, %rax
	je	.L1218
	.loc 4 5140 24
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 4 5140 30
	leaq	2(%rax), %rdx
	.loc 4 5140 34
	movq	line_length(%rip), %rax
	.loc 4 5140 15
	cmpq	%rax, %rdx
	jnb	.L1219
	.loc 4 5141 45
	movq	$-3, %rax
	subq	-8(%rbp), %rax
	.loc 4 5141 19
	cmpq	%rax, -24(%rbp)
	ja	.L1219
.L1218:
	.loc 4 5143 19
	addq	$2, -24(%rbp)
	.loc 4 5144 25
	movb	$32, -33(%rbp)
	jmp	.L1220
.L1219:
	.loc 4 5148 19
	movq	$0, -24(%rbp)
	.loc 4 5149 25
	movb	$10, -33(%rbp)
.L1220:
	.loc 4 5152 11
	movsbl	-52(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
	.loc 4 5153 11
	movsbl	-33(%rbp), %eax
	movl	%eax, %edi
	call	putchar_unlocked@PLT
.L1217:
.LBE139:
	.loc 4 5156 7 discriminator 2
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_file_name_and_frills
	.loc 4 5157 11 discriminator 2
	movq	-8(%rbp), %rax
	addq	%rax, -24(%rbp)
.LBE138:
	.loc 4 5130 50 discriminator 2
	addq	$1, -32(%rbp)
.L1214:
	.loc 4 5130 29 discriminator 1
	movq	cwd_n_used(%rip), %rax
	.loc 4 5130 3 discriminator 1
	cmpq	%rax, -32(%rbp)
	jb	.L1221
	.loc 4 5159 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 4 5160 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE232:
	.size	print_with_separator, .-print_with_separator
	.type	indent, @function
indent:
.LFB233:
	.loc 4 5167 1
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
	.loc 4 5168 9
	jmp	.L1223
.L1225:
	.loc 4 5170 19
	movq	tabsize(%rip), %rax
	.loc 4 5170 10
	testq	%rax, %rax
	je	.L1224
	.loc 4 5170 30 discriminator 1
	movq	tabsize(%rip), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rax, %rcx
	.loc 4 5170 48 discriminator 1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	.loc 4 5170 53 discriminator 1
	movq	tabsize(%rip), %rdi
	movl	$0, %edx
	divq	%rdi
	.loc 4 5170 24 discriminator 1
	cmpq	%rax, %rcx
	jbe	.L1224
	.loc 4 5172 11
	movl	$9, %edi
	call	putchar_unlocked@PLT
	.loc 4 5173 27
	movq	tabsize(%rip), %rcx
	.loc 4 5173 34
	movq	tabsize(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rax
	.loc 4 5173 27
	subq	%rax, %rcx
	movq	%rcx, %rax
	.loc 4 5173 16
	addq	%rax, -8(%rbp)
	jmp	.L1223
.L1224:
	.loc 4 5177 11
	movl	$32, %edi
	call	putchar_unlocked@PLT
	.loc 4 5178 15
	addq	$1, -8(%rbp)
.L1223:
	.loc 4 5168 9
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L1225
	.loc 4 5181 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE233:
	.size	indent, .-indent
	.type	attach, @function
attach:
.LFB234:
	.loc 4 5189 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 4 5190 15
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 4 5193 14
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 5193 6
	cmpb	$46, %al
	jne	.L1229
	.loc 4 5193 35 discriminator 1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 4 5193 25 discriminator 1
	testb	%al, %al
	je	.L1231
	.loc 4 5195 13
	jmp	.L1229
.L1230:
	.loc 4 5196 28
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -8(%rbp)
	.loc 4 5196 14
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	.loc 4 5196 19
	movzbl	(%rdx), %edx
	.loc 4 5196 17
	movb	%dl, (%rax)
.L1229:
	.loc 4 5195 14
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 5195 13
	testb	%al, %al
	jne	.L1230
	.loc 4 5198 10
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L1231
	.loc 4 5198 41 discriminator 1
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	.loc 4 5198 30 discriminator 1
	cmpb	$47, %al
	je	.L1231
	.loc 4 5199 14
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 4 5199 17
	movb	$47, (%rax)
	.loc 4 5201 9
	jmp	.L1231
.L1232:
	.loc 4 5202 20
	movq	-40(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -40(%rbp)
	.loc 4 5202 10
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	.loc 4 5202 15
	movzbl	(%rdx), %edx
	.loc 4 5202 13
	movb	%dl, (%rax)
.L1231:
	.loc 4 5201 10
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 4 5201 9
	testb	%al, %al
	jne	.L1232
	.loc 4 5203 9
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	.loc 4 5204 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE234:
	.size	attach, .-attach
	.type	init_column_info, @function
init_column_info:
.LFB235:
	.loc 4 5212 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.loc 4 5214 21
	movq	cwd_n_used(%rip), %rdx
	movq	max_idx(%rip), %rax
	.loc 4 5214 10
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 4 5219 25
	movq	column_info_alloc.10645(%rip), %rax
	.loc 4 5219 6
	cmpq	%rax, -32(%rbp)
	jbe	.L1234
.LBB140:
	.loc 4 5224 30
	movq	max_idx(%rip), %rax
	shrq	%rax
	.loc 4 5224 10
	cmpq	%rax, -32(%rbp)
	jnb	.L1235
	.loc 4 5231 25
	movq	column_info(%rip), %rax
	movq	-32(%rbp), %rcx
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xnrealloc@PLT
	.loc 4 5231 23
	movq	%rax, column_info(%rip)
	.loc 4 5233 33
	movq	-32(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -56(%rbp)
	jmp	.L1236
.L1235:
	.loc 4 5237 25
	movq	max_idx(%rip), %rcx
	movq	column_info(%rip), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	xnrealloc@PLT
	.loc 4 5237 23
	movq	%rax, column_info(%rip)
	.loc 4 5238 33
	movq	max_idx(%rip), %rax
	movq	%rax, -56(%rbp)
.L1236:
.LBB141:
	.loc 4 5246 59
	movq	column_info_alloc.10645(%rip), %rax
	.loc 4 5246 16
	movq	-56(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 4 5247 42
	movq	column_info_alloc.10645(%rip), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	.loc 4 5247 16
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	.loc 4 5248 16
	movq	-16(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 4 5249 12
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L1237
	.loc 4 5249 44 discriminator 1
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-24(%rbp)
	.loc 4 5249 39 discriminator 1
	cmpq	%rax, -16(%rbp)
	je	.L1238
.L1237:
	.loc 4 5250 11
	call	xalloc_die@PLT
.L1238:
	.loc 4 5251 13
	movq	-8(%rbp), %rax
	shrq	%rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	xnmalloc@PLT
	movq	%rax, -48(%rbp)
.LBE141:
	.loc 4 5255 14
	movq	column_info_alloc.10645(%rip), %rax
	movq	%rax, -64(%rbp)
	.loc 4 5255 7
	jmp	.L1239
.L1240:
	.loc 4 5257 22 discriminator 3
	movq	column_info(%rip), %rcx
	movq	-64(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	.loc 4 5257 34 discriminator 3
	movq	-48(%rbp), %rax
	movq	%rax, 16(%rdx)
	.loc 4 5258 13 discriminator 3
	movq	-64(%rbp), %rax
	addq	$1, %rax
	salq	$3, %rax
	addq	%rax, -48(%rbp)
	.loc 4 5255 63 discriminator 3
	addq	$1, -64(%rbp)
.L1239:
	.loc 4 5255 7 discriminator 1
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L1240
	.loc 4 5261 25
	movq	-56(%rbp), %rax
	movq	%rax, column_info_alloc.10645(%rip)
.L1234:
.LBE140:
	.loc 4 5264 10
	movq	$0, -64(%rbp)
	.loc 4 5264 3
	jmp	.L1241
.L1244:
.LBB142:
	.loc 4 5268 18
	movq	column_info(%rip), %rcx
	movq	-64(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 4 5268 32
	movb	$1, (%rax)
	.loc 4 5269 41
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	.loc 4 5269 18
	movq	column_info(%rip), %rsi
	movq	-64(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rsi,%rax), %rdx
	.loc 4 5269 41
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	.loc 4 5269 31
	movq	%rax, 8(%rdx)
	.loc 4 5270 14
	movq	$0, -40(%rbp)
	.loc 4 5270 7
	jmp	.L1242
.L1243:
	.loc 4 5271 20 discriminator 3
	movq	column_info(%rip), %rcx
	movq	-64(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 4 5271 23 discriminator 3
	movq	16(%rax), %rax
	.loc 4 5271 31 discriminator 3
	movq	-40(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 4 5271 35 discriminator 3
	movq	$3, (%rax)
	.loc 4 5270 27 discriminator 3
	addq	$1, -40(%rbp)
.L1242:
	.loc 4 5270 7 discriminator 1
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jbe	.L1243
.LBE142:
	.loc 4 5264 29 discriminator 2
	addq	$1, -64(%rbp)
.L1241:
	.loc 4 5264 3 discriminator 1
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L1244
	.loc 4 5273 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE235:
	.size	init_column_info, .-init_column_info
	.type	calculate_columns, @function
calculate_columns:
.LFB236:
	.loc 4 5280 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, %eax
	movb	%al, -68(%rbp)
	.loc 4 5287 21
	movq	cwd_n_used(%rip), %rdx
	movq	max_idx(%rip), %rax
	.loc 4 5287 10
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 4 5289 3
	call	init_column_info
	.loc 4 5292 16
	movq	$0, -64(%rbp)
	.loc 4 5292 3
	jmp	.L1246
.L1254:
.LBB143:
	.loc 4 5294 45
	movq	sorted_file(%rip), %rax
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 4 5294 30
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 4 5295 28
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	length_of_file_name_and_frills
	movq	%rax, -24(%rbp)
.LBB144:
	.loc 4 5297 19
	movq	$0, -48(%rbp)
	.loc 4 5297 7
	jmp	.L1247
.L1253:
	.loc 4 5299 26
	movq	column_info(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 4 5299 29
	movzbl	(%rax), %eax
	.loc 4 5299 14
	testb	%al, %al
	je	.L1248
.LBB145:
	.loc 4 5303 29
	cmpb	$0, -68(%rbp)
	je	.L1249
	.loc 4 5302 54 discriminator 1
	movq	cwd_n_used(%rip), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 4 5302 64 discriminator 1
	movq	-48(%rbp), %rdx
	leaq	1(%rdx), %rsi
	.loc 4 5302 59 discriminator 1
	movl	$0, %edx
	divq	%rsi
	movq	%rax, %rsi
	.loc 4 5303 29 discriminator 1
	movq	-64(%rbp), %rax
	movl	$0, %edx
	divq	%rsi
	jmp	.L1250
.L1249:
	.loc 4 5303 44 discriminator 2
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	.loc 4 5303 29 discriminator 2
	movq	-64(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
.L1250:
	.loc 4 5301 22
	movq	%rax, -16(%rbp)
	.loc 4 5304 64
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L1251
	.loc 4 5304 64 is_stmt 0 discriminator 1
	movl	$0, %edx
	jmp	.L1252
.L1251:
	.loc 4 5304 64 discriminator 2
	movl	$2, %edx
.L1252:
	.loc 4 5304 22 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 4 5306 30 discriminator 4
	movq	column_info(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 4 5306 33 discriminator 4
	movq	16(%rax), %rax
	.loc 4 5306 41 discriminator 4
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 4 5306 18 discriminator 4
	cmpq	%rax, -8(%rbp)
	jbe	.L1248
	.loc 4 5308 43
	movq	column_info(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rcx
	.loc 4 5309 60
	movq	column_info(%rip), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	.loc 4 5309 63
	movq	16(%rax), %rax
	.loc 4 5309 71
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 4 5309 47
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	subq	%rax, %rdi
	.loc 4 5308 43
	movq	column_info(%rip), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	leaq	(%rcx,%rdi), %rdx
	movq	%rdx, 8(%rax)
	.loc 4 5310 30
	movq	column_info(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 4 5310 33
	movq	16(%rax), %rax
	.loc 4 5310 41
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	.loc 4 5310 47
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 4 5311 58
	movq	column_info(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.loc 4 5311 61
	movq	8(%rax), %rsi
	.loc 4 5312 47
	movq	line_length(%rip), %rcx
	.loc 4 5311 30
	movq	column_info(%rip), %rdi
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rdi, %rax
	.loc 4 5312 47
	cmpq	%rcx, %rsi
	setb	%dl
	.loc 4 5311 44
	movb	%dl, (%rax)
.L1248:
.LBE145:
	.loc 4 5297 40 discriminator 2
	addq	$1, -48(%rbp)
.L1247:
	.loc 4 5297 7 discriminator 1
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L1253
.LBE144:
.LBE143:
	.loc 4 5292 43 discriminator 2
	addq	$1, -64(%rbp)
.L1246:
	.loc 4 5292 29 discriminator 1
	movq	cwd_n_used(%rip), %rax
	.loc 4 5292 3 discriminator 1
	cmpq	%rax, -64(%rbp)
	jb	.L1254
	.loc 4 5319 13
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 4 5319 3
	jmp	.L1255
.L1258:
	.loc 4 5321 22
	movq	column_info(%rip), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	subq	$24, %rax
	addq	%rcx, %rax
	.loc 4 5321 32
	movzbl	(%rax), %eax
	.loc 4 5321 10
	testb	%al, %al
	jne	.L1260
	.loc 4 5319 35 discriminator 2
	subq	$1, -56(%rbp)
.L1255:
	.loc 4 5319 3 discriminator 1
	cmpq	$1, -56(%rbp)
	ja	.L1258
	jmp	.L1257
.L1260:
	.loc 4 5322 9
	nop
.L1257:
	.loc 4 5325 10
	movq	-56(%rbp), %rax
	.loc 4 5326 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE236:
	.size	calculate_columns, .-calculate_columns
	.section	.rodata
	.align 8
.LC220:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC221:
	.string	"Usage: %s [OPTION]... [FILE]...\n"
	.align 8
.LC222:
	.string	"List information about the FILEs (the current directory by default).\nSort entries alphabetically if none of -cftuvSUX nor --sort is specified.\n"
	.align 8
.LC223:
	.ascii	"  -a, --all   "
	.string	"               do not ignore entries starting with .\n  -A, --almost-all           do not list implied . and ..\n      --author               with -l, print the author of each file\n  -b, --escape               print C-style escapes for nongraphic characters\n"
	.align 8
.LC224:
	.string	"      --block-size=SIZE      with -l, scale sizes by SIZE when printing them;\n                               e.g., '--block-size=M'; see SIZE format below\n"
	.align 8
.LC225:
	.ascii	"  -B, --ignore-backups       do not list implied entries end"
	.ascii	"ing with ~\n  -c                         with "
	.string	"-lt: sort by, and show, ctime (time of last\n                               modification of file status information);\n                               with -l: show ctime and sort by name;\n                               otherwise: sort by ctime, newest first\n"
	.align 8
.LC226:
	.ascii	"  -C                         list entries by columns\n      "
	.ascii	"--color[=WHEN]         colorize the output; WHEN ca"
	.string	"n be 'always' (default\n                               if omitted), 'auto', or 'never'; more info below\n  -d, --directory            list directories themselves, not their contents\n  -D, --dired                generate output designed for Emacs' dired mode\n"
	.align 8
.LC227:
	.ascii	"  -f                         do not sort, enable -aU, disabl"
	.ascii	"e -ls --color\n  -F, --classify[=WHEN]      append indicator"
	.ascii	" (one of */=>@|) to entries;\n                              "
	.ascii	" WHEN can be 'always' (default if omitted),\n               "
	.ascii	"                'auto', or 'never'\n      --file-ty"
	.string	"pe            likewise, except do not append '*'\n      --format=WORD          across -x, commas -m, horizontal -x, long -l,\n                               single-column -1, verbose -l, vertical -C\n      --full-time            like -l --time-style=full-iso\n"
	.align 8
.LC228:
	.string	"  -g                         like -l, but do not list owner\n"
	.align 8
.LC229:
	.string	"      --group-directories-first\n                             group directories before files;\n                               can be augmented with a --sort option, but any\n                               use of --sort=none (-U) disables grouping\n"
	.align 8
.LC230:
	.string	"  -G, --no-group             in a long listing, don't print group names\n"
	.align 8
.LC231:
	.string	"  -h, --human-readable       with -l and -s, print sizes like 1K 234M 2G etc.\n      --si                   likewise, but use powers of 1000 not 1024\n"
	.align 8
.LC232:
	.ascii	"  -H, --dereference-command-line\n                          "
	.ascii	"   follow symbolic links listed on the command line\n      -"
	.ascii	"-dereference-command-line-symlink-to-dir\n      "
	.string	"                       follow each command line symbolic link\n                               that points to a directory\n      --hide=PATTERN         do not list implied entries matching shell PATTERN\n                               (overridden by -a or -A)\n"
	.align 8
.LC233:
	.string	"      --hyperlink[=WHEN]     hyperlink file names; WHEN can be 'always'\n                               (default if omitted), 'auto', or 'never'\n"
	.align 8
.LC234:
	.ascii	"      --indicator-style=WORD  append indicator with style WO"
	.ascii	"RD to entry names:\n                  "
	.string	"             none (default), slash (-p),\n                               file-type (--file-type), classify (-F)\n  -i, --inode                print the index number of each file\n  -I, --ignore=PATTERN       do not list implied entries matching shell PATTERN\n"
	.align 8
.LC235:
	.string	"  -k, --kibibytes            default to 1024-byte blocks for disk usage;\n                               used only with -s and per directory totals\n"
	.align 8
.LC236:
	.ascii	"  -l                         use a long listing format\n  -L"
	.ascii	", --dereference          when showing file "
	.string	"information for a symbolic\n                               link, show information for the file the link\n                               references rather than for the link itself\n  -m                         fill width with a comma separated list of entries\n"
	.align 8
.LC237:
	.ascii	"  -n, --numeric-uid-gid      like -l, but list"
	.string	" numeric user and group IDs\n  -N, --literal              print entry names without quoting\n  -o                         like -l, but do not list group information\n  -p, --indicator-style=slash\n                             append / indicator to directories\n"
	.align 8
.LC238:
	.ascii	"  -q, --hide-control-chars   print ? instead of nongraphic c"
	.ascii	"haracters\n      --show-control-chars   show nongraphic char"
	.ascii	"acters as-is (the default,\n                               u"
	.ascii	"nless program is 'ls' and output is a terminal)\n  -Q, --quo"
	.ascii	"te-name           enclose entry names in double quotes\n    "
	.ascii	"  --quoting-style=WORD   use quo"
	.string	"ting style WORD for entry names:\n                               literal, locale, shell, shell-always,\n                               shell-escape, shell-escape-always, c, escape\n                               (overrides QUOTING_STYLE environment variable)\n"
	.align 8
.LC239:
	.string	"  -r, --reverse              reverse order while sorting\n  -R, --recursive            list subdirectories recursively\n  -s, --size                 print the allocated size of each file, in blocks\n"
	.align 8
.LC240:
	.ascii	"  -S                         sort by file size, largest firs"
	.ascii	"t\n      --sort=WORD            sort by WORD instead of name"
	.ascii	": none (-U), size (-S),\n                               time"
	.ascii	" (-t), version (-v), extension (-X)\n      --time=WORD      "
	.ascii	"      change the default of using modification times;\n     "
	.ascii	"                          access time (-u): atime, access, u"
	.ascii	"se;\n                 "
	.string	"              change time (-c): ctime, status;\n                               birth time: birth, creation;\n                             with -l, WORD determines which time to show;\n                             with --sort=time, sort by WORD (newest first)\n"
	.align 8
.LC241:
	.string	"      --time-style=TIME_STYLE  time/date format with -l; see TIME_STYLE below\n"
	.align 8
.LC242:
	.string	"  -t                         sort by time, newest first; see --time\n  -T, --tabsize=COLS         assume tab stops at each COLS instead of 8\n"
	.align 8
.LC243:
	.ascii	"  -u                         with -lt: sort by, and show, ac"
	.ascii	"cess time;\n                               with -l: show"
	.string	" access time and sort by name;\n                               otherwise: sort by access time, newest first\n  -U                         do not sort; list entries in directory order\n  -v                         natural sort of (version) numbers within text\n"
	.align 8
.LC244:
	.ascii	"  -w, --width=COLS           set output width to COLS.  0 me"
	.ascii	"ans no limit\n  -x                         list"
	.string	" entries by lines instead of by columns\n  -X                         sort alphabetically by entry extension\n  -Z, --context              print any security context of each file\n  -1                         list one file per line.  Avoid '\\n' with -q or -b\n"
	.align 8
.LC245:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC246:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC247:
	.ascii	"\nThe TIME_STYLE argument can be full-iso, long-iso, iso, lo"
	.ascii	"cale, or +FORMAT.\nFORMAT is interpreted like in date(1).  I"
	.ascii	"f"
	.string	" FORMAT is FORMAT1<newline>FORMAT2,\nthen FORMAT1 applies to non-recent files and FORMAT2 to recent files.\nTIME_STYLE prefixed with 'posix-' takes effect only outside the POSIX locale.\nAlso the TIME_STYLE environment variable sets the default style to use.\n"
	.align 8
.LC248:
	.ascii	"\nUsing color to distinguish f"
	.string	"ile types is disabled both by default and\nwith --color=never.  With --color=auto, ls emits color codes only when\nstandard output is connected to a terminal.  The LS_COLORS environment\nvariable can change the settings.  Use the dircolors command to set it.\n"
	.align 8
.LC249:
	.string	"\nExit status:\n 0  if OK,\n 1  if minor problems (e.g., cannot access subdirectory),\n 2  if serious trouble (e.g., cannot access command-line argument).\n"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB237:
	.loc 4 5330 1
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
	.loc 4 5331 6
	cmpl	$0, -20(%rbp)
	je	.L1262
	.loc 4 5332 5
	movq	program_name(%rip), %rbx
	leaq	.LC220(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L1263
.L1262:
	.loc 4 5335 7
	movq	program_name(%rip), %rbx
	.loc 4 5335 15
	leaq	.LC221(%rip), %rdi
	call	gettext@PLT
	.loc 4 5335 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 4 5336 7
	movq	stdout(%rip), %rbx
	leaq	.LC222(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5341 7
	call	emit_mandatory_arg_note
	.loc 4 5343 7
	movq	stdout(%rip), %rbx
	leaq	.LC223(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5349 7
	movq	stdout(%rip), %rbx
	leaq	.LC224(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5353 7
	movq	stdout(%rip), %rbx
	leaq	.LC225(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5360 7
	movq	stdout(%rip), %rbx
	leaq	.LC226(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5369 7
	movq	stdout(%rip), %rbx
	leaq	.LC227(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5379 7
	movq	stdout(%rip), %rbx
	leaq	.LC228(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5382 7
	movq	stdout(%rip), %rbx
	leaq	.LC229(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5388 7
	movq	stdout(%rip), %rbx
	leaq	.LC230(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5391 7
	movq	stdout(%rip), %rbx
	leaq	.LC231(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5395 7
	movq	stdout(%rip), %rbx
	leaq	.LC232(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5405 7
	movq	stdout(%rip), %rbx
	leaq	.LC233(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5409 7
	movq	stdout(%rip), %rbx
	leaq	.LC234(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5418 7
	movq	stdout(%rip), %rbx
	leaq	.LC235(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5422 7
	movq	stdout(%rip), %rbx
	leaq	.LC236(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5430 7
	movq	stdout(%rip), %rbx
	leaq	.LC237(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5437 7
	movq	stdout(%rip), %rbx
	leaq	.LC238(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5448 7
	movq	stdout(%rip), %rbx
	leaq	.LC239(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5453 7
	movq	stdout(%rip), %rbx
	leaq	.LC240(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5465 7
	movq	stdout(%rip), %rbx
	leaq	.LC241(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5468 7
	movq	stdout(%rip), %rbx
	leaq	.LC242(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5472 7
	movq	stdout(%rip), %rbx
	leaq	.LC243(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5479 7
	movq	stdout(%rip), %rbx
	leaq	.LC244(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5487 7
	movq	stdout(%rip), %rbx
	leaq	.LC245(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5488 7
	movq	stdout(%rip), %rbx
	leaq	.LC246(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5489 7
	call	emit_size_note
	.loc 4 5490 7
	movq	stdout(%rip), %rbx
	leaq	.LC247(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5498 7
	movq	stdout(%rip), %rbx
	leaq	.LC248(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5505 7
	movq	stdout(%rip), %rbx
	leaq	.LC249(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 4 5512 28
	movl	ls_mode(%rip), %eax
	.loc 4 5512 7
	cmpl	$1, %eax
	je	.L1264
	.loc 4 5512 28 discriminator 1
	movl	ls_mode(%rip), %eax
	cmpl	$2, %eax
	jne	.L1265
	.loc 4 5512 28 is_stmt 0 discriminator 3
	leaq	.LC165(%rip), %rax
	jmp	.L1267
.L1265:
	.loc 4 5512 28 discriminator 4
	leaq	.LC166(%rip), %rax
	jmp	.L1267
.L1264:
	.loc 4 5512 7 is_stmt 1 discriminator 2
	leaq	.LC167(%rip), %rax
.L1267:
	.loc 4 5512 7 is_stmt 0 discriminator 8
	movq	%rax, %rdi
	call	emit_ancillary_info
.L1263:
	.loc 4 5514 3 is_stmt 1
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE237:
	.size	usage, .-usage
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.9190, @object
	.size	__PRETTY_FUNCTION__.9190, 12
__PRETTY_FUNCTION__.9190:
	.string	"dev_ino_pop"
	.align 32
	.type	sig.9372, @object
	.size	sig.9372, 48
sig.9372:
	.long	20
	.long	14
	.long	1
	.long	2
	.long	13
	.long	3
	.long	15
	.long	29
	.long	27
	.long	26
	.long	24
	.long	25
	.type	__PRETTY_FUNCTION__.9399, @object
	.size	__PRETTY_FUNCTION__.9399, 5
__PRETTY_FUNCTION__.9399:
	.string	"main"
	.type	posix_prefix.9513, @object
	.size	posix_prefix.9513, 7
posix_prefix.9513:
	.string	"posix-"
	.data
	.type	first.9692, @object
	.size	first.9692, 1
first.9692:
	.byte	1
	.local	unsupported_device.9750
	.comm	unsupported_device.9750,8,8
	.local	unsupported_device.9756
	.comm	unsupported_device.9756,8,8
	.local	unsupported_device.9762
	.comm	unsupported_device.9762,8,8
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.9778, @object
	.size	__PRETTY_FUNCTION__.9778, 12
__PRETTY_FUNCTION__.9778:
	.string	"gobble_file"
	.align 8
	.type	__PRETTY_FUNCTION__.10229, @object
	.size	__PRETTY_FUNCTION__.10229, 11
__PRETTY_FUNCTION__.10229:
	.string	"sort_files"
	.data
	.align 4
	.type	width.10258, @object
	.size	width.10258, 4
width.10258:
	.long	-1
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.10300, @object
	.size	__PRETTY_FUNCTION__.10300, 13
__PRETTY_FUNCTION__.10300:
	.string	"format_inode"
	.data
	.align 32
	.type	filetype_indicator.10564, @object
	.size	filetype_indicator.10564, 40
filetype_indicator.10564:
	.long	13
	.long	8
	.long	11
	.long	6
	.long	10
	.long	5
	.long	7
	.long	9
	.long	5
	.long	6
	.local	column_info_alloc.10645
	.comm	column_info_alloc.10645,8,8
	.text
.Letext0:
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/ioctl-types.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 16 "./lib/sys/select.h"
	.file 17 "/usr/include/stdio.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/setjmp.h"
	.file 20 "/usr/include/setjmp.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 22 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 23 "/usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h"
	.file 24 "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h"
	.file 25 "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h"
	.file 26 "/usr/include/signal.h"
	.file 27 "/usr/include/x86_64-linux-gnu/bits/sigaction.h"
	.file 28 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
	.file 29 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 30 "/usr/include/time.h"
	.file 31 "./lib/time.h"
	.file 32 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 33 "/usr/include/asm-generic/int-ll64.h"
	.file 34 "/usr/include/linux/stat.h"
	.file 35 "/usr/include/unistd.h"
	.file 36 "/usr/include/errno.h"
	.file 37 "src/version.h"
	.file 38 "./lib/exitfail.h"
	.file 39 "/usr/include/x86_64-linux-gnu/bits/dirent.h"
	.file 40 "/usr/include/langinfo.h"
	.file 41 "/usr/include/dirent.h"
	.file 42 "/usr/include/stdint.h"
	.file 43 "./lib/timespec.h"
	.file 44 "/usr/include/ctype.h"
	.file 45 "./lib/version-etc.h"
	.file 46 "./lib/progname.h"
	.file 47 "./lib/quotearg.h"
	.file 48 "./lib/quote.h"
	.file 49 "./lib/argmatch.h"
	.file 50 "./lib/dev-ino.h"
	.file 51 "./lib/error.h"
	.file 52 "./lib/hash.h"
	.file 53 "./lib/xstrtol.h"
	.file 54 "./lib/human.h"
	.file 55 "src/ls.h"
	.file 56 "./lib/obstack.h"
	.file 57 "./lib/mbsalign.h"
	.file 58 "./lib/canonicalize.h"
	.file 59 "src/dircolors.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7d5c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1266
	.byte	0xc
	.long	.LASF1267
	.long	.LASF1268
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	0x57
	.uleb128 0x5
	.long	0x57
	.uleb128 0x6
	.long	.LASF7
	.byte	0x5
	.byte	0x2a
	.byte	0x16
	.long	0x3b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x6
	.long	.LASF8
	.byte	0x5
	.byte	0x48
	.byte	0x12
	.long	0x74
	.uleb128 0x6
	.long	.LASF9
	.byte	0x5
	.byte	0x49
	.byte	0x1b
	.long	0x42
	.uleb128 0x6
	.long	.LASF10
	.byte	0x5
	.byte	0x91
	.byte	0x19
	.long	0x42
	.uleb128 0x6
	.long	.LASF11
	.byte	0x5
	.byte	0x92
	.byte	0x19
	.long	0x3b
	.uleb128 0x6
	.long	.LASF12
	.byte	0x5
	.byte	0x93
	.byte	0x19
	.long	0x3b
	.uleb128 0x6
	.long	.LASF13
	.byte	0x5
	.byte	0x94
	.byte	0x19
	.long	0x42
	.uleb128 0x6
	.long	.LASF14
	.byte	0x5
	.byte	0x96
	.byte	0x1a
	.long	0x3b
	.uleb128 0x6
	.long	.LASF15
	.byte	0x5
	.byte	0x97
	.byte	0x1b
	.long	0x42
	.uleb128 0x6
	.long	.LASF16
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x74
	.uleb128 0x6
	.long	.LASF17
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x74
	.uleb128 0x6
	.long	.LASF18
	.byte	0x5
	.byte	0x9a
	.byte	0x19
	.long	0x57
	.uleb128 0x6
	.long	.LASF19
	.byte	0x5
	.byte	0x9c
	.byte	0x1b
	.long	0x74
	.uleb128 0x6
	.long	.LASF20
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x74
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x6
	.long	.LASF21
	.byte	0x5
	.byte	0xae
	.byte	0x1d
	.long	0x74
	.uleb128 0x6
	.long	.LASF22
	.byte	0x5
	.byte	0xb3
	.byte	0x1c
	.long	0x74
	.uleb128 0x6
	.long	.LASF23
	.byte	0x5
	.byte	0xc4
	.byte	0x21
	.long	0x74
	.uleb128 0x8
	.byte	0x8
	.long	0x143
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF24
	.uleb128 0x5
	.long	0x143
	.uleb128 0x6
	.long	.LASF25
	.byte	0x5
	.byte	0xd6
	.byte	0xd
	.long	0x57
	.uleb128 0x6
	.long	.LASF26
	.byte	0x6
	.byte	0x2f
	.byte	0x11
	.long	0xb7
	.uleb128 0x6
	.long	.LASF27
	.byte	0x6
	.byte	0x3b
	.byte	0x11
	.long	0x93
	.uleb128 0x6
	.long	.LASF28
	.byte	0x6
	.byte	0x40
	.byte	0x11
	.long	0xab
	.uleb128 0x6
	.long	.LASF29
	.byte	0x6
	.byte	0x45
	.byte	0x12
	.long	0xc3
	.uleb128 0x6
	.long	.LASF30
	.byte	0x6
	.byte	0x4f
	.byte	0x11
	.long	0x9f
	.uleb128 0x6
	.long	.LASF31
	.byte	0x6
	.byte	0x55
	.byte	0x11
	.long	0xdb
	.uleb128 0x6
	.long	.LASF32
	.byte	0x7
	.byte	0x7
	.byte	0x12
	.long	0x10b
	.uleb128 0x6
	.long	.LASF33
	.byte	0x8
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x9
	.byte	0x80
	.byte	0x9
	.byte	0x5
	.byte	0x9
	.long	0x1d2
	.uleb128 0xa
	.long	.LASF36
	.byte	0x9
	.byte	0x7
	.byte	0x15
	.long	0x1d2
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x42
	.long	0x1e2
	.uleb128 0xc
	.long	0x42
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.long	.LASF34
	.byte	0x9
	.byte	0x8
	.byte	0x3
	.long	0x1bb
	.uleb128 0x6
	.long	.LASF35
	.byte	0xa
	.byte	0x7
	.byte	0x14
	.long	0x1e2
	.uleb128 0xd
	.long	.LASF41
	.byte	0x10
	.byte	0xb
	.byte	0xa
	.byte	0x8
	.long	0x222
	.uleb128 0xa
	.long	.LASF37
	.byte	0xb
	.byte	0xc
	.byte	0xc
	.long	0x10b
	.byte	0
	.uleb128 0xa
	.long	.LASF38
	.byte	0xb
	.byte	0x10
	.byte	0x15
	.long	0x131
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	.LASF86
	.byte	0x10
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF39
	.uleb128 0xb
	.long	0x143
	.long	0x246
	.uleb128 0xc
	.long	0x42
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF40
	.uleb128 0xd
	.long	.LASF42
	.byte	0x8
	.byte	0xc
	.byte	0x1b
	.byte	0x8
	.long	0x28f
	.uleb128 0xa
	.long	.LASF43
	.byte	0xc
	.byte	0x1d
	.byte	0x18
	.long	0x34
	.byte	0
	.uleb128 0xa
	.long	.LASF44
	.byte	0xc
	.byte	0x1e
	.byte	0x18
	.long	0x34
	.byte	0x2
	.uleb128 0xa
	.long	.LASF45
	.byte	0xc
	.byte	0x1f
	.byte	0x18
	.long	0x34
	.byte	0x4
	.uleb128 0xa
	.long	.LASF46
	.byte	0xc
	.byte	0x20
	.byte	0x18
	.long	0x34
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xd
	.byte	0x10
	.byte	0x3
	.long	0x2b1
	.uleb128 0x10
	.long	.LASF47
	.byte	0xd
	.byte	0x12
	.byte	0x13
	.long	0x3b
	.uleb128 0x10
	.long	.LASF48
	.byte	0xd
	.byte	0x13
	.byte	0xa
	.long	0x236
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0xd
	.byte	0xd
	.byte	0x9
	.long	0x2d5
	.uleb128 0xa
	.long	.LASF49
	.byte	0xd
	.byte	0xf
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF50
	.byte	0xd
	.byte	0x14
	.byte	0x5
	.long	0x28f
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF51
	.byte	0xd
	.byte	0x15
	.byte	0x3
	.long	0x2b1
	.uleb128 0xd
	.long	.LASF52
	.byte	0xd8
	.byte	0xe
	.byte	0x31
	.byte	0x8
	.long	0x468
	.uleb128 0xa
	.long	.LASF53
	.byte	0xe
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF54
	.byte	0xe
	.byte	0x36
	.byte	0x9
	.long	0x13d
	.byte	0x8
	.uleb128 0xa
	.long	.LASF55
	.byte	0xe
	.byte	0x37
	.byte	0x9
	.long	0x13d
	.byte	0x10
	.uleb128 0xa
	.long	.LASF56
	.byte	0xe
	.byte	0x38
	.byte	0x9
	.long	0x13d
	.byte	0x18
	.uleb128 0xa
	.long	.LASF57
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.long	0x13d
	.byte	0x20
	.uleb128 0xa
	.long	.LASF58
	.byte	0xe
	.byte	0x3a
	.byte	0x9
	.long	0x13d
	.byte	0x28
	.uleb128 0xa
	.long	.LASF59
	.byte	0xe
	.byte	0x3b
	.byte	0x9
	.long	0x13d
	.byte	0x30
	.uleb128 0xa
	.long	.LASF60
	.byte	0xe
	.byte	0x3c
	.byte	0x9
	.long	0x13d
	.byte	0x38
	.uleb128 0xa
	.long	.LASF61
	.byte	0xe
	.byte	0x3d
	.byte	0x9
	.long	0x13d
	.byte	0x40
	.uleb128 0xa
	.long	.LASF62
	.byte	0xe
	.byte	0x40
	.byte	0x9
	.long	0x13d
	.byte	0x48
	.uleb128 0xa
	.long	.LASF63
	.byte	0xe
	.byte	0x41
	.byte	0x9
	.long	0x13d
	.byte	0x50
	.uleb128 0xa
	.long	.LASF64
	.byte	0xe
	.byte	0x42
	.byte	0x9
	.long	0x13d
	.byte	0x58
	.uleb128 0xa
	.long	.LASF65
	.byte	0xe
	.byte	0x44
	.byte	0x16
	.long	0x481
	.byte	0x60
	.uleb128 0xa
	.long	.LASF66
	.byte	0xe
	.byte	0x46
	.byte	0x14
	.long	0x487
	.byte	0x68
	.uleb128 0xa
	.long	.LASF67
	.byte	0xe
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0xa
	.long	.LASF68
	.byte	0xe
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0xa
	.long	.LASF69
	.byte	0xe
	.byte	0x4a
	.byte	0xb
	.long	0xdb
	.byte	0x78
	.uleb128 0xa
	.long	.LASF70
	.byte	0xe
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0xa
	.long	.LASF71
	.byte	0xe
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0xa
	.long	.LASF72
	.byte	0xe
	.byte	0x4f
	.byte	0x8
	.long	0x48d
	.byte	0x83
	.uleb128 0xa
	.long	.LASF73
	.byte	0xe
	.byte	0x51
	.byte	0xf
	.long	0x49d
	.byte	0x88
	.uleb128 0xa
	.long	.LASF74
	.byte	0xe
	.byte	0x59
	.byte	0xd
	.long	0xe7
	.byte	0x90
	.uleb128 0xa
	.long	.LASF75
	.byte	0xe
	.byte	0x5b
	.byte	0x17
	.long	0x4a8
	.byte	0x98
	.uleb128 0xa
	.long	.LASF76
	.byte	0xe
	.byte	0x5c
	.byte	0x19
	.long	0x4b3
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF77
	.byte	0xe
	.byte	0x5d
	.byte	0x14
	.long	0x487
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF78
	.byte	0xe
	.byte	0x5e
	.byte	0x9
	.long	0x117
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF79
	.byte	0xe
	.byte	0x5f
	.byte	0xa
	.long	0x1af
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF80
	.byte	0xe
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF81
	.byte	0xe
	.byte	0x62
	.byte	0x8
	.long	0x4b9
	.byte	0xc4
	.byte	0
	.uleb128 0x6
	.long	.LASF82
	.byte	0xf
	.byte	0x7
	.byte	0x19
	.long	0x2e1
	.uleb128 0x11
	.long	.LASF1269
	.byte	0xe
	.byte	0x2b
	.byte	0xe
	.uleb128 0x12
	.long	.LASF83
	.uleb128 0x8
	.byte	0x8
	.long	0x47c
	.uleb128 0x8
	.byte	0x8
	.long	0x2e1
	.uleb128 0xb
	.long	0x143
	.long	0x49d
	.uleb128 0xc
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x474
	.uleb128 0x12
	.long	.LASF84
	.uleb128 0x8
	.byte	0x8
	.long	0x4a3
	.uleb128 0x12
	.long	.LASF85
	.uleb128 0x8
	.byte	0x8
	.long	0x4ae
	.uleb128 0xb
	.long	0x143
	.long	0x4c9
	.uleb128 0xc
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x14a
	.uleb128 0x5
	.long	0x4c9
	.uleb128 0x13
	.long	.LASF87
	.byte	0x11
	.byte	0x89
	.byte	0xe
	.long	0x4e0
	.uleb128 0x8
	.byte	0x8
	.long	0x468
	.uleb128 0x13
	.long	.LASF88
	.byte	0x11
	.byte	0x8a
	.byte	0xe
	.long	0x4e0
	.uleb128 0x13
	.long	.LASF89
	.byte	0x11
	.byte	0x8b
	.byte	0xe
	.long	0x4e0
	.uleb128 0x13
	.long	.LASF90
	.byte	0x12
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xb
	.long	0x4cf
	.long	0x515
	.uleb128 0x14
	.byte	0
	.uleb128 0x5
	.long	0x50a
	.uleb128 0x13
	.long	.LASF91
	.byte	0x12
	.byte	0x1b
	.byte	0x1a
	.long	0x515
	.uleb128 0x13
	.long	.LASF92
	.byte	0x12
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0x13
	.long	.LASF93
	.byte	0x12
	.byte	0x1f
	.byte	0x1a
	.long	0x515
	.uleb128 0x6
	.long	.LASF94
	.byte	0x8
	.byte	0x8f
	.byte	0x1a
	.long	0x74
	.uleb128 0x15
	.long	.LASF95
	.byte	0x8
	.value	0x141
	.byte	0x18
	.long	0x57
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF96
	.uleb128 0x6
	.long	.LASF97
	.byte	0x13
	.byte	0x1f
	.byte	0x12
	.long	0x56a
	.uleb128 0xb
	.long	0x74
	.long	0x57a
	.uleb128 0xc
	.long	0x42
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	.LASF98
	.byte	0xc8
	.byte	0x14
	.byte	0x21
	.byte	0x8
	.long	0x5af
	.uleb128 0xa
	.long	.LASF99
	.byte	0x14
	.byte	0x27
	.byte	0xf
	.long	0x55e
	.byte	0
	.uleb128 0xa
	.long	.LASF100
	.byte	0x14
	.byte	0x28
	.byte	0x9
	.long	0x57
	.byte	0x40
	.uleb128 0xa
	.long	.LASF101
	.byte	0x14
	.byte	0x29
	.byte	0x10
	.long	0x1e2
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.long	.LASF102
	.byte	0x14
	.byte	0x2d
	.byte	0x1e
	.long	0x5bb
	.uleb128 0xb
	.long	0x57a
	.long	0x5cb
	.uleb128 0xc
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF103
	.byte	0x15
	.byte	0x24
	.byte	0xe
	.long	0x13d
	.uleb128 0x13
	.long	.LASF104
	.byte	0x15
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0x13
	.long	.LASF105
	.byte	0x15
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0x13
	.long	.LASF106
	.byte	0x15
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xd
	.long	.LASF107
	.byte	0x20
	.byte	0x16
	.byte	0x32
	.byte	0x8
	.long	0x63d
	.uleb128 0xa
	.long	.LASF108
	.byte	0x16
	.byte	0x34
	.byte	0xf
	.long	0x4c9
	.byte	0
	.uleb128 0xa
	.long	.LASF109
	.byte	0x16
	.byte	0x37
	.byte	0x7
	.long	0x57
	.byte	0x8
	.uleb128 0xa
	.long	.LASF110
	.byte	0x16
	.byte	0x38
	.byte	0x8
	.long	0x642
	.byte	0x10
	.uleb128 0x16
	.string	"val"
	.byte	0x16
	.byte	0x39
	.byte	0x7
	.long	0x57
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	0x5fb
	.uleb128 0x8
	.byte	0x8
	.long	0x57
	.uleb128 0x6
	.long	.LASF111
	.byte	0x17
	.byte	0x8
	.byte	0x18
	.long	0x14f
	.uleb128 0x4
	.long	0x648
	.uleb128 0x17
	.long	.LASF1270
	.byte	0x8
	.byte	0x18
	.byte	0x18
	.byte	0x7
	.long	0x67f
	.uleb128 0x10
	.long	.LASF112
	.byte	0x18
	.byte	0x1a
	.byte	0x7
	.long	0x57
	.uleb128 0x10
	.long	.LASF113
	.byte	0x18
	.byte	0x1b
	.byte	0x9
	.long	0x117
	.byte	0
	.uleb128 0x6
	.long	.LASF114
	.byte	0x18
	.byte	0x1e
	.byte	0x16
	.long	0x659
	.uleb128 0x9
	.byte	0x8
	.byte	0x19
	.byte	0x38
	.byte	0x2
	.long	0x6af
	.uleb128 0xa
	.long	.LASF115
	.byte	0x19
	.byte	0x3a
	.byte	0xe
	.long	0xf3
	.byte	0
	.uleb128 0xa
	.long	.LASF116
	.byte	0x19
	.byte	0x3b
	.byte	0xe
	.long	0x9f
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x19
	.byte	0x3f
	.byte	0x2
	.long	0x6e0
	.uleb128 0xa
	.long	.LASF117
	.byte	0x19
	.byte	0x41
	.byte	0xa
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF118
	.byte	0x19
	.byte	0x42
	.byte	0xa
	.long	0x57
	.byte	0x4
	.uleb128 0xa
	.long	.LASF119
	.byte	0x19
	.byte	0x43
	.byte	0x11
	.long	0x67f
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x19
	.byte	0x47
	.byte	0x2
	.long	0x711
	.uleb128 0xa
	.long	.LASF115
	.byte	0x19
	.byte	0x49
	.byte	0xe
	.long	0xf3
	.byte	0
	.uleb128 0xa
	.long	.LASF116
	.byte	0x19
	.byte	0x4a
	.byte	0xe
	.long	0x9f
	.byte	0x4
	.uleb128 0xa
	.long	.LASF119
	.byte	0x19
	.byte	0x4b
	.byte	0x11
	.long	0x67f
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x20
	.byte	0x19
	.byte	0x4f
	.byte	0x2
	.long	0x75c
	.uleb128 0xa
	.long	.LASF115
	.byte	0x19
	.byte	0x51
	.byte	0xe
	.long	0xf3
	.byte	0
	.uleb128 0xa
	.long	.LASF116
	.byte	0x19
	.byte	0x52
	.byte	0xe
	.long	0x9f
	.byte	0x4
	.uleb128 0xa
	.long	.LASF120
	.byte	0x19
	.byte	0x53
	.byte	0xa
	.long	0x57
	.byte	0x8
	.uleb128 0xa
	.long	.LASF121
	.byte	0x19
	.byte	0x54
	.byte	0x13
	.long	0xff
	.byte	0x10
	.uleb128 0xa
	.long	.LASF122
	.byte	0x19
	.byte	0x55
	.byte	0x13
	.long	0xff
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x19
	.byte	0x61
	.byte	0x3
	.long	0x780
	.uleb128 0xa
	.long	.LASF123
	.byte	0x19
	.byte	0x63
	.byte	0xd
	.long	0x117
	.byte	0
	.uleb128 0xa
	.long	.LASF124
	.byte	0x19
	.byte	0x64
	.byte	0xd
	.long	0x117
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x10
	.byte	0x19
	.byte	0x5e
	.byte	0x6
	.long	0x7a2
	.uleb128 0x10
	.long	.LASF125
	.byte	0x19
	.byte	0x65
	.byte	0x7
	.long	0x75c
	.uleb128 0x10
	.long	.LASF126
	.byte	0x19
	.byte	0x67
	.byte	0xe
	.long	0x68
	.byte	0
	.uleb128 0x9
	.byte	0x20
	.byte	0x19
	.byte	0x59
	.byte	0x2
	.long	0x7d3
	.uleb128 0xa
	.long	.LASF127
	.byte	0x19
	.byte	0x5b
	.byte	0xc
	.long	0x117
	.byte	0
	.uleb128 0xa
	.long	.LASF128
	.byte	0x19
	.byte	0x5d
	.byte	0x10
	.long	0x50
	.byte	0x8
	.uleb128 0xa
	.long	.LASF129
	.byte	0x19
	.byte	0x68
	.byte	0xa
	.long	0x780
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x19
	.byte	0x6c
	.byte	0x2
	.long	0x7f7
	.uleb128 0xa
	.long	.LASF130
	.byte	0x19
	.byte	0x6e
	.byte	0x15
	.long	0x74
	.byte	0
	.uleb128 0xa
	.long	.LASF131
	.byte	0x19
	.byte	0x6f
	.byte	0xa
	.long	0x57
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x19
	.byte	0x74
	.byte	0x2
	.long	0x828
	.uleb128 0xa
	.long	.LASF132
	.byte	0x19
	.byte	0x76
	.byte	0xc
	.long	0x117
	.byte	0
	.uleb128 0xa
	.long	.LASF133
	.byte	0x19
	.byte	0x77
	.byte	0xa
	.long	0x57
	.byte	0x8
	.uleb128 0xa
	.long	.LASF134
	.byte	0x19
	.byte	0x78
	.byte	0x13
	.long	0x3b
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x70
	.byte	0x19
	.byte	0x33
	.byte	0x5
	.long	0x892
	.uleb128 0x10
	.long	.LASF135
	.byte	0x19
	.byte	0x35
	.byte	0x6
	.long	0x892
	.uleb128 0x10
	.long	.LASF136
	.byte	0x19
	.byte	0x3c
	.byte	0x6
	.long	0x68b
	.uleb128 0x10
	.long	.LASF137
	.byte	0x19
	.byte	0x44
	.byte	0x6
	.long	0x6af
	.uleb128 0x18
	.string	"_rt"
	.byte	0x19
	.byte	0x4c
	.byte	0x6
	.long	0x6e0
	.uleb128 0x10
	.long	.LASF138
	.byte	0x19
	.byte	0x56
	.byte	0x6
	.long	0x711
	.uleb128 0x10
	.long	.LASF139
	.byte	0x19
	.byte	0x69
	.byte	0x6
	.long	0x7a2
	.uleb128 0x10
	.long	.LASF140
	.byte	0x19
	.byte	0x70
	.byte	0x6
	.long	0x7d3
	.uleb128 0x10
	.long	.LASF141
	.byte	0x19
	.byte	0x79
	.byte	0x6
	.long	0x7f7
	.byte	0
	.uleb128 0xb
	.long	0x57
	.long	0x8a2
	.uleb128 0xc
	.long	0x42
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.byte	0x80
	.byte	0x19
	.byte	0x24
	.byte	0x9
	.long	0x8ed
	.uleb128 0xa
	.long	.LASF142
	.byte	0x19
	.byte	0x26
	.byte	0x9
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF143
	.byte	0x19
	.byte	0x28
	.byte	0x9
	.long	0x57
	.byte	0x4
	.uleb128 0xa
	.long	.LASF144
	.byte	0x19
	.byte	0x2a
	.byte	0x9
	.long	0x57
	.byte	0x8
	.uleb128 0xa
	.long	.LASF145
	.byte	0x19
	.byte	0x30
	.byte	0x9
	.long	0x57
	.byte	0xc
	.uleb128 0xa
	.long	.LASF146
	.byte	0x19
	.byte	0x7b
	.byte	0x9
	.long	0x828
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF147
	.byte	0x19
	.byte	0x7c
	.byte	0x5
	.long	0x8a2
	.uleb128 0x6
	.long	.LASF148
	.byte	0x1a
	.byte	0x48
	.byte	0x10
	.long	0x905
	.uleb128 0x8
	.byte	0x8
	.long	0x90b
	.uleb128 0x19
	.long	0x916
	.uleb128 0x1a
	.long	0x57
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0x1b
	.byte	0x1f
	.byte	0x5
	.long	0x938
	.uleb128 0x10
	.long	.LASF149
	.byte	0x1b
	.byte	0x22
	.byte	0x11
	.long	0x8f9
	.uleb128 0x10
	.long	.LASF150
	.byte	0x1b
	.byte	0x24
	.byte	0x9
	.long	0x953
	.byte	0
	.uleb128 0x19
	.long	0x94d
	.uleb128 0x1a
	.long	0x57
	.uleb128 0x1a
	.long	0x94d
	.uleb128 0x1a
	.long	0x117
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x8ed
	.uleb128 0x8
	.byte	0x8
	.long	0x938
	.uleb128 0xd
	.long	.LASF151
	.byte	0x98
	.byte	0x1b
	.byte	0x1b
	.byte	0x8
	.long	0x99b
	.uleb128 0xa
	.long	.LASF152
	.byte	0x1b
	.byte	0x26
	.byte	0x5
	.long	0x916
	.byte	0
	.uleb128 0xa
	.long	.LASF153
	.byte	0x1b
	.byte	0x2e
	.byte	0x10
	.long	0x1e2
	.byte	0x8
	.uleb128 0xa
	.long	.LASF154
	.byte	0x1b
	.byte	0x31
	.byte	0x9
	.long	0x57
	.byte	0x88
	.uleb128 0xa
	.long	.LASF155
	.byte	0x1b
	.byte	0x34
	.byte	0xc
	.long	0x9a1
	.byte	0x90
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4
	.long	0x99b
	.uleb128 0x8
	.byte	0x8
	.long	0x99b
	.uleb128 0xb
	.long	0x4cf
	.long	0x9b7
	.uleb128 0xc
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.long	0x9a7
	.uleb128 0xe
	.long	.LASF156
	.byte	0x1a
	.value	0x11e
	.byte	0x1a
	.long	0x9b7
	.uleb128 0xe
	.long	.LASF157
	.byte	0x1a
	.value	0x11f
	.byte	0x1a
	.long	0x9b7
	.uleb128 0x8
	.byte	0x8
	.long	0x13d
	.uleb128 0x6
	.long	.LASF158
	.byte	0x1c
	.byte	0x6
	.byte	0x15
	.long	0x2d5
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x28
	.byte	0x2a
	.byte	0x1
	.long	0x1666
	.uleb128 0x1d
	.long	.LASF159
	.long	0x20000
	.uleb128 0x1d
	.long	.LASF160
	.long	0x20001
	.uleb128 0x1d
	.long	.LASF161
	.long	0x20002
	.uleb128 0x1d
	.long	.LASF162
	.long	0x20003
	.uleb128 0x1d
	.long	.LASF163
	.long	0x20004
	.uleb128 0x1d
	.long	.LASF164
	.long	0x20005
	.uleb128 0x1d
	.long	.LASF165
	.long	0x20006
	.uleb128 0x1d
	.long	.LASF166
	.long	0x20007
	.uleb128 0x1d
	.long	.LASF167
	.long	0x20008
	.uleb128 0x1d
	.long	.LASF168
	.long	0x20009
	.uleb128 0x1d
	.long	.LASF169
	.long	0x2000a
	.uleb128 0x1d
	.long	.LASF170
	.long	0x2000b
	.uleb128 0x1d
	.long	.LASF171
	.long	0x2000c
	.uleb128 0x1d
	.long	.LASF172
	.long	0x2000d
	.uleb128 0x1d
	.long	.LASF173
	.long	0x2000e
	.uleb128 0x1d
	.long	.LASF174
	.long	0x2000f
	.uleb128 0x1d
	.long	.LASF175
	.long	0x20010
	.uleb128 0x1d
	.long	.LASF176
	.long	0x20011
	.uleb128 0x1d
	.long	.LASF177
	.long	0x20012
	.uleb128 0x1d
	.long	.LASF178
	.long	0x20013
	.uleb128 0x1d
	.long	.LASF179
	.long	0x20014
	.uleb128 0x1d
	.long	.LASF180
	.long	0x20015
	.uleb128 0x1d
	.long	.LASF181
	.long	0x20016
	.uleb128 0x1d
	.long	.LASF182
	.long	0x20017
	.uleb128 0x1d
	.long	.LASF183
	.long	0x20018
	.uleb128 0x1d
	.long	.LASF184
	.long	0x20019
	.uleb128 0x1d
	.long	.LASF185
	.long	0x2001a
	.uleb128 0x1d
	.long	.LASF186
	.long	0x2001b
	.uleb128 0x1d
	.long	.LASF187
	.long	0x2001c
	.uleb128 0x1d
	.long	.LASF188
	.long	0x2001d
	.uleb128 0x1d
	.long	.LASF189
	.long	0x2001e
	.uleb128 0x1d
	.long	.LASF190
	.long	0x2001f
	.uleb128 0x1d
	.long	.LASF191
	.long	0x20020
	.uleb128 0x1d
	.long	.LASF192
	.long	0x20021
	.uleb128 0x1d
	.long	.LASF193
	.long	0x20022
	.uleb128 0x1d
	.long	.LASF194
	.long	0x20023
	.uleb128 0x1d
	.long	.LASF195
	.long	0x20024
	.uleb128 0x1d
	.long	.LASF196
	.long	0x20025
	.uleb128 0x1d
	.long	.LASF197
	.long	0x20026
	.uleb128 0x1d
	.long	.LASF198
	.long	0x20027
	.uleb128 0x1d
	.long	.LASF199
	.long	0x20028
	.uleb128 0x1d
	.long	.LASF200
	.long	0x20029
	.uleb128 0x1d
	.long	.LASF201
	.long	0x2002a
	.uleb128 0x1d
	.long	.LASF202
	.long	0x2002b
	.uleb128 0x1e
	.string	"ERA"
	.long	0x2002c
	.uleb128 0x1d
	.long	.LASF203
	.long	0x2002d
	.uleb128 0x1d
	.long	.LASF204
	.long	0x2002e
	.uleb128 0x1d
	.long	.LASF205
	.long	0x2002f
	.uleb128 0x1d
	.long	.LASF206
	.long	0x20030
	.uleb128 0x1d
	.long	.LASF207
	.long	0x20031
	.uleb128 0x1d
	.long	.LASF208
	.long	0x20032
	.uleb128 0x1d
	.long	.LASF209
	.long	0x20033
	.uleb128 0x1d
	.long	.LASF210
	.long	0x20034
	.uleb128 0x1d
	.long	.LASF211
	.long	0x20035
	.uleb128 0x1d
	.long	.LASF212
	.long	0x20036
	.uleb128 0x1d
	.long	.LASF213
	.long	0x20037
	.uleb128 0x1d
	.long	.LASF214
	.long	0x20038
	.uleb128 0x1d
	.long	.LASF215
	.long	0x20039
	.uleb128 0x1d
	.long	.LASF216
	.long	0x2003a
	.uleb128 0x1d
	.long	.LASF217
	.long	0x2003b
	.uleb128 0x1d
	.long	.LASF218
	.long	0x2003c
	.uleb128 0x1d
	.long	.LASF219
	.long	0x2003d
	.uleb128 0x1d
	.long	.LASF220
	.long	0x2003e
	.uleb128 0x1d
	.long	.LASF221
	.long	0x2003f
	.uleb128 0x1d
	.long	.LASF222
	.long	0x20040
	.uleb128 0x1d
	.long	.LASF223
	.long	0x20041
	.uleb128 0x1d
	.long	.LASF224
	.long	0x20042
	.uleb128 0x1d
	.long	.LASF225
	.long	0x20043
	.uleb128 0x1d
	.long	.LASF226
	.long	0x20044
	.uleb128 0x1d
	.long	.LASF227
	.long	0x20045
	.uleb128 0x1d
	.long	.LASF228
	.long	0x20046
	.uleb128 0x1d
	.long	.LASF229
	.long	0x20047
	.uleb128 0x1d
	.long	.LASF230
	.long	0x20048
	.uleb128 0x1d
	.long	.LASF231
	.long	0x20049
	.uleb128 0x1d
	.long	.LASF232
	.long	0x2004a
	.uleb128 0x1d
	.long	.LASF233
	.long	0x2004b
	.uleb128 0x1d
	.long	.LASF234
	.long	0x2004c
	.uleb128 0x1d
	.long	.LASF235
	.long	0x2004d
	.uleb128 0x1d
	.long	.LASF236
	.long	0x2004e
	.uleb128 0x1d
	.long	.LASF237
	.long	0x2004f
	.uleb128 0x1d
	.long	.LASF238
	.long	0x20050
	.uleb128 0x1d
	.long	.LASF239
	.long	0x20051
	.uleb128 0x1d
	.long	.LASF240
	.long	0x20052
	.uleb128 0x1d
	.long	.LASF241
	.long	0x20053
	.uleb128 0x1d
	.long	.LASF242
	.long	0x20054
	.uleb128 0x1d
	.long	.LASF243
	.long	0x20055
	.uleb128 0x1d
	.long	.LASF244
	.long	0x20056
	.uleb128 0x1d
	.long	.LASF245
	.long	0x20057
	.uleb128 0x1d
	.long	.LASF246
	.long	0x20058
	.uleb128 0x1d
	.long	.LASF247
	.long	0x20059
	.uleb128 0x1d
	.long	.LASF248
	.long	0x2005a
	.uleb128 0x1d
	.long	.LASF249
	.long	0x2005b
	.uleb128 0x1d
	.long	.LASF250
	.long	0x2005c
	.uleb128 0x1d
	.long	.LASF251
	.long	0x2005d
	.uleb128 0x1d
	.long	.LASF252
	.long	0x2005e
	.uleb128 0x1d
	.long	.LASF253
	.long	0x2005f
	.uleb128 0x1d
	.long	.LASF254
	.long	0x20060
	.uleb128 0x1d
	.long	.LASF255
	.long	0x20061
	.uleb128 0x1d
	.long	.LASF256
	.long	0x20062
	.uleb128 0x1d
	.long	.LASF257
	.long	0x20063
	.uleb128 0x1d
	.long	.LASF258
	.long	0x20064
	.uleb128 0x1d
	.long	.LASF259
	.long	0x20065
	.uleb128 0x1d
	.long	.LASF260
	.long	0x20066
	.uleb128 0x1d
	.long	.LASF261
	.long	0x20067
	.uleb128 0x1d
	.long	.LASF262
	.long	0x20068
	.uleb128 0x1d
	.long	.LASF263
	.long	0x20069
	.uleb128 0x1d
	.long	.LASF264
	.long	0x2006a
	.uleb128 0x1d
	.long	.LASF265
	.long	0x2006b
	.uleb128 0x1d
	.long	.LASF266
	.long	0x2006c
	.uleb128 0x1d
	.long	.LASF267
	.long	0x2006d
	.uleb128 0x1d
	.long	.LASF268
	.long	0x2006e
	.uleb128 0x1d
	.long	.LASF269
	.long	0x2006f
	.uleb128 0x1d
	.long	.LASF270
	.long	0x20070
	.uleb128 0x1d
	.long	.LASF271
	.long	0x20071
	.uleb128 0x1d
	.long	.LASF272
	.long	0x20072
	.uleb128 0x1d
	.long	.LASF273
	.long	0x20073
	.uleb128 0x1d
	.long	.LASF274
	.long	0x20074
	.uleb128 0x1d
	.long	.LASF275
	.long	0x20075
	.uleb128 0x1d
	.long	.LASF276
	.long	0x20076
	.uleb128 0x1d
	.long	.LASF277
	.long	0x20077
	.uleb128 0x1d
	.long	.LASF278
	.long	0x20078
	.uleb128 0x1d
	.long	.LASF279
	.long	0x20079
	.uleb128 0x1d
	.long	.LASF280
	.long	0x2007a
	.uleb128 0x1d
	.long	.LASF281
	.long	0x2007b
	.uleb128 0x1d
	.long	.LASF282
	.long	0x2007c
	.uleb128 0x1d
	.long	.LASF283
	.long	0x2007d
	.uleb128 0x1d
	.long	.LASF284
	.long	0x2007e
	.uleb128 0x1d
	.long	.LASF285
	.long	0x2007f
	.uleb128 0x1d
	.long	.LASF286
	.long	0x20080
	.uleb128 0x1d
	.long	.LASF287
	.long	0x20081
	.uleb128 0x1d
	.long	.LASF288
	.long	0x20082
	.uleb128 0x1d
	.long	.LASF289
	.long	0x20083
	.uleb128 0x1d
	.long	.LASF290
	.long	0x20084
	.uleb128 0x1d
	.long	.LASF291
	.long	0x20085
	.uleb128 0x1d
	.long	.LASF292
	.long	0x20086
	.uleb128 0x1d
	.long	.LASF293
	.long	0x20087
	.uleb128 0x1d
	.long	.LASF294
	.long	0x20088
	.uleb128 0x1d
	.long	.LASF295
	.long	0x20089
	.uleb128 0x1d
	.long	.LASF296
	.long	0x2008a
	.uleb128 0x1d
	.long	.LASF297
	.long	0x2008b
	.uleb128 0x1d
	.long	.LASF298
	.long	0x2008c
	.uleb128 0x1d
	.long	.LASF299
	.long	0x2008d
	.uleb128 0x1d
	.long	.LASF300
	.long	0x2008e
	.uleb128 0x1d
	.long	.LASF301
	.long	0x2008f
	.uleb128 0x1d
	.long	.LASF302
	.long	0x20090
	.uleb128 0x1d
	.long	.LASF303
	.long	0x20091
	.uleb128 0x1d
	.long	.LASF304
	.long	0x20092
	.uleb128 0x1d
	.long	.LASF305
	.long	0x20093
	.uleb128 0x1d
	.long	.LASF306
	.long	0x20094
	.uleb128 0x1d
	.long	.LASF307
	.long	0x20095
	.uleb128 0x1d
	.long	.LASF308
	.long	0x20096
	.uleb128 0x1d
	.long	.LASF309
	.long	0x20097
	.uleb128 0x1d
	.long	.LASF310
	.long	0x20098
	.uleb128 0x1d
	.long	.LASF311
	.long	0x20099
	.uleb128 0x1d
	.long	.LASF312
	.long	0x2009a
	.uleb128 0x1d
	.long	.LASF313
	.long	0x2009b
	.uleb128 0x1d
	.long	.LASF314
	.long	0x2009c
	.uleb128 0x1d
	.long	.LASF315
	.long	0x2009d
	.uleb128 0x1d
	.long	.LASF316
	.long	0x2009e
	.uleb128 0x1d
	.long	.LASF317
	.long	0x2009f
	.uleb128 0x1d
	.long	.LASF318
	.long	0x30000
	.uleb128 0x1d
	.long	.LASF319
	.long	0x30001
	.uleb128 0x1d
	.long	.LASF320
	.long	0x30002
	.uleb128 0x1d
	.long	.LASF321
	.long	0x30003
	.uleb128 0x1d
	.long	.LASF322
	.long	0x30004
	.uleb128 0x1d
	.long	.LASF323
	.long	0x30005
	.uleb128 0x1d
	.long	.LASF324
	.long	0x30006
	.uleb128 0x1d
	.long	.LASF325
	.long	0x30007
	.uleb128 0x1d
	.long	.LASF326
	.long	0x30008
	.uleb128 0x1d
	.long	.LASF327
	.long	0x30009
	.uleb128 0x1d
	.long	.LASF328
	.long	0x3000a
	.uleb128 0x1d
	.long	.LASF329
	.long	0x3000b
	.uleb128 0x1d
	.long	.LASF330
	.long	0x3000c
	.uleb128 0x1d
	.long	.LASF331
	.long	0x3000d
	.uleb128 0x1d
	.long	.LASF332
	.long	0x3000e
	.uleb128 0x1d
	.long	.LASF333
	.long	0x3000f
	.uleb128 0x1d
	.long	.LASF334
	.long	0x30010
	.uleb128 0x1d
	.long	.LASF335
	.long	0x30011
	.uleb128 0x1d
	.long	.LASF336
	.long	0x30012
	.uleb128 0x1d
	.long	.LASF337
	.long	0x30013
	.uleb128 0x1f
	.long	.LASF338
	.byte	0
	.uleb128 0x1f
	.long	.LASF339
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF340
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF341
	.byte	0x3
	.uleb128 0x1f
	.long	.LASF342
	.byte	0x4
	.uleb128 0x1f
	.long	.LASF343
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF344
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF345
	.byte	0x7
	.uleb128 0x1f
	.long	.LASF346
	.byte	0x8
	.uleb128 0x1f
	.long	.LASF347
	.byte	0x9
	.uleb128 0x1f
	.long	.LASF348
	.byte	0xa
	.uleb128 0x1f
	.long	.LASF349
	.byte	0xb
	.uleb128 0x1f
	.long	.LASF350
	.byte	0xc
	.uleb128 0x1f
	.long	.LASF351
	.byte	0xd
	.uleb128 0x1f
	.long	.LASF352
	.byte	0xe
	.uleb128 0x1f
	.long	.LASF353
	.byte	0xe
	.uleb128 0x1f
	.long	.LASF354
	.byte	0xf
	.uleb128 0x1f
	.long	.LASF355
	.byte	0x10
	.uleb128 0x1f
	.long	.LASF356
	.byte	0x11
	.uleb128 0x1f
	.long	.LASF357
	.byte	0x12
	.uleb128 0x1f
	.long	.LASF358
	.byte	0x13
	.uleb128 0x1f
	.long	.LASF359
	.byte	0x14
	.uleb128 0x1f
	.long	.LASF360
	.byte	0x15
	.uleb128 0x1f
	.long	.LASF361
	.byte	0x16
	.uleb128 0x1f
	.long	.LASF362
	.byte	0x17
	.uleb128 0x1f
	.long	.LASF363
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF364
	.byte	0x19
	.uleb128 0x1f
	.long	.LASF365
	.byte	0x1a
	.uleb128 0x1f
	.long	.LASF366
	.byte	0x1b
	.uleb128 0x1f
	.long	.LASF367
	.byte	0x1c
	.uleb128 0x1f
	.long	.LASF368
	.byte	0x1d
	.uleb128 0x1f
	.long	.LASF369
	.byte	0x1e
	.uleb128 0x1f
	.long	.LASF370
	.byte	0x1f
	.uleb128 0x1f
	.long	.LASF371
	.byte	0x20
	.uleb128 0x1f
	.long	.LASF372
	.byte	0x21
	.uleb128 0x1f
	.long	.LASF373
	.byte	0x22
	.uleb128 0x1f
	.long	.LASF374
	.byte	0x23
	.uleb128 0x1f
	.long	.LASF375
	.byte	0x24
	.uleb128 0x1f
	.long	.LASF376
	.byte	0x25
	.uleb128 0x1f
	.long	.LASF377
	.byte	0x26
	.uleb128 0x1f
	.long	.LASF378
	.byte	0x27
	.uleb128 0x1f
	.long	.LASF379
	.byte	0x28
	.uleb128 0x1f
	.long	.LASF380
	.byte	0x29
	.uleb128 0x1f
	.long	.LASF381
	.byte	0x2a
	.uleb128 0x1f
	.long	.LASF382
	.byte	0x2b
	.uleb128 0x1f
	.long	.LASF383
	.byte	0x2c
	.uleb128 0x1f
	.long	.LASF384
	.byte	0x2d
	.uleb128 0x1f
	.long	.LASF385
	.byte	0x2e
	.uleb128 0x1f
	.long	.LASF386
	.byte	0x2f
	.uleb128 0x1f
	.long	.LASF387
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF388
	.byte	0x31
	.uleb128 0x1f
	.long	.LASF389
	.byte	0x32
	.uleb128 0x1f
	.long	.LASF390
	.byte	0x33
	.uleb128 0x1f
	.long	.LASF391
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF392
	.byte	0x35
	.uleb128 0x1f
	.long	.LASF393
	.byte	0x36
	.uleb128 0x1f
	.long	.LASF394
	.byte	0x37
	.uleb128 0x1f
	.long	.LASF395
	.byte	0x38
	.uleb128 0x1f
	.long	.LASF396
	.byte	0x39
	.uleb128 0x1f
	.long	.LASF397
	.byte	0x3a
	.uleb128 0x1f
	.long	.LASF398
	.byte	0x3b
	.uleb128 0x1f
	.long	.LASF399
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF400
	.byte	0x3d
	.uleb128 0x1f
	.long	.LASF401
	.byte	0x3e
	.uleb128 0x1f
	.long	.LASF402
	.byte	0x3f
	.uleb128 0x1f
	.long	.LASF403
	.byte	0x40
	.uleb128 0x1f
	.long	.LASF404
	.byte	0x41
	.uleb128 0x1f
	.long	.LASF405
	.byte	0x42
	.uleb128 0x1f
	.long	.LASF406
	.byte	0x43
	.uleb128 0x1f
	.long	.LASF407
	.byte	0x44
	.uleb128 0x1f
	.long	.LASF408
	.byte	0x45
	.uleb128 0x1f
	.long	.LASF409
	.byte	0x46
	.uleb128 0x1f
	.long	.LASF410
	.byte	0x47
	.uleb128 0x1f
	.long	.LASF411
	.byte	0x48
	.uleb128 0x1f
	.long	.LASF412
	.byte	0x49
	.uleb128 0x1f
	.long	.LASF413
	.byte	0x4a
	.uleb128 0x1f
	.long	.LASF414
	.byte	0x4b
	.uleb128 0x1f
	.long	.LASF415
	.byte	0x4c
	.uleb128 0x1f
	.long	.LASF416
	.byte	0x4d
	.uleb128 0x1f
	.long	.LASF417
	.byte	0x4e
	.uleb128 0x1f
	.long	.LASF418
	.byte	0x4f
	.uleb128 0x1f
	.long	.LASF419
	.byte	0x50
	.uleb128 0x1f
	.long	.LASF420
	.byte	0x51
	.uleb128 0x1f
	.long	.LASF421
	.byte	0x52
	.uleb128 0x1f
	.long	.LASF422
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF423
	.byte	0x54
	.uleb128 0x1f
	.long	.LASF424
	.byte	0x55
	.uleb128 0x1f
	.long	.LASF425
	.byte	0x56
	.uleb128 0x1d
	.long	.LASF426
	.long	0x40000
	.uleb128 0x1d
	.long	.LASF427
	.long	0x40001
	.uleb128 0x1d
	.long	.LASF428
	.long	0x40002
	.uleb128 0x1d
	.long	.LASF429
	.long	0x40003
	.uleb128 0x1d
	.long	.LASF430
	.long	0x40004
	.uleb128 0x1d
	.long	.LASF431
	.long	0x40005
	.uleb128 0x1d
	.long	.LASF432
	.long	0x40006
	.uleb128 0x1d
	.long	.LASF433
	.long	0x40007
	.uleb128 0x1d
	.long	.LASF434
	.long	0x40008
	.uleb128 0x1d
	.long	.LASF435
	.long	0x40009
	.uleb128 0x1d
	.long	.LASF436
	.long	0x4000a
	.uleb128 0x1d
	.long	.LASF437
	.long	0x4000b
	.uleb128 0x1d
	.long	.LASF438
	.long	0x4000c
	.uleb128 0x1d
	.long	.LASF439
	.long	0x4000d
	.uleb128 0x1d
	.long	.LASF440
	.long	0x4000e
	.uleb128 0x1d
	.long	.LASF441
	.long	0x4000f
	.uleb128 0x1d
	.long	.LASF442
	.long	0x40010
	.uleb128 0x1d
	.long	.LASF443
	.long	0x40011
	.uleb128 0x1d
	.long	.LASF444
	.long	0x40012
	.uleb128 0x1d
	.long	.LASF445
	.long	0x40013
	.uleb128 0x1d
	.long	.LASF446
	.long	0x40014
	.uleb128 0x1d
	.long	.LASF447
	.long	0x40015
	.uleb128 0x1d
	.long	.LASF448
	.long	0x40016
	.uleb128 0x1d
	.long	.LASF449
	.long	0x40017
	.uleb128 0x1d
	.long	.LASF450
	.long	0x40018
	.uleb128 0x1d
	.long	.LASF451
	.long	0x40019
	.uleb128 0x1d
	.long	.LASF452
	.long	0x4001a
	.uleb128 0x1d
	.long	.LASF453
	.long	0x4001b
	.uleb128 0x1d
	.long	.LASF454
	.long	0x4001c
	.uleb128 0x1d
	.long	.LASF455
	.long	0x4001d
	.uleb128 0x1d
	.long	.LASF456
	.long	0x4001e
	.uleb128 0x1d
	.long	.LASF457
	.long	0x4001f
	.uleb128 0x1d
	.long	.LASF458
	.long	0x40020
	.uleb128 0x1d
	.long	.LASF459
	.long	0x40021
	.uleb128 0x1d
	.long	.LASF460
	.long	0x40022
	.uleb128 0x1d
	.long	.LASF461
	.long	0x40023
	.uleb128 0x1d
	.long	.LASF462
	.long	0x40024
	.uleb128 0x1d
	.long	.LASF463
	.long	0x40025
	.uleb128 0x1d
	.long	.LASF464
	.long	0x40026
	.uleb128 0x1d
	.long	.LASF465
	.long	0x40027
	.uleb128 0x1d
	.long	.LASF466
	.long	0x40028
	.uleb128 0x1d
	.long	.LASF467
	.long	0x40029
	.uleb128 0x1d
	.long	.LASF468
	.long	0x4002a
	.uleb128 0x1d
	.long	.LASF469
	.long	0x4002b
	.uleb128 0x1d
	.long	.LASF470
	.long	0x4002c
	.uleb128 0x1d
	.long	.LASF471
	.long	0x4002d
	.uleb128 0x1d
	.long	.LASF472
	.long	0x4002e
	.uleb128 0x1d
	.long	.LASF473
	.long	0x10000
	.uleb128 0x1d
	.long	.LASF474
	.long	0x10000
	.uleb128 0x1d
	.long	.LASF475
	.long	0x10001
	.uleb128 0x1d
	.long	.LASF476
	.long	0x10001
	.uleb128 0x1d
	.long	.LASF477
	.long	0x10002
	.uleb128 0x1d
	.long	.LASF478
	.long	0x10003
	.uleb128 0x1d
	.long	.LASF479
	.long	0x10004
	.uleb128 0x1d
	.long	.LASF480
	.long	0x10005
	.uleb128 0x1d
	.long	.LASF481
	.long	0x10006
	.uleb128 0x1d
	.long	.LASF482
	.long	0x50000
	.uleb128 0x1d
	.long	.LASF483
	.long	0x50001
	.uleb128 0x1d
	.long	.LASF484
	.long	0x50002
	.uleb128 0x1d
	.long	.LASF485
	.long	0x50003
	.uleb128 0x1d
	.long	.LASF486
	.long	0x50004
	.uleb128 0x1d
	.long	.LASF487
	.long	0x50005
	.uleb128 0x1d
	.long	.LASF488
	.long	0x70000
	.uleb128 0x1d
	.long	.LASF489
	.long	0x70001
	.uleb128 0x1d
	.long	.LASF490
	.long	0x70002
	.uleb128 0x1d
	.long	.LASF491
	.long	0x70003
	.uleb128 0x1d
	.long	.LASF492
	.long	0x80000
	.uleb128 0x1d
	.long	.LASF493
	.long	0x80001
	.uleb128 0x1d
	.long	.LASF494
	.long	0x80002
	.uleb128 0x1d
	.long	.LASF495
	.long	0x80003
	.uleb128 0x1d
	.long	.LASF496
	.long	0x80004
	.uleb128 0x1d
	.long	.LASF497
	.long	0x80005
	.uleb128 0x1d
	.long	.LASF498
	.long	0x80006
	.uleb128 0x1d
	.long	.LASF499
	.long	0x80007
	.uleb128 0x1d
	.long	.LASF500
	.long	0x90000
	.uleb128 0x1d
	.long	.LASF501
	.long	0x90001
	.uleb128 0x1d
	.long	.LASF502
	.long	0x90002
	.uleb128 0x1d
	.long	.LASF503
	.long	0x90003
	.uleb128 0x1d
	.long	.LASF504
	.long	0x90004
	.uleb128 0x1d
	.long	.LASF505
	.long	0x90005
	.uleb128 0x1d
	.long	.LASF506
	.long	0x90006
	.uleb128 0x1d
	.long	.LASF507
	.long	0x90007
	.uleb128 0x1d
	.long	.LASF508
	.long	0x90008
	.uleb128 0x1d
	.long	.LASF509
	.long	0x90009
	.uleb128 0x1d
	.long	.LASF510
	.long	0x9000a
	.uleb128 0x1d
	.long	.LASF511
	.long	0x9000b
	.uleb128 0x1d
	.long	.LASF512
	.long	0x9000c
	.uleb128 0x1d
	.long	.LASF513
	.long	0x9000d
	.uleb128 0x1d
	.long	.LASF514
	.long	0xa0000
	.uleb128 0x1d
	.long	.LASF515
	.long	0xa0001
	.uleb128 0x1d
	.long	.LASF516
	.long	0xa0002
	.uleb128 0x1d
	.long	.LASF517
	.long	0xa0003
	.uleb128 0x1d
	.long	.LASF518
	.long	0xa0004
	.uleb128 0x1d
	.long	.LASF519
	.long	0xa0005
	.uleb128 0x1d
	.long	.LASF520
	.long	0xb0000
	.uleb128 0x1d
	.long	.LASF521
	.long	0xb0001
	.uleb128 0x1d
	.long	.LASF522
	.long	0xb0002
	.uleb128 0x1d
	.long	.LASF523
	.long	0xc0000
	.uleb128 0x1d
	.long	.LASF524
	.long	0xc0001
	.uleb128 0x1d
	.long	.LASF525
	.long	0xc0002
	.uleb128 0x1d
	.long	.LASF526
	.long	0xc0003
	.uleb128 0x1d
	.long	.LASF527
	.long	0xc0004
	.uleb128 0x1d
	.long	.LASF528
	.long	0xc0005
	.uleb128 0x1d
	.long	.LASF529
	.long	0xc0006
	.uleb128 0x1d
	.long	.LASF530
	.long	0xc0007
	.uleb128 0x1d
	.long	.LASF531
	.long	0xc0008
	.uleb128 0x1d
	.long	.LASF532
	.long	0xc0009
	.uleb128 0x1d
	.long	.LASF533
	.long	0xc000a
	.uleb128 0x1d
	.long	.LASF534
	.long	0xc000b
	.uleb128 0x1d
	.long	.LASF535
	.long	0xc000c
	.uleb128 0x1d
	.long	.LASF536
	.long	0xc000d
	.uleb128 0x1d
	.long	.LASF537
	.long	0xc000e
	.uleb128 0x1d
	.long	.LASF538
	.long	0xc000f
	.uleb128 0x1d
	.long	.LASF539
	.long	0xc0010
	.uleb128 0x1d
	.long	.LASF540
	.long	0xc0011
	.byte	0
	.uleb128 0x20
	.string	"tm"
	.byte	0x38
	.byte	0x1d
	.byte	0x7
	.byte	0x8
	.long	0x1702
	.uleb128 0xa
	.long	.LASF541
	.byte	0x1d
	.byte	0x9
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xa
	.long	.LASF542
	.byte	0x1d
	.byte	0xa
	.byte	0x7
	.long	0x57
	.byte	0x4
	.uleb128 0xa
	.long	.LASF543
	.byte	0x1d
	.byte	0xb
	.byte	0x7
	.long	0x57
	.byte	0x8
	.uleb128 0xa
	.long	.LASF544
	.byte	0x1d
	.byte	0xc
	.byte	0x7
	.long	0x57
	.byte	0xc
	.uleb128 0xa
	.long	.LASF545
	.byte	0x1d
	.byte	0xd
	.byte	0x7
	.long	0x57
	.byte	0x10
	.uleb128 0xa
	.long	.LASF546
	.byte	0x1d
	.byte	0xe
	.byte	0x7
	.long	0x57
	.byte	0x14
	.uleb128 0xa
	.long	.LASF547
	.byte	0x1d
	.byte	0xf
	.byte	0x7
	.long	0x57
	.byte	0x18
	.uleb128 0xa
	.long	.LASF548
	.byte	0x1d
	.byte	0x10
	.byte	0x7
	.long	0x57
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF549
	.byte	0x1d
	.byte	0x11
	.byte	0x7
	.long	0x57
	.byte	0x20
	.uleb128 0xa
	.long	.LASF550
	.byte	0x1d
	.byte	0x14
	.byte	0xc
	.long	0x74
	.byte	0x28
	.uleb128 0xa
	.long	.LASF551
	.byte	0x1d
	.byte	0x15
	.byte	0xf
	.long	0x4c9
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.long	0x1666
	.uleb128 0xb
	.long	0x13d
	.long	0x1717
	.uleb128 0xc
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	.LASF552
	.byte	0x1e
	.byte	0x9f
	.byte	0xe
	.long	0x1707
	.uleb128 0x13
	.long	.LASF553
	.byte	0x1e
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0x13
	.long	.LASF554
	.byte	0x1e
	.byte	0xa1
	.byte	0x11
	.long	0x74
	.uleb128 0x13
	.long	.LASF555
	.byte	0x1e
	.byte	0xa6
	.byte	0xe
	.long	0x1707
	.uleb128 0x13
	.long	.LASF556
	.byte	0x1e
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0x13
	.long	.LASF557
	.byte	0x1e
	.byte	0xaf
	.byte	0x11
	.long	0x74
	.uleb128 0xe
	.long	.LASF558
	.byte	0x1e
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x15
	.long	.LASF559
	.byte	0x1f
	.value	0x32c
	.byte	0x19
	.long	0x1779
	.uleb128 0x8
	.byte	0x8
	.long	0x177f
	.uleb128 0x12
	.long	.LASF551
	.uleb128 0xd
	.long	.LASF560
	.byte	0x90
	.byte	0x20
	.byte	0x2e
	.byte	0x8
	.long	0x1855
	.uleb128 0xa
	.long	.LASF561
	.byte	0x20
	.byte	0x30
	.byte	0xd
	.long	0x93
	.byte	0
	.uleb128 0xa
	.long	.LASF562
	.byte	0x20
	.byte	0x35
	.byte	0xd
	.long	0xb7
	.byte	0x8
	.uleb128 0xa
	.long	.LASF563
	.byte	0x20
	.byte	0x3d
	.byte	0xf
	.long	0xcf
	.byte	0x10
	.uleb128 0xa
	.long	.LASF564
	.byte	0x20
	.byte	0x3e
	.byte	0xe
	.long	0xc3
	.byte	0x18
	.uleb128 0xa
	.long	.LASF565
	.byte	0x20
	.byte	0x40
	.byte	0xd
	.long	0x9f
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF566
	.byte	0x20
	.byte	0x41
	.byte	0xd
	.long	0xab
	.byte	0x20
	.uleb128 0xa
	.long	.LASF145
	.byte	0x20
	.byte	0x43
	.byte	0x9
	.long	0x57
	.byte	0x24
	.uleb128 0xa
	.long	.LASF567
	.byte	0x20
	.byte	0x45
	.byte	0xd
	.long	0x93
	.byte	0x28
	.uleb128 0xa
	.long	.LASF568
	.byte	0x20
	.byte	0x4a
	.byte	0xd
	.long	0xdb
	.byte	0x30
	.uleb128 0xa
	.long	.LASF569
	.byte	0x20
	.byte	0x4e
	.byte	0x11
	.long	0x119
	.byte	0x38
	.uleb128 0xa
	.long	.LASF570
	.byte	0x20
	.byte	0x50
	.byte	0x10
	.long	0x125
	.byte	0x40
	.uleb128 0xa
	.long	.LASF571
	.byte	0x20
	.byte	0x5b
	.byte	0x15
	.long	0x1fa
	.byte	0x48
	.uleb128 0xa
	.long	.LASF572
	.byte	0x20
	.byte	0x5c
	.byte	0x15
	.long	0x1fa
	.byte	0x58
	.uleb128 0xa
	.long	.LASF573
	.byte	0x20
	.byte	0x5d
	.byte	0x15
	.long	0x1fa
	.byte	0x68
	.uleb128 0xa
	.long	.LASF574
	.byte	0x20
	.byte	0x6a
	.byte	0x17
	.long	0x185a
	.byte	0x78
	.byte	0
	.uleb128 0x5
	.long	0x1784
	.uleb128 0xb
	.long	0x131
	.long	0x186a
	.uleb128 0xc
	.long	0x42
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF575
	.byte	0x21
	.byte	0x18
	.byte	0x18
	.long	0x34
	.uleb128 0x6
	.long	.LASF576
	.byte	0x21
	.byte	0x1a
	.byte	0x18
	.long	0x57
	.uleb128 0x6
	.long	.LASF577
	.byte	0x21
	.byte	0x1b
	.byte	0x16
	.long	0x3b
	.uleb128 0x6
	.long	.LASF578
	.byte	0x21
	.byte	0x1e
	.byte	0x2c
	.long	0x246
	.uleb128 0x6
	.long	.LASF579
	.byte	0x21
	.byte	0x1f
	.byte	0x2a
	.long	0x22f
	.uleb128 0xd
	.long	.LASF580
	.byte	0x10
	.byte	0x22
	.byte	0x38
	.byte	0x8
	.long	0x18db
	.uleb128 0xa
	.long	.LASF37
	.byte	0x22
	.byte	0x39
	.byte	0x8
	.long	0x188e
	.byte	0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x22
	.byte	0x3a
	.byte	0x8
	.long	0x1882
	.byte	0x8
	.uleb128 0xa
	.long	.LASF581
	.byte	0x22
	.byte	0x3b
	.byte	0x8
	.long	0x1876
	.byte	0xc
	.byte	0
	.uleb128 0x21
	.long	.LASF582
	.value	0x100
	.byte	0x22
	.byte	0x63
	.byte	0x8
	.long	0x19fb
	.uleb128 0xa
	.long	.LASF583
	.byte	0x22
	.byte	0x65
	.byte	0x8
	.long	0x1882
	.byte	0
	.uleb128 0xa
	.long	.LASF584
	.byte	0x22
	.byte	0x66
	.byte	0x8
	.long	0x1882
	.byte	0x4
	.uleb128 0xa
	.long	.LASF585
	.byte	0x22
	.byte	0x67
	.byte	0x8
	.long	0x189a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF586
	.byte	0x22
	.byte	0x69
	.byte	0x8
	.long	0x1882
	.byte	0x10
	.uleb128 0xa
	.long	.LASF587
	.byte	0x22
	.byte	0x6a
	.byte	0x8
	.long	0x1882
	.byte	0x14
	.uleb128 0xa
	.long	.LASF588
	.byte	0x22
	.byte	0x6b
	.byte	0x8
	.long	0x1882
	.byte	0x18
	.uleb128 0xa
	.long	.LASF589
	.byte	0x22
	.byte	0x6c
	.byte	0x8
	.long	0x186a
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF590
	.byte	0x22
	.byte	0x6d
	.byte	0x8
	.long	0x19fb
	.byte	0x1e
	.uleb128 0xa
	.long	.LASF591
	.byte	0x22
	.byte	0x6f
	.byte	0x8
	.long	0x189a
	.byte	0x20
	.uleb128 0xa
	.long	.LASF592
	.byte	0x22
	.byte	0x70
	.byte	0x8
	.long	0x189a
	.byte	0x28
	.uleb128 0xa
	.long	.LASF593
	.byte	0x22
	.byte	0x71
	.byte	0x8
	.long	0x189a
	.byte	0x30
	.uleb128 0xa
	.long	.LASF594
	.byte	0x22
	.byte	0x72
	.byte	0x8
	.long	0x189a
	.byte	0x38
	.uleb128 0xa
	.long	.LASF595
	.byte	0x22
	.byte	0x74
	.byte	0x19
	.long	0x18a6
	.byte	0x40
	.uleb128 0xa
	.long	.LASF596
	.byte	0x22
	.byte	0x75
	.byte	0x19
	.long	0x18a6
	.byte	0x50
	.uleb128 0xa
	.long	.LASF597
	.byte	0x22
	.byte	0x76
	.byte	0x19
	.long	0x18a6
	.byte	0x60
	.uleb128 0xa
	.long	.LASF598
	.byte	0x22
	.byte	0x77
	.byte	0x19
	.long	0x18a6
	.byte	0x70
	.uleb128 0xa
	.long	.LASF599
	.byte	0x22
	.byte	0x79
	.byte	0x8
	.long	0x1882
	.byte	0x80
	.uleb128 0xa
	.long	.LASF600
	.byte	0x22
	.byte	0x7a
	.byte	0x8
	.long	0x1882
	.byte	0x84
	.uleb128 0xa
	.long	.LASF601
	.byte	0x22
	.byte	0x7b
	.byte	0x8
	.long	0x1882
	.byte	0x88
	.uleb128 0xa
	.long	.LASF602
	.byte	0x22
	.byte	0x7c
	.byte	0x8
	.long	0x1882
	.byte	0x8c
	.uleb128 0xa
	.long	.LASF603
	.byte	0x22
	.byte	0x7e
	.byte	0x8
	.long	0x1a0b
	.byte	0x90
	.byte	0
	.uleb128 0xb
	.long	0x186a
	.long	0x1a0b
	.uleb128 0xc
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x189a
	.long	0x1a1b
	.uleb128 0xc
	.long	0x42
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.long	.LASF604
	.byte	0x23
	.value	0x21f
	.byte	0xf
	.long	0x9d6
	.uleb128 0xe
	.long	.LASF605
	.byte	0x23
	.value	0x221
	.byte	0xf
	.long	0x9d6
	.uleb128 0x13
	.long	.LASF606
	.byte	0x24
	.byte	0x2d
	.byte	0xe
	.long	0x13d
	.uleb128 0x13
	.long	.LASF607
	.byte	0x24
	.byte	0x2e
	.byte	0xe
	.long	0x13d
	.uleb128 0x8
	.byte	0x8
	.long	0x1a53
	.uleb128 0x22
	.uleb128 0x13
	.long	.LASF608
	.byte	0x25
	.byte	0x1
	.byte	0x14
	.long	0x4c9
	.uleb128 0x13
	.long	.LASF609
	.byte	0x26
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x21
	.long	.LASF610
	.value	0x118
	.byte	0x27
	.byte	0x16
	.byte	0x8
	.long	0x1abc
	.uleb128 0xa
	.long	.LASF611
	.byte	0x27
	.byte	0x19
	.byte	0xd
	.long	0xb7
	.byte	0
	.uleb128 0xa
	.long	.LASF612
	.byte	0x27
	.byte	0x1a
	.byte	0xd
	.long	0xdb
	.byte	0x8
	.uleb128 0xa
	.long	.LASF613
	.byte	0x27
	.byte	0x1f
	.byte	0x18
	.long	0x34
	.byte	0x10
	.uleb128 0xa
	.long	.LASF614
	.byte	0x27
	.byte	0x20
	.byte	0x13
	.long	0x2d
	.byte	0x12
	.uleb128 0xa
	.long	.LASF615
	.byte	0x27
	.byte	0x21
	.byte	0xa
	.long	0x1abc
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.long	0x143
	.long	0x1acc
	.uleb128 0xc
	.long	0x42
	.byte	0xff
	.byte	0
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x29
	.byte	0x62
	.byte	0x3
	.long	0x1b11
	.uleb128 0x1f
	.long	.LASF616
	.byte	0
	.uleb128 0x1f
	.long	.LASF617
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF618
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF619
	.byte	0x4
	.uleb128 0x1f
	.long	.LASF620
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF621
	.byte	0x8
	.uleb128 0x1f
	.long	.LASF622
	.byte	0xa
	.uleb128 0x1f
	.long	.LASF623
	.byte	0xc
	.uleb128 0x1f
	.long	.LASF624
	.byte	0xe
	.byte	0
	.uleb128 0x23
	.string	"DIR"
	.byte	0x29
	.byte	0x7f
	.byte	0x1c
	.long	0x1b1d
	.uleb128 0x12
	.long	.LASF625
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.long	0x1b37
	.uleb128 0x1f
	.long	.LASF626
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF627
	.byte	0x2a
	.byte	0x65
	.byte	0x15
	.long	0x7b
	.uleb128 0x6
	.long	.LASF628
	.byte	0x2a
	.byte	0x66
	.byte	0x16
	.long	0x87
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x2b
	.byte	0x29
	.byte	0x6
	.long	0x1b67
	.uleb128 0x1d
	.long	.LASF629
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x2b
	.byte	0x2a
	.byte	0x6
	.long	0x1b7c
	.uleb128 0x1f
	.long	.LASF630
	.byte	0x9
	.byte	0
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x2c
	.byte	0x2f
	.byte	0x1
	.long	0x1bdb
	.uleb128 0x24
	.long	.LASF631
	.value	0x100
	.uleb128 0x24
	.long	.LASF632
	.value	0x200
	.uleb128 0x24
	.long	.LASF633
	.value	0x400
	.uleb128 0x24
	.long	.LASF634
	.value	0x800
	.uleb128 0x24
	.long	.LASF635
	.value	0x1000
	.uleb128 0x24
	.long	.LASF636
	.value	0x2000
	.uleb128 0x24
	.long	.LASF637
	.value	0x4000
	.uleb128 0x24
	.long	.LASF638
	.value	0x8000
	.uleb128 0x1f
	.long	.LASF639
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF640
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF641
	.byte	0x4
	.uleb128 0x1f
	.long	.LASF642
	.byte	0x8
	.byte	0
	.uleb128 0x25
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x1bf9
	.uleb128 0x26
	.long	.LASF643
	.sleb128 -130
	.uleb128 0x26
	.long	.LASF644
	.sleb128 -131
	.byte	0
	.uleb128 0xb
	.long	0x14a
	.long	0x1c04
	.uleb128 0x14
	.byte	0
	.uleb128 0x5
	.long	0x1bf9
	.uleb128 0x13
	.long	.LASF645
	.byte	0x2d
	.byte	0x19
	.byte	0x13
	.long	0x1c04
	.uleb128 0x13
	.long	.LASF646
	.byte	0x2e
	.byte	0x20
	.byte	0x14
	.long	0x4c9
	.uleb128 0x27
	.long	.LASF672
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x2f
	.byte	0x20
	.byte	0x6
	.long	0x1c76
	.uleb128 0x1f
	.long	.LASF647
	.byte	0
	.uleb128 0x1f
	.long	.LASF648
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF649
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF650
	.byte	0x3
	.uleb128 0x1f
	.long	.LASF651
	.byte	0x4
	.uleb128 0x1f
	.long	.LASF652
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF653
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF654
	.byte	0x7
	.uleb128 0x1f
	.long	.LASF655
	.byte	0x8
	.uleb128 0x1f
	.long	.LASF656
	.byte	0x9
	.uleb128 0x1f
	.long	.LASF657
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x1c21
	.uleb128 0xe
	.long	.LASF658
	.byte	0x2f
	.value	0x10b
	.byte	0x1a
	.long	0x515
	.uleb128 0xb
	.long	0x1c76
	.long	0x1c93
	.uleb128 0x14
	.byte	0
	.uleb128 0x5
	.long	0x1c88
	.uleb128 0xe
	.long	.LASF659
	.byte	0x2f
	.value	0x10c
	.byte	0x21
	.long	0x1c93
	.uleb128 0x12
	.long	.LASF660
	.uleb128 0x5
	.long	0x1ca5
	.uleb128 0x13
	.long	.LASF661
	.byte	0x30
	.byte	0x19
	.byte	0x1f
	.long	0x1ca5
	.uleb128 0x6
	.long	.LASF662
	.byte	0x31
	.byte	0x3d
	.byte	0x10
	.long	0x9a1
	.uleb128 0x13
	.long	.LASF663
	.byte	0x31
	.byte	0x3e
	.byte	0x19
	.long	0x1cbb
	.uleb128 0xd
	.long	.LASF664
	.byte	0x10
	.byte	0x32
	.byte	0x19
	.byte	0x8
	.long	0x1cfb
	.uleb128 0xa
	.long	.LASF562
	.byte	0x32
	.byte	0x1b
	.byte	0x9
	.long	0x15b
	.byte	0
	.uleb128 0xa
	.long	.LASF561
	.byte	0x32
	.byte	0x1c
	.byte	0x9
	.long	0x167
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x1cd3
	.uleb128 0x13
	.long	.LASF665
	.byte	0x33
	.byte	0x32
	.byte	0xf
	.long	0x9a1
	.uleb128 0x13
	.long	.LASF666
	.byte	0x33
	.byte	0x35
	.byte	0x15
	.long	0x3b
	.uleb128 0x13
	.long	.LASF667
	.byte	0x33
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF668
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF669
	.uleb128 0x6
	.long	.LASF670
	.byte	0x34
	.byte	0x32
	.byte	0x1b
	.long	0x1d3e
	.uleb128 0x12
	.long	.LASF671
	.uleb128 0x8
	.byte	0x8
	.long	0x1d49
	.uleb128 0x19
	.long	0x1d54
	.uleb128 0x1a
	.long	0x117
	.byte	0
	.uleb128 0x27
	.long	.LASF673
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x35
	.byte	0x19
	.byte	0x6
	.long	0x1d85
	.uleb128 0x1f
	.long	.LASF674
	.byte	0
	.uleb128 0x1f
	.long	.LASF675
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF676
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF677
	.byte	0x3
	.uleb128 0x1f
	.long	.LASF678
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x36
	.byte	0x2c
	.byte	0x1
	.long	0x1dd1
	.uleb128 0x1f
	.long	.LASF679
	.byte	0
	.uleb128 0x1f
	.long	.LASF680
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF681
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF682
	.byte	0x4
	.uleb128 0x1f
	.long	.LASF683
	.byte	0x8
	.uleb128 0x1f
	.long	.LASF684
	.byte	0x10
	.uleb128 0x1f
	.long	.LASF685
	.byte	0x20
	.uleb128 0x1f
	.long	.LASF686
	.byte	0x40
	.uleb128 0x1f
	.long	.LASF687
	.byte	0x80
	.uleb128 0x24
	.long	.LASF688
	.value	0x100
	.byte	0
	.uleb128 0x13
	.long	.LASF689
	.byte	0x37
	.byte	0xa
	.byte	0xc
	.long	0x57
	.uleb128 0xd
	.long	.LASF690
	.byte	0x10
	.byte	0x38
	.byte	0xa7
	.byte	0x8
	.long	0x1e12
	.uleb128 0xa
	.long	.LASF691
	.byte	0x38
	.byte	0xa9
	.byte	0x9
	.long	0x13d
	.byte	0
	.uleb128 0xa
	.long	.LASF692
	.byte	0x38
	.byte	0xaa
	.byte	0x1a
	.long	0x1e12
	.byte	0x8
	.uleb128 0xa
	.long	.LASF693
	.byte	0x38
	.byte	0xab
	.byte	0x8
	.long	0x1e18
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1ddd
	.uleb128 0xb
	.long	0x143
	.long	0x1e27
	.uleb128 0x28
	.long	0x42
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0x38
	.byte	0xb5
	.byte	0x3
	.long	0x1e45
	.uleb128 0x18
	.string	"i"
	.byte	0x38
	.byte	0xb7
	.byte	0x15
	.long	0x1af
	.uleb128 0x18
	.string	"p"
	.byte	0x38
	.byte	0xb8
	.byte	0xb
	.long	0x117
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0x38
	.byte	0xbd
	.byte	0x3
	.long	0x1e67
	.uleb128 0x10
	.long	.LASF694
	.byte	0x38
	.byte	0xbf
	.byte	0xd
	.long	0x1e76
	.uleb128 0x10
	.long	.LASF695
	.byte	0x38
	.byte	0xc0
	.byte	0xd
	.long	0x1e90
	.byte	0
	.uleb128 0x29
	.long	0x117
	.long	0x1e76
	.uleb128 0x1a
	.long	0x1af
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1e67
	.uleb128 0x29
	.long	0x117
	.long	0x1e90
	.uleb128 0x1a
	.long	0x117
	.uleb128 0x1a
	.long	0x1af
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1e7c
	.uleb128 0xf
	.byte	0x8
	.byte	0x38
	.byte	0xc2
	.byte	0x3
	.long	0x1eb8
	.uleb128 0x10
	.long	.LASF694
	.byte	0x38
	.byte	0xc4
	.byte	0xc
	.long	0x1d43
	.uleb128 0x10
	.long	.LASF695
	.byte	0x38
	.byte	0xc5
	.byte	0xc
	.long	0x1ec8
	.byte	0
	.uleb128 0x19
	.long	0x1ec8
	.uleb128 0x1a
	.long	0x117
	.uleb128 0x1a
	.long	0x117
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1eb8
	.uleb128 0xd
	.long	.LASF696
	.byte	0x58
	.byte	0x38
	.byte	0xae
	.byte	0x8
	.long	0x1f8e
	.uleb128 0xa
	.long	.LASF697
	.byte	0x38
	.byte	0xb0
	.byte	0x11
	.long	0x1af
	.byte	0
	.uleb128 0xa
	.long	.LASF698
	.byte	0x38
	.byte	0xb1
	.byte	0x1a
	.long	0x1e12
	.byte	0x8
	.uleb128 0xa
	.long	.LASF699
	.byte	0x38
	.byte	0xb2
	.byte	0x9
	.long	0x13d
	.byte	0x10
	.uleb128 0xa
	.long	.LASF700
	.byte	0x38
	.byte	0xb3
	.byte	0x9
	.long	0x13d
	.byte	0x18
	.uleb128 0xa
	.long	.LASF701
	.byte	0x38
	.byte	0xb4
	.byte	0x9
	.long	0x13d
	.byte	0x20
	.uleb128 0xa
	.long	.LASF702
	.byte	0x38
	.byte	0xb9
	.byte	0x5
	.long	0x1e27
	.byte	0x28
	.uleb128 0xa
	.long	.LASF703
	.byte	0x38
	.byte	0xba
	.byte	0x13
	.long	0x1af
	.byte	0x30
	.uleb128 0xa
	.long	.LASF704
	.byte	0x38
	.byte	0xc1
	.byte	0x5
	.long	0x1e45
	.byte	0x38
	.uleb128 0xa
	.long	.LASF705
	.byte	0x38
	.byte	0xc6
	.byte	0x5
	.long	0x1e96
	.byte	0x40
	.uleb128 0xa
	.long	.LASF706
	.byte	0x38
	.byte	0xc8
	.byte	0x9
	.long	0x117
	.byte	0x48
	.uleb128 0x2a
	.long	.LASF707
	.byte	0x38
	.byte	0xc9
	.byte	0xc
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x2a
	.long	.LASF708
	.byte	0x38
	.byte	0xca
	.byte	0xc
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x2a
	.long	.LASF709
	.byte	0x38
	.byte	0xce
	.byte	0xc
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x5
	.long	0x1ece
	.uleb128 0x13
	.long	.LASF710
	.byte	0x38
	.byte	0xe6
	.byte	0x26
	.long	0x1f9f
	.uleb128 0x8
	.byte	0x8
	.long	0x99c
	.uleb128 0x13
	.long	.LASF711
	.byte	0x38
	.byte	0xe9
	.byte	0xc
	.long	0x57
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x39
	.byte	0x13
	.byte	0xe
	.long	0x1fd2
	.uleb128 0x1f
	.long	.LASF712
	.byte	0
	.uleb128 0x1f
	.long	.LASF713
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF714
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF715
	.byte	0x39
	.byte	0x13
	.byte	0x44
	.long	0x1fb1
	.uleb128 0xb
	.long	0x14a
	.long	0x1fef
	.uleb128 0x2b
	.long	0x42
	.value	0x10cf
	.byte	0
	.uleb128 0x5
	.long	0x1fde
	.uleb128 0x2c
	.long	.LASF732
	.byte	0x3b
	.byte	0x1
	.byte	0x13
	.long	0x1fef
	.uleb128 0x9
	.byte	0x3
	.quad	G_line
	.uleb128 0x27
	.long	.LASF716
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x3a
	.byte	0x1c
	.byte	0x6
	.long	0x2035
	.uleb128 0x1f
	.long	.LASF717
	.byte	0
	.uleb128 0x1f
	.long	.LASF718
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF719
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF720
	.byte	0x4
	.byte	0
	.uleb128 0x27
	.long	.LASF721
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.byte	0xa6
	.byte	0x6
	.long	0x2084
	.uleb128 0x1f
	.long	.LASF722
	.byte	0
	.uleb128 0x1f
	.long	.LASF723
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF724
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF725
	.byte	0x3
	.uleb128 0x1f
	.long	.LASF726
	.byte	0x4
	.uleb128 0x1f
	.long	.LASF727
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF728
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF729
	.byte	0x7
	.uleb128 0x1f
	.long	.LASF730
	.byte	0x8
	.uleb128 0x1f
	.long	.LASF731
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.long	0x14a
	.long	0x2094
	.uleb128 0xc
	.long	0x42
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x2084
	.uleb128 0x2c
	.long	.LASF733
	.byte	0x4
	.byte	0xb6
	.byte	0x13
	.long	0x2094
	.uleb128 0x9
	.byte	0x3
	.quad	filetype_letter
	.uleb128 0x27
	.long	.LASF734
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.byte	0xc2
	.byte	0x6
	.long	0x20d4
	.uleb128 0x1f
	.long	.LASF735
	.byte	0
	.uleb128 0x1f
	.long	.LASF736
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF737
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	.LASF738
	.byte	0xc8
	.byte	0x4
	.byte	0xc9
	.byte	0x8
	.long	0x217e
	.uleb128 0xa
	.long	.LASF108
	.byte	0x4
	.byte	0xcc
	.byte	0xb
	.long	0x13d
	.byte	0
	.uleb128 0xa
	.long	.LASF739
	.byte	0x4
	.byte	0xcf
	.byte	0xb
	.long	0x13d
	.byte	0x8
	.uleb128 0xa
	.long	.LASF740
	.byte	0x4
	.byte	0xd2
	.byte	0xb
	.long	0x13d
	.byte	0x10
	.uleb128 0xa
	.long	.LASF560
	.byte	0x4
	.byte	0xd4
	.byte	0x11
	.long	0x1784
	.byte	0x18
	.uleb128 0xa
	.long	.LASF721
	.byte	0x4
	.byte	0xd6
	.byte	0x13
	.long	0x2035
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF741
	.byte	0x4
	.byte	0xda
	.byte	0xc
	.long	0x17f
	.byte	0xac
	.uleb128 0xa
	.long	.LASF742
	.byte	0x4
	.byte	0xdd
	.byte	0xb
	.long	0x13d
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF743
	.byte	0x4
	.byte	0xdf
	.byte	0xa
	.long	0x1d2b
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF744
	.byte	0x4
	.byte	0xe3
	.byte	0xa
	.long	0x1d2b
	.byte	0xb9
	.uleb128 0xa
	.long	.LASF734
	.byte	0x4
	.byte	0xe7
	.byte	0x13
	.long	0x20af
	.byte	0xbc
	.uleb128 0xa
	.long	.LASF745
	.byte	0x4
	.byte	0xea
	.byte	0xa
	.long	0x1d2b
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF746
	.byte	0x4
	.byte	0xed
	.byte	0x9
	.long	0x57
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	0x20d4
	.uleb128 0xd
	.long	.LASF747
	.byte	0x10
	.byte	0x4
	.byte	0xf6
	.byte	0x8
	.long	0x21ab
	.uleb128 0x16
	.string	"len"
	.byte	0x4
	.byte	0xf8
	.byte	0xc
	.long	0x1af
	.byte	0
	.uleb128 0xa
	.long	.LASF748
	.byte	0x4
	.byte	0xf9
	.byte	0x11
	.long	0x4c9
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x2183
	.uleb128 0x2d
	.long	.LASF749
	.byte	0x4
	.value	0x141
	.byte	0x14
	.long	0x21c7
	.uleb128 0x9
	.byte	0x3
	.quad	active_dir_set
	.uleb128 0x8
	.byte	0x8
	.long	0x1d32
	.uleb128 0x2d
	.long	.LASF750
	.byte	0x4
	.value	0x14c
	.byte	0x19
	.long	0x21e4
	.uleb128 0x9
	.byte	0x3
	.quad	cwd_file
	.uleb128 0x8
	.byte	0x8
	.long	0x20d4
	.uleb128 0x2d
	.long	.LASF751
	.byte	0x4
	.value	0x14f
	.byte	0xf
	.long	0x1af
	.uleb128 0x9
	.byte	0x3
	.quad	cwd_n_alloc
	.uleb128 0x2d
	.long	.LASF752
	.byte	0x4
	.value	0x152
	.byte	0xf
	.long	0x1af
	.uleb128 0x9
	.byte	0x3
	.quad	cwd_n_used
	.uleb128 0x2d
	.long	.LASF753
	.byte	0x4
	.value	0x155
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	cwd_some_quoted
	.uleb128 0x2d
	.long	.LASF754
	.byte	0x4
	.value	0x159
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	align_variable_outer_quotes
	.uleb128 0x2d
	.long	.LASF755
	.byte	0x4
	.value	0x15d
	.byte	0xf
	.long	0x225d
	.uleb128 0x9
	.byte	0x3
	.quad	sorted_file
	.uleb128 0x8
	.byte	0x8
	.long	0x117
	.uleb128 0x2d
	.long	.LASF756
	.byte	0x4
	.value	0x15e
	.byte	0xf
	.long	0x1af
	.uleb128 0x9
	.byte	0x3
	.quad	sorted_file_alloc
	.uleb128 0x2d
	.long	.LASF757
	.byte	0x4
	.value	0x165
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	color_symlink_as_referent
	.uleb128 0x2d
	.long	.LASF758
	.byte	0x4
	.value	0x167
	.byte	0x14
	.long	0x4c9
	.uleb128 0x9
	.byte	0x3
	.quad	hostname
	.uleb128 0x2e
	.long	.LASF759
	.byte	0x20
	.byte	0x4
	.value	0x171
	.byte	0x8
	.long	0x22ef
	.uleb128 0x2f
	.long	.LASF108
	.byte	0x4
	.value	0x173
	.byte	0xb
	.long	0x13d
	.byte	0
	.uleb128 0x2f
	.long	.LASF760
	.byte	0x4
	.value	0x177
	.byte	0xb
	.long	0x13d
	.byte	0x8
	.uleb128 0x2f
	.long	.LASF761
	.byte	0x4
	.value	0x178
	.byte	0xa
	.long	0x1d2b
	.byte	0x10
	.uleb128 0x2f
	.long	.LASF762
	.byte	0x4
	.value	0x179
	.byte	0x15
	.long	0x22ef
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x22a8
	.uleb128 0x2d
	.long	.LASF763
	.byte	0x4
	.value	0x17c
	.byte	0x18
	.long	0x22ef
	.uleb128 0x9
	.byte	0x3
	.quad	pending_dirs
	.uleb128 0x2d
	.long	.LASF764
	.byte	0x4
	.value	0x181
	.byte	0x18
	.long	0x1fa
	.uleb128 0x9
	.byte	0x3
	.quad	current_time
	.uleb128 0x2d
	.long	.LASF765
	.byte	0x4
	.value	0x183
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	print_scontext
	.uleb128 0xb
	.long	0x143
	.long	0x234a
	.uleb128 0xc
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.long	.LASF766
	.byte	0x4
	.value	0x184
	.byte	0xd
	.long	0x233a
	.uleb128 0x9
	.byte	0x3
	.quad	UNKNOWN_SECURITY_CONTEXT
	.uleb128 0x2d
	.long	.LASF767
	.byte	0x4
	.value	0x189
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	any_has_acl
	.uleb128 0x2d
	.long	.LASF768
	.byte	0x4
	.value	0x18f
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	inode_number_width
	.uleb128 0x2d
	.long	.LASF769
	.byte	0x4
	.value	0x190
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	block_size_width
	.uleb128 0x2d
	.long	.LASF770
	.byte	0x4
	.value	0x191
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	nlink_width
	.uleb128 0x2d
	.long	.LASF771
	.byte	0x4
	.value	0x192
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	scontext_width
	.uleb128 0x2d
	.long	.LASF772
	.byte	0x4
	.value	0x193
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	owner_width
	.uleb128 0x2d
	.long	.LASF773
	.byte	0x4
	.value	0x194
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	group_width
	.uleb128 0x2d
	.long	.LASF774
	.byte	0x4
	.value	0x195
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	author_width
	.uleb128 0x2d
	.long	.LASF775
	.byte	0x4
	.value	0x196
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	major_device_number_width
	.uleb128 0x2d
	.long	.LASF776
	.byte	0x4
	.value	0x197
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	minor_device_number_width
	.uleb128 0x2d
	.long	.LASF777
	.byte	0x4
	.value	0x198
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	file_size_width
	.uleb128 0x30
	.long	.LASF778
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x1a5
	.byte	0x6
	.long	0x2490
	.uleb128 0x1f
	.long	.LASF779
	.byte	0
	.uleb128 0x1f
	.long	.LASF780
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF781
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF782
	.byte	0x3
	.uleb128 0x1f
	.long	.LASF783
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x245e
	.uleb128 0x2d
	.long	.LASF778
	.byte	0x4
	.value	0x1ae
	.byte	0x14
	.long	0x245e
	.uleb128 0x9
	.byte	0x3
	.quad	format
	.uleb128 0x30
	.long	.LASF784
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x1b3
	.byte	0x6
	.long	0x24d8
	.uleb128 0x1f
	.long	.LASF785
	.byte	0
	.uleb128 0x1f
	.long	.LASF786
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF787
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF788
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x24ac
	.uleb128 0xb
	.long	0x4cf
	.long	0x24ed
	.uleb128 0xc
	.long	0x42
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x24dd
	.uleb128 0x2d
	.long	.LASF789
	.byte	0x4
	.value	0x1bb
	.byte	0x1a
	.long	0x24ed
	.uleb128 0x9
	.byte	0x3
	.quad	time_style_args
	.uleb128 0xb
	.long	0x24d8
	.long	0x2519
	.uleb128 0xc
	.long	0x42
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x2509
	.uleb128 0x2d
	.long	.LASF790
	.byte	0x4
	.value	0x1bf
	.byte	0x1e
	.long	0x2519
	.uleb128 0x9
	.byte	0x3
	.quad	time_style_types
	.uleb128 0x30
	.long	.LASF791
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x1ca
	.byte	0x6
	.long	0x2567
	.uleb128 0x1f
	.long	.LASF792
	.byte	0
	.uleb128 0x1f
	.long	.LASF793
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF794
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF795
	.byte	0x3
	.uleb128 0x1f
	.long	.LASF796
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x2535
	.uleb128 0x2d
	.long	.LASF791
	.byte	0x4
	.value	0x1d3
	.byte	0x17
	.long	0x2535
	.uleb128 0x9
	.byte	0x3
	.quad	time_type
	.uleb128 0x30
	.long	.LASF797
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x4
	.value	0x1d9
	.byte	0x6
	.long	0x25c1
	.uleb128 0x26
	.long	.LASF798
	.sleb128 -1
	.uleb128 0x1f
	.long	.LASF799
	.byte	0
	.uleb128 0x1f
	.long	.LASF800
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF801
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF802
	.byte	0x3
	.uleb128 0x1f
	.long	.LASF803
	.byte	0x4
	.uleb128 0x1f
	.long	.LASF804
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	0x2583
	.uleb128 0x2d
	.long	.LASF797
	.byte	0x4
	.value	0x1e4
	.byte	0x17
	.long	0x2583
	.uleb128 0x9
	.byte	0x3
	.quad	sort_type
	.uleb128 0x2d
	.long	.LASF805
	.byte	0x4
	.value	0x1ec
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	sort_reverse
	.uleb128 0x2d
	.long	.LASF806
	.byte	0x4
	.value	0x1f0
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	print_owner
	.uleb128 0x2d
	.long	.LASF807
	.byte	0x4
	.value	0x1f4
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	print_author
	.uleb128 0x2d
	.long	.LASF808
	.byte	0x4
	.value	0x1f8
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	print_group
	.uleb128 0x2d
	.long	.LASF809
	.byte	0x4
	.value	0x1fd
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	numeric_ids
	.uleb128 0x2d
	.long	.LASF810
	.byte	0x4
	.value	0x201
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	print_block_size
	.uleb128 0x2d
	.long	.LASF811
	.byte	0x4
	.value	0x204
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	human_output_opts
	.uleb128 0x2d
	.long	.LASF812
	.byte	0x4
	.value	0x207
	.byte	0x12
	.long	0x1b43
	.uleb128 0x9
	.byte	0x3
	.quad	output_block_size
	.uleb128 0x2d
	.long	.LASF813
	.byte	0x4
	.value	0x20a
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	file_human_output_opts
	.uleb128 0x2d
	.long	.LASF814
	.byte	0x4
	.value	0x20b
	.byte	0x12
	.long	0x1b43
	.uleb128 0x9
	.byte	0x3
	.quad	file_output_block_size
	.uleb128 0x2d
	.long	.LASF815
	.byte	0x4
	.value	0x210
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	dired
	.uleb128 0x30
	.long	.LASF816
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x219
	.byte	0x6
	.long	0x2706
	.uleb128 0x1f
	.long	.LASF817
	.byte	0
	.uleb128 0x1f
	.long	.LASF818
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF819
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF820
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x26da
	.uleb128 0x2d
	.long	.LASF816
	.byte	0x4
	.value	0x221
	.byte	0x1d
	.long	0x26da
	.uleb128 0x9
	.byte	0x3
	.quad	indicator_style
	.uleb128 0x2d
	.long	.LASF821
	.byte	0x4
	.value	0x224
	.byte	0x1a
	.long	0x24ed
	.uleb128 0x9
	.byte	0x3
	.quad	indicator_style_args
	.uleb128 0xb
	.long	0x2706
	.long	0x2749
	.uleb128 0xc
	.long	0x42
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x2739
	.uleb128 0x2d
	.long	.LASF822
	.byte	0x4
	.value	0x228
	.byte	0x23
	.long	0x2749
	.uleb128 0x9
	.byte	0x3
	.quad	indicator_style_types
	.uleb128 0x2d
	.long	.LASF823
	.byte	0x4
	.value	0x232
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	print_with_color
	.uleb128 0x2d
	.long	.LASF824
	.byte	0x4
	.value	0x234
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	print_hyperlink
	.uleb128 0x2d
	.long	.LASF825
	.byte	0x4
	.value	0x23a
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	used_color
	.uleb128 0x30
	.long	.LASF826
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x23c
	.byte	0x6
	.long	0x27d0
	.uleb128 0x1f
	.long	.LASF827
	.byte	0
	.uleb128 0x1f
	.long	.LASF828
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF829
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	0x27aa
	.uleb128 0x30
	.long	.LASF830
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x243
	.byte	0x6
	.long	0x2807
	.uleb128 0x1f
	.long	.LASF831
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF832
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF833
	.byte	0x3
	.uleb128 0x1f
	.long	.LASF834
	.byte	0x4
	.uleb128 0x1f
	.long	.LASF835
	.byte	0x5
	.byte	0
	.uleb128 0x30
	.long	.LASF836
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x24c
	.byte	0x6
	.long	0x28ab
	.uleb128 0x1f
	.long	.LASF837
	.byte	0
	.uleb128 0x1f
	.long	.LASF838
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF839
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF840
	.byte	0x3
	.uleb128 0x1f
	.long	.LASF841
	.byte	0x4
	.uleb128 0x1f
	.long	.LASF842
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF843
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF844
	.byte	0x7
	.uleb128 0x1f
	.long	.LASF845
	.byte	0x8
	.uleb128 0x1f
	.long	.LASF846
	.byte	0x9
	.uleb128 0x1f
	.long	.LASF847
	.byte	0xa
	.uleb128 0x1f
	.long	.LASF848
	.byte	0xb
	.uleb128 0x1f
	.long	.LASF849
	.byte	0xc
	.uleb128 0x1f
	.long	.LASF850
	.byte	0xd
	.uleb128 0x1f
	.long	.LASF851
	.byte	0xe
	.uleb128 0x1f
	.long	.LASF852
	.byte	0xf
	.uleb128 0x1f
	.long	.LASF853
	.byte	0x10
	.uleb128 0x1f
	.long	.LASF854
	.byte	0x11
	.uleb128 0x1f
	.long	.LASF855
	.byte	0x12
	.uleb128 0x1f
	.long	.LASF856
	.byte	0x13
	.uleb128 0x1f
	.long	.LASF857
	.byte	0x14
	.uleb128 0x1f
	.long	.LASF858
	.byte	0x15
	.uleb128 0x1f
	.long	.LASF859
	.byte	0x16
	.uleb128 0x1f
	.long	.LASF860
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.long	0x4cf
	.long	0x28bb
	.uleb128 0xc
	.long	0x42
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	0x28ab
	.uleb128 0x2d
	.long	.LASF861
	.byte	0x4
	.value	0x255
	.byte	0x1a
	.long	0x28bb
	.uleb128 0x9
	.byte	0x3
	.quad	indicator_name
	.uleb128 0x2e
	.long	.LASF862
	.byte	0x28
	.byte	0x4
	.value	0x25c
	.byte	0x8
	.long	0x2910
	.uleb128 0x31
	.string	"ext"
	.byte	0x4
	.value	0x25e
	.byte	0x14
	.long	0x2183
	.byte	0
	.uleb128 0x31
	.string	"seq"
	.byte	0x4
	.value	0x25f
	.byte	0x14
	.long	0x2183
	.byte	0x10
	.uleb128 0x2f
	.long	.LASF762
	.byte	0x4
	.value	0x260
	.byte	0x1c
	.long	0x2910
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x28d7
	.uleb128 0xb
	.long	0x2183
	.long	0x2926
	.uleb128 0xc
	.long	0x42
	.byte	0x17
	.byte	0
	.uleb128 0x2d
	.long	.LASF863
	.byte	0x4
	.value	0x263
	.byte	0x17
	.long	0x2916
	.uleb128 0x9
	.byte	0x3
	.quad	color_indicator
	.uleb128 0x2d
	.long	.LASF864
	.byte	0x4
	.value	0x280
	.byte	0x1f
	.long	0x2910
	.uleb128 0x9
	.byte	0x3
	.quad	color_ext_list
	.uleb128 0x2d
	.long	.LASF865
	.byte	0x4
	.value	0x283
	.byte	0xe
	.long	0x13d
	.uleb128 0x9
	.byte	0x3
	.quad	color_buf
	.uleb128 0x2d
	.long	.LASF866
	.byte	0x4
	.value	0x288
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	check_symlink_mode
	.uleb128 0x2d
	.long	.LASF867
	.byte	0x4
	.value	0x28c
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	print_inode
	.uleb128 0x2d
	.long	.LASF868
	.byte	0x4
	.value	0x291
	.byte	0x21
	.long	0x27d5
	.uleb128 0x9
	.byte	0x3
	.quad	dereference
	.uleb128 0x2d
	.long	.LASF869
	.byte	0x4
	.value	0x296
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	recursive
	.uleb128 0x2d
	.long	.LASF870
	.byte	0x4
	.value	0x29b
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	immediate_dirs
	.uleb128 0x2d
	.long	.LASF871
	.byte	0x4
	.value	0x29f
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	directories_first
	.uleb128 0x25
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x2a4
	.byte	0x1
	.long	0x2a17
	.uleb128 0x1f
	.long	.LASF872
	.byte	0
	.uleb128 0x1f
	.long	.LASF873
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF874
	.byte	0x2
	.byte	0
	.uleb128 0x2d
	.long	.LASF875
	.byte	0x4
	.value	0x2ae
	.byte	0x3
	.long	0x29f5
	.uleb128 0x9
	.byte	0x3
	.quad	ignore_mode
	.uleb128 0x2e
	.long	.LASF876
	.byte	0x10
	.byte	0x4
	.value	0x2b5
	.byte	0x8
	.long	0x2a59
	.uleb128 0x2f
	.long	.LASF877
	.byte	0x4
	.value	0x2b7
	.byte	0x11
	.long	0x4c9
	.byte	0
	.uleb128 0x2f
	.long	.LASF762
	.byte	0x4
	.value	0x2b8
	.byte	0x1c
	.long	0x2a5e
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x2a2e
	.uleb128 0x8
	.byte	0x8
	.long	0x2a2e
	.uleb128 0x2d
	.long	.LASF878
	.byte	0x4
	.value	0x2bb
	.byte	0x1f
	.long	0x2a5e
	.uleb128 0x9
	.byte	0x3
	.quad	ignore_patterns
	.uleb128 0x2d
	.long	.LASF879
	.byte	0x4
	.value	0x2bf
	.byte	0x1f
	.long	0x2a5e
	.uleb128 0x9
	.byte	0x3
	.quad	hide_patterns
	.uleb128 0x2d
	.long	.LASF880
	.byte	0x4
	.value	0x2ca
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	qmark_funny_chars
	.uleb128 0x2d
	.long	.LASF881
	.byte	0x4
	.value	0x2ce
	.byte	0x20
	.long	0x2ac0
	.uleb128 0x9
	.byte	0x3
	.quad	filename_quoting_options
	.uleb128 0x8
	.byte	0x8
	.long	0x1ca5
	.uleb128 0x2d
	.long	.LASF882
	.byte	0x4
	.value	0x2cf
	.byte	0x20
	.long	0x2ac0
	.uleb128 0x9
	.byte	0x3
	.quad	dirname_quoting_options
	.uleb128 0x2d
	.long	.LASF883
	.byte	0x4
	.value	0x2d3
	.byte	0xf
	.long	0x1af
	.uleb128 0x9
	.byte	0x3
	.quad	tabsize
	.uleb128 0x2d
	.long	.LASF884
	.byte	0x4
	.value	0x2d7
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	print_dir_name
	.uleb128 0x2d
	.long	.LASF885
	.byte	0x4
	.value	0x2dc
	.byte	0xf
	.long	0x1af
	.uleb128 0x9
	.byte	0x3
	.quad	line_length
	.uleb128 0x2d
	.long	.LASF886
	.byte	0x4
	.value	0x2e0
	.byte	0x13
	.long	0x176c
	.uleb128 0x9
	.byte	0x3
	.quad	localtz
	.uleb128 0x2d
	.long	.LASF887
	.byte	0x4
	.value	0x2e5
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	format_needs_stat
	.uleb128 0x2d
	.long	.LASF888
	.byte	0x4
	.value	0x2ea
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	format_needs_type
	.uleb128 0x25
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x2f2
	.byte	0x6
	.long	0x2b7e
	.uleb128 0x24
	.long	.LASF889
	.value	0x3e8
	.byte	0
	.uleb128 0xb
	.long	0x4c9
	.long	0x2b8e
	.uleb128 0xc
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.long	.LASF890
	.byte	0x4
	.value	0x2f7
	.byte	0x14
	.long	0x2b7e
	.uleb128 0x9
	.byte	0x3
	.quad	long_time_format
	.uleb128 0x2d
	.long	.LASF891
	.byte	0x4
	.value	0x317
	.byte	0x11
	.long	0x1ee
	.uleb128 0x9
	.byte	0x3
	.quad	caught_signals
	.uleb128 0x2d
	.long	.LASF892
	.byte	0x4
	.value	0x31b
	.byte	0x1e
	.long	0x654
	.uleb128 0x9
	.byte	0x3
	.quad	interrupt_signal
	.uleb128 0x2d
	.long	.LASF893
	.byte	0x4
	.value	0x31f
	.byte	0x1e
	.long	0x654
	.uleb128 0x9
	.byte	0x3
	.quad	stop_signal_count
	.uleb128 0x2d
	.long	.LASF894
	.byte	0x4
	.value	0x323
	.byte	0xc
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	exit_status
	.uleb128 0x25
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x327
	.byte	0x3
	.long	0x2c1d
	.uleb128 0x1f
	.long	.LASF895
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF896
	.byte	0x2
	.byte	0
	.uleb128 0x25
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x336
	.byte	0x1
	.long	0x2c93
	.uleb128 0x1f
	.long	.LASF897
	.byte	0x80
	.uleb128 0x1f
	.long	.LASF898
	.byte	0x81
	.uleb128 0x1f
	.long	.LASF899
	.byte	0x82
	.uleb128 0x1f
	.long	.LASF900
	.byte	0x83
	.uleb128 0x1f
	.long	.LASF901
	.byte	0x84
	.uleb128 0x1f
	.long	.LASF902
	.byte	0x85
	.uleb128 0x1f
	.long	.LASF903
	.byte	0x86
	.uleb128 0x1f
	.long	.LASF904
	.byte	0x87
	.uleb128 0x1f
	.long	.LASF905
	.byte	0x88
	.uleb128 0x1f
	.long	.LASF906
	.byte	0x89
	.uleb128 0x1f
	.long	.LASF907
	.byte	0x8a
	.uleb128 0x1f
	.long	.LASF908
	.byte	0x8b
	.uleb128 0x1f
	.long	.LASF909
	.byte	0x8c
	.uleb128 0x1f
	.long	.LASF910
	.byte	0x8d
	.uleb128 0x1f
	.long	.LASF911
	.byte	0x8e
	.uleb128 0x1f
	.long	.LASF912
	.byte	0x8f
	.uleb128 0x1f
	.long	.LASF913
	.byte	0x90
	.byte	0
	.uleb128 0xb
	.long	0x63d
	.long	0x2ca3
	.uleb128 0xc
	.long	0x42
	.byte	0x2b
	.byte	0
	.uleb128 0x5
	.long	0x2c93
	.uleb128 0x2d
	.long	.LASF914
	.byte	0x4
	.value	0x34a
	.byte	0x1c
	.long	0x2ca3
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0xb
	.long	0x4cf
	.long	0x2ccf
	.uleb128 0xc
	.long	0x42
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0x2cbf
	.uleb128 0x2d
	.long	.LASF915
	.byte	0x4
	.value	0x37c
	.byte	0x1a
	.long	0x2ccf
	.uleb128 0x9
	.byte	0x3
	.quad	format_args
	.uleb128 0xb
	.long	0x2490
	.long	0x2cfb
	.uleb128 0xc
	.long	0x42
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x2ceb
	.uleb128 0x2d
	.long	.LASF916
	.byte	0x4
	.value	0x381
	.byte	0x1a
	.long	0x2cfb
	.uleb128 0x9
	.byte	0x3
	.quad	format_types
	.uleb128 0xb
	.long	0x4cf
	.long	0x2d27
	.uleb128 0xc
	.long	0x42
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	0x2d17
	.uleb128 0x2d
	.long	.LASF917
	.byte	0x4
	.value	0x388
	.byte	0x1a
	.long	0x2d27
	.uleb128 0x9
	.byte	0x3
	.quad	sort_args
	.uleb128 0xb
	.long	0x25c1
	.long	0x2d53
	.uleb128 0xc
	.long	0x42
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x2d43
	.uleb128 0x2d
	.long	.LASF918
	.byte	0x4
	.value	0x38c
	.byte	0x1d
	.long	0x2d53
	.uleb128 0x9
	.byte	0x3
	.quad	sort_types
	.uleb128 0x2d
	.long	.LASF919
	.byte	0x4
	.value	0x392
	.byte	0x1a
	.long	0x2ccf
	.uleb128 0x9
	.byte	0x3
	.quad	time_args
	.uleb128 0xb
	.long	0x2567
	.long	0x2d96
	.uleb128 0xc
	.long	0x42
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x2d86
	.uleb128 0x2d
	.long	.LASF920
	.byte	0x4
	.value	0x399
	.byte	0x1d
	.long	0x2d96
	.uleb128 0x9
	.byte	0x3
	.quad	time_types
	.uleb128 0xb
	.long	0x4cf
	.long	0x2dc2
	.uleb128 0xc
	.long	0x42
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.long	0x2db2
	.uleb128 0x2d
	.long	.LASF921
	.byte	0x4
	.value	0x3a1
	.byte	0x1a
	.long	0x2dc2
	.uleb128 0x9
	.byte	0x3
	.quad	when_args
	.uleb128 0xb
	.long	0x27d0
	.long	0x2dee
	.uleb128 0xc
	.long	0x42
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x2dde
	.uleb128 0x2d
	.long	.LASF922
	.byte	0x4
	.value	0x3a8
	.byte	0x1d
	.long	0x2dee
	.uleb128 0x9
	.byte	0x3
	.quad	when_types
	.uleb128 0x2e
	.long	.LASF923
	.byte	0x18
	.byte	0x4
	.value	0x3b1
	.byte	0x8
	.long	0x2e43
	.uleb128 0x2f
	.long	.LASF924
	.byte	0x4
	.value	0x3b3
	.byte	0x8
	.long	0x1d2b
	.byte	0
	.uleb128 0x2f
	.long	.LASF925
	.byte	0x4
	.value	0x3b4
	.byte	0xa
	.long	0x1af
	.byte	0x8
	.uleb128 0x2f
	.long	.LASF926
	.byte	0x4
	.value	0x3b5
	.byte	0xb
	.long	0x2e48
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x2e0a
	.uleb128 0x8
	.byte	0x8
	.long	0x1af
	.uleb128 0x2d
	.long	.LASF923
	.byte	0x4
	.value	0x3b9
	.byte	0x1c
	.long	0x2e65
	.uleb128 0x9
	.byte	0x3
	.quad	column_info
	.uleb128 0x8
	.byte	0x8
	.long	0x2e0a
	.uleb128 0x2d
	.long	.LASF927
	.byte	0x4
	.value	0x3bc
	.byte	0xf
	.long	0x1af
	.uleb128 0x9
	.byte	0x3
	.quad	max_idx
	.uleb128 0x2d
	.long	.LASF928
	.byte	0x4
	.value	0x3c8
	.byte	0xf
	.long	0x1af
	.uleb128 0x9
	.byte	0x3
	.quad	dired_pos
	.uleb128 0x2d
	.long	.LASF929
	.byte	0x4
	.value	0x3dd
	.byte	0x17
	.long	0x1ece
	.uleb128 0x9
	.byte	0x3
	.quad	dired_obstack
	.uleb128 0x2d
	.long	.LASF930
	.byte	0x4
	.value	0x3e4
	.byte	0x17
	.long	0x1ece
	.uleb128 0x9
	.byte	0x3
	.quad	subdired_obstack
	.uleb128 0x2d
	.long	.LASF931
	.byte	0x4
	.value	0x3f2
	.byte	0x17
	.long	0x1ece
	.uleb128 0x9
	.byte	0x3
	.quad	dev_ino_obstack
	.uleb128 0x2d
	.long	.LASF932
	.byte	0x4
	.value	0x4e6
	.byte	0xd
	.long	0x1abc
	.uleb128 0x9
	.byte	0x3
	.quad	RFC3986
	.uleb128 0x25
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x4fa
	.byte	0x6
	.long	0x2f0b
	.uleb128 0x1f
	.long	.LASF933
	.byte	0xc
	.byte	0
	.uleb128 0x25
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x4fd
	.byte	0x6
	.long	0x2f21
	.uleb128 0x1f
	.long	.LASF934
	.byte	0x80
	.byte	0
	.uleb128 0xb
	.long	0x143
	.long	0x2f3d
	.uleb128 0xc
	.long	0x42
	.byte	0x1
	.uleb128 0xc
	.long	0x42
	.byte	0xb
	.uleb128 0xc
	.long	0x42
	.byte	0x7f
	.byte	0
	.uleb128 0x2d
	.long	.LASF935
	.byte	0x4
	.value	0x4fe
	.byte	0xd
	.long	0x2f21
	.uleb128 0x9
	.byte	0x3
	.quad	abformat
	.uleb128 0x2d
	.long	.LASF936
	.byte	0x4
	.value	0x502
	.byte	0xd
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	use_abformat
	.uleb128 0x30
	.long	.LASF937
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0xa60
	.byte	0x6
	.long	0x2fa3
	.uleb128 0x1f
	.long	.LASF938
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF939
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF940
	.byte	0x3
	.uleb128 0x1f
	.long	.LASF941
	.byte	0x4
	.uleb128 0x1f
	.long	.LASF942
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF943
	.byte	0x6
	.byte	0
	.uleb128 0x2d
	.long	.LASF944
	.byte	0x4
	.value	0xea4
	.byte	0x10
	.long	0x5af
	.uleb128 0x9
	.byte	0x3
	.quad	failed_strcoll
	.uleb128 0x32
	.string	"V"
	.byte	0x4
	.value	0xeb8
	.byte	0x15
	.long	0x1a4d
	.uleb128 0x15
	.long	.LASF945
	.byte	0x4
	.value	0xeb9
	.byte	0xf
	.long	0x2fd7
	.uleb128 0x5
	.long	0x2fc5
	.uleb128 0x8
	.byte	0x8
	.long	0x2fdd
	.uleb128 0x29
	.long	0x57
	.long	0x2ff1
	.uleb128 0x1a
	.long	0x2fba
	.uleb128 0x1a
	.long	0x2fba
	.byte	0
	.uleb128 0xb
	.long	0x2fd2
	.long	0x3013
	.uleb128 0xc
	.long	0x42
	.byte	0x7
	.uleb128 0xc
	.long	0x42
	.byte	0x1
	.uleb128 0xc
	.long	0x42
	.byte	0x1
	.uleb128 0xc
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0x2ff1
	.uleb128 0x2d
	.long	.LASF946
	.byte	0x4
	.value	0xf5f
	.byte	0x18
	.long	0x3013
	.uleb128 0x9
	.byte	0x3
	.quad	sort_functions
	.uleb128 0x33
	.long	.LASF1193
	.byte	0x4
	.value	0x14d1
	.byte	0x1
	.quad	.LFB237
	.quad	.LFE237-.LFB237
	.uleb128 0x1
	.byte	0x9c
	.long	0x305f
	.uleb128 0x34
	.long	.LASF947
	.byte	0x4
	.value	0x14d1
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x35
	.long	.LASF971
	.byte	0x4
	.value	0x149f
	.byte	0x1
	.long	0x1af
	.quad	.LFB236
	.quad	.LFE236-.LFB236
	.uleb128 0x1
	.byte	0x9c
	.long	0x3148
	.uleb128 0x34
	.long	.LASF948
	.byte	0x4
	.value	0x149f
	.byte	0x19
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.long	.LASF949
	.byte	0x4
	.value	0x14a1
	.byte	0xa
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF950
	.byte	0x4
	.value	0x14a2
	.byte	0xa
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF951
	.byte	0x4
	.value	0x14a7
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB143
	.quad	.LBE143-.LBB143
	.uleb128 0x37
	.string	"f"
	.byte	0x4
	.value	0x14ae
	.byte	0x1e
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF952
	.byte	0x4
	.value	0x14af
	.byte	0xe
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB144
	.quad	.LBE144-.LBB144
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0x14b1
	.byte	0x13
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.quad	.LBB145
	.quad	.LBE145-.LBB145
	.uleb128 0x37
	.string	"idx"
	.byte	0x4
	.value	0x14b5
	.byte	0x16
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF953
	.byte	0x4
	.value	0x14b8
	.byte	0x16
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x217e
	.uleb128 0x38
	.long	.LASF957
	.byte	0x4
	.value	0x145b
	.byte	0x1
	.quad	.LFB235
	.quad	.LFE235-.LFB235
	.uleb128 0x1
	.byte	0x9c
	.long	0x3237
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0x145d
	.byte	0xa
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF951
	.byte	0x4
	.value	0x145e
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF954
	.byte	0x4
	.value	0x1461
	.byte	0x11
	.long	0x1af
	.uleb128 0x9
	.byte	0x3
	.quad	column_info_alloc.10645
	.uleb128 0x39
	.quad	.LBB140
	.quad	.LBE140-.LBB140
	.long	0x3216
	.uleb128 0x2d
	.long	.LASF955
	.byte	0x4
	.value	0x1465
	.byte	0xe
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0x1466
	.byte	0xf
	.long	0x2e48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.quad	.LBB141
	.quad	.LBE141-.LBB141
	.uleb128 0x2d
	.long	.LASF956
	.byte	0x4
	.value	0x147e
	.byte	0x10
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.string	"s"
	.byte	0x4
	.value	0x147f
	.byte	0x10
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.string	"t"
	.byte	0x4
	.value	0x1480
	.byte	0x10
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB142
	.quad	.LBE142-.LBB142
	.uleb128 0x37
	.string	"j"
	.byte	0x4
	.value	0x1492
	.byte	0xe
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF958
	.byte	0x4
	.value	0x1444
	.byte	0x1
	.quad	.LFB234
	.quad	.LFE234-.LFB234
	.uleb128 0x1
	.byte	0x9c
	.long	0x3297
	.uleb128 0x34
	.long	.LASF959
	.byte	0x4
	.value	0x1444
	.byte	0xf
	.long	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF960
	.byte	0x4
	.value	0x1444
	.byte	0x21
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0x1444
	.byte	0x36
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF961
	.byte	0x4
	.value	0x1446
	.byte	0xf
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF962
	.byte	0x4
	.value	0x142e
	.byte	0x1
	.quad	.LFB233
	.quad	.LFE233-.LFB233
	.uleb128 0x1
	.byte	0x9c
	.long	0x32d6
	.uleb128 0x34
	.long	.LASF963
	.byte	0x4
	.value	0x142e
	.byte	0x10
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"to"
	.byte	0x4
	.value	0x142e
	.byte	0x1d
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.long	.LASF964
	.byte	0x4
	.value	0x1405
	.byte	0x1
	.quad	.LFB232
	.quad	.LFE232-.LFB232
	.uleb128 0x1
	.byte	0x9c
	.long	0x3379
	.uleb128 0x3b
	.string	"sep"
	.byte	0x4
	.value	0x1405
	.byte	0x1c
	.long	0x143
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LASF949
	.byte	0x4
	.value	0x1407
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.string	"pos"
	.byte	0x4
	.value	0x1408
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB138
	.quad	.LBE138-.LBB138
	.uleb128 0x37
	.string	"f"
	.byte	0x4
	.value	0x140c
	.byte	0x1e
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0x140d
	.byte	0xe
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.quad	.LBB139
	.quad	.LBE139-.LBB139
	.uleb128 0x2d
	.long	.LASF965
	.byte	0x4
	.value	0x1411
	.byte	0x10
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF966
	.byte	0x4
	.value	0x13dc
	.byte	0x1
	.quad	.LFB231
	.quad	.LFE231-.LFB231
	.uleb128 0x1
	.byte	0x9c
	.long	0x342b
	.uleb128 0x2d
	.long	.LASF949
	.byte	0x4
	.value	0x13de
	.byte	0xa
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x37
	.string	"pos"
	.byte	0x4
	.value	0x13df
	.byte	0xa
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF950
	.byte	0x4
	.value	0x13e0
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF967
	.byte	0x4
	.value	0x13e1
	.byte	0x1d
	.long	0x342b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.string	"f"
	.byte	0x4
	.value	0x13e2
	.byte	0x1a
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF952
	.byte	0x4
	.value	0x13e3
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF968
	.byte	0x4
	.value	0x13e4
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB137
	.quad	.LBE137-.LBB137
	.uleb128 0x37
	.string	"col"
	.byte	0x4
	.value	0x13ec
	.byte	0xe
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2e43
	.uleb128 0x38
	.long	.LASF969
	.byte	0x4
	.value	0x13b8
	.byte	0x1
	.quad	.LFB230
	.quad	.LFE230-.LFB230
	.uleb128 0x1
	.byte	0x9c
	.long	0x350b
	.uleb128 0x37
	.string	"row"
	.byte	0x4
	.value	0x13ba
	.byte	0xa
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF950
	.byte	0x4
	.value	0x13bb
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF967
	.byte	0x4
	.value	0x13bc
	.byte	0x1d
	.long	0x342b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF970
	.byte	0x4
	.value	0x13c0
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB134
	.quad	.LBE134-.LBB134
	.uleb128 0x37
	.string	"col"
	.byte	0x4
	.value	0x13c4
	.byte	0xe
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF949
	.byte	0x4
	.value	0x13c5
	.byte	0xe
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x37
	.string	"pos"
	.byte	0x4
	.value	0x13c6
	.byte	0xe
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x210
	.uleb128 0x37
	.string	"f"
	.byte	0x4
	.value	0x13cb
	.byte	0x22
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF952
	.byte	0x4
	.value	0x13cc
	.byte	0x12
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF968
	.byte	0x4
	.value	0x13cd
	.byte	0x12
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF972
	.byte	0x4
	.value	0x1397
	.byte	0x1
	.long	0x1af
	.quad	.LFB229
	.quad	.LFE229-.LFB229
	.uleb128 0x1
	.byte	0x9c
	.long	0x3581
	.uleb128 0x3b
	.string	"f"
	.byte	0x4
	.value	0x1397
	.byte	0x38
	.long	0x3148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0x1399
	.byte	0xa
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x37
	.string	"buf"
	.byte	0x4
	.value	0x139a
	.byte	0x8
	.long	0x3581
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x36
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.uleb128 0x37
	.string	"c"
	.byte	0x4
	.value	0x13b0
	.byte	0xc
	.long	0x143
	.uleb128 0x3
	.byte	0x91
	.sleb128 -697
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x143
	.long	0x3592
	.uleb128 0x2b
	.long	0x42
	.value	0x28b
	.byte	0
	.uleb128 0x38
	.long	.LASF973
	.byte	0x4
	.value	0x1383
	.byte	0x1
	.quad	.LFB228
	.quad	.LFE228-.LFB228
	.uleb128 0x1
	.byte	0x9c
	.long	0x35c2
	.uleb128 0x3b
	.string	"ind"
	.byte	0x4
	.value	0x1383
	.byte	0x26
	.long	0x35c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x21ab
	.uleb128 0x5
	.long	0x35c2
	.uleb128 0x35
	.long	.LASF974
	.byte	0x4
	.value	0x1314
	.byte	0x1
	.long	0x35c2
	.quad	.LFB227
	.quad	.LFE227-.LFB227
	.uleb128 0x1
	.byte	0x9c
	.long	0x36a8
	.uleb128 0x3b
	.string	"f"
	.byte	0x4
	.value	0x1314
	.byte	0x2d
	.long	0x3148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF975
	.byte	0x4
	.value	0x1314
	.byte	0x35
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.long	.LASF976
	.byte	0x4
	.value	0x1316
	.byte	0x15
	.long	0x2807
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x37
	.string	"ext"
	.byte	0x4
	.value	0x1317
	.byte	0x1a
	.long	0x2910
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0x1318
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF108
	.byte	0x4
	.value	0x131a
	.byte	0xf
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF977
	.byte	0x4
	.value	0x131b
	.byte	0xa
	.long	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF744
	.byte	0x4
	.value	0x131c
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.string	"s"
	.byte	0x4
	.value	0x137b
	.byte	0x1f
	.long	0x35c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.quad	.LBB132
	.quad	.LBE132-.LBB132
	.uleb128 0x2d
	.long	.LASF978
	.byte	0x4
	.value	0x1330
	.byte	0x20
	.long	0x36a8
	.uleb128 0x9
	.byte	0x3
	.quad	filetype_indicator.10564
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2807
	.long	0x36b8
	.uleb128 0xc
	.long	0x42
	.byte	0x9
	.byte	0
	.uleb128 0x35
	.long	.LASF979
	.byte	0x4
	.value	0x1303
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB226
	.quad	.LFE226-.LFB226
	.uleb128 0x1
	.byte	0x9c
	.long	0x36ec
	.uleb128 0x3b
	.string	"ind"
	.byte	0x4
	.value	0x1303
	.byte	0x2e
	.long	0x35c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF980
	.byte	0x4
	.value	0x12f9
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB225
	.quad	.LFE225-.LFB225
	.uleb128 0x1
	.byte	0x9c
	.long	0x374e
	.uleb128 0x34
	.long	.LASF743
	.byte	0x4
	.value	0x12f9
	.byte	0x1c
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF977
	.byte	0x4
	.value	0x12f9
	.byte	0x2c
	.long	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF976
	.byte	0x4
	.value	0x12f9
	.byte	0x40
	.long	0x2035
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.string	"c"
	.byte	0x4
	.value	0x12fb
	.byte	0x8
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x3d
	.long	.LASF981
	.byte	0x4
	.value	0x12d9
	.byte	0x1
	.long	0x143
	.quad	.LFB224
	.quad	.LFE224-.LFB224
	.uleb128 0x1
	.byte	0x9c
	.long	0x37b0
	.uleb128 0x34
	.long	.LASF743
	.byte	0x4
	.value	0x12d9
	.byte	0x1a
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF977
	.byte	0x4
	.value	0x12d9
	.byte	0x2a
	.long	0x17f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF976
	.byte	0x4
	.value	0x12d9
	.byte	0x3e
	.long	0x2035
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.string	"c"
	.byte	0x4
	.value	0x12db
	.byte	0x8
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x35
	.long	.LASF982
	.byte	0x4
	.value	0x12bb
	.byte	0x1
	.long	0x1af
	.quad	.LFB223
	.quad	.LFE223-.LFB223
	.uleb128 0x1
	.byte	0x9c
	.long	0x3816
	.uleb128 0x3b
	.string	"f"
	.byte	0x4
	.value	0x12bb
	.byte	0x34
	.long	0x3148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x34
	.long	.LASF983
	.byte	0x4
	.value	0x12bb
	.byte	0x3e
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x37
	.string	"buf"
	.byte	0x4
	.value	0x12bd
	.byte	0x8
	.long	0x3581
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x2d
	.long	.LASF984
	.byte	0x4
	.value	0x12ce
	.byte	0xa
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.byte	0
	.uleb128 0x3e
	.long	.LASF1198
	.byte	0x4
	.value	0x12aa
	.byte	0x1
	.quad	.LFB222
	.quad	.LFE222-.LFB222
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.long	.LASF985
	.byte	0x4
	.value	0x1286
	.byte	0x1
	.long	0x1af
	.quad	.LFB221
	.quad	.LFE221-.LFB221
	.uleb128 0x1
	.byte	0x9c
	.long	0x38d5
	.uleb128 0x3b
	.string	"f"
	.byte	0x4
	.value	0x1286
	.byte	0x31
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.long	.LASF975
	.byte	0x4
	.value	0x1287
	.byte	0x1f
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.long	.LASF986
	.byte	0x4
	.value	0x1288
	.byte	0x2a
	.long	0x38d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF983
	.byte	0x4
	.value	0x1289
	.byte	0x21
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF108
	.byte	0x4
	.value	0x128b
	.byte	0xf
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF987
	.byte	0x4
	.value	0x128d
	.byte	0x19
	.long	0x35c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF988
	.byte	0x4
	.value	0x1290
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0x1293
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1ece
	.uleb128 0x35
	.long	.LASF989
	.byte	0x4
	.value	0x1245
	.byte	0x1
	.long	0x1af
	.quad	.LFB220
	.quad	.LFE220-.LFB220
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ac5
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0x1245
	.byte	0x19
	.long	0x4c9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8328
	.uleb128 0x34
	.long	.LASF990
	.byte	0x4
	.value	0x1245
	.byte	0x3d
	.long	0x3ac5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8336
	.uleb128 0x34
	.long	.LASF991
	.byte	0x4
	.value	0x1246
	.byte	0x11
	.long	0x57
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8340
	.uleb128 0x34
	.long	.LASF987
	.byte	0x4
	.value	0x1246
	.byte	0x3e
	.long	0x35c2
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8352
	.uleb128 0x34
	.long	.LASF992
	.byte	0x4
	.value	0x1247
	.byte	0x12
	.long	0x1d2b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8344
	.uleb128 0x34
	.long	.LASF986
	.byte	0x4
	.value	0x1247
	.byte	0x2d
	.long	0x38d5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8360
	.uleb128 0x34
	.long	.LASF740
	.byte	0x4
	.value	0x1247
	.byte	0x40
	.long	0x4c9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8368
	.uleb128 0x2d
	.long	.LASF993
	.byte	0x4
	.value	0x1249
	.byte	0x8
	.long	0x3acb
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8224
	.uleb128 0x37
	.string	"buf"
	.byte	0x4
	.value	0x124a
	.byte	0x9
	.long	0x13d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8304
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0x124b
	.byte	0xa
	.long	0x1af
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8296
	.uleb128 0x37
	.string	"pad"
	.byte	0x4
	.value	0x124c
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8306
	.uleb128 0x2d
	.long	.LASF994
	.byte	0x4
	.value	0x1259
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8305
	.uleb128 0x39
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.long	0x3a0c
	.uleb128 0x37
	.string	"h"
	.byte	0x4
	.value	0x1262
	.byte	0xd
	.long	0x13d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8288
	.uleb128 0x37
	.string	"n"
	.byte	0x4
	.value	0x1263
	.byte	0xd
	.long	0x13d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8280
	.byte	0
	.uleb128 0x39
	.quad	.LBB128
	.quad	.LBE128-.LBB128
	.long	0x3a6a
	.uleb128 0x37
	.string	"__o"
	.byte	0x4
	.value	0x126f
	.byte	0x5
	.long	0x38d5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8272
	.uleb128 0x2d
	.long	.LASF995
	.byte	0x4
	.value	0x126f
	.byte	0x5
	.long	0x1af
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8264
	.uleb128 0x36
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.uleb128 0x2d
	.long	.LASF996
	.byte	0x4
	.value	0x126f
	.byte	0x5
	.long	0x3adc
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8256
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB130
	.quad	.LBE130-.LBB130
	.uleb128 0x37
	.string	"__o"
	.byte	0x4
	.value	0x1276
	.byte	0x5
	.long	0x38d5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8248
	.uleb128 0x2d
	.long	.LASF995
	.byte	0x4
	.value	0x1276
	.byte	0x5
	.long	0x1af
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x36
	.quad	.LBB131
	.quad	.LBE131-.LBB131
	.uleb128 0x2d
	.long	.LASF996
	.byte	0x4
	.value	0x1276
	.byte	0x5
	.long	0x3adc
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8232
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1caa
	.uleb128 0xb
	.long	0x143
	.long	0x3adc
	.uleb128 0x2b
	.long	0x42
	.value	0x1fff
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1f8e
	.uleb128 0x35
	.long	.LASF997
	.byte	0x4
	.value	0x1230
	.byte	0x1
	.long	0x13d
	.quad	.LFB219
	.quad	.LFE219-.LFB219
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b44
	.uleb128 0x3b
	.string	"str"
	.byte	0x4
	.value	0x1230
	.byte	0x1a
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF998
	.byte	0x4
	.value	0x1230
	.byte	0x24
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.string	"esc"
	.byte	0x4
	.value	0x1232
	.byte	0x9
	.long	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0x1233
	.byte	0x9
	.long	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF999
	.byte	0x4
	.value	0x121a
	.byte	0x1
	.long	0x1af
	.quad	.LFB218
	.quad	.LFE218-.LFB218
	.uleb128 0x1
	.byte	0x9c
	.long	0x3be6
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0x121a
	.byte	0x1f
	.long	0x4c9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8264
	.uleb128 0x34
	.long	.LASF990
	.byte	0x4
	.value	0x121a
	.byte	0x43
	.long	0x3ac5
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8272
	.uleb128 0x34
	.long	.LASF991
	.byte	0x4
	.value	0x121b
	.byte	0x17
	.long	0x57
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8276
	.uleb128 0x2d
	.long	.LASF993
	.byte	0x4
	.value	0x121d
	.byte	0x8
	.long	0x3acb
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8224
	.uleb128 0x37
	.string	"buf"
	.byte	0x4
	.value	0x121e
	.byte	0x9
	.long	0x13d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x2d
	.long	.LASF984
	.byte	0x4
	.value	0x121f
	.byte	0xa
	.long	0x1af
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8232
	.uleb128 0x37
	.string	"pad"
	.byte	0x4
	.value	0x1220
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8241
	.byte	0
	.uleb128 0x35
	.long	.LASF1000
	.byte	0x4
	.value	0x115a
	.byte	0x1
	.long	0x1af
	.quad	.LFB217
	.quad	.LFE217-.LFB217
	.uleb128 0x1
	.byte	0x9c
	.long	0x3df5
	.uleb128 0x34
	.long	.LASF1001
	.byte	0x4
	.value	0x115a
	.byte	0x18
	.long	0x9d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x34
	.long	.LASF1002
	.byte	0x4
	.value	0x115a
	.byte	0x26
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0x115a
	.byte	0x35
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x34
	.long	.LASF990
	.byte	0x4
	.value	0x115b
	.byte	0x2f
	.long	0x3ac5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x34
	.long	.LASF991
	.byte	0x4
	.value	0x115c
	.byte	0x15
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x34
	.long	.LASF984
	.byte	0x4
	.value	0x115c
	.byte	0x34
	.long	0x2e48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x3b
	.string	"pad"
	.byte	0x4
	.value	0x115c
	.byte	0x41
	.long	0x3df5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x37
	.string	"buf"
	.byte	0x4
	.value	0x115e
	.byte	0x9
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF1003
	.byte	0x4
	.value	0x115f
	.byte	0xa
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0x1160
	.byte	0xa
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF746
	.byte	0x4
	.value	0x1161
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -150
	.uleb128 0x37
	.string	"qs"
	.byte	0x4
	.value	0x1163
	.byte	0x16
	.long	0x1c21
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.long	.LASF1004
	.byte	0x4
	.value	0x1164
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -149
	.uleb128 0x39
	.quad	.LBB122
	.quad	.LBE122-.LBB122
	.long	0x3d8d
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0x1188
	.byte	0x17
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.long	.LASF1005
	.byte	0x4
	.value	0x1189
	.byte	0x17
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.string	"q"
	.byte	0x4
	.value	0x118a
	.byte	0x11
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.uleb128 0x2d
	.long	.LASF1006
	.byte	0x4
	.value	0x11ad
	.byte	0x1f
	.long	0x9dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB124
	.quad	.LBE124-.LBB124
	.uleb128 0x37
	.string	"wc"
	.byte	0x4
	.value	0x11b0
	.byte	0x21
	.long	0x54a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2d
	.long	.LASF1007
	.byte	0x4
	.value	0x11b1
	.byte	0x20
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x37
	.string	"w"
	.byte	0x4
	.value	0x11b2
	.byte	0x1d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.quad	.LBB125
	.quad	.LBE125-.LBB125
	.long	0x3dc2
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0x11ed
	.byte	0x11
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF1005
	.byte	0x4
	.value	0x11ee
	.byte	0x17
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x36
	.quad	.LBB126
	.quad	.LBE126-.LBB126
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0x11ff
	.byte	0x17
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF1005
	.byte	0x4
	.value	0x1200
	.byte	0x17
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x38
	.long	.LASF1008
	.byte	0x4
	.value	0x1077
	.byte	0x1
	.quad	.LFB216
	.quad	.LFE216-.LFB216
	.uleb128 0x1
	.byte	0x9c
	.long	0x4030
	.uleb128 0x3b
	.string	"f"
	.byte	0x4
	.value	0x1077
	.byte	0x2b
	.long	0x3148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4568
	.uleb128 0x2d
	.long	.LASF1009
	.byte	0x4
	.value	0x1079
	.byte	0x8
	.long	0x4030
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4396
	.uleb128 0x37
	.string	"buf"
	.byte	0x4
	.value	0x107a
	.byte	0x8
	.long	0x4040
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3696
	.uleb128 0x37
	.string	"s"
	.byte	0x4
	.value	0x1083
	.byte	0xa
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4536
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0x1084
	.byte	0x9
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4528
	.uleb128 0x2d
	.long	.LASF1010
	.byte	0x4
	.value	0x1085
	.byte	0x13
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4496
	.uleb128 0x2d
	.long	.LASF1011
	.byte	0x4
	.value	0x1086
	.byte	0xd
	.long	0x1666
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4464
	.uleb128 0x2d
	.long	.LASF1012
	.byte	0x4
	.value	0x1087
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4550
	.uleb128 0x37
	.string	"w"
	.byte	0x4
	.value	0x1140
	.byte	0xa
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4504
	.uleb128 0x39
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.long	0x3ed2
	.uleb128 0x2d
	.long	.LASF1013
	.byte	0x4
	.value	0x10b2
	.byte	0xc
	.long	0x4051
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4352
	.byte	0
	.uleb128 0x39
	.quad	.LBB116
	.quad	.LBE116-.LBB116
	.long	0x3f1b
	.uleb128 0x2d
	.long	.LASF1013
	.byte	0x4
	.value	0x10bc
	.byte	0xc
	.long	0x3581
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4352
	.uleb128 0x2d
	.long	.LASF1014
	.byte	0x4
	.value	0x10bd
	.byte	0x13
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4520
	.uleb128 0x37
	.string	"pad"
	.byte	0x4
	.value	0x10c2
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4548
	.byte	0
	.uleb128 0x39
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.long	0x3f42
	.uleb128 0x2d
	.long	.LASF1013
	.byte	0x4
	.value	0x10cd
	.byte	0xa
	.long	0x4051
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4352
	.byte	0
	.uleb128 0x39
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.long	0x3f8b
	.uleb128 0x2d
	.long	.LASF1015
	.byte	0x4
	.value	0x10ee
	.byte	0xc
	.long	0x4051
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4384
	.uleb128 0x2d
	.long	.LASF1016
	.byte	0x4
	.value	0x10ef
	.byte	0xc
	.long	0x4051
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4352
	.uleb128 0x2d
	.long	.LASF1017
	.byte	0x4
	.value	0x10f0
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4540
	.byte	0
	.uleb128 0x39
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.long	0x3fd4
	.uleb128 0x2d
	.long	.LASF1013
	.byte	0x4
	.value	0x10fc
	.byte	0xc
	.long	0x3581
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4352
	.uleb128 0x2d
	.long	.LASF1018
	.byte	0x4
	.value	0x10fd
	.byte	0x13
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4512
	.uleb128 0x37
	.string	"pad"
	.byte	0x4
	.value	0x1103
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4544
	.byte	0
	.uleb128 0x39
	.quad	.LBB120
	.quad	.LBE120-.LBB120
	.long	0x400c
	.uleb128 0x2d
	.long	.LASF1019
	.byte	0x4
	.value	0x1111
	.byte	0x17
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4480
	.uleb128 0x2d
	.long	.LASF1020
	.byte	0x4
	.value	0x1112
	.byte	0xc
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4549
	.byte	0
	.uleb128 0x36
	.quad	.LBB121
	.quad	.LBE121-.LBB121
	.uleb128 0x2d
	.long	.LASF1013
	.byte	0x4
	.value	0x1136
	.byte	0xc
	.long	0x4051
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4352
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x143
	.long	0x4040
	.uleb128 0xc
	.long	0x42
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.long	0x143
	.long	0x4051
	.uleb128 0x2b
	.long	0x42
	.value	0xe3a
	.byte	0
	.uleb128 0xb
	.long	0x143
	.long	0x4061
	.uleb128 0xc
	.long	0x42
	.byte	0x14
	.byte	0
	.uleb128 0x35
	.long	.LASF1021
	.byte	0x4
	.value	0x106d
	.byte	0x1
	.long	0x13d
	.quad	.LFB215
	.quad	.LFE215-.LFB215
	.uleb128 0x1
	.byte	0x9c
	.long	0x40c6
	.uleb128 0x3b
	.string	"buf"
	.byte	0x4
	.value	0x106d
	.byte	0x15
	.long	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF1022
	.byte	0x4
	.value	0x106d
	.byte	0x21
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.string	"f"
	.byte	0x4
	.value	0x106d
	.byte	0x40
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3f
	.long	.LASF1037
	.long	0x40d6
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10300
	.byte	0
	.uleb128 0xb
	.long	0x14a
	.long	0x40d6
	.uleb128 0xc
	.long	0x42
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.long	0x40c6
	.uleb128 0x35
	.long	.LASF1023
	.byte	0x4
	.value	0x1064
	.byte	0x1
	.long	0x57
	.quad	.LFB214
	.quad	.LFE214-.LFB214
	.uleb128 0x1
	.byte	0x9c
	.long	0x410d
	.uleb128 0x3b
	.string	"g"
	.byte	0x4
	.value	0x1064
	.byte	0x1b
	.long	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x35
	.long	.LASF1024
	.byte	0x4
	.value	0x105c
	.byte	0x1
	.long	0x57
	.quad	.LFB213
	.quad	.LFE213-.LFB213
	.uleb128 0x1
	.byte	0x9c
	.long	0x413f
	.uleb128 0x3b
	.string	"u"
	.byte	0x4
	.value	0x105c
	.byte	0x1a
	.long	0x18b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x35
	.long	.LASF1025
	.byte	0x4
	.value	0x104a
	.byte	0x1
	.long	0x57
	.quad	.LFB212
	.quad	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.long	0x41cc
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0x104a
	.byte	0x29
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3b
	.string	"id"
	.byte	0x4
	.value	0x104a
	.byte	0x41
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x39
	.quad	.LBB113
	.quad	.LBE113-.LBB113
	.long	0x41a9
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0x104e
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x36
	.quad	.LBB114
	.quad	.LBE114-.LBB114
	.uleb128 0x37
	.string	"buf"
	.byte	0x4
	.value	0x1053
	.byte	0xc
	.long	0x4051
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1026
	.byte	0x4
	.value	0x1041
	.byte	0x1
	.quad	.LFB211
	.quad	.LFE211-.LFB211
	.uleb128 0x1
	.byte	0x9c
	.long	0x421a
	.uleb128 0x3b
	.string	"g"
	.byte	0x4
	.value	0x1041
	.byte	0x15
	.long	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF984
	.byte	0x4
	.value	0x1041
	.byte	0x1c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF743
	.byte	0x4
	.value	0x1041
	.byte	0x28
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x38
	.long	.LASF1027
	.byte	0x4
	.value	0x1038
	.byte	0x1
	.quad	.LFB210
	.quad	.LFE210-.LFB210
	.uleb128 0x1
	.byte	0x9c
	.long	0x4268
	.uleb128 0x3b
	.string	"u"
	.byte	0x4
	.value	0x1038
	.byte	0x14
	.long	0x18b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF984
	.byte	0x4
	.value	0x1038
	.byte	0x1b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF743
	.byte	0x4
	.value	0x1038
	.byte	0x27
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x38
	.long	.LASF1028
	.byte	0x4
	.value	0x101c
	.byte	0x1
	.quad	.LFB209
	.quad	.LFE209-.LFB209
	.uleb128 0x1
	.byte	0x9c
	.long	0x42f9
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0x101c
	.byte	0x23
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"id"
	.byte	0x4
	.value	0x101c
	.byte	0x3b
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF984
	.byte	0x4
	.value	0x101c
	.byte	0x43
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0x101e
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.quad	.LBB112
	.quad	.LBE112-.LBB112
	.uleb128 0x2d
	.long	.LASF1029
	.byte	0x4
	.value	0x1022
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x37
	.string	"pad"
	.byte	0x4
	.value	0x1023
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1030
	.byte	0x4
	.value	0xff8
	.byte	0x1
	.long	0x57
	.quad	.LFB208
	.quad	.LFE208-.LFB208
	.uleb128 0x1
	.byte	0x9c
	.long	0x439b
	.uleb128 0x2d
	.long	.LASF984
	.byte	0x4
	.value	0xffa
	.byte	0xe
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	width.10258
	.uleb128 0x36
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.uleb128 0x2d
	.long	.LASF1031
	.byte	0x4
	.value	0xffe
	.byte	0xe
	.long	0x1a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x37
	.string	"tm"
	.byte	0x4
	.value	0xfff
	.byte	0x11
	.long	0x1666
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x37
	.string	"buf"
	.byte	0x4
	.value	0x1000
	.byte	0xc
	.long	0x439b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x36
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0x100b
	.byte	0x12
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x143
	.long	0x43ac
	.uleb128 0x2b
	.long	0x42
	.value	0x3e8
	.byte	0
	.uleb128 0x35
	.long	.LASF1032
	.byte	0x4
	.value	0xfeb
	.byte	0x1
	.long	0x1af
	.quad	.LFB207
	.quad	.LFE207-.LFB207
	.uleb128 0x1
	.byte	0x9c
	.long	0x443e
	.uleb128 0x3b
	.string	"buf"
	.byte	0x4
	.value	0xfeb
	.byte	0x18
	.long	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1018
	.byte	0x4
	.value	0xfeb
	.byte	0x24
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1020
	.byte	0x4
	.value	0xfeb
	.byte	0x2f
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3b
	.string	"tm"
	.byte	0x4
	.value	0xfeb
	.byte	0x48
	.long	0x443e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3b
	.string	"tz"
	.byte	0x4
	.value	0xfec
	.byte	0x1d
	.long	0x176c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3b
	.string	"ns"
	.byte	0x4
	.value	0xfec
	.byte	0x25
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1033
	.byte	0x4
	.value	0xfee
	.byte	0xf
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1702
	.uleb128 0x38
	.long	.LASF1034
	.byte	0x4
	.value	0xfbb
	.byte	0x1
	.quad	.LFB206
	.quad	.LFE206-.LFB206
	.uleb128 0x1
	.byte	0x9c
	.long	0x4472
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0xfbd
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1035
	.byte	0x4
	.value	0xf93
	.byte	0x1
	.quad	.LFB205
	.quad	.LFE205-.LFB205
	.uleb128 0x1
	.byte	0x9c
	.long	0x44b5
	.uleb128 0x2d
	.long	.LASF1036
	.byte	0x4
	.value	0xf95
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3f
	.long	.LASF1037
	.long	0x2094
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.10229
	.byte	0
	.uleb128 0x3a
	.long	.LASF1038
	.byte	0x4
	.value	0xf8a
	.byte	0x1
	.quad	.LFB204
	.quad	.LFE204-.LFB204
	.uleb128 0x1
	.byte	0x9c
	.long	0x44f5
	.uleb128 0x36
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0xf8c
	.byte	0xf
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1039
	.byte	0x4
	.value	0xf45
	.byte	0xc
	.long	0x57
	.quad	.LFB203
	.quad	.LFE203-.LFB203
	.uleb128 0x1
	.byte	0x9c
	.long	0x4567
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf45
	.byte	0x27
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf45
	.byte	0x2c
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB108
	.quad	.LBE108-.LBB108
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf46
	.byte	0x3
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf46
	.byte	0x3
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1042
	.byte	0x4
	.value	0xf43
	.byte	0xc
	.long	0x57
	.quad	.LFB202
	.quad	.LFE202-.LFB202
	.uleb128 0x1
	.byte	0x9c
	.long	0x45d9
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf43
	.byte	0x23
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf43
	.byte	0x28
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf44
	.byte	0x3
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf44
	.byte	0x3
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1043
	.byte	0x4
	.value	0xf41
	.byte	0xc
	.long	0x57
	.quad	.LFB201
	.quad	.LFE201-.LFB201
	.uleb128 0x1
	.byte	0x9c
	.long	0x4619
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf41
	.byte	0x24
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf41
	.byte	0x29
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1044
	.byte	0x4
	.value	0xf3f
	.byte	0xc
	.long	0x57
	.quad	.LFB200
	.quad	.LFE200-.LFB200
	.uleb128 0x1
	.byte	0x9c
	.long	0x4659
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf3f
	.byte	0x20
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf3f
	.byte	0x25
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1045
	.byte	0x4
	.value	0xf3a
	.byte	0x1
	.long	0x57
	.quad	.LFB199
	.quad	.LFE199-.LFB199
	.uleb128 0x1
	.byte	0x9c
	.long	0x4699
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf3a
	.byte	0x25
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf3a
	.byte	0x3f
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1046
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x57
	.quad	.LFB198
	.quad	.LFE198-.LFB198
	.uleb128 0x1
	.byte	0x9c
	.long	0x470b
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB106
	.quad	.LBE106-.LBB106
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1047
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x57
	.quad	.LFB197
	.quad	.LFE197-.LFB197
	.uleb128 0x1
	.byte	0x9c
	.long	0x477d
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB105
	.quad	.LBE105-.LBB105
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1048
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x57
	.quad	.LFB196
	.quad	.LFE196-.LFB196
	.uleb128 0x1
	.byte	0x9c
	.long	0x47ef
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1049
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x57
	.quad	.LFB195
	.quad	.LFE195-.LFB195
	.uleb128 0x1
	.byte	0x9c
	.long	0x4861
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1050
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x57
	.quad	.LFB194
	.quad	.LFE194-.LFB194
	.uleb128 0x1
	.byte	0x9c
	.long	0x48a1
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1051
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x57
	.quad	.LFB193
	.quad	.LFE193-.LFB193
	.uleb128 0x1
	.byte	0x9c
	.long	0x48e1
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1052
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x57
	.quad	.LFB192
	.quad	.LFE192-.LFB192
	.uleb128 0x1
	.byte	0x9c
	.long	0x4921
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1053
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x57
	.quad	.LFB191
	.quad	.LFE191-.LFB191
	.uleb128 0x1
	.byte	0x9c
	.long	0x4961
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2e
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1054
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x57
	.quad	.LFB190
	.quad	.LFE190-.LFB190
	.uleb128 0x1
	.byte	0x9c
	.long	0x49d3
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1055
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x57
	.quad	.LFB189
	.quad	.LFE189-.LFB189
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a45
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1056
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x57
	.quad	.LFB188
	.quad	.LFE188-.LFB188
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ab7
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1057
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x57
	.quad	.LFB187
	.quad	.LFE187-.LFB187
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b29
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1058
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x57
	.quad	.LFB186
	.quad	.LFE186-.LFB186
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b69
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1059
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x57
	.quad	.LFB185
	.quad	.LFE185-.LFB185
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ba9
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1060
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x57
	.quad	.LFB184
	.quad	.LFE184-.LFB184
	.uleb128 0x1
	.byte	0x9c
	.long	0x4be9
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1061
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x57
	.quad	.LFB183
	.quad	.LFE183-.LFB183
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c29
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2d
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1062
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x57
	.quad	.LFB182
	.quad	.LFE182-.LFB182
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c9b
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1063
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x57
	.quad	.LFB181
	.quad	.LFE181-.LFB181
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d0d
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1064
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x57
	.quad	.LFB180
	.quad	.LFE180-.LFB180
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d7f
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1065
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x57
	.quad	.LFB179
	.quad	.LFE179-.LFB179
	.uleb128 0x1
	.byte	0x9c
	.long	0x4df1
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1066
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x57
	.quad	.LFB178
	.quad	.LFE178-.LFB178
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e31
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1067
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x57
	.quad	.LFB177
	.quad	.LFE177-.LFB177
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e71
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1068
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x57
	.quad	.LFB176
	.quad	.LFE176-.LFB176
	.uleb128 0x1
	.byte	0x9c
	.long	0x4eb1
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1069
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x57
	.quad	.LFB175
	.quad	.LFE175-.LFB175
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ef1
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2c
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1070
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x57
	.quad	.LFB174
	.quad	.LFE174-.LFB174
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f63
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1071
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x57
	.quad	.LFB173
	.quad	.LFE173-.LFB173
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fd5
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1072
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x57
	.quad	.LFB172
	.quad	.LFE172-.LFB172
	.uleb128 0x1
	.byte	0x9c
	.long	0x5047
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1073
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x57
	.quad	.LFB171
	.quad	.LFE171-.LFB171
	.uleb128 0x1
	.byte	0x9c
	.long	0x50b9
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1074
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x57
	.quad	.LFB170
	.quad	.LFE170-.LFB170
	.uleb128 0x1
	.byte	0x9c
	.long	0x50f9
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1075
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x57
	.quad	.LFB169
	.quad	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.long	0x5139
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1076
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x57
	.quad	.LFB168
	.quad	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.long	0x5179
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1077
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x57
	.quad	.LFB167
	.quad	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.long	0x51b9
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2b
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1078
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x57
	.quad	.LFB166
	.quad	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.long	0x522b
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1079
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x57
	.quad	.LFB165
	.quad	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.long	0x529d
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1080
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x57
	.quad	.LFB164
	.quad	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.long	0x530f
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1081
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x57
	.quad	.LFB163
	.quad	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.long	0x5381
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1082
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x57
	.quad	.LFB162
	.quad	.LFE162-.LFB162
	.uleb128 0x1
	.byte	0x9c
	.long	0x53c1
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1083
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x57
	.quad	.LFB161
	.quad	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.long	0x5401
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1084
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x57
	.quad	.LFB160
	.quad	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.long	0x5441
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1085
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x57
	.quad	.LFB159
	.quad	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.long	0x5481
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf2a
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1086
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x57
	.quad	.LFB158
	.quad	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.long	0x54f3
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1087
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x57
	.quad	.LFB157
	.quad	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.long	0x5565
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1088
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x57
	.quad	.LFB156
	.quad	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.long	0x55d7
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1089
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x57
	.quad	.LFB155
	.quad	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.long	0x5649
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1090
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x57
	.quad	.LFB154
	.quad	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.long	0x5689
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1091
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x57
	.quad	.LFB153
	.quad	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.long	0x56c9
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1092
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x57
	.quad	.LFB152
	.quad	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.long	0x5709
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1093
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x57
	.quad	.LFB151
	.quad	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.long	0x5749
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf29
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1094
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x57
	.quad	.LFB150
	.quad	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.long	0x57bb
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1095
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x57
	.quad	.LFB149
	.quad	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.long	0x582d
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1096
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x57
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.long	0x589f
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1097
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x57
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.long	0x5911
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.uleb128 0x2d
	.long	.LASF1040
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.long	.LASF1041
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1098
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x57
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.long	0x5951
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1099
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x57
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.long	0x5991
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1100
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x57
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x59d1
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1101
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x57
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a11
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf28
	.byte	0x1
	.long	0x2fba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1102
	.byte	0x4
	.value	0xf1f
	.byte	0x1
	.long	0x57
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a92
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf1f
	.byte	0x27
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf1f
	.byte	0x41
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3b
	.string	"cmp"
	.byte	0x4
	.value	0xf20
	.byte	0x16
	.long	0x5aa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF1103
	.byte	0x4
	.value	0xf22
	.byte	0xf
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF1104
	.byte	0x4
	.value	0xf23
	.byte	0xf
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1105
	.byte	0x4
	.value	0xf24
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x29
	.long	0x57
	.long	0x5aa6
	.uleb128 0x1a
	.long	0x4c9
	.uleb128 0x1a
	.long	0x4c9
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x5a92
	.uleb128 0x35
	.long	.LASF1106
	.byte	0x4
	.value	0xf15
	.byte	0x1
	.long	0x57
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0x5afc
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf15
	.byte	0x22
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf15
	.byte	0x3c
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.string	"cmp"
	.byte	0x4
	.value	0xf16
	.byte	0x11
	.long	0x5aa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x35
	.long	.LASF1107
	.byte	0x4
	.value	0xf0d
	.byte	0x1
	.long	0x57
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b5c
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf0d
	.byte	0x22
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf0d
	.byte	0x3c
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.string	"cmp"
	.byte	0x4
	.value	0xf0e
	.byte	0x11
	.long	0x5aa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1105
	.byte	0x4
	.value	0xf10
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.long	.LASF1108
	.byte	0x4
	.value	0xf04
	.byte	0x1
	.long	0x57
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bbf
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xf04
	.byte	0x23
	.long	0x3148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xf04
	.byte	0x3d
	.long	0x3148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3b
	.string	"cmp"
	.byte	0x4
	.value	0xf05
	.byte	0x12
	.long	0x5aa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF1105
	.byte	0x4
	.value	0xf07
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x35
	.long	.LASF1109
	.byte	0x4
	.value	0xefb
	.byte	0x1
	.long	0x57
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c22
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xefb
	.byte	0x23
	.long	0x3148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xefb
	.byte	0x3d
	.long	0x3148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3b
	.string	"cmp"
	.byte	0x4
	.value	0xefc
	.byte	0x12
	.long	0x5aa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF1105
	.byte	0x4
	.value	0xefe
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x35
	.long	.LASF1110
	.byte	0x4
	.value	0xef2
	.byte	0x1
	.long	0x57
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c85
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xef2
	.byte	0x23
	.long	0x3148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xef2
	.byte	0x3d
	.long	0x3148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3b
	.string	"cmp"
	.byte	0x4
	.value	0xef3
	.byte	0x12
	.long	0x5aa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF1105
	.byte	0x4
	.value	0xef5
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x35
	.long	.LASF1111
	.byte	0x4
	.value	0xee9
	.byte	0x1
	.long	0x57
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ce8
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xee9
	.byte	0x23
	.long	0x3148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xee9
	.byte	0x3d
	.long	0x3148
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3b
	.string	"cmp"
	.byte	0x4
	.value	0xeea
	.byte	0x12
	.long	0x5aa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF1105
	.byte	0x4
	.value	0xeec
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x35
	.long	.LASF1112
	.byte	0x4
	.value	0xea7
	.byte	0x1
	.long	0x57
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d3a
	.uleb128 0x3b
	.string	"a"
	.byte	0x4
	.value	0xea7
	.byte	0x17
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3b
	.string	"b"
	.byte	0x4
	.value	0xea7
	.byte	0x26
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF1105
	.byte	0x4
	.value	0xea9
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x38
	.long	.LASF1113
	.byte	0x4
	.value	0xe70
	.byte	0x1
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e0e
	.uleb128 0x34
	.long	.LASF960
	.byte	0x4
	.value	0xe70
	.byte	0x26
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.long	.LASF761
	.byte	0x4
	.value	0xe70
	.byte	0x34
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0xe72
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.string	"j"
	.byte	0x4
	.value	0xe73
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF1114
	.byte	0x4
	.value	0xe74
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x39
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.long	0x5ded
	.uleb128 0x37
	.string	"f"
	.byte	0x4
	.value	0xe82
	.byte	0x18
	.long	0x21e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.uleb128 0x2d
	.long	.LASF108
	.byte	0x4
	.value	0xe8c
	.byte	0x15
	.long	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.uleb128 0x37
	.string	"f"
	.byte	0x4
	.value	0xe9a
	.byte	0x18
	.long	0x21e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1115
	.byte	0x4
	.value	0xe61
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e52
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0xe61
	.byte	0x28
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1116
	.byte	0x4
	.value	0xe63
	.byte	0xf
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1117
	.byte	0x4
	.value	0xe43
	.byte	0x1
	.long	0x13d
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.long	0x5eb4
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0xe43
	.byte	0x1d
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF739
	.byte	0x4
	.value	0xe43
	.byte	0x2f
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF1118
	.byte	0x4
	.value	0xe4d
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0xe51
	.byte	0x9
	.long	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1119
	.byte	0x4
	.value	0xe35
	.byte	0x1
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f02
	.uleb128 0x34
	.long	.LASF1120
	.byte	0x4
	.value	0xe35
	.byte	0x1c
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"f"
	.byte	0x4
	.value	0xe35
	.byte	0x37
	.long	0x21e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.LASF761
	.byte	0x4
	.value	0xe35
	.byte	0x3f
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3d
	.long	.LASF1121
	.byte	0x4
	.value	0xe2a
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f34
	.uleb128 0x3b
	.string	"f"
	.byte	0x4
	.value	0xe2a
	.byte	0x2d
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1122
	.byte	0x4
	.value	0xe23
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f66
	.uleb128 0x3b
	.string	"f"
	.byte	0x4
	.value	0xe23
	.byte	0x26
	.long	0x3148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1123
	.byte	0x4
	.value	0xcdc
	.byte	0x1
	.long	0x1b43
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.long	0x62cf
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0xcdc
	.byte	0x1a
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -984
	.uleb128 0x34
	.long	.LASF976
	.byte	0x4
	.value	0xcdc
	.byte	0x2e
	.long	0x2035
	.uleb128 0x3
	.byte	0x91
	.sleb128 -988
	.uleb128 0x34
	.long	.LASF1124
	.byte	0x4
	.value	0xcdc
	.byte	0x3a
	.long	0x15b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1000
	.uleb128 0x34
	.long	.LASF761
	.byte	0x4
	.value	0xcdd
	.byte	0x13
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -992
	.uleb128 0x34
	.long	.LASF960
	.byte	0x4
	.value	0xcdd
	.byte	0x31
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1008
	.uleb128 0x2d
	.long	.LASF1014
	.byte	0x4
	.value	0xcdf
	.byte	0xd
	.long	0x1b43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -920
	.uleb128 0x37
	.string	"f"
	.byte	0x4
	.value	0xce0
	.byte	0x14
	.long	0x21e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -904
	.uleb128 0x3f
	.long	.LASF1037
	.long	0x62df
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9778
	.uleb128 0x39
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.long	0x629a
	.uleb128 0x2d
	.long	.LASF1125
	.byte	0x4
	.value	0xd22
	.byte	0xd
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -912
	.uleb128 0x2d
	.long	.LASF1126
	.byte	0x4
	.value	0xd23
	.byte	0xc
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -972
	.uleb128 0x37
	.string	"err"
	.byte	0x4
	.value	0xd24
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -968
	.uleb128 0x40
	.long	.Ldebug_ranges0+0x1e0
	.long	0x6074
	.uleb128 0x2d
	.long	.LASF1127
	.byte	0x4
	.value	0xd42
	.byte	0x14
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -969
	.byte	0
	.uleb128 0x39
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.long	0x60de
	.uleb128 0x2d
	.long	.LASF1128
	.byte	0x4
	.value	0xd78
	.byte	0x10
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -971
	.uleb128 0x2d
	.long	.LASF1129
	.byte	0x4
	.value	0xd79
	.byte	0x10
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -970
	.uleb128 0x2d
	.long	.LASF1130
	.byte	0x4
	.value	0xd7a
	.byte	0xf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -964
	.uleb128 0x36
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x37
	.string	"n"
	.byte	0x4
	.value	0xd92
	.byte	0x13
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -960
	.byte	0
	.byte	0
	.uleb128 0x39
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.long	0x6116
	.uleb128 0x2d
	.long	.LASF1131
	.byte	0x4
	.value	0xda5
	.byte	0x17
	.long	0x1784
	.uleb128 0x3
	.byte	0x91
	.sleb128 -880
	.uleb128 0x2d
	.long	.LASF739
	.byte	0x4
	.value	0xda8
	.byte	0x11
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -896
	.byte	0
	.uleb128 0x39
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.long	0x614e
	.uleb128 0x37
	.string	"buf"
	.byte	0x4
	.value	0xdca
	.byte	0x10
	.long	0x3581
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0xdcb
	.byte	0xf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -956
	.byte	0
	.uleb128 0x39
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.long	0x6175
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0xdd6
	.byte	0x13
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -952
	.byte	0
	.uleb128 0x39
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.long	0x619c
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0xddd
	.byte	0x13
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -948
	.byte	0
	.uleb128 0x39
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.long	0x61c3
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0xde4
	.byte	0x13
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -944
	.byte	0
	.uleb128 0x39
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.long	0x61ea
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0xdec
	.byte	0xf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -940
	.byte	0
	.uleb128 0x36
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x37
	.string	"b"
	.byte	0x4
	.value	0xdf3
	.byte	0x10
	.long	0x4051
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x2d
	.long	.LASF1132
	.byte	0x4
	.value	0xdf4
	.byte	0xf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -936
	.uleb128 0x39
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.long	0x6253
	.uleb128 0x37
	.string	"buf"
	.byte	0x4
	.value	0xdfa
	.byte	0x14
	.long	0x4051
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0xdfb
	.byte	0x13
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -928
	.byte	0
	.uleb128 0x36
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x37
	.string	"buf"
	.byte	0x4
	.value	0xe07
	.byte	0x14
	.long	0x3581
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x2d
	.long	.LASF1018
	.byte	0x4
	.value	0xe08
	.byte	0x19
	.long	0x1b43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -888
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0xe09
	.byte	0x13
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -932
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.uleb128 0x37
	.string	"buf"
	.byte	0x4
	.value	0xe15
	.byte	0xc
	.long	0x4051
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0xe16
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -924
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x14a
	.long	0x62df
	.uleb128 0xc
	.long	0x42
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.long	0x62cf
	.uleb128 0x35
	.long	.LASF1133
	.byte	0x4
	.value	0xcd0
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x6338
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0xcd0
	.byte	0x1c
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1134
	.byte	0x4
	.value	0xcd2
	.byte	0x8
	.long	0x233a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0xcd3
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x35
	.long	.LASF1135
	.byte	0x4
	.value	0xcbd
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.long	0x639f
	.uleb128 0x34
	.long	.LASF1136
	.byte	0x4
	.value	0xcbd
	.byte	0x23
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"f"
	.byte	0x4
	.value	0xcbd
	.byte	0x3a
	.long	0x21e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF1137
	.byte	0x4
	.value	0xcc1
	.byte	0x10
	.long	0x167
	.uleb128 0x9
	.byte	0x3
	.quad	unsupported_device.9762
	.uleb128 0x37
	.string	"b"
	.byte	0x4
	.value	0xcc9
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x35
	.long	.LASF1138
	.byte	0x4
	.value	0xca4
	.byte	0x1
	.long	0x57
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.long	0x6406
	.uleb128 0x34
	.long	.LASF1136
	.byte	0x4
	.value	0xca4
	.byte	0x21
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"f"
	.byte	0x4
	.value	0xca4
	.byte	0x38
	.long	0x21e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF1137
	.byte	0x4
	.value	0xca8
	.byte	0x10
	.long	0x167
	.uleb128 0x9
	.byte	0x3
	.quad	unsupported_device.9756
	.uleb128 0x37
	.string	"n"
	.byte	0x4
	.value	0xcb3
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.long	.LASF1139
	.byte	0x4
	.value	0xc86
	.byte	0x1
	.long	0x57
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.long	0x647d
	.uleb128 0x34
	.long	.LASF1136
	.byte	0x4
	.value	0xc86
	.byte	0x1f
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"f"
	.byte	0x4
	.value	0xc86
	.byte	0x36
	.long	0x21e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1140
	.byte	0x4
	.value	0xc86
	.byte	0x3e
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LASF1137
	.byte	0x4
	.value	0xc8a
	.byte	0x10
	.long	0x167
	.uleb128 0x9
	.byte	0x3
	.quad	unsupported_device.9750
	.uleb128 0x37
	.string	"r"
	.byte	0x4
	.value	0xc91
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.long	.LASF1141
	.byte	0x4
	.value	0xc7d
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.long	0x64b1
	.uleb128 0x3b
	.string	"err"
	.byte	0x4
	.value	0xc7d
	.byte	0x18
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.long	.LASF1142
	.byte	0x4
	.value	0xc63
	.byte	0x1
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.long	0x6511
	.uleb128 0x36
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0xc65
	.byte	0xf
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x37
	.string	"f"
	.byte	0x4
	.value	0xc67
	.byte	0x18
	.long	0x21e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1143
	.byte	0x4
	.value	0xc53
	.byte	0x1
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.long	0x653f
	.uleb128 0x3b
	.string	"f"
	.byte	0x4
	.value	0xc53
	.byte	0x1c
	.long	0x21e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF745
	.byte	0x4
	.value	0xc49
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.long	0x6573
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0xc49
	.byte	0x1d
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1144
	.byte	0x4
	.value	0xc2b
	.byte	0x1
	.long	0x1b43
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.long	0x65a7
	.uleb128 0x34
	.long	.LASF1018
	.byte	0x4
	.value	0xc2b
	.byte	0x1b
	.long	0x197
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1145
	.byte	0x4
	.value	0xc1c
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.long	0x65db
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0xc1c
	.byte	0x1b
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1146
	.byte	0x4
	.value	0xc10
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0x662d
	.uleb128 0x34
	.long	.LASF1147
	.byte	0x4
	.value	0xc10
	.byte	0x2e
	.long	0x662d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1136
	.byte	0x4
	.value	0xc10
	.byte	0x44
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0xc12
	.byte	0x20
	.long	0x662d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2a59
	.uleb128 0x38
	.long	.LASF1148
	.byte	0x4
	.value	0xc02
	.byte	0x1
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x6673
	.uleb128 0x34
	.long	.LASF877
	.byte	0x4
	.value	0xc02
	.byte	0x21
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1149
	.byte	0x4
	.value	0xc04
	.byte	0x1a
	.long	0x2a5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1150
	.byte	0x4
	.value	0xb55
	.byte	0x1
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x67c7
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0xb55
	.byte	0x18
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -904
	.uleb128 0x34
	.long	.LASF760
	.byte	0x4
	.value	0xb55
	.byte	0x2a
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -912
	.uleb128 0x34
	.long	.LASF761
	.byte	0x4
	.value	0xb55
	.byte	0x39
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -916
	.uleb128 0x2d
	.long	.LASF1151
	.byte	0x4
	.value	0xb57
	.byte	0x8
	.long	0x67c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -872
	.uleb128 0x2d
	.long	.LASF762
	.byte	0x4
	.value	0xb58
	.byte	0x12
	.long	0x67cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -864
	.uleb128 0x2d
	.long	.LASF1152
	.byte	0x4
	.value	0xb59
	.byte	0xd
	.long	0x1b43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -888
	.uleb128 0x2d
	.long	.LASF1153
	.byte	0x4
	.value	0xb5a
	.byte	0xf
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	first.9692
	.uleb128 0x39
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.long	0x6746
	.uleb128 0x2d
	.long	.LASF1154
	.byte	0x4
	.value	0xb66
	.byte	0x13
	.long	0x1784
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x37
	.string	"fd"
	.byte	0x4
	.value	0xb67
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -892
	.byte	0
	.uleb128 0x39
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.long	0x676d
	.uleb128 0x2d
	.long	.LASF740
	.byte	0x4
	.value	0xb8b
	.byte	0xd
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -880
	.byte	0
	.uleb128 0x39
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.long	0x6794
	.uleb128 0x2d
	.long	.LASF976
	.byte	0x4
	.value	0xba8
	.byte	0x1d
	.long	0x2035
	.uleb128 0x3
	.byte	0x91
	.sleb128 -896
	.byte	0
	.uleb128 0x36
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0xbed
	.byte	0x13
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x37
	.string	"buf"
	.byte	0x4
	.value	0xbee
	.byte	0xc
	.long	0x3581
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1b11
	.uleb128 0x8
	.byte	0x8
	.long	0x1a6c
	.uleb128 0x38
	.long	.LASF1155
	.byte	0x4
	.value	0xb45
	.byte	0x1
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x6833
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0xb45
	.byte	0x1e
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF760
	.byte	0x4
	.value	0xb45
	.byte	0x30
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF761
	.byte	0x4
	.value	0xb45
	.byte	0x3f
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x37
	.string	"new"
	.byte	0x4
	.value	0xb47
	.byte	0x13
	.long	0x22ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1156
	.byte	0x4
	.value	0xb34
	.byte	0x1
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x6883
	.uleb128 0x34
	.long	.LASF1157
	.byte	0x4
	.value	0xb34
	.byte	0x14
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.long	.LASF1158
	.byte	0x4
	.value	0xb34
	.byte	0x29
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.long	.LASF1136
	.byte	0x4
	.value	0xb34
	.byte	0x3e
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x3a
	.long	.LASF1159
	.byte	0x4
	.value	0xb27
	.byte	0x1
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0x68b3
	.uleb128 0x34
	.long	.LASF1157
	.byte	0x4
	.value	0xb27
	.byte	0x17
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.long	.LASF1160
	.byte	0x4
	.value	0xb14
	.byte	0x1
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x68f7
	.uleb128 0x2d
	.long	.LASF1161
	.byte	0x4
	.value	0xb16
	.byte	0xf
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x1b0
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0xb19
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1162
	.byte	0x4
	.value	0xa83
	.byte	0x1
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x69e1
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0xa85
	.byte	0xf
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x37
	.string	"buf"
	.byte	0x4
	.value	0xa86
	.byte	0x9
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF1163
	.byte	0x4
	.value	0xa87
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF1164
	.byte	0x4
	.value	0xa88
	.byte	0x8
	.long	0x69e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -43
	.uleb128 0x37
	.string	"ext"
	.byte	0x4
	.value	0xa89
	.byte	0x1a
	.long	0x2910
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF1165
	.byte	0x4
	.value	0xaa0
	.byte	0x14
	.long	0x2f6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x41
	.long	.LASF1271
	.byte	0x4
	.value	0xaf8
	.byte	0x2
	.quad	.L445
	.uleb128 0x39
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x69b0
	.uleb128 0x2d
	.long	.LASF1166
	.byte	0x4
	.value	0xa91
	.byte	0x13
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x36
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x37
	.string	"e"
	.byte	0x4
	.value	0xafc
	.byte	0x1e
	.long	0x2910
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x37
	.string	"e2"
	.byte	0x4
	.value	0xafd
	.byte	0x1e
	.long	0x2910
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x143
	.long	0x69f1
	.uleb128 0xc
	.long	0x42
	.byte	0x2
	.byte	0
	.uleb128 0x35
	.long	.LASF1167
	.byte	0x4
	.value	0xa6e
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a35
	.uleb128 0x2d
	.long	.LASF1168
	.byte	0x4
	.value	0xa70
	.byte	0xf
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1169
	.byte	0x4
	.value	0xa74
	.byte	0xf
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1170
	.byte	0x4
	.value	0x99e
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b21
	.uleb128 0x34
	.long	.LASF959
	.byte	0x4
	.value	0x99e
	.byte	0x1a
	.long	0x9d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3b
	.string	"src"
	.byte	0x4
	.value	0x99e
	.byte	0x2d
	.long	0x6b21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.long	.LASF1171
	.byte	0x4
	.value	0x99e
	.byte	0x37
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.long	.LASF1172
	.byte	0x4
	.value	0x99f
	.byte	0x1b
	.long	0x2e48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x37
	.string	"num"
	.byte	0x4
	.value	0x9a1
	.byte	0x8
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x2d
	.long	.LASF1173
	.byte	0x4
	.value	0x9a2
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x9a3
	.byte	0x8
	.long	0x6af4
	.uleb128 0x1f
	.long	.LASF1174
	.byte	0
	.uleb128 0x1f
	.long	.LASF1175
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF1176
	.byte	0x2
	.uleb128 0x1f
	.long	.LASF1177
	.byte	0x3
	.uleb128 0x1f
	.long	.LASF1178
	.byte	0x4
	.uleb128 0x1f
	.long	.LASF1179
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF1180
	.byte	0x6
	.byte	0
	.uleb128 0x2d
	.long	.LASF1165
	.byte	0x4
	.value	0x9a5
	.byte	0x5
	.long	0x6aba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0x9a6
	.byte	0xf
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.string	"q"
	.byte	0x4
	.value	0x9a7
	.byte	0x9
	.long	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x4c9
	.uleb128 0x35
	.long	.LASF1181
	.byte	0x4
	.value	0x743
	.byte	0x1
	.long	0x57
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e41
	.uleb128 0x34
	.long	.LASF1182
	.byte	0x4
	.value	0x743
	.byte	0x16
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x34
	.long	.LASF1183
	.byte	0x4
	.value	0x743
	.byte	0x23
	.long	0x9d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2d
	.long	.LASF1184
	.byte	0x4
	.value	0x745
	.byte	0x9
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF1185
	.byte	0x4
	.value	0x747
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -166
	.uleb128 0x2d
	.long	.LASF1186
	.byte	0x4
	.value	0x748
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -165
	.uleb128 0x37
	.string	"qs"
	.byte	0x4
	.value	0x90e
	.byte	0x16
	.long	0x1c21
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x39
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x6bd4
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0x783
	.byte	0x11
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x39
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x6bf9
	.uleb128 0x37
	.string	"ws"
	.byte	0x4
	.value	0x78c
	.byte	0x14
	.long	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x39
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x6c40
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0x795
	.byte	0x11
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x37
	.string	"tmp"
	.byte	0x4
	.value	0x799
	.byte	0x13
	.long	0x1b43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	.Ldebug_ranges0+0xf0
	.long	0x6d18
	.uleb128 0x37
	.string	"oi"
	.byte	0x4
	.value	0x7a7
	.byte	0xb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.string	"c"
	.byte	0x4
	.value	0x7a8
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x42
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x40
	.long	.Ldebug_ranges0+0x120
	.long	0x6c91
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0x831
	.byte	0x11
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x39
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0x6cb8
	.uleb128 0x2d
	.long	.LASF1187
	.byte	0x4
	.value	0x87f
	.byte	0x24
	.long	0x2a5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x40
	.long	.Ldebug_ranges0+0x150
	.long	0x6cd1
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0x89e
	.byte	0x11
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x39
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x6cf6
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0x8b6
	.byte	0x11
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.uleb128 0x36
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x37
	.string	"e"
	.byte	0x4
	.value	0x8db
	.byte	0x1f
	.long	0x1d54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	.Ldebug_ranges0+0x180
	.long	0x6d33
	.uleb128 0x2d
	.long	.LASF1188
	.byte	0x4
	.value	0x8f9
	.byte	0x13
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x39
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x6d58
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0x91a
	.byte	0x13
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x36
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x2d
	.long	.LASF1189
	.byte	0x4
	.value	0x939
	.byte	0xd
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF1190
	.byte	0x4
	.value	0x93a
	.byte	0x19
	.long	0x6e51
	.uleb128 0x9
	.byte	0x3
	.quad	posix_prefix.9513
	.uleb128 0x39
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x6dd7
	.uleb128 0x37
	.string	"p0"
	.byte	0x4
	.value	0x949
	.byte	0x11
	.long	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.string	"p1"
	.byte	0x4
	.value	0x94a
	.byte	0x11
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x42
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.byte	0
	.uleb128 0x36
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x37
	.string	"res"
	.byte	0x4
	.value	0x959
	.byte	0x15
	.long	0x53e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x39
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x6e1d
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0x969
	.byte	0x22
	.long	0x6e56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x36
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0x983
	.byte	0x1c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x14a
	.long	0x6e51
	.uleb128 0xc
	.long	0x42
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x6e41
	.uleb128 0x8
	.byte	0x8
	.long	0x4cf
	.uleb128 0x35
	.long	.LASF1191
	.byte	0x4
	.value	0x72a
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ea0
	.uleb128 0x34
	.long	.LASF1192
	.byte	0x4
	.value	0x72a
	.byte	0x1e
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.string	"val"
	.byte	0x4
	.value	0x72c
	.byte	0xd
	.long	0x1b43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x43
	.long	.LASF1194
	.byte	0x4
	.value	0x655
	.byte	0x1
	.long	0x57
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f7f
	.uleb128 0x34
	.long	.LASF1182
	.byte	0x4
	.value	0x655
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x34
	.long	.LASF1183
	.byte	0x4
	.value	0x655
	.byte	0x18
	.long	0x9d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0x657
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.long	.LASF1195
	.byte	0x4
	.value	0x658
	.byte	0x13
	.long	0x22ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF1196
	.byte	0x4
	.value	0x659
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3f
	.long	.LASF1037
	.long	0x6f8f
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9399
	.uleb128 0x39
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x6f5d
	.uleb128 0x37
	.string	"di"
	.byte	0x4
	.value	0x6e8
	.byte	0x1e
	.long	0x1cd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF1197
	.byte	0x4
	.value	0x6e9
	.byte	0x1f
	.long	0x6f94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x36
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x37
	.string	"j"
	.byte	0x4
	.value	0x6fb
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x14a
	.long	0x6f8f
	.uleb128 0xc
	.long	0x42
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x6f7f
	.uleb128 0x8
	.byte	0x8
	.long	0x1cd3
	.uleb128 0x3e
	.long	.LASF1199
	.byte	0x4
	.value	0x64f
	.byte	0x1
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.long	.LASF1200
	.byte	0x4
	.value	0x649
	.byte	0x1
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x38
	.long	.LASF1201
	.byte	0x4
	.value	0x5f6
	.byte	0x1
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x7060
	.uleb128 0x34
	.long	.LASF1202
	.byte	0x4
	.value	0x5f6
	.byte	0x14
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x37
	.string	"sig"
	.byte	0x4
	.value	0x5f9
	.byte	0x14
	.long	0x7070
	.uleb128 0x9
	.byte	0x3
	.quad	sig.9372
	.uleb128 0x25
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x4
	.value	0x610
	.byte	0x8
	.long	0x702d
	.uleb128 0x1f
	.long	.LASF1203
	.byte	0xc
	.byte	0
	.uleb128 0x37
	.string	"j"
	.byte	0x4
	.value	0x616
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x36
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x37
	.string	"act"
	.byte	0x4
	.value	0x61b
	.byte	0x18
	.long	0x959
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x63
	.long	0x7070
	.uleb128 0xc
	.long	0x42
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.long	0x7060
	.uleb128 0x38
	.long	.LASF1204
	.byte	0x4
	.value	0x5cb
	.byte	0x1
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x70da
	.uleb128 0x36
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x37
	.string	"sig"
	.byte	0x4
	.value	0x5cf
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.long	.LASF1205
	.byte	0x4
	.value	0x5d0
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2d
	.long	.LASF1206
	.byte	0x4
	.value	0x5d1
	.byte	0x10
	.long	0x1ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1207
	.byte	0x4
	.value	0x5bc
	.byte	0x1
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x710a
	.uleb128 0x3b
	.string	"sig"
	.byte	0x4
	.value	0x5bc
	.byte	0x12
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3a
	.long	.LASF1208
	.byte	0x4
	.value	0x5b1
	.byte	0x1
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x713a
	.uleb128 0x3b
	.string	"sig"
	.byte	0x4
	.value	0x5b1
	.byte	0x11
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3e
	.long	.LASF1209
	.byte	0x4
	.value	0x5a4
	.byte	0x1
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.long	.LASF1210
	.byte	0x4
	.value	0x59d
	.byte	0x1
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.long	.LASF1211
	.byte	0x4
	.value	0x593
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x71c2
	.uleb128 0x34
	.long	.LASF976
	.byte	0x4
	.value	0x593
	.byte	0x1f
	.long	0x2807
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.string	"len"
	.byte	0x4
	.value	0x595
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.string	"s"
	.byte	0x4
	.value	0x596
	.byte	0xf
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1212
	.byte	0x4
	.value	0x58b
	.byte	0x1
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x71f0
	.uleb128 0x3b
	.string	"p"
	.byte	0x4
	.value	0x58b
	.byte	0x23
	.long	0x22ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1213
	.byte	0x4
	.value	0x56c
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x7264
	.uleb128 0x3b
	.string	"dev"
	.byte	0x4
	.value	0x56c
	.byte	0x12
	.long	0x167
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3b
	.string	"ino"
	.byte	0x4
	.value	0x56c
	.byte	0x1d
	.long	0x15b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x37
	.string	"ent"
	.byte	0x4
	.value	0x56e
	.byte	0x13
	.long	0x6f94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF1214
	.byte	0x4
	.value	0x56f
	.byte	0x13
	.long	0x6f94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1215
	.byte	0x4
	.value	0x570
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x38
	.long	.LASF1216
	.byte	0x4
	.value	0x562
	.byte	0x1
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x7292
	.uleb128 0x3b
	.string	"x"
	.byte	0x4
	.value	0x562
	.byte	0x15
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.long	.LASF1217
	.byte	0x4
	.value	0x55a
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x72ee
	.uleb128 0x3b
	.string	"x"
	.byte	0x4
	.value	0x55a
	.byte	0x1e
	.long	0x1a4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.string	"y"
	.byte	0x4
	.value	0x55a
	.byte	0x2d
	.long	0x1a4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.string	"a"
	.byte	0x4
	.value	0x55c
	.byte	0x19
	.long	0x72ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.string	"b"
	.byte	0x4
	.value	0x55d
	.byte	0x19
	.long	0x72ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1cfb
	.uleb128 0x3d
	.long	.LASF1218
	.byte	0x4
	.value	0x553
	.byte	0x1
	.long	0x1af
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x7344
	.uleb128 0x3b
	.string	"x"
	.byte	0x4
	.value	0x553
	.byte	0x1b
	.long	0x1a4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF1219
	.byte	0x4
	.value	0x553
	.byte	0x25
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.string	"p"
	.byte	0x4
	.value	0x555
	.byte	0x19
	.long	0x72ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1220
	.byte	0x4
	.value	0x52b
	.byte	0x1
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x742e
	.uleb128 0x37
	.string	"pb"
	.byte	0x4
	.value	0x52d
	.byte	0xf
	.long	0x2b7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1584
	.uleb128 0x2d
	.long	.LASF1221
	.byte	0x4
	.value	0x533
	.byte	0x8
	.long	0x742e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1568
	.uleb128 0x39
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x73ab
	.uleb128 0x2d
	.long	.LASF1020
	.byte	0x4
	.value	0x52e
	.byte	0xc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1620
	.byte	0
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0
	.uleb128 0x2d
	.long	.LASF1020
	.byte	0x4
	.value	0x537
	.byte	0xc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1616
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x37
	.string	"fmt"
	.byte	0x4
	.value	0x539
	.byte	0x13
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1600
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0x53a
	.byte	0x10
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1612
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x2d
	.long	.LASF1033
	.byte	0x4
	.value	0x53c
	.byte	0x11
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1592
	.uleb128 0x2d
	.long	.LASF1222
	.byte	0x4
	.value	0x53d
	.byte	0xf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1608
	.uleb128 0x3c
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x2d
	.long	.LASF1118
	.byte	0x4
	.value	0x545
	.byte	0x13
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1604
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x143
	.long	0x7444
	.uleb128 0xc
	.long	0x42
	.byte	0xb
	.uleb128 0xc
	.long	0x42
	.byte	0x7f
	.byte	0
	.uleb128 0x35
	.long	.LASF1223
	.byte	0x4
	.value	0x508
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x750f
	.uleb128 0x34
	.long	.LASF1221
	.byte	0x4
	.value	0x508
	.byte	0x12
	.long	0x751f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF1224
	.byte	0x4
	.value	0x50d
	.byte	0xa
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF1225
	.byte	0x4
	.value	0x50e
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0x513
	.byte	0x10
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2d
	.long	.LASF984
	.byte	0x4
	.value	0x515
	.byte	0x12
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF1226
	.byte	0x4
	.value	0x516
	.byte	0x17
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1227
	.byte	0x4
	.value	0x519
	.byte	0x17
	.long	0x1fd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x37
	.string	"req"
	.byte	0x4
	.value	0x51b
	.byte	0x12
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x143
	.long	0x751f
	.uleb128 0xc
	.long	0x42
	.byte	0x7f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x750f
	.uleb128 0x38
	.long	.LASF1228
	.byte	0x4
	.value	0x4e8
	.byte	0x1
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x7565
	.uleb128 0x36
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0x4ea
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LASF1229
	.byte	0x4
	.value	0x4da
	.byte	0x1
	.long	0x4c9
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x7599
	.uleb128 0x3b
	.string	"fmt"
	.byte	0x4
	.value	0x4da
	.byte	0x1e
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1230
	.byte	0x4
	.value	0x4b1
	.byte	0x1
	.long	0x57
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x75db
	.uleb128 0x3b
	.string	"fd"
	.byte	0x4
	.value	0x4b1
	.byte	0x14
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3b
	.string	"st"
	.byte	0x4
	.value	0x4b1
	.byte	0x25
	.long	0x75db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1784
	.uleb128 0x35
	.long	.LASF1231
	.byte	0x4
	.value	0x4ab
	.byte	0x1
	.long	0x57
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x7624
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0x4ab
	.byte	0x1b
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"st"
	.byte	0x4
	.value	0x4ab
	.byte	0x2e
	.long	0x75db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1232
	.byte	0x4
	.value	0x4a4
	.byte	0x1
	.long	0x57
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x7667
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0x4a4
	.byte	0x1c
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"st"
	.byte	0x4
	.value	0x4a4
	.byte	0x2f
	.long	0x75db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1233
	.byte	0x4
	.value	0x49e
	.byte	0x1
	.long	0x57
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x76aa
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0x49e
	.byte	0x17
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"st"
	.byte	0x4
	.value	0x49e
	.byte	0x2a
	.long	0x75db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1234
	.byte	0x4
	.value	0x498
	.byte	0x1
	.long	0x57
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x76ed
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0x498
	.byte	0x16
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"st"
	.byte	0x4
	.value	0x498
	.byte	0x29
	.long	0x75db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1235
	.byte	0x4
	.value	0x480
	.byte	0x1
	.long	0x57
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x7797
	.uleb128 0x3b
	.string	"fd"
	.byte	0x4
	.value	0x480
	.byte	0xf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x34
	.long	.LASF108
	.byte	0x4
	.value	0x480
	.byte	0x1f
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x3b
	.string	"st"
	.byte	0x4
	.value	0x480
	.byte	0x32
	.long	0x75db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x34
	.long	.LASF1236
	.byte	0x4
	.value	0x480
	.byte	0x3a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x34
	.long	.LASF1237
	.byte	0x4
	.value	0x481
	.byte	0x18
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x37
	.string	"stx"
	.byte	0x4
	.value	0x483
	.byte	0x10
	.long	0x18db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2d
	.long	.LASF1238
	.byte	0x4
	.value	0x484
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -309
	.uleb128 0x37
	.string	"ret"
	.byte	0x4
	.value	0x485
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.byte	0
	.uleb128 0x35
	.long	.LASF1239
	.byte	0x4
	.value	0x459
	.byte	0x1
	.long	0x3b
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x77cb
	.uleb128 0x2d
	.long	.LASF1237
	.byte	0x4
	.value	0x45b
	.byte	0x10
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x44
	.long	.LASF1250
	.byte	0x4
	.value	0x446
	.byte	0x1
	.long	0x3b
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.long	.LASF1240
	.byte	0x4
	.value	0x437
	.byte	0x1
	.long	0x1fa
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x782d
	.uleb128 0x3b
	.string	"st"
	.byte	0x4
	.value	0x437
	.byte	0x24
	.long	0x782d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1241
	.byte	0x4
	.value	0x439
	.byte	0x13
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1855
	.uleb128 0x38
	.long	.LASF1242
	.byte	0x4
	.value	0x423
	.byte	0x1
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x7922
	.uleb128 0x34
	.long	.LASF1243
	.byte	0x4
	.value	0x423
	.byte	0x21
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3b
	.string	"os"
	.byte	0x4
	.value	0x423
	.byte	0x39
	.long	0x38d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF1244
	.byte	0x4
	.value	0x425
	.byte	0xa
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x78a9
	.uleb128 0x37
	.string	"__o"
	.byte	0x4
	.value	0x427
	.byte	0xb
	.long	0x3adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x36
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x37
	.string	"pos"
	.byte	0x4
	.value	0x42a
	.byte	0xf
	.long	0x2e48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x7900
	.uleb128 0x2d
	.long	.LASF996
	.byte	0x4
	.value	0x42a
	.byte	0x20
	.long	0x38d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF50
	.byte	0x4
	.value	0x42a
	.byte	0x20
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x37
	.string	"i"
	.byte	0x4
	.value	0x42c
	.byte	0x13
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1245
	.byte	0x4
	.value	0x406
	.byte	0x1
	.long	0x1cd3
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x79aa
	.uleb128 0x37
	.string	"vdi"
	.byte	0x4
	.value	0x408
	.byte	0x9
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.string	"di"
	.byte	0x4
	.value	0x409
	.byte	0x13
	.long	0x6f94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1246
	.byte	0x4
	.value	0x40a
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3f
	.long	.LASF1037
	.long	0x62df
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.9190
	.uleb128 0x36
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x37
	.string	"__o"
	.byte	0x4
	.value	0x40b
	.byte	0x3
	.long	0x3adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1247
	.byte	0x4
	.value	0x3f6
	.byte	0x1
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a6f
	.uleb128 0x3b
	.string	"dev"
	.byte	0x4
	.value	0x3f6
	.byte	0x15
	.long	0x167
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3b
	.string	"ino"
	.byte	0x4
	.value	0x3f6
	.byte	0x20
	.long	0x15b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x37
	.string	"vdi"
	.byte	0x4
	.value	0x3f8
	.byte	0x9
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.string	"di"
	.byte	0x4
	.value	0x3f9
	.byte	0x13
	.long	0x6f94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1246
	.byte	0x4
	.value	0x3fa
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x37
	.string	"__o"
	.byte	0x4
	.value	0x3fb
	.byte	0x3
	.long	0x38d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF995
	.byte	0x4
	.value	0x3fb
	.byte	0x3
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2d
	.long	.LASF996
	.byte	0x4
	.value	0x3fb
	.byte	0x3
	.long	0x3adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.long	.LASF1248
	.byte	0x3
	.byte	0x21
	.byte	0x1
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x7aac
	.uleb128 0x46
	.string	"stx"
	.byte	0x3
	.byte	0x21
	.byte	0x1e
	.long	0x7aac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x47
	.long	.LASF560
	.byte	0x3
	.byte	0x21
	.byte	0x30
	.long	0x75db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x18db
	.uleb128 0x48
	.long	.LASF1249
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.long	0x1fa
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x7af2
	.uleb128 0x46
	.string	"tsx"
	.byte	0x3
	.byte	0x17
	.byte	0x35
	.long	0x18a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x49
	.string	"ts"
	.byte	0x3
	.byte	0x19
	.byte	0x13
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x4a
	.long	.LASF1251
	.byte	0x2
	.byte	0x27
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.long	.LASF1252
	.byte	0x1
	.value	0x2f7
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b44
	.uleb128 0x3b
	.string	"err"
	.byte	0x1
	.value	0x2f7
	.byte	0x11
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3d
	.long	.LASF1253
	.byte	0x1
	.value	0x2ba
	.byte	0x1
	.long	0x13d
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b76
	.uleb128 0x3b
	.string	"s"
	.byte	0x1
	.value	0x2ba
	.byte	0x17
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1254
	.byte	0x1
	.value	0x2b2
	.byte	0x1
	.long	0x13d
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x7bb8
	.uleb128 0x3b
	.string	"t"
	.byte	0x1
	.value	0x2b2
	.byte	0x13
	.long	0x1a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"buf"
	.byte	0x1
	.value	0x2b2
	.byte	0x1c
	.long	0x13d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.long	.LASF1255
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c5d
	.uleb128 0x34
	.long	.LASF1256
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2e
	.long	.LASF1257
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x7c13
	.uleb128 0x2f
	.long	.LASF1256
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x4c9
	.byte	0
	.uleb128 0x2f
	.long	.LASF1258
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x4c9
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x7be8
	.uleb128 0x2d
	.long	.LASF1257
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x7c6d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.long	.LASF1258
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2d
	.long	.LASF1259
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x7c72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2d
	.long	.LASF1260
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x4c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xb
	.long	0x7c13
	.long	0x7c6d
	.uleb128 0xc
	.long	0x42
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x7c5d
	.uleb128 0x8
	.byte	0x8
	.long	0x7c13
	.uleb128 0x3e
	.long	.LASF1261
	.byte	0x1
	.value	0x254
	.byte	0x1
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.long	.LASF1262
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.long	.LASF1263
	.byte	0x1
	.value	0x109
	.byte	0x1
	.long	0x1d2b
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d04
	.uleb128 0x34
	.long	.LASF1264
	.byte	0x1
	.value	0x109
	.byte	0x1c
	.long	0x4c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x37
	.string	"sep"
	.byte	0x1
	.value	0x10d
	.byte	0xc
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x48
	.long	.LASF1265
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0x2d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d35
	.uleb128 0x46
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4b
	.long	.LASF1272
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x47
	.long	.LASF947
	.byte	0x1
	.byte	0x63
	.byte	0x1e
	.long	0x57
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
	.uleb128 0x4
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x4b
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
	.quad	.LBB23-.Ltext0
	.quad	.LBE23-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	.LBB21-.Ltext0
	.quad	.LBE21-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB20-.Ltext0
	.quad	.LBE20-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB18-.Ltext0
	.quad	.LBE18-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	.LBB42-.Ltext0
	.quad	.LBE42-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	.LBB39-.Ltext0
	.quad	.LBE39-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	.LBB40-.Ltext0
	.quad	.LBE40-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB41-.Ltext0
	.quad	.LBE41-.Ltext0
	.quad	.LBB43-.Ltext0
	.quad	.LBE43-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	.LBB54-.Ltext0
	.quad	.LBE54-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB62-.Ltext0
	.quad	.LBE62-.Ltext0
	.quad	.LBB63-.Ltext0
	.quad	.LBE63-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB135-.Ltext0
	.quad	.LBE135-.Ltext0
	.quad	.LBB136-.Ltext0
	.quad	.LBE136-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF399:
	.string	"_NL_CTYPE_OUTDIGIT9_WC"
.LASF1070:
	.string	"rev_strcmp_df_btime"
.LASF204:
	.string	"ERA_D_FMT"
.LASF93:
	.string	"_sys_errlist"
.LASF128:
	.string	"si_addr_lsb"
.LASF81:
	.string	"_unused2"
.LASF264:
	.string	"_NL_TIME_CAL_DIRECTION"
.LASF780:
	.string	"one_per_line"
.LASF67:
	.string	"_fileno"
.LASF293:
	.string	"_NL_ABALTMON_1"
.LASF294:
	.string	"_NL_ABALTMON_2"
.LASF295:
	.string	"_NL_ABALTMON_3"
.LASF296:
	.string	"_NL_ABALTMON_4"
.LASF297:
	.string	"_NL_ABALTMON_5"
.LASF298:
	.string	"_NL_ABALTMON_6"
.LASF299:
	.string	"_NL_ABALTMON_7"
.LASF300:
	.string	"_NL_ABALTMON_8"
.LASF301:
	.string	"_NL_ABALTMON_9"
.LASF1196:
	.string	"n_files"
.LASF207:
	.string	"ERA_T_FMT"
.LASF712:
	.string	"MBS_ALIGN_LEFT"
.LASF224:
	.string	"_NL_WABMON_1"
.LASF225:
	.string	"_NL_WABMON_2"
.LASF226:
	.string	"_NL_WABMON_3"
.LASF227:
	.string	"_NL_WABMON_4"
.LASF228:
	.string	"_NL_WABMON_5"
.LASF229:
	.string	"_NL_WABMON_6"
.LASF230:
	.string	"_NL_WABMON_7"
.LASF231:
	.string	"_NL_WABMON_8"
.LASF232:
	.string	"_NL_WABMON_9"
.LASF564:
	.string	"st_mode"
.LASF245:
	.string	"_NL_WMON_10"
.LASF101:
	.string	"__saved_mask"
.LASF28:
	.string	"gid_t"
.LASF1260:
	.string	"lc_messages"
.LASF233:
	.string	"_NL_WABMON_10"
.LASF234:
	.string	"_NL_WABMON_11"
.LASF235:
	.string	"_NL_WABMON_12"
.LASF1249:
	.string	"statx_timestamp_to_timespec"
.LASF944:
	.string	"failed_strcoll"
.LASF1045:
	.string	"cmp_version"
.LASF527:
	.string	"_NL_IDENTIFICATION_EMAIL"
.LASF602:
	.string	"stx_dev_minor"
.LASF1046:
	.string	"rev_strcmp_df_extension"
.LASF360:
	.string	"_NL_CTYPE_INDIGITS1_MB"
.LASF669:
	.string	"_Bool"
.LASF200:
	.string	"D_FMT"
.LASF658:
	.string	"quoting_style_args"
.LASF1220:
	.string	"abformat_init"
.LASF260:
	.string	"_NL_TIME_WEEK_1STDAY"
.LASF870:
	.string	"immediate_dirs"
.LASF682:
	.string	"human_group_digits"
.LASF768:
	.string	"inode_number_width"
.LASF722:
	.string	"unknown"
.LASF900:
	.string	"DEREFERENCE_COMMAND_LINE_SYMLINK_TO_DIR_OPTION"
.LASF116:
	.string	"si_uid"
.LASF618:
	.string	"DT_CHR"
.LASF1124:
	.string	"inode"
.LASF1159:
	.string	"set_exit_status"
.LASF883:
	.string	"tabsize"
.LASF61:
	.string	"_IO_buf_end"
.LASF201:
	.string	"T_FMT"
.LASF72:
	.string	"_shortbuf"
.LASF1213:
	.string	"visit_dir"
.LASF484:
	.string	"__YESSTR"
.LASF266:
	.string	"_DATE_FMT"
.LASF1074:
	.string	"rev_strcmp_btime"
.LASF904:
	.string	"GROUP_DIRECTORIES_FIRST_OPTION"
.LASF730:
	.string	"whiteout"
.LASF641:
	.string	"_ISpunct"
.LASF1271:
	.string	"done"
.LASF1014:
	.string	"blocks"
.LASF872:
	.string	"IGNORE_DEFAULT"
.LASF1091:
	.string	"rev_xstrcoll_mtime"
.LASF379:
	.string	"_NL_CTYPE_INDIGITS9_WC"
.LASF397:
	.string	"_NL_CTYPE_OUTDIGIT7_WC"
.LASF336:
	.string	"_NL_COLLATE_CODESET"
.LASF604:
	.string	"__environ"
.LASF140:
	.string	"_sigpoll"
.LASF560:
	.string	"stat"
.LASF1052:
	.string	"strcmp_extension"
.LASF1264:
	.string	"file_name"
.LASF1122:
	.string	"is_directory"
.LASF32:
	.string	"time_t"
.LASF53:
	.string	"_flags"
.LASF821:
	.string	"indicator_style_args"
.LASF762:
	.string	"next"
.LASF476:
	.string	"THOUSEP"
.LASF915:
	.string	"format_args"
.LASF395:
	.string	"_NL_CTYPE_OUTDIGIT5_WC"
.LASF134:
	.string	"_arch"
.LASF521:
	.string	"_NL_MEASUREMENT_CODESET"
.LASF16:
	.string	"__off_t"
.LASF514:
	.string	"_NL_TELEPHONE_TEL_INT_FMT"
.LASF1101:
	.string	"xstrcoll_ctime"
.LASF125:
	.string	"_addr_bnd"
.LASF600:
	.string	"stx_rdev_minor"
.LASF1054:
	.string	"rev_strcmp_df_name"
.LASF661:
	.string	"quote_quoting_options"
.LASF568:
	.string	"st_size"
.LASF1131:
	.string	"linkstats"
.LASF983:
	.string	"start_col"
.LASF477:
	.string	"__GROUPING"
.LASF1170:
	.string	"get_funky_string"
.LASF924:
	.string	"valid_len"
.LASF377:
	.string	"_NL_CTYPE_INDIGITS7_WC"
.LASF1053:
	.string	"xstrcoll_extension"
.LASF1204:
	.string	"process_signals"
.LASF979:
	.string	"print_color_indicator"
.LASF73:
	.string	"_lock"
.LASF791:
	.string	"time_type"
.LASF996:
	.string	"__o1"
.LASF498:
	.string	"_NL_NAME_CODESET"
.LASF328:
	.string	"_NL_COLLATE_WEIGHTWC"
.LASF811:
	.string	"human_output_opts"
.LASF803:
	.string	"sort_time"
.LASF162:
	.string	"ABDAY_4"
.LASF851:
	.string	"C_EXEC"
.LASF802:
	.string	"sort_version"
.LASF438:
	.string	"__N_SEP_BY_SPACE"
.LASF511:
	.string	"_NL_ADDRESS_LANG_LIB"
.LASF109:
	.string	"has_arg"
.LASF981:
	.string	"get_type_indicator"
.LASF681:
	.string	"human_floor"
.LASF1080:
	.string	"strcmp_df_atime"
.LASF478:
	.string	"_NL_NUMERIC_DECIMAL_POINT_WC"
.LASF919:
	.string	"time_args"
.LASF931:
	.string	"dev_ino_obstack"
.LASF736:
	.string	"ACL_T_LSM_CONTEXT_ONLY"
.LASF393:
	.string	"_NL_CTYPE_OUTDIGIT3_WC"
.LASF1114:
	.string	"ignore_dot_and_dot_dot"
.LASF457:
	.string	"_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE"
.LASF1217:
	.string	"dev_ino_compare"
.LASF569:
	.string	"st_blksize"
.LASF629:
	.string	"TIMESPEC_HZ"
.LASF138:
	.string	"_sigchld"
.LASF86:
	.string	"_gl_cxxalias_dummy"
.LASF124:
	.string	"_upper"
.LASF99:
	.string	"__jmpbuf"
.LASF327:
	.string	"_NL_COLLATE_TABLEWC"
.LASF1237:
	.string	"mask"
.LASF1036:
	.string	"use_strcmp"
.LASF1184:
	.string	"time_style_option"
.LASF151:
	.string	"sigaction"
.LASF375:
	.string	"_NL_CTYPE_INDIGITS5_WC"
.LASF26:
	.string	"ino_t"
.LASF840:
	.string	"C_RESET"
.LASF443:
	.string	"__INT_P_SEP_BY_SPACE"
.LASF628:
	.string	"uintmax_t"
.LASF525:
	.string	"_NL_IDENTIFICATION_ADDRESS"
.LASF867:
	.string	"print_inode"
.LASF566:
	.string	"st_gid"
.LASF1263:
	.string	"dot_or_dotdot"
.LASF1103:
	.string	"base1"
.LASF1104:
	.string	"base2"
.LASF1241:
	.string	"btimespec"
.LASF428:
	.string	"__MON_DECIMAL_POINT"
.LASF624:
	.string	"DT_WHT"
.LASF137:
	.string	"_timer"
.LASF501:
	.string	"_NL_ADDRESS_COUNTRY_NAME"
.LASF202:
	.string	"T_FMT_AMPM"
.LASF1231:
	.string	"stat_for_ino"
.LASF1199:
	.string	"signal_restore"
.LASF23:
	.string	"__syscall_slong_t"
.LASF495:
	.string	"_NL_NAME_NAME_MRS"
.LASF920:
	.string	"time_types"
.LASF155:
	.string	"sa_restorer"
.LASF59:
	.string	"_IO_write_end"
.LASF513:
	.string	"_NL_NUM_LC_ADDRESS"
.LASF391:
	.string	"_NL_CTYPE_OUTDIGIT1_WC"
.LASF677:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF563:
	.string	"st_nlink"
.LASF825:
	.string	"used_color"
.LASF645:
	.string	"version_etc_copyright"
.LASF323:
	.string	"_NL_COLLATE_INDIRECTMB"
.LASF1243:
	.string	"prefix"
.LASF1203:
	.string	"nsigs"
.LASF845:
	.string	"C_FIFO"
.LASF100:
	.string	"__mask_was_saved"
.LASF412:
	.string	"_NL_CTYPE_EXTRA_MAP_2"
.LASF133:
	.string	"_syscall"
.LASF1226:
	.string	"abbr"
.LASF990:
	.string	"options"
.LASF533:
	.string	"_NL_IDENTIFICATION_APPLICATION"
.LASF441:
	.string	"_NL_MONETARY_CRNCYSTR"
.LASF573:
	.string	"st_ctim"
.LASF918:
	.string	"sort_types"
.LASF995:
	.string	"__len"
.LASF592:
	.string	"stx_size"
.LASF34:
	.string	"__sigset_t"
.LASF1256:
	.string	"program"
.LASF331:
	.string	"_NL_COLLATE_SYMB_HASH_SIZEMB"
.LASF373:
	.string	"_NL_CTYPE_INDIGITS3_WC"
.LASF251:
	.string	"_NL_WD_FMT"
.LASF694:
	.string	"plain"
.LASF876:
	.string	"ignore_pattern"
.LASF1134:
	.string	"test"
.LASF552:
	.string	"__tzname"
.LASF873:
	.string	"IGNORE_DOT_AND_DOTDOT"
.LASF620:
	.string	"DT_BLK"
.LASF622:
	.string	"DT_LNK"
.LASF252:
	.string	"_NL_WT_FMT"
.LASF1135:
	.string	"has_capability_cache"
.LASF439:
	.string	"__P_SIGN_POSN"
.LASF928:
	.string	"dired_pos"
.LASF814:
	.string	"file_output_block_size"
.LASF1067:
	.string	"rev_xstrcoll_size"
.LASF911:
	.string	"SORT_OPTION"
.LASF698:
	.string	"chunk"
.LASF136:
	.string	"_kill"
.LASF1262:
	.string	"emit_mandatory_arg_note"
.LASF759:
	.string	"pending"
.LASF777:
	.string	"file_size_width"
.LASF1157:
	.string	"serious"
.LASF1055:
	.string	"rev_xstrcoll_df_name"
.LASF964:
	.string	"print_with_separator"
.LASF717:
	.string	"CAN_EXISTING"
.LASF1158:
	.string	"message"
.LASF1254:
	.string	"timetostr"
.LASF584:
	.string	"stx_blksize"
.LASF9:
	.string	"__uintmax_t"
.LASF916:
	.string	"format_types"
.LASF571:
	.string	"st_atim"
.LASF465:
	.string	"_NL_MONETARY_UNO_VALID_TO"
.LASF103:
	.string	"optarg"
.LASF874:
	.string	"IGNORE_MINIMAL"
.LASF185:
	.string	"MON_1"
.LASF186:
	.string	"MON_2"
.LASF187:
	.string	"MON_3"
.LASF188:
	.string	"MON_4"
.LASF189:
	.string	"MON_5"
.LASF190:
	.string	"MON_6"
.LASF191:
	.string	"MON_7"
.LASF192:
	.string	"MON_8"
.LASF193:
	.string	"MON_9"
.LASF1207:
	.string	"stophandler"
.LASF19:
	.string	"__clock_t"
.LASF831:
	.string	"DEREF_UNDEFINED"
.LASF351:
	.string	"_NL_CTYPE_MB_CUR_MAX"
.LASF1121:
	.string	"is_linked_directory"
.LASF776:
	.string	"minor_device_number_width"
.LASF976:
	.string	"type"
.LASF512:
	.string	"_NL_ADDRESS_CODESET"
.LASF616:
	.string	"DT_UNKNOWN"
.LASF410:
	.string	"_NL_CTYPE_NONASCII_CASE"
.LASF91:
	.string	"sys_errlist"
.LASF113:
	.string	"sival_ptr"
.LASF901:
	.string	"FILE_TYPE_INDICATOR_OPTION"
.LASF470:
	.string	"_NL_MONETARY_THOUSANDS_SEP_WC"
.LASF684:
	.string	"human_autoscale"
.LASF933:
	.string	"MAX_MON_WIDTH"
.LASF1008:
	.string	"print_long_format"
.LASF348:
	.string	"_NL_CTYPE_CLASS_NAMES"
.LASF11:
	.string	"__uid_t"
.LASF556:
	.string	"daylight"
.LASF122:
	.string	"si_stime"
.LASF106:
	.string	"optopt"
.LASF371:
	.string	"_NL_CTYPE_INDIGITS1_WC"
.LASF1261:
	.string	"emit_size_note"
.LASF535:
	.string	"_NL_IDENTIFICATION_REVISION"
.LASF1110:
	.string	"cmp_mtime"
.LASF980:
	.string	"print_type_indicator"
.LASF832:
	.string	"DEREF_NEVER"
.LASF461:
	.string	"_NL_MONETARY_DUO_N_SIGN_POSN"
.LASF173:
	.string	"ABMON_1"
.LASF174:
	.string	"ABMON_2"
.LASF175:
	.string	"ABMON_3"
.LASF176:
	.string	"ABMON_4"
.LASF177:
	.string	"ABMON_5"
.LASF178:
	.string	"ABMON_6"
.LASF179:
	.string	"ABMON_7"
.LASF180:
	.string	"ABMON_8"
.LASF181:
	.string	"ABMON_9"
.LASF787:
	.string	"iso_time_style"
.LASF1065:
	.string	"xstrcoll_df_size"
.LASF1123:
	.string	"gobble_file"
.LASF199:
	.string	"D_T_FMT"
.LASF734:
	.string	"acl_type"
.LASF339:
	.string	"_NL_CTYPE_TOUPPER"
.LASF702:
	.string	"temp"
.LASF1200:
	.string	"signal_init"
.LASF683:
	.string	"human_suppress_point_zero"
.LASF1001:
	.string	"inbuf"
.LASF355:
	.string	"_NL_CTYPE_TOLOWER32"
.LASF977:
	.string	"mode"
.LASF690:
	.string	"_obstack_chunk"
.LASF319:
	.string	"_NL_COLLATE_RULESETS"
.LASF794:
	.string	"time_atime"
.LASF835:
	.string	"DEREF_ALWAYS"
.LASF1137:
	.string	"unsupported_device"
.LASF435:
	.string	"__P_CS_PRECEDES"
.LASF858:
	.string	"C_CAP"
.LASF588:
	.string	"stx_gid"
.LASF1176:
	.string	"ST_OCTAL"
.LASF595:
	.string	"stx_atime"
.LASF1058:
	.string	"rev_strcmp_name"
.LASF66:
	.string	"_chain"
.LASF132:
	.string	"_call_addr"
.LASF1187:
	.string	"hide"
.LASF779:
	.string	"long_format"
.LASF1107:
	.string	"cmp_size"
.LASF728:
	.string	"symbolic_link"
.LASF98:
	.string	"__jmp_buf_tag"
.LASF278:
	.string	"__ALTMON_10"
.LASF279:
	.string	"__ALTMON_11"
.LASF280:
	.string	"__ALTMON_12"
.LASF605:
	.string	"environ"
.LASF1247:
	.string	"dev_ino_push"
.LASF580:
	.string	"statx_timestamp"
.LASF426:
	.string	"__INT_CURR_SYMBOL"
.LASF639:
	.string	"_ISblank"
.LASF0:
	.string	"unsigned char"
.LASF627:
	.string	"intmax_t"
.LASF842:
	.string	"C_FILE"
.LASF862:
	.string	"color_ext_type"
.LASF1038:
	.string	"initialize_ordering_vector"
.LASF649:
	.string	"shell_always_quoting_style"
.LASF1175:
	.string	"ST_BACKSLASH"
.LASF534:
	.string	"_NL_IDENTIFICATION_ABBREVIATION"
.LASF22:
	.string	"__blkcnt_t"
.LASF963:
	.string	"from"
.LASF1269:
	.string	"_IO_lock_t"
.LASF865:
	.string	"color_buf"
.LASF774:
	.string	"author_width"
.LASF668:
	.string	"float"
.LASF700:
	.string	"next_free"
.LASF697:
	.string	"chunk_size"
.LASF771:
	.string	"scontext_width"
.LASF810:
	.string	"print_block_size"
.LASF678:
	.string	"LONGINT_INVALID"
.LASF1076:
	.string	"strcmp_btime"
.LASF1077:
	.string	"xstrcoll_btime"
.LASF1211:
	.string	"is_colored"
.LASF1112:
	.string	"xstrcoll"
.LASF856:
	.string	"C_OTHER_WRITABLE"
.LASF756:
	.string	"sorted_file_alloc"
.LASF1020:
	.string	"recent"
.LASF1160:
	.string	"getenv_quoting_style"
.LASF1212:
	.string	"free_pending_ent"
.LASF154:
	.string	"sa_flags"
.LASF608:
	.string	"Version"
.LASF806:
	.string	"print_owner"
.LASF955:
	.string	"new_column_info_alloc"
.LASF31:
	.string	"off_t"
.LASF699:
	.string	"object_base"
.LASF675:
	.string	"LONGINT_OVERFLOW"
.LASF667:
	.string	"error_one_per_line"
.LASF1093:
	.string	"xstrcoll_mtime"
.LASF1225:
	.string	"curr_max_width"
.LASF590:
	.string	"__spare0"
.LASF603:
	.string	"__spare2"
.LASF934:
	.string	"ABFORMAT_SIZE"
.LASF515:
	.string	"_NL_TELEPHONE_TEL_DOM_FMT"
.LASF1044:
	.string	"xstrcoll_version"
.LASF956:
	.string	"column_info_growth"
.LASF633:
	.string	"_ISalpha"
.LASF468:
	.string	"_NL_MONETARY_CONVERSION_RATE"
.LASF551:
	.string	"tm_zone"
.LASF737:
	.string	"ACL_T_YES"
.LASF508:
	.string	"_NL_ADDRESS_LANG_NAME"
.LASF338:
	.string	"_NL_CTYPE_CLASS"
.LASF14:
	.string	"__mode_t"
.LASF927:
	.string	"max_idx"
.LASF913:
	.string	"TIME_STYLE_OPTION"
.LASF1267:
	.string	"src/ls.c"
.LASF1202:
	.string	"init"
.LASF738:
	.string	"fileinfo"
.LASF507:
	.string	"_NL_ADDRESS_COUNTRY_ISBN"
.LASF1119:
	.string	"get_link_name"
.LASF969:
	.string	"print_many_per_line"
.LASF1147:
	.string	"patterns"
.LASF1019:
	.string	"six_months_ago"
.LASF992:
	.string	"allow_pad"
.LASF1083:
	.string	"rev_xstrcoll_atime"
.LASF807:
	.string	"print_author"
.LASF986:
	.string	"stack"
.LASF637:
	.string	"_ISprint"
.LASF879:
	.string	"hide_patterns"
.LASF1022:
	.string	"buflen"
.LASF615:
	.string	"d_name"
.LASF642:
	.string	"_ISalnum"
.LASF1168:
	.string	"term"
.LASF593:
	.string	"stx_blocks"
.LASF1079:
	.string	"rev_xstrcoll_df_atime"
.LASF1056:
	.string	"strcmp_df_name"
.LASF723:
	.string	"fifo"
.LASF1139:
	.string	"getfilecon_cache"
.LASF462:
	.string	"_NL_MONETARY_DUO_INT_P_SIGN_POSN"
.LASF1258:
	.string	"node"
.LASF58:
	.string	"_IO_write_ptr"
.LASF102:
	.string	"jmp_buf"
.LASF505:
	.string	"_NL_ADDRESS_COUNTRY_CAR"
.LASF693:
	.string	"contents"
.LASF330:
	.string	"_NL_COLLATE_INDIRECTWC"
.LASF847:
	.string	"C_BLK"
.LASF619:
	.string	"DT_DIR"
.LASF636:
	.string	"_ISspace"
.LASF1188:
	.string	"ls_block_size"
.LASF908:
	.string	"QUOTING_STYLE_OPTION"
.LASF1115:
	.string	"basename_is_dot_or_dotdot"
.LASF1094:
	.string	"rev_strcmp_df_ctime"
.LASF878:
	.string	"ignore_patterns"
.LASF716:
	.string	"canonicalize_mode_t"
.LASF1021:
	.string	"format_inode"
.LASF713:
	.string	"MBS_ALIGN_RIGHT"
.LASF1240:
	.string	"get_stat_btime"
.LASF753:
	.string	"cwd_some_quoted"
.LASF236:
	.string	"_NL_WMON_1"
.LASF237:
	.string	"_NL_WMON_2"
.LASF238:
	.string	"_NL_WMON_3"
.LASF239:
	.string	"_NL_WMON_4"
.LASF240:
	.string	"_NL_WMON_5"
.LASF241:
	.string	"_NL_WMON_6"
.LASF242:
	.string	"_NL_WMON_7"
.LASF243:
	.string	"_NL_WMON_8"
.LASF244:
	.string	"_NL_WMON_9"
.LASF1071:
	.string	"rev_xstrcoll_df_btime"
.LASF1047:
	.string	"rev_xstrcoll_df_extension"
.LASF1272:
	.string	"initialize_exit_failure"
.LASF1169:
	.string	"line"
.LASF198:
	.string	"PM_STR"
.LASF261:
	.string	"_NL_TIME_WEEK_1STWEEK"
.LASF281:
	.string	"_NL_WALTMON_1"
.LASF282:
	.string	"_NL_WALTMON_2"
.LASF283:
	.string	"_NL_WALTMON_3"
.LASF284:
	.string	"_NL_WALTMON_4"
.LASF285:
	.string	"_NL_WALTMON_5"
.LASF286:
	.string	"_NL_WALTMON_6"
.LASF287:
	.string	"_NL_WALTMON_7"
.LASF288:
	.string	"_NL_WALTMON_8"
.LASF289:
	.string	"_NL_WALTMON_9"
.LASF349:
	.string	"_NL_CTYPE_MAP_NAMES"
.LASF745:
	.string	"has_capability"
.LASF789:
	.string	"time_style_args"
.LASF1018:
	.string	"size"
.LASF594:
	.string	"stx_attributes_mask"
.LASF1105:
	.string	"diff"
.LASF670:
	.string	"Hash_table"
.LASF1013:
	.string	"hbuf"
.LASF82:
	.string	"FILE"
.LASF884:
	.string	"print_dir_name"
.LASF1173:
	.string	"count"
.LASF938:
	.string	"PS_START"
.LASF496:
	.string	"_NL_NAME_NAME_MISS"
.LASF898:
	.string	"BLOCK_SIZE_OPTION"
.LASF818:
	.string	"slash"
.LASF493:
	.string	"_NL_NAME_NAME_GEN"
.LASF848:
	.string	"C_CHR"
.LASF943:
	.string	"PS_FAIL"
.LASF967:
	.string	"line_fmt"
.LASF932:
	.string	"RFC3986"
.LASF635:
	.string	"_ISxdigit"
.LASF212:
	.string	"_NL_WABDAY_3"
.LASF33:
	.string	"size_t"
.LASF540:
	.string	"_NL_NUM"
.LASF896:
	.string	"LS_FAILURE"
.LASF558:
	.string	"getdate_err"
.LASF49:
	.string	"__count"
.LASF1150:
	.string	"print_dir"
.LASF657:
	.string	"custom_quoting_style"
.LASF388:
	.string	"_NL_CTYPE_OUTDIGIT8_MB"
.LASF613:
	.string	"d_reclen"
.LASF197:
	.string	"AM_STR"
.LASF1098:
	.string	"rev_strcmp_ctime"
.LASF43:
	.string	"ws_row"
.LASF824:
	.string	"print_hyperlink"
.LASF892:
	.string	"interrupt_signal"
.LASF953:
	.string	"real_length"
.LASF333:
	.string	"_NL_COLLATE_SYMB_EXTRAMB"
.LASF203:
	.string	"__ERA_YEAR"
.LASF850:
	.string	"C_ORPHAN"
.LASF952:
	.string	"name_length"
.LASF354:
	.string	"_NL_CTYPE_TOUPPER32"
.LASF1069:
	.string	"xstrcoll_size"
.LASF583:
	.string	"stx_mask"
.LASF491:
	.string	"_NL_NUM_LC_PAPER"
.LASF62:
	.string	"_IO_save_base"
.LASF646:
	.string	"program_name"
.LASF972:
	.string	"length_of_file_name_and_frills"
.LASF937:
	.string	"parse_state"
.LASF673:
	.string	"strtol_error"
.LASF1209:
	.string	"set_normal_color"
.LASF783:
	.string	"with_commas"
.LASF746:
	.string	"quoted"
.LASF492:
	.string	"_NL_NAME_NAME_FMT"
.LASF982:
	.string	"print_file_name_and_frills"
.LASF352:
	.string	"_NL_CTYPE_CODESET_NAME"
.LASF752:
	.string	"cwd_n_used"
.LASF48:
	.string	"__wchb"
.LASF153:
	.string	"sa_mask"
.LASF503:
	.string	"_NL_ADDRESS_COUNTRY_AB2"
.LASF504:
	.string	"_NL_ADDRESS_COUNTRY_AB3"
.LASF1153:
	.string	"first"
.LASF386:
	.string	"_NL_CTYPE_OUTDIGIT6_MB"
.LASF517:
	.string	"_NL_TELEPHONE_INT_PREFIX"
.LASF991:
	.string	"needs_general_quoting"
.LASF114:
	.string	"__sigval_t"
.LASF926:
	.string	"col_arr"
.LASF1141:
	.string	"errno_unsupported"
.LASF1097:
	.string	"xstrcoll_df_ctime"
.LASF880:
	.string	"qmark_funny_chars"
.LASF784:
	.string	"time_style"
.LASF1136:
	.string	"file"
.LASF1161:
	.string	"q_style"
.LASF875:
	.string	"ignore_mode"
.LASF887:
	.string	"format_needs_stat"
.LASF869:
	.string	"recursive"
.LASF674:
	.string	"LONGINT_OK"
.LASF76:
	.string	"_wide_data"
.LASF15:
	.string	"__nlink_t"
.LASF358:
	.string	"_NL_CTYPE_INDIGITS_MB_LEN"
.LASF367:
	.string	"_NL_CTYPE_INDIGITS8_MB"
.LASF127:
	.string	"si_addr"
.LASF1257:
	.string	"infomap"
.LASF648:
	.string	"shell_quoting_style"
.LASF562:
	.string	"st_ino"
.LASF427:
	.string	"__CURRENCY_SYMBOL"
.LASF249:
	.string	"_NL_WPM_STR"
.LASF576:
	.string	"__s32"
.LASF409:
	.string	"_NL_CTYPE_MAP_TO_NONASCII"
.LASF891:
	.string	"caught_signals"
.LASF1051:
	.string	"rev_xstrcoll_extension"
.LASF836:
	.string	"indicator_no"
.LASF455:
	.string	"_NL_MONETARY_DUO_N_SEP_BY_SPACE"
.LASF922:
	.string	"when_types"
.LASF1154:
	.string	"dir_stat"
.LASF1012:
	.string	"btime_ok"
.LASF724:
	.string	"chardev"
.LASF1145:
	.string	"file_ignored"
.LASF770:
	.string	"nlink_width"
.LASF1072:
	.string	"strcmp_df_btime"
.LASF640:
	.string	"_IScntrl"
.LASF1222:
	.string	"nbytes"
.LASF685:
	.string	"human_base_1024"
.LASF262:
	.string	"_NL_TIME_FIRST_WEEKDAY"
.LASF1117:
	.string	"make_link_name"
.LASF384:
	.string	"_NL_CTYPE_OUTDIGIT4_MB"
.LASF631:
	.string	"_ISupper"
.LASF623:
	.string	"DT_SOCK"
.LASF764:
	.string	"current_time"
.LASF112:
	.string	"sival_int"
.LASF820:
	.string	"classify"
.LASF340:
	.string	"_NL_CTYPE_GAP1"
.LASF342:
	.string	"_NL_CTYPE_GAP2"
.LASF344:
	.string	"_NL_CTYPE_GAP3"
.LASF144:
	.string	"si_code"
.LASF346:
	.string	"_NL_CTYPE_GAP5"
.LASF347:
	.string	"_NL_CTYPE_GAP6"
.LASF612:
	.string	"d_off"
.LASF846:
	.string	"C_SOCK"
.LASF447:
	.string	"__INT_N_SIGN_POSN"
.LASF940:
	.string	"PS_3"
.LASF941:
	.string	"PS_4"
.LASF474:
	.string	"RADIXCHAR"
.LASF632:
	.string	"_ISlower"
.LASF469:
	.string	"_NL_MONETARY_DECIMAL_POINT_WC"
.LASF248:
	.string	"_NL_WAM_STR"
.LASF1111:
	.string	"cmp_ctime"
.LASF1162:
	.string	"parse_ls_color"
.LASF704:
	.string	"chunkfun"
.LASF365:
	.string	"_NL_CTYPE_INDIGITS6_MB"
.LASF1266:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1144:
	.string	"unsigned_file_size"
.LASF760:
	.string	"realname"
.LASF1218:
	.string	"dev_ino_hash"
.LASF1049:
	.string	"xstrcoll_df_extension"
.LASF1086:
	.string	"rev_strcmp_df_mtime"
.LASF1171:
	.string	"equals_end"
.LASF751:
	.string	"cwd_n_alloc"
.LASF1109:
	.string	"cmp_atime"
.LASF41:
	.string	"timespec"
.LASF1179:
	.string	"ST_END"
.LASF578:
	.string	"__s64"
.LASF250:
	.string	"_NL_WD_T_FMT"
.LASF843:
	.string	"C_DIR"
.LASF530:
	.string	"_NL_IDENTIFICATION_LANGUAGE"
.LASF1068:
	.string	"strcmp_size"
.LASF676:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF382:
	.string	"_NL_CTYPE_OUTDIGIT2_MB"
.LASF586:
	.string	"stx_nlink"
.LASF472:
	.string	"_NL_NUM_LC_MONETARY"
.LASF36:
	.string	"__val"
.LASF1015:
	.string	"majorbuf"
.LASF644:
	.string	"GETOPT_VERSION_CHAR"
.LASF554:
	.string	"__timezone"
.LASF1011:
	.string	"when_local"
.LASF827:
	.string	"when_never"
.LASF834:
	.string	"DEREF_COMMAND_LINE_SYMLINK_TO_DIR"
.LASF1233:
	.string	"do_lstat"
.LASF148:
	.string	"__sighandler_t"
.LASF1030:
	.string	"long_time_expected_width"
.LASF529:
	.string	"_NL_IDENTIFICATION_FAX"
.LASF978:
	.string	"filetype_indicator"
.LASF1190:
	.string	"posix_prefix"
.LASF363:
	.string	"_NL_CTYPE_INDIGITS4_MB"
.LASF1253:
	.string	"bad_cast"
.LASF42:
	.string	"winsize"
.LASF1208:
	.string	"sighandler"
.LASF1126:
	.string	"do_deref"
.LASF948:
	.string	"by_columns"
.LASF1156:
	.string	"file_failure"
.LASF1004:
	.string	"needs_further_quoting"
.LASF589:
	.string	"stx_mode"
.LASF1146:
	.string	"patterns_match"
.LASF565:
	.string	"st_uid"
.LASF695:
	.string	"extra"
.LASF1048:
	.string	"strcmp_df_extension"
.LASF815:
	.string	"dired"
.LASF490:
	.string	"_NL_PAPER_CODESET"
.LASF910:
	.string	"SI_OPTION"
.LASF1197:
	.string	"found"
.LASF537:
	.string	"_NL_IDENTIFICATION_CATEGORY"
.LASF123:
	.string	"_lower"
.LASF1255:
	.string	"emit_ancillary_info"
.LASF1009:
	.string	"modebuf"
.LASF265:
	.string	"_NL_TIME_TIMEZONE"
.LASF329:
	.string	"_NL_COLLATE_EXTRAWC"
.LASF909:
	.string	"SHOW_CONTROL_CHARS_OPTION"
.LASF1215:
	.string	"found_match"
.LASF973:
	.string	"put_indicator"
.LASF89:
	.string	"stderr"
.LASF380:
	.string	"_NL_CTYPE_OUTDIGIT0_MB"
.LASF108:
	.string	"name"
.LASF1128:
	.string	"have_scontext"
.LASF607:
	.string	"program_invocation_short_name"
.LASF1132:
	.string	"b_len"
.LASF1193:
	.string	"usage"
.LASF64:
	.string	"_IO_save_end"
.LASF542:
	.string	"tm_min"
.LASF434:
	.string	"__FRAC_DIGITS"
.LASF591:
	.string	"stx_ino"
.LASF210:
	.string	"_NL_WABDAY_1"
.LASF211:
	.string	"_NL_WABDAY_2"
.LASF110:
	.string	"flag"
.LASF213:
	.string	"_NL_WABDAY_4"
.LASF214:
	.string	"_NL_WABDAY_5"
.LASF215:
	.string	"_NL_WABDAY_6"
.LASF216:
	.string	"_NL_WABDAY_7"
.LASF361:
	.string	"_NL_CTYPE_INDIGITS2_MB"
.LASF747:
	.string	"bin_str"
.LASF763:
	.string	"pending_dirs"
.LASF1113:
	.string	"extract_dirs_from_files"
.LASF425:
	.string	"_NL_NUM_LC_CTYPE"
.LASF88:
	.string	"stdout"
.LASF475:
	.string	"__THOUSANDS_SEP"
.LASF654:
	.string	"escape_quoting_style"
.LASF1085:
	.string	"xstrcoll_atime"
.LASF20:
	.string	"__time_t"
.LASF398:
	.string	"_NL_CTYPE_OUTDIGIT8_WC"
.LASF135:
	.string	"_pad"
.LASF1059:
	.string	"rev_xstrcoll_name"
.LASF1037:
	.string	"__PRETTY_FUNCTION__"
.LASF519:
	.string	"_NL_NUM_LC_TELEPHONE"
.LASF957:
	.string	"init_column_info"
.LASF458:
	.string	"_NL_MONETARY_DUO_INT_N_CS_PRECEDES"
.LASF548:
	.string	"tm_yday"
.LASF906:
	.string	"HYPERLINK_OPTION"
.LASF1232:
	.string	"stat_for_mode"
.LASF1186:
	.string	"kibibytes_specified"
.LASF1248:
	.string	"statx_to_stat"
.LASF1089:
	.string	"xstrcoll_df_mtime"
.LASF433:
	.string	"__INT_FRAC_DIGITS"
.LASF871:
	.string	"directories_first"
.LASF111:
	.string	"sig_atomic_t"
.LASF460:
	.string	"_NL_MONETARY_DUO_P_SIGN_POSN"
.LASF1032:
	.string	"align_nstrftime"
.LASF539:
	.string	"_NL_NUM_LC_IDENTIFICATION"
.LASF894:
	.string	"exit_status"
.LASF950:
	.string	"cols"
.LASF456:
	.string	"_NL_MONETARY_DUO_INT_P_CS_PRECEDES"
.LASF1084:
	.string	"strcmp_atime"
.LASF1:
	.string	"short unsigned int"
.LASF859:
	.string	"C_MULTIHARDLINK"
.LASF464:
	.string	"_NL_MONETARY_UNO_VALID_FROM"
.LASF4:
	.string	"signed char"
.LASF721:
	.string	"filetype"
.LASF729:
	.string	"sock"
.LASF795:
	.string	"time_btime"
.LASF743:
	.string	"stat_ok"
.LASF21:
	.string	"__blksize_t"
.LASF596:
	.string	"stx_btime"
.LASF459:
	.string	"_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE"
.LASF1252:
	.string	"is_ENOTSUP"
.LASF541:
	.string	"tm_sec"
.LASF359:
	.string	"_NL_CTYPE_INDIGITS0_MB"
.LASF1245:
	.string	"dev_ino_pop"
.LASF94:
	.string	"ptrdiff_t"
.LASF965:
	.string	"separator"
.LASF929:
	.string	"dired_obstack"
.LASF1120:
	.string	"filename"
.LASF947:
	.string	"status"
.LASF209:
	.string	"_NL_TIME_ERA_ENTRIES"
.LASF829:
	.string	"when_if_tty"
.LASF1167:
	.string	"known_term_type"
.LASF826:
	.string	"when_type"
.LASF115:
	.string	"si_pid"
.LASF396:
	.string	"_NL_CTYPE_OUTDIGIT6_WC"
.LASF886:
	.string	"localtz"
.LASF502:
	.string	"_NL_ADDRESS_COUNTRY_POST"
.LASF766:
	.string	"UNKNOWN_SECURITY_CONTEXT"
.LASF129:
	.string	"_bounds"
.LASF547:
	.string	"tm_wday"
.LASF17:
	.string	"__off64_t"
.LASF885:
	.string	"line_length"
.LASF95:
	.string	"wchar_t"
.LASF958:
	.string	"attach"
.LASF708:
	.string	"maybe_empty_object"
.LASF141:
	.string	"_sigsys"
.LASF56:
	.string	"_IO_read_base"
.LASF614:
	.string	"d_type"
.LASF74:
	.string	"_offset"
.LASF1250:
	.string	"time_type_to_statx"
.LASF748:
	.string	"string"
.LASF921:
	.string	"when_args"
.LASF575:
	.string	"__u16"
.LASF378:
	.string	"_NL_CTYPE_INDIGITS8_WC"
.LASF966:
	.string	"print_horizontal"
.LASF893:
	.string	"stop_signal_count"
.LASF653:
	.string	"c_maybe_quoting_style"
.LASF1165:
	.string	"state"
.LASF35:
	.string	"sigset_t"
.LASF710:
	.string	"obstack_alloc_failed_handler"
.LASF255:
	.string	"_NL_WERA_D_FMT"
.LASF453:
	.string	"_NL_MONETARY_DUO_P_SEP_BY_SPACE"
.LASF1191:
	.string	"set_line_length"
.LASF765:
	.string	"print_scontext"
.LASF582:
	.string	"statx"
.LASF833:
	.string	"DEREF_COMMAND_LINE_ARGUMENTS"
.LASF1063:
	.string	"rev_xstrcoll_df_size"
.LASF158:
	.string	"mbstate_t"
.LASF1127:
	.string	"need_lstat"
.LASF998:
	.string	"path"
.LASF105:
	.string	"opterr"
.LASF1259:
	.string	"map_prog"
.LASF726:
	.string	"blockdev"
.LASF587:
	.string	"stx_uid"
.LASF258:
	.string	"_NL_WERA_T_FMT"
.LASF322:
	.string	"_NL_COLLATE_EXTRAMB"
.LASF750:
	.string	"cwd_file"
.LASF80:
	.string	"_mode"
.LASF790:
	.string	"time_style_types"
.LASF903:
	.string	"FULL_TIME_OPTION"
.LASF57:
	.string	"_IO_write_base"
.LASF625:
	.string	"__dirstream"
.LASF526:
	.string	"_NL_IDENTIFICATION_CONTACT"
.LASF394:
	.string	"_NL_CTYPE_OUTDIGIT4_WC"
.LASF1149:
	.string	"ignore"
.LASF581:
	.string	"__reserved"
.LASF47:
	.string	"__wch"
.LASF341:
	.string	"_NL_CTYPE_TOLOWER"
.LASF1039:
	.string	"rev_xstrcoll_df_version"
.LASF314:
	.string	"_NL_WABALTMON_10"
.LASF315:
	.string	"_NL_WABALTMON_11"
.LASF316:
	.string	"_NL_WABALTMON_12"
.LASF659:
	.string	"quoting_style_vals"
.LASF621:
	.string	"DT_REG"
.LASF671:
	.string	"hash_table"
.LASF404:
	.string	"_NL_CTYPE_TRANSLIT_TO_TBL"
.LASF577:
	.string	"__u32"
.LASF1151:
	.string	"dirp"
.LASF1140:
	.string	"deref"
.LASF812:
	.string	"output_block_size"
.LASF545:
	.string	"tm_mon"
.LASF1177:
	.string	"ST_HEX"
.LASF1100:
	.string	"strcmp_ctime"
.LASF376:
	.string	"_NL_CTYPE_INDIGITS6_WC"
.LASF1075:
	.string	"rev_xstrcoll_btime"
.LASF332:
	.string	"_NL_COLLATE_SYMB_TABLEMB"
.LASF888:
	.string	"format_needs_type"
.LASF6:
	.string	"long int"
.LASF781:
	.string	"many_per_line"
.LASF150:
	.string	"sa_sigaction"
.LASF267:
	.string	"_NL_W_DATE_FMT"
.LASF466:
	.string	"_NL_MONETARY_DUO_VALID_FROM"
.LASF259:
	.string	"_NL_TIME_WEEK_NDAYS"
.LASF902:
	.string	"FORMAT_OPTION"
.LASF471:
	.string	"_NL_MONETARY_CODESET"
.LASF482:
	.string	"__YESEXPR"
.LASF334:
	.string	"_NL_COLLATE_COLLSEQMB"
.LASF778:
	.string	"format"
.LASF83:
	.string	"_IO_marker"
.LASF485:
	.string	"__NOSTR"
.LASF546:
	.string	"tm_year"
.LASF1235:
	.string	"do_statx"
.LASF691:
	.string	"limit"
.LASF749:
	.string	"active_dir_set"
.LASF816:
	.string	"indicator_style"
.LASF672:
	.string	"quoting_style"
.LASF353:
	.string	"CODESET"
.LASF392:
	.string	"_NL_CTYPE_OUTDIGIT2_WC"
.LASF844:
	.string	"C_LINK"
.LASF714:
	.string	"MBS_ALIGN_CENTER"
.LASF945:
	.string	"qsortFunc"
.LASF617:
	.string	"DT_FIFO"
.LASF823:
	.string	"print_with_color"
.LASF742:
	.string	"scontext"
.LASF744:
	.string	"linkok"
.LASF1164:
	.string	"label"
.LASF839:
	.string	"C_END"
.LASF817:
	.string	"none"
.LASF601:
	.string	"stx_dev_major"
.LASF1005:
	.string	"plimit"
.LASF854:
	.string	"C_SETGID"
.LASF877:
	.string	"pattern"
.LASF1095:
	.string	"rev_xstrcoll_df_ctime"
.LASF1043:
	.string	"rev_xstrcoll_version"
.LASF152:
	.string	"__sigaction_handler"
.LASF51:
	.string	"__mbstate_t"
.LASF454:
	.string	"_NL_MONETARY_DUO_N_CS_PRECEDES"
.LASF1246:
	.string	"dev_ino_size"
.LASF374:
	.string	"_NL_CTYPE_INDIGITS4_WC"
.LASF450:
	.string	"_NL_MONETARY_DUO_INT_FRAC_DIGITS"
.LASF999:
	.string	"quote_name_width"
.LASF18:
	.string	"__pid_t"
.LASF84:
	.string	"_IO_codecvt"
.LASF510:
	.string	"_NL_ADDRESS_LANG_TERM"
.LASF647:
	.string	"literal_quoting_style"
.LASF1265:
	.string	"to_uchar"
.LASF733:
	.string	"filetype_letter"
.LASF1205:
	.string	"stops"
.LASF866:
	.string	"check_symlink_mode"
.LASF1174:
	.string	"ST_GND"
.LASF579:
	.string	"__u64"
.LASF96:
	.string	"long double"
.LASF849:
	.string	"C_MISSING"
.LASF452:
	.string	"_NL_MONETARY_DUO_P_CS_PRECEDES"
.LASF320:
	.string	"_NL_COLLATE_TABLEMB"
.LASF680:
	.string	"human_round_to_nearest"
.LASF703:
	.string	"alignment_mask"
.LASF356:
	.string	"_NL_CTYPE_CLASS_OFFSET"
.LASF1166:
	.string	"colorterm"
.LASF837:
	.string	"C_LEFT"
.LASF253:
	.string	"_NL_WT_FMT_AMPM"
.LASF882:
	.string	"dirname_quoting_options"
.LASF1125:
	.string	"full_name"
.LASF705:
	.string	"freefun"
.LASF3:
	.string	"long unsigned int"
.LASF390:
	.string	"_NL_CTYPE_OUTDIGIT0_WC"
.LASF1129:
	.string	"have_acl"
.LASF1025:
	.string	"format_user_or_group_width"
.LASF263:
	.string	"_NL_TIME_FIRST_WORKDAY"
.LASF400:
	.string	"_NL_CTYPE_TRANSLIT_TAB_SIZE"
.LASF813:
	.string	"file_human_output_opts"
.LASF1155:
	.string	"queue_directory"
.LASF318:
	.string	"_NL_COLLATE_NRULES"
.LASF120:
	.string	"si_status"
.LASF126:
	.string	"_pkey"
.LASF1192:
	.string	"spec"
.LASF946:
	.string	"sort_functions"
.LASF939:
	.string	"PS_2"
.LASF1035:
	.string	"sort_files"
.LASF25:
	.string	"__sig_atomic_t"
.LASF899:
	.string	"COLOR_OPTION"
.LASF905:
	.string	"HIDE_OPTION"
.LASF246:
	.string	"_NL_WMON_11"
.LASF247:
	.string	"_NL_WMON_12"
.LASF755:
	.string	"sorted_file"
.LASF372:
	.string	"_NL_CTYPE_INDIGITS2_WC"
.LASF1073:
	.string	"xstrcoll_df_btime"
.LASF345:
	.string	"_NL_CTYPE_GAP4"
.LASF1214:
	.string	"ent_from_table"
.LASF24:
	.string	"char"
.LASF855:
	.string	"C_STICKY"
.LASF523:
	.string	"_NL_IDENTIFICATION_TITLE"
.LASF805:
	.string	"sort_reverse"
.LASF707:
	.string	"use_extra_arg"
.LASF87:
	.string	"stdin"
.LASF687:
	.string	"human_SI"
.LASF686:
	.string	"human_space_before_unit"
.LASF166:
	.string	"DAY_1"
.LASF167:
	.string	"DAY_2"
.LASF168:
	.string	"DAY_3"
.LASF169:
	.string	"DAY_4"
.LASF170:
	.string	"DAY_5"
.LASF171:
	.string	"DAY_6"
.LASF172:
	.string	"DAY_7"
.LASF1078:
	.string	"rev_strcmp_df_atime"
.LASF772:
	.string	"owner_width"
.LASF923:
	.string	"column_info"
.LASF60:
	.string	"_IO_buf_base"
.LASF445:
	.string	"__INT_N_SEP_BY_SPACE"
.LASF997:
	.string	"file_escape"
.LASF797:
	.string	"sort_type"
.LASF436:
	.string	"__P_SEP_BY_SPACE"
.LASF10:
	.string	"__dev_t"
.LASF1251:
	.string	"is_smack_enabled"
.LASF987:
	.string	"color"
.LASF574:
	.string	"__glibc_reserved"
.LASF741:
	.string	"linkmode"
.LASF715:
	.string	"mbs_align_t"
.LASF652:
	.string	"c_quoting_style"
.LASF1060:
	.string	"strcmp_name"
.LASF8:
	.string	"__intmax_t"
.LASF55:
	.string	"_IO_read_end"
.LASF1064:
	.string	"strcmp_df_size"
.LASF860:
	.string	"C_CLR_TO_EOL"
.LASF1092:
	.string	"strcmp_mtime"
.LASF522:
	.string	"_NL_NUM_LC_MEASUREMENT"
.LASF159:
	.string	"ABDAY_1"
.LASF160:
	.string	"ABDAY_2"
.LASF161:
	.string	"ABDAY_3"
.LASF52:
	.string	"_IO_FILE"
.LASF163:
	.string	"ABDAY_5"
.LASF164:
	.string	"ABDAY_6"
.LASF165:
	.string	"ABDAY_7"
.LASF917:
	.string	"sort_args"
.LASF808:
	.string	"print_group"
.LASF85:
	.string	"_IO_wide_data"
.LASF370:
	.string	"_NL_CTYPE_INDIGITS0_WC"
.LASF268:
	.string	"_NL_TIME_CODESET"
.LASF1062:
	.string	"rev_strcmp_df_size"
.LASF555:
	.string	"tzname"
.LASF146:
	.string	"_sifields"
.LASF655:
	.string	"locale_quoting_style"
.LASF1238:
	.string	"want_btime"
.LASF1102:
	.string	"cmp_extension"
.LASF543:
	.string	"tm_hour"
.LASF1003:
	.string	"displayed_width"
.LASF208:
	.string	"_NL_TIME_ERA_NUM_ENTRIES"
.LASF630:
	.string	"LOG10_TIMESPEC_HZ"
.LASF1268:
	.string	"/root/coreutils"
.LASF305:
	.string	"_NL_WABALTMON_1"
.LASF306:
	.string	"_NL_WABALTMON_2"
.LASF307:
	.string	"_NL_WABALTMON_3"
.LASF308:
	.string	"_NL_WABALTMON_4"
.LASF309:
	.string	"_NL_WABALTMON_5"
.LASF310:
	.string	"_NL_WABALTMON_6"
.LASF311:
	.string	"_NL_WABALTMON_7"
.LASF312:
	.string	"_NL_WABALTMON_8"
.LASF313:
	.string	"_NL_WABALTMON_9"
.LASF1229:
	.string	"first_percent_b"
.LASF487:
	.string	"_NL_NUM_LC_MESSAGES"
.LASF480:
	.string	"_NL_NUMERIC_CODESET"
.LASF205:
	.string	"ALT_DIGITS"
.LASF389:
	.string	"_NL_CTYPE_OUTDIGIT9_MB"
.LASF1152:
	.string	"total_blocks"
.LASF142:
	.string	"si_signo"
.LASF868:
	.string	"dereference"
.LASF1096:
	.string	"strcmp_df_ctime"
.LASF1082:
	.string	"rev_strcmp_atime"
.LASF638:
	.string	"_ISgraph"
.LASF467:
	.string	"_NL_MONETARY_DUO_VALID_TO"
.LASF656:
	.string	"clocale_quoting_style"
.LASF951:
	.string	"max_cols"
.LASF431:
	.string	"__POSITIVE_SIGN"
.LASF651:
	.string	"shell_escape_always_quoting_style"
.LASF544:
	.string	"tm_mday"
.LASF145:
	.string	"__pad0"
.LASF1234:
	.string	"do_stat"
.LASF79:
	.string	"__pad5"
.LASF536:
	.string	"_NL_IDENTIFICATION_DATE"
.LASF518:
	.string	"_NL_TELEPHONE_CODESET"
.LASF912:
	.string	"TIME_OPTION"
.LASF290:
	.string	"_NL_WALTMON_10"
.LASF291:
	.string	"_NL_WALTMON_11"
.LASF292:
	.string	"_NL_WALTMON_12"
.LASF143:
	.string	"si_errno"
.LASF626:
	.string	"NOT_AN_INODE_NUMBER"
.LASF1006:
	.string	"mbstate"
.LASF1130:
	.string	"attr_len"
.LASF971:
	.string	"calculate_columns"
.LASF935:
	.string	"abformat"
.LASF65:
	.string	"_markers"
.LASF1206:
	.string	"oldset"
.LASF446:
	.string	"__INT_P_SIGN_POSN"
.LASF988:
	.string	"used_color_this_time"
.LASF822:
	.string	"indicator_style_types"
.LASF650:
	.string	"shell_escape_quoting_style"
.LASF130:
	.string	"si_band"
.LASF828:
	.string	"when_always"
.LASF1010:
	.string	"when_timespec"
.LASF709:
	.string	"alloc_failed"
.LASF509:
	.string	"_NL_ADDRESS_LANG_AB"
.LASF405:
	.string	"_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN"
.LASF75:
	.string	"_codecvt"
.LASF1224:
	.string	"required_mon_width"
.LASF1189:
	.string	"style"
.LASF718:
	.string	"CAN_ALL_BUT_LAST"
.LASF1108:
	.string	"cmp_btime"
.LASF1142:
	.string	"clear_files"
.LASF809:
	.string	"numeric_ids"
.LASF664:
	.string	"dev_ino"
.LASF1087:
	.string	"rev_xstrcoll_df_mtime"
.LASF610:
	.string	"dirent"
.LASF1017:
	.string	"blanks_width"
.LASF1081:
	.string	"xstrcoll_df_atime"
.LASF302:
	.string	"_NL_ABALTMON_10"
.LASF303:
	.string	"_NL_ABALTMON_11"
.LASF304:
	.string	"_NL_ABALTMON_12"
.LASF720:
	.string	"CAN_NOLINKS"
.LASF407:
	.string	"_NL_CTYPE_TRANSLIT_IGNORE_LEN"
.LASF567:
	.string	"st_rdev"
.LASF559:
	.string	"timezone_t"
.LASF488:
	.string	"_NL_PAPER_HEIGHT"
.LASF1182:
	.string	"argc"
.LASF561:
	.string	"st_dev"
.LASF1210:
	.string	"restore_default_color"
.LASF524:
	.string	"_NL_IDENTIFICATION_SOURCE"
.LASF1183:
	.string	"argv"
.LASF335:
	.string	"_NL_COLLATE_COLLSEQWC"
.LASF1027:
	.string	"format_user"
.LASF758:
	.string	"hostname"
.LASF838:
	.string	"C_RIGHT"
.LASF841:
	.string	"C_NORM"
.LASF585:
	.string	"stx_attributes"
.LASF993:
	.string	"smallbuf"
.LASF735:
	.string	"ACL_T_NONE"
.LASF7:
	.string	"__uint32_t"
.LASF448:
	.string	"_NL_MONETARY_DUO_INT_CURR_SYMBOL"
.LASF1185:
	.string	"sort_type_specified"
.LASF786:
	.string	"long_iso_time_style"
.LASF553:
	.string	"__daylight"
.LASF50:
	.string	"__value"
.LASF925:
	.string	"line_len"
.LASF1061:
	.string	"xstrcoll_name"
.LASF432:
	.string	"__NEGATIVE_SIGN"
.LASF1002:
	.string	"bufsize"
.LASF1230:
	.string	"fstat_for_ino"
.LASF408:
	.string	"_NL_CTYPE_TRANSLIT_IGNORE"
.LASF156:
	.string	"_sys_siglist"
.LASF798:
	.string	"sort_none"
.LASF660:
	.string	"quoting_options"
.LASF1024:
	.string	"format_user_width"
.LASF269:
	.string	"__ALTMON_1"
.LASF270:
	.string	"__ALTMON_2"
.LASF271:
	.string	"__ALTMON_3"
.LASF272:
	.string	"__ALTMON_4"
.LASF273:
	.string	"__ALTMON_5"
.LASF274:
	.string	"__ALTMON_6"
.LASF275:
	.string	"__ALTMON_7"
.LASF276:
	.string	"__ALTMON_8"
.LASF277:
	.string	"__ALTMON_9"
.LASF767:
	.string	"any_has_acl"
.LASF701:
	.string	"chunk_limit"
.LASF666:
	.string	"error_message_count"
.LASF1016:
	.string	"minorbuf"
.LASF970:
	.string	"rows"
.LASF984:
	.string	"width"
.LASF1116:
	.string	"base"
.LASF256:
	.string	"_NL_WALT_DIGITS"
.LASF473:
	.string	"__DECIMAL_POINT"
.LASF727:
	.string	"normal"
.LASF1244:
	.string	"n_pos"
.LASF949:
	.string	"filesno"
.LASF217:
	.string	"_NL_WDAY_1"
.LASF218:
	.string	"_NL_WDAY_2"
.LASF219:
	.string	"_NL_WDAY_3"
.LASF220:
	.string	"_NL_WDAY_4"
.LASF221:
	.string	"_NL_WDAY_5"
.LASF222:
	.string	"_NL_WDAY_6"
.LASF223:
	.string	"_NL_WDAY_7"
.LASF430:
	.string	"__MON_GROUPING"
.LASF1163:
	.string	"ind_no"
.LASF1007:
	.string	"bytes"
.LASF442:
	.string	"__INT_P_CS_PRECEDES"
.LASF1057:
	.string	"xstrcoll_df_name"
.LASF606:
	.string	"program_invocation_name"
.LASF761:
	.string	"command_line_arg"
.LASF1050:
	.string	"rev_strcmp_extension"
.LASF1223:
	.string	"abmon_init"
.LASF711:
	.string	"obstack_exit_failure"
.LASF819:
	.string	"file_type"
.LASF12:
	.string	"__gid_t"
.LASF914:
	.string	"long_options"
.LASF732:
	.string	"G_line"
.LASF782:
	.string	"horizontal"
.LASF520:
	.string	"_NL_MEASUREMENT_MEASUREMENT"
.LASF773:
	.string	"group_width"
.LASF78:
	.string	"_freeres_buf"
.LASF139:
	.string	"_sigfault"
.LASF29:
	.string	"mode_t"
.LASF599:
	.string	"stx_rdev_major"
.LASF121:
	.string	"si_utime"
.LASF1106:
	.string	"cmp_name"
.LASF37:
	.string	"tv_sec"
.LASF429:
	.string	"__MON_THOUSANDS_SEP"
.LASF254:
	.string	"_NL_WERA_YEAR"
.LASF39:
	.string	"long long unsigned int"
.LASF968:
	.string	"max_name_length"
.LASF549:
	.string	"tm_isdst"
.LASF149:
	.string	"sa_handler"
.LASF350:
	.string	"_NL_CTYPE_WIDTH"
.LASF70:
	.string	"_cur_column"
.LASF1090:
	.string	"rev_strcmp_mtime"
.LASF499:
	.string	"_NL_NUM_LC_NAME"
.LASF30:
	.string	"uid_t"
.LASF131:
	.string	"si_fd"
.LASF437:
	.string	"__N_CS_PRECEDES"
.LASF1242:
	.string	"dired_dump_obstack"
.LASF974:
	.string	"get_color_indicator"
.LASF489:
	.string	"_NL_PAPER_WIDTH"
.LASF960:
	.string	"dirname"
.LASF570:
	.string	"st_blocks"
.LASF1066:
	.string	"rev_strcmp_size"
.LASF440:
	.string	"__N_SIGN_POSN"
.LASF1198:
	.string	"prep_non_filename_text"
.LASF403:
	.string	"_NL_CTYPE_TRANSLIT_TO_IDX"
.LASF830:
	.string	"Dereference_symlink"
.LASF793:
	.string	"time_ctime"
.LASF1040:
	.string	"a_is_dir"
.LASF46:
	.string	"ws_ypixel"
.LASF740:
	.string	"absolute_name"
.LASF1029:
	.string	"width_gap"
.LASF597:
	.string	"stx_ctime"
.LASF985:
	.string	"print_name_with_quoting"
.LASF959:
	.string	"dest"
.LASF550:
	.string	"tm_gmtoff"
.LASF857:
	.string	"C_STICKY_OTHER_WRITABLE"
.LASF1239:
	.string	"calc_req_mask"
.LASF1088:
	.string	"strcmp_df_mtime"
.LASF1270:
	.string	"sigval"
.LASF63:
	.string	"_IO_backup_base"
.LASF1201:
	.string	"signal_setup"
.LASF357:
	.string	"_NL_CTYPE_MAP_OFFSET"
.LASF1180:
	.string	"ST_ERROR"
.LASF54:
	.string	"_IO_read_ptr"
.LASF1143:
	.string	"free_ent"
.LASF907:
	.string	"INDICATOR_STYLE_OPTION"
.LASF451:
	.string	"_NL_MONETARY_DUO_FRAC_DIGITS"
.LASF994:
	.string	"skip_quotes"
.LASF444:
	.string	"__INT_N_CS_PRECEDES"
.LASF45:
	.string	"ws_xpixel"
.LASF804:
	.string	"sort_numtypes"
.LASF483:
	.string	"__NOEXPR"
.LASF725:
	.string	"directory"
.LASF387:
	.string	"_NL_CTYPE_OUTDIGIT7_MB"
.LASF961:
	.string	"dirnamep"
.LASF77:
	.string	"_freeres_list"
.LASF257:
	.string	"_NL_WERA_D_T_FMT"
.LASF479:
	.string	"_NL_NUMERIC_THOUSANDS_SEP_WC"
.LASF975:
	.string	"symlink_target"
.LASF1178:
	.string	"ST_CARET"
.LASF1041:
	.string	"b_is_dir"
.LASF769:
	.string	"block_size_width"
.LASF92:
	.string	"_sys_nerr"
.LASF731:
	.string	"arg_directory"
.LASF557:
	.string	"timezone"
.LASF861:
	.string	"indicator_name"
.LASF118:
	.string	"si_overrun"
.LASF1195:
	.string	"thispend"
.LASF369:
	.string	"_NL_CTYPE_INDIGITS_WC_LEN"
.LASF368:
	.string	"_NL_CTYPE_INDIGITS9_MB"
.LASF719:
	.string	"CAN_MISSING"
.LASF989:
	.string	"quote_name"
.LASF401:
	.string	"_NL_CTYPE_TRANSLIT_FROM_IDX"
.LASF69:
	.string	"_old_offset"
.LASF864:
	.string	"color_ext_list"
.LASF528:
	.string	"_NL_IDENTIFICATION_TEL"
.LASF147:
	.string	"siginfo_t"
.LASF516:
	.string	"_NL_TELEPHONE_INT_SELECT"
.LASF27:
	.string	"dev_t"
.LASF688:
	.string	"human_B"
.LASF679:
	.string	"human_ceiling"
.LASF1216:
	.string	"dev_ino_free"
.LASF1221:
	.string	"abmon"
.LASF1031:
	.string	"epoch"
.LASF104:
	.string	"optind"
.LASF696:
	.string	"obstack"
.LASF1138:
	.string	"file_has_acl_cache"
.LASF1026:
	.string	"format_group"
.LASF863:
	.string	"color_indicator"
.LASF40:
	.string	"long long int"
.LASF889:
	.string	"TIME_STAMP_LEN_MAXIMUM"
.LASF1219:
	.string	"table_size"
.LASF68:
	.string	"_flags2"
.LASF44:
	.string	"ws_col"
.LASF385:
	.string	"_NL_CTYPE_OUTDIGIT5_MB"
.LASF1227:
	.string	"alignment"
.LASF1000:
	.string	"quote_name_buf"
.LASF1181:
	.string	"decode_switches"
.LASF852:
	.string	"C_DOOR"
.LASF38:
	.string	"tv_nsec"
.LASF182:
	.string	"ABMON_10"
.LASF183:
	.string	"ABMON_11"
.LASF184:
	.string	"ABMON_12"
.LASF662:
	.string	"argmatch_exit_fn"
.LASF107:
	.string	"option"
.LASF402:
	.string	"_NL_CTYPE_TRANSLIT_FROM_TBL"
.LASF1099:
	.string	"rev_xstrcoll_ctime"
.LASF665:
	.string	"error_print_progname"
.LASF634:
	.string	"_ISdigit"
.LASF366:
	.string	"_NL_CTYPE_INDIGITS7_MB"
.LASF317:
	.string	"_NL_NUM_LC_TIME"
.LASF1133:
	.string	"needs_quoting"
.LASF1023:
	.string	"format_group_width"
.LASF13:
	.string	"__ino_t"
.LASF890:
	.string	"long_time_format"
.LASF500:
	.string	"_NL_ADDRESS_POSTAL_FMT"
.LASF90:
	.string	"sys_nerr"
.LASF481:
	.string	"_NL_NUM_LC_NUMERIC"
.LASF689:
	.string	"ls_mode"
.LASF692:
	.string	"prev"
.LASF321:
	.string	"_NL_COLLATE_WEIGHTMB"
.LASF930:
	.string	"subdired_obstack"
.LASF1034:
	.string	"print_current_files"
.LASF343:
	.string	"_NL_CTYPE_CLASS32"
.LASF801:
	.string	"sort_size"
.LASF194:
	.string	"MON_10"
.LASF195:
	.string	"MON_11"
.LASF196:
	.string	"MON_12"
.LASF117:
	.string	"si_tid"
.LASF942:
	.string	"PS_DONE"
.LASF383:
	.string	"_NL_CTYPE_OUTDIGIT3_MB"
.LASF609:
	.string	"exit_failure"
.LASF954:
	.string	"column_info_alloc"
.LASF420:
	.string	"_NL_CTYPE_EXTRA_MAP_10"
.LASF421:
	.string	"_NL_CTYPE_EXTRA_MAP_11"
.LASF422:
	.string	"_NL_CTYPE_EXTRA_MAP_12"
.LASF423:
	.string	"_NL_CTYPE_EXTRA_MAP_13"
.LASF424:
	.string	"_NL_CTYPE_EXTRA_MAP_14"
.LASF1042:
	.string	"xstrcoll_df_version"
.LASF663:
	.string	"argmatch_die"
.LASF788:
	.string	"locale_time_style"
.LASF895:
	.string	"LS_MINOR_PROBLEM"
.LASF775:
	.string	"major_device_number_width"
.LASF1194:
	.string	"main"
.LASF449:
	.string	"_NL_MONETARY_DUO_CURRENCY_SYMBOL"
.LASF799:
	.string	"sort_name"
.LASF364:
	.string	"_NL_CTYPE_INDIGITS5_MB"
.LASF337:
	.string	"_NL_NUM_LC_COLLATE"
.LASF706:
	.string	"extra_arg"
.LASF936:
	.string	"use_abformat"
.LASF506:
	.string	"_NL_ADDRESS_COUNTRY_NUM"
.LASF1148:
	.string	"add_ignore_pattern"
.LASF411:
	.string	"_NL_CTYPE_EXTRA_MAP_1"
.LASF2:
	.string	"unsigned int"
.LASF413:
	.string	"_NL_CTYPE_EXTRA_MAP_3"
.LASF414:
	.string	"_NL_CTYPE_EXTRA_MAP_4"
.LASF415:
	.string	"_NL_CTYPE_EXTRA_MAP_5"
.LASF416:
	.string	"_NL_CTYPE_EXTRA_MAP_6"
.LASF417:
	.string	"_NL_CTYPE_EXTRA_MAP_7"
.LASF418:
	.string	"_NL_CTYPE_EXTRA_MAP_8"
.LASF419:
	.string	"_NL_CTYPE_EXTRA_MAP_9"
.LASF897:
	.string	"AUTHOR_OPTION"
.LASF1118:
	.string	"prefix_len"
.LASF532:
	.string	"_NL_IDENTIFICATION_AUDIENCE"
.LASF739:
	.string	"linkname"
.LASF324:
	.string	"_NL_COLLATE_GAP1"
.LASF325:
	.string	"_NL_COLLATE_GAP2"
.LASF326:
	.string	"_NL_COLLATE_GAP3"
.LASF572:
	.string	"st_mtim"
.LASF796:
	.string	"time_numtypes"
.LASF1028:
	.string	"format_user_or_group"
.LASF5:
	.string	"short int"
.LASF785:
	.string	"full_iso_time_style"
.LASF381:
	.string	"_NL_CTYPE_OUTDIGIT1_MB"
.LASF119:
	.string	"si_sigval"
.LASF881:
	.string	"filename_quoting_options"
.LASF406:
	.string	"_NL_CTYPE_TRANSLIT_DEFAULT_MISSING"
.LASF97:
	.string	"__jmp_buf"
.LASF71:
	.string	"_vtable_offset"
.LASF962:
	.string	"indent"
.LASF206:
	.string	"ERA_D_T_FMT"
.LASF1172:
	.string	"output_count"
.LASF463:
	.string	"_NL_MONETARY_DUO_INT_N_SIGN_POSN"
.LASF486:
	.string	"_NL_MESSAGES_CODESET"
.LASF611:
	.string	"d_ino"
.LASF792:
	.string	"time_mtime"
.LASF1033:
	.string	"nfmt"
.LASF598:
	.string	"stx_mtime"
.LASF853:
	.string	"C_SETUID"
.LASF1236:
	.string	"flags"
.LASF1228:
	.string	"file_escape_init"
.LASF531:
	.string	"_NL_IDENTIFICATION_TERRITORY"
.LASF643:
	.string	"GETOPT_HELP_CHAR"
.LASF754:
	.string	"align_variable_outer_quotes"
.LASF362:
	.string	"_NL_CTYPE_INDIGITS3_MB"
.LASF800:
	.string	"sort_extension"
.LASF157:
	.string	"sys_siglist"
.LASF757:
	.string	"color_symlink_as_referent"
.LASF538:
	.string	"_NL_IDENTIFICATION_CODESET"
.LASF494:
	.string	"_NL_NAME_NAME_MR"
.LASF497:
	.string	"_NL_NAME_NAME_MS"
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
