	.file	"stty.c"
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
	.section	.rodata
.LC19:
	.string	"parenb"
.LC20:
	.string	"parodd"
.LC21:
	.string	"cmspar"
.LC22:
	.string	"cs5"
.LC23:
	.string	"cs6"
.LC24:
	.string	"cs7"
.LC25:
	.string	"cs8"
.LC26:
	.string	"hupcl"
.LC27:
	.string	"hup"
.LC28:
	.string	"cstopb"
.LC29:
	.string	"cread"
.LC30:
	.string	"clocal"
.LC31:
	.string	"crtscts"
.LC32:
	.string	"ignbrk"
.LC33:
	.string	"brkint"
.LC34:
	.string	"ignpar"
.LC35:
	.string	"parmrk"
.LC36:
	.string	"inpck"
.LC37:
	.string	"istrip"
.LC38:
	.string	"inlcr"
.LC39:
	.string	"igncr"
.LC40:
	.string	"icrnl"
.LC41:
	.string	"ixon"
.LC42:
	.string	"ixoff"
.LC43:
	.string	"tandem"
.LC44:
	.string	"iuclc"
.LC45:
	.string	"ixany"
.LC46:
	.string	"imaxbel"
.LC47:
	.string	"iutf8"
.LC48:
	.string	"opost"
.LC49:
	.string	"olcuc"
.LC50:
	.string	"ocrnl"
.LC51:
	.string	"onlcr"
.LC52:
	.string	"onocr"
.LC53:
	.string	"onlret"
.LC54:
	.string	"ofill"
.LC55:
	.string	"ofdel"
.LC56:
	.string	"nl1"
.LC57:
	.string	"nl0"
.LC58:
	.string	"cr3"
.LC59:
	.string	"cr2"
.LC60:
	.string	"cr1"
.LC61:
	.string	"cr0"
.LC62:
	.string	"tab3"
.LC63:
	.string	"tab2"
.LC64:
	.string	"tab1"
.LC65:
	.string	"tab0"
.LC66:
	.string	"bs1"
.LC67:
	.string	"bs0"
.LC68:
	.string	"vt1"
.LC69:
	.string	"vt0"
.LC70:
	.string	"ff1"
.LC71:
	.string	"ff0"
.LC72:
	.string	"isig"
.LC73:
	.string	"icanon"
.LC74:
	.string	"iexten"
.LC75:
	.string	"echo"
.LC76:
	.string	"echoe"
.LC77:
	.string	"crterase"
.LC78:
	.string	"echok"
.LC79:
	.string	"echonl"
.LC80:
	.string	"noflsh"
.LC81:
	.string	"xcase"
.LC82:
	.string	"tostop"
.LC83:
	.string	"echoprt"
.LC84:
	.string	"prterase"
.LC85:
	.string	"echoctl"
.LC86:
	.string	"ctlecho"
.LC87:
	.string	"echoke"
.LC88:
	.string	"crtkill"
.LC89:
	.string	"flusho"
.LC90:
	.string	"extproc"
.LC91:
	.string	"evenp"
.LC92:
	.string	"parity"
.LC93:
	.string	"oddp"
.LC94:
	.string	"nl"
.LC95:
	.string	"ek"
.LC96:
	.string	"sane"
.LC97:
	.string	"cooked"
.LC98:
	.string	"raw"
.LC99:
	.string	"pass8"
.LC100:
	.string	"litout"
.LC101:
	.string	"cbreak"
.LC102:
	.string	"decctlq"
.LC103:
	.string	"tabs"
.LC104:
	.string	"lcase"
.LC105:
	.string	"LCASE"
.LC106:
	.string	"crt"
.LC107:
	.string	"dec"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	mode_info, @object
	.size	mode_info, 2880
mode_info:
	.quad	.LC19
	.long	0
	.byte	4
	.zero	3
	.quad	256
	.quad	0
	.quad	.LC20
	.long	0
	.byte	4
	.zero	3
	.quad	512
	.quad	0
	.quad	.LC21
	.long	0
	.byte	4
	.zero	3
	.quad	1073741824
	.quad	0
	.quad	.LC22
	.long	0
	.byte	0
	.zero	3
	.quad	0
	.quad	48
	.quad	.LC23
	.long	0
	.byte	0
	.zero	3
	.quad	16
	.quad	48
	.quad	.LC24
	.long	0
	.byte	0
	.zero	3
	.quad	32
	.quad	48
	.quad	.LC25
	.long	0
	.byte	0
	.zero	3
	.quad	48
	.quad	48
	.quad	.LC26
	.long	0
	.byte	4
	.zero	3
	.quad	1024
	.quad	0
	.quad	.LC27
	.long	0
	.byte	12
	.zero	3
	.quad	1024
	.quad	0
	.quad	.LC28
	.long	0
	.byte	4
	.zero	3
	.quad	64
	.quad	0
	.quad	.LC29
	.long	0
	.byte	5
	.zero	3
	.quad	128
	.quad	0
	.quad	.LC30
	.long	0
	.byte	4
	.zero	3
	.quad	2048
	.quad	0
	.quad	.LC31
	.long	0
	.byte	4
	.zero	3
	.quad	2147483648
	.quad	0
	.quad	.LC32
	.long	1
	.byte	6
	.zero	3
	.quad	1
	.quad	0
	.quad	.LC33
	.long	1
	.byte	5
	.zero	3
	.quad	2
	.quad	0
	.quad	.LC34
	.long	1
	.byte	4
	.zero	3
	.quad	4
	.quad	0
	.quad	.LC35
	.long	1
	.byte	4
	.zero	3
	.quad	8
	.quad	0
	.quad	.LC36
	.long	1
	.byte	4
	.zero	3
	.quad	16
	.quad	0
	.quad	.LC37
	.long	1
	.byte	4
	.zero	3
	.quad	32
	.quad	0
	.quad	.LC38
	.long	1
	.byte	6
	.zero	3
	.quad	64
	.quad	0
	.quad	.LC39
	.long	1
	.byte	6
	.zero	3
	.quad	128
	.quad	0
	.quad	.LC40
	.long	1
	.byte	5
	.zero	3
	.quad	256
	.quad	0
	.quad	.LC41
	.long	1
	.byte	4
	.zero	3
	.quad	1024
	.quad	0
	.quad	.LC42
	.long	1
	.byte	6
	.zero	3
	.quad	4096
	.quad	0
	.quad	.LC43
	.long	1
	.byte	12
	.zero	3
	.quad	4096
	.quad	0
	.quad	.LC44
	.long	1
	.byte	6
	.zero	3
	.quad	512
	.quad	0
	.quad	.LC45
	.long	1
	.byte	6
	.zero	3
	.quad	2048
	.quad	0
	.quad	.LC46
	.long	1
	.byte	5
	.zero	3
	.quad	8192
	.quad	0
	.quad	.LC47
	.long	1
	.byte	6
	.zero	3
	.quad	16384
	.quad	0
	.quad	.LC48
	.long	2
	.byte	5
	.zero	3
	.quad	1
	.quad	0
	.quad	.LC49
	.long	2
	.byte	6
	.zero	3
	.quad	2
	.quad	0
	.quad	.LC50
	.long	2
	.byte	6
	.zero	3
	.quad	8
	.quad	0
	.quad	.LC51
	.long	2
	.byte	5
	.zero	3
	.quad	4
	.quad	0
	.quad	.LC52
	.long	2
	.byte	6
	.zero	3
	.quad	16
	.quad	0
	.quad	.LC53
	.long	2
	.byte	6
	.zero	3
	.quad	32
	.quad	0
	.quad	.LC54
	.long	2
	.byte	6
	.zero	3
	.quad	64
	.quad	0
	.quad	.LC55
	.long	2
	.byte	6
	.zero	3
	.quad	128
	.quad	0
	.quad	.LC56
	.long	2
	.byte	2
	.zero	3
	.quad	256
	.quad	256
	.quad	.LC57
	.long	2
	.byte	1
	.zero	3
	.quad	0
	.quad	256
	.quad	.LC58
	.long	2
	.byte	2
	.zero	3
	.quad	1536
	.quad	1536
	.quad	.LC59
	.long	2
	.byte	2
	.zero	3
	.quad	1024
	.quad	1536
	.quad	.LC60
	.long	2
	.byte	2
	.zero	3
	.quad	512
	.quad	1536
	.quad	.LC61
	.long	2
	.byte	1
	.zero	3
	.quad	0
	.quad	1536
	.quad	.LC62
	.long	2
	.byte	2
	.zero	3
	.quad	6144
	.quad	6144
	.quad	.LC63
	.long	2
	.byte	2
	.zero	3
	.quad	4096
	.quad	6144
	.quad	.LC64
	.long	2
	.byte	2
	.zero	3
	.quad	2048
	.quad	6144
	.quad	.LC65
	.long	2
	.byte	1
	.zero	3
	.quad	0
	.quad	6144
	.quad	.LC66
	.long	2
	.byte	2
	.zero	3
	.quad	8192
	.quad	8192
	.quad	.LC67
	.long	2
	.byte	1
	.zero	3
	.quad	0
	.quad	8192
	.quad	.LC68
	.long	2
	.byte	2
	.zero	3
	.quad	16384
	.quad	16384
	.quad	.LC69
	.long	2
	.byte	1
	.zero	3
	.quad	0
	.quad	16384
	.quad	.LC70
	.long	2
	.byte	2
	.zero	3
	.quad	32768
	.quad	32768
	.quad	.LC71
	.long	2
	.byte	1
	.zero	3
	.quad	0
	.quad	32768
	.quad	.LC72
	.long	3
	.byte	5
	.zero	3
	.quad	1
	.quad	0
	.quad	.LC73
	.long	3
	.byte	5
	.zero	3
	.quad	2
	.quad	0
	.quad	.LC74
	.long	3
	.byte	5
	.zero	3
	.quad	32768
	.quad	0
	.quad	.LC75
	.long	3
	.byte	5
	.zero	3
	.quad	8
	.quad	0
	.quad	.LC76
	.long	3
	.byte	5
	.zero	3
	.quad	16
	.quad	0
	.quad	.LC77
	.long	3
	.byte	12
	.zero	3
	.quad	16
	.quad	0
	.quad	.LC78
	.long	3
	.byte	5
	.zero	3
	.quad	32
	.quad	0
	.quad	.LC79
	.long	3
	.byte	6
	.zero	3
	.quad	64
	.quad	0
	.quad	.LC80
	.long	3
	.byte	6
	.zero	3
	.quad	128
	.quad	0
	.quad	.LC81
	.long	3
	.byte	6
	.zero	3
	.quad	4
	.quad	0
	.quad	.LC82
	.long	3
	.byte	6
	.zero	3
	.quad	256
	.quad	0
	.quad	.LC83
	.long	3
	.byte	6
	.zero	3
	.quad	1024
	.quad	0
	.quad	.LC84
	.long	3
	.byte	12
	.zero	3
	.quad	1024
	.quad	0
	.quad	.LC85
	.long	3
	.byte	5
	.zero	3
	.quad	512
	.quad	0
	.quad	.LC86
	.long	3
	.byte	12
	.zero	3
	.quad	512
	.quad	0
	.quad	.LC87
	.long	3
	.byte	5
	.zero	3
	.quad	2048
	.quad	0
	.quad	.LC88
	.long	3
	.byte	12
	.zero	3
	.quad	2048
	.quad	0
	.quad	.LC89
	.long	3
	.byte	6
	.zero	3
	.quad	4096
	.quad	0
	.quad	.LC90
	.long	3
	.byte	6
	.zero	3
	.quad	65536
	.quad	0
	.quad	.LC91
	.long	4
	.byte	12
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC92
	.long	4
	.byte	12
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC93
	.long	4
	.byte	12
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC94
	.long	4
	.byte	12
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC95
	.long	4
	.byte	8
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC96
	.long	4
	.byte	8
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC97
	.long	4
	.byte	12
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC98
	.long	4
	.byte	12
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC99
	.long	4
	.byte	12
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC100
	.long	4
	.byte	12
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC101
	.long	4
	.byte	12
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC102
	.long	4
	.byte	12
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC103
	.long	4
	.byte	12
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC104
	.long	4
	.byte	12
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC105
	.long	4
	.byte	12
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC106
	.long	4
	.byte	8
	.zero	3
	.quad	0
	.quad	0
	.quad	.LC107
	.long	4
	.byte	8
	.zero	3
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.byte	0
	.zero	3
	.quad	0
	.quad	0
	.section	.rodata
.LC108:
	.string	"intr"
.LC109:
	.string	"quit"
.LC110:
	.string	"erase"
.LC111:
	.string	"kill"
.LC112:
	.string	"eof"
.LC113:
	.string	"eol"
.LC114:
	.string	"eol2"
.LC115:
	.string	"swtch"
.LC116:
	.string	"start"
.LC117:
	.string	"stop"
.LC118:
	.string	"susp"
.LC119:
	.string	"rprnt"
.LC120:
	.string	"werase"
.LC121:
	.string	"lnext"
.LC122:
	.string	"flush"
.LC123:
	.string	"discard"
.LC124:
	.string	"min"
.LC125:
	.string	"time"
	.section	.data.rel.ro.local
	.align 32
	.type	control_info, @object
	.size	control_info, 456
control_info:
	.quad	.LC108
	.byte	3
	.zero	7
	.quad	0
	.quad	.LC109
	.byte	28
	.zero	7
	.quad	1
	.quad	.LC110
	.byte	127
	.zero	7
	.quad	2
	.quad	.LC111
	.byte	21
	.zero	7
	.quad	3
	.quad	.LC112
	.byte	4
	.zero	7
	.quad	4
	.quad	.LC113
	.byte	0
	.zero	7
	.quad	11
	.quad	.LC114
	.byte	0
	.zero	7
	.quad	16
	.quad	.LC115
	.byte	0
	.zero	7
	.quad	7
	.quad	.LC116
	.byte	17
	.zero	7
	.quad	8
	.quad	.LC117
	.byte	19
	.zero	7
	.quad	9
	.quad	.LC118
	.byte	26
	.zero	7
	.quad	10
	.quad	.LC119
	.byte	18
	.zero	7
	.quad	12
	.quad	.LC120
	.byte	23
	.zero	7
	.quad	14
	.quad	.LC121
	.byte	22
	.zero	7
	.quad	15
	.quad	.LC122
	.byte	15
	.zero	7
	.quad	13
	.quad	.LC123
	.byte	15
	.zero	7
	.quad	13
	.quad	.LC124
	.byte	1
	.zero	7
	.quad	6
	.quad	.LC125
	.byte	0
	.zero	7
	.quad	5
	.quad	0
	.byte	0
	.zero	7
	.quad	0
	.local	max_col
	.comm	max_col,4,4
	.local	current_col
	.comm	current_col,4,4
	.data
	.align 4
	.type	tcsetattr_options, @object
	.size	tcsetattr_options, 4
tcsetattr_options:
	.long	1
	.section	.rodata
.LC126:
	.string	"all"
.LC127:
	.string	"save"
.LC128:
	.string	"file"
.LC129:
	.string	"help"
.LC130:
	.string	"version"
	.section	.data.rel.ro.local
	.align 32
	.type	longopts, @object
	.size	longopts, 192
longopts:
	.quad	.LC126
	.long	0
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC127
	.long	0
	.zero	4
	.quad	0
	.long	103
	.zero	4
	.quad	.LC128
	.long	1
	.zero	4
	.quad	0
	.long	70
	.zero	4
	.quad	.LC129
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC130
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
	.text
	.type	wrapf, @function
wrapf:
.LFB46:
	.file 2 "src/stty.c"
	.loc 2 493 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L14
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L14:
	.loc 2 493 1
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 2 498 3
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 2 499 12
	leaq	-208(%rbp), %rdx
	movq	-232(%rbp), %rcx
	leaq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rpl_vasprintf@PLT
	movl	%eax, -220(%rbp)
	.loc 2 502 6
	cmpl	$0, -220(%rbp)
	jns	.L15
	.loc 2 503 5
	call	xalloc_die@PLT
.L15:
	.loc 2 505 9
	movl	current_col(%rip), %eax
	.loc 2 505 6
	testl	%eax, %eax
	jle	.L16
	.loc 2 507 19
	movl	max_col(%rip), %edx
	movl	current_col(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 507 10
	cmpl	%eax, -220(%rbp)
	jle	.L17
	.loc 2 509 11
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 510 23
	movl	$0, current_col(%rip)
	jmp	.L16
.L17:
	.loc 2 514 11
	movl	$32, %edi
	call	putchar_unlocked@PLT
	.loc 2 515 22
	movl	current_col(%rip), %eax
	addl	$1, %eax
	movl	%eax, current_col(%rip)
.L16:
	.loc 2 519 3
	movq	stdout(%rip), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 520 3
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 521 15
	movl	current_col(%rip), %edx
	movl	-220(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, current_col(%rip)
	.loc 2 522 1
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	wrapf, .-wrapf
	.section	.rodata
	.align 8
.LC131:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC132:
	.string	"Usage: %s [-F DEVICE | --file=DEVICE] [SETTING]...\n  or:  %s [-F DEVICE | --file=DEVICE] [-a|--all]\n  or:  %s [-F DEVICE | --file=DEVICE] [-g|--save]\n"
	.align 8
.LC133:
	.string	"Print or change terminal characteristics.\n"
	.align 8
.LC134:
	.string	"  -a, --all          print all current settings in human-readable form\n  -g, --save         print all current settings in a stty-readable form\n  -F, --file=DEVICE  open and use the specified DEVICE instead of stdin\n"
	.align 8
.LC135:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC136:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC137:
	.string	"\nOptional - before SETTING indicates negation.  An * marks non-POSIX\nsettings.  The underlying system defines which settings are available.\n"
.LC138:
	.string	"\nSpecial characters:\n"
	.align 8
.LC139:
	.string	" * discard CHAR  CHAR will toggle discarding of output\n"
	.align 8
.LC140:
	.string	"   eof CHAR      CHAR will send an end of file (terminate the input)\n   eol CHAR      CHAR will end the line\n"
	.align 8
.LC141:
	.string	" * eol2 CHAR     alternate CHAR for ending the line\n"
	.align 8
.LC142:
	.string	"   erase CHAR    CHAR will erase the last character typed\n   intr CHAR     CHAR will send an interrupt signal\n   kill CHAR     CHAR will erase the current line\n"
	.align 8
.LC143:
	.string	" * lnext CHAR    CHAR will enter the next character quoted\n"
	.align 8
.LC144:
	.string	"   quit CHAR     CHAR will send a quit signal\n"
	.align 8
.LC145:
	.string	" * rprnt CHAR    CHAR will redraw the current line\n"
	.align 8
.LC146:
	.string	"   start CHAR    CHAR will restart the output after stopping it\n   stop CHAR     CHAR will stop the output\n   susp CHAR     CHAR will send a terminal stop signal\n"
	.align 8
.LC147:
	.string	" * swtch CHAR    CHAR will switch to a different shell layer\n"
	.align 8
.LC148:
	.string	" * werase CHAR   CHAR will erase the last word typed\n"
	.align 8
.LC149:
	.string	"\nSpecial settings:\n   N             set the input and output speeds to N bauds\n"
	.align 8
.LC150:
	.string	" * cols N        tell the kernel that the terminal has N columns\n * columns N     same as cols N\n"
.LC151:
	.string	"on"
.LC152:
	.string	"off"
	.align 8
.LC153:
	.string	" * [-]drain      wait for transmission before applying settings (%s by default)\n"
	.align 8
.LC154:
	.string	"   ispeed N      set the input speed to N\n"
	.align 8
.LC155:
	.string	" * line N        use line discipline N\n"
	.align 8
.LC156:
	.string	"   min N         with -icanon, set N characters minimum for a completed read\n   ospeed N      set the output speed to N\n"
	.align 8
.LC157:
	.string	" * rows N        tell the kernel that the terminal has N rows\n * size          print the number of rows and columns according to the kernel\n"
	.align 8
.LC158:
	.string	"   speed         print the terminal speed\n   time N        with -icanon, set read timeout of N tenths of a second\n"
	.align 8
.LC159:
	.string	"\nControl settings:\n   [-]clocal     disable modem control signals\n   [-]cread      allow input to be received\n"
	.align 8
.LC160:
	.string	" * [-]crtscts    enable RTS/CTS handshaking\n"
	.align 8
.LC161:
	.string	"   csN           set character size to N bits, N in [5..8]\n"
	.align 8
.LC162:
	.ascii	"   [-]cstopb     use two stop bits per character (o"
	.string	"ne with '-')\n   [-]hup        send a hangup signal when the last process closes the tty\n   [-]hupcl      same as [-]hup\n   [-]parenb     generate parity bit in output and expect parity bit in input\n   [-]parodd     set odd parity (or even parity with '-')\n"
	.align 8
.LC163:
	.string	" * [-]cmspar     use \"stick\" (mark/space) parity\n"
	.align 8
.LC164:
	.string	"\nInput settings:\n   [-]brkint     breaks cause an interrupt signal\n   [-]icrnl      translate carriage return to newline\n   [-]ignbrk     ignore break characters\n   [-]igncr      ignore carriage return\n   [-]ignpar     ignore characters with parity errors\n"
	.align 8
.LC165:
	.string	" * [-]imaxbel    beep and do not flush a full input buffer on a character\n"
	.align 8
.LC166:
	.string	"   [-]inlcr      translate newline to carriage return\n   [-]inpck      enable input parity checking\n   [-]istrip     clear high (8th) bit of input characters\n"
	.align 8
.LC167:
	.string	" * [-]iutf8      assume input characters are UTF-8 encoded\n"
	.align 8
.LC168:
	.string	" * [-]iuclc      translate uppercase characters to lowercase\n"
	.align 8
.LC169:
	.string	" * [-]ixany      let any character restart output, not only start character\n"
	.align 8
.LC170:
	.string	"   [-]ixoff      enable sending of start/stop characters\n   [-]ixon       enable XON/XOFF flow control\n   [-]parmrk     mark parity errors (with a 255-0-character sequence)\n   [-]tandem     same as [-]ixoff\n"
.LC171:
	.string	"\nOutput settings:\n"
	.align 8
.LC172:
	.string	" * bsN           backspace delay style, N in [0..1]\n"
	.align 8
.LC173:
	.string	" * crN           carriage return delay style, N in [0..3]\n"
	.align 8
.LC174:
	.string	" * ffN           form feed delay style, N in [0..1]\n"
	.align 8
.LC175:
	.string	" * nlN           newline delay style, N in [0..1]\n"
	.align 8
.LC176:
	.string	" * [-]ocrnl      translate carriage return to newline\n"
	.align 8
.LC177:
	.string	" * [-]ofdel      use delete characters for fill instead of NUL characters\n"
	.align 8
.LC178:
	.string	" * [-]ofill      use fill (padding) characters instead of timing for delays\n"
	.align 8
.LC179:
	.string	" * [-]olcuc      translate lowercase characters to uppercase\n"
	.align 8
.LC180:
	.string	" * [-]onlcr      translate newline to carriage return-newline\n"
	.align 8
.LC181:
	.string	" * [-]onlret     newline performs a carriage return\n"
	.align 8
.LC182:
	.string	" * [-]onocr      do not print carriage returns in the first column\n"
	.align 8
.LC183:
	.string	"   [-]opost      postprocess output\n"
	.align 8
.LC184:
	.string	" * tabN          horizontal tab delay style, N in [0..3]\n * tabs          same as tab0\n * -tabs         same as tab3\n"
	.align 8
.LC185:
	.string	" * vtN           vertical tab delay style, N in [0..1]\n"
	.align 8
.LC186:
	.string	"\nLocal settings:\n   [-]crterase   echo erase characters as backspace-space-backspace\n"
	.align 8
.LC187:
	.string	" * crtkill       kill all line by obeying the echoprt and echoe settings\n * -crtkill      kill all line by obeying the echoctl and echok settings\n"
	.align 8
.LC188:
	.string	" * [-]ctlecho    echo control characters in hat notation ('^c')\n"
	.align 8
.LC189:
	.string	"   [-]echo       echo input characters\n"
	.align 8
.LC190:
	.string	" * [-]echoctl    same as [-]ctlecho\n"
	.align 8
.LC191:
	.string	"   [-]echoe      same as [-]crterase\n   [-]echok      echo a newline after a kill character\n"
	.align 8
.LC192:
	.string	" * [-]echoke     same as [-]crtkill\n"
	.align 8
.LC193:
	.string	"   [-]echonl     echo newline even if not echoing other characters\n"
	.align 8
.LC194:
	.string	" * [-]echoprt    echo erased characters backward, between '\\' and '/'\n"
	.align 8
.LC195:
	.string	" * [-]extproc    enable \"LINEMODE\"; useful with high latency links\n"
	.align 8
.LC196:
	.string	" * [-]flusho     discard output\n"
	.align 8
.LC197:
	.string	"   [-]icanon     enable special characters: %s\n   [-]iexten     enable non-POSIX special characters\n"
.LC198:
	.string	"erase, kill, werase, rprnt"
	.align 8
.LC199:
	.string	"   [-]isig       enable interrupt, quit, and suspend special characters\n   [-]noflsh     disable flushing after interrupt and quit special characters\n"
	.align 8
.LC200:
	.string	" * [-]prterase   same as [-]echoprt\n"
	.align 8
.LC201:
	.string	" * [-]tostop     stop background jobs that try to write to the terminal\n"
	.align 8
.LC202:
	.string	" * [-]xcase      with icanon, escape with '\\' for uppercase characters\n"
.LC203:
	.string	"\nCombination settings:\n"
	.align 8
.LC204:
	.string	" * [-]LCASE      same as [-]lcase\n"
	.align 8
.LC205:
	.string	"   cbreak        same as -icanon\n   -cbreak       same as icanon\n"
	.align 8
.LC206:
	.string	"   cooked        same as brkint ignpar istrip icrnl ixon opost isig\n                 icanon, eof and eol characters to their default values\n   -cooked       same as raw\n"
.LC207:
	.string	"   crt           same as %s\n"
.LC208:
	.string	"echoe echoctl echoke"
	.align 8
.LC209:
	.string	"   dec           same as %s intr ^c erase 0177\n                 kill ^u\n"
.LC210:
	.string	"echoe echoctl echoke -ixany"
	.align 8
.LC211:
	.string	" * [-]decctlq    same as [-]ixany\n"
	.align 8
.LC212:
	.string	"   ek            erase and kill characters to their default values\n   evenp         same as parenb -parodd cs7\n   -evenp        same as -parenb cs8\n"
	.align 8
.LC213:
	.string	" * [-]lcase      same as xcase iuclc olcuc\n"
	.align 8
.LC214:
	.string	"   litout        same as -parenb -istrip -opost cs8\n   -litout       same as parenb istrip opost cs7\n"
	.align 8
.LC215:
	.string	"   nl            same as %s\n   -nl           same as %s\n"
	.align 8
.LC216:
	.string	"icrnl -inlcr -igncr onlcr -ocrnl -onlret"
.LC217:
	.string	"-icrnl -onlcr"
	.align 8
.LC218:
	.string	"   oddp          same as parenb parodd cs7\n   -oddp         same as -parenb cs8\n   [-]parity     same as [-]evenp\n   pass8         same as -parenb -istrip cs8\n   -pass8        same as parenb istrip cs7\n"
	.align 8
.LC219:
	.string	"   raw           same as -ignbrk -brkint -ignpar -parmrk -inpck -istrip\n                 -inlcr -igncr -icrnl -ixon -ixoff -icanon -opost\n                 -isig%s min 1 time 0\n   -raw          same as cooked\n"
	.align 8
.LC220:
	.string	" -iuclc -ixany -imaxbel -xcase"
	.align 8
.LC221:
	.string	"   sane          same as cread -ignbrk brkint -inlcr -igncr icrnl\n                 icanon iexten echo echoe echok -echonl -noflsh\n                 %s\n                 %s\n                 %s,\n                 all special characters to their default values\n"
	.align 8
.LC222:
	.string	"isig -tostop -ofdel -echoprt echoctl echoke -extproc -flusho"
	.align 8
.LC223:
	.string	"opost -ofill onlcr -onocr -onlret nl0 cr0 tab0 bs0 vt0 ff0"
	.align 8
.LC224:
	.string	"-ixoff -iutf8 -iuclc -ixany imaxbel -xcase -olcuc -ocrnl"
	.align 8
.LC225:
	.ascii	"\nHandle the tty line"
	.string	" connected to standard input.  Without arguments,\nprints baud rate, line discipline, and deviations from stty sane.  In\nsettings, CHAR is taken literally, or coded as in ^c, 0x37, 0177 or\n127; special values ^- or undef used to disable special characters.\n"
.LC226:
	.string	"stty"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB47:
	.loc 2 526 1
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
	.loc 2 527 6
	cmpl	$0, -36(%rbp)
	je	.L20
	.loc 2 528 5
	movq	program_name(%rip), %rbx
	leaq	.LC131(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L21
.L20:
	.loc 2 531 7
	movq	program_name(%rip), %r13
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 531 15
	leaq	.LC132(%rip), %rdi
	call	gettext@PLT
	.loc 2 531 7
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 537 7
	movq	stdout(%rip), %rbx
	leaq	.LC133(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 541 7
	call	emit_mandatory_arg_note
	.loc 2 543 7
	movq	stdout(%rip), %rbx
	leaq	.LC134(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 548 7
	movq	stdout(%rip), %rbx
	leaq	.LC135(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 549 7
	movq	stdout(%rip), %rbx
	leaq	.LC136(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 550 7
	movq	stdout(%rip), %rbx
	leaq	.LC137(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 555 7
	movq	stdout(%rip), %rbx
	leaq	.LC138(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 559 7
	movq	stdout(%rip), %rbx
	leaq	.LC139(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 568 7
	movq	stdout(%rip), %rbx
	leaq	.LC140(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 573 7
	movq	stdout(%rip), %rbx
	leaq	.LC141(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 577 7
	movq	stdout(%rip), %rbx
	leaq	.LC142(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 583 7
	movq	stdout(%rip), %rbx
	leaq	.LC143(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 592 7
	movq	stdout(%rip), %rbx
	leaq	.LC144(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 596 7
	movq	stdout(%rip), %rbx
	leaq	.LC145(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 600 7
	movq	stdout(%rip), %rbx
	leaq	.LC146(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 606 7
	movq	stdout(%rip), %rbx
	leaq	.LC147(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 611 7
	movq	stdout(%rip), %rbx
	leaq	.LC148(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 615 7
	movq	stdout(%rip), %rbx
	leaq	.LC149(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 621 7
	movq	stdout(%rip), %rbx
	leaq	.LC150(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 628 25
	movl	tcsetattr_options(%rip), %eax
	.loc 2 626 7
	cmpl	$1, %eax
	jne	.L22
	.loc 2 628 40
	leaq	.LC151(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	jmp	.L23
.L22:
	.loc 2 628 50
	leaq	.LC152(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
.L23:
	.loc 2 626 15
	leaq	.LC153(%rip), %rdi
	call	gettext@PLT
	.loc 2 626 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 629 7
	movq	stdout(%rip), %rbx
	leaq	.LC154(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 633 7
	movq	stdout(%rip), %rbx
	leaq	.LC155(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 637 7
	movq	stdout(%rip), %rbx
	leaq	.LC156(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 642 7
	movq	stdout(%rip), %rbx
	leaq	.LC157(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 647 7
	movq	stdout(%rip), %rbx
	leaq	.LC158(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 651 7
	movq	stdout(%rip), %rbx
	leaq	.LC159(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 658 7
	movq	stdout(%rip), %rbx
	leaq	.LC160(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 667 7
	movq	stdout(%rip), %rbx
	leaq	.LC161(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 670 7
	movq	stdout(%rip), %rbx
	leaq	.LC162(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 678 7
	movq	stdout(%rip), %rbx
	leaq	.LC163(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 682 7
	movq	stdout(%rip), %rbx
	leaq	.LC164(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 692 7
	movq	stdout(%rip), %rbx
	leaq	.LC165(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 696 7
	movq	stdout(%rip), %rbx
	leaq	.LC166(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 702 7
	movq	stdout(%rip), %rbx
	leaq	.LC167(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 707 7
	movq	stdout(%rip), %rbx
	leaq	.LC168(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 712 7
	movq	stdout(%rip), %rbx
	leaq	.LC169(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 716 7
	movq	stdout(%rip), %rbx
	leaq	.LC170(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 722 7
	movq	stdout(%rip), %rbx
	leaq	.LC171(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 727 7
	movq	stdout(%rip), %rbx
	leaq	.LC172(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 732 7
	movq	stdout(%rip), %rbx
	leaq	.LC173(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 737 7
	movq	stdout(%rip), %rbx
	leaq	.LC174(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 742 7
	movq	stdout(%rip), %rbx
	leaq	.LC175(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 747 7
	movq	stdout(%rip), %rbx
	leaq	.LC176(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 752 7
	movq	stdout(%rip), %rbx
	leaq	.LC177(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 757 7
	movq	stdout(%rip), %rbx
	leaq	.LC178(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 762 7
	movq	stdout(%rip), %rbx
	leaq	.LC179(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 767 7
	movq	stdout(%rip), %rbx
	leaq	.LC180(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 772 7
	movq	stdout(%rip), %rbx
	leaq	.LC181(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 777 7
	movq	stdout(%rip), %rbx
	leaq	.LC182(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 781 7
	movq	stdout(%rip), %rbx
	leaq	.LC183(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 785 7
	movq	stdout(%rip), %rbx
	leaq	.LC184(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 792 7
	movq	stdout(%rip), %rbx
	leaq	.LC185(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 796 7
	movq	stdout(%rip), %rbx
	leaq	.LC186(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 802 7
	movq	stdout(%rip), %rbx
	leaq	.LC187(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 808 7
	movq	stdout(%rip), %rbx
	leaq	.LC188(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 812 7
	movq	stdout(%rip), %rbx
	leaq	.LC189(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 816 7
	movq	stdout(%rip), %rbx
	leaq	.LC190(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 820 7
	movq	stdout(%rip), %rbx
	leaq	.LC191(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 825 7
	movq	stdout(%rip), %rbx
	leaq	.LC192(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 829 7
	movq	stdout(%rip), %rbx
	leaq	.LC193(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 833 7
	movq	stdout(%rip), %rbx
	leaq	.LC194(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 838 7
	movq	stdout(%rip), %rbx
	leaq	.LC195(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 843 7
	movq	stdout(%rip), %rbx
	leaq	.LC196(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 847 15
	leaq	.LC197(%rip), %rdi
	call	gettext@PLT
	.loc 2 847 7
	leaq	.LC198(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 858 7
	movq	stdout(%rip), %rbx
	leaq	.LC199(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 863 7
	movq	stdout(%rip), %rbx
	leaq	.LC200(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 868 7
	movq	stdout(%rip), %rbx
	leaq	.LC201(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 873 7
	movq	stdout(%rip), %rbx
	leaq	.LC202(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 877 7
	movq	stdout(%rip), %rbx
	leaq	.LC203(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 882 7
	movq	stdout(%rip), %rbx
	leaq	.LC204(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 886 7
	movq	stdout(%rip), %rbx
	leaq	.LC205(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 890 7
	movq	stdout(%rip), %rbx
	leaq	.LC206(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 895 15
	leaq	.LC207(%rip), %rdi
	call	gettext@PLT
	.loc 2 895 7
	leaq	.LC208(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 905 15
	leaq	.LC209(%rip), %rdi
	call	gettext@PLT
	.loc 2 905 7
	leaq	.LC210(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 920 7
	movq	stdout(%rip), %rbx
	leaq	.LC211(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 924 7
	movq	stdout(%rip), %rbx
	leaq	.LC212(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 930 7
	movq	stdout(%rip), %rbx
	leaq	.LC213(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 934 7
	movq	stdout(%rip), %rbx
	leaq	.LC214(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 938 15
	leaq	.LC215(%rip), %rdi
	call	gettext@PLT
	.loc 2 938 7
	leaq	.LC216(%rip), %rdx
	leaq	.LC217(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 956 7
	movq	stdout(%rip), %rbx
	leaq	.LC218(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 963 15
	leaq	.LC219(%rip), %rdi
	call	gettext@PLT
	.loc 2 963 7
	leaq	.LC220(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 982 15
	leaq	.LC221(%rip), %rdi
	call	gettext@PLT
	.loc 2 982 7
	leaq	.LC222(%rip), %rcx
	leaq	.LC223(%rip), %rdx
	leaq	.LC224(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1068 7
	movq	stdout(%rip), %rbx
	leaq	.LC225(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1075 7
	leaq	.LC226(%rip), %rdi
	call	emit_ancillary_info
.L21:
	.loc 2 1077 3
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE47:
	.size	usage, .-usage
	.section	.rodata
.LC227:
	.string	"drain"
.LC228:
	.string	"invalid argument %s"
.LC229:
	.string	"missing argument to %s"
.LC230:
	.string	"ispeed"
.LC231:
	.string	"ospeed"
.LC232:
	.string	"rows"
.LC233:
	.string	"cols"
.LC234:
	.string	"columns"
.LC235:
	.string	"size"
.LC236:
	.string	"line"
.LC237:
	.string	"invalid line discipline %s"
.LC238:
	.string	"speed"
	.text
	.type	apply_settings, @function
apply_settings:
.LFB48:
	.loc 2 1091 1
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
	movl	%edi, %eax
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movb	%al, -52(%rbp)
.LBB2:
	.loc 2 1103 12
	movl	$1, -40(%rbp)
	.loc 2 1103 3
	jmp	.L25
.L72:
.LBB3:
	.loc 2 1105 33
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1105 19
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 1106 12
	movb	$0, -43(%rbp)
	.loc 2 1107 12
	movb	$0, -42(%rbp)
	.loc 2 1108 12
	movb	$0, -41(%rbp)
	.loc 2 1111 10
	cmpq	$0, -32(%rbp)
	je	.L73
	.loc 2 1114 14
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1114 10
	cmpb	$45, %al
	jne	.L28
	.loc 2 1116 11
	addq	$1, -32(%rbp)
	.loc 2 1117 20
	movb	$1, -41(%rbp)
.L28:
	.loc 2 1119 11
	movq	-32(%rbp), %rax
	leaq	.LC227(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1119 10
	testl	%eax, %eax
	jne	.L29
	.loc 2 1121 50
	movzbl	-41(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 1121 29
	movl	%eax, tcsetattr_options(%rip)
	.loc 2 1122 11
	jmp	.L27
.L29:
	.loc 2 1124 14
	movl	$0, -36(%rbp)
	.loc 2 1124 7
	jmp	.L30
.L35:
	.loc 2 1126 15
	movl	-36(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	mode_info(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1126 14
	testl	%eax, %eax
	jne	.L31
	.loc 2 1128 32
	movl	-36(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	12+mode_info(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	.loc 2 1128 39
	movsbl	%al, %eax
	andl	$16, %eax
	.loc 2 1128 18
	testl	%eax, %eax
	jne	.L32
	.loc 2 1130 33
	movzbl	-41(%rbp), %eax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	mode_info(%rip), %rdx
	addq	%rdx, %rcx
	movq	-80(%rbp), %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	set_mode
	movb	%al, -43(%rbp)
	.loc 2 1131 37
	movq	16(%rbp), %rax
	movb	$1, (%rax)
	.loc 2 1135 15
	jmp	.L34
.L32:
	.loc 2 1134 44
	movb	$1, -42(%rbp)
	.loc 2 1134 29
	movzbl	-42(%rbp), %eax
	movb	%al, -43(%rbp)
	.loc 2 1135 15
	jmp	.L34
.L31:
	.loc 2 1124 46 discriminator 2
	addl	$1, -36(%rbp)
.L30:
	.loc 2 1124 31 discriminator 1
	movl	-36(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 1124 7 discriminator 1
	testq	%rax, %rax
	jne	.L35
.L34:
	.loc 2 1138 11
	movzbl	-43(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1138 10
	testb	%al, %al
	je	.L36
	.loc 2 1138 24 discriminator 1
	cmpb	$0, -41(%rbp)
	je	.L36
	.loc 2 1140 11
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1140 24
	leaq	.LC228(%rip), %rdi
	call	gettext@PLT
	.loc 2 1140 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1141 11
	movl	$1, %edi
	call	usage
.L36:
	.loc 2 1143 11
	movzbl	-43(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1143 10
	testb	%al, %al
	je	.L37
	.loc 2 1145 18
	movl	$0, -36(%rbp)
	.loc 2 1145 11
	jmp	.L38
.L42:
	.loc 2 1147 19
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	control_info(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1147 18
	testl	%eax, %eax
	jne	.L39
	.loc 2 1149 19
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -40(%rbp)
	je	.L40
	.loc 2 1149 19 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L41
.L40:
	.loc 2 1149 19 discriminator 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC229(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L41:
	.loc 2 1150 31 is_stmt 1
	movb	$1, -43(%rbp)
	.loc 2 1151 19
	addl	$1, -40(%rbp)
	.loc 2 1152 63
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1152 19
	movq	(%rax), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	control_info(%rip), %rdx
	leaq	(%rax,%rdx), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	set_control_char
	.loc 2 1153 37
	movq	16(%rbp), %rax
	movb	$1, (%rax)
	.loc 2 1154 19
	jmp	.L37
.L39:
	.loc 2 1145 53 discriminator 2
	addl	$1, -36(%rbp)
.L38:
	.loc 2 1145 38 discriminator 1
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	control_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 1145 11 discriminator 1
	testq	%rax, %rax
	jne	.L42
.L37:
	.loc 2 1158 11
	movzbl	-43(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1158 10
	testb	%al, %al
	jne	.L43
	.loc 2 1158 24 discriminator 1
	cmpb	$0, -42(%rbp)
	je	.L27
.L43:
	.loc 2 1160 15
	movq	-32(%rbp), %rax
	leaq	.LC230(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1160 14
	testl	%eax, %eax
	jne	.L44
	.loc 2 1162 15
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -40(%rbp)
	je	.L45
	.loc 2 1162 15 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L46
.L45:
	.loc 2 1162 15 discriminator 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC229(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L46:
	.loc 2 1163 15 is_stmt 1
	addl	$1, -40(%rbp)
	.loc 2 1164 18
	cmpb	$0, -52(%rbp)
	jne	.L74
	.loc 2 1166 47
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1166 15
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	set_speed
	.loc 2 1167 30
	movq	-88(%rbp), %rax
	movb	$1, (%rax)
	.loc 2 1168 33
	movq	16(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L27
.L44:
	.loc 2 1170 20
	movq	-32(%rbp), %rax
	leaq	.LC231(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1170 19
	testl	%eax, %eax
	jne	.L48
	.loc 2 1172 15
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -40(%rbp)
	je	.L49
	.loc 2 1172 15 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L50
.L49:
	.loc 2 1172 15 discriminator 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC229(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L50:
	.loc 2 1173 15 is_stmt 1
	addl	$1, -40(%rbp)
	.loc 2 1174 18
	cmpb	$0, -52(%rbp)
	jne	.L75
	.loc 2 1176 48
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1176 15
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, %rsi
	movl	$1, %edi
	call	set_speed
	.loc 2 1177 30
	movq	-88(%rbp), %rax
	movb	$1, (%rax)
	.loc 2 1178 33
	movq	16(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L27
.L48:
	.loc 2 1198 20
	movq	-32(%rbp), %rax
	leaq	.LC232(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1198 19
	testl	%eax, %eax
	jne	.L52
	.loc 2 1200 15
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -40(%rbp)
	je	.L53
	.loc 2 1200 15 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L54
.L53:
	.loc 2 1200 15 discriminator 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC229(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L54:
	.loc 2 1201 15 is_stmt 1
	addl	$1, -40(%rbp)
	.loc 2 1202 18
	cmpb	$0, -52(%rbp)
	jne	.L76
	.loc 2 1204 53
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1204 32
	movq	(%rax), %rax
	movl	$2147483647, %esi
	movq	%rax, %rdi
	call	integer_arg
	.loc 2 1204 15
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	$-1, %esi
	movl	%ecx, %edi
	call	set_window_size
	jmp	.L27
.L52:
	.loc 2 1207 20
	movq	-32(%rbp), %rax
	leaq	.LC233(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1207 19
	testl	%eax, %eax
	je	.L56
	.loc 2 1208 23
	movq	-32(%rbp), %rax
	leaq	.LC234(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1208 20
	testl	%eax, %eax
	jne	.L57
.L56:
	.loc 2 1210 15
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -40(%rbp)
	je	.L58
	.loc 2 1210 15 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L59
.L58:
	.loc 2 1210 15 discriminator 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC229(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L59:
	.loc 2 1211 15 is_stmt 1
	addl	$1, -40(%rbp)
	.loc 2 1212 18
	cmpb	$0, -52(%rbp)
	jne	.L77
	.loc 2 1214 57
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1214 36
	movq	(%rax), %rax
	movl	$2147483647, %esi
	movq	%rax, %rdi
	call	integer_arg
	.loc 2 1214 15
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %esi
	movl	$-1, %edi
	call	set_window_size
	jmp	.L27
.L57:
	.loc 2 1217 20
	movq	-32(%rbp), %rax
	leaq	.LC235(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1217 19
	testl	%eax, %eax
	jne	.L61
	.loc 2 1219 18
	cmpb	$0, -52(%rbp)
	jne	.L78
	.loc 2 1221 25
	call	screen_columns
	.loc 2 1221 23
	movl	%eax, max_col(%rip)
	.loc 2 1222 27
	movl	$0, current_col(%rip)
	.loc 2 1223 15
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	display_window_size
	jmp	.L27
.L61:
	.loc 2 1227 20
	movq	-32(%rbp), %rax
	leaq	.LC236(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1227 19
	testl	%eax, %eax
	jne	.L63
.LBB4:
	.loc 2 1230 15
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -40(%rbp)
	je	.L64
	.loc 2 1230 15 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L65
.L64:
	.loc 2 1230 15 discriminator 3
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC229(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage
.L65:
	.loc 2 1231 15 is_stmt 1
	addl	$1, -40(%rbp)
	.loc 2 1232 59
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1232 38
	movq	(%rax), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	integer_arg
	movq	%rax, -24(%rbp)
	.loc 2 1232 28
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, 16(%rax)
	.loc 2 1233 23
	movq	-80(%rbp), %rax
	movzbl	16(%rax), %eax
	movzbl	%al, %eax
	.loc 2 1233 18
	cmpq	%rax, -24(%rbp)
	je	.L66
	.loc 2 1235 39
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1234 17
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1234 30
	leaq	.LC237(%rip), %rdi
	call	gettext@PLT
	.loc 2 1234 17
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L66:
	.loc 2 1236 33
	movq	16(%rbp), %rax
	movb	$1, (%rax)
.LBE4:
	jmp	.L27
.L63:
	.loc 2 1239 20
	movq	-32(%rbp), %rax
	leaq	.LC238(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1239 19
	testl	%eax, %eax
	jne	.L67
	.loc 2 1241 18
	cmpb	$0, -52(%rbp)
	jne	.L79
	.loc 2 1243 25
	call	screen_columns
	.loc 2 1243 23
	movl	%eax, max_col(%rip)
	.loc 2 1244 15
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	display_speed
	jmp	.L27
.L67:
	.loc 2 1246 20
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	string_to_baud
	.loc 2 1246 19
	cmpl	$-1, %eax
	je	.L69
	.loc 2 1248 18
	cmpb	$0, -52(%rbp)
	jne	.L80
	.loc 2 1250 15
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	set_speed
	.loc 2 1251 30
	movq	-88(%rbp), %rax
	movb	$1, (%rax)
	.loc 2 1252 33
	movq	16(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L27
.L69:
	.loc 2 1256 21
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	recover_mode
	.loc 2 1256 19
	xorl	$1, %eax
	.loc 2 1256 18
	testb	%al, %al
	je	.L71
	.loc 2 1258 19
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1258 32
	leaq	.LC228(%rip), %rdi
	call	gettext@PLT
	.loc 2 1258 19
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1259 19
	movl	$1, %edi
	call	usage
.L71:
	.loc 2 1261 33
	movq	16(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L27
.L73:
	.loc 2 1112 9
	nop
	jmp	.L27
.L74:
	.loc 2 1165 17
	nop
	jmp	.L27
.L75:
	.loc 2 1175 17
	nop
	jmp	.L27
.L76:
	.loc 2 1203 17
	nop
	jmp	.L27
.L77:
	.loc 2 1213 17
	nop
	jmp	.L27
.L78:
	.loc 2 1220 17
	nop
	jmp	.L27
.L79:
	.loc 2 1242 17
	nop
	jmp	.L27
.L80:
	.loc 2 1249 17
	nop
.L27:
.LBE3:
	.loc 2 1103 36 discriminator 2
	addl	$1, -40(%rbp)
.L25:
	.loc 2 1103 3 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L72
.LBE2:
	.loc 2 1265 1
	nop
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	apply_settings, .-apply_settings
	.section	.rodata
.LC239:
	.string	"/usr/local/share/locale"
	.align 8
.LC240:
	.string	"only one device may be specified"
.LC241:
	.string	"David MacKenzie"
.LC242:
	.string	"-drain"
.LC243:
	.string	"-agF:"
	.align 8
.LC244:
	.string	"the options for verbose and stty-readable output styles are\nmutually exclusive"
	.align 8
.LC245:
	.string	"when specifying an output style, modes may not be set"
.LC246:
	.string	"standard input"
.LC247:
	.string	"%s"
	.align 8
.LC248:
	.string	"%s: couldn't reset non-blocking mode"
	.align 8
.LC249:
	.string	"%s: unable to perform all requested operations"
	.text
	.globl	main
	.type	main, @function
main:
.LFB49:
	.loc 2 1269 1
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
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	.loc 2 1269 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1276 7
	movl	$0, -56(%rbp)
	.loc 2 1277 7
	movl	$1, -52(%rbp)
	.loc 2 1282 8
	movb	$1, -61(%rbp)
	.loc 2 1283 9
	movq	$0, -40(%rbp)
	.loc 2 1287 3
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 1288 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 1289 3
	leaq	.LC239(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 1290 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 1292 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 1294 15
	movl	$0, -60(%rbp)
	.loc 2 1295 18
	movb	$0, -63(%rbp)
	.loc 2 1296 22
	movb	$0, -62(%rbp)
	.loc 2 1299 10
	movl	$0, opterr(%rip)
	.loc 2 1308 9
	jmp	.L82
.L94:
	.loc 2 1312 7
	cmpl	$103, -48(%rbp)
	je	.L83
	cmpl	$103, -48(%rbp)
	jg	.L84
	cmpl	$97, -48(%rbp)
	je	.L85
	cmpl	$97, -48(%rbp)
	jg	.L84
	cmpl	$70, -48(%rbp)
	je	.L86
	cmpl	$70, -48(%rbp)
	jg	.L84
	cmpl	$-131, -48(%rbp)
	je	.L87
	cmpl	$-130, -48(%rbp)
	je	.L88
	jmp	.L84
.L85:
	.loc 2 1315 26
	movb	$1, -63(%rbp)
	.loc 2 1316 23
	movl	$1, -60(%rbp)
	.loc 2 1317 11
	jmp	.L89
.L83:
	.loc 2 1320 30
	movb	$1, -62(%rbp)
	.loc 2 1321 23
	movl	$2, -60(%rbp)
	.loc 2 1322 11
	jmp	.L89
.L86:
	.loc 2 1325 14
	cmpq	$0, -40(%rbp)
	je	.L90
.LBB5:
	.loc 2 1326 13
	leaq	.LC240(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L90:
.LBE5:
	.loc 2 1327 21
	movq	optarg(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 2 1328 11
	jmp	.L89
.L88:
	.loc 2 1330 9
	movl	$0, %edi
	call	usage
.L87:
	.loc 2 1332 9
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	movl	$0, %r9d
	leaq	.LC241(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC226(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	movl	$0, %edi
	call	exit@PLT
.L84:
	.loc 2 1337 17
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC242(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1337 14
	testl	%eax, %eax
	je	.L91
	.loc 2 1338 20
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC227(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1338 15
	testl	%eax, %eax
	je	.L91
	.loc 2 1339 20
	movb	$0, -61(%rbp)
.L91:
	.loc 2 1343 16
	movl	-52(%rbp), %eax
	addl	%eax, -56(%rbp)
	.loc 2 1346 16
	movl	$1, -52(%rbp)
	.loc 2 1347 18
	movl	$0, optind(%rip)
	.loc 2 1349 11
	nop
.L89:
	.loc 2 1353 13
	jmp	.L92
.L93:
	.loc 2 1354 25
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	.loc 2 1354 19
	movl	-56(%rbp), %edx
	addl	%edx, %eax
	cltq
	.loc 2 1354 13
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1354 29
	movq	$0, (%rax)
.L92:
	.loc 2 1353 19 discriminator 1
	movl	optind(%rip), %eax
	.loc 2 1353 13 discriminator 1
	cmpl	%eax, -52(%rbp)
	jl	.L93
.L82:
	.loc 2 1308 49
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	.loc 2 1308 18
	movl	-84(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC243(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -48(%rbp)
	.loc 2 1308 9
	cmpl	$-1, -48(%rbp)
	jne	.L94
	.loc 2 1358 6
	cmpb	$0, -63(%rbp)
	je	.L95
	.loc 2 1358 22 discriminator 1
	cmpb	$0, -62(%rbp)
	je	.L95
.LBB6:
	.loc 2 1359 5
	leaq	.LC244(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L95:
.LBE6:
	.loc 2 1364 7
	movzbl	-61(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1364 6
	testb	%al, %al
	je	.L96
	.loc 2 1364 15 discriminator 1
	cmpb	$0, -63(%rbp)
	jne	.L97
	.loc 2 1364 34 discriminator 2
	cmpb	$0, -62(%rbp)
	je	.L96
.L97:
.LBB7:
	.loc 2 1365 5
	leaq	.LC245(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L96:
.LBE7:
	.loc 2 1368 15
	cmpq	$0, -40(%rbp)
	jne	.L98
	.loc 2 1368 41 discriminator 1
	leaq	.LC246(%rip), %rdi
	call	gettext@PLT
	jmp	.L99
.L98:
	.loc 2 1368 15 discriminator 2
	movq	-40(%rbp), %rax
.L99:
	.loc 2 1368 15 is_stmt 0 discriminator 4
	movq	%rax, -32(%rbp)
	.loc 2 1370 7 is_stmt 1 discriminator 4
	movzbl	-61(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1370 6 discriminator 4
	testb	%al, %al
	je	.L100
	.loc 2 1370 18 discriminator 1
	movzbl	-63(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1370 15 discriminator 1
	testb	%al, %al
	je	.L100
	.loc 2 1370 37 discriminator 2
	movzbl	-62(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1370 34 discriminator 2
	testb	%al, %al
	je	.L100
.LBB8:
	.loc 2 1373 7
	leaq	-64(%rbp), %rdi
	movl	-84(%rbp), %ecx
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	leaq	-65(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	leaq	check_mode.6529(%rip), %r8
	movq	%rax, %rsi
	movl	$1, %edi
	call	apply_settings
	addq	$16, %rsp
.L100:
.LBE8:
	.loc 2 1377 6
	cmpq	$0, -40(%rbp)
	je	.L101
.LBB9:
	.loc 2 1380 11
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$2048, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	fd_reopen@PLT
	.loc 2 1380 10
	testl	%eax, %eax
	jns	.L102
.LBB10:
	.loc 2 1381 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC247(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L102:
.LBE10:
	.loc 2 1382 22
	movl	$3, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	rpl_fcntl@PLT
	movl	%eax, -44(%rbp)
	.loc 2 1382 10
	cmpl	$-1, -44(%rbp)
	je	.L103
	.loc 2 1383 14
	movl	-44(%rbp), %eax
	andb	$-9, %ah
	movl	%eax, %edx
	movl	$4, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	rpl_fcntl@PLT
	.loc 2 1383 11
	testl	%eax, %eax
	jns	.L101
.L103:
.LBB11:
	.loc 2 1384 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	leaq	.LC248(%rip), %rdi
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
.L101:
.LBE11:
.LBE9:
	.loc 2 1388 7
	leaq	mode.6498(%rip), %rsi
	movl	$0, %edi
	call	tcgetattr@PLT
	.loc 2 1388 6
	testl	%eax, %eax
	je	.L104
.LBB12:
	.loc 2 1389 5
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC247(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L104:
.LBE12:
	.loc 2 1391 6
	cmpb	$0, -63(%rbp)
	jne	.L105
	.loc 2 1391 22 discriminator 1
	cmpb	$0, -62(%rbp)
	jne	.L105
	.loc 2 1391 44 discriminator 2
	cmpb	$0, -61(%rbp)
	je	.L106
.L105:
	.loc 2 1393 17
	call	screen_columns
	.loc 2 1393 15
	movl	%eax, max_col(%rip)
	.loc 2 1394 19
	movl	$0, current_col(%rip)
	.loc 2 1395 7
	movq	-32(%rbp), %rdx
	movl	-60(%rbp), %eax
	leaq	mode.6498(%rip), %rsi
	movl	%eax, %edi
	call	display_settings
	.loc 2 1396 14
	movl	$0, %eax
	jmp	.L112
.L106:
	.loc 2 1399 17
	movb	$0, -64(%rbp)
	.loc 2 1400 20
	movb	$0, -65(%rbp)
	.loc 2 1401 3
	leaq	-64(%rbp), %rdi
	movl	-84(%rbp), %ecx
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	leaq	-65(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	leaq	mode.6498(%rip), %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	apply_settings
	addq	$16, %rsp
	.loc 2 1404 7
	movzbl	-65(%rbp), %eax
	.loc 2 1404 6
	testb	%al, %al
	je	.L108
.LBB13:
	.loc 2 1410 11
	movl	tcsetattr_options(%rip), %eax
	leaq	mode.6498(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	call	tcsetattr@PLT
	.loc 2 1410 10
	testl	%eax, %eax
	je	.L109
.LBB14:
	.loc 2 1411 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC247(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L109:
.LBE14:
	.loc 2 1420 11
	leaq	new_mode.6537(%rip), %rsi
	movl	$0, %edi
	call	tcgetattr@PLT
	.loc 2 1420 10
	testl	%eax, %eax
	je	.L110
.LBB15:
	.loc 2 1421 9
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC247(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L110:
.LBE15:
	.loc 2 1430 11
	movl	$60, %edx
	leaq	new_mode.6537(%rip), %rsi
	leaq	mode.6498(%rip), %rdi
	call	memcmp@PLT
	.loc 2 1430 10
	testl	%eax, %eax
	je	.L108
	.loc 2 1442 28
	movl	8+new_mode.6537(%rip), %eax
	andl	$-269418497, %eax
	movl	%eax, 8+new_mode.6537(%rip)
	.loc 2 1443 15
	movzbl	-64(%rbp), %eax
	.loc 2 1443 14
	testb	%al, %al
	jne	.L111
	.loc 2 1443 32 discriminator 1
	movl	$60, %edx
	leaq	new_mode.6537(%rip), %rsi
	leaq	mode.6498(%rip), %rdi
	call	memcmp@PLT
	.loc 2 1443 29 discriminator 1
	testl	%eax, %eax
	je	.L108
.L111:
.LBB16:
	.loc 2 1446 15
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	leaq	.LC249(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L108:
.LBE16:
.LBE13:
	.loc 2 1462 10
	movl	$0, %eax
.L112:
	.loc 2 1463 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L113
	.loc 2 1463 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L113:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	main, .-main
	.type	set_mode, @function
set_mode:
.LFB50:
	.loc 2 1470 1 is_stmt 1
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
	.loc 2 1473 6
	cmpb	$0, -28(%rbp)
	je	.L115
	.loc 2 1473 24 discriminator 1
	movq	-24(%rbp), %rax
	movzbl	12(%rax), %eax
	.loc 2 1473 32 discriminator 1
	movsbl	%al, %eax
	andl	$4, %eax
	.loc 2 1473 16 discriminator 1
	testl	%eax, %eax
	jne	.L115
	.loc 2 1474 12
	movl	$0, %eax
	jmp	.L116
.L115:
	.loc 2 1476 11
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	mode_type_flag
	movq	%rax, -8(%rbp)
	.loc 2 1478 6
	cmpq	$0, -8(%rbp)
	jne	.L117
	.loc 2 1481 11
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC91(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1481 10
	testl	%eax, %eax
	je	.L118
	.loc 2 1481 42 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC92(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1481 39 discriminator 1
	testl	%eax, %eax
	jne	.L119
.L118:
	.loc 2 1483 14
	cmpb	$0, -28(%rbp)
	je	.L120
	.loc 2 1484 34
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 1484 54
	andl	$-305, %eax
	.loc 2 1484 64
	orl	$48, %eax
	movl	%eax, %edx
	.loc 2 1484 27
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 2 1483 14
	jmp	.L150
.L120:
	.loc 2 1486 34
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 1486 64
	andl	$-817, %eax
	.loc 2 1486 73
	orl	$288, %eax
	movl	%eax, %edx
	.loc 2 1486 27
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 2 1483 14
	jmp	.L150
.L119:
	.loc 2 1488 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC93(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1488 15
	testl	%eax, %eax
	jne	.L123
	.loc 2 1490 14
	cmpb	$0, -28(%rbp)
	je	.L124
	.loc 2 1491 34
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 1491 54
	andl	$-305, %eax
	.loc 2 1491 64
	orl	$48, %eax
	movl	%eax, %edx
	.loc 2 1491 27
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L150
.L124:
	.loc 2 1493 34
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 1493 69
	andl	$-817, %eax
	orl	$800, %eax
	movl	%eax, %edx
	.loc 2 1493 27
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L150
.L123:
	.loc 2 1495 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC94(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1495 15
	testl	%eax, %eax
	jne	.L125
	.loc 2 1497 14
	cmpb	$0, -28(%rbp)
	je	.L126
	.loc 2 1499 36
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 1499 64
	andl	$-449, %eax
	orb	$1, %ah
	movl	%eax, %edx
	.loc 2 1499 29
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 1500 36
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 1509 17
	andl	$-45, %eax
	orl	$4, %eax
	movl	%eax, %edx
	.loc 2 1500 29
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L150
.L126:
	.loc 2 1515 35
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 1515 45
	andb	$-2, %ah
	movl	%eax, %edx
	.loc 2 1515 29
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 1517 35
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 1517 45
	andl	$-5, %eax
	movl	%eax, %edx
	.loc 2 1517 29
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L150
.L125:
	.loc 2 1521 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC95(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1521 15
	testl	%eax, %eax
	jne	.L127
	.loc 2 1523 30
	movq	-40(%rbp), %rax
	movb	$127, 19(%rax)
	.loc 2 1524 29
	movq	-40(%rbp), %rax
	movb	$21, 20(%rax)
	jmp	.L150
.L127:
	.loc 2 1526 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC96(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1526 15
	testl	%eax, %eax
	jne	.L128
	.loc 2 1527 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sane_mode
	jmp	.L150
.L128:
	.loc 2 1528 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC101(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1528 15
	testl	%eax, %eax
	jne	.L129
	.loc 2 1530 14
	cmpb	$0, -28(%rbp)
	je	.L130
	.loc 2 1531 27
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L150
.L130:
	.loc 2 1533 27
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	andl	$-3, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L150
.L129:
	.loc 2 1535 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC99(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1535 15
	testl	%eax, %eax
	jne	.L131
	.loc 2 1537 14
	cmpb	$0, -28(%rbp)
	je	.L132
	.loc 2 1539 36
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 1539 62
	andl	$-305, %eax
	orl	$288, %eax
	movl	%eax, %edx
	.loc 2 1539 29
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 2 1540 29
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L150
.L132:
	.loc 2 1544 36
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 1544 56
	andl	$-305, %eax
	.loc 2 1544 66
	orl	$48, %eax
	movl	%eax, %edx
	.loc 2 1544 29
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 2 1545 29
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	andl	$-33, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L150
.L131:
	.loc 2 1548 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC100(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1548 15
	testl	%eax, %eax
	jne	.L133
	.loc 2 1550 14
	cmpb	$0, -28(%rbp)
	je	.L134
	.loc 2 1552 36
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 1552 62
	andl	$-305, %eax
	orl	$288, %eax
	movl	%eax, %edx
	.loc 2 1552 29
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 2 1553 29
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 1554 29
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L150
.L134:
	.loc 2 1558 36
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 1558 56
	andl	$-305, %eax
	.loc 2 1558 66
	orl	$48, %eax
	movl	%eax, %edx
	.loc 2 1558 29
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 2 1559 29
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	andl	$-33, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 1560 29
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L150
.L133:
	.loc 2 1563 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC98(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1563 15
	testl	%eax, %eax
	je	.L135
	.loc 2 1563 45 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC97(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1563 42 discriminator 1
	testl	%eax, %eax
	jne	.L136
.L135:
	.loc 2 1565 20
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1565 26
	movzbl	(%rax), %eax
	.loc 2 1565 14
	cmpb	$114, %al
	jne	.L137
	.loc 2 1565 37 discriminator 1
	cmpb	$0, -28(%rbp)
	jne	.L138
.L137:
	.loc 2 1566 23
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1566 29
	movzbl	(%rax), %eax
	.loc 2 1566 15
	cmpb	$99, %al
	jne	.L139
	.loc 2 1566 43 discriminator 1
	movzbl	-28(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1566 40 discriminator 1
	testb	%al, %al
	je	.L139
.L138:
	.loc 2 1569 29
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1318, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 1570 29
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 2 1571 29
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	orl	$3, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 2 1565 14
	jmp	.L150
.L139:
	.loc 2 1582 29
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	.loc 2 1583 29
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 2 1584 29
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	andl	$-8, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 2 1589 32
	movq	-40(%rbp), %rax
	movb	$1, 23(%rax)
	.loc 2 1590 33
	movq	-40(%rbp), %rax
	movb	$0, 22(%rax)
	.loc 2 1565 14
	jmp	.L150
.L136:
	.loc 2 1594 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC102(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1594 15
	testl	%eax, %eax
	jne	.L141
	.loc 2 1596 14
	cmpb	$0, -28(%rbp)
	je	.L142
	.loc 2 1597 27
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orb	$8, %ah
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L150
.L142:
	.loc 2 1599 27
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	andb	$-9, %ah
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L150
.L141:
	.loc 2 1603 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC103(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1603 15
	testl	%eax, %eax
	jne	.L143
	.loc 2 1605 14
	cmpb	$0, -28(%rbp)
	je	.L144
	.loc 2 1606 34
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 1606 55
	orb	$24, %ah
	movl	%eax, %edx
	.loc 2 1606 27
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L150
.L144:
	.loc 2 1608 34
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 1608 55
	andb	$-25, %ah
	movl	%eax, %edx
	.loc 2 1608 27
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	jmp	.L150
.L143:
	.loc 2 1622 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC104(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1622 15
	testl	%eax, %eax
	je	.L145
	.loc 2 1623 19
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC105(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1623 16
	testl	%eax, %eax
	jne	.L146
.L145:
	.loc 2 1625 14
	cmpb	$0, -28(%rbp)
	je	.L147
	.loc 2 1627 29
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	andl	$-5, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 2 1628 29
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	andb	$-3, %ah
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 1629 29
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	andl	$-3, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 2 1625 14
	jmp	.L150
.L147:
	.loc 2 1633 29
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 2 1634 29
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orb	$2, %ah
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 1635 29
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 2 1625 14
	jmp	.L150
.L146:
	.loc 2 1639 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC106(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1639 15
	testl	%eax, %eax
	jne	.L149
	.loc 2 1640 23
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	orl	$2576, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L150
.L149:
	.loc 2 1648 16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC107(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1648 15
	testl	%eax, %eax
	jne	.L150
	.loc 2 1650 29
	movq	-40(%rbp), %rax
	movb	$3, 17(%rax)
	.loc 2 1651 30
	movq	-40(%rbp), %rax
	movb	$127, 19(%rax)
	.loc 2 1652 29
	movq	-40(%rbp), %rax
	movb	$21, 20(%rax)
	.loc 2 1653 25
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	orl	$2576, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 2 1662 25
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	andb	$-9, %ah
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L150
.L117:
	.loc 2 1666 11
	cmpb	$0, -28(%rbp)
	je	.L151
	.loc 2 1667 14
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	.loc 2 1667 28
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1667 21
	notl	%eax
	andl	%eax, %edx
	.loc 2 1667 42
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1667 35
	notl	%eax
	andl	%eax, %edx
	.loc 2 1667 12
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L150
.L151:
	.loc 2 1669 15
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	.loc 2 1669 29
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	.loc 2 1669 22
	notl	%eax
	andl	%eax, %edx
	.loc 2 1669 43
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1669 37
	orl	%eax, %edx
	.loc 2 1669 12
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
.L150:
	.loc 2 1671 10
	movl	$1, %eax
.L116:
	.loc 2 1672 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	set_mode, .-set_mode
	.section	.rodata
.LC250:
	.string	"^-"
.LC251:
	.string	"undef"
	.text
	.type	set_control_char, @function
set_control_char:
.LFB51:
	.loc 2 1677 1
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
	.loc 2 1680 7
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC124(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1680 6
	testl	%eax, %eax
	je	.L153
	.loc 2 1680 36 discriminator 1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC125(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1680 33 discriminator 1
	testl	%eax, %eax
	jne	.L154
.L153:
	.loc 2 1681 13
	movq	-32(%rbp), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	integer_arg
	movq	%rax, -8(%rbp)
	.loc 2 1681 11
	jmp	.L155
.L154:
	.loc 2 1682 15
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1682 11
	testb	%al, %al
	je	.L156
	.loc 2 1682 33 discriminator 1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 1682 27 discriminator 1
	testb	%al, %al
	jne	.L157
.L156:
	.loc 2 1683 26
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1683 13
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	.loc 2 1683 11
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	jmp	.L155
.L157:
	.loc 2 1684 12
	movq	-32(%rbp), %rax
	leaq	.LC250(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1684 11
	testl	%eax, %eax
	je	.L158
	.loc 2 1684 33 discriminator 1
	movq	-32(%rbp), %rax
	leaq	.LC251(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1684 30 discriminator 1
	testl	%eax, %eax
	jne	.L159
.L158:
	.loc 2 1685 11
	movq	$0, -8(%rbp)
	jmp	.L155
.L159:
	.loc 2 1686 15
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1686 11
	cmpb	$94, %al
	jne	.L160
	.loc 2 1686 32 discriminator 1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 1686 26 discriminator 1
	testb	%al, %al
	je	.L160
	.loc 2 1688 14
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 1688 10
	cmpb	$63, %al
	jne	.L161
	.loc 2 1689 15
	movq	$127, -8(%rbp)
	.loc 2 1688 10
	jmp	.L155
.L161:
	.loc 2 1691 30
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 1691 17
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1691 35
	andl	$-97, %eax
	.loc 2 1691 15
	cltq
	movq	%rax, -8(%rbp)
	.loc 2 1688 10
	jmp	.L155
.L160:
	.loc 2 1694 13
	movq	-32(%rbp), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	integer_arg
	movq	%rax, -8(%rbp)
.L155:
	.loc 2 1695 18
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 1695 28
	movq	-8(%rbp), %rdx
	movl	%edx, %ecx
	movq	-40(%rbp), %rdx
	movb	%cl, 17(%rdx,%rax)
	.loc 2 1696 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	set_control_char, .-set_control_char
	.type	set_speed, @function
set_speed:
.LFB52:
	.loc 2 1700 1
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
	.loc 2 1703 10
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	string_to_baud
	movl	%eax, -4(%rbp)
	.loc 2 1704 6
	cmpl	$0, -20(%rbp)
	je	.L164
	.loc 2 1704 27 discriminator 1
	cmpl	$2, -20(%rbp)
	jne	.L165
.L164:
	.loc 2 1705 5
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	cfsetispeed@PLT
.L165:
	.loc 2 1706 6
	cmpl	$1, -20(%rbp)
	je	.L166
	.loc 2 1706 28 discriminator 1
	cmpl	$2, -20(%rbp)
	jne	.L168
.L166:
	.loc 2 1707 5
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	cfsetospeed@PLT
.L168:
	.loc 2 1708 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	set_speed, .-set_speed
	.type	get_win_size, @function
get_win_size:
.LFB53:
	.loc 2 1714 1
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
	.loc 2 1715 13
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	$21523, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	ioctl@PLT
	movl	%eax, -4(%rbp)
	.loc 2 1716 10
	movl	-4(%rbp), %eax
	.loc 2 1717 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	get_win_size, .-get_win_size
	.type	set_window_size, @function
set_window_size:
.LFB54:
	.loc 2 1721 1
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
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	.loc 2 1721 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1724 7
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	get_win_size
	.loc 2 1724 6
	testl	%eax, %eax
	je	.L172
	.loc 2 1726 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1726 10
	cmpl	$22, %eax
	je	.L173
.LBB17:
	.loc 2 1727 9
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC247(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L173:
.LBE17:
	.loc 2 1728 7
	leaq	-32(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L172:
	.loc 2 1731 6
	cmpl	$0, -36(%rbp)
	js	.L174
	.loc 2 1732 16
	movl	-36(%rbp), %eax
	movw	%ax, -32(%rbp)
.L174:
	.loc 2 1733 6
	cmpl	$0, -40(%rbp)
	js	.L175
	.loc 2 1734 16
	movl	-40(%rbp), %eax
	movw	%ax, -30(%rbp)
.L175:
	.loc 2 1777 7
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$21524, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	ioctl@PLT
	.loc 2 1777 6
	testl	%eax, %eax
	je	.L178
.LBB18:
	.loc 2 1778 5
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC247(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L178:
.LBE18:
	.loc 2 1779 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L177
	call	__stack_chk_fail@PLT
.L177:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	set_window_size, .-set_window_size
	.section	.rodata
	.align 8
.LC252:
	.string	"%s: no size information for this device"
.LC253:
	.string	"rows %d; columns %d;"
.LC254:
	.string	"%d %d\n"
	.text
	.type	display_window_size, @function
display_window_size:
.LFB55:
	.loc 2 1783 1
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
	movq	%rsi, -48(%rbp)
	movb	%al, -36(%rbp)
	.loc 2 1783 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1786 7
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	get_win_size
	.loc 2 1786 6
	testl	%eax, %eax
	je	.L180
	.loc 2 1788 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1788 10
	cmpl	$22, %eax
	je	.L181
.LBB19:
	.loc 2 1789 9
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC247(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L181:
.LBE19:
	.loc 2 1790 11
	movzbl	-36(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1790 10
	testb	%al, %al
	je	.L186
.LBB20:
	.loc 2 1791 9
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	leaq	.LC252(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L180:
.LBE20:
	.loc 2 1798 29
	movzwl	-30(%rbp), %eax
	.loc 2 1797 7
	movzwl	%ax, %edx
	.loc 2 1798 17
	movzwl	-32(%rbp), %eax
	.loc 2 1797 7
	movzwl	%ax, %ecx
	cmpb	$0, -36(%rbp)
	je	.L183
	.loc 2 1797 7 is_stmt 0 discriminator 1
	leaq	.LC253(%rip), %rax
	jmp	.L184
.L183:
	.loc 2 1797 7 discriminator 2
	leaq	.LC254(%rip), %rax
.L184:
	.loc 2 1797 7 discriminator 4
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	wrapf
	.loc 2 1799 11 is_stmt 1 discriminator 4
	movzbl	-36(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1799 10 discriminator 4
	testb	%al, %al
	je	.L186
	.loc 2 1800 21
	movl	$0, current_col(%rip)
.L186:
	.loc 2 1802 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L185
	call	__stack_chk_fail@PLT
.L185:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	display_window_size, .-display_window_size
	.section	.rodata
.LC255:
	.string	"COLUMNS"
	.text
	.type	screen_columns, @function
screen_columns:
.LFB56:
	.loc 2 1807 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 2 1807 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1817 7
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	get_win_size
	.loc 2 1817 6
	testl	%eax, %eax
	jne	.L188
	.loc 2 1817 57 discriminator 1
	movzwl	-14(%rbp), %eax
	.loc 2 1817 47 discriminator 1
	testw	%ax, %ax
	je	.L188
	.loc 2 1818 15
	movzwl	-14(%rbp), %eax
	movzwl	%ax, %eax
	jmp	.L192
.L188:
.LBB21:
	.loc 2 1822 24
	leaq	.LC255(%rip), %rdi
	call	getenv@PLT
	movq	%rax, -24(%rbp)
	.loc 2 1824 8
	cmpq	$0, -24(%rbp)
	je	.L190
	.loc 2 1825 14
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC17(%rip), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtol@PLT
	.loc 2 1825 11
	testl	%eax, %eax
	jne	.L190
	.loc 2 1826 16
	movq	-32(%rbp), %rax
	.loc 2 1826 11
	testq	%rax, %rax
	jle	.L190
	.loc 2 1827 24
	movq	-32(%rbp), %rax
	.loc 2 1824 9
	movl	$2147483648, %edx
	cmpq	%rdx, %rax
	jl	.L191
.L190:
	.loc 2 1828 17
	movq	$80, -32(%rbp)
.L191:
	.loc 2 1829 12
	movq	-32(%rbp), %rax
.L192:
.LBE21:
	.loc 2 1831 1 discriminator 2
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L193
	.loc 2 1831 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	screen_columns, .-screen_columns
	.type	mode_type_flag, @function
mode_type_flag:
.LFB57:
	.loc 2 1835 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$4, -4(%rbp)
	ja	.L195
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L197(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L197(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L197:
	.long	.L201-.L197
	.long	.L200-.L197
	.long	.L199-.L197
	.long	.L198-.L197
	.long	.L196-.L197
	.text
.L201:
	.loc 2 1839 14
	movq	-16(%rbp), %rax
	addq	$8, %rax
	jmp	.L202
.L200:
	.loc 2 1842 14
	movq	-16(%rbp), %rax
	jmp	.L202
.L199:
	.loc 2 1845 14
	movq	-16(%rbp), %rax
	addq	$4, %rax
	jmp	.L202
.L198:
	.loc 2 1848 14
	movq	-16(%rbp), %rax
	addq	$12, %rax
	jmp	.L202
.L196:
	.loc 2 1851 14
	movl	$0, %eax
	jmp	.L202
.L195:
	.loc 2 1854 7
	call	abort@PLT
.L202:
	.loc 2 1856 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	mode_type_flag, .-mode_type_flag
	.type	display_settings, @function
display_settings:
.LFB58:
	.loc 2 1861 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 2 1862 3
	cmpl	$2, -4(%rbp)
	je	.L204
	cmpl	$2, -4(%rbp)
	ja	.L208
	cmpl	$0, -4(%rbp)
	je	.L206
	cmpl	$1, -4(%rbp)
	je	.L207
	.loc 2 1876 1
	jmp	.L208
.L206:
	.loc 2 1865 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	display_changed
	.loc 2 1866 7
	jmp	.L205
.L207:
	.loc 2 1869 7
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	display_all
	.loc 2 1870 7
	jmp	.L205
.L204:
	.loc 2 1873 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	display_recoverable
	.loc 2 1874 7
	nop
.L205:
.L208:
	.loc 2 1876 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	display_settings, .-display_settings
	.section	.rodata
.LC256:
	.string	"line = %d;"
.LC257:
	.string	"%s = %s;"
.LC258:
	.string	"min = %lu; time = %lu;\n"
.LC259:
	.string	"src/stty.c"
.LC260:
	.string	"bitsp"
.LC261:
	.string	"-%s"
	.text
	.type	display_changed, @function
display_changed:
.LFB59:
	.loc 2 1880 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 1885 18
	movl	$0, -20(%rbp)
	.loc 2 1887 3
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	display_speed
	.loc 2 1889 28
	movq	-40(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1889 3
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC256(%rip), %rdi
	movl	$0, %eax
	call	wrapf
	.loc 2 1891 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 1892 15
	movl	$0, current_col(%rip)
	.loc 2 1894 14
	movb	$1, -25(%rbp)
	.loc 2 1895 10
	movl	$0, -24(%rbp)
	.loc 2 1895 3
	jmp	.L210
.L214:
	.loc 2 1897 37
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+control_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 1897 21
	movq	-40(%rbp), %rdx
	movzbl	17(%rdx,%rax), %ecx
	.loc 2 1897 64
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+control_info(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	.loc 2 1897 10
	cmpb	%al, %cl
	je	.L228
	.loc 2 1902 11
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	control_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC122(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1902 10
	testl	%eax, %eax
	je	.L229
	.loc 2 1918 18
	movb	$0, -25(%rbp)
	.loc 2 1920 49
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+control_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 1920 33
	movq	-40(%rbp), %rdx
	movzbl	17(%rdx,%rax), %eax
	.loc 2 1919 7
	movzbl	%al, %eax
	movl	%eax, %edi
	call	visible
	movq	%rax, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	control_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rcx, %rdx
	movq	%rax, %rsi
	leaq	.LC257(%rip), %rdi
	movl	$0, %eax
	call	wrapf
	jmp	.L212
.L228:
	.loc 2 1898 9
	nop
	jmp	.L212
.L229:
	.loc 2 1903 9
	nop
.L212:
	.loc 2 1895 53 discriminator 2
	addl	$1, -24(%rbp)
.L210:
	.loc 2 1895 16 discriminator 1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	control_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC124(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1895 3 discriminator 1
	testl	%eax, %eax
	jne	.L214
	.loc 2 1922 12
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	.loc 2 1922 22
	andl	$2, %eax
	.loc 2 1922 6
	testl	%eax, %eax
	jne	.L215
	.loc 2 1926 44
	movq	-40(%rbp), %rax
	movzbl	22(%rax), %eax
	.loc 2 1924 7
	movzbl	%al, %edx
	.loc 2 1925 44
	movq	-40(%rbp), %rax
	movzbl	23(%rax), %eax
	.loc 2 1924 7
	movzbl	%al, %eax
	movq	%rax, %rsi
	leaq	.LC258(%rip), %rdi
	movl	$0, %eax
	call	wrapf
	jmp	.L216
.L215:
	.loc 2 1928 12
	movzbl	-25(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1928 11
	testb	%al, %al
	je	.L216
	.loc 2 1929 5
	movl	$10, %edi
	call	putchar_unlocked@PLT
.L216:
	.loc 2 1930 15
	movl	$0, current_col(%rip)
	.loc 2 1932 14
	movb	$1, -25(%rbp)
	.loc 2 1933 10
	movl	$0, -24(%rbp)
	.loc 2 1933 3
	jmp	.L217
.L226:
	.loc 2 1935 23
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	12+mode_info(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	.loc 2 1935 30
	movsbl	%al, %eax
	andl	$8, %eax
	.loc 2 1935 10
	testl	%eax, %eax
	jne	.L230
	.loc 2 1937 23
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+mode_info(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 1937 10
	cmpl	%eax, -20(%rbp)
	je	.L220
	.loc 2 1939 15
	movzbl	-25(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1939 14
	testb	%al, %al
	je	.L221
	.loc 2 1941 15
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 1942 27
	movl	$0, current_col(%rip)
	.loc 2 1943 26
	movb	$1, -25(%rbp)
.L221:
	.loc 2 1945 21
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+mode_info(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -20(%rbp)
.L220:
	.loc 2 1948 15
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+mode_info(%rip), %rax
	movl	(%rdx,%rax), %eax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	mode_type_flag
	movq	%rax, -16(%rbp)
	.loc 2 1949 26
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 1949 52
	testq	%rax, %rax
	je	.L222
	.loc 2 1949 52 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L223
.L222:
	.loc 2 1949 52 discriminator 2
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
.L223:
	.loc 2 1949 12 is_stmt 1 discriminator 4
	movq	%rax, -8(%rbp)
	.loc 2 1954 7 discriminator 4
	cmpq	$0, -16(%rbp)
	jne	.L224
	.loc 2 1954 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6624(%rip), %rcx
	movl	$1954, %edx
	leaq	.LC259(%rip), %rsi
	leaq	.LC260(%rip), %rdi
	call	__assert_fail@PLT
.L224:
	.loc 2 1956 12 is_stmt 1
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 1956 19
	andq	-8(%rbp), %rax
	movq	%rax, %rdx
	.loc 2 1956 42
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	16+mode_info(%rip), %rax
	movq	(%rcx,%rax), %rax
	.loc 2 1956 10
	cmpq	%rax, %rdx
	jne	.L225
	.loc 2 1958 27
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	12+mode_info(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	.loc 2 1958 34
	movsbl	%al, %eax
	andl	$2, %eax
	.loc 2 1958 14
	testl	%eax, %eax
	je	.L219
	.loc 2 1960 15
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC247(%rip), %rdi
	movl	$0, %eax
	call	wrapf
	.loc 2 1961 26
	movb	$0, -25(%rbp)
	jmp	.L219
.L225:
	.loc 2 1964 29
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	12+mode_info(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	.loc 2 1964 36
	movsbl	%al, %eax
	andl	$5, %eax
	.loc 2 1964 15
	cmpl	$5, %eax
	jne	.L219
	.loc 2 1966 11
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC261(%rip), %rdi
	movl	$0, %eax
	call	wrapf
	.loc 2 1967 22
	movb	$0, -25(%rbp)
	jmp	.L219
.L230:
	.loc 2 1936 9
	nop
.L219:
	.loc 2 1933 42 discriminator 2
	addl	$1, -24(%rbp)
.L217:
	.loc 2 1933 27 discriminator 1
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 1933 3 discriminator 1
	testq	%rax, %rax
	jne	.L226
	.loc 2 1970 7
	movzbl	-25(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1970 6
	testb	%al, %al
	je	.L227
	.loc 2 1971 5
	movl	$10, %edi
	call	putchar_unlocked@PLT
.L227:
	.loc 2 1972 15
	movl	$0, current_col(%rip)
	.loc 2 1973 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	display_changed, .-display_changed
	.section	.rodata
.LC262:
	.string	"min = %lu; time = %lu;"
	.text
	.type	display_all, @function
display_all:
.LFB60:
	.loc 2 1977 1
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
	.loc 2 1981 18
	movl	$0, -20(%rbp)
	.loc 2 1983 3
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	display_speed
	.loc 2 1985 3
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	display_window_size
	.loc 2 1988 28
	movq	-40(%rbp), %rax
	movzbl	16(%rax), %eax
	.loc 2 1988 3
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC256(%rip), %rdi
	movl	$0, %eax
	call	wrapf
	.loc 2 1990 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 1991 15
	movl	$0, current_col(%rip)
	.loc 2 1993 10
	movl	$0, -24(%rbp)
	.loc 2 1993 3
	jmp	.L232
.L235:
	.loc 2 1997 11
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	control_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC122(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1997 10
	testl	%eax, %eax
	je	.L246
	.loc 2 2013 49
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+control_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 2013 33
	movq	-40(%rbp), %rdx
	movzbl	17(%rdx,%rax), %eax
	.loc 2 2012 7
	movzbl	%al, %eax
	movl	%eax, %edi
	call	visible
	movq	%rax, %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	control_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rcx, %rdx
	movq	%rax, %rsi
	leaq	.LC257(%rip), %rdi
	movl	$0, %eax
	call	wrapf
	jmp	.L234
.L246:
	.loc 2 1998 9
	nop
.L234:
	.loc 2 1993 54 discriminator 2
	addl	$1, -24(%rbp)
.L232:
	.loc 2 1993 17 discriminator 1
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	control_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC124(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 1993 3 discriminator 1
	testl	%eax, %eax
	jne	.L235
	.loc 2 2020 42
	movq	-40(%rbp), %rax
	movzbl	22(%rax), %eax
	.loc 2 2018 5
	movzbl	%al, %edx
	.loc 2 2019 42
	movq	-40(%rbp), %rax
	movzbl	23(%rax), %eax
	.loc 2 2018 5
	movzbl	%al, %eax
	movq	%rax, %rsi
	leaq	.LC262(%rip), %rdi
	movl	$0, %eax
	call	wrapf
	.loc 2 2021 19
	movl	current_col(%rip), %eax
	.loc 2 2021 6
	testl	%eax, %eax
	je	.L236
	.loc 2 2022 5
	movl	$10, %edi
	call	putchar_unlocked@PLT
.L236:
	.loc 2 2023 15
	movl	$0, current_col(%rip)
	.loc 2 2025 10
	movl	$0, -24(%rbp)
	.loc 2 2025 3
	jmp	.L237
.L245:
	.loc 2 2027 23
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	12+mode_info(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	.loc 2 2027 30
	movsbl	%al, %eax
	andl	$8, %eax
	.loc 2 2027 10
	testl	%eax, %eax
	jne	.L247
	.loc 2 2029 23
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+mode_info(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 2029 10
	cmpl	%eax, -20(%rbp)
	je	.L240
	.loc 2 2031 11
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 2032 23
	movl	$0, current_col(%rip)
	.loc 2 2033 21
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+mode_info(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -20(%rbp)
.L240:
	.loc 2 2036 15
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+mode_info(%rip), %rax
	movl	(%rdx,%rax), %eax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	mode_type_flag
	movq	%rax, -16(%rbp)
	.loc 2 2037 26
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 2037 52
	testq	%rax, %rax
	je	.L241
	.loc 2 2037 52 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L242
.L241:
	.loc 2 2037 52 discriminator 2
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
.L242:
	.loc 2 2037 12 is_stmt 1 discriminator 4
	movq	%rax, -8(%rbp)
	.loc 2 2038 7 discriminator 4
	cmpq	$0, -16(%rbp)
	jne	.L243
	.loc 2 2038 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6641(%rip), %rcx
	movl	$2038, %edx
	leaq	.LC259(%rip), %rsi
	leaq	.LC260(%rip), %rdi
	call	__assert_fail@PLT
.L243:
	.loc 2 2039 12 is_stmt 1
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 2 2039 19
	andq	-8(%rbp), %rax
	movq	%rax, %rdx
	.loc 2 2039 42
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	16+mode_info(%rip), %rax
	movq	(%rcx,%rax), %rax
	.loc 2 2039 10
	cmpq	%rax, %rdx
	jne	.L244
	.loc 2 2040 9
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC247(%rip), %rdi
	movl	$0, %eax
	call	wrapf
	jmp	.L239
.L244:
	.loc 2 2041 28
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	12+mode_info(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	.loc 2 2041 35
	movsbl	%al, %eax
	andl	$4, %eax
	.loc 2 2041 15
	testl	%eax, %eax
	je	.L239
	.loc 2 2042 9
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC261(%rip), %rdi
	movl	$0, %eax
	call	wrapf
	jmp	.L239
.L247:
	.loc 2 2028 9
	nop
.L239:
	.loc 2 2025 42 discriminator 2
	addl	$1, -24(%rbp)
.L237:
	.loc 2 2025 27 discriminator 1
	movl	-24(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 2025 3 discriminator 1
	testq	%rax, %rax
	jne	.L245
	.loc 2 2044 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 2045 15
	movl	$0, current_col(%rip)
	.loc 2 2046 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	display_all, .-display_all
	.section	.rodata
.LC263:
	.string	"speed %lu baud;"
.LC264:
	.string	"%lu\n"
	.align 8
.LC265:
	.string	"ispeed %lu baud; ospeed %lu baud;"
.LC266:
	.string	"%lu %lu\n"
	.text
	.type	display_speed, @function
display_speed:
.LFB61:
	.loc 2 2050 1
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
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	.loc 2 2051 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cfgetispeed@PLT
	.loc 2 2051 6
	testl	%eax, %eax
	je	.L249
	.loc 2 2051 34 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cfgetispeed@PLT
	movl	%eax, %ebx
	.loc 2 2051 56 discriminator 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cfgetospeed@PLT
	.loc 2 2051 31 discriminator 1
	cmpl	%eax, %ebx
	jne	.L250
.L249:
	.loc 2 2052 5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cfgetospeed@PLT
	movl	%eax, %edi
	call	baud_to_value
	movq	%rax, %rdx
	cmpb	$0, -28(%rbp)
	je	.L251
	.loc 2 2052 5 is_stmt 0 discriminator 1
	leaq	.LC263(%rip), %rax
	jmp	.L252
.L251:
	.loc 2 2052 5 discriminator 2
	leaq	.LC264(%rip), %rax
.L252:
	.loc 2 2052 5 discriminator 4
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	wrapf
	jmp	.L253
.L250:
	.loc 2 2055 5 is_stmt 1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cfgetospeed@PLT
	movl	%eax, %edi
	call	baud_to_value
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cfgetispeed@PLT
	movl	%eax, %edi
	call	baud_to_value
	movq	%rax, %rcx
	cmpb	$0, -28(%rbp)
	je	.L254
	.loc 2 2055 5 is_stmt 0 discriminator 1
	leaq	.LC265(%rip), %rax
	jmp	.L255
.L254:
	.loc 2 2055 5 discriminator 2
	leaq	.LC266(%rip), %rax
.L255:
	.loc 2 2055 5 discriminator 4
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	wrapf
.L253:
	.loc 2 2058 7 is_stmt 1
	movzbl	-28(%rbp), %eax
	xorl	$1, %eax
	.loc 2 2058 6
	testb	%al, %al
	je	.L257
	.loc 2 2059 17
	movl	$0, current_col(%rip)
.L257:
	.loc 2 2060 1
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	display_speed, .-display_speed
	.section	.rodata
.LC267:
	.string	"%lx:%lx:%lx:%lx"
.LC268:
	.string	":%lx"
	.text
	.type	display_recoverable, @function
display_recoverable:
.LFB62:
	.loc 2 2064 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 2069 35
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	.loc 2 2065 3
	movl	%eax, %esi
	.loc 2 2068 35
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	.loc 2 2065 3
	movl	%eax, %ecx
	.loc 2 2067 35
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	.loc 2 2065 3
	movl	%eax, %edx
	.loc 2 2066 35
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 2065 3
	movl	%eax, %eax
	movq	%rsi, %r8
	movq	%rax, %rsi
	leaq	.LC267(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.LBB22:
	.loc 2 2070 15
	movq	$0, -8(%rbp)
	.loc 2 2070 3
	jmp	.L259
.L260:
	.loc 2 2071 51 discriminator 3
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$17, %rax
	movzbl	(%rax), %eax
	.loc 2 2071 5 discriminator 3
	movzbl	%al, %eax
	movq	%rax, %rsi
	leaq	.LC268(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 2070 32 discriminator 3
	addq	$1, -8(%rbp)
.L259:
	.loc 2 2070 3 discriminator 1
	cmpq	$31, -8(%rbp)
	jbe	.L260
.LBE22:
	.loc 2 2072 3
	movl	$10, %edi
	call	putchar_unlocked@PLT
	.loc 2 2073 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	display_recoverable, .-display_recoverable
	.type	strtoul_tcflag_t, @function
strtoul_tcflag_t:
.LFB63:
	.loc 2 2079 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, %eax
	movb	%al, -32(%rbp)
	.loc 2 2081 3
	call	__errno_location@PLT
	.loc 2 2081 9
	movl	$0, (%rax)
	.loc 2 2082 8
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -8(%rbp)
	.loc 2 2083 7
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 2083 6
	testl	%eax, %eax
	jne	.L262
	.loc 2 2083 17 discriminator 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2083 16 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 2083 13 discriminator 1
	cmpb	%al, -32(%rbp)
	jne	.L262
	.loc 2 2083 32 discriminator 2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2083 29 discriminator 2
	cmpq	%rax, -24(%rbp)
	je	.L262
	.loc 2 2083 43 discriminator 3
	movq	-8(%rbp), %rax
	movl	%eax, %eax
	.loc 2 2083 40 discriminator 3
	cmpq	%rax, -8(%rbp)
	je	.L263
.L262:
	.loc 2 2084 12
	movl	$-1, %eax
	jmp	.L264
.L263:
	.loc 2 2085 11
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 2086 10
	movl	$0, %eax
.L264:
	.loc 2 2087 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	strtoul_tcflag_t, .-strtoul_tcflag_t
	.type	strtoul_cc_t, @function
strtoul_cc_t:
.LFB64:
	.loc 2 2092 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, %eax
	movb	%al, -32(%rbp)
	.loc 2 2094 3
	call	__errno_location@PLT
	.loc 2 2094 9
	movl	$0, (%rax)
	.loc 2 2095 8
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -8(%rbp)
	.loc 2 2096 7
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 2096 6
	testl	%eax, %eax
	jne	.L266
	.loc 2 2096 17 discriminator 1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2096 16 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 2096 13 discriminator 1
	cmpb	%al, -32(%rbp)
	jne	.L266
	.loc 2 2096 32 discriminator 2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 2096 29 discriminator 2
	cmpq	%rax, -24(%rbp)
	je	.L266
	.loc 2 2096 43 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	%al, %eax
	.loc 2 2096 40 discriminator 3
	cmpq	%rax, -8(%rbp)
	je	.L267
.L266:
	.loc 2 2097 12
	movl	$-1, %eax
	jmp	.L268
.L267:
	.loc 2 2098 11
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
	.loc 2 2099 10
	movl	$0, %eax
.L268:
	.loc 2 2100 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	strtoul_cc_t, .-strtoul_cc_t
	.type	recover_mode, @function
recover_mode:
.LFB65:
	.loc 2 2106 1
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
	.loc 2 2106 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 2108 15
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 2 2110 10
	movq	$0, -40(%rbp)
	.loc 2 2110 3
	jmp	.L270
.L273:
.LBB23:
	.loc 2 2113 45
	movq	-40(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	.loc 2 2113 11
	leaq	-32(%rbp), %rax
	leaq	(%rax,%rdx), %rcx
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$58, %r8d
	movl	$16, %esi
	movq	%rax, %rdi
	call	strtoul_tcflag_t
	.loc 2 2113 10
	testl	%eax, %eax
	je	.L271
	.loc 2 2114 16
	movl	$0, %eax
	jmp	.L279
.L271:
	.loc 2 2115 13
	movq	-56(%rbp), %rax
	.loc 2 2115 9
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBE23:
	.loc 2 2110 23
	addq	$1, -40(%rbp)
.L270:
	.loc 2 2110 3 discriminator 1
	cmpq	$3, -40(%rbp)
	jbe	.L273
	.loc 2 2117 23
	movl	-32(%rbp), %edx
	.loc 2 2117 17
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 2118 23
	movl	-28(%rbp), %edx
	.loc 2 2118 17
	movq	-80(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 2 2119 23
	movl	-24(%rbp), %edx
	.loc 2 2119 17
	movq	-80(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 2 2120 23
	movl	-20(%rbp), %edx
	.loc 2 2120 17
	movq	-80(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 2 2122 10
	movq	$0, -40(%rbp)
	.loc 2 2122 3
	jmp	.L274
.L278:
.LBB24:
	.loc 2 2125 12
	cmpq	$30, -40(%rbp)
	ja	.L275
	.loc 2 2125 12 is_stmt 0 discriminator 1
	movl	$58, %eax
	jmp	.L276
.L275:
	.loc 2 2125 12 discriminator 2
	movl	$0, %eax
.L276:
	.loc 2 2125 12 discriminator 4
	movb	%al, -57(%rbp)
	.loc 2 2126 11 is_stmt 1 discriminator 4
	movsbl	-57(%rbp), %esi
	.loc 2 2126 36 discriminator 4
	movq	-80(%rbp), %rax
	leaq	17(%rax), %rdx
	.loc 2 2126 11 discriminator 4
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%esi, %r8d
	movl	$16, %esi
	movq	%rax, %rdi
	call	strtoul_cc_t
	.loc 2 2126 10 discriminator 4
	testl	%eax, %eax
	je	.L277
	.loc 2 2127 16
	movl	$0, %eax
	jmp	.L279
.L277:
	.loc 2 2128 13
	movq	-56(%rbp), %rax
	.loc 2 2128 9
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBE24:
	.loc 2 2122 25
	addq	$1, -40(%rbp)
.L274:
	.loc 2 2122 3 discriminator 1
	cmpq	$31, -40(%rbp)
	jbe	.L278
	.loc 2 2131 10
	movl	$1, %eax
.L279:
	.loc 2 2132 1 discriminator 1
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L280
	.loc 2 2132 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L280:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	recover_mode, .-recover_mode
	.section	.rodata
.LC269:
	.string	"0"
.LC270:
	.string	"50"
.LC271:
	.string	"75"
.LC272:
	.string	"110"
.LC273:
	.string	"134"
.LC274:
	.string	"134.5"
.LC275:
	.string	"150"
.LC276:
	.string	"200"
.LC277:
	.string	"300"
.LC278:
	.string	"600"
.LC279:
	.string	"1200"
.LC280:
	.string	"1800"
.LC281:
	.string	"2400"
.LC282:
	.string	"4800"
.LC283:
	.string	"9600"
.LC284:
	.string	"19200"
.LC285:
	.string	"38400"
.LC286:
	.string	"exta"
.LC287:
	.string	"extb"
.LC288:
	.string	"57600"
.LC289:
	.string	"115200"
.LC290:
	.string	"230400"
.LC291:
	.string	"460800"
.LC292:
	.string	"500000"
.LC293:
	.string	"576000"
.LC294:
	.string	"921600"
.LC295:
	.string	"1000000"
.LC296:
	.string	"1152000"
.LC297:
	.string	"1500000"
.LC298:
	.string	"2000000"
.LC299:
	.string	"2500000"
.LC300:
	.string	"3000000"
.LC301:
	.string	"3500000"
.LC302:
	.string	"4000000"
	.section	.data.rel.ro.local
	.align 32
	.type	speeds, @object
	.size	speeds, 840
speeds:
	.quad	.LC269
	.long	0
	.zero	4
	.quad	0
	.quad	.LC270
	.long	1
	.zero	4
	.quad	50
	.quad	.LC271
	.long	2
	.zero	4
	.quad	75
	.quad	.LC272
	.long	3
	.zero	4
	.quad	110
	.quad	.LC273
	.long	4
	.zero	4
	.quad	134
	.quad	.LC274
	.long	4
	.zero	4
	.quad	134
	.quad	.LC275
	.long	5
	.zero	4
	.quad	150
	.quad	.LC276
	.long	6
	.zero	4
	.quad	200
	.quad	.LC277
	.long	7
	.zero	4
	.quad	300
	.quad	.LC278
	.long	8
	.zero	4
	.quad	600
	.quad	.LC279
	.long	9
	.zero	4
	.quad	1200
	.quad	.LC280
	.long	10
	.zero	4
	.quad	1800
	.quad	.LC281
	.long	11
	.zero	4
	.quad	2400
	.quad	.LC282
	.long	12
	.zero	4
	.quad	4800
	.quad	.LC283
	.long	13
	.zero	4
	.quad	9600
	.quad	.LC284
	.long	14
	.zero	4
	.quad	19200
	.quad	.LC285
	.long	15
	.zero	4
	.quad	38400
	.quad	.LC286
	.long	14
	.zero	4
	.quad	19200
	.quad	.LC287
	.long	15
	.zero	4
	.quad	38400
	.quad	.LC288
	.long	4097
	.zero	4
	.quad	57600
	.quad	.LC289
	.long	4098
	.zero	4
	.quad	115200
	.quad	.LC290
	.long	4099
	.zero	4
	.quad	230400
	.quad	.LC291
	.long	4100
	.zero	4
	.quad	460800
	.quad	.LC292
	.long	4101
	.zero	4
	.quad	500000
	.quad	.LC293
	.long	4102
	.zero	4
	.quad	576000
	.quad	.LC294
	.long	4103
	.zero	4
	.quad	921600
	.quad	.LC295
	.long	4104
	.zero	4
	.quad	1000000
	.quad	.LC296
	.long	4105
	.zero	4
	.quad	1152000
	.quad	.LC297
	.long	4106
	.zero	4
	.quad	1500000
	.quad	.LC298
	.long	4107
	.zero	4
	.quad	2000000
	.quad	.LC299
	.long	4108
	.zero	4
	.quad	2500000
	.quad	.LC300
	.long	4109
	.zero	4
	.quad	3000000
	.quad	.LC301
	.long	4110
	.zero	4
	.quad	3500000
	.quad	.LC302
	.long	4111
	.zero	4
	.quad	4000000
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.text
	.type	string_to_baud, @function
string_to_baud:
.LFB66:
	.loc 2 2212 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.LBB25:
	.loc 2 2213 12
	movl	$0, -4(%rbp)
	.loc 2 2213 3
	jmp	.L282
.L285:
	.loc 2 2214 9
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	speeds(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 2214 8
	testl	%eax, %eax
	jne	.L283
	.loc 2 2215 23
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+speeds(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L284
.L283:
	.loc 2 2213 45 discriminator 2
	addl	$1, -4(%rbp)
.L282:
	.loc 2 2213 28 discriminator 1
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	speeds(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 2213 3 discriminator 1
	testq	%rax, %rax
	jne	.L285
.LBE25:
	.loc 2 2216 10
	movl	$-1, %eax
.L284:
	.loc 2 2217 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	string_to_baud, .-string_to_baud
	.type	baud_to_value, @function
baud_to_value:
.LFB67:
	.loc 2 2221 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
.LBB26:
	.loc 2 2222 12
	movl	$0, -4(%rbp)
	.loc 2 2222 3
	jmp	.L287
.L290:
	.loc 2 2223 27
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+speeds(%rip), %rax
	movl	(%rdx,%rax), %eax
	.loc 2 2223 8
	cmpl	%eax, -20(%rbp)
	jne	.L288
	.loc 2 2224 23
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+speeds(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L289
.L288:
	.loc 2 2222 45 discriminator 2
	addl	$1, -4(%rbp)
.L287:
	.loc 2 2222 28 discriminator 1
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	speeds(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 2222 3 discriminator 1
	testq	%rax, %rax
	jne	.L290
.LBE26:
	.loc 2 2225 10
	movl	$0, %eax
.L289:
	.loc 2 2226 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	baud_to_value, .-baud_to_value
	.type	sane_mode, @function
sane_mode:
.LFB68:
	.loc 2 2230 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 2234 10
	movl	$0, -12(%rbp)
	.loc 2 2234 3
	jmp	.L292
.L293:
	.loc 2 2240 33 discriminator 3
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+control_info(%rip), %rax
	movq	(%rdx,%rax), %rcx
	.loc 2 2240 59 discriminator 3
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+control_info(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	.loc 2 2240 42 discriminator 3
	movq	-24(%rbp), %rax
	movb	%dl, 17(%rax,%rcx)
	.loc 2 2234 37 discriminator 3
	addl	$1, -12(%rbp)
.L292:
	.loc 2 2234 30 discriminator 1
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	control_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 2234 3 discriminator 1
	testq	%rax, %rax
	jne	.L293
	.loc 2 2243 10
	movl	$0, -12(%rbp)
	.loc 2 2243 3
	jmp	.L294
.L300:
	.loc 2 2245 23
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	12+mode_info(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	.loc 2 2245 30
	movsbl	%al, %eax
	andl	$16, %eax
	.loc 2 2245 10
	testl	%eax, %eax
	jne	.L301
	.loc 2 2248 23
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	12+mode_info(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	.loc 2 2248 30
	movsbl	%al, %eax
	andl	$1, %eax
	.loc 2 2248 10
	testl	%eax, %eax
	je	.L297
	.loc 2 2250 19
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+mode_info(%rip), %rax
	movl	(%rdx,%rax), %eax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	mode_type_flag
	movq	%rax, -8(%rbp)
	.loc 2 2251 11
	cmpq	$0, -8(%rbp)
	jne	.L298
	.loc 2 2251 11 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6716(%rip), %rcx
	movl	$2251, %edx
	leaq	.LC259(%rip), %rsi
	leaq	.LC260(%rip), %rdi
	call	__assert_fail@PLT
.L298:
	.loc 2 2252 21 is_stmt 1
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 2252 43
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	24+mode_info(%rip), %rdx
	movq	(%rcx,%rdx), %rdx
	.loc 2 2252 28
	notl	%edx
	andl	%edx, %eax
	movl	%eax, %ecx
	.loc 2 2252 64
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 2252 50
	orl	%eax, %ecx
	movl	%ecx, %edx
	.loc 2 2252 18
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L296
.L297:
	.loc 2 2254 28
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	12+mode_info(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	.loc 2 2254 35
	movsbl	%al, %eax
	andl	$2, %eax
	.loc 2 2254 15
	testl	%eax, %eax
	je	.L296
	.loc 2 2256 19
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+mode_info(%rip), %rax
	movl	(%rdx,%rax), %eax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	mode_type_flag
	movq	%rax, -8(%rbp)
	.loc 2 2257 11
	cmpq	$0, -8(%rbp)
	jne	.L299
	.loc 2 2257 11 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6716(%rip), %rcx
	movl	$2257, %edx
	leaq	.LC259(%rip), %rsi
	leaq	.LC260(%rip), %rdi
	call	__assert_fail@PLT
.L299:
	.loc 2 2258 20 is_stmt 1
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	.loc 2 2258 42
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	24+mode_info(%rip), %rdx
	movq	(%rcx,%rdx), %rdx
	.loc 2 2258 27
	notl	%edx
	andl	%edx, %eax
	movl	%eax, %ecx
	.loc 2 2258 63
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 2258 48
	notl	%eax
	andl	%eax, %ecx
	movl	%ecx, %edx
	.loc 2 2258 18
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L296
.L301:
	.loc 2 2246 9
	nop
.L296:
	.loc 2 2243 42 discriminator 2
	addl	$1, -12(%rbp)
.L294:
	.loc 2 2243 27 discriminator 1
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	mode_info(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 2243 3 discriminator 1
	testq	%rax, %rax
	jne	.L300
	.loc 2 2261 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	sane_mode, .-sane_mode
	.section	.rodata
.LC303:
	.string	"<undef>"
	.text
	.type	visible, @function
visible:
.LFB69:
	.loc 2 2268 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 2 2270 9
	leaq	buf.6723(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 2272 6
	cmpb	$0, -20(%rbp)
	jne	.L303
	.loc 2 2273 12
	leaq	.LC303(%rip), %rax
	jmp	.L304
.L303:
	.loc 2 2275 6
	cmpb	$31, -20(%rbp)
	jbe	.L305
	.loc 2 2277 10
	cmpb	$126, -20(%rbp)
	ja	.L306
	.loc 2 2278 15
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 2278 18
	movzbl	-20(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L307
.L306:
	.loc 2 2279 15
	cmpb	$127, -20(%rbp)
	jne	.L308
	.loc 2 2281 17
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 2281 20
	movb	$94, (%rax)
	.loc 2 2282 17
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 2282 20
	movb	$63, (%rax)
	jmp	.L307
.L308:
	.loc 2 2286 17
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 2286 20
	movb	$77, (%rax)
	.loc 2 2287 17
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 2287 20
	movb	$45, (%rax)
	.loc 2 2288 14
	cmpb	$-97, -20(%rbp)
	jbe	.L309
	.loc 2 2290 18
	cmpb	$-1, -20(%rbp)
	je	.L310
	.loc 2 2291 31
	movzbl	-20(%rbp), %eax
	leal	-128(%rax), %ecx
	.loc 2 2291 23
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 2291 31
	movl	%ecx, %edx
	.loc 2 2291 26
	movb	%dl, (%rax)
	jmp	.L307
.L310:
	.loc 2 2294 25
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 2294 28
	movb	$94, (%rax)
	.loc 2 2295 25
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 2295 28
	movb	$63, (%rax)
	jmp	.L307
.L309:
	.loc 2 2300 21
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 2300 24
	movb	$94, (%rax)
	.loc 2 2301 35
	movzbl	-20(%rbp), %eax
	leal	-64(%rax), %ecx
	.loc 2 2301 21
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 2301 35
	movl	%ecx, %edx
	.loc 2 2301 24
	movb	%dl, (%rax)
	jmp	.L307
.L305:
	.loc 2 2307 13
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 2307 16
	movb	$94, (%rax)
	.loc 2 2308 21
	movzbl	-20(%rbp), %eax
	leal	64(%rax), %ecx
	.loc 2 2308 13
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 2308 21
	movl	%ecx, %edx
	.loc 2 2308 16
	movb	%dl, (%rax)
.L307:
	.loc 2 2310 10
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 2311 10
	leaq	buf.6723(%rip), %rax
.L304:
	.loc 2 2312 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	visible, .-visible
	.section	.rodata
.LC304:
	.string	"invalid integer argument"
.LC305:
	.string	"bB"
	.text
	.type	integer_arg, @function
integer_arg:
.LFB70:
	.loc 2 2320 1
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
	.loc 2 2321 45
	leaq	.LC304(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 2 2321 10
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	leaq	.LC305(%rip), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xnumtoumax@PLT
	addq	$16, %rsp
	.loc 2 2322 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	integer_arg, .-integer_arg
	.local	check_mode.6529
	.comm	check_mode.6529,60,32
	.local	mode.6498
	.comm	mode.6498,60,32
	.local	new_mode.6537
	.comm	new_mode.6537,60,32
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.6624, @object
	.size	__PRETTY_FUNCTION__.6624, 16
__PRETTY_FUNCTION__.6624:
	.string	"display_changed"
	.align 8
	.type	__PRETTY_FUNCTION__.6641, @object
	.size	__PRETTY_FUNCTION__.6641, 12
__PRETTY_FUNCTION__.6641:
	.string	"display_all"
	.align 8
	.type	__PRETTY_FUNCTION__.6716, @object
	.size	__PRETTY_FUNCTION__.6716, 10
__PRETTY_FUNCTION__.6716:
	.string	"sane_mode"
	.local	buf.6723
	.comm	buf.6723,10,8
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h"
	.file 5 "<built-in>"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 12 "./lib/sys/select.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/termios.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/termios-struct.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/ioctl-types.h"
	.file 16 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 18 "/usr/include/time.h"
	.file 19 "/usr/include/signal.h"
	.file 20 "/usr/include/unistd.h"
	.file 21 "/usr/include/errno.h"
	.file 22 "src/version.h"
	.file 23 "./lib/exitfail.h"
	.file 24 "./lib/timespec.h"
	.file 25 "./lib/version-etc.h"
	.file 26 "./lib/progname.h"
	.file 27 "./lib/quotearg.h"
	.file 28 "./lib/error.h"
	.file 29 "./lib/quote.h"
	.file 30 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x17b1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF240
	.byte	0xc
	.long	.LASF241
	.long	.LASF242
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x3
	.byte	0xd1
	.byte	0x17
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF1
	.byte	0x4
	.byte	0x28
	.byte	0x1b
	.long	0x4c
	.uleb128 0x4
	.long	.LASF243
	.long	0x55
	.uleb128 0x5
	.long	0x65
	.long	0x65
	.uleb128 0x6
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF244
	.byte	0x18
	.byte	0x5
	.byte	0
	.long	0xa2
	.uleb128 0x8
	.long	.LASF2
	.byte	0x5
	.byte	0
	.long	0xa2
	.byte	0
	.uleb128 0x8
	.long	.LASF3
	.byte	0x5
	.byte	0
	.long	0xa2
	.byte	0x4
	.uleb128 0x8
	.long	.LASF4
	.byte	0x5
	.byte	0
	.long	0xa9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF5
	.byte	0x5
	.byte	0
	.long	0xa9
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x9
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF8
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF11
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.long	0xc7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x6
	.byte	0x98
	.byte	0x19
	.long	0xd3
	.uleb128 0x2
	.long	.LASF14
	.byte	0x6
	.byte	0x99
	.byte	0x1b
	.long	0xd3
	.uleb128 0x2
	.long	.LASF15
	.byte	0x6
	.byte	0xa0
	.byte	0x1a
	.long	0xd3
	.uleb128 0xc
	.byte	0x8
	.long	0x109
	.uleb128 0xd
	.long	0xfe
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0xd
	.long	0x109
	.uleb128 0xe
	.long	.LASF66
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x29c
	.uleb128 0xf
	.long	.LASF17
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0xc7
	.byte	0
	.uleb128 0xf
	.long	.LASF18
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0xfe
	.byte	0x8
	.uleb128 0xf
	.long	.LASF19
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0xfe
	.byte	0x10
	.uleb128 0xf
	.long	.LASF20
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0xfe
	.byte	0x18
	.uleb128 0xf
	.long	.LASF21
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0xfe
	.byte	0x20
	.uleb128 0xf
	.long	.LASF22
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0xfe
	.byte	0x28
	.uleb128 0xf
	.long	.LASF23
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0xfe
	.byte	0x30
	.uleb128 0xf
	.long	.LASF24
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0xfe
	.byte	0x38
	.uleb128 0xf
	.long	.LASF25
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0xfe
	.byte	0x40
	.uleb128 0xf
	.long	.LASF26
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0xfe
	.byte	0x48
	.uleb128 0xf
	.long	.LASF27
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0xfe
	.byte	0x50
	.uleb128 0xf
	.long	.LASF28
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0xfe
	.byte	0x58
	.uleb128 0xf
	.long	.LASF29
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x2b5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF30
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x2bb
	.byte	0x68
	.uleb128 0xf
	.long	.LASF31
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0xc7
	.byte	0x70
	.uleb128 0xf
	.long	.LASF32
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0xc7
	.byte	0x74
	.uleb128 0xf
	.long	.LASF33
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0xda
	.byte	0x78
	.uleb128 0xf
	.long	.LASF34
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0xb2
	.byte	0x80
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0xb9
	.byte	0x82
	.uleb128 0xf
	.long	.LASF36
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x2c1
	.byte	0x83
	.uleb128 0xf
	.long	.LASF37
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x2d1
	.byte	0x88
	.uleb128 0xf
	.long	.LASF38
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0xe6
	.byte	0x90
	.uleb128 0xf
	.long	.LASF39
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x2dc
	.byte	0x98
	.uleb128 0xf
	.long	.LASF40
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x2e7
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF41
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x2bb
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0xa9
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF44
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0xc7
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF45
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x2ed
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF46
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x115
	.uleb128 0x10
	.long	.LASF245
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF47
	.uleb128 0xc
	.byte	0x8
	.long	0x2b0
	.uleb128 0xc
	.byte	0x8
	.long	0x115
	.uleb128 0x5
	.long	0x109
	.long	0x2d1
	.uleb128 0x6
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x2a8
	.uleb128 0x11
	.long	.LASF48
	.uleb128 0xc
	.byte	0x8
	.long	0x2d7
	.uleb128 0x11
	.long	.LASF49
	.uleb128 0xc
	.byte	0x8
	.long	0x2e2
	.uleb128 0x5
	.long	0x109
	.long	0x2fd
	.uleb128 0x6
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x110
	.uleb128 0xd
	.long	0x2fd
	.uleb128 0x2
	.long	.LASF50
	.byte	0x9
	.byte	0x34
	.byte	0x18
	.long	0x40
	.uleb128 0x12
	.long	.LASF51
	.byte	0x9
	.byte	0x89
	.byte	0xe
	.long	0x320
	.uleb128 0xc
	.byte	0x8
	.long	0x29c
	.uleb128 0x12
	.long	.LASF52
	.byte	0x9
	.byte	0x8a
	.byte	0xe
	.long	0x320
	.uleb128 0x12
	.long	.LASF53
	.byte	0x9
	.byte	0x8b
	.byte	0xe
	.long	0x320
	.uleb128 0x12
	.long	.LASF54
	.byte	0xa
	.byte	0x1a
	.byte	0xc
	.long	0xc7
	.uleb128 0x5
	.long	0x303
	.long	0x355
	.uleb128 0x13
	.byte	0
	.uleb128 0xd
	.long	0x34a
	.uleb128 0x12
	.long	.LASF55
	.byte	0xa
	.byte	0x1b
	.byte	0x1a
	.long	0x355
	.uleb128 0x12
	.long	.LASF56
	.byte	0xa
	.byte	0x1e
	.byte	0xc
	.long	0xc7
	.uleb128 0x12
	.long	.LASF57
	.byte	0xa
	.byte	0x1f
	.byte	0x1a
	.long	0x355
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF58
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF59
	.uleb128 0x2
	.long	.LASF60
	.byte	0xb
	.byte	0x7
	.byte	0x12
	.long	0xf2
	.uleb128 0x14
	.long	.LASF61
	.byte	0xc
	.value	0x30c
	.byte	0x1
	.long	0xc7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF62
	.uleb128 0x2
	.long	.LASF63
	.byte	0xd
	.byte	0x17
	.byte	0x17
	.long	0xab
	.uleb128 0x2
	.long	.LASF64
	.byte	0xd
	.byte	0x18
	.byte	0x16
	.long	0xa2
	.uleb128 0x2
	.long	.LASF65
	.byte	0xd
	.byte	0x19
	.byte	0x16
	.long	0xa2
	.uleb128 0xe
	.long	.LASF67
	.byte	0x3c
	.byte	0xe
	.byte	0x18
	.byte	0x8
	.long	0x446
	.uleb128 0xf
	.long	.LASF68
	.byte	0xe
	.byte	0x1a
	.byte	0xe
	.long	0x3c4
	.byte	0
	.uleb128 0xf
	.long	.LASF69
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.long	0x3c4
	.byte	0x4
	.uleb128 0xf
	.long	.LASF70
	.byte	0xe
	.byte	0x1c
	.byte	0xe
	.long	0x3c4
	.byte	0x8
	.uleb128 0xf
	.long	.LASF71
	.byte	0xe
	.byte	0x1d
	.byte	0xe
	.long	0x3c4
	.byte	0xc
	.uleb128 0xf
	.long	.LASF72
	.byte	0xe
	.byte	0x1e
	.byte	0xa
	.long	0x3ac
	.byte	0x10
	.uleb128 0xf
	.long	.LASF73
	.byte	0xe
	.byte	0x1f
	.byte	0xa
	.long	0x446
	.byte	0x11
	.uleb128 0xf
	.long	.LASF74
	.byte	0xe
	.byte	0x20
	.byte	0xd
	.long	0x3b8
	.byte	0x34
	.uleb128 0xf
	.long	.LASF75
	.byte	0xe
	.byte	0x21
	.byte	0xd
	.long	0x3b8
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.long	0x3ac
	.long	0x456
	.uleb128 0x6
	.long	0x39
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.long	.LASF76
	.byte	0x8
	.byte	0xf
	.byte	0x1b
	.byte	0x8
	.long	0x498
	.uleb128 0xf
	.long	.LASF77
	.byte	0xf
	.byte	0x1d
	.byte	0x18
	.long	0xb2
	.byte	0
	.uleb128 0xf
	.long	.LASF78
	.byte	0xf
	.byte	0x1e
	.byte	0x18
	.long	0xb2
	.byte	0x2
	.uleb128 0xf
	.long	.LASF79
	.byte	0xf
	.byte	0x1f
	.byte	0x18
	.long	0xb2
	.byte	0x4
	.uleb128 0xf
	.long	.LASF80
	.byte	0xf
	.byte	0x20
	.byte	0x18
	.long	0xb2
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.long	.LASF81
	.byte	0x10
	.byte	0x24
	.byte	0xe
	.long	0xfe
	.uleb128 0x12
	.long	.LASF82
	.byte	0x10
	.byte	0x32
	.byte	0xc
	.long	0xc7
	.uleb128 0x12
	.long	.LASF83
	.byte	0x10
	.byte	0x37
	.byte	0xc
	.long	0xc7
	.uleb128 0x12
	.long	.LASF84
	.byte	0x10
	.byte	0x3b
	.byte	0xc
	.long	0xc7
	.uleb128 0xe
	.long	.LASF85
	.byte	0x20
	.byte	0x11
	.byte	0x32
	.byte	0x8
	.long	0x50a
	.uleb128 0xf
	.long	.LASF86
	.byte	0x11
	.byte	0x34
	.byte	0xf
	.long	0x2fd
	.byte	0
	.uleb128 0xf
	.long	.LASF87
	.byte	0x11
	.byte	0x37
	.byte	0x7
	.long	0xc7
	.byte	0x8
	.uleb128 0xf
	.long	.LASF88
	.byte	0x11
	.byte	0x38
	.byte	0x8
	.long	0x50f
	.byte	0x10
	.uleb128 0x15
	.string	"val"
	.byte	0x11
	.byte	0x39
	.byte	0x7
	.long	0xc7
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.long	0x4c8
	.uleb128 0xc
	.byte	0x8
	.long	0xc7
	.uleb128 0x5
	.long	0xfe
	.long	0x525
	.uleb128 0x6
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF89
	.byte	0x12
	.byte	0x9f
	.byte	0xe
	.long	0x515
	.uleb128 0x12
	.long	.LASF90
	.byte	0x12
	.byte	0xa0
	.byte	0xc
	.long	0xc7
	.uleb128 0x12
	.long	.LASF91
	.byte	0x12
	.byte	0xa1
	.byte	0x11
	.long	0xd3
	.uleb128 0x12
	.long	.LASF92
	.byte	0x12
	.byte	0xa6
	.byte	0xe
	.long	0x515
	.uleb128 0x12
	.long	.LASF93
	.byte	0x12
	.byte	0xae
	.byte	0xc
	.long	0xc7
	.uleb128 0x12
	.long	.LASF94
	.byte	0x12
	.byte	0xaf
	.byte	0x11
	.long	0xd3
	.uleb128 0x14
	.long	.LASF95
	.byte	0x12
	.value	0x112
	.byte	0xc
	.long	0xc7
	.uleb128 0x16
	.uleb128 0xc
	.byte	0x8
	.long	0x57a
	.uleb128 0x5
	.long	0x303
	.long	0x591
	.uleb128 0x6
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.long	0x581
	.uleb128 0x14
	.long	.LASF96
	.byte	0x13
	.value	0x11e
	.byte	0x1a
	.long	0x591
	.uleb128 0x14
	.long	.LASF97
	.byte	0x13
	.value	0x11f
	.byte	0x1a
	.long	0x591
	.uleb128 0x14
	.long	.LASF98
	.byte	0x14
	.value	0x21f
	.byte	0xf
	.long	0x5bd
	.uleb128 0xc
	.byte	0x8
	.long	0xfe
	.uleb128 0x14
	.long	.LASF99
	.byte	0x14
	.value	0x221
	.byte	0xf
	.long	0x5bd
	.uleb128 0x12
	.long	.LASF100
	.byte	0x15
	.byte	0x2d
	.byte	0xe
	.long	0xfe
	.uleb128 0x12
	.long	.LASF101
	.byte	0x15
	.byte	0x2e
	.byte	0xe
	.long	0xfe
	.uleb128 0x12
	.long	.LASF102
	.byte	0x16
	.byte	0x1
	.byte	0x14
	.long	0x2fd
	.uleb128 0x12
	.long	.LASF103
	.byte	0x17
	.byte	0x12
	.byte	0x15
	.long	0xce
	.uleb128 0x17
	.byte	0x7
	.byte	0x4
	.long	0xa2
	.byte	0x18
	.byte	0x29
	.byte	0x6
	.long	0x618
	.uleb128 0x18
	.long	.LASF104
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x17
	.byte	0x7
	.byte	0x4
	.long	0xa2
	.byte	0x18
	.byte	0x2a
	.byte	0x6
	.long	0x62d
	.uleb128 0x19
	.long	.LASF105
	.byte	0x9
	.byte	0
	.uleb128 0x1a
	.byte	0x5
	.byte	0x4
	.long	0xc7
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x64b
	.uleb128 0x1b
	.long	.LASF106
	.sleb128 -130
	.uleb128 0x1b
	.long	.LASF107
	.sleb128 -131
	.byte	0
	.uleb128 0x5
	.long	0x110
	.long	0x656
	.uleb128 0x13
	.byte	0
	.uleb128 0xd
	.long	0x64b
	.uleb128 0x12
	.long	.LASF108
	.byte	0x19
	.byte	0x19
	.byte	0x13
	.long	0x656
	.uleb128 0x12
	.long	.LASF109
	.byte	0x1a
	.byte	0x20
	.byte	0x14
	.long	0x2fd
	.uleb128 0x1c
	.long	.LASF128
	.byte	0x7
	.byte	0x4
	.long	0xa2
	.byte	0x1b
	.byte	0x20
	.byte	0x6
	.long	0x6c8
	.uleb128 0x19
	.long	.LASF110
	.byte	0
	.uleb128 0x19
	.long	.LASF111
	.byte	0x1
	.uleb128 0x19
	.long	.LASF112
	.byte	0x2
	.uleb128 0x19
	.long	.LASF113
	.byte	0x3
	.uleb128 0x19
	.long	.LASF114
	.byte	0x4
	.uleb128 0x19
	.long	.LASF115
	.byte	0x5
	.uleb128 0x19
	.long	.LASF116
	.byte	0x6
	.uleb128 0x19
	.long	.LASF117
	.byte	0x7
	.uleb128 0x19
	.long	.LASF118
	.byte	0x8
	.uleb128 0x19
	.long	.LASF119
	.byte	0x9
	.uleb128 0x19
	.long	.LASF120
	.byte	0xa
	.byte	0
	.uleb128 0xd
	.long	0x673
	.uleb128 0x14
	.long	.LASF121
	.byte	0x1b
	.value	0x10b
	.byte	0x1a
	.long	0x355
	.uleb128 0x5
	.long	0x6c8
	.long	0x6e5
	.uleb128 0x13
	.byte	0
	.uleb128 0xd
	.long	0x6da
	.uleb128 0x14
	.long	.LASF122
	.byte	0x1b
	.value	0x10c
	.byte	0x21
	.long	0x6e5
	.uleb128 0x12
	.long	.LASF123
	.byte	0x1c
	.byte	0x32
	.byte	0xf
	.long	0x57b
	.uleb128 0x12
	.long	.LASF124
	.byte	0x1c
	.byte	0x35
	.byte	0x15
	.long	0xa2
	.uleb128 0x12
	.long	.LASF125
	.byte	0x1c
	.byte	0x39
	.byte	0xc
	.long	0xc7
	.uleb128 0x11
	.long	.LASF126
	.uleb128 0x12
	.long	.LASF127
	.byte	0x1d
	.byte	0x19
	.byte	0x1f
	.long	0x71b
	.uleb128 0x1c
	.long	.LASF129
	.byte	0x7
	.byte	0x4
	.long	0xa2
	.byte	0x1e
	.byte	0x19
	.byte	0x6
	.long	0x75d
	.uleb128 0x19
	.long	.LASF130
	.byte	0
	.uleb128 0x19
	.long	.LASF131
	.byte	0x1
	.uleb128 0x19
	.long	.LASF132
	.byte	0x2
	.uleb128 0x19
	.long	.LASF133
	.byte	0x3
	.uleb128 0x19
	.long	.LASF134
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.long	.LASF135
	.byte	0x7
	.byte	0x4
	.long	0xa2
	.byte	0x2
	.byte	0xad
	.byte	0x6
	.long	0x782
	.uleb128 0x19
	.long	.LASF136
	.byte	0
	.uleb128 0x19
	.long	.LASF137
	.byte	0x1
	.uleb128 0x19
	.long	.LASF138
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.long	.LASF139
	.byte	0x7
	.byte	0x4
	.long	0xa2
	.byte	0x2
	.byte	0xb3
	.byte	0x6
	.long	0x7a7
	.uleb128 0x19
	.long	.LASF140
	.byte	0
	.uleb128 0x1d
	.string	"all"
	.byte	0x1
	.uleb128 0x19
	.long	.LASF141
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.long	.LASF142
	.byte	0x7
	.byte	0x4
	.long	0xa2
	.byte	0x2
	.byte	0xb9
	.byte	0x6
	.long	0x7d8
	.uleb128 0x19
	.long	.LASF143
	.byte	0
	.uleb128 0x19
	.long	.LASF144
	.byte	0x1
	.uleb128 0x19
	.long	.LASF145
	.byte	0x2
	.uleb128 0x19
	.long	.LASF146
	.byte	0x3
	.uleb128 0x19
	.long	.LASF147
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	.LASF148
	.byte	0x20
	.byte	0x2
	.byte	0xc6
	.byte	0x8
	.long	0x827
	.uleb128 0xf
	.long	.LASF86
	.byte	0x2
	.byte	0xc8
	.byte	0x11
	.long	0x2fd
	.byte	0
	.uleb128 0xf
	.long	.LASF149
	.byte	0x2
	.byte	0xc9
	.byte	0x14
	.long	0x7a7
	.byte	0x8
	.uleb128 0xf
	.long	.LASF150
	.byte	0x2
	.byte	0xca
	.byte	0xa
	.long	0x109
	.byte	0xc
	.uleb128 0xf
	.long	.LASF151
	.byte	0x2
	.byte	0xcb
	.byte	0x13
	.long	0x39
	.byte	0x10
	.uleb128 0xf
	.long	.LASF152
	.byte	0x2
	.byte	0xcc
	.byte	0x13
	.long	0x39
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.long	0x7d8
	.uleb128 0x5
	.long	0x827
	.long	0x83c
	.uleb128 0x6
	.long	0x39
	.byte	0x59
	.byte	0
	.uleb128 0xd
	.long	0x82c
	.uleb128 0x1e
	.long	.LASF148
	.byte	0x2
	.byte	0xcf
	.byte	0x1f
	.long	0x83c
	.uleb128 0x9
	.byte	0x3
	.quad	mode_info
	.uleb128 0x1f
	.long	.LASF153
	.byte	0x18
	.byte	0x2
	.value	0x180
	.byte	0x8
	.long	0x890
	.uleb128 0x20
	.long	.LASF86
	.byte	0x2
	.value	0x182
	.byte	0x11
	.long	0x2fd
	.byte	0
	.uleb128 0x20
	.long	.LASF154
	.byte	0x2
	.value	0x183
	.byte	0xa
	.long	0x3ac
	.byte	0x8
	.uleb128 0x20
	.long	.LASF155
	.byte	0x2
	.value	0x184
	.byte	0xc
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	0x857
	.uleb128 0x5
	.long	0x890
	.long	0x8a5
	.uleb128 0x6
	.long	0x39
	.byte	0x12
	.byte	0
	.uleb128 0xd
	.long	0x895
	.uleb128 0x21
	.long	.LASF153
	.byte	0x2
	.value	0x189
	.byte	0x22
	.long	0x8a5
	.uleb128 0x9
	.byte	0x3
	.quad	control_info
	.uleb128 0x21
	.long	.LASF156
	.byte	0x2
	.value	0x1d2
	.byte	0xc
	.long	0xc7
	.uleb128 0x9
	.byte	0x3
	.quad	max_col
	.uleb128 0x21
	.long	.LASF157
	.byte	0x2
	.value	0x1d5
	.byte	0xc
	.long	0xc7
	.uleb128 0x9
	.byte	0x3
	.quad	current_col
	.uleb128 0x21
	.long	.LASF158
	.byte	0x2
	.value	0x1d8
	.byte	0xc
	.long	0xc7
	.uleb128 0x9
	.byte	0x3
	.quad	tcsetattr_options
	.uleb128 0x5
	.long	0x50a
	.long	0x916
	.uleb128 0x6
	.long	0x39
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.long	0x906
	.uleb128 0x21
	.long	.LASF159
	.byte	0x2
	.value	0x1da
	.byte	0x1c
	.long	0x916
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1f
	.long	.LASF160
	.byte	0x18
	.byte	0x2
	.value	0x856
	.byte	0x8
	.long	0x96b
	.uleb128 0x20
	.long	.LASF161
	.byte	0x2
	.value	0x858
	.byte	0xf
	.long	0x2fd
	.byte	0
	.uleb128 0x20
	.long	.LASF162
	.byte	0x2
	.value	0x859
	.byte	0xb
	.long	0x3b8
	.byte	0x8
	.uleb128 0x20
	.long	.LASF163
	.byte	0x2
	.value	0x85a
	.byte	0x15
	.long	0x39
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	0x932
	.uleb128 0x5
	.long	0x96b
	.long	0x980
	.uleb128 0x6
	.long	0x39
	.byte	0x22
	.byte	0
	.uleb128 0xd
	.long	0x970
	.uleb128 0x21
	.long	.LASF164
	.byte	0x2
	.value	0x85d
	.byte	0x1f
	.long	0x980
	.uleb128 0x9
	.byte	0x3
	.quad	speeds
	.uleb128 0x22
	.long	.LASF166
	.byte	0x2
	.value	0x90f
	.byte	0x1
	.long	0x39
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x9de
	.uleb128 0x23
	.string	"s"
	.byte	0x2
	.value	0x90f
	.byte	0x1a
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF165
	.byte	0x2
	.value	0x90f
	.byte	0x2f
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF167
	.byte	0x2
	.value	0x8db
	.byte	0x1
	.long	0x2fd
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0xa38
	.uleb128 0x23
	.string	"ch"
	.byte	0x2
	.value	0x8db
	.byte	0xf
	.long	0x3ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.string	"buf"
	.byte	0x2
	.value	0x8dd
	.byte	0xf
	.long	0xa38
	.uleb128 0x9
	.byte	0x3
	.quad	buf.6723
	.uleb128 0x21
	.long	.LASF168
	.byte	0x2
	.value	0x8de
	.byte	0x9
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	0x109
	.long	0xa48
	.uleb128 0x6
	.long	0x39
	.byte	0x9
	.byte	0
	.uleb128 0x27
	.long	.LASF180
	.byte	0x2
	.value	0x8b5
	.byte	0x1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa9
	.uleb128 0x24
	.long	.LASF169
	.byte	0x2
	.value	0x8b5
	.byte	0x1c
	.long	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x8b7
	.byte	0x7
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.long	.LASF170
	.byte	0x2
	.value	0x8b8
	.byte	0xd
	.long	0xaaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF187
	.long	0xac5
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6716
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x3d0
	.uleb128 0xc
	.byte	0x8
	.long	0x3c4
	.uleb128 0x5
	.long	0x110
	.long	0xac5
	.uleb128 0x6
	.long	0x39
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.long	0xab5
	.uleb128 0x25
	.long	.LASF171
	.byte	0x2
	.value	0x8ac
	.byte	0x1
	.long	0x39
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0xb1e
	.uleb128 0x24
	.long	.LASF162
	.byte	0x2
	.value	0x8ac
	.byte	0x18
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x8ae
	.byte	0xc
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF172
	.byte	0x2
	.value	0x8a3
	.byte	0x1
	.long	0x3b8
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0xb72
	.uleb128 0x23
	.string	"arg"
	.byte	0x2
	.value	0x8a3
	.byte	0x1d
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x8a5
	.byte	0xc
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF173
	.byte	0x2
	.value	0x839
	.byte	0x1
	.long	0xc3b
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0xc3b
	.uleb128 0x23
	.string	"arg"
	.byte	0x2
	.value	0x839
	.byte	0x1b
	.long	0x2fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF169
	.byte	0x2
	.value	0x839
	.byte	0x30
	.long	0xaa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF88
	.byte	0x2
	.value	0x83b
	.byte	0xc
	.long	0xc42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"s"
	.byte	0x2
	.value	0x83c
	.byte	0xf
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x83d
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0xc08
	.uleb128 0x26
	.string	"p"
	.byte	0x2
	.value	0x840
	.byte	0xd
	.long	0xfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x29
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x26
	.string	"p"
	.byte	0x2
	.value	0x84c
	.byte	0xd
	.long	0xfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF174
	.byte	0x2
	.value	0x84d
	.byte	0xc
	.long	0x109
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF175
	.uleb128 0x5
	.long	0x3c4
	.long	0xc52
	.uleb128 0x6
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.long	.LASF176
	.byte	0x2
	.value	0x82b
	.byte	0x1
	.long	0xc7
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd1
	.uleb128 0x23
	.string	"s"
	.byte	0x2
	.value	0x82b
	.byte	0x1b
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF177
	.byte	0x2
	.value	0x82b
	.byte	0x22
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"p"
	.byte	0x2
	.value	0x82b
	.byte	0x2f
	.long	0x5bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF178
	.byte	0x2
	.value	0x82b
	.byte	0x38
	.long	0xcd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF174
	.byte	0x2
	.value	0x82b
	.byte	0x45
	.long	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"ul"
	.byte	0x2
	.value	0x82d
	.byte	0x11
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x3ac
	.uleb128 0x22
	.long	.LASF179
	.byte	0x2
	.value	0x81d
	.byte	0x1
	.long	0xc7
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0xd56
	.uleb128 0x23
	.string	"s"
	.byte	0x2
	.value	0x81d
	.byte	0x1f
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF177
	.byte	0x2
	.value	0x81d
	.byte	0x26
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"p"
	.byte	0x2
	.value	0x81d
	.byte	0x33
	.long	0x5bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF178
	.byte	0x2
	.value	0x81d
	.byte	0x40
	.long	0xaaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF174
	.byte	0x2
	.value	0x81e
	.byte	0x18
	.long	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"ul"
	.byte	0x2
	.value	0x820
	.byte	0x11
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF181
	.byte	0x2
	.value	0x80f
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0xda6
	.uleb128 0x24
	.long	.LASF169
	.byte	0x2
	.value	0x80f
	.byte	0x26
	.long	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x816
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF182
	.byte	0x2
	.value	0x801
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0xde6
	.uleb128 0x24
	.long	.LASF169
	.byte	0x2
	.value	0x801
	.byte	0x20
	.long	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF183
	.byte	0x2
	.value	0x801
	.byte	0x2b
	.long	0xc3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x27
	.long	.LASF184
	.byte	0x2
	.value	0x7b8
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0xe77
	.uleb128 0x24
	.long	.LASF169
	.byte	0x2
	.value	0x7b8
	.byte	0x1e
	.long	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF185
	.byte	0x2
	.value	0x7b8
	.byte	0x30
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x7ba
	.byte	0x7
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF170
	.byte	0x2
	.value	0x7bb
	.byte	0xd
	.long	0xaaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF152
	.byte	0x2
	.value	0x7bc
	.byte	0x11
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF186
	.byte	0x2
	.value	0x7bd
	.byte	0x12
	.long	0x7a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF187
	.long	0xe87
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6641
	.byte	0
	.uleb128 0x5
	.long	0x110
	.long	0xe87
	.uleb128 0x6
	.long	0x39
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.long	0xe77
	.uleb128 0x27
	.long	.LASF188
	.byte	0x2
	.value	0x757
	.byte	0x1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0xf1d
	.uleb128 0x24
	.long	.LASF169
	.byte	0x2
	.value	0x757
	.byte	0x22
	.long	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x759
	.byte	0x7
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF189
	.byte	0x2
	.value	0x75a
	.byte	0x8
	.long	0xc3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x21
	.long	.LASF170
	.byte	0x2
	.value	0x75b
	.byte	0xd
	.long	0xaaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF152
	.byte	0x2
	.value	0x75c
	.byte	0x11
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF186
	.byte	0x2
	.value	0x75d
	.byte	0x12
	.long	0x7a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF187
	.long	0xf2d
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6624
	.byte	0
	.uleb128 0x5
	.long	0x110
	.long	0xf2d
	.uleb128 0x6
	.long	0x39
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.long	0xf1d
	.uleb128 0x27
	.long	.LASF190
	.byte	0x2
	.value	0x743
	.byte	0x1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0xf82
	.uleb128 0x24
	.long	.LASF139
	.byte	0x2
	.value	0x743
	.byte	0x24
	.long	0x782
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LASF169
	.byte	0x2
	.value	0x743
	.byte	0x41
	.long	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF185
	.byte	0x2
	.value	0x744
	.byte	0x1f
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.long	.LASF191
	.byte	0x2
	.value	0x72a
	.byte	0x1
	.long	0xaaf
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0xfc6
	.uleb128 0x24
	.long	.LASF149
	.byte	0x2
	.value	0x72a
	.byte	0x20
	.long	0x7a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LASF169
	.byte	0x2
	.value	0x72a
	.byte	0x36
	.long	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.long	.LASF192
	.byte	0x2
	.value	0x70e
	.byte	0x1
	.long	0xc7
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x102c
	.uleb128 0x26
	.string	"win"
	.byte	0x2
	.value	0x711
	.byte	0x12
	.long	0x456
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x21
	.long	.LASF193
	.byte	0x2
	.value	0x71e
	.byte	0xb
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF194
	.byte	0x2
	.value	0x71f
	.byte	0xe
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF195
	.byte	0x2
	.value	0x6f6
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x109e
	.uleb128 0x24
	.long	.LASF183
	.byte	0x2
	.value	0x6f6
	.byte	0x1b
	.long	0xc3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF185
	.byte	0x2
	.value	0x6f6
	.byte	0x2e
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"win"
	.byte	0x2
	.value	0x6f8
	.byte	0x12
	.long	0x456
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2b
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0
	.uleb128 0x27
	.long	.LASF196
	.byte	0x2
	.value	0x6b8
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x1120
	.uleb128 0x24
	.long	.LASF197
	.byte	0x2
	.value	0x6b8
	.byte	0x16
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF198
	.byte	0x2
	.value	0x6b8
	.byte	0x20
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF185
	.byte	0x2
	.value	0x6b8
	.byte	0x32
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"win"
	.byte	0x2
	.value	0x6ba
	.byte	0x12
	.long	0x456
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2b
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0
	.uleb128 0x22
	.long	.LASF199
	.byte	0x2
	.value	0x6b1
	.byte	0x1
	.long	0xc7
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x1173
	.uleb128 0x23
	.string	"fd"
	.byte	0x2
	.value	0x6b1
	.byte	0x13
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"win"
	.byte	0x2
	.value	0x6b1
	.byte	0x27
	.long	0x1173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"err"
	.byte	0x2
	.value	0x6b3
	.byte	0x7
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x456
	.uleb128 0x27
	.long	.LASF200
	.byte	0x2
	.value	0x6a3
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x11d9
	.uleb128 0x24
	.long	.LASF149
	.byte	0x2
	.value	0x6a3
	.byte	0x1f
	.long	0x75d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"arg"
	.byte	0x2
	.value	0x6a3
	.byte	0x31
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF169
	.byte	0x2
	.value	0x6a3
	.byte	0x46
	.long	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF201
	.byte	0x2
	.value	0x6a5
	.byte	0xb
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF202
	.byte	0x2
	.value	0x68b
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x1239
	.uleb128 0x24
	.long	.LASF203
	.byte	0x2
	.value	0x68b
	.byte	0x2e
	.long	0x1239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"arg"
	.byte	0x2
	.value	0x68b
	.byte	0x40
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF169
	.byte	0x2
	.value	0x68c
	.byte	0x23
	.long	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF163
	.byte	0x2
	.value	0x68e
	.byte	0x15
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x890
	.uleb128 0x22
	.long	.LASF204
	.byte	0x2
	.value	0x5bd
	.byte	0x1
	.long	0xc3b
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x12a3
	.uleb128 0x24
	.long	.LASF203
	.byte	0x2
	.value	0x5bd
	.byte	0x23
	.long	0x12a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF205
	.byte	0x2
	.value	0x5bd
	.byte	0x2e
	.long	0xc3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LASF169
	.byte	0x2
	.value	0x5bd
	.byte	0x48
	.long	0xaa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF170
	.byte	0x2
	.value	0x5bf
	.byte	0xd
	.long	0xaaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x827
	.uleb128 0x2c
	.long	.LASF226
	.byte	0x2
	.value	0x4f4
	.byte	0x1
	.long	0xc7
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x14d3
	.uleb128 0x24
	.long	.LASF206
	.byte	0x2
	.value	0x4f4
	.byte	0xb
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.long	.LASF207
	.byte	0x2
	.value	0x4f4
	.byte	0x18
	.long	0x5bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.long	.LASF169
	.byte	0x2
	.value	0x4f8
	.byte	0x19
	.long	0x3d0
	.uleb128 0x9
	.byte	0x3
	.quad	mode.6498
	.uleb128 0x21
	.long	.LASF139
	.byte	0x2
	.value	0x4fa
	.byte	0x14
	.long	0x782
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x21
	.long	.LASF208
	.byte	0x2
	.value	0x4fb
	.byte	0x7
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF209
	.byte	0x2
	.value	0x4fc
	.byte	0x7
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF210
	.byte	0x2
	.value	0x4fd
	.byte	0x7
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.long	.LASF211
	.byte	0x2
	.value	0x4fe
	.byte	0x8
	.long	0xc3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x21
	.long	.LASF212
	.byte	0x2
	.value	0x4ff
	.byte	0x8
	.long	0xc3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF213
	.byte	0x2
	.value	0x500
	.byte	0x8
	.long	0xc3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -79
	.uleb128 0x21
	.long	.LASF214
	.byte	0x2
	.value	0x501
	.byte	0x8
	.long	0xc3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x21
	.long	.LASF215
	.byte	0x2
	.value	0x502
	.byte	0x8
	.long	0xc3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x21
	.long	.LASF216
	.byte	0x2
	.value	0x503
	.byte	0x9
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF185
	.byte	0x2
	.value	0x504
	.byte	0xf
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2b
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2a
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x141d
	.uleb128 0x21
	.long	.LASF217
	.byte	0x2
	.value	0x55c
	.byte	0x1d
	.long	0x3d0
	.uleb128 0x9
	.byte	0x3
	.quad	check_mode.6529
	.byte	0
	.uleb128 0x2a
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x1465
	.uleb128 0x21
	.long	.LASF218
	.byte	0x2
	.value	0x563
	.byte	0xb
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.byte	0
	.uleb128 0x2b
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x29
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x21
	.long	.LASF219
	.byte	0x2
	.value	0x580
	.byte	0x1d
	.long	0x3d0
	.uleb128 0x9
	.byte	0x3
	.quad	new_mode.6537
	.uleb128 0x2b
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2b
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2b
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF220
	.byte	0x2
	.value	0x43f
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x160b
	.uleb128 0x24
	.long	.LASF221
	.byte	0x2
	.value	0x43f
	.byte	0x16
	.long	0xc3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LASF185
	.byte	0x2
	.value	0x43f
	.byte	0x2c
	.long	0x2fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF222
	.byte	0x2
	.value	0x440
	.byte	0x1f
	.long	0x160b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF223
	.byte	0x2
	.value	0x440
	.byte	0x2d
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF169
	.byte	0x2
	.value	0x441
	.byte	0x21
	.long	0xaa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF212
	.byte	0x2
	.value	0x441
	.byte	0x2d
	.long	0x1611
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF211
	.byte	0x2
	.value	0x442
	.byte	0x17
	.long	0x1611
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x26
	.string	"k"
	.byte	0x2
	.value	0x44f
	.byte	0xc
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x26
	.string	"arg"
	.byte	0x2
	.value	0x451
	.byte	0x13
	.long	0x2fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF224
	.byte	0x2
	.value	0x452
	.byte	0xc
	.long	0xc3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -59
	.uleb128 0x21
	.long	.LASF225
	.byte	0x2
	.value	0x453
	.byte	0xc
	.long	0xc3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x21
	.long	.LASF205
	.byte	0x2
	.value	0x454
	.byte	0xc
	.long	0xc3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x26
	.string	"i"
	.byte	0x2
	.value	0x455
	.byte	0xb
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x21
	.long	.LASF163
	.byte	0x2
	.value	0x4cd
	.byte	0x21
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x104
	.uleb128 0xc
	.byte	0x8
	.long	0xc3b
	.uleb128 0x2d
	.long	.LASF227
	.byte	0x2
	.value	0x20d
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x1647
	.uleb128 0x24
	.long	.LASF228
	.byte	0x2
	.value	0x20d
	.byte	0xc
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x27
	.long	.LASF229
	.byte	0x2
	.value	0x1ec
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x16ac
	.uleb128 0x24
	.long	.LASF230
	.byte	0x2
	.value	0x1ec
	.byte	0x14
	.long	0x2fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2e
	.uleb128 0x21
	.long	.LASF231
	.byte	0x2
	.value	0x1ee
	.byte	0xb
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x26
	.string	"buf"
	.byte	0x2
	.value	0x1ef
	.byte	0x9
	.long	0xfe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x21
	.long	.LASF232
	.byte	0x2
	.value	0x1f0
	.byte	0x7
	.long	0xc7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.uleb128 0x27
	.long	.LASF233
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1751
	.uleb128 0x24
	.long	.LASF234
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1f
	.long	.LASF235
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x1707
	.uleb128 0x20
	.long	.LASF234
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2fd
	.byte	0
	.uleb128 0x20
	.long	.LASF236
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2fd
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0x16dc
	.uleb128 0x21
	.long	.LASF235
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x1761
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF236
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x21
	.long	.LASF237
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x1766
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.long	.LASF238
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x5
	.long	0x1707
	.long	0x1761
	.uleb128 0x6
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.long	0x1751
	.uleb128 0xc
	.byte	0x8
	.long	0x1707
	.uleb128 0x2f
	.long	.LASF246
	.byte	0x1
	.value	0x24c
	.byte	0x1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF239
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0xab
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x109
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x20
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
.LASF201:
	.string	"baud"
.LASF0:
	.string	"size_t"
.LASF148:
	.string	"mode_info"
.LASF140:
	.string	"changed"
.LASF106:
	.string	"GETOPT_HELP_CHAR"
.LASF70:
	.string	"c_cflag"
.LASF48:
	.string	"_IO_codecvt"
.LASF75:
	.string	"c_ospeed"
.LASF198:
	.string	"cols"
.LASF28:
	.string	"_IO_save_end"
.LASF240:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF160:
	.string	"speed_map"
.LASF96:
	.string	"_sys_siglist"
.LASF60:
	.string	"time_t"
.LASF21:
	.string	"_IO_write_base"
.LASF142:
	.string	"mode_type"
.LASF125:
	.string	"error_one_per_line"
.LASF37:
	.string	"_lock"
.LASF80:
	.string	"ws_ypixel"
.LASF222:
	.string	"settings"
.LASF132:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF149:
	.string	"type"
.LASF146:
	.string	"local"
.LASF26:
	.string	"_IO_save_base"
.LASF68:
	.string	"c_iflag"
.LASF190:
	.string	"display_settings"
.LASF30:
	.string	"_chain"
.LASF234:
	.string	"program"
.LASF34:
	.string	"_cur_column"
.LASF54:
	.string	"sys_nerr"
.LASF219:
	.string	"new_mode"
.LASF178:
	.string	"result"
.LASF56:
	.string	"_sys_nerr"
.LASF98:
	.string	"__environ"
.LASF171:
	.string	"baud_to_value"
.LASF217:
	.string	"check_mode"
.LASF12:
	.string	"long int"
.LASF225:
	.string	"not_set_attr"
.LASF87:
	.string	"has_arg"
.LASF47:
	.string	"_IO_marker"
.LASF226:
	.string	"main"
.LASF69:
	.string	"c_oflag"
.LASF63:
	.string	"cc_t"
.LASF158:
	.string	"tcsetattr_options"
.LASF10:
	.string	"signed char"
.LASF66:
	.string	"_IO_FILE"
.LASF91:
	.string	"__timezone"
.LASF49:
	.string	"_IO_wide_data"
.LASF195:
	.string	"display_window_size"
.LASF187:
	.string	"__PRETTY_FUNCTION__"
.LASF121:
	.string	"quoting_style_args"
.LASF99:
	.string	"environ"
.LASF8:
	.string	"unsigned char"
.LASF168:
	.string	"bpout"
.LASF41:
	.string	"_freeres_list"
.LASF65:
	.string	"tcflag_t"
.LASF141:
	.string	"recoverable"
.LASF189:
	.string	"empty_line"
.LASF183:
	.string	"fancy"
.LASF129:
	.string	"strtol_error"
.LASF233:
	.string	"emit_ancillary_info"
.LASF243:
	.string	"__builtin_va_list"
.LASF124:
	.string	"error_message_count"
.LASF89:
	.string	"__tzname"
.LASF1:
	.string	"__gnuc_va_list"
.LASF175:
	.string	"_Bool"
.LASF179:
	.string	"strtoul_tcflag_t"
.LASF163:
	.string	"value"
.LASF157:
	.string	"current_col"
.LASF16:
	.string	"char"
.LASF139:
	.string	"output_type"
.LASF245:
	.string	"_IO_lock_t"
.LASF196:
	.string	"set_window_size"
.LASF94:
	.string	"timezone"
.LASF197:
	.string	"rows"
.LASF114:
	.string	"shell_escape_always_quoting_style"
.LASF150:
	.string	"flags"
.LASF18:
	.string	"_IO_read_ptr"
.LASF72:
	.string	"c_line"
.LASF229:
	.string	"wrapf"
.LASF3:
	.string	"fp_offset"
.LASF51:
	.string	"stdin"
.LASF214:
	.string	"recoverable_output"
.LASF55:
	.string	"sys_errlist"
.LASF144:
	.string	"input"
.LASF29:
	.string	"_markers"
.LASF109:
	.string	"program_name"
.LASF181:
	.string	"display_recoverable"
.LASF244:
	.string	"__va_list_tag"
.LASF116:
	.string	"c_maybe_quoting_style"
.LASF185:
	.string	"device_name"
.LASF174:
	.string	"delim"
.LASF133:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF236:
	.string	"node"
.LASF162:
	.string	"speed"
.LASF100:
	.string	"program_invocation_name"
.LASF38:
	.string	"_offset"
.LASF165:
	.string	"maxval"
.LASF131:
	.string	"LONGINT_OVERFLOW"
.LASF82:
	.string	"optind"
.LASF241:
	.string	"src/stty.c"
.LASF182:
	.string	"display_speed"
.LASF119:
	.string	"clocale_quoting_style"
.LASF123:
	.string	"error_print_progname"
.LASF221:
	.string	"checking"
.LASF6:
	.string	"long unsigned int"
.LASF228:
	.string	"status"
.LASF32:
	.string	"_flags2"
.LASF20:
	.string	"_IO_read_base"
.LASF85:
	.string	"option"
.LASF153:
	.string	"control_info"
.LASF45:
	.string	"_unused2"
.LASF204:
	.string	"set_mode"
.LASF218:
	.string	"fdflags"
.LASF211:
	.string	"require_set_attr"
.LASF206:
	.string	"argc"
.LASF79:
	.string	"ws_xpixel"
.LASF188:
	.string	"display_changed"
.LASF33:
	.string	"_old_offset"
.LASF235:
	.string	"infomap"
.LASF231:
	.string	"args"
.LASF207:
	.string	"argv"
.LASF111:
	.string	"shell_quoting_style"
.LASF199:
	.string	"get_win_size"
.LASF164:
	.string	"speeds"
.LASF205:
	.string	"reversed"
.LASF166:
	.string	"integer_arg"
.LASF192:
	.string	"screen_columns"
.LASF58:
	.string	"long long int"
.LASF50:
	.string	"va_list"
.LASF102:
	.string	"Version"
.LASF103:
	.string	"exit_failure"
.LASF61:
	.string	"_gl_cxxalias_dummy"
.LASF73:
	.string	"c_cc"
.LASF115:
	.string	"c_quoting_style"
.LASF154:
	.string	"saneval"
.LASF23:
	.string	"_IO_write_end"
.LASF152:
	.string	"mask"
.LASF134:
	.string	"LONGINT_INVALID"
.LASF2:
	.string	"gp_offset"
.LASF143:
	.string	"control"
.LASF97:
	.string	"sys_siglist"
.LASF194:
	.string	"n_columns"
.LASF107:
	.string	"GETOPT_VERSION_CHAR"
.LASF24:
	.string	"_IO_buf_base"
.LASF76:
	.string	"winsize"
.LASF193:
	.string	"col_string"
.LASF208:
	.string	"optc"
.LASF7:
	.string	"unsigned int"
.LASF210:
	.string	"opti"
.LASF108:
	.string	"version_etc_copyright"
.LASF232:
	.string	"buflen"
.LASF122:
	.string	"quoting_style_vals"
.LASF110:
	.string	"literal_quoting_style"
.LASF92:
	.string	"tzname"
.LASF43:
	.string	"__pad5"
.LASF88:
	.string	"flag"
.LASF151:
	.string	"bits"
.LASF4:
	.string	"overflow_arg_area"
.LASF126:
	.string	"quoting_options"
.LASF17:
	.string	"_flags"
.LASF155:
	.string	"offset"
.LASF238:
	.string	"lc_messages"
.LASF127:
	.string	"quote_quoting_options"
.LASF44:
	.string	"_mode"
.LASF67:
	.string	"termios"
.LASF39:
	.string	"_codecvt"
.LASF105:
	.string	"LOG10_TIMESPEC_HZ"
.LASF212:
	.string	"speed_was_set"
.LASF170:
	.string	"bitsp"
.LASF71:
	.string	"c_lflag"
.LASF161:
	.string	"string"
.LASF223:
	.string	"n_settings"
.LASF59:
	.string	"long double"
.LASF46:
	.string	"FILE"
.LASF159:
	.string	"longopts"
.LASF130:
	.string	"LONGINT_OK"
.LASF203:
	.string	"info"
.LASF84:
	.string	"optopt"
.LASF172:
	.string	"string_to_baud"
.LASF118:
	.string	"locale_quoting_style"
.LASF62:
	.string	"long long unsigned int"
.LASF145:
	.string	"output"
.LASF74:
	.string	"c_ispeed"
.LASF5:
	.string	"reg_save_area"
.LASF147:
	.string	"combination"
.LASF13:
	.string	"__off_t"
.LASF128:
	.string	"quoting_style"
.LASF101:
	.string	"program_invocation_short_name"
.LASF180:
	.string	"sane_mode"
.LASF246:
	.string	"emit_mandatory_arg_note"
.LASF42:
	.string	"_freeres_buf"
.LASF78:
	.string	"ws_col"
.LASF83:
	.string	"opterr"
.LASF242:
	.string	"/root/coreutils"
.LASF15:
	.string	"__time_t"
.LASF27:
	.string	"_IO_backup_base"
.LASF64:
	.string	"speed_t"
.LASF36:
	.string	"_shortbuf"
.LASF239:
	.string	"to_uchar"
.LASF77:
	.string	"ws_row"
.LASF209:
	.string	"argi"
.LASF112:
	.string	"shell_always_quoting_style"
.LASF14:
	.string	"__off64_t"
.LASF184:
	.string	"display_all"
.LASF186:
	.string	"prev_type"
.LASF117:
	.string	"escape_quoting_style"
.LASF25:
	.string	"_IO_buf_end"
.LASF176:
	.string	"strtoul_cc_t"
.LASF86:
	.string	"name"
.LASF167:
	.string	"visible"
.LASF216:
	.string	"file_name"
.LASF53:
	.string	"stderr"
.LASF11:
	.string	"short int"
.LASF169:
	.string	"mode"
.LASF227:
	.string	"usage"
.LASF113:
	.string	"shell_escape_quoting_style"
.LASF202:
	.string	"set_control_char"
.LASF35:
	.string	"_vtable_offset"
.LASF57:
	.string	"_sys_errlist"
.LASF104:
	.string	"TIMESPEC_HZ"
.LASF237:
	.string	"map_prog"
.LASF90:
	.string	"__daylight"
.LASF136:
	.string	"input_speed"
.LASF220:
	.string	"apply_settings"
.LASF19:
	.string	"_IO_read_end"
.LASF95:
	.string	"getdate_err"
.LASF215:
	.string	"noargs"
.LASF31:
	.string	"_fileno"
.LASF40:
	.string	"_wide_data"
.LASF213:
	.string	"verbose_output"
.LASF81:
	.string	"optarg"
.LASF173:
	.string	"recover_mode"
.LASF138:
	.string	"both_speeds"
.LASF9:
	.string	"short unsigned int"
.LASF52:
	.string	"stdout"
.LASF177:
	.string	"base"
.LASF230:
	.string	"message"
.LASF135:
	.string	"speed_setting"
.LASF156:
	.string	"max_col"
.LASF22:
	.string	"_IO_write_ptr"
.LASF93:
	.string	"daylight"
.LASF200:
	.string	"set_speed"
.LASF137:
	.string	"output_speed"
.LASF120:
	.string	"custom_quoting_style"
.LASF191:
	.string	"mode_type_flag"
.LASF224:
	.string	"match_found"
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
