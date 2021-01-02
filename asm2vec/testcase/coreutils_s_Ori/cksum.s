	.file	"cksum.c"
	.text
.Ltext0:
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
	.file 1 "src/system.h"
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
	jmp	.L2
.L4:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L2:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L3
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L4
.L3:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L5
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L5:
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
	je	.L6
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L6
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L6:
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
	jne	.L7
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L8
.L7:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L8:
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
	je	.L9
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L9:
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
	.type	crctab, @object
	.size	crctab, 2048
crctab:
	.quad	0
	.quad	79764919
	.quad	159529838
	.quad	222504665
	.quad	319059676
	.quad	398814059
	.quad	445009330
	.quad	507990021
	.quad	638119352
	.quad	583659535
	.quad	797628118
	.quad	726387553
	.quad	890018660
	.quad	835552979
	.quad	1015980042
	.quad	944750013
	.quad	1276238704
	.quad	1221641927
	.quad	1167319070
	.quad	1095957929
	.quad	1595256236
	.quad	1540665371
	.quad	1452775106
	.quad	1381403509
	.quad	1780037320
	.quad	1859660671
	.quad	1671105958
	.quad	1733955601
	.quad	2031960084
	.quad	2111593891
	.quad	1889500026
	.quad	1952343757
	.quad	2552477408
	.quad	2632100695
	.quad	2443283854
	.quad	2506133561
	.quad	2334638140
	.quad	2414271883
	.quad	2191915858
	.quad	2254759653
	.quad	3190512472
	.quad	3135915759
	.quad	3081330742
	.quad	3009969537
	.quad	2905550212
	.quad	2850959411
	.quad	2762807018
	.quad	2691435357
	.quad	3560074640
	.quad	3505614887
	.quad	3719321342
	.quad	3648080713
	.quad	3342211916
	.quad	3287746299
	.quad	3467911202
	.quad	3396681109
	.quad	4063920168
	.quad	4143685023
	.quad	4223187782
	.quad	4286162673
	.quad	3779000052
	.quad	3858754371
	.quad	3904687514
	.quad	3967668269
	.quad	881225847
	.quad	809987520
	.quad	1023691545
	.quad	969234094
	.quad	662832811
	.quad	591600412
	.quad	771767749
	.quad	717299826
	.quad	311336399
	.quad	374308984
	.quad	453813921
	.quad	533576470
	.quad	25881363
	.quad	88864420
	.quad	134795389
	.quad	214552010
	.quad	2023205639
	.quad	2086057648
	.quad	1897238633
	.quad	1976864222
	.quad	1804852699
	.quad	1867694188
	.quad	1645340341
	.quad	1724971778
	.quad	1587496639
	.quad	1516133128
	.quad	1461550545
	.quad	1406951526
	.quad	1302016099
	.quad	1230646740
	.quad	1142491917
	.quad	1087903418
	.quad	2896545431
	.quad	2825181984
	.quad	2770861561
	.quad	2716262478
	.quad	3215044683
	.quad	3143675388
	.quad	3055782693
	.quad	3001194130
	.quad	2326604591
	.quad	2389456536
	.quad	2200899649
	.quad	2280525302
	.quad	2578013683
	.quad	2640855108
	.quad	2418763421
	.quad	2498394922
	.quad	3769900519
	.quad	3832873040
	.quad	3912640137
	.quad	3992402750
	.quad	4088425275
	.quad	4151408268
	.quad	4197601365
	.quad	4277358050
	.quad	3334271071
	.quad	3263032808
	.quad	3476998961
	.quad	3422541446
	.quad	3585640067
	.quad	3514407732
	.quad	3694837229
	.quad	3640369242
	.quad	1762451694
	.quad	1842216281
	.quad	1619975040
	.quad	1682949687
	.quad	2047383090
	.quad	2127137669
	.quad	1938468188
	.quad	2001449195
	.quad	1325665622
	.quad	1271206113
	.quad	1183200824
	.quad	1111960463
	.quad	1543535498
	.quad	1489069629
	.quad	1434599652
	.quad	1363369299
	.quad	622672798
	.quad	568075817
	.quad	748617968
	.quad	677256519
	.quad	907627842
	.quad	853037301
	.quad	1067152940
	.quad	995781531
	.quad	51762726
	.quad	131386257
	.quad	177728840
	.quad	240578815
	.quad	269590778
	.quad	349224269
	.quad	429104020
	.quad	491947555
	.quad	4046411278
	.quad	4126034873
	.quad	4172115296
	.quad	4234965207
	.quad	3794477266
	.quad	3874110821
	.quad	3953728444
	.quad	4016571915
	.quad	3609705398
	.quad	3555108353
	.quad	3735388376
	.quad	3664026991
	.quad	3290680682
	.quad	3236090077
	.quad	3449943556
	.quad	3378572211
	.quad	3174993278
	.quad	3120533705
	.quad	3032266256
	.quad	2961025959
	.quad	2923101090
	.quad	2868635157
	.quad	2813903052
	.quad	2742672763
	.quad	2604032198
	.quad	2683796849
	.quad	2461293480
	.quad	2524268063
	.quad	2284983834
	.quad	2364738477
	.quad	2175806836
	.quad	2238787779
	.quad	1569362073
	.quad	1498123566
	.quad	1409854455
	.quad	1355396672
	.quad	1317987909
	.quad	1246755826
	.quad	1192025387
	.quad	1137557660
	.quad	2072149281
	.quad	2135122070
	.quad	1912620623
	.quad	1992383480
	.quad	1753615357
	.quad	1816598090
	.quad	1627664531
	.quad	1707420964
	.quad	295390185
	.quad	358241886
	.quad	404320391
	.quad	483945776
	.quad	43990325
	.quad	106832002
	.quad	186451547
	.quad	266083308
	.quad	932423249
	.quad	861060070
	.quad	1041341759
	.quad	986742920
	.quad	613929101
	.quad	542559546
	.quad	756411363
	.quad	701822548
	.quad	3316196985
	.quad	3244833742
	.quad	3425377559
	.quad	3370778784
	.quad	3601682597
	.quad	3530312978
	.quad	3744426955
	.quad	3689838204
	.quad	3819031489
	.quad	3881883254
	.quad	3928223919
	.quad	4007849240
	.quad	4037393693
	.quad	4100235434
	.quad	4180117107
	.quad	4259748804
	.quad	2310601993
	.quad	2373574846
	.quad	2151335527
	.quad	2231098320
	.quad	2596047829
	.quad	2659030626
	.quad	2470359227
	.quad	2550115596
	.quad	2947551409
	.quad	2876312838
	.quad	2788305887
	.quad	2733848168
	.quad	3165939309
	.quad	3094707162
	.quad	3040238851
	.quad	2985771188
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
.LC18:
	.string	"-"
.LC19:
	.string	"r"
.LC20:
	.string	"%s"
.LC21:
	.string	"%s: file too long"
.LC22:
	.string	"%u %s %s\n"
.LC23:
	.string	"%u %s\n"
.LC24:
	.string	"write error"
.LC25:
	.string	"-: %s"
	.text
	.type	cksum, @function
cksum:
.LFB50:
	.file 2 "src/cksum.c"
	.loc 2 178 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	leaq	-65536(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -65656(%rbp)
	movl	%esi, %eax
	movb	%al, -65660(%rbp)
	.loc 2 178 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 180 17
	movq	$0, -65648(%rbp)
	.loc 2 181 13
	movq	$0, -65640(%rbp)
	.loc 2 187 7
	movq	-65656(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 187 6
	testl	%eax, %eax
	jne	.L11
	.loc 2 189 10
	movq	stdin(%rip), %rax
	movq	%rax, -65624(%rbp)
	.loc 2 190 23
	movb	$1, have_read_stdin(%rip)
	.loc 2 191 7
	movl	$0, %esi
	movl	$0, %edi
	call	xset_binary_mode@PLT
	jmp	.L12
.L11:
	.loc 2 195 12
	movq	-65656(%rbp), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -65624(%rbp)
	.loc 2 196 10
	cmpq	$0, -65624(%rbp)
	jne	.L12
	.loc 2 198 11
	movq	-65656(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 198 21
	call	__errno_location@PLT
	.loc 2 198 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC20(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 199 18
	movl	$0, %eax
	jmp	.L28
.L12:
	.loc 2 203 3
	movq	-65624(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 205 9
	jmp	.L14
.L19:
.LBB2:
	.loc 2 207 22
	leaq	-65568(%rbp), %rax
	movq	%rax, -65616(%rbp)
	.loc 2 209 18
	movq	-65640(%rbp), %rdx
	movq	-65632(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 209 10
	cmpq	%rax, -65640(%rbp)
	jbe	.L15
.LBB3:
	.loc 2 210 9
	movq	-65656(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L15:
.LBE3:
	.loc 2 211 14
	movq	-65632(%rbp), %rax
	addq	%rax, -65640(%rbp)
	.loc 2 212 13
	jmp	.L16
.L17:
	.loc 2 213 20
	movq	-65648(%rbp), %rax
	salq	$8, %rax
	movq	%rax, %rcx
	.loc 2 213 41
	movq	-65648(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rsi
	.loc 2 213 53
	movq	-65616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -65616(%rbp)
	.loc 2 213 50
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 2 213 48
	xorq	%rsi, %rax
	.loc 2 213 57
	movzbl	%al, %eax
	.loc 2 213 34
	leaq	0(,%rax,8), %rdx
	leaq	crctab(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 213 13
	xorq	%rcx, %rax
	movq	%rax, -65648(%rbp)
.L16:
	.loc 2 212 24
	movq	-65632(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -65632(%rbp)
	.loc 2 212 13
	testq	%rax, %rax
	jne	.L17
	.loc 2 214 11
	movq	-65624(%rbp), %rax
	movq	%rax, %rdi
	call	feof_unlocked@PLT
	.loc 2 214 10
	testl	%eax, %eax
	jne	.L30
.L14:
.LBE2:
	.loc 2 205 24
	movq	-65624(%rbp), %rdx
	leaq	-65568(%rbp), %rax
	movq	%rdx, %rcx
	movl	$65536, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread_unlocked@PLT
	movq	%rax, -65632(%rbp)
	.loc 2 205 9
	cmpq	$0, -65632(%rbp)
	jne	.L19
	jmp	.L18
.L30:
.LBB4:
	.loc 2 215 9
	nop
.L18:
.LBE4:
	.loc 2 218 7
	movq	-65624(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 218 6
	testl	%eax, %eax
	je	.L20
	.loc 2 220 7
	movq	-65656(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 220 17
	call	__errno_location@PLT
	.loc 2 220 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC20(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 221 12
	movq	-65656(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 221 10
	testl	%eax, %eax
	je	.L21
	.loc 2 222 9
	movq	-65624(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
.L21:
	.loc 2 223 14
	movl	$0, %eax
	jmp	.L28
.L20:
	.loc 2 226 8
	movq	-65656(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 226 6
	testl	%eax, %eax
	je	.L22
	.loc 2 226 29 discriminator 1
	movq	-65624(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 226 26 discriminator 1
	cmpl	$-1, %eax
	jne	.L22
	.loc 2 228 7
	movq	-65656(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 228 17
	call	__errno_location@PLT
	.loc 2 228 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC20(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 229 14
	movl	$0, %eax
	jmp	.L28
.L22:
	.loc 2 232 8
	leaq	-65600(%rbp), %rdx
	movq	-65640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, -65608(%rbp)
	.loc 2 234 3
	jmp	.L23
.L24:
	.loc 2 235 16 discriminator 2
	movq	-65648(%rbp), %rax
	salq	$8, %rax
	movq	%rax, %rcx
	.loc 2 235 37 discriminator 2
	movq	-65648(%rbp), %rax
	shrq	$24, %rax
	.loc 2 235 44 discriminator 2
	xorq	-65640(%rbp), %rax
	.loc 2 235 54 discriminator 2
	movzbl	%al, %eax
	.loc 2 235 30 discriminator 2
	leaq	0(,%rax,8), %rdx
	leaq	crctab(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 2 235 9 discriminator 2
	xorq	%rcx, %rax
	movq	%rax, -65648(%rbp)
	.loc 2 234 25 discriminator 2
	shrq	$8, -65640(%rbp)
.L23:
	.loc 2 234 3 discriminator 1
	cmpq	$0, -65640(%rbp)
	jne	.L24
	.loc 2 237 9
	movq	-65648(%rbp), %rax
	notq	%rax
	.loc 2 237 7
	andl	$4294967295, %eax
	movq	%rax, -65648(%rbp)
	.loc 2 239 6
	cmpb	$0, -65660(%rbp)
	je	.L25
	.loc 2 240 5
	movq	-65648(%rbp), %rax
	movl	%eax, %esi
	movq	-65656(%rbp), %rdx
	movq	-65608(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L26
.L25:
	.loc 2 242 5
	movq	-65648(%rbp), %rax
	movl	%eax, %ecx
	movq	-65608(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %esi
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L26:
	.loc 2 244 7
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 244 6
	testl	%eax, %eax
	je	.L27
.LBB5:
	.loc 2 245 5
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC25(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L27:
.LBE5:
	.loc 2 247 10
	movl	$1, %eax
.L28:
	.loc 2 248 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L29
	.loc 2 248 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L29:
	addq	$65656, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	cksum, .-cksum
	.section	.rodata
	.align 8
.LC26:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC27:
	.string	"Usage: %s [FILE]...\n  or:  %s [OPTION]\n"
	.align 8
.LC28:
	.string	"Print CRC checksum and byte counts of each FILE.\n\n"
	.align 8
.LC29:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC30:
	.string	"      --version  output version information and exit\n"
.LC31:
	.string	"cksum"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB51:
	.loc 2 252 1 is_stmt 1
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
	.loc 2 253 6
	cmpl	$0, -20(%rbp)
	je	.L32
	.loc 2 254 5
	movq	program_name(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L33
.L32:
	.loc 2 257 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 257 15
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	.loc 2 257 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 262 7
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 266 7
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 267 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 268 7
	leaq	.LC31(%rip), %rdi
	call	emit_ancillary_info
.L33:
	.loc 2 270 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE51:
	.size	usage, .-usage
	.section	.rodata
.LC32:
	.string	"/usr/local/share/locale"
.LC33:
	.string	"Q. Frank Xia"
	.text
	.globl	main
	.type	main, @function
main:
.LFB52:
	.loc 2 275 1
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
	.loc 2 280 3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 281 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 282 3
	leaq	.LC32(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 283 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 285 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 289 3
	movq	stdout(%rip), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	setvbuf@PLT
	.loc 2 291 3
	movq	Version(%rip), %rcx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC33(%rip), %rdx
	pushq	%rdx
	leaq	usage(%rip), %rdx
	pushq	%rdx
	movl	$1, %r9d
	movq	%rcx, %r8
	leaq	.LC2(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	parse_gnu_standard_options_only@PLT
	addq	$32, %rsp
	.loc 2 294 19
	movb	$0, have_read_stdin(%rip)
	.loc 2 296 14
	movl	optind(%rip), %eax
	.loc 2 296 6
	cmpl	%eax, -20(%rbp)
	jne	.L35
	.loc 2 297 10
	movl	$0, %esi
	leaq	.LC18(%rip), %rdi
	call	cksum
	movb	%al, -5(%rbp)
	jmp	.L36
.L35:
	.loc 2 300 10
	movb	$1, -5(%rbp)
	.loc 2 301 14
	movl	optind(%rip), %eax
	movl	%eax, -4(%rbp)
	.loc 2 301 7
	jmp	.L37
.L38:
	.loc 2 302 26 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 302 15 discriminator 3
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	cksum
	.loc 2 302 12 discriminator 3
	movzbl	-5(%rbp), %edx
	.loc 2 302 15 discriminator 3
	movzbl	%al, %eax
	.loc 2 302 12 discriminator 3
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -5(%rbp)
	.loc 2 301 35 discriminator 3
	addl	$1, -4(%rbp)
.L37:
	.loc 2 301 7 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L38
.L36:
	.loc 2 305 7
	movzbl	have_read_stdin(%rip), %eax
	.loc 2 305 6
	testb	%al, %al
	je	.L39
	.loc 2 305 26 discriminator 1
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 305 23 discriminator 1
	cmpl	$-1, %eax
	jne	.L39
.LBB6:
	.loc 2 306 5
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC18(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L39:
.LBE6:
	.loc 2 307 28
	movzbl	-5(%rbp), %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	.loc 2 308 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 10 "./lib/sys/select.h"
	.file 11 "/usr/include/stdint.h"
	.file 12 "/usr/include/time.h"
	.file 13 "/usr/include/signal.h"
	.file 14 "/usr/include/unistd.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 16 "/usr/include/errno.h"
	.file 17 "src/version.h"
	.file 18 "./lib/exitfail.h"
	.file 19 "./lib/timespec.h"
	.file 20 "./lib/version-etc.h"
	.file 21 "./lib/progname.h"
	.file 22 "./lib/quotearg.h"
	.file 23 "./lib/fadvise.h"
	.file 24 "./lib/error.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x86f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF124
	.byte	0xc
	.long	.LASF125
	.long	.LASF126
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
	.byte	0x49
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x71
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x71
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x71
	.uleb128 0x7
	.byte	0x8
	.long	0xae
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x8
	.long	0xae
	.uleb128 0x9
	.long	.LASF119
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x241
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
	.long	0xa8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xa8
	.byte	0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xa8
	.byte	0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xa8
	.byte	0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xa8
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xa8
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xa8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xa8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xa8
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xa8
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xa8
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x25a
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x260
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
	.long	0x84
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
	.long	0x266
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x276
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x90
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x281
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x28c
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x260
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
	.long	0x292
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xba
	.uleb128 0xb
	.long	.LASF127
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x255
	.uleb128 0x7
	.byte	0x8
	.long	0xba
	.uleb128 0xd
	.long	0xae
	.long	0x276
	.uleb128 0xe
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x24d
	.uleb128 0xc
	.long	.LASF44
	.uleb128 0x7
	.byte	0x8
	.long	0x27c
	.uleb128 0xc
	.long	.LASF45
	.uleb128 0x7
	.byte	0x8
	.long	0x287
	.uleb128 0xd
	.long	0xae
	.long	0x2a2
	.uleb128 0xe
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb5
	.uleb128 0x8
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2b9
	.uleb128 0x7
	.byte	0x8
	.long	0x241
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2b9
	.uleb128 0xf
	.long	.LASF49
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x2a8
	.long	0x2ee
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x2e3
	.uleb128 0xf
	.long	.LASF50
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2ee
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
	.long	0x2ee
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
	.long	0x9c
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
	.uleb128 0x2
	.long	.LASF58
	.byte	0xb
	.byte	0x4a
	.byte	0x1b
	.long	0x39
	.uleb128 0x8
	.long	0x345
	.uleb128 0x2
	.long	.LASF59
	.byte	0xb
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0xd
	.long	0xa8
	.long	0x372
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF60
	.byte	0xc
	.byte	0x9f
	.byte	0xe
	.long	0x362
	.uleb128 0xf
	.long	.LASF61
	.byte	0xc
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF62
	.byte	0xc
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF63
	.byte	0xc
	.byte	0xa6
	.byte	0xe
	.long	0x362
	.uleb128 0xf
	.long	.LASF64
	.byte	0xc
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF65
	.byte	0xc
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF66
	.byte	0xc
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.uleb128 0x7
	.byte	0x8
	.long	0x3c7
	.uleb128 0xd
	.long	0x2a8
	.long	0x3de
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x3ce
	.uleb128 0x11
	.long	.LASF67
	.byte	0xd
	.value	0x11e
	.byte	0x1a
	.long	0x3de
	.uleb128 0x11
	.long	.LASF68
	.byte	0xd
	.value	0x11f
	.byte	0x1a
	.long	0x3de
	.uleb128 0x11
	.long	.LASF69
	.byte	0xe
	.value	0x21f
	.byte	0xf
	.long	0x40a
	.uleb128 0x7
	.byte	0x8
	.long	0xa8
	.uleb128 0x11
	.long	.LASF70
	.byte	0xe
	.value	0x221
	.byte	0xf
	.long	0x40a
	.uleb128 0xf
	.long	.LASF71
	.byte	0xf
	.byte	0x24
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF72
	.byte	0xf
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF73
	.byte	0xf
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF74
	.byte	0xf
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF75
	.byte	0x10
	.byte	0x2d
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF76
	.byte	0x10
	.byte	0x2e
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF77
	.byte	0x11
	.byte	0x1
	.byte	0x14
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF78
	.byte	0x12
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x29
	.byte	0x6
	.long	0x495
	.uleb128 0x14
	.long	.LASF79
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x2a
	.byte	0x6
	.long	0x4aa
	.uleb128 0x15
	.long	.LASF80
	.byte	0x9
	.byte	0
	.uleb128 0xd
	.long	0xb5
	.long	0x4b5
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x4aa
	.uleb128 0xf
	.long	.LASF81
	.byte	0x14
	.byte	0x19
	.byte	0x13
	.long	0x4b5
	.uleb128 0xf
	.long	.LASF82
	.byte	0x15
	.byte	0x20
	.byte	0x14
	.long	0x2a2
	.uleb128 0x16
	.long	.LASF128
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x16
	.byte	0x20
	.byte	0x6
	.long	0x527
	.uleb128 0x15
	.long	.LASF83
	.byte	0
	.uleb128 0x15
	.long	.LASF84
	.byte	0x1
	.uleb128 0x15
	.long	.LASF85
	.byte	0x2
	.uleb128 0x15
	.long	.LASF86
	.byte	0x3
	.uleb128 0x15
	.long	.LASF87
	.byte	0x4
	.uleb128 0x15
	.long	.LASF88
	.byte	0x5
	.uleb128 0x15
	.long	.LASF89
	.byte	0x6
	.uleb128 0x15
	.long	.LASF90
	.byte	0x7
	.uleb128 0x15
	.long	.LASF91
	.byte	0x8
	.uleb128 0x15
	.long	.LASF92
	.byte	0x9
	.uleb128 0x15
	.long	.LASF93
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x4d2
	.uleb128 0x11
	.long	.LASF94
	.byte	0x16
	.value	0x10b
	.byte	0x1a
	.long	0x2ee
	.uleb128 0xd
	.long	0x527
	.long	0x544
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x539
	.uleb128 0x11
	.long	.LASF95
	.byte	0x16
	.value	0x10c
	.byte	0x21
	.long	0x544
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x2d
	.byte	0xe
	.long	0x589
	.uleb128 0x15
	.long	.LASF96
	.byte	0
	.uleb128 0x15
	.long	.LASF97
	.byte	0x2
	.uleb128 0x15
	.long	.LASF98
	.byte	0x5
	.uleb128 0x15
	.long	.LASF99
	.byte	0x4
	.uleb128 0x15
	.long	.LASF100
	.byte	0x3
	.uleb128 0x15
	.long	.LASF101
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF102
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x3c8
	.uleb128 0xf
	.long	.LASF103
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF104
	.byte	0x18
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0xd
	.long	0x351
	.long	0x5bd
	.uleb128 0xe
	.long	0x39
	.byte	0xff
	.byte	0
	.uleb128 0x8
	.long	0x5ad
	.uleb128 0x17
	.long	.LASF105
	.byte	0x2
	.byte	0x70
	.byte	0x1c
	.long	0x5bd
	.uleb128 0x9
	.byte	0x3
	.quad	crctab
	.uleb128 0x17
	.long	.LASF106
	.byte	0x2
	.byte	0xa9
	.byte	0xd
	.long	0x5ee
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF107
	.uleb128 0x18
	.long	.LASF110
	.byte	0x2
	.value	0x112
	.byte	0x1
	.long	0x65
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x667
	.uleb128 0x19
	.long	.LASF108
	.byte	0x2
	.value	0x112
	.byte	0xb
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.long	.LASF109
	.byte	0x2
	.value	0x112
	.byte	0x18
	.long	0x40a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"i"
	.byte	0x2
	.value	0x114
	.byte	0x7
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.string	"ok"
	.byte	0x2
	.value	0x115
	.byte	0x8
	.long	0x5ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x2
	.byte	0xfb
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x695
	.uleb128 0x1d
	.long	.LASF112
	.byte	0x2
	.byte	0xfb
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x2
	.byte	0xb1
	.byte	0x1
	.long	0x5ee
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x78b
	.uleb128 0x1d
	.long	.LASF113
	.byte	0x2
	.byte	0xb1
	.byte	0x14
	.long	0x2a2
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65672
	.uleb128 0x1d
	.long	.LASF114
	.byte	0x2
	.byte	0xb1
	.byte	0x1f
	.long	0x5ee
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65676
	.uleb128 0x1f
	.string	"buf"
	.byte	0x2
	.byte	0xb3
	.byte	0x11
	.long	0x78b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65584
	.uleb128 0x1f
	.string	"crc"
	.byte	0x2
	.byte	0xb4
	.byte	0x11
	.long	0x345
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65664
	.uleb128 0x17
	.long	.LASF115
	.byte	0x2
	.byte	0xb5
	.byte	0xd
	.long	0x356
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65656
	.uleb128 0x17
	.long	.LASF116
	.byte	0x2
	.byte	0xb6
	.byte	0xa
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65648
	.uleb128 0x1f
	.string	"fp"
	.byte	0x2
	.byte	0xb7
	.byte	0x9
	.long	0x2b9
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65640
	.uleb128 0x17
	.long	.LASF117
	.byte	0x2
	.byte	0xb8
	.byte	0x8
	.long	0x79c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65616
	.uleb128 0x1f
	.string	"hp"
	.byte	0x2
	.byte	0xb9
	.byte	0xf
	.long	0x2a2
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65624
	.uleb128 0x20
	.long	.Ldebug_ranges0+0
	.long	0x779
	.uleb128 0x1f
	.string	"cp"
	.byte	0x2
	.byte	0xcf
	.byte	0x16
	.long	0x7ac
	.uleb128 0x4
	.byte	0x91
	.sleb128 -65632
	.uleb128 0x1b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.byte	0
	.uleb128 0x1b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.byte	0
	.uleb128 0xd
	.long	0x49
	.long	0x79c
	.uleb128 0x21
	.long	0x39
	.value	0xffff
	.byte	0
	.uleb128 0xd
	.long	0xae
	.long	0x7ac
	.uleb128 0xe
	.long	0x39
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x49
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x857
	.uleb128 0x19
	.long	.LASF118
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x23
	.long	.LASF120
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x80d
	.uleb128 0x24
	.long	.LASF118
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x2a2
	.byte	0
	.uleb128 0x24
	.long	.LASF121
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x2a2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x7e2
	.uleb128 0x25
	.long	.LASF120
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x867
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x25
	.long	.LASF121
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x25
	.long	.LASF122
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x86c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x25
	.long	.LASF123
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xd
	.long	0x80d
	.long	0x867
	.uleb128 0xe
	.long	0x39
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x857
	.uleb128 0x7
	.byte	0x8
	.long	0x80d
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB4-.Ltext0
	.quad	.LBE4-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF78:
	.string	"exit_failure"
.LASF9:
	.string	"__off_t"
.LASF97:
	.string	"FADVISE_SEQUENTIAL"
.LASF91:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_chain"
.LASF128:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF80:
	.string	"LOG10_TIMESPEC_HZ"
.LASF32:
	.string	"_shortbuf"
.LASF85:
	.string	"shell_always_quoting_style"
.LASF84:
	.string	"shell_quoting_style"
.LASF20:
	.string	"_IO_buf_base"
.LASF57:
	.string	"long long unsigned int"
.LASF58:
	.string	"uint_fast32_t"
.LASF35:
	.string	"_codecvt"
.LASF62:
	.string	"__timezone"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF95:
	.string	"quoting_style_vals"
.LASF59:
	.string	"uintmax_t"
.LASF118:
	.string	"program"
.LASF90:
	.string	"escape_quoting_style"
.LASF83:
	.string	"literal_quoting_style"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF68:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF56:
	.string	"_gl_cxxalias_dummy"
.LASF125:
	.string	"src/cksum.c"
.LASF116:
	.string	"bytes_read"
.LASF36:
	.string	"_wide_data"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF76:
	.string	"program_invocation_short_name"
.LASF88:
	.string	"c_quoting_style"
.LASF44:
	.string	"_IO_codecvt"
.LASF52:
	.string	"_sys_errlist"
.LASF75:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF105:
	.string	"crctab"
.LASF79:
	.string	"TIMESPEC_HZ"
.LASF87:
	.string	"shell_escape_always_quoting_style"
.LASF65:
	.string	"timezone"
.LASF82:
	.string	"program_name"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF49:
	.string	"sys_nerr"
.LASF124:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF93:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF104:
	.string	"error_one_per_line"
.LASF77:
	.string	"Version"
.LASF22:
	.string	"_IO_save_base"
.LASF70:
	.string	"environ"
.LASF33:
	.string	"_lock"
.LASF114:
	.string	"print_name"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF47:
	.string	"stdout"
.LASF81:
	.string	"version_etc_copyright"
.LASF71:
	.string	"optarg"
.LASF66:
	.string	"getdate_err"
.LASF72:
	.string	"optind"
.LASF14:
	.string	"_IO_read_ptr"
.LASF10:
	.string	"__off64_t"
.LASF127:
	.string	"_IO_lock_t"
.LASF119:
	.string	"_IO_FILE"
.LASF102:
	.string	"error_print_progname"
.LASF122:
	.string	"map_prog"
.LASF69:
	.string	"__environ"
.LASF55:
	.string	"time_t"
.LASF50:
	.string	"sys_errlist"
.LASF25:
	.string	"_markers"
.LASF89:
	.string	"c_maybe_quoting_style"
.LASF107:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF121:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF113:
	.string	"file"
.LASF51:
	.string	"_sys_nerr"
.LASF31:
	.string	"_vtable_offset"
.LASF63:
	.string	"tzname"
.LASF42:
	.string	"FILE"
.LASF101:
	.string	"FADVISE_RANDOM"
.LASF129:
	.string	"cksum"
.LASF86:
	.string	"shell_escape_quoting_style"
.LASF98:
	.string	"FADVISE_NOREUSE"
.LASF94:
	.string	"quoting_style_args"
.LASF74:
	.string	"optopt"
.LASF64:
	.string	"daylight"
.LASF54:
	.string	"long double"
.LASF115:
	.string	"length"
.LASF12:
	.string	"char"
.LASF99:
	.string	"FADVISE_DONTNEED"
.LASF11:
	.string	"__time_t"
.LASF92:
	.string	"clocale_quoting_style"
.LASF73:
	.string	"opterr"
.LASF8:
	.string	"__uintmax_t"
.LASF96:
	.string	"FADVISE_NORMAL"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF67:
	.string	"_sys_siglist"
.LASF106:
	.string	"have_read_stdin"
.LASF120:
	.string	"infomap"
.LASF111:
	.string	"usage"
.LASF39:
	.string	"__pad5"
.LASF117:
	.string	"length_buf"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF109:
	.string	"argv"
.LASF61:
	.string	"__daylight"
.LASF112:
	.string	"status"
.LASF126:
	.string	"/root/coreutils"
.LASF13:
	.string	"_flags"
.LASF23:
	.string	"_IO_backup_base"
.LASF103:
	.string	"error_message_count"
.LASF123:
	.string	"lc_messages"
.LASF108:
	.string	"argc"
.LASF37:
	.string	"_freeres_list"
.LASF45:
	.string	"_IO_wide_data"
.LASF100:
	.string	"FADVISE_WILLNEED"
.LASF60:
	.string	"__tzname"
.LASF110:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
.LASF130:
	.string	"emit_ancillary_info"
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
