	.file	"dircolors.c"
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
	.local	lsc_obstack
	.comm	lsc_obstack,88,32
.LC18:
	.string	"NORMAL"
.LC19:
	.string	"NORM"
.LC20:
	.string	"FILE"
.LC21:
	.string	"RESET"
.LC22:
	.string	"DIR"
.LC23:
	.string	"LNK"
.LC24:
	.string	"LINK"
.LC25:
	.string	"SYMLINK"
.LC26:
	.string	"ORPHAN"
.LC27:
	.string	"MISSING"
.LC28:
	.string	"FIFO"
.LC29:
	.string	"PIPE"
.LC30:
	.string	"SOCK"
.LC31:
	.string	"BLK"
.LC32:
	.string	"BLOCK"
.LC33:
	.string	"CHR"
.LC34:
	.string	"CHAR"
.LC35:
	.string	"DOOR"
.LC36:
	.string	"EXEC"
.LC37:
	.string	"LEFT"
.LC38:
	.string	"LEFTCODE"
.LC39:
	.string	"RIGHT"
.LC40:
	.string	"RIGHTCODE"
.LC41:
	.string	"END"
.LC42:
	.string	"ENDCODE"
.LC43:
	.string	"SUID"
.LC44:
	.string	"SETUID"
.LC45:
	.string	"SGID"
.LC46:
	.string	"SETGID"
.LC47:
	.string	"STICKY"
.LC48:
	.string	"OTHER_WRITABLE"
.LC49:
	.string	"OWR"
.LC50:
	.string	"STICKY_OTHER_WRITABLE"
.LC51:
	.string	"OWT"
.LC52:
	.string	"CAPABILITY"
.LC53:
	.string	"MULTIHARDLINK"
.LC54:
	.string	"CLRTOEOL"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	slack_codes, @object
	.size	slack_codes, 304
slack_codes:
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
	.quad	.LC52
	.quad	.LC53
	.quad	.LC54
	.quad	0
	.section	.rodata
.LC55:
	.string	"no"
.LC56:
	.string	"fi"
.LC57:
	.string	"rs"
.LC58:
	.string	"di"
.LC59:
	.string	"ln"
.LC60:
	.string	"or"
.LC61:
	.string	"mi"
.LC62:
	.string	"pi"
.LC63:
	.string	"so"
.LC64:
	.string	"bd"
.LC65:
	.string	"cd"
.LC66:
	.string	"do"
.LC67:
	.string	"ex"
.LC68:
	.string	"lc"
.LC69:
	.string	"rc"
.LC70:
	.string	"ec"
.LC71:
	.string	"su"
.LC72:
	.string	"sg"
.LC73:
	.string	"st"
.LC74:
	.string	"ow"
.LC75:
	.string	"tw"
.LC76:
	.string	"ca"
.LC77:
	.string	"mh"
.LC78:
	.string	"cl"
	.section	.data.rel.ro.local
	.align 32
	.type	ls_codes, @object
	.size	ls_codes, 304
ls_codes:
	.quad	.LC55
	.quad	.LC55
	.quad	.LC56
	.quad	.LC57
	.quad	.LC58
	.quad	.LC59
	.quad	.LC59
	.quad	.LC59
	.quad	.LC60
	.quad	.LC61
	.quad	.LC62
	.quad	.LC62
	.quad	.LC63
	.quad	.LC64
	.quad	.LC64
	.quad	.LC65
	.quad	.LC65
	.quad	.LC66
	.quad	.LC67
	.quad	.LC68
	.quad	.LC68
	.quad	.LC69
	.quad	.LC69
	.quad	.LC70
	.quad	.LC70
	.quad	.LC71
	.quad	.LC71
	.quad	.LC72
	.quad	.LC72
	.quad	.LC73
	.quad	.LC74
	.quad	.LC74
	.quad	.LC75
	.quad	.LC75
	.quad	.LC76
	.quad	.LC77
	.quad	.LC78
	.quad	0
	.section	.rodata
.LC79:
	.string	"bourne-shell"
.LC80:
	.string	"sh"
.LC81:
	.string	"csh"
.LC82:
	.string	"c-shell"
.LC83:
	.string	"print-database"
.LC84:
	.string	"help"
.LC85:
	.string	"version"
	.section	.data.rel.ro.local
	.align 32
	.type	long_options, @object
	.size	long_options, 256
long_options:
	.quad	.LC79
	.long	0
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC80
	.long	0
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC81
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC82
	.long	0
	.zero	4
	.quad	0
	.long	99
	.zero	4
	.quad	.LC83
	.long	0
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	.LC84
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC85
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
.LC86:
	.string	"Try '%s --help' for more information.\n"
.LC87:
	.string	"Usage: %s [OPTION]... [FILE]\n"
	.align 8
.LC88:
	.ascii	"Output commands t"
	.string	"o set the LS_COLORS environment variable.\n\nDetermine format of output:\n  -b, --sh, --bourne-shell    output Bourne shell code to set LS_COLORS\n  -c, --csh, --c-shell        output C shell code to set LS_COLORS\n  -p, --print-database        output defaults\n"
	.align 8
.LC89:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC90:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC91:
	.string	"\nIf FILE is specified, read it to determine which colors to use for which\nfile types and extensions.  Otherwise, a precompiled database is used.\nFor details on the format of these files, run 'dircolors --print-database'.\n"
.LC92:
	.string	"dircolors"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB46:
	.file 2 "src/dircolors.c"
	.loc 2 94 1 is_stmt 1
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
	.loc 2 95 6
	cmpl	$0, -20(%rbp)
	je	.L13
	.loc 2 96 5
	movq	program_name(%rip), %rbx
	leaq	.LC86(%rip), %rdi
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
	.loc 2 99 7
	movq	program_name(%rip), %rbx
	.loc 2 99 15
	leaq	.LC87(%rip), %rdi
	call	gettext@PLT
	.loc 2 99 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 100 7
	movq	stdout(%rip), %rbx
	leaq	.LC88(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 108 7
	movq	stdout(%rip), %rbx
	leaq	.LC89(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 109 7
	movq	stdout(%rip), %rbx
	leaq	.LC90(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 110 7
	movq	stdout(%rip), %rbx
	leaq	.LC91(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 116 7
	leaq	.LC92(%rip), %rdi
	call	emit_ancillary_info
.L14:
	.loc 2 119 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE46:
	.size	usage, .-usage
	.section	.rodata
.LC93:
	.string	"SHELL"
.LC94:
	.string	"tcsh"
	.text
	.type	guess_shell_syntax, @function
guess_shell_syntax:
.LFB47:
	.loc 2 127 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 130 11
	leaq	.LC93(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -8(%rbp)
	.loc 2 131 6
	cmpq	$0, -8(%rbp)
	je	.L16
	.loc 2 131 24 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 131 21 discriminator 1
	testb	%al, %al
	jne	.L17
.L16:
	.loc 2 132 12
	movl	$2, %eax
	jmp	.L18
.L17:
	.loc 2 134 11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	last_component@PLT
	movq	%rax, -8(%rbp)
	.loc 2 136 7
	movq	-8(%rbp), %rax
	leaq	.LC81(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 136 6
	testl	%eax, %eax
	je	.L19
	.loc 2 136 31 discriminator 1
	movq	-8(%rbp), %rax
	leaq	.LC94(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 136 28 discriminator 1
	testl	%eax, %eax
	jne	.L20
.L19:
	.loc 2 137 12
	movl	$1, %eax
	jmp	.L18
.L20:
	.loc 2 139 10
	movl	$0, %eax
.L18:
	.loc 2 140 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	guess_shell_syntax, .-guess_shell_syntax
	.type	parse_line, @function
parse_line:
.LFB48:
	.loc 2 144 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 2 149 12
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 150 8
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 152 10
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 152 3
	jmp	.L22
.L23:
	.loc 2 152 43
	addq	$1, -40(%rbp)
.L22:
	.loc 2 152 18 discriminator 1
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
	andl	$8192, %eax
	.loc 2 152 3 discriminator 1
	testl	%eax, %eax
	jne	.L23
	.loc 2 156 7
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 156 6
	testb	%al, %al
	je	.L38
	.loc 2 156 21 discriminator 1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 156 18 discriminator 1
	cmpb	$35, %al
	je	.L38
	.loc 2 159 17
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 161 9
	jmp	.L27
.L29:
	.loc 2 163 7
	addq	$1, -40(%rbp)
.L27:
	.loc 2 161 11
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
	andl	$8192, %eax
	.loc 2 161 9
	testl	%eax, %eax
	jne	.L28
	.loc 2 161 38 discriminator 1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 161 35 discriminator 1
	testb	%al, %al
	jne	.L29
.L28:
	.loc 2 166 41
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	.loc 2 166 14
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xstrndup@PLT
	movq	%rax, %rdx
	.loc 2 166 12
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 167 7
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 167 6
	testb	%al, %al
	je	.L39
.L30:
	.loc 2 172 7 discriminator 1
	addq	$1, -40(%rbp)
	.loc 2 174 10 discriminator 1
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
	andl	$8192, %eax
	.loc 2 174 3 discriminator 1
	testl	%eax, %eax
	jne	.L30
	.loc 2 176 7
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 176 6
	testb	%al, %al
	je	.L40
	.loc 2 176 21 discriminator 1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 176 18 discriminator 1
	cmpb	$35, %al
	je	.L40
	.loc 2 179 13
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 181 9
	jmp	.L33
.L35:
	.loc 2 182 5
	addq	$1, -40(%rbp)
.L33:
	.loc 2 181 10
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 181 9
	testb	%al, %al
	je	.L34
	.loc 2 181 24 discriminator 1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 181 21 discriminator 1
	cmpb	$35, %al
	jne	.L35
.L34:
	.loc 2 184 8
	subq	$1, -40(%rbp)
	.loc 2 184 3
	jmp	.L36
.L37:
	.loc 2 184 38
	subq	$1, -40(%rbp)
.L36:
	.loc 2 184 13 discriminator 1
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
	andl	$8192, %eax
	.loc 2 184 3 discriminator 1
	testl	%eax, %eax
	jne	.L37
	.loc 2 186 3
	addq	$1, -40(%rbp)
	.loc 2 188 33
	movq	-40(%rbp), %rax
	subq	-24(%rbp), %rax
	.loc 2 188 10
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xstrndup@PLT
	movq	%rax, %rdx
	.loc 2 188 8
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L21
.L38:
	.loc 2 157 5
	nop
	jmp	.L21
.L39:
	.loc 2 168 5
	nop
	jmp	.L21
.L40:
	.loc 2 177 5
	nop
.L21:
	.loc 2 189 1
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	parse_line, .-parse_line
	.type	append_quoted, @function
append_quoted:
.LFB49:
	.loc 2 196 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	.loc 2 197 8
	movb	$1, -81(%rbp)
	.loc 2 199 9
	jmp	.L42
.L53:
	.loc 2 201 15
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 201 7
	cmpl	$94, %eax
	je	.L43
	cmpl	$94, %eax
	jg	.L44
	cmpl	$92, %eax
	je	.L43
	cmpl	$92, %eax
	jg	.L44
	cmpl	$61, %eax
	je	.L45
	cmpl	$61, %eax
	jg	.L44
	cmpl	$39, %eax
	je	.L46
	cmpl	$58, %eax
	je	.L45
	jmp	.L44
.L46:
.LBB2:
	.loc 2 204 11
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -64(%rbp)
.LBB3:
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE3:
	testq	%rax, %rax
	jne	.L47
	.loc 2 204 11 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L47:
	.loc 2 204 11 discriminator 3
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movb	$39, (%rax)
.LBE2:
.LBB4:
	.loc 2 205 11 is_stmt 1 discriminator 3
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -48(%rbp)
.LBB5:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE5:
	testq	%rax, %rax
	jne	.L48
	.loc 2 205 11 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L48:
	.loc 2 205 11 discriminator 3
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movb	$92, (%rax)
.LBE4:
.LBB6:
	.loc 2 206 11 is_stmt 1 discriminator 3
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -32(%rbp)
.LBB7:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE7:
	testq	%rax, %rax
	jne	.L49
	.loc 2 206 11 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L49:
	.loc 2 206 11 discriminator 3
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movb	$39, (%rax)
.LBE6:
	.loc 2 207 26 is_stmt 1 discriminator 3
	movb	$1, -81(%rbp)
	.loc 2 208 11 discriminator 3
	jmp	.L50
.L43:
	.loc 2 212 11
	movzbl	-81(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 212 26
	movb	%al, -81(%rbp)
	andb	$1, -81(%rbp)
	.loc 2 213 11
	jmp	.L50
.L45:
	.loc 2 217 14
	cmpb	$0, -81(%rbp)
	je	.L44
.LBB8:
	.loc 2 218 13
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -80(%rbp)
.LBB9:
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE9:
	testq	%rax, %rax
	jne	.L51
	.loc 2 218 13 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L51:
	.loc 2 218 13 discriminator 3
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movb	$92, (%rax)
.L44:
.LBE8:
	.loc 2 222 26 is_stmt 1
	movb	$1, -81(%rbp)
	.loc 2 223 11
	nop
.L50:
.LBB10:
	.loc 2 226 7
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -16(%rbp)
.LBB11:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE11:
	testq	%rax, %rax
	jne	.L52
	.loc 2 226 7 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L52:
	.loc 2 226 7 discriminator 3
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-104(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.LBE10:
	.loc 2 227 7 is_stmt 1 discriminator 3
	addq	$1, -104(%rbp)
.L42:
	.loc 2 199 10
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 199 9
	testb	%al, %al
	jne	.L53
	.loc 2 229 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	append_quoted, .-append_quoted
	.section	.rodata
.LC95:
	.string	"TERM"
.LC96:
	.string	"none"
	.align 8
.LC97:
	.string	"%s:%lu: invalid line;  missing second token"
.LC98:
	.string	"OPTIONS"
.LC99:
	.string	"COLOR"
.LC100:
	.string	"EIGHTBIT"
.LC101:
	.string	"<internal>"
	.align 8
.LC102:
	.string	"%s:%lu: unrecognized keyword %s"
	.text
	.type	dc_parse_stream, @function
dc_parse_stream:
.LFB50:
	.loc 2 240 1
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
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	.loc 2 240 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 241 10
	movq	$0, -200(%rbp)
	.loc 2 242 15
	leaq	G_line(%rip), %rax
	movq	%rax, -192(%rbp)
	.loc 2 243 9
	movq	$0, -232(%rbp)
	.loc 2 244 10
	movq	$0, -224(%rbp)
	.loc 2 247 8
	movb	$1, -242(%rbp)
	.loc 2 250 58
	movl	$3, -240(%rbp)
	.loc 2 253 10
	leaq	.LC95(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -176(%rbp)
	.loc 2 254 6
	cmpq	$0, -176(%rbp)
	je	.L55
	.loc 2 254 23 discriminator 1
	movq	-176(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 254 20 discriminator 1
	testb	%al, %al
	jne	.L92
.L55:
	.loc 2 255 10
	leaq	.LC96(%rip), %rax
	movq	%rax, -176(%rbp)
.L92:
.LBB12:
	.loc 2 262 7
	addq	$1, -200(%rbp)
	.loc 2 264 10
	cmpq	$0, -264(%rbp)
	je	.L57
	.loc 2 266 15
	movq	-264(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	leaq	-232(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getline@PLT
	.loc 2 266 14
	testq	%rax, %rax
	jg	.L58
	.loc 2 268 15
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 269 15
	jmp	.L59
.L58:
	.loc 2 271 16
	movq	-232(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	.L60
.L57:
	.loc 2 275 37
	leaq	4304+G_line(%rip), %rax
	.loc 2 275 14
	cmpq	%rax, -192(%rbp)
	je	.L95
	.loc 2 277 16
	movq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
	.loc 2 278 26
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 278 23
	addq	$1, %rax
	addq	%rax, -192(%rbp)
.L60:
	.loc 2 281 7
	leaq	-208(%rbp), %rdx
	leaq	-216(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_line
	.loc 2 283 17
	movq	-216(%rbp), %rax
	.loc 2 283 10
	testq	%rax, %rax
	je	.L96
	.loc 2 286 15
	movq	-208(%rbp), %rax
	.loc 2 286 10
	testq	%rax, %rax
	jne	.L64
	.loc 2 288 11
	movq	-272(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 288 24
	leaq	.LC97(%rip), %rdi
	call	gettext@PLT
	.loc 2 288 11
	movq	-200(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 290 14
	movb	$0, -242(%rbp)
	.loc 2 291 11
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 292 11
	jmp	.L90
.L64:
	.loc 2 295 20
	movb	$0, -241(%rbp)
	.loc 2 296 11
	movq	-216(%rbp), %rax
	leaq	.LC95(%rip), %rsi
	movq	%rax, %rdi
	call	c_strcasecmp@PLT
	.loc 2 296 10
	testl	%eax, %eax
	jne	.L65
	.loc 2 298 15
	movq	-208(%rbp), %rax
	movq	-176(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fnmatch@PLT
	.loc 2 298 14
	testl	%eax, %eax
	jne	.L66
	.loc 2 299 19
	movl	$2, -240(%rbp)
	jmp	.L67
.L66:
	.loc 2 300 19
	cmpl	$2, -240(%rbp)
	je	.L67
	.loc 2 301 19
	movl	$0, -240(%rbp)
	jmp	.L67
.L65:
	.loc 2 305 14
	cmpl	$2, -240(%rbp)
	jne	.L68
	.loc 2 306 19
	movl	$1, -240(%rbp)
.L68:
	.loc 2 308 14
	cmpl	$0, -240(%rbp)
	je	.L69
	.loc 2 310 24
	movq	-216(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 310 18
	cmpb	$46, %al
	jne	.L70
.LBB13:
	.loc 2 312 19
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -72(%rbp)
.LBB14:
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE14:
	testq	%rax, %rax
	jne	.L71
	.loc 2 312 19 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L71:
	.loc 2 312 19 discriminator 3
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movb	$42, (%rax)
.LBE13:
	.loc 2 313 19 is_stmt 1 discriminator 3
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	append_quoted
.LBB15:
	.loc 2 314 19 discriminator 3
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -56(%rbp)
.LBB16:
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE16:
	testq	%rax, %rax
	jne	.L72
	.loc 2 314 19 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L72:
	.loc 2 314 19 discriminator 3
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movb	$61, (%rax)
.LBE15:
	.loc 2 315 19 is_stmt 1 discriminator 3
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	append_quoted
.LBB17:
	.loc 2 316 19 discriminator 3
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -40(%rbp)
.LBB18:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE18:
	testq	%rax, %rax
	jne	.L73
	.loc 2 316 19 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L73:
	.loc 2 316 19 discriminator 3
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movb	$58, (%rax)
.LBE17:
	jmp	.L67
.L70:
	.loc 2 318 29 is_stmt 1
	movq	-216(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 318 23
	cmpb	$42, %al
	jne	.L74
	.loc 2 320 19
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	append_quoted
.LBB19:
	.loc 2 321 19
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -104(%rbp)
.LBB20:
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE20:
	testq	%rax, %rax
	jne	.L75
	.loc 2 321 19 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L75:
	.loc 2 321 19 discriminator 3
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movb	$61, (%rax)
.LBE19:
	.loc 2 322 19 is_stmt 1 discriminator 3
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	append_quoted
.LBB21:
	.loc 2 323 19 discriminator 3
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -88(%rbp)
.LBB22:
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE22:
	testq	%rax, %rax
	jne	.L76
	.loc 2 323 19 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L76:
	.loc 2 323 19 discriminator 3
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-88(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movb	$58, (%rax)
.LBE21:
	jmp	.L67
.L74:
	.loc 2 325 24 is_stmt 1
	movq	-216(%rbp), %rax
	leaq	.LC98(%rip), %rsi
	movq	%rax, %rdi
	call	c_strcasecmp@PLT
	.loc 2 325 23
	testl	%eax, %eax
	je	.L67
	.loc 2 326 27
	movq	-216(%rbp), %rax
	leaq	.LC99(%rip), %rsi
	movq	%rax, %rdi
	call	c_strcasecmp@PLT
	.loc 2 326 24
	testl	%eax, %eax
	je	.L67
	.loc 2 327 27
	movq	-216(%rbp), %rax
	leaq	.LC100(%rip), %rsi
	movq	%rax, %rdi
	call	c_strcasecmp@PLT
	.loc 2 327 24
	testl	%eax, %eax
	je	.L67
.LBB23:
	.loc 2 335 26
	movl	$0, -236(%rbp)
	.loc 2 335 19
	jmp	.L77
.L80:
	.loc 2 336 25
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	slack_codes(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	c_strcasecmp@PLT
	.loc 2 336 24
	testl	%eax, %eax
	je	.L97
	.loc 2 335 55 discriminator 2
	addl	$1, -236(%rbp)
.L77:
	.loc 2 335 42 discriminator 1
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	slack_codes(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 335 19 discriminator 1
	testq	%rax, %rax
	jne	.L80
	jmp	.L79
.L97:
	.loc 2 337 23
	nop
.L79:
	.loc 2 339 34
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	slack_codes(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 339 22
	testq	%rax, %rax
	je	.L81
.LBB24:
	.loc 2 341 23
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -168(%rbp)
.LBB25:
	movq	-168(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE25:
	testq	%rax, %rax
	jne	.L82
	.loc 2 341 23 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L82:
	.loc 2 341 23 discriminator 3
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	ls_codes(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rsi
	movq	-168(%rbp), %rcx
	movq	%rsi, 24(%rcx)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.LBE24:
.LBB26:
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -152(%rbp)
.LBB27:
	movq	-152(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE27:
	testq	%rax, %rax
	jne	.L83
	.loc 2 341 23 discriminator 4
	movq	-152(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L83:
	.loc 2 341 23 discriminator 6
	movl	-236(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	ls_codes(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rsi
	movq	-152(%rbp), %rcx
	movq	%rsi, 24(%rcx)
	movzbl	1(%rdx), %edx
	movb	%dl, (%rax)
.LBE26:
.LBB28:
	.loc 2 342 23 is_stmt 1 discriminator 6
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -136(%rbp)
.LBB29:
	movq	-136(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE29:
	testq	%rax, %rax
	jne	.L84
	.loc 2 342 23 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L84:
	.loc 2 342 23 discriminator 3
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-136(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movb	$61, (%rax)
.LBE28:
	.loc 2 343 23 is_stmt 1 discriminator 3
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	append_quoted
.LBB30:
	.loc 2 344 23 discriminator 3
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -120(%rbp)
.LBB31:
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE31:
	testq	%rax, %rax
	jne	.L85
	.loc 2 344 23 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_obstack_newchunk@PLT
.L85:
	.loc 2 344 23 discriminator 3
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-120(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movb	$58, (%rax)
.LBE30:
	jmp	.L67
.L81:
	.loc 2 348 36 is_stmt 1
	movb	$1, -241(%rbp)
	jmp	.L67
.L69:
.LBE23:
	.loc 2 354 28
	movb	$1, -241(%rbp)
.L67:
	.loc 2 358 10
	cmpb	$0, -241(%rbp)
	je	.L86
	.loc 2 358 24 discriminator 1
	cmpl	$2, -240(%rbp)
	je	.L87
	.loc 2 358 49 discriminator 2
	cmpl	$1, -240(%rbp)
	jne	.L86
.L87:
	.loc 2 360 11
	movq	-216(%rbp), %r12
	cmpq	$0, -272(%rbp)
	je	.L88
	.loc 2 361 30
	movq	-272(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	jmp	.L89
.L88:
	.loc 2 361 50
	leaq	.LC101(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
.L89:
	.loc 2 360 24
	leaq	.LC102(%rip), %rdi
	call	gettext@PLT
	.loc 2 360 11
	movq	-200(%rbp), %rdx
	movq	%r12, %r9
	movq	%rdx, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 363 14
	movb	$0, -242(%rbp)
.L86:
	.loc 2 366 7
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 367 7
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L92
.L95:
	.loc 2 276 13
	nop
.L59:
.LBE12:
	.loc 2 370 10
	movzbl	-242(%rbp), %eax
	.loc 2 371 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L93
	jmp	.L94
.L96:
.LBB32:
	.loc 2 284 9
	nop
.L90:
.LBE32:
	.loc 2 258 5 discriminator 2
	jmp	.L92
.L94:
	.loc 2 371 1
	call	__stack_chk_fail@PLT
.L93:
	addq	$256, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	dc_parse_stream, .-dc_parse_stream
	.section	.rodata
.LC103:
	.string	"-"
.LC104:
	.string	"r"
.LC105:
	.string	"%s"
	.text
	.type	dc_parse_file, @function
dc_parse_file:
.LFB51:
	.loc 2 375 1
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
	.loc 2 378 9
	movq	-40(%rbp), %rax
	leaq	.LC103(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 378 6
	testl	%eax, %eax
	je	.L99
	.loc 2 378 34 discriminator 1
	movq	stdin(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC104(%rip), %rsi
	movq	%rax, %rdi
	call	freopen_safer@PLT
	.loc 2 378 31 discriminator 1
	testq	%rax, %rax
	jne	.L99
	.loc 2 380 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 380 17
	call	__errno_location@PLT
	.loc 2 380 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC105(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 381 14
	movl	$0, %eax
	jmp	.L100
.L99:
	.loc 2 384 8
	movq	stdin(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dc_parse_stream
	movb	%al, -17(%rbp)
	.loc 2 386 7
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 386 6
	testl	%eax, %eax
	je	.L101
	.loc 2 388 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 388 17
	call	__errno_location@PLT
	.loc 2 388 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC105(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 389 14
	movl	$0, %eax
	jmp	.L100
.L101:
	.loc 2 392 10
	movzbl	-17(%rbp), %eax
.L100:
	.loc 2 393 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	dc_parse_file, .-dc_parse_file
	.section	.rodata
.LC106:
	.string	"/usr/local/share/locale"
.LC107:
	.string	"H. Peter Anvin"
.LC108:
	.string	"bcp"
	.align 8
.LC109:
	.string	"the options to output dircolors' internal database and\nto select a shell syntax are mutually exclusive"
.LC110:
	.string	"extra operand %s"
	.align 8
.LC111:
	.string	"file operands cannot be combined with --print-database (-p)"
.LC112:
	.string	"%s\n"
	.align 8
.LC113:
	.string	"no SHELL environment variable, and no shell type option given"
.LC114:
	.string	"LS_COLORS='"
.LC115:
	.string	"';\nexport LS_COLORS\n"
.LC116:
	.string	"setenv LS_COLORS '"
.LC117:
	.string	"'\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB52:
	.loc 2 397 1
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
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 2 398 8
	movb	$1, -90(%rbp)
	.loc 2 400 21
	movl	$2, -88(%rbp)
	.loc 2 401 8
	movb	$0, -89(%rbp)
	.loc 2 404 3
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 405 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 406 3
	leaq	.LC106(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 407 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 409 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 411 9
	jmp	.L103
.L110:
	.loc 2 412 5
	cmpl	$112, -84(%rbp)
	je	.L104
	cmpl	$112, -84(%rbp)
	jg	.L105
	cmpl	$99, -84(%rbp)
	je	.L106
	cmpl	$99, -84(%rbp)
	jg	.L105
	cmpl	$98, -84(%rbp)
	je	.L107
	cmpl	$98, -84(%rbp)
	jg	.L105
	cmpl	$-131, -84(%rbp)
	je	.L108
	cmpl	$-130, -84(%rbp)
	je	.L109
	jmp	.L105
.L107:
	.loc 2 415 16
	movl	$0, -88(%rbp)
	.loc 2 416 9
	jmp	.L103
.L106:
	.loc 2 419 16
	movl	$1, -88(%rbp)
	.loc 2 420 9
	jmp	.L103
.L104:
	.loc 2 423 24
	movb	$1, -89(%rbp)
	.loc 2 424 9
	jmp	.L103
.L109:
	.loc 2 426 7
	movl	$0, %edi
	call	usage
.L108:
	.loc 2 428 7
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC107(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC92(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L105:
	.loc 2 431 9
	movl	$1, %edi
	call	usage
.L103:
	.loc 2 411 18
	movq	-112(%rbp), %rsi
	movl	-100(%rbp), %eax
	movl	$0, %r8d
	leaq	long_options(%rip), %rcx
	leaq	.LC108(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -84(%rbp)
	.loc 2 411 9
	cmpl	$-1, -84(%rbp)
	jne	.L110
	.loc 2 434 8
	movl	optind(%rip), %eax
	subl	%eax, -100(%rbp)
	.loc 2 435 8
	movl	optind(%rip), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -112(%rbp)
	.loc 2 439 6
	cmpb	$0, -89(%rbp)
	je	.L111
	.loc 2 439 22 discriminator 1
	cmpl	$2, -88(%rbp)
	je	.L111
	.loc 2 442 14
	leaq	.LC109(%rip), %rdi
	call	gettext@PLT
	.loc 2 441 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 444 7
	movl	$1, %edi
	call	usage
.L111:
	.loc 2 447 8
	movzbl	-89(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 447 6
	cmpl	%eax, -100(%rbp)
	jle	.L112
	.loc 2 449 55
	movzbl	-89(%rbp), %eax
	xorl	$1, %eax
	.loc 2 449 54
	testb	%al, %al
	je	.L113
	.loc 2 449 54 is_stmt 0 discriminator 1
	movl	$8, %edx
	jmp	.L114
.L113:
	.loc 2 449 54 discriminator 2
	movl	$0, %edx
.L114:
	.loc 2 449 54 discriminator 4
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 449 7 is_stmt 1 discriminator 4
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 449 20 discriminator 4
	leaq	.LC110(%rip), %rdi
	call	gettext@PLT
	.loc 2 449 7 discriminator 4
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 450 10 discriminator 4
	cmpb	$0, -89(%rbp)
	je	.L115
	.loc 2 451 9
	leaq	.LC111(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	leaq	.LC112(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L115:
	.loc 2 454 7
	movl	$1, %edi
	call	usage
.L112:
	.loc 2 457 6
	cmpb	$0, -89(%rbp)
	je	.L116
.LBB33:
	.loc 2 459 19
	leaq	G_line(%rip), %rax
	movq	%rax, -80(%rbp)
	.loc 2 460 13
	jmp	.L117
.L118:
	.loc 2 462 11
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 2 463 16
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 463 13
	addq	$1, %rax
	addq	%rax, -80(%rbp)
.L117:
	.loc 2 460 16
	leaq	G_line(%rip), %rdx
	movq	-80(%rbp), %rax
	subq	%rdx, %rax
	.loc 2 460 13
	cmpq	$4303, %rax
	jbe	.L118
	jmp	.L119
.L116:
.LBE33:
	.loc 2 469 10
	cmpl	$2, -88(%rbp)
	jne	.L120
	.loc 2 471 20
	call	guess_shell_syntax
	movl	%eax, -88(%rbp)
	.loc 2 472 14
	cmpl	$2, -88(%rbp)
	jne	.L120
.LBB34:
	.loc 2 474 15
	leaq	.LC113(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L120:
.LBE34:
	.loc 2 479 7
	movq	free@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	movq	malloc@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	leaq	lsc_obstack(%rip), %rdi
	call	_obstack_begin@PLT
	.loc 2 480 10
	cmpl	$0, -100(%rbp)
	jne	.L121
	.loc 2 481 14
	movl	$0, %esi
	movl	$0, %edi
	call	dc_parse_stream
	movb	%al, -90(%rbp)
	jmp	.L122
.L121:
	.loc 2 483 14
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	dc_parse_file
	movb	%al, -90(%rbp)
.L122:
	.loc 2 485 10
	cmpb	$0, -90(%rbp)
	je	.L119
.LBB35:
.LBB36:
	.loc 2 487 24
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.LBE36:
	.loc 2 487 18
	movq	%rax, -48(%rbp)
.LBB37:
	.loc 2 488 21
	leaq	lsc_obstack(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L123
	.loc 2 488 21 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movzbl	80(%rax), %edx
	orl	$2, %edx
	movb	%dl, 80(%rax)
.L123:
	.loc 2 488 21 discriminator 3
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	notq	%rax
	andq	%rdx, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	%rax, %rcx
	jbe	.L124
	.loc 2 488 21 discriminator 4
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
.L124:
	.loc 2 488 21 discriminator 6
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
.LBE37:
	.loc 2 488 17 is_stmt 1 discriminator 6
	movq	%rax, -24(%rbp)
	.loc 2 492 14 discriminator 6
	cmpl	$0, -88(%rbp)
	jne	.L125
	.loc 2 494 22
	leaq	.LC114(%rip), %rax
	movq	%rax, -72(%rbp)
	.loc 2 495 22
	leaq	.LC115(%rip), %rax
	movq	%rax, -64(%rbp)
	jmp	.L126
.L125:
	.loc 2 499 22
	leaq	.LC116(%rip), %rax
	movq	%rax, -72(%rbp)
	.loc 2 500 22
	leaq	.LC117(%rip), %rax
	movq	%rax, -64(%rbp)
.L126:
	.loc 2 502 11
	movq	stdout(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 503 11
	movq	stdout(%rip), %rcx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	.loc 2 504 11
	movq	stdout(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L119:
.LBE35:
	.loc 2 508 28
	movzbl	-90(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 509 1
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "./lib/sys/select.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 9 "/usr/include/time.h"
	.file 10 "/usr/include/signal.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/errno.h"
	.file 13 "src/version.h"
	.file 14 "./lib/exitfail.h"
	.file 15 "./lib/timespec.h"
	.file 16 "/usr/include/ctype.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 18 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 19 "/usr/include/stdio.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/error.h"
	.file 25 "./lib/obstack.h"
	.file 26 "./lib/quote.h"
	.file 27 "src/dircolors.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x11df
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF193
	.byte	0xc
	.long	.LASF194
	.long	.LASF195
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF7
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x63
	.uleb128 0x5
	.long	.LASF8
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x63
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0x63
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0x96
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x8
	.long	0x96
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0x7
	.byte	0x12
	.long	0x82
	.uleb128 0x5
	.long	.LASF12
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x9
	.long	.LASF15
	.byte	0x6
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0xa
	.long	.LASF16
	.byte	0x7
	.byte	0x24
	.byte	0xe
	.long	0x90
	.uleb128 0xa
	.long	.LASF17
	.byte	0x7
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	.LASF18
	.byte	0x7
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	.LASF19
	.byte	0x7
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xb
	.long	.LASF53
	.byte	0x20
	.byte	0x8
	.byte	0x32
	.byte	0x8
	.long	0x147
	.uleb128 0xc
	.long	.LASF20
	.byte	0x8
	.byte	0x34
	.byte	0xf
	.long	0x14c
	.byte	0
	.uleb128 0xc
	.long	.LASF21
	.byte	0x8
	.byte	0x37
	.byte	0x7
	.long	0x57
	.byte	0x8
	.uleb128 0xc
	.long	.LASF22
	.byte	0x8
	.byte	0x38
	.byte	0x8
	.long	0x157
	.byte	0x10
	.uleb128 0xd
	.string	"val"
	.byte	0x8
	.byte	0x39
	.byte	0x7
	.long	0x57
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x105
	.uleb128 0x7
	.byte	0x8
	.long	0x9d
	.uleb128 0x8
	.long	0x14c
	.uleb128 0x7
	.byte	0x8
	.long	0x57
	.uleb128 0xe
	.long	0x90
	.long	0x16d
	.uleb128 0xf
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	.LASF23
	.byte	0x9
	.byte	0x9f
	.byte	0xe
	.long	0x15d
	.uleb128 0xa
	.long	.LASF24
	.byte	0x9
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	.LASF25
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.long	0x63
	.uleb128 0xa
	.long	.LASF26
	.byte	0x9
	.byte	0xa6
	.byte	0xe
	.long	0x15d
	.uleb128 0xa
	.long	.LASF27
	.byte	0x9
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	.LASF28
	.byte	0x9
	.byte	0xaf
	.byte	0x11
	.long	0x63
	.uleb128 0x9
	.long	.LASF29
	.byte	0x9
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF30
	.uleb128 0x10
	.uleb128 0x4
	.long	0x1c9
	.uleb128 0x7
	.byte	0x8
	.long	0x1c9
	.uleb128 0xe
	.long	0x152
	.long	0x1e5
	.uleb128 0xf
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x1d5
	.uleb128 0x9
	.long	.LASF31
	.byte	0xa
	.value	0x11e
	.byte	0x1a
	.long	0x1e5
	.uleb128 0x9
	.long	.LASF32
	.byte	0xa
	.value	0x11f
	.byte	0x1a
	.long	0x1e5
	.uleb128 0x9
	.long	.LASF33
	.byte	0xb
	.value	0x21f
	.byte	0xf
	.long	0x211
	.uleb128 0x7
	.byte	0x8
	.long	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0xb
	.value	0x221
	.byte	0xf
	.long	0x211
	.uleb128 0xa
	.long	.LASF35
	.byte	0xc
	.byte	0x2d
	.byte	0xe
	.long	0x90
	.uleb128 0xa
	.long	.LASF36
	.byte	0xc
	.byte	0x2e
	.byte	0xe
	.long	0x90
	.uleb128 0xa
	.long	.LASF37
	.byte	0xd
	.byte	0x1
	.byte	0x14
	.long	0x14c
	.uleb128 0xa
	.long	.LASF38
	.byte	0xe
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0xf
	.byte	0x29
	.byte	0x6
	.long	0x26c
	.uleb128 0x12
	.long	.LASF39
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0xf
	.byte	0x2a
	.byte	0x6
	.long	0x281
	.uleb128 0x13
	.long	.LASF40
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x10
	.byte	0x2f
	.byte	0x1
	.long	0x2e0
	.uleb128 0x14
	.long	.LASF41
	.value	0x100
	.uleb128 0x14
	.long	.LASF42
	.value	0x200
	.uleb128 0x14
	.long	.LASF43
	.value	0x400
	.uleb128 0x14
	.long	.LASF44
	.value	0x800
	.uleb128 0x14
	.long	.LASF45
	.value	0x1000
	.uleb128 0x14
	.long	.LASF46
	.value	0x2000
	.uleb128 0x14
	.long	.LASF47
	.value	0x4000
	.uleb128 0x14
	.long	.LASF48
	.value	0x8000
	.uleb128 0x13
	.long	.LASF49
	.byte	0x1
	.uleb128 0x13
	.long	.LASF50
	.byte	0x2
	.uleb128 0x13
	.long	.LASF51
	.byte	0x4
	.uleb128 0x13
	.long	.LASF52
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF54
	.byte	0xd8
	.byte	0x11
	.byte	0x31
	.byte	0x8
	.long	0x467
	.uleb128 0xc
	.long	.LASF55
	.byte	0x11
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0xc
	.long	.LASF56
	.byte	0x11
	.byte	0x36
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0xc
	.long	.LASF57
	.byte	0x11
	.byte	0x37
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0xc
	.long	.LASF58
	.byte	0x11
	.byte	0x38
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0xc
	.long	.LASF59
	.byte	0x11
	.byte	0x39
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0xc
	.long	.LASF60
	.byte	0x11
	.byte	0x3a
	.byte	0x9
	.long	0x90
	.byte	0x28
	.uleb128 0xc
	.long	.LASF61
	.byte	0x11
	.byte	0x3b
	.byte	0x9
	.long	0x90
	.byte	0x30
	.uleb128 0xc
	.long	.LASF62
	.byte	0x11
	.byte	0x3c
	.byte	0x9
	.long	0x90
	.byte	0x38
	.uleb128 0xc
	.long	.LASF63
	.byte	0x11
	.byte	0x3d
	.byte	0x9
	.long	0x90
	.byte	0x40
	.uleb128 0xc
	.long	.LASF64
	.byte	0x11
	.byte	0x40
	.byte	0x9
	.long	0x90
	.byte	0x48
	.uleb128 0xc
	.long	.LASF65
	.byte	0x11
	.byte	0x41
	.byte	0x9
	.long	0x90
	.byte	0x50
	.uleb128 0xc
	.long	.LASF66
	.byte	0x11
	.byte	0x42
	.byte	0x9
	.long	0x90
	.byte	0x58
	.uleb128 0xc
	.long	.LASF67
	.byte	0x11
	.byte	0x44
	.byte	0x16
	.long	0x480
	.byte	0x60
	.uleb128 0xc
	.long	.LASF68
	.byte	0x11
	.byte	0x46
	.byte	0x14
	.long	0x486
	.byte	0x68
	.uleb128 0xc
	.long	.LASF69
	.byte	0x11
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0xc
	.long	.LASF70
	.byte	0x11
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0xc
	.long	.LASF71
	.byte	0x11
	.byte	0x4a
	.byte	0xb
	.long	0x6a
	.byte	0x78
	.uleb128 0xc
	.long	.LASF72
	.byte	0x11
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0xc
	.long	.LASF73
	.byte	0x11
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0xc
	.long	.LASF74
	.byte	0x11
	.byte	0x4f
	.byte	0x8
	.long	0x48c
	.byte	0x83
	.uleb128 0xc
	.long	.LASF75
	.byte	0x11
	.byte	0x51
	.byte	0xf
	.long	0x49c
	.byte	0x88
	.uleb128 0xc
	.long	.LASF76
	.byte	0x11
	.byte	0x59
	.byte	0xd
	.long	0x76
	.byte	0x90
	.uleb128 0xc
	.long	.LASF77
	.byte	0x11
	.byte	0x5b
	.byte	0x17
	.long	0x4a7
	.byte	0x98
	.uleb128 0xc
	.long	.LASF78
	.byte	0x11
	.byte	0x5c
	.byte	0x19
	.long	0x4b2
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF79
	.byte	0x11
	.byte	0x5d
	.byte	0x14
	.long	0x486
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF80
	.byte	0x11
	.byte	0x5e
	.byte	0x9
	.long	0x8e
	.byte	0xb0
	.uleb128 0xc
	.long	.LASF81
	.byte	0x11
	.byte	0x5f
	.byte	0xa
	.long	0xae
	.byte	0xb8
	.uleb128 0xc
	.long	.LASF82
	.byte	0x11
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0xc
	.long	.LASF83
	.byte	0x11
	.byte	0x62
	.byte	0x8
	.long	0x4b8
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF84
	.byte	0x12
	.byte	0x7
	.byte	0x19
	.long	0x2e0
	.uleb128 0x15
	.long	.LASF196
	.byte	0x11
	.byte	0x2b
	.byte	0xe
	.uleb128 0x16
	.long	.LASF85
	.uleb128 0x7
	.byte	0x8
	.long	0x47b
	.uleb128 0x7
	.byte	0x8
	.long	0x2e0
	.uleb128 0xe
	.long	0x96
	.long	0x49c
	.uleb128 0xf
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x473
	.uleb128 0x16
	.long	.LASF86
	.uleb128 0x7
	.byte	0x8
	.long	0x4a2
	.uleb128 0x16
	.long	.LASF87
	.uleb128 0x7
	.byte	0x8
	.long	0x4ad
	.uleb128 0xe
	.long	0x96
	.long	0x4c8
	.uleb128 0xf
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.long	.LASF88
	.byte	0x13
	.byte	0x89
	.byte	0xe
	.long	0x4d4
	.uleb128 0x7
	.byte	0x8
	.long	0x467
	.uleb128 0xa
	.long	.LASF89
	.byte	0x13
	.byte	0x8a
	.byte	0xe
	.long	0x4d4
	.uleb128 0xa
	.long	.LASF90
	.byte	0x13
	.byte	0x8b
	.byte	0xe
	.long	0x4d4
	.uleb128 0xa
	.long	.LASF91
	.byte	0x14
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	0x152
	.long	0x509
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.long	0x4fe
	.uleb128 0xa
	.long	.LASF92
	.byte	0x14
	.byte	0x1b
	.byte	0x1a
	.long	0x509
	.uleb128 0xa
	.long	.LASF93
	.byte	0x14
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	.LASF94
	.byte	0x14
	.byte	0x1f
	.byte	0x1a
	.long	0x509
	.uleb128 0x18
	.byte	0x5
	.byte	0x4
	.long	0x57
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x550
	.uleb128 0x19
	.long	.LASF95
	.sleb128 -130
	.uleb128 0x19
	.long	.LASF96
	.sleb128 -131
	.byte	0
	.uleb128 0xe
	.long	0x9d
	.long	0x55b
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.long	0x550
	.uleb128 0xa
	.long	.LASF97
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x55b
	.uleb128 0xa
	.long	.LASF98
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x14c
	.uleb128 0x1a
	.long	.LASF139
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x5cd
	.uleb128 0x13
	.long	.LASF99
	.byte	0
	.uleb128 0x13
	.long	.LASF100
	.byte	0x1
	.uleb128 0x13
	.long	.LASF101
	.byte	0x2
	.uleb128 0x13
	.long	.LASF102
	.byte	0x3
	.uleb128 0x13
	.long	.LASF103
	.byte	0x4
	.uleb128 0x13
	.long	.LASF104
	.byte	0x5
	.uleb128 0x13
	.long	.LASF105
	.byte	0x6
	.uleb128 0x13
	.long	.LASF106
	.byte	0x7
	.uleb128 0x13
	.long	.LASF107
	.byte	0x8
	.uleb128 0x13
	.long	.LASF108
	.byte	0x9
	.uleb128 0x13
	.long	.LASF109
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x578
	.uleb128 0x9
	.long	.LASF110
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x509
	.uleb128 0xe
	.long	0x5cd
	.long	0x5ea
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.long	0x5df
	.uleb128 0x9
	.long	.LASF111
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x5ea
	.uleb128 0xe
	.long	0x9d
	.long	0x60d
	.uleb128 0x1b
	.long	0x42
	.value	0x10cf
	.byte	0
	.uleb128 0x8
	.long	0x5fc
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x1b
	.byte	0x1
	.byte	0x13
	.long	0x60d
	.uleb128 0x9
	.byte	0x3
	.quad	G_line
	.uleb128 0xa
	.long	.LASF112
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x1cf
	.uleb128 0xa
	.long	.LASF113
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x3b
	.uleb128 0xa
	.long	.LASF114
	.byte	0x18
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0xb
	.long	.LASF115
	.byte	0x10
	.byte	0x19
	.byte	0xa7
	.byte	0x8
	.long	0x681
	.uleb128 0xc
	.long	.LASF116
	.byte	0x19
	.byte	0xa9
	.byte	0x9
	.long	0x90
	.byte	0
	.uleb128 0xc
	.long	.LASF117
	.byte	0x19
	.byte	0xaa
	.byte	0x1a
	.long	0x681
	.byte	0x8
	.uleb128 0xc
	.long	.LASF118
	.byte	0x19
	.byte	0xab
	.byte	0x8
	.long	0x687
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x64c
	.uleb128 0xe
	.long	0x96
	.long	0x696
	.uleb128 0x1d
	.long	0x42
	.byte	0
	.uleb128 0x1e
	.byte	0x8
	.byte	0x19
	.byte	0xb5
	.byte	0x3
	.long	0x6b4
	.uleb128 0x1f
	.string	"i"
	.byte	0x19
	.byte	0xb7
	.byte	0x15
	.long	0xae
	.uleb128 0x1f
	.string	"p"
	.byte	0x19
	.byte	0xb8
	.byte	0xb
	.long	0x8e
	.byte	0
	.uleb128 0x1e
	.byte	0x8
	.byte	0x19
	.byte	0xbd
	.byte	0x3
	.long	0x6d6
	.uleb128 0x20
	.long	.LASF119
	.byte	0x19
	.byte	0xbf
	.byte	0xd
	.long	0x6e5
	.uleb128 0x20
	.long	.LASF120
	.byte	0x19
	.byte	0xc0
	.byte	0xd
	.long	0x6ff
	.byte	0
	.uleb128 0x21
	.long	0x8e
	.long	0x6e5
	.uleb128 0x22
	.long	0xae
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x6d6
	.uleb128 0x21
	.long	0x8e
	.long	0x6ff
	.uleb128 0x22
	.long	0x8e
	.uleb128 0x22
	.long	0xae
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x6eb
	.uleb128 0x1e
	.byte	0x8
	.byte	0x19
	.byte	0xc2
	.byte	0x3
	.long	0x727
	.uleb128 0x20
	.long	.LASF119
	.byte	0x19
	.byte	0xc4
	.byte	0xc
	.long	0x732
	.uleb128 0x20
	.long	.LASF120
	.byte	0x19
	.byte	0xc5
	.byte	0xc
	.long	0x748
	.byte	0
	.uleb128 0x23
	.long	0x732
	.uleb128 0x22
	.long	0x8e
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x727
	.uleb128 0x23
	.long	0x748
	.uleb128 0x22
	.long	0x8e
	.uleb128 0x22
	.long	0x8e
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x738
	.uleb128 0xb
	.long	.LASF121
	.byte	0x58
	.byte	0x19
	.byte	0xae
	.byte	0x8
	.long	0x80e
	.uleb128 0xc
	.long	.LASF122
	.byte	0x19
	.byte	0xb0
	.byte	0x11
	.long	0xae
	.byte	0
	.uleb128 0xc
	.long	.LASF123
	.byte	0x19
	.byte	0xb1
	.byte	0x1a
	.long	0x681
	.byte	0x8
	.uleb128 0xc
	.long	.LASF124
	.byte	0x19
	.byte	0xb2
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0xc
	.long	.LASF125
	.byte	0x19
	.byte	0xb3
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0xc
	.long	.LASF126
	.byte	0x19
	.byte	0xb4
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0xc
	.long	.LASF127
	.byte	0x19
	.byte	0xb9
	.byte	0x5
	.long	0x696
	.byte	0x28
	.uleb128 0xc
	.long	.LASF128
	.byte	0x19
	.byte	0xba
	.byte	0x13
	.long	0xae
	.byte	0x30
	.uleb128 0xc
	.long	.LASF129
	.byte	0x19
	.byte	0xc1
	.byte	0x5
	.long	0x6b4
	.byte	0x38
	.uleb128 0xc
	.long	.LASF130
	.byte	0x19
	.byte	0xc6
	.byte	0x5
	.long	0x705
	.byte	0x40
	.uleb128 0xc
	.long	.LASF131
	.byte	0x19
	.byte	0xc8
	.byte	0x9
	.long	0x8e
	.byte	0x48
	.uleb128 0x24
	.long	.LASF132
	.byte	0x19
	.byte	0xc9
	.byte	0xc
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x24
	.long	.LASF133
	.byte	0x19
	.byte	0xca
	.byte	0xc
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x24
	.long	.LASF134
	.byte	0x19
	.byte	0xce
	.byte	0xc
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	0x74e
	.uleb128 0xa
	.long	.LASF135
	.byte	0x19
	.byte	0xe6
	.byte	0x26
	.long	0x81f
	.uleb128 0x7
	.byte	0x8
	.long	0x1ca
	.uleb128 0xa
	.long	.LASF136
	.byte	0x19
	.byte	0xe9
	.byte	0xc
	.long	0x57
	.uleb128 0x16
	.long	.LASF137
	.uleb128 0xa
	.long	.LASF138
	.byte	0x1a
	.byte	0x19
	.byte	0x1f
	.long	0x831
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x2
	.byte	0x2a
	.byte	0x6
	.long	0x867
	.uleb128 0x13
	.long	.LASF141
	.byte	0
	.uleb128 0x13
	.long	.LASF142
	.byte	0x1
	.uleb128 0x13
	.long	.LASF143
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x2
	.byte	0x3c
	.byte	0x17
	.long	0x74e
	.uleb128 0x9
	.byte	0x3
	.quad	lsc_obstack
	.uleb128 0xe
	.long	0x152
	.long	0x88d
	.uleb128 0xf
	.long	0x42
	.byte	0x25
	.byte	0
	.uleb128 0x8
	.long	0x87d
	.uleb128 0x1c
	.long	.LASF146
	.byte	0x2
	.byte	0x3e
	.byte	0x1a
	.long	0x88d
	.uleb128 0x9
	.byte	0x3
	.quad	slack_codes
	.uleb128 0x1c
	.long	.LASF147
	.byte	0x2
	.byte	0x48
	.byte	0x1a
	.long	0x88d
	.uleb128 0x9
	.byte	0x3
	.quad	ls_codes
	.uleb128 0xe
	.long	0x147
	.long	0x8ce
	.uleb128 0xf
	.long	0x42
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0x8be
	.uleb128 0x1c
	.long	.LASF148
	.byte	0x2
	.byte	0x50
	.byte	0x1c
	.long	0x8ce
	.uleb128 0x9
	.byte	0x3
	.quad	long_options
	.uleb128 0x25
	.long	.LASF183
	.byte	0x2
	.value	0x18c
	.byte	0x1
	.long	0x57
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xa53
	.uleb128 0x26
	.long	.LASF149
	.byte	0x2
	.value	0x18c
	.byte	0xb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x26
	.long	.LASF150
	.byte	0x2
	.value	0x18c
	.byte	0x18
	.long	0x211
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.string	"ok"
	.byte	0x2
	.value	0x18e
	.byte	0x8
	.long	0xa53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -106
	.uleb128 0x28
	.long	.LASF151
	.byte	0x2
	.value	0x18f
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x28
	.long	.LASF152
	.byte	0x2
	.value	0x190
	.byte	0x15
	.long	0x842
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF153
	.byte	0x2
	.value	0x191
	.byte	0x8
	.long	0xa53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -105
	.uleb128 0x29
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x996
	.uleb128 0x27
	.string	"p"
	.byte	0x2
	.value	0x1cb
	.byte	0x13
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2a
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2b
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x27
	.string	"len"
	.byte	0x2
	.value	0x1e7
	.byte	0x12
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"s"
	.byte	0x2
	.value	0x1e8
	.byte	0x11
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF154
	.byte	0x2
	.value	0x1e9
	.byte	0x17
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF155
	.byte	0x2
	.value	0x1ea
	.byte	0x17
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0xa1f
	.uleb128 0x27
	.string	"__o"
	.byte	0x2
	.value	0x1e7
	.byte	0x18
	.long	0xa5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2b
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x28
	.long	.LASF156
	.byte	0x2
	.value	0x1e8
	.byte	0x15
	.long	0xa60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF157
	.byte	0x2
	.value	0x1e8
	.byte	0x15
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF158
	.uleb128 0x7
	.byte	0x8
	.long	0x80e
	.uleb128 0x7
	.byte	0x8
	.long	0x74e
	.uleb128 0x2c
	.long	.LASF160
	.byte	0x2
	.value	0x176
	.byte	0x1
	.long	0xa53
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa9
	.uleb128 0x26
	.long	.LASF159
	.byte	0x2
	.value	0x176
	.byte	0x1c
	.long	0x14c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"ok"
	.byte	0x2
	.value	0x178
	.byte	0x8
	.long	0xa53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x2d
	.long	.LASF161
	.byte	0x2
	.byte	0xef
	.byte	0x1
	.long	0xa53
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xe7e
	.uleb128 0x2e
	.string	"fp"
	.byte	0x2
	.byte	0xef
	.byte	0x18
	.long	0x4d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2f
	.long	.LASF159
	.byte	0x2
	.byte	0xef
	.byte	0x28
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1c
	.long	.LASF162
	.byte	0x2
	.byte	0xf1
	.byte	0xa
	.long	0xae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x1c
	.long	.LASF163
	.byte	0x2
	.byte	0xf2
	.byte	0xf
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1c
	.long	.LASF164
	.byte	0x2
	.byte	0xf3
	.byte	0x9
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x2
	.byte	0xf4
	.byte	0xa
	.long	0xae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1c
	.long	.LASF166
	.byte	0x2
	.byte	0xf5
	.byte	0xf
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1c
	.long	.LASF167
	.byte	0x2
	.byte	0xf6
	.byte	0xf
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x30
	.string	"ok"
	.byte	0x2
	.byte	0xf7
	.byte	0x8
	.long	0xa53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -258
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x2
	.byte	0xfa
	.byte	0x8
	.long	0xb80
	.uleb128 0x13
	.long	.LASF168
	.byte	0
	.uleb128 0x13
	.long	.LASF169
	.byte	0x1
	.uleb128 0x13
	.long	.LASF170
	.byte	0x2
	.uleb128 0x13
	.long	.LASF171
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.long	.LASF172
	.byte	0x2
	.byte	0xfa
	.byte	0x3a
	.long	0xb59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x31
	.long	.Ldebug_ranges0+0
	.uleb128 0x28
	.long	.LASF173
	.byte	0x2
	.value	0x103
	.byte	0xd
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x27
	.string	"arg"
	.byte	0x2
	.value	0x103
	.byte	0x15
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x28
	.long	.LASF174
	.byte	0x2
	.value	0x104
	.byte	0xc
	.long	0xa53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -257
	.uleb128 0x29
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0xc12
	.uleb128 0x27
	.string	"__o"
	.byte	0x2
	.value	0x138
	.byte	0x13
	.long	0xa60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x28
	.long	.LASF156
	.byte	0x2
	.value	0x138
	.byte	0x13
	.long	0xa5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0xc5b
	.uleb128 0x27
	.string	"__o"
	.byte	0x2
	.value	0x13a
	.byte	0x13
	.long	0xa60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x28
	.long	.LASF156
	.byte	0x2
	.value	0x13a
	.byte	0x13
	.long	0xa5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0xca3
	.uleb128 0x27
	.string	"__o"
	.byte	0x2
	.value	0x13c
	.byte	0x13
	.long	0xa60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x28
	.long	.LASF156
	.byte	0x2
	.value	0x13c
	.byte	0x13
	.long	0xa5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0xced
	.uleb128 0x27
	.string	"__o"
	.byte	0x2
	.value	0x141
	.byte	0x13
	.long	0xa60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x28
	.long	.LASF156
	.byte	0x2
	.value	0x141
	.byte	0x13
	.long	0xa5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0xd37
	.uleb128 0x27
	.string	"__o"
	.byte	0x2
	.value	0x143
	.byte	0x13
	.long	0xa60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x28
	.long	.LASF156
	.byte	0x2
	.value	0x143
	.byte	0x13
	.long	0xa5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x27
	.string	"i"
	.byte	0x2
	.value	0x14d
	.byte	0x17
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x29
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0xda1
	.uleb128 0x27
	.string	"__o"
	.byte	0x2
	.value	0x155
	.byte	0x17
	.long	0xa60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2b
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x28
	.long	.LASF156
	.byte	0x2
	.value	0x155
	.byte	0x17
	.long	0xa5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0xdeb
	.uleb128 0x27
	.string	"__o"
	.byte	0x2
	.value	0x155
	.byte	0x17
	.long	0xa60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x28
	.long	.LASF156
	.byte	0x2
	.value	0x155
	.byte	0x17
	.long	0xa5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0xe35
	.uleb128 0x27
	.string	"__o"
	.byte	0x2
	.value	0x156
	.byte	0x17
	.long	0xa60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x28
	.long	.LASF156
	.byte	0x2
	.value	0x156
	.byte	0x17
	.long	0xa5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x27
	.string	"__o"
	.byte	0x2
	.value	0x158
	.byte	0x17
	.long	0xa60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x28
	.long	.LASF156
	.byte	0x2
	.value	0x158
	.byte	0x17
	.long	0xa5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF176
	.byte	0x2
	.byte	0xc3
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x101b
	.uleb128 0x2e
	.string	"str"
	.byte	0x2
	.byte	0xc3
	.byte	0x1c
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1c
	.long	.LASF175
	.byte	0x2
	.byte	0xc5
	.byte	0x8
	.long	0xa53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -97
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0xf04
	.uleb128 0x30
	.string	"__o"
	.byte	0x2
	.byte	0xcc
	.byte	0xb
	.long	0xa60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x2
	.byte	0xcc
	.byte	0xb
	.long	0xa5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0xf4a
	.uleb128 0x30
	.string	"__o"
	.byte	0x2
	.byte	0xcd
	.byte	0xb
	.long	0xa60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x2
	.byte	0xcd
	.byte	0xb
	.long	0xa5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0xf90
	.uleb128 0x30
	.string	"__o"
	.byte	0x2
	.byte	0xce
	.byte	0xb
	.long	0xa60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x2
	.byte	0xce
	.byte	0xb
	.long	0xa5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0xfd8
	.uleb128 0x30
	.string	"__o"
	.byte	0x2
	.byte	0xda
	.byte	0xd
	.long	0xa60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x2
	.byte	0xda
	.byte	0xd
	.long	0xa5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x30
	.string	"__o"
	.byte	0x2
	.byte	0xe2
	.byte	0x7
	.long	0xa60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x2
	.byte	0xe2
	.byte	0x7
	.long	0xa5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF177
	.byte	0x2
	.byte	0x8f
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x1095
	.uleb128 0x2f
	.long	.LASF166
	.byte	0x2
	.byte	0x8f
	.byte	0x19
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF178
	.byte	0x2
	.byte	0x8f
	.byte	0x26
	.long	0x211
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"arg"
	.byte	0x2
	.byte	0x8f
	.byte	0x36
	.long	0x211
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.string	"p"
	.byte	0x2
	.byte	0x91
	.byte	0xf
	.long	0x14c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF179
	.byte	0x2
	.byte	0x92
	.byte	0xf
	.long	0x14c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF180
	.byte	0x2
	.byte	0x93
	.byte	0xf
	.long	0x14c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.long	.LASF181
	.byte	0x2
	.byte	0x7e
	.byte	0x1
	.long	0x842
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x10c7
	.uleb128 0x1c
	.long	.LASF182
	.byte	0x2
	.byte	0x80
	.byte	0x9
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF184
	.byte	0x2
	.byte	0x5d
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x10f5
	.uleb128 0x2f
	.long	.LASF185
	.byte	0x2
	.byte	0x5d
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x34
	.long	.LASF186
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x119a
	.uleb128 0x26
	.long	.LASF187
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x35
	.long	.LASF188
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1150
	.uleb128 0x36
	.long	.LASF187
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x14c
	.byte	0
	.uleb128 0x36
	.long	.LASF189
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x14c
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x1125
	.uleb128 0x28
	.long	.LASF188
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x11aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.long	.LASF189
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x28
	.long	.LASF190
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x11af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.long	.LASF191
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x14c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xe
	.long	0x1150
	.long	0x11aa
	.uleb128 0xf
	.long	0x42
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x119a
	.uleb128 0x7
	.byte	0x8
	.long	0x1150
	.uleb128 0x37
	.long	.LASF192
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0x2d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x96
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x34
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
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"exit_failure"
.LASF7:
	.string	"__off_t"
.LASF48:
	.string	"_ISgraph"
.LASF107:
	.string	"locale_quoting_style"
.LASF68:
	.string	"_chain"
.LASF96:
	.string	"GETOPT_VERSION_CHAR"
.LASF139:
	.string	"quoting_style"
.LASF12:
	.string	"size_t"
.LASF74:
	.string	"_shortbuf"
.LASF171:
	.string	"ST_GLOBAL"
.LASF112:
	.string	"error_print_progname"
.LASF100:
	.string	"shell_quoting_style"
.LASF129:
	.string	"chunkfun"
.LASF95:
	.string	"GETOPT_HELP_CHAR"
.LASF62:
	.string	"_IO_buf_base"
.LASF118:
	.string	"contents"
.LASF13:
	.string	"long long unsigned int"
.LASF175:
	.string	"need_backslash"
.LASF65:
	.string	"_IO_backup_base"
.LASF179:
	.string	"keyword_start"
.LASF116:
	.string	"limit"
.LASF143:
	.string	"SHELL_SYNTAX_UNKNOWN"
.LASF43:
	.string	"_ISalpha"
.LASF77:
	.string	"_codecvt"
.LASF44:
	.string	"_ISdigit"
.LASF25:
	.string	"__timezone"
.LASF14:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF111:
	.string	"quoting_style_vals"
.LASF187:
	.string	"program"
.LASF106:
	.string	"escape_quoting_style"
.LASF153:
	.string	"print_database"
.LASF99:
	.string	"literal_quoting_style"
.LASF69:
	.string	"_fileno"
.LASF194:
	.string	"src/dircolors.c"
.LASF57:
	.string	"_IO_read_end"
.LASF172:
	.string	"state"
.LASF32:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF15:
	.string	"_gl_cxxalias_dummy"
.LASF148:
	.string	"long_options"
.LASF55:
	.string	"_flags"
.LASF78:
	.string	"_wide_data"
.LASF52:
	.string	"_ISalnum"
.LASF72:
	.string	"_cur_column"
.LASF36:
	.string	"program_invocation_short_name"
.LASF104:
	.string	"c_quoting_style"
.LASF86:
	.string	"_IO_codecvt"
.LASF94:
	.string	"_sys_errlist"
.LASF35:
	.string	"program_invocation_name"
.LASF92:
	.string	"sys_errlist"
.LASF76:
	.string	"_offset"
.LASF49:
	.string	"_ISblank"
.LASF166:
	.string	"line"
.LASF39:
	.string	"TIMESPEC_HZ"
.LASF103:
	.string	"shell_escape_always_quoting_style"
.LASF28:
	.string	"timezone"
.LASF51:
	.string	"_ISpunct"
.LASF126:
	.string	"chunk_limit"
.LASF98:
	.string	"program_name"
.LASF127:
	.string	"temp"
.LASF85:
	.string	"_IO_marker"
.LASF88:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF181:
	.string	"guess_shell_syntax"
.LASF80:
	.string	"_freeres_buf"
.LASF140:
	.string	"Shell_syntax"
.LASF133:
	.string	"maybe_empty_object"
.LASF3:
	.string	"long unsigned int"
.LASF60:
	.string	"_IO_write_ptr"
.LASF20:
	.string	"name"
.LASF27:
	.string	"daylight"
.LASF91:
	.string	"sys_nerr"
.LASF193:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF109:
	.string	"custom_quoting_style"
.LASF1:
	.string	"short unsigned int"
.LASF163:
	.string	"next_G_line"
.LASF114:
	.string	"error_one_per_line"
.LASF37:
	.string	"Version"
.LASF64:
	.string	"_IO_save_base"
.LASF147:
	.string	"ls_codes"
.LASF34:
	.string	"environ"
.LASF75:
	.string	"_lock"
.LASF130:
	.string	"freefun"
.LASF70:
	.string	"_flags2"
.LASF82:
	.string	"_mode"
.LASF119:
	.string	"plain"
.LASF89:
	.string	"stdout"
.LASF151:
	.string	"optc"
.LASF97:
	.string	"version_etc_copyright"
.LASF154:
	.string	"prefix"
.LASF152:
	.string	"syntax"
.LASF16:
	.string	"optarg"
.LASF190:
	.string	"map_prog"
.LASF145:
	.string	"lsc_obstack"
.LASF29:
	.string	"getdate_err"
.LASF146:
	.string	"slack_codes"
.LASF159:
	.string	"filename"
.LASF17:
	.string	"optind"
.LASF56:
	.string	"_IO_read_ptr"
.LASF156:
	.string	"__o1"
.LASF8:
	.string	"__off64_t"
.LASF135:
	.string	"obstack_alloc_failed_handler"
.LASF196:
	.string	"_IO_lock_t"
.LASF54:
	.string	"_IO_FILE"
.LASF173:
	.string	"keywd"
.LASF176:
	.string	"append_quoted"
.LASF33:
	.string	"__environ"
.LASF11:
	.string	"time_t"
.LASF165:
	.string	"input_line_size"
.LASF121:
	.string	"obstack"
.LASF161:
	.string	"dc_parse_stream"
.LASF71:
	.string	"_old_offset"
.LASF136:
	.string	"obstack_exit_failure"
.LASF191:
	.string	"lc_messages"
.LASF67:
	.string	"_markers"
.LASF128:
	.string	"alignment_mask"
.LASF192:
	.string	"to_uchar"
.LASF105:
	.string	"c_maybe_quoting_style"
.LASF40:
	.string	"LOG10_TIMESPEC_HZ"
.LASF158:
	.string	"_Bool"
.LASF0:
	.string	"unsigned char"
.LASF189:
	.string	"node"
.LASF63:
	.string	"_IO_buf_end"
.LASF5:
	.string	"short int"
.LASF53:
	.string	"option"
.LASF138:
	.string	"quote_quoting_options"
.LASF22:
	.string	"flag"
.LASF93:
	.string	"_sys_nerr"
.LASF73:
	.string	"_vtable_offset"
.LASF26:
	.string	"tzname"
.LASF115:
	.string	"_obstack_chunk"
.LASF170:
	.string	"ST_TERMSURE"
.LASF102:
	.string	"shell_escape_quoting_style"
.LASF110:
	.string	"quoting_style_args"
.LASF19:
	.string	"optopt"
.LASF157:
	.string	"__value"
.LASF182:
	.string	"shell"
.LASF30:
	.string	"long double"
.LASF123:
	.string	"chunk"
.LASF10:
	.string	"char"
.LASF101:
	.string	"shell_always_quoting_style"
.LASF50:
	.string	"_IScntrl"
.LASF178:
	.string	"keyword"
.LASF9:
	.string	"__time_t"
.LASF45:
	.string	"_ISxdigit"
.LASF108:
	.string	"clocale_quoting_style"
.LASF42:
	.string	"_ISlower"
.LASF18:
	.string	"opterr"
.LASF160:
	.string	"dc_parse_file"
.LASF180:
	.string	"arg_start"
.LASF164:
	.string	"input_line"
.LASF137:
	.string	"quoting_options"
.LASF58:
	.string	"_IO_read_base"
.LASF141:
	.string	"SHELL_SYNTAX_BOURNE"
.LASF66:
	.string	"_IO_save_end"
.LASF31:
	.string	"_sys_siglist"
.LASF169:
	.string	"ST_TERMYES"
.LASF188:
	.string	"infomap"
.LASF134:
	.string	"alloc_failed"
.LASF168:
	.string	"ST_TERMNO"
.LASF21:
	.string	"has_arg"
.LASF184:
	.string	"usage"
.LASF81:
	.string	"__pad5"
.LASF61:
	.string	"_IO_write_end"
.LASF162:
	.string	"line_number"
.LASF83:
	.string	"_unused2"
.LASF90:
	.string	"stderr"
.LASF150:
	.string	"argv"
.LASF24:
	.string	"__daylight"
.LASF185:
	.string	"status"
.LASF195:
	.string	"/root/coreutils"
.LASF122:
	.string	"chunk_size"
.LASF41:
	.string	"_ISupper"
.LASF46:
	.string	"_ISspace"
.LASF144:
	.string	"G_line"
.LASF155:
	.string	"suffix"
.LASF113:
	.string	"error_message_count"
.LASF177:
	.string	"parse_line"
.LASF149:
	.string	"argc"
.LASF79:
	.string	"_freeres_list"
.LASF120:
	.string	"extra"
.LASF117:
	.string	"prev"
.LASF87:
	.string	"_IO_wide_data"
.LASF124:
	.string	"object_base"
.LASF84:
	.string	"FILE"
.LASF132:
	.string	"use_extra_arg"
.LASF125:
	.string	"next_free"
.LASF167:
	.string	"term"
.LASF174:
	.string	"unrecognized"
.LASF142:
	.string	"SHELL_SYNTAX_C"
.LASF23:
	.string	"__tzname"
.LASF183:
	.string	"main"
.LASF59:
	.string	"_IO_write_base"
.LASF186:
	.string	"emit_ancillary_info"
.LASF47:
	.string	"_ISprint"
.LASF131:
	.string	"extra_arg"
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
