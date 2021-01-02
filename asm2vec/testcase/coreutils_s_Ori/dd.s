	.file	"dd.c"
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
	.type	select_plural, @function
select_plural:
.LFB17:
	.loc 1 184 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 1 188 30
	movq	-8(%rbp), %rax
	.loc 1 189 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	select_plural, .-select_plural
	.type	ptr_align, @function
ptr_align:
.LFB33:
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
	.type	is_nul, @function
is_nul:
.LFB34:
	.loc 1 513 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 513 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 514 24
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 527 6
	cmpq	$0, -48(%rbp)
	jne	.L19
	.loc 1 528 14
	movl	$1, %eax
	jmp	.L15
.L19:
	.loc 1 531 9
	nop
.L14:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 544 7 discriminator 1
	movb	%al, -17(%rbp)
	.loc 1 545 11 discriminator 1
	movzbl	-17(%rbp), %eax
	.loc 1 545 10 discriminator 1
	testb	%al, %al
	je	.L10
	.loc 1 546 16
	movl	$0, %eax
	jmp	.L15
.L10:
	.loc 1 547 9
	addq	$1, -16(%rbp)
	.loc 1 548 14
	subq	$1, -48(%rbp)
	.loc 1 549 10
	cmpq	$0, -48(%rbp)
	jne	.L11
	.loc 1 550 16
	movl	$1, %eax
	jmp	.L15
.L11:
	.loc 1 551 11
	movq	-48(%rbp), %rax
	andl	$15, %eax
	.loc 1 551 10
	testq	%rax, %rax
	je	.L18
	.loc 1 544 7 discriminator 2
	jmp	.L14
.L18:
	.loc 1 552 9
	nop
	.loc 1 556 11
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	.loc 1 556 35
	testl	%eax, %eax
	sete	%al
.L15:
	.loc 1 557 1 discriminator 3
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L16
	.loc 1 557 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	is_nul, .-is_nul
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
	.loc 1 635 1 is_stmt 1
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
	jmp	.L21
.L23:
	.loc 1 650 13
	addq	$16, -160(%rbp)
.L21:
	.loc 1 649 18
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 649 9
	testq	%rax, %rax
	je	.L22
	.loc 1 649 33 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 649 28 discriminator 1
	testl	%eax, %eax
	jne	.L23
.L22:
	.loc 1 652 15
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 652 6
	testq	%rax, %rax
	je	.L24
	.loc 1 653 10
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
.L24:
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
	je	.L25
	.loc 1 660 22 discriminator 1
	movq	-152(%rbp), %rax
	movl	$3, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 1 660 19 discriminator 1
	testl	%eax, %eax
	je	.L25
	.loc 1 666 7
	movq	stdout(%rip), %rbx
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
.L25:
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
	jne	.L26
	.loc 1 671 3 is_stmt 0 discriminator 1
	leaq	.LC15(%rip), %rbx
	jmp	.L27
.L26:
	.loc 1 671 3 discriminator 2
	leaq	.LC16(%rip), %rbx
.L27:
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
	je	.L28
	.loc 1 673 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L28:
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
	je	.L30
	.loc 1 707 36 discriminator 2
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$61440, %eax
	.loc 1 708 31 discriminator 2
	cmpl	$40960, %eax
	jne	.L31
.L30:
	.loc 1 708 31 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L32
.L31:
	.loc 1 708 31 discriminator 4
	movl	$0, %eax
.L32:
	.loc 1 708 31 discriminator 6
	andl	$1, %eax
	.loc 1 709 1 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	usable_st_size, .-usable_st_size
	.local	input_file
	.comm	input_file,8,8
	.local	output_file
	.comm	output_file,8,8
	.local	page_size
	.comm	page_size,8,8
	.local	input_blocksize
	.comm	input_blocksize,8,8
	.local	output_blocksize
	.comm	output_blocksize,8,8
	.local	conversion_blocksize
	.comm	conversion_blocksize,8,8
	.local	skip_records
	.comm	skip_records,8,8
	.local	skip_bytes
	.comm	skip_bytes,8,8
	.local	seek_records
	.comm	seek_records,8,8
	.local	seek_bytes
	.comm	seek_bytes,8,8
	.local	final_op_was_seek
	.comm	final_op_was_seek,1,1
	.data
	.align 8
	.type	max_records, @object
	.size	max_records, 8
max_records:
	.quad	-1
	.local	max_bytes
	.comm	max_bytes,8,8
	.local	conversions_mask
	.comm	conversions_mask,4,4
	.local	input_flags
	.comm	input_flags,4,4
	.local	output_flags
	.comm	output_flags,4,4
	.align 4
	.type	status_level, @object
	.size	status_level, 4
status_level:
	.long	3
	.local	translation_needed
	.comm	translation_needed,1,1
	.local	w_partial
	.comm	w_partial,8,8
	.local	w_full
	.comm	w_full,8,8
	.local	r_partial
	.comm	r_partial,8,8
	.local	r_full
	.comm	r_full,8,8
	.local	w_bytes
	.comm	w_bytes,8,8
	.local	start_time
	.comm	start_time,8,8
	.local	next_time
	.comm	next_time,8,8
	.local	progress_len
	.comm	progress_len,4,4
	.local	input_seekable
	.comm	input_seekable,1,1
	.local	input_seek_errno
	.comm	input_seek_errno,4,4
	.local	input_offset
	.comm	input_offset,8,8
	.local	input_offset_overflow
	.comm	input_offset_overflow,1,1
	.local	warn_partial_read
	.comm	warn_partial_read,1,1
	.local	r_truncate
	.comm	r_truncate,8,8
	.type	newline_character, @object
	.size	newline_character, 1
newline_character:
	.byte	10
	.type	space_character, @object
	.size	space_character, 1
space_character:
	.byte	32
	.local	real_ibuf
	.comm	real_ibuf,8,8
	.local	real_obuf
	.comm	real_obuf,8,8
	.local	ibuf
	.comm	ibuf,8,8
	.local	obuf
	.comm	obuf,8,8
	.local	oc
	.comm	oc,8,8
	.local	col
	.comm	col,8,8
	.local	caught_signals
	.comm	caught_signals,128,32
	.local	interrupt_signal
	.comm	interrupt_signal,4,4
	.local	info_signal_count
	.comm	info_signal_count,4,4
	.local	i_nocache
	.comm	i_nocache,1,1
	.local	o_nocache
	.comm	o_nocache,1,1
	.local	i_nocache_eof
	.comm	i_nocache_eof,1,1
	.local	o_nocache_eof
	.comm	o_nocache_eof,1,1
	.local	iread_fnc
	.comm	iread_fnc,8,8
	.section	.rodata
	.align 32
	.type	conversions, @object
	.size	conversions, 272
conversions:
	.string	"ascii"
	.zero	6
	.long	2065
	.string	"ebcdic"
	.zero	5
	.long	2058
	.string	"ibm"
	.zero	8
	.long	2060
	.string	"block"
	.zero	6
	.long	2056
	.string	"unblock"
	.zero	4
	.long	2064
	.string	"lcase"
	.zero	6
	.long	2080
	.string	"ucase"
	.zero	6
	.long	2112
	.string	"sparse"
	.zero	5
	.long	65536
	.string	"swab"
	.zero	7
	.long	2176
	.string	"noerror"
	.zero	4
	.long	256
	.string	"nocreat"
	.zero	4
	.long	4096
	.string	"excl"
	.zero	7
	.long	8192
	.string	"notrunc"
	.zero	4
	.long	512
	.string	"sync"
	.zero	7
	.long	1024
	.string	"fdatasync"
	.zero	2
	.long	16384
	.string	"fsync"
	.zero	6
	.long	32768
	.string	""
	.zero	11
	.long	0
	.align 32
	.type	flags, @object
	.size	flags, 304
flags:
	.string	"append"
	.zero	5
	.long	1024
	.string	"binary"
	.zero	5
	.long	0
	.string	"cio"
	.zero	8
	.long	0
	.string	"direct"
	.zero	5
	.long	16384
	.string	"directory"
	.zero	2
	.long	65536
	.string	"dsync"
	.zero	6
	.long	4096
	.string	"noatime"
	.zero	4
	.long	262144
	.string	"nocache"
	.zero	4
	.long	2
	.string	"noctty"
	.zero	5
	.long	256
	.string	"nofollow"
	.zero	3
	.long	131072
	.string	"nolinks"
	.zero	4
	.long	0
	.string	"nonblock"
	.zero	3
	.long	2048
	.string	"sync"
	.zero	7
	.long	1052672
	.string	"text"
	.zero	7
	.long	0
	.string	"fullblock"
	.zero	2
	.long	1
	.string	"count_bytes"
	.long	4
	.string	"skip_bytes"
	.zero	1
	.long	8
	.string	"seek_bytes"
	.zero	1
	.long	16
	.string	""
	.zero	11
	.long	0
	.align 32
	.type	statuses, @object
	.size	statuses, 64
statuses:
	.string	"none"
	.zero	7
	.long	1
	.string	"noxfer"
	.zero	5
	.long	2
	.string	"progress"
	.zero	3
	.long	4
	.string	""
	.zero	11
	.long	0
	.local	trans_table
	.comm	trans_table,256,32
	.align 32
	.type	ascii_to_ebcdic, @object
	.size	ascii_to_ebcdic, 256
ascii_to_ebcdic:
	.string	""
	.ascii	"\001\002\0037-./\026\005%\013\f\r\016\017\020\021\022\023<=2"
	.ascii	"&\030\031?'\034\035\036\037@Z\177{[lP}M]\\Nk`Ka\360\361\362\363"
	.ascii	"\364\365\366\367\370\371z^L~no|\301\302\303\304\305\306\307\310"
	.ascii	"\311\321\322\323\324\325\326\327\330\331\342\343\344\345\346"
	.ascii	"\347\350\351\255\340\275\232my\201\202\203\204\205\206\207\210"
	.ascii	"\211\221\222\223\224\225\226\227\230\231\242\243\244\245\246"
	.ascii	"\247\250\251\300O\320_\007 !\"#$\025\006\027()*+,\t\n\03301\032"
	.ascii	"3456\b89:;\004\024>\341ABCDEFGHIQRSTUVWXYbcdefghipqrstuvwx\200"
	.ascii	"\212\213\214\215\216\217\220j\233\234\235\236\237\240\252\253"
	.ascii	"\254J\256\257\260\261\262\263\264\265\266\267\270\271\272\273"
	.ascii	"\274\241\276\277\312\313\314\315\316\317\332\333\334\335\336"
	.ascii	"\337\352\353\354\355\356\357\372\373\374\375\376\377"
	.align 32
	.type	ascii_to_ibm, @object
	.size	ascii_to_ibm, 256
ascii_to_ibm:
	.string	""
	.ascii	"\001\002\0037-./\026\005%\013\f\r\016\017\020\021\022\023<=2"
	.ascii	"&\030\031?'\034\035\036\037@Z\177{[lP}M]\\Nk`Ka\360\361\362\363"
	.ascii	"\364\365\366\367\370\371z^L~no|\301\302\303\304\305\306\307\310"
	.ascii	"\311\321\322\323\324\325\326\327\330\331\342\343\344\345\346"
	.ascii	"\347\350\351\255\340\275_my\201\202\203\204\205\206\207\210\211"
	.ascii	"\221\222\223\224\225\226\227\230\231\242\243\244\245\246\247"
	.ascii	"\250\251\300O\320\241\007 !\"#$\025\006\027()*+,\t\n\03301\032"
	.ascii	"3456\b89:;\004\024>\341ABCDEFGHIQRSTUVWXYbcdefghipqrstuvwx\200"
	.ascii	"\212\213\214\215\216\217\220\232\233\234\235\236\237\240\252"
	.ascii	"\253\254\255\256\257\260\261\262\263\264\265\266\267\270\271"
	.ascii	"\272\273\274\275\276\277\312\313\314\315\316\317\332\333\334"
	.ascii	"\335\336\337\352\353\354\355\356\357\372\373\374\375\376\377"
	.align 32
	.type	ebcdic_to_ascii, @object
	.size	ebcdic_to_ascii, 256
ebcdic_to_ascii:
	.string	""
	.ascii	"\001\002\003\234\t\206\177\227\215\216\013\f\r\016\017\020\021"
	.ascii	"\022\023\235\205\b\207\030\031\222\217\034\035\036\037\200\201"
	.ascii	"\202\203\204\n\027\033\210\211\212\213\214\005\006\007\220\221"
	.ascii	"\026\223\224\225\226\004\230\231\232\233\024\025\236\032 \240"
	.ascii	"\241\242\243\244\245\246\247\250\325.<(+|&\251\252\253\254\255"
	.ascii	"\256\257\260\261!$*);~-/\262\263\264\265\266\267\270\271\313"
	.ascii	",%_>?\272\273\274\275\276\277\300\301\302`:#@'=\"\303abcdefg"
	.ascii	"hi\304\305\306\307\310\311\312jklmnopqr^\314\315\316\317\320"
	.ascii	"\321\345stuvwxyz\322\323\324[\326\327\330\331\332\333\334\335"
	.ascii	"\336\337\340\341\342\343\344]\346\347{ABCDEFGHI\350\351\352\353"
	.ascii	"\354\355}JKLMNOPQR\356\357\360\361\362\363\\\237STUVWXYZ\364"
	.ascii	"\365\366\367\370\3710123456789\372\373\374\375\376\377"
	.data
	.type	close_stdout_required, @object
	.size	close_stdout_required, 1
close_stdout_required:
	.byte	1
	.text
	.type	maybe_close_stdout, @function
maybe_close_stdout:
.LFB52:
	.file 2 "src/dd.c"
	.loc 2 529 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 530 7
	movzbl	close_stdout_required(%rip), %eax
	.loc 2 530 6
	testb	%al, %al
	je	.L35
	.loc 2 531 5
	call	close_stdout@PLT
	.loc 2 534 1
	jmp	.L37
.L35:
	.loc 2 532 12
	movq	stderr(%rip), %rax
	movq	%rax, %rdi
	call	close_stream@PLT
	.loc 2 532 11
	testl	%eax, %eax
	je	.L37
	.loc 2 533 5
	movl	$1, %edi
	call	_exit@PLT
.L37:
	.loc 2 534 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	maybe_close_stdout, .-maybe_close_stdout
	.type	nl_error, @function
nl_error:
.LFB53:
	.loc 2 540 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
	movl	%esi, -216(%rbp)
	movq	%rdx, -224(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L39
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L39:
	.loc 2 540 1
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 2 541 9
	movl	progress_len(%rip), %eax
	.loc 2 541 6
	testl	%eax, %eax
	jle	.L40
	.loc 2 543 7
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc_unlocked@PLT
	.loc 2 544 20
	movl	$0, progress_len(%rip)
.L40:
	.loc 2 548 3
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 2 549 3
	leaq	-208(%rbp), %rcx
	movq	-224(%rbp), %rdx
	movl	-216(%rbp), %esi
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	verror@PLT
	.loc 2 551 1
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L41
	call	__stack_chk_fail@PLT
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	nl_error, .-nl_error
	.section	.rodata
	.align 8
.LC18:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC19:
	.string	"Usage: %s [OPERAND]...\n  or:  %s OPTION\n"
	.align 8
.LC20:
	.ascii	"Copy a file, converting and formatting according to the oper"
	.ascii	"ands.\n\n  bs=BYTES        read and write up to BYTES bytes "
	.ascii	"at a time (default: 512);\n               "
	.string	"   overrides ibs and obs\n  cbs=BYTES       convert BYTES bytes at a time\n  conv=CONVS      convert the file as per the comma separated symbol list\n  count=N         copy only N input blocks\n  ibs=BYTES       read up to BYTES bytes at a time (default: 512)\n"
	.align 8
.LC21:
	.ascii	"  if=FILE         read from FILE instead of stdin\n  iflag=F"
	.ascii	"LAGS     read as per the comma separated symbol list\n  obs="
	.ascii	"BYTES       write BYTES bytes at a time (default: 512)\n  of"
	.ascii	"=FILE         write to FILE instead of stdout\n  oflag=FLAGS"
	.ascii	"     write as per the comma separated symbol list\n  seek=N "
	.ascii	"         skip N obs-sized blocks at start of output\n  skip="
	.ascii	"N          skip N ibs-sized blocks at start of input\n  stat"
	.ascii	"u"
	.string	"s=LEVEL    The LEVEL of information to print to stderr;\n                  'none' suppresses everything but error messages,\n                  'noxfer' suppresses the final transfer statistics,\n                  'progress' shows periodic transfer statistics\n"
	.align 8
.LC22:
	.ascii	"\nN and BYTES may be followed by th"
	.string	"e following multiplicative suffixes:\nc=1, w=2, b=512, kB=1000, K=1024, MB=1000*1000, M=1024*1024, xM=M,\nGB=1000*1000*1000, G=1024*1024*1024, and so on for T, P, E, Z, Y.\nBinary prefixes can be used, too: KiB=K, MiB=M, and so on.\n\nEach CONV symbol may be:\n\n"
	.align 8
.LC23:
	.ascii	"  ascii     from EBCDIC to ASCII\n  ebcdic    from ASCII to "
	.ascii	"EBCDIC\n  ibm       from ASCII to alternate EBCDIC\n  block "
	.ascii	"    pad newline-terminated records with spaces to cbs-size\n"
	.ascii	"  unblock   replace trailing spaces in cbs-size records with"
	.ascii	" newline\n  lcase     change upper case to lower case\n  uca"
	.ascii	"se     change lower case "
	.string	"to upper case\n  sparse    try to seek rather than write all-NUL output blocks\n  swab      swap every pair of input bytes\n  sync      pad every input block with NULs to ibs-size; when used\n            with block or unblock, pad with spaces rather than NULs\n"
	.align 8
.LC24:
	.ascii	"  excl      fail if the output"
	.string	" file already exists\n  nocreat   do not create the output file\n  notrunc   do not truncate the output file\n  noerror   continue after read errors\n  fdatasync  physically write output file data before finishing\n  fsync     likewise, but also write metadata\n"
	.align 8
.LC25:
	.string	"\nEach FLAG symbol may be:\n\n  append    append mode (makes sense only for output; conv=notrunc suggested)\n"
	.align 8
.LC26:
	.string	"  direct    use direct I/O for data\n"
	.align 8
.LC27:
	.string	"  directory  fail unless a directory\n"
	.align 8
.LC28:
	.string	"  dsync     use synchronized I/O for data\n"
	.align 8
.LC29:
	.string	"  sync      likewise, but also for metadata\n"
	.align 8
.LC30:
	.string	"  fullblock  accumulate full blocks of input (iflag only)\n"
	.align 8
.LC31:
	.string	"  nonblock  use non-blocking I/O\n"
	.align 8
.LC32:
	.string	"  noatime   do not update access time\n"
	.align 8
.LC33:
	.string	"  nocache   Request to drop cache.  See also oflag=sync\n"
	.align 8
.LC34:
	.string	"  noctty    do not assign controlling terminal from file\n"
	.align 8
.LC35:
	.string	"  nofollow  do not follow symlinks\n"
	.align 8
.LC36:
	.string	"  count_bytes  treat 'count=N' as a byte count (iflag only)\n"
	.align 8
.LC37:
	.string	"  skip_bytes  treat 'skip=N' as a byte count (iflag only)\n"
	.align 8
.LC38:
	.string	"  seek_bytes  treat 'seek=N' as a byte count (oflag only)\n"
	.align 8
.LC39:
	.string	"\nSending a %s signal to a running 'dd' process makes it\nprint I/O statistics to standard error and then resume copying.\n\nOptions are:\n\n"
.LC40:
	.string	"USR1"
	.align 8
.LC41:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC42:
	.string	"      --version  output version information and exit\n"
.LC43:
	.string	"dd"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB54:
	.loc 2 557 1
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
	.loc 2 558 6
	cmpl	$0, -20(%rbp)
	je	.L43
	.loc 2 559 5
	movq	program_name(%rip), %rbx
	leaq	.LC18(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L44
.L43:
	.loc 2 562 7
	movq	program_name(%rip), %r12
	movq	program_name(%rip), %rbx
	.loc 2 562 15
	leaq	.LC19(%rip), %rdi
	call	gettext@PLT
	.loc 2 562 7
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 567 7
	movq	stdout(%rip), %rbx
	leaq	.LC20(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 577 7
	movq	stdout(%rip), %rbx
	leaq	.LC21(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 590 7
	movq	stdout(%rip), %rbx
	leaq	.LC22(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 600 7
	movq	stdout(%rip), %rbx
	leaq	.LC23(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 613 7
	movq	stdout(%rip), %rbx
	leaq	.LC24(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 621 7
	movq	stdout(%rip), %rbx
	leaq	.LC25(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 630 9
	movq	stdout(%rip), %rbx
	leaq	.LC26(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 632 9
	movq	stdout(%rip), %rbx
	leaq	.LC27(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 634 9
	movq	stdout(%rip), %rbx
	leaq	.LC28(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 636 9
	movq	stdout(%rip), %rbx
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 637 7
	movq	stdout(%rip), %rbx
	leaq	.LC30(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 640 9
	movq	stdout(%rip), %rbx
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 642 9
	movq	stdout(%rip), %rbx
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 645 9
	movq	stdout(%rip), %rbx
	leaq	.LC33(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 649 9
	movq	stdout(%rip), %rbx
	leaq	.LC34(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 652 9
	movq	stdout(%rip), %rbx
	leaq	.LC35(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 660 9
	movq	stdout(%rip), %rbx
	leaq	.LC36(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 663 9
	movq	stdout(%rip), %rbx
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 666 9
	movq	stdout(%rip), %rbx
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 670 17
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	.loc 2 670 9
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 680 7
	movq	stdout(%rip), %rbx
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 681 7
	movq	stdout(%rip), %rbx
	leaq	.LC42(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 682 7
	leaq	.LC43(%rip), %rdi
	call	emit_ancillary_info
.L44:
	.loc 2 684 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE54:
	.size	usage, .-usage
	.section	.rodata
	.align 8
.LC44:
	.string	"memory exhausted by input buffer of size %lu bytes (%s)"
	.text
	.type	alloc_ibuf, @function
alloc_ibuf:
.LFB55:
	.loc 2 696 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$696, %rsp
	.cfi_offset 3, -24
	.loc 2 696 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 697 7
	movq	ibuf(%rip), %rax
	.loc 2 697 6
	testq	%rax, %rax
	jne	.L50
	.loc 2 700 41
	movq	page_size(%rip), %rax
	addq	$2, %rax
	leaq	(%rax,%rax), %rdx
	.loc 2 700 39
	movq	input_blocksize(%rip), %rax
	addq	%rdx, %rax
	.loc 2 700 15
	subq	$1, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -704(%rbp)
	.loc 2 701 6
	cmpq	$0, -704(%rbp)
	jne	.L48
.LBB2:
	.loc 2 703 17
	movq	input_blocksize(%rip), %rax
	movq	%rax, -696(%rbp)
	.loc 2 705 7
	movq	input_blocksize(%rip), %rax
	leaq	-688(%rbp), %rsi
	movl	$1, %r8d
	movl	$1, %ecx
	movl	$497, %edx
	movq	%rax, %rdi
	call	human_readable@PLT
	movq	%rax, %rbx
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-696(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L48:
.LBE2:
	.loc 2 712 13
	movq	-704(%rbp), %rax
	movq	%rax, real_ibuf(%rip)
	.loc 2 714 10
	movq	page_size(%rip), %rax
	.loc 2 714 25
	movq	-704(%rbp), %rdx
	addq	$2, %rdx
	.loc 2 714 10
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ptr_align
	.loc 2 714 8
	movq	%rax, ibuf(%rip)
	jmp	.L45
.L50:
	.loc 2 698 5
	nop
.L45:
	.loc 2 715 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L49
	call	__stack_chk_fail@PLT
.L49:
	addq	$696, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	alloc_ibuf, .-alloc_ibuf
	.section	.rodata
	.align 8
.LC45:
	.string	"memory exhausted by output buffer of size %lu bytes (%s)"
	.text
	.type	alloc_obuf, @function
alloc_obuf:
.LFB56:
	.loc 2 721 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$696, %rsp
	.cfi_offset 3, -24
	.loc 2 721 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 722 7
	movq	obuf(%rip), %rax
	.loc 2 722 6
	testq	%rax, %rax
	jne	.L57
	.loc 2 725 24
	movl	conversions_mask(%rip), %eax
	andl	$2048, %eax
	.loc 2 725 6
	testl	%eax, %eax
	je	.L54
.LBB3:
	.loc 2 728 44
	movq	page_size(%rip), %rdx
	movq	output_blocksize(%rip), %rax
	addq	%rdx, %rax
	.loc 2 728 19
	subq	$1, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -704(%rbp)
	.loc 2 729 10
	cmpq	$0, -704(%rbp)
	jne	.L55
.LBB4:
	.loc 2 731 21
	movq	output_blocksize(%rip), %rax
	movq	%rax, -696(%rbp)
	.loc 2 733 11
	movq	output_blocksize(%rip), %rax
	leaq	-688(%rbp), %rsi
	movl	$1, %r8d
	movl	$1, %ecx
	movl	$497, %edx
	movq	%rax, %rdi
	call	human_readable@PLT
	movq	%rax, %rbx
	leaq	.LC45(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-696(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L55:
.LBE4:
	.loc 2 741 17
	movq	-704(%rbp), %rax
	movq	%rax, real_obuf(%rip)
	.loc 2 743 14
	movq	page_size(%rip), %rdx
	movq	-704(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ptr_align
	.loc 2 743 12
	movq	%rax, obuf(%rip)
.LBE3:
	jmp	.L51
.L54:
	.loc 2 747 7
	call	alloc_ibuf
	.loc 2 748 12
	movq	ibuf(%rip), %rax
	movq	%rax, obuf(%rip)
	jmp	.L51
.L57:
	.loc 2 723 5
	nop
.L51:
	.loc 2 750 1
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L56
	call	__stack_chk_fail@PLT
.L56:
	addq	$696, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	alloc_obuf, .-alloc_obuf
	.type	translate_charset, @function
translate_charset:
.LFB57:
	.loc 2 754 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
.LBB5:
	.loc 2 755 12
	movl	$0, -4(%rbp)
	.loc 2 755 3
	jmp	.L59
.L60:
	.loc 2 756 43 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	trans_table(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %edx
	.loc 2 756 31 discriminator 3
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %ecx
	.loc 2 756 20 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	trans_table(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	.loc 2 755 29 discriminator 3
	addl	$1, -4(%rbp)
.L59:
	.loc 2 755 3 discriminator 1
	cmpl	$255, -4(%rbp)
	jle	.L60
.LBE5:
	.loc 2 757 22
	movb	$1, translation_needed(%rip)
	.loc 2 758 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	translate_charset, .-translate_charset
	.type	multiple_bits_set, @function
multiple_bits_set:
.LFB58:
	.loc 2 764 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 765 10
	movl	-4(%rbp), %eax
	subl	$1, %eax
	andl	-4(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	.loc 2 766 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	multiple_bits_set, .-multiple_bits_set
	.type	abbreviation_lacks_prefix, @function
abbreviation_lacks_prefix:
.LFB59:
	.loc 2 770 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 771 18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 771 17
	leaq	-2(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 771 40
	cmpb	$32, %al
	sete	%al
	.loc 2 772 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	abbreviation_lacks_prefix, .-abbreviation_lacks_prefix
	.section	.rodata
.LC48:
	.string	"Infinity"
.LC49:
	.string	"%s B/s"
.LC50:
	.string	"%.0f s"
.LC51:
	.string	"%g s"
.LC52:
	.string	"%lu bytes copied, %s, %s"
.LC53:
	.string	"%lu byte copied, %s, %s"
.LC54:
	.string	"%lu bytes (%s) copied, %s, %s"
	.align 8
.LC55:
	.string	"%lu bytes (%s, %s) copied, %s, %s"
.LC56:
	.string	"%*s"
	.text
	.type	print_xfer_stats, @function
print_xfer_stats:
.LFB60:
	.loc 2 778 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$2104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -2104(%rbp)
	.loc 2 778 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 779 47
	cmpq	$0, -2104(%rbp)
	jne	.L66
	.loc 2 779 49 discriminator 1
	call	gethrxtime@PLT
	jmp	.L67
.L66:
	.loc 2 779 47 discriminator 2
	movq	-2104(%rbp), %rax
.L67:
	.loc 2 779 11 discriminator 4
	movq	%rax, -2064(%rbp)
	.loc 2 784 20 discriminator 4
	movq	w_bytes(%rip), %rax
	leaq	-2016(%rbp), %rsi
	movl	$1, %r8d
	movl	$1, %ecx
	movl	$465, %edx
	movq	%rax, %rdi
	call	human_readable@PLT
	movq	%rax, -2056(%rbp)
	.loc 2 785 21 discriminator 4
	movq	w_bytes(%rip), %rax
	leaq	-2016(%rbp), %rdx
	leaq	654(%rdx), %rsi
	movl	$1, %r8d
	movl	$1, %ecx
	movl	$497, %edx
	movq	%rax, %rdi
	call	human_readable@PLT
	movq	%rax, -2048(%rbp)
	.loc 2 790 9 discriminator 4
	leaq	-2016(%rbp), %rax
	addq	$1308, %rax
	movq	%rax, -2040(%rbp)
	.loc 2 791 7 discriminator 4
	movl	$654, -2088(%rbp)
	.loc 2 792 18 discriminator 4
	movq	start_time(%rip), %rax
	.loc 2 792 6 discriminator 4
	cmpq	%rax, -2064(%rbp)
	jle	.L68
.LBB6:
	.loc 2 794 14
	movsd	.LC46(%rip), %xmm0
	movsd	%xmm0, -2032(%rbp)
	.loc 2 795 17
	movq	-2064(%rbp), %rax
	movq	%rax, -2024(%rbp)
	.loc 2 796 19
	movq	start_time(%rip), %rax
	subq	%rax, -2024(%rbp)
	.loc 2 797 29
	movq	-2024(%rbp), %rax
	testq	%rax, %rax
	js	.L69
	cvtsi2sdq	%rax, %xmm0
	jmp	.L70
.L69:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L70:
	.loc 2 797 15
	divsd	-2032(%rbp), %xmm0
	movsd	%xmm0, -2080(%rbp)
	.loc 2 798 26
	movq	w_bytes(%rip), %rax
	movq	-2024(%rbp), %rdx
	movq	-2040(%rbp), %rsi
	movq	%rdx, %r8
	movl	$1000000000, %ecx
	movl	$465, %edx
	movq	%rax, %rdi
	call	human_readable@PLT
	movq	%rax, -2072(%rbp)
	.loc 2 800 7
	movq	-2072(%rbp), %rax
	leaq	slash_s.6472(%rip), %rsi
	movq	%rax, %rdi
	call	strcat@PLT
.LBE6:
	jmp	.L71
.L68:
	.loc 2 804 15
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -2080(%rbp)
	.loc 2 805 7
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	-2088(%rbp), %eax
	movslq	%eax, %rsi
	movq	-2040(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC49(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 2 806 24
	movq	-2040(%rbp), %rax
	movq	%rax, -2072(%rbp)
.L71:
	.loc 2 809 6
	cmpq	$0, -2104(%rbp)
	je	.L72
	.loc 2 810 5
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$13, %edi
	call	fputc_unlocked@PLT
.L72:
	.loc 2 818 3
	cmpq	$0, -2104(%rbp)
	je	.L73
	.loc 2 818 3 is_stmt 0 discriminator 1
	leaq	.LC50(%rip), %rax
	jmp	.L74
.L73:
	.loc 2 818 3 discriminator 2
	leaq	.LC51(%rip), %rax
.L74:
	.loc 2 818 3 discriminator 4
	movq	-2080(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	%rdx, %xmm0
	movq	%rax, %rdx
	movl	$24, %esi
	movq	%rcx, %rdi
	movl	$1, %eax
	call	snprintf@PLT
	.loc 2 822 8 is_stmt 1 discriminator 4
	movq	-2056(%rbp), %rax
	movq	%rax, %rdi
	call	abbreviation_lacks_prefix
	.loc 2 828 8 discriminator 4
	testb	%al, %al
	je	.L75
	.loc 2 823 10
	movq	w_bytes(%rip), %rbx
	.loc 2 824 19
	movq	w_bytes(%rip), %rax
	movq	%rax, %rdi
	call	select_plural
	movq	%rax, %rdx
	leaq	.LC52(%rip), %rsi
	leaq	.LC53(%rip), %rdi
	call	ngettext@PLT
	movq	%rax, %rsi
	.loc 2 823 10
	movq	stderr(%rip), %rax
	movq	-2072(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L76
.L75:
	.loc 2 828 10 discriminator 1
	movq	-2048(%rbp), %rax
	movq	%rax, %rdi
	call	abbreviation_lacks_prefix
	.loc 2 832 8 discriminator 1
	testb	%al, %al
	je	.L77
	.loc 2 829 10
	movq	w_bytes(%rip), %rbx
	.loc 2 830 19
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 829 10
	movq	stderr(%rip), %rax
	movq	-2072(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	movq	-2056(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L76
.L77:
	.loc 2 832 10 discriminator 1
	movq	w_bytes(%rip), %rbx
	.loc 2 833 19 discriminator 1
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 832 10 discriminator 1
	movq	stderr(%rip), %rax
	leaq	-48(%rbp), %rdi
	movq	-2048(%rbp), %rcx
	movq	-2056(%rbp), %rdx
	subq	$8, %rsp
	pushq	-2072(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
.L76:
	.loc 2 821 7
	movl	%eax, -2084(%rbp)
	.loc 2 836 6
	cmpq	$0, -2104(%rbp)
	je	.L79
	.loc 2 844 10
	cmpl	$0, -2084(%rbp)
	js	.L80
	.loc 2 844 39 discriminator 1
	movl	progress_len(%rip), %eax
	.loc 2 844 26 discriminator 1
	cmpl	%eax, -2084(%rbp)
	jge	.L80
	.loc 2 845 9
	movl	progress_len(%rip), %eax
	subl	-2084(%rbp), %eax
	movl	%eax, %edx
	movq	stderr(%rip), %rax
	leaq	.LC16(%rip), %rcx
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L80:
	.loc 2 846 20
	movl	-2084(%rbp), %eax
	movl	%eax, progress_len(%rip)
	.loc 2 850 1
	jmp	.L83
.L79:
	.loc 2 849 5
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc_unlocked@PLT
.L83:
	.loc 2 850 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L82
	call	__stack_chk_fail@PLT
.L82:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	print_xfer_stats, .-print_xfer_stats
	.section	.rodata
	.align 8
.LC57:
	.string	"%lu+%lu records in\n%lu+%lu records out\n"
.LC58:
	.string	"%lu truncated records\n"
.LC59:
	.string	"%lu truncated record\n"
	.text
	.type	print_stats, @function
print_stats:
.LFB61:
	.loc 2 854 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	.loc 2 855 20
	movl	status_level(%rip), %eax
	.loc 2 855 6
	cmpl	$1, %eax
	je	.L90
	.loc 2 858 9
	movl	progress_len(%rip), %eax
	.loc 2 858 6
	testl	%eax, %eax
	jle	.L87
	.loc 2 860 7
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc_unlocked@PLT
	.loc 2 861 20
	movl	$0, progress_len(%rip)
.L87:
	.loc 2 864 3
	movq	w_partial(%rip), %r14
	movq	w_full(%rip), %r13
	movq	r_partial(%rip), %r12
	movq	r_full(%rip), %rbx
	.loc 2 865 12
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 864 3
	movq	stderr(%rip), %rax
	movq	%r14, %r9
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 869 18
	movq	r_truncate(%rip), %rax
	.loc 2 869 6
	testq	%rax, %rax
	je	.L88
	.loc 2 870 5
	movq	r_truncate(%rip), %rbx
	.loc 2 871 14
	movq	r_truncate(%rip), %rax
	movq	%rax, %rdi
	call	select_plural
	movq	%rax, %rdx
	leaq	.LC58(%rip), %rsi
	leaq	.LC59(%rip), %rdi
	call	ngettext@PLT
	movq	%rax, %rcx
	.loc 2 870 5
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L88:
	.loc 2 876 20
	movl	status_level(%rip), %eax
	.loc 2 876 6
	cmpl	$2, %eax
	je	.L91
	.loc 2 879 3
	movl	$0, %edi
	call	print_xfer_stats
	jmp	.L84
.L90:
	.loc 2 856 5
	nop
	jmp	.L84
.L91:
	.loc 2 877 5
	nop
.L84:
	.loc 2 880 1
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	print_stats, .-print_stats
	.type	interrupt_handler, @function
interrupt_handler:
.LFB62:
	.loc 2 886 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 889 20
	movl	-4(%rbp), %eax
	movl	%eax, interrupt_signal(%rip)
	.loc 2 890 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	interrupt_handler, .-interrupt_handler
	.type	siginfo_handler, @function
siginfo_handler:
.LFB63:
	.loc 2 896 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 2 899 20
	movl	info_signal_count(%rip), %eax
	addl	$1, %eax
	movl	%eax, info_signal_count(%rip)
	.loc 2 900 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	siginfo_handler, .-siginfo_handler
	.section	.rodata
.LC60:
	.string	"POSIXLY_CORRECT"
	.text
	.type	install_signal_handlers, @function
install_signal_handlers:
.LFB64:
	.loc 2 906 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	.loc 2 906 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 907 49
	leaq	.LC60(%rip), %rdi
	call	getenv@PLT
	.loc 2 907 8
	testq	%rax, %rax
	sete	%al
	movb	%al, -161(%rbp)
	.loc 2 912 3
	leaq	caught_signals(%rip), %rdi
	call	sigemptyset@PLT
	.loc 2 913 6
	cmpb	$0, -161(%rbp)
	je	.L95
	.loc 2 914 5
	movl	$10, %esi
	leaq	caught_signals(%rip), %rdi
	call	sigaddset@PLT
.L95:
	.loc 2 915 3
	leaq	-160(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$2, %edi
	call	sigaction@PLT
	.loc 2 916 11
	movq	-160(%rbp), %rax
	.loc 2 916 6
	cmpq	$1, %rax
	je	.L96
	.loc 2 917 5
	movl	$2, %esi
	leaq	caught_signals(%rip), %rdi
	call	sigaddset@PLT
.L96:
	.loc 2 918 15
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
	.loc 2 920 7
	movl	$10, %esi
	leaq	caught_signals(%rip), %rdi
	call	sigismember@PLT
	.loc 2 920 6
	testl	%eax, %eax
	je	.L97
	.loc 2 922 22
	leaq	siginfo_handler(%rip), %rax
	movq	%rax, -160(%rbp)
	.loc 2 926 20
	movl	$0, -24(%rbp)
	.loc 2 927 7
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$10, %edi
	call	sigaction@PLT
.L97:
	.loc 2 930 7
	movl	$2, %esi
	leaq	caught_signals(%rip), %rdi
	call	sigismember@PLT
	.loc 2 930 6
	testl	%eax, %eax
	je	.L100
	.loc 2 932 22
	leaq	interrupt_handler(%rip), %rax
	movq	%rax, -160(%rbp)
	.loc 2 933 20
	movl	$-1073741824, -24(%rbp)
	.loc 2 934 7
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$2, %edi
	call	sigaction@PLT
.L100:
	.loc 2 950 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L99
	call	__stack_chk_fail@PLT
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	install_signal_handlers, .-install_signal_handlers
	.type	iclose, @function
iclose:
.LFB65:
	.loc 2 959 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 2 960 7
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 960 6
	testl	%eax, %eax
	je	.L102
.L105:
	.loc 2 962 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 962 10
	cmpl	$4, %eax
	je	.L103
	.loc 2 963 16
	movl	$-1, %eax
	jmp	.L104
.L103:
	.loc 2 964 12
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 2 964 5
	testl	%eax, %eax
	je	.L102
	.loc 2 964 31 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 964 28 discriminator 1
	cmpl	$9, %eax
	jne	.L105
.L102:
	.loc 2 966 10
	movl	$0, %eax
.L104:
	.loc 2 967 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	iclose, .-iclose
	.section	.rodata
.LC61:
	.string	"closing input file %s"
.LC62:
	.string	"closing output file %s"
	.text
	.type	cleanup, @function
cleanup:
.LFB66:
	.loc 2 971 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 2 973 3
	movq	real_ibuf(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 974 3
	movq	real_obuf(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 975 13
	movq	$0, real_ibuf(%rip)
	.loc 2 976 13
	movq	$0, real_obuf(%rip)
	.loc 2 979 7
	movl	$0, %edi
	call	iclose
	.loc 2 979 6
	testl	%eax, %eax
	je	.L107
.LBB7:
	.loc 2 980 5
	movq	input_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC61(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L107:
.LBE7:
	.loc 2 985 7
	movl	$1, %edi
	call	iclose
	.loc 2 985 6
	testl	%eax, %eax
	je	.L109
.LBB8:
	.loc 2 986 5
	movq	output_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC62(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L109:
.LBE8:
	.loc 2 988 1
	nop
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	cleanup, .-cleanup
	.type	process_signals, @function
process_signals:
.LFB67:
	.loc 2 996 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	.loc 2 996 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 997 9
	jmp	.L111
.L115:
.LBB9:
	.loc 2 1003 7
	leaq	-144(%rbp), %rax
	movq	%rax, %rdx
	leaq	caught_signals(%rip), %rsi
	movl	$0, %edi
	call	sigprocmask@PLT
	.loc 2 1007 17
	movl	interrupt_signal(%rip), %eax
	movl	%eax, -152(%rbp)
	.loc 2 1008 13
	movl	info_signal_count(%rip), %eax
	movl	%eax, -148(%rbp)
	.loc 2 1010 10
	cmpl	$0, -148(%rbp)
	je	.L112
	.loc 2 1011 35
	movl	-148(%rbp), %eax
	subl	$1, %eax
	.loc 2 1011 27
	movl	%eax, info_signal_count(%rip)
.L112:
	.loc 2 1013 7
	leaq	-144(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$2, %edi
	call	sigprocmask@PLT
	.loc 2 1015 10
	cmpl	$0, -152(%rbp)
	je	.L113
	.loc 2 1016 9
	call	cleanup
.L113:
	.loc 2 1017 7
	call	print_stats
	.loc 2 1018 10
	cmpl	$0, -152(%rbp)
	je	.L111
	.loc 2 1019 9
	movl	-152(%rbp), %eax
	movl	%eax, %edi
	call	raise@PLT
.L111:
.LBE9:
	.loc 2 997 10
	movl	interrupt_signal(%rip), %eax
	.loc 2 997 9
	testl	%eax, %eax
	jne	.L115
	.loc 2 997 27 discriminator 1
	movl	info_signal_count(%rip), %eax
	testl	%eax, %eax
	jne	.L115
	.loc 2 1021 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L116
	call	__stack_chk_fail@PLT
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	process_signals, .-process_signals
	.type	finish_up, @function
finish_up:
.LFB68:
	.loc 2 1025 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 1027 3
	call	process_signals
	.loc 2 1028 3
	call	cleanup
	.loc 2 1029 3
	call	print_stats
	.loc 2 1030 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	finish_up, .-finish_up
	.type	quit, @function
quit:
.LFB69:
	.loc 2 1034 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 2 1035 3
	call	finish_up
	.loc 2 1036 3
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE69:
	.size	quit, .-quit
	.type	cache_round, @function
cache_round:
.LFB70:
	.loc 2 1046 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 1048 53
	cmpl	$0, -20(%rbp)
	jne	.L120
	.loc 2 1048 53 is_stmt 0 discriminator 1
	leaq	i_pending.6529(%rip), %rax
	jmp	.L121
.L120:
	.loc 2 1048 53 discriminator 2
	leaq	o_pending.6530(%rip), %rax
.L121:
	.loc 2 1048 10 is_stmt 1 discriminator 4
	movq	%rax, -16(%rbp)
	.loc 2 1050 6 discriminator 4
	cmpq	$0, -32(%rbp)
	je	.L122
.LBB10:
	.loc 2 1052 29
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 1052 38
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1052 17
	movq	%rax, -8(%rbp)
	.loc 2 1053 28
	movq	-8(%rbp), %rax
	andl	$131071, %eax
	movq	%rax, %rdx
	.loc 2 1053 16
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1054 23
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1054 10
	cmpq	%rax, -8(%rbp)
	jbe	.L123
	.loc 2 1055 27
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	.loc 2 1055 25
	movq	-8(%rbp), %rax
	subq	%rdx, %rax
	.loc 2 1055 13
	movq	%rax, -32(%rbp)
	jmp	.L124
.L123:
	.loc 2 1057 13
	movq	$0, -32(%rbp)
	jmp	.L124
.L122:
.LBE10:
	.loc 2 1060 9
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L124:
	.loc 2 1062 10
	movq	-32(%rbp), %rax
	.loc 2 1063 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	cache_round, .-cache_round
	.type	invalidate_cache, @function
invalidate_cache:
.LFB71:
	.loc 2 1071 1
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
	.loc 2 1072 7
	movl	$-1, -28(%rbp)
	.loc 2 1074 58
	cmpl	$0, -36(%rbp)
	jne	.L127
	.loc 2 1074 58 is_stmt 0 discriminator 1
	movzbl	i_nocache_eof(%rip), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	jmp	.L128
.L127:
	.loc 2 1074 58 discriminator 2
	movzbl	o_nocache_eof(%rip), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
.L128:
	.loc 2 1074 8 is_stmt 1 discriminator 4
	movb	%al, -29(%rbp)
	.loc 2 1077 16 discriminator 4
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	cache_round
	movq	%rax, -16(%rbp)
	.loc 2 1078 6 discriminator 4
	cmpq	$0, -48(%rbp)
	je	.L129
	.loc 2 1078 11 discriminator 1
	cmpq	$0, -16(%rbp)
	jne	.L129
	.loc 2 1079 12
	movl	$1, %eax
	jmp	.L130
.L129:
	.loc 2 1080 11
	cmpq	$0, -48(%rbp)
	jne	.L131
	.loc 2 1080 18 discriminator 1
	cmpq	$0, -16(%rbp)
	jne	.L131
	.loc 2 1080 31 discriminator 2
	movzbl	-29(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1080 28 discriminator 2
	testb	%al, %al
	je	.L131
	.loc 2 1081 12
	movl	$1, %eax
	jmp	.L130
.L131:
	.loc 2 1082 45
	cmpq	$0, -48(%rbp)
	je	.L132
	.loc 2 1082 25 discriminator 1
	movl	-36(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	cache_round
	jmp	.L133
.L132:
	.loc 2 1082 45 discriminator 2
	movl	$0, %eax
.L133:
	.loc 2 1082 9 discriminator 4
	movq	%rax, -8(%rbp)
	.loc 2 1084 6 discriminator 4
	cmpl	$0, -36(%rbp)
	jne	.L134
	.loc 2 1086 11
	movzbl	input_seekable(%rip), %eax
	.loc 2 1086 10
	testb	%al, %al
	je	.L135
	.loc 2 1087 16
	movq	input_offset(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L136
.L135:
	.loc 2 1090 18
	movq	$-1, -24(%rbp)
	.loc 2 1091 11
	call	__errno_location@PLT
	.loc 2 1091 17
	movl	$29, (%rax)
	jmp	.L136
.L134:
.LBB11:
	.loc 2 1098 25
	movq	output_offset.6542(%rip), %rax
	.loc 2 1098 10
	cmpq	$-1, %rax
	je	.L137
	.loc 2 1100 29
	movq	output_offset.6542(%rip), %rax
	.loc 2 1100 14
	testq	%rax, %rax
	jns	.L138
	.loc 2 1101 29
	movl	-36(%rbp), %eax
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 2 1101 27
	movq	%rax, output_offset.6542(%rip)
	jmp	.L137
.L138:
	.loc 2 1102 19
	cmpq	$0, -48(%rbp)
	je	.L137
	.loc 2 1103 35
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	.loc 2 1103 27
	movq	output_offset.6542(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, output_offset.6542(%rip)
.L137:
	.loc 2 1106 14
	movq	output_offset.6542(%rip), %rax
	movq	%rax, -24(%rbp)
.L136:
.LBE11:
	.loc 2 1109 6
	cmpq	$0, -24(%rbp)
	js	.L139
	.loc 2 1111 9
	cmpq	$0, -48(%rbp)
	jne	.L140
	.loc 2 1111 16 discriminator 1
	cmpq	$0, -16(%rbp)
	je	.L140
	.loc 2 1111 24 discriminator 2
	cmpb	$0, -29(%rbp)
	je	.L140
	.loc 2 1113 18
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1114 15
	movq	$0, -16(%rbp)
.L140:
	.loc 2 1122 22
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	.loc 2 1122 13
	subq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1124 9
	cmpq	$0, -16(%rbp)
	jne	.L141
	.loc 2 1125 15
	movq	-24(%rbp), %rcx
	.loc 2 1125 25
	movq	-24(%rbp), %rax
	movq	page_size(%rip), %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rax
	.loc 2 1125 15
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -24(%rbp)
.L141:
	.loc 2 1126 16
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	$4, %ecx
	movl	%eax, %edi
	call	posix_fadvise@PLT
	movl	%eax, -28(%rbp)
.L139:
	.loc 2 1132 31
	cmpl	$-1, -28(%rbp)
	setne	%al
.L130:
	.loc 2 1133 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	invalidate_cache, .-invalidate_cache
	.section	.rodata
	.align 8
.LC63:
	.string	"warning: partial read (%lu bytes); suggest iflag=fullblock"
	.align 8
.LC64:
	.string	"warning: partial read (%lu byte); suggest iflag=fullblock"
	.text
	.type	iread, @function
iread:
.LFB72:
	.loc 2 1141 1
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
.L145:
	.loc 2 1147 7
	call	process_signals
	.loc 2 1148 15
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movq	%rax, -16(%rbp)
	.loc 2 1151 10
	cmpq	$-1, -16(%rbp)
	jne	.L143
	.loc 2 1151 26 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1151 23 discriminator 1
	cmpl	$22, %eax
	jne	.L143
	.loc 2 1152 16
	movq	prev_nread.6549(%rip), %rax
	.loc 2 1152 11
	testq	%rax, %rax
	jle	.L143
	.loc 2 1152 43 discriminator 1
	movq	prev_nread.6549(%rip), %rax
	.loc 2 1152 29 discriminator 1
	cmpq	%rax, -40(%rbp)
	jbe	.L143
	.loc 2 1153 27
	movl	input_flags(%rip), %eax
	andl	$16384, %eax
	.loc 2 1153 11
	testl	%eax, %eax
	je	.L143
	.loc 2 1155 11
	call	__errno_location@PLT
	.loc 2 1155 17
	movl	$0, (%rax)
	.loc 2 1156 17
	movq	$0, -16(%rbp)
.L143:
	.loc 2 1159 3
	cmpq	$0, -16(%rbp)
	jns	.L144
	.loc 2 1159 23 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1159 20 discriminator 1
	cmpl	$4, %eax
	je	.L145
.L144:
	.loc 2 1162 6
	cmpq	$0, -16(%rbp)
	jle	.L146
	.loc 2 1162 26 discriminator 1
	movq	-16(%rbp), %rax
	.loc 2 1162 17 discriminator 1
	cmpq	%rax, -40(%rbp)
	jbe	.L146
	.loc 2 1163 5
	call	process_signals
.L146:
	.loc 2 1165 6
	cmpq	$0, -16(%rbp)
	jle	.L147
	.loc 2 1165 17 discriminator 1
	movzbl	warn_partial_read(%rip), %eax
	testb	%al, %al
	je	.L147
	.loc 2 1167 13
	movq	prev_nread.6549(%rip), %rax
	.loc 2 1167 10
	testq	%rax, %rax
	jle	.L147
	.loc 2 1167 40 discriminator 1
	movq	prev_nread.6549(%rip), %rax
	.loc 2 1167 26 discriminator 1
	cmpq	%rax, -40(%rbp)
	jbe	.L147
.LBB12:
	.loc 2 1169 21
	movq	prev_nread.6549(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1170 28
	movl	status_level(%rip), %eax
	.loc 2 1170 14
	cmpl	$1, %eax
	je	.L148
	.loc 2 1171 26
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	select_plural
	movq	%rax, %rdx
	leaq	.LC63(%rip), %rsi
	leaq	.LC64(%rip), %rdi
	call	ngettext@PLT
	movq	%rax, %rdx
	.loc 2 1171 13
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
.L148:
	.loc 2 1177 29
	movb	$0, warn_partial_read(%rip)
.L147:
.LBE12:
	.loc 2 1181 14
	movq	-16(%rbp), %rax
	movq	%rax, prev_nread.6549(%rip)
	.loc 2 1182 10
	movq	-16(%rbp), %rax
	.loc 2 1183 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	iread, .-iread
	.type	iread_fullblock, @function
iread_fullblock:
.LFB73:
	.loc 2 1188 1
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
	.loc 2 1189 11
	movq	$0, -16(%rbp)
	.loc 2 1191 9
	jmp	.L151
.L156:
.LBB13:
	.loc 2 1193 23
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	iread
	movq	%rax, -8(%rbp)
	.loc 2 1194 10
	cmpq	$0, -8(%rbp)
	jns	.L152
	.loc 2 1195 16
	movq	-8(%rbp), %rax
	jmp	.L153
.L152:
	.loc 2 1196 10
	cmpq	$0, -8(%rbp)
	je	.L157
	.loc 2 1198 13
	movq	-8(%rbp), %rax
	addq	%rax, -16(%rbp)
	.loc 2 1199 13
	movq	-8(%rbp), %rax
	addq	%rax, -32(%rbp)
	.loc 2 1200 13
	movq	-8(%rbp), %rax
	subq	%rax, -40(%rbp)
.L151:
.LBE13:
	.loc 2 1191 9
	cmpq	$0, -40(%rbp)
	jne	.L156
	jmp	.L155
.L157:
.LBB14:
	.loc 2 1197 9
	nop
.L155:
.LBE14:
	.loc 2 1203 10
	movq	-16(%rbp), %rax
.L153:
	.loc 2 1204 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	iread_fullblock, .-iread_fullblock
	.section	.rodata
	.align 8
.LC65:
	.string	"failed to turn off O_DIRECT: %s"
	.text
	.type	iwrite, @function
iwrite:
.LFB74:
	.loc 2 1213 1
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
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 2 1214 10
	movq	$0, -32(%rbp)
	.loc 2 1216 21
	movl	output_flags(%rip), %eax
	andl	$16384, %eax
	.loc 2 1216 6
	testl	%eax, %eax
	je	.L161
	.loc 2 1216 41 discriminator 1
	movq	output_blocksize(%rip), %rax
	.loc 2 1216 33 discriminator 1
	cmpq	%rax, -72(%rbp)
	jnb	.L161
.LBB15:
	.loc 2 1218 23
	movl	$3, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	rpl_fcntl@PLT
	movl	%eax, -36(%rbp)
	.loc 2 1219 11
	movl	-36(%rbp), %eax
	andb	$-65, %ah
	movl	%eax, %edx
	movl	$4, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	rpl_fcntl@PLT
	.loc 2 1219 10
	testl	%eax, %eax
	je	.L160
	.loc 2 1220 27
	movl	status_level(%rip), %eax
	.loc 2 1220 11
	cmpl	$1, %eax
	je	.L160
	.loc 2 1221 9
	movq	output_file(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 1221 26
	leaq	.LC65(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 1221 19
	call	__errno_location@PLT
	.loc 2 1221 9
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
.L160:
	.loc 2 1229 21
	movb	$1, o_nocache_eof(%rip)
	.loc 2 1230 7
	movl	$0, %esi
	movl	$1, %edi
	call	invalidate_cache
	.loc 2 1234 24
	movl	conversions_mask(%rip), %eax
	orb	$-128, %ah
	movl	%eax, conversions_mask(%rip)
.LBE15:
	.loc 2 1240 9
	jmp	.L161
.L168:
.LBB16:
	.loc 2 1242 15
	movq	$0, -24(%rbp)
	.loc 2 1243 7
	call	process_signals
	.loc 2 1246 25
	movb	$0, final_op_was_seek(%rip)
	.loc 2 1247 29
	movl	conversions_mask(%rip), %eax
	andl	$65536, %eax
	.loc 2 1247 10
	testl	%eax, %eax
	je	.L162
	.loc 2 1247 44 discriminator 1
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	is_nul
	.loc 2 1247 41 discriminator 1
	testb	%al, %al
	je	.L162
	.loc 2 1249 15
	movq	-72(%rbp), %rcx
	movl	-52(%rbp), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 2 1249 14
	testq	%rax, %rax
	jns	.L163
	.loc 2 1251 32
	movl	conversions_mask(%rip), %eax
	andl	$-65537, %eax
	movl	%eax, conversions_mask(%rip)
	jmp	.L162
.L163:
	.loc 2 1256 33
	movb	$1, final_op_was_seek(%rip)
	.loc 2 1257 24
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
.L162:
	.loc 2 1261 10
	cmpq	$0, -24(%rbp)
	jne	.L164
	.loc 2 1262 20
	movq	-72(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	.loc 2 1262 35
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	addq	%rax, %rcx
	.loc 2 1262 20
	movl	-52(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	movq	%rax, -24(%rbp)
.L164:
	.loc 2 1264 10
	cmpq	$0, -24(%rbp)
	jns	.L165
	.loc 2 1266 15
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1266 14
	cmpl	$4, %eax
	je	.L161
	.loc 2 1267 13
	jmp	.L166
.L165:
	.loc 2 1269 15
	cmpq	$0, -24(%rbp)
	jne	.L167
	.loc 2 1274 11
	call	__errno_location@PLT
	.loc 2 1274 17
	movl	$28, (%rax)
	.loc 2 1275 11
	jmp	.L166
.L167:
	.loc 2 1278 23
	movq	-24(%rbp), %rax
	addq	%rax, -32(%rbp)
.L161:
.LBE16:
	.loc 2 1240 9
	movq	-32(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L168
.L166:
	.loc 2 1281 7
	movzbl	o_nocache(%rip), %eax
	.loc 2 1281 6
	testb	%al, %al
	je	.L169
	.loc 2 1281 17 discriminator 1
	cmpq	$0, -32(%rbp)
	je	.L169
	.loc 2 1282 5
	movq	-32(%rbp), %rdx
	movl	-52(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	invalidate_cache
.L169:
	.loc 2 1284 10
	movq	-32(%rbp), %rax
	.loc 2 1285 1
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	iwrite, .-iwrite
	.section	.rodata
.LC66:
	.string	"writing to %s"
	.text
	.type	write_output, @function
write_output:
.LFB75:
	.loc 2 1291 1
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
	.loc 2 1292 21
	movq	output_blocksize(%rip), %rdx
	movq	obuf(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	iwrite
	movq	%rax, -24(%rbp)
	.loc 2 1293 11
	movq	w_bytes(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, w_bytes(%rip)
	.loc 2 1294 16
	movq	output_blocksize(%rip), %rax
	.loc 2 1294 6
	cmpq	%rax, -24(%rbp)
	je	.L172
	.loc 2 1296 7
	movq	output_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 1296 24
	leaq	.LC66(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 1296 17
	call	__errno_location@PLT
	.loc 2 1296 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 1297 10
	cmpq	$0, -24(%rbp)
	je	.L173
	.loc 2 1298 18
	movq	w_partial(%rip), %rax
	addq	$1, %rax
	movq	%rax, w_partial(%rip)
.L173:
	.loc 2 1299 7
	movl	$1, %edi
	call	quit
.L172:
	.loc 2 1302 11
	movq	w_full(%rip), %rax
	addq	$1, %rax
	movq	%rax, w_full(%rip)
	.loc 2 1303 6
	movq	$0, oc(%rip)
	.loc 2 1304 1
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	write_output, .-write_output
	.type	ifdatasync, @function
ifdatasync:
.LFB76:
	.loc 2 1310 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
.L176:
	.loc 2 1315 7 discriminator 2
	call	process_signals
	.loc 2 1316 13 discriminator 2
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	fdatasync@PLT
	movl	%eax, -4(%rbp)
	.loc 2 1318 3 discriminator 2
	cmpl	$0, -4(%rbp)
	jns	.L175
	.loc 2 1318 21 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1318 18 discriminator 1
	cmpl	$4, %eax
	je	.L176
.L175:
	.loc 2 1320 10
	movl	-4(%rbp), %eax
	.loc 2 1321 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	ifdatasync, .-ifdatasync
	.type	ifd_reopen, @function
ifd_reopen:
.LFB77:
	.loc 2 1327 1
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
	movl	%edx, -24(%rbp)
	movl	%ecx, -36(%rbp)
.L180:
	.loc 2 1332 7 discriminator 2
	call	process_signals
	.loc 2 1333 13 discriminator 2
	movl	-36(%rbp), %ecx
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	fd_reopen@PLT
	movl	%eax, -4(%rbp)
	.loc 2 1335 3 discriminator 2
	cmpl	$0, -4(%rbp)
	jns	.L179
	.loc 2 1335 21 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1335 18 discriminator 1
	cmpl	$4, %eax
	je	.L180
.L179:
	.loc 2 1337 10
	movl	-4(%rbp), %eax
	.loc 2 1338 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	ifd_reopen, .-ifd_reopen
	.type	ifstat, @function
ifstat:
.LFB78:
	.loc 2 1344 1
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
.L184:
	.loc 2 1349 7 discriminator 2
	call	process_signals
	.loc 2 1350 13 discriminator 2
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	movl	%eax, -4(%rbp)
	.loc 2 1352 3 discriminator 2
	cmpl	$0, -4(%rbp)
	jns	.L183
	.loc 2 1352 21 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1352 18 discriminator 1
	cmpl	$4, %eax
	je	.L184
.L183:
	.loc 2 1354 10
	movl	-4(%rbp), %eax
	.loc 2 1355 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	ifstat, .-ifstat
	.type	ifsync, @function
ifsync:
.LFB79:
	.loc 2 1361 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
.L188:
	.loc 2 1366 7 discriminator 2
	call	process_signals
	.loc 2 1367 13 discriminator 2
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	fsync@PLT
	movl	%eax, -4(%rbp)
	.loc 2 1369 3 discriminator 2
	cmpl	$0, -4(%rbp)
	jns	.L187
	.loc 2 1369 21 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1369 18 discriminator 1
	cmpl	$4, %eax
	je	.L188
.L187:
	.loc 2 1371 10
	movl	-4(%rbp), %eax
	.loc 2 1372 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	ifsync, .-ifsync
	.type	iftruncate, @function
iftruncate:
.LFB80:
	.loc 2 1378 1
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
.L192:
	.loc 2 1383 7 discriminator 2
	call	process_signals
	.loc 2 1384 13 discriminator 2
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ftruncate@PLT
	movl	%eax, -4(%rbp)
	.loc 2 1386 3 discriminator 2
	cmpl	$0, -4(%rbp)
	jns	.L191
	.loc 2 1386 21 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1386 18 discriminator 1
	cmpl	$4, %eax
	je	.L192
.L191:
	.loc 2 1388 10
	movl	-4(%rbp), %eax
	.loc 2 1389 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	iftruncate, .-iftruncate
	.type	operand_matches, @function
operand_matches:
.LFB81:
	.loc 2 1395 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -20(%rbp)
	.loc 2 1396 9
	jmp	.L195
.L197:
	.loc 2 1397 13
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	.loc 2 1397 9
	movzbl	(%rax), %ecx
	.loc 2 1397 27
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	.loc 2 1397 19
	movzbl	(%rax), %eax
	.loc 2 1397 8
	cmpb	%al, %cl
	je	.L195
	.loc 2 1398 14
	movl	$0, %eax
	jmp	.L196
.L195:
	.loc 2 1396 10
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1396 9
	testb	%al, %al
	jne	.L197
	.loc 2 1399 11
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1399 16
	testb	%al, %al
	je	.L198
	.loc 2 1399 19 discriminator 2
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1399 16 discriminator 2
	cmpb	%al, -20(%rbp)
	jne	.L199
.L198:
	.loc 2 1399 16 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L200
.L199:
	.loc 2 1399 16 discriminator 4
	movl	$0, %eax
.L200:
	.loc 2 1399 16 discriminator 6
	andl	$1, %eax
.L196:
	.loc 2 1400 1 is_stmt 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	operand_matches, .-operand_matches
	.section	.rodata
.LC67:
	.string	"%s: %s"
	.text
	.type	parse_symbols, @function
parse_symbols:
.LFB82:
	.loc 2 1409 1
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
	movl	%edx, %eax
	movq	%rcx, -80(%rbp)
	movb	%al, -68(%rbp)
	.loc 2 1410 7
	movl	$0, -44(%rbp)
.L211:
.LBB17:
	.loc 2 1414 30
	movq	-56(%rbp), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -32(%rbp)
	.loc 2 1417 18
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 2 1417 7
	jmp	.L202
.L206:
	.loc 2 1421 30
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1421 14
	testb	%al, %al
	jne	.L203
.LBB18:
	.loc 2 1423 55
	cmpq	$0, -32(%rbp)
	je	.L204
	.loc 2 1423 49 discriminator 1
	movq	-32(%rbp), %rax
	subq	-56(%rbp), %rax
	jmp	.L205
.L204:
	.loc 2 1423 57 discriminator 2
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
.L205:
	.loc 2 1423 22 discriminator 4
	movq	%rax, -24(%rbp)
	.loc 2 1424 15 discriminator 4
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$8, %esi
	movl	$0, %edi
	call	quotearg_n_style_mem@PLT
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	gettext@PLT
	movq	%rbx, %r8
	movq	%rax, %rcx
	leaq	.LC67(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 1426 15 discriminator 4
	movl	$1, %edi
	call	usage
.L203:
.LBE18:
	.loc 2 1419 17
	addq	$16, -40(%rbp)
.L202:
	.loc 2 1418 42 discriminator 1
	movq	-40(%rbp), %rcx
	.loc 2 1418 15 discriminator 1
	movq	-56(%rbp), %rax
	movl	$44, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	operand_matches
	xorl	$1, %eax
	.loc 2 1417 7 discriminator 1
	testb	%al, %al
	jne	.L206
	.loc 2 1418 65
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	.loc 2 1418 12
	testl	%eax, %eax
	je	.L206
	.loc 2 1430 10
	cmpb	$0, -68(%rbp)
	je	.L207
	.loc 2 1431 15
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -44(%rbp)
	jmp	.L208
.L207:
	.loc 2 1433 23
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	.loc 2 1433 15
	orl	%eax, -44(%rbp)
.L208:
	.loc 2 1434 10
	cmpq	$0, -32(%rbp)
	je	.L214
	.loc 2 1436 11
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBE17:
	.loc 2 1413 5
	jmp	.L211
.L214:
.LBB19:
	.loc 2 1435 9
	nop
.LBE19:
	.loc 2 1439 10
	movl	-44(%rbp), %eax
	.loc 2 1440 1
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	parse_symbols, .-parse_symbols
	.section	.rodata
.LC68:
	.string	"bcEGkKMPTwYZ0"
.LC69:
	.string	"0x"
.LC70:
	.string	"00x"
	.align 8
.LC71:
	.string	"warning: %s is a zero multiplier; use %s if that is intended"
	.text
	.type	parse_integer, @function
parse_integer:
.LFB83:
	.loc 2 1449 1
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
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 2 1449 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1452 20
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	leaq	.LC68(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	movl	%eax, -52(%rbp)
	.loc 2 1454 6
	cmpl	$2, -52(%rbp)
	jne	.L216
	.loc 2 1454 43 discriminator 1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1454 40 discriminator 1
	cmpb	$120, %al
	jne	.L216
.LBB20:
	.loc 2 1456 30
	movq	-40(%rbp), %rax
	.loc 2 1456 52
	leaq	1(%rax), %rdx
	.loc 2 1456 30
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	parse_integer
	movq	%rax, -32(%rbp)
	.loc 2 1458 10
	cmpq	$0, -32(%rbp)
	je	.L217
	.loc 2 1458 32 discriminator 1
	movq	-48(%rbp), %rax
	imulq	-32(%rbp), %rax
	.loc 2 1458 45 discriminator 1
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rax, %rdx
	.loc 2 1458 58 discriminator 1
	movq	-48(%rbp), %rax
	.loc 2 1458 27 discriminator 1
	cmpq	%rax, %rdx
	je	.L217
	.loc 2 1460 20
	movq	-80(%rbp), %rax
	movl	$1, (%rax)
	.loc 2 1461 18
	movl	$0, %eax
	jmp	.L221
.L217:
	.loc 2 1464 13
	movq	-48(%rbp), %rax
	.loc 2 1464 10
	testq	%rax, %rax
	jne	.L219
	.loc 2 1464 21 discriminator 1
	movq	-72(%rbp), %rax
	movl	$2, %edx
	leaq	.LC69(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	.loc 2 1464 18 discriminator 1
	testl	%eax, %eax
	jne	.L219
	.loc 2 1465 9
	leaq	.LC70(%rip), %rsi
	movl	$1, %edi
	call	quote_n@PLT
	movq	%rax, %r12
	leaq	.LC69(%rip), %rsi
	movl	$0, %edi
	call	quote_n@PLT
	movq	%rax, %rbx
	.loc 2 1466 16
	leaq	.LC71(%rip), %rdi
	call	gettext@PLT
	.loc 2 1465 9
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
.L219:
	.loc 2 1470 9
	movq	-48(%rbp), %rax
	imulq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBE20:
	.loc 2 1455 5
	jmp	.L220
.L216:
	.loc 2 1472 11
	cmpl	$0, -52(%rbp)
	je	.L220
	.loc 2 1474 16
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 2 1475 14
	movl	$0, %eax
	jmp	.L221
.L220:
	.loc 2 1478 10
	movq	-48(%rbp), %rax
.L221:
	.loc 2 1479 1 discriminator 1
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L222
	.loc 2 1479 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L222:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	parse_integer, .-parse_integer
	.type	operand_is, @function
operand_is:
.LFB84:
	.loc 2 1485 1 is_stmt 1
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
	.loc 2 1486 10
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$61, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	operand_matches
	.loc 2 1487 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	operand_is, .-operand_is
	.section	.rodata
.LC72:
	.string	"unrecognized operand %s"
.LC73:
	.string	"if"
.LC74:
	.string	"of"
.LC75:
	.string	"conv"
.LC76:
	.string	"invalid conversion"
.LC77:
	.string	"iflag"
.LC78:
	.string	"invalid input flag"
.LC79:
	.string	"oflag"
.LC80:
	.string	"invalid output flag"
.LC81:
	.string	"status"
.LC82:
	.string	"invalid status level"
.LC83:
	.string	"ibs"
.LC84:
	.string	"obs"
.LC85:
	.string	"bs"
.LC86:
	.string	"cbs"
.LC87:
	.string	"skip"
.LC88:
	.string	"seek"
.LC89:
	.string	"count"
.LC90:
	.string	"invalid number"
.LC91:
	.string	"fullblock"
.LC92:
	.string	"seek_bytes"
.LC93:
	.string	"count_bytes"
.LC94:
	.string	"skip_bytes"
	.align 8
.LC95:
	.string	"cannot combine any two of {ascii,ebcdic,ibm}"
	.align 8
.LC96:
	.string	"cannot combine block and unblock"
	.align 8
.LC97:
	.string	"cannot combine lcase and ucase"
	.align 8
.LC98:
	.string	"cannot combine excl and nocreat"
	.align 8
.LC99:
	.string	"cannot combine direct and nocache"
	.text
	.type	scanargs, @function
scanargs:
.LFB85:
	.loc 2 1491 1
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
	.loc 2 1491 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1492 10
	movq	$0, -96(%rbp)
	.loc 2 1493 13
	movq	$-1, -88(%rbp)
	.loc 2 1494 13
	movq	$0, -80(%rbp)
	.loc 2 1495 13
	movq	$0, -72(%rbp)
.LBB21:
	.loc 2 1497 12
	movl	optind(%rip), %eax
	movl	%eax, -100(%rbp)
	.loc 2 1497 3
	jmp	.L226
.L248:
.LBB22:
	.loc 2 1499 30
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1499 19
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	.loc 2 1500 25
	movq	-48(%rbp), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -40(%rbp)
	.loc 2 1502 10
	cmpq	$0, -40(%rbp)
	jne	.L227
	.loc 2 1504 11
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1504 24
	leaq	.LC72(%rip), %rdi
	call	gettext@PLT
	.loc 2 1504 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 1506 11
	movl	$1, %edi
	call	usage
.L227:
	.loc 2 1508 10
	addq	$1, -40(%rbp)
	.loc 2 1510 11
	movq	-48(%rbp), %rax
	leaq	.LC73(%rip), %rsi
	movq	%rax, %rdi
	call	operand_is
	.loc 2 1510 10
	testb	%al, %al
	je	.L228
	.loc 2 1511 20
	movq	-40(%rbp), %rax
	movq	%rax, input_file(%rip)
	jmp	.L229
.L228:
	.loc 2 1512 16
	movq	-48(%rbp), %rax
	leaq	.LC74(%rip), %rsi
	movq	%rax, %rdi
	call	operand_is
	.loc 2 1512 15
	testb	%al, %al
	je	.L230
	.loc 2 1513 21
	movq	-40(%rbp), %rax
	movq	%rax, output_file(%rip)
	jmp	.L229
.L230:
	.loc 2 1514 16
	movq	-48(%rbp), %rax
	leaq	.LC75(%rip), %rsi
	movq	%rax, %rdi
	call	operand_is
	.loc 2 1514 15
	testb	%al, %al
	je	.L231
	.loc 2 1515 29
	movq	-40(%rbp), %rax
	leaq	.LC76(%rip), %rcx
	movl	$0, %edx
	leaq	conversions(%rip), %rsi
	movq	%rax, %rdi
	call	parse_symbols
	.loc 2 1515 26
	movl	conversions_mask(%rip), %edx
	orl	%edx, %eax
	movl	%eax, conversions_mask(%rip)
	jmp	.L229
.L231:
	.loc 2 1517 16
	movq	-48(%rbp), %rax
	leaq	.LC77(%rip), %rsi
	movq	%rax, %rdi
	call	operand_is
	.loc 2 1517 15
	testb	%al, %al
	je	.L232
	.loc 2 1518 24
	movq	-40(%rbp), %rax
	leaq	.LC78(%rip), %rcx
	movl	$0, %edx
	leaq	flags(%rip), %rsi
	movq	%rax, %rdi
	call	parse_symbols
	.loc 2 1518 21
	movl	input_flags(%rip), %edx
	orl	%edx, %eax
	movl	%eax, input_flags(%rip)
	jmp	.L229
.L232:
	.loc 2 1520 16
	movq	-48(%rbp), %rax
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	call	operand_is
	.loc 2 1520 15
	testb	%al, %al
	je	.L233
	.loc 2 1521 25
	movq	-40(%rbp), %rax
	leaq	.LC80(%rip), %rcx
	movl	$0, %edx
	leaq	flags(%rip), %rsi
	movq	%rax, %rdi
	call	parse_symbols
	.loc 2 1521 22
	movl	output_flags(%rip), %edx
	orl	%edx, %eax
	movl	%eax, output_flags(%rip)
	jmp	.L229
.L233:
	.loc 2 1523 16
	movq	-48(%rbp), %rax
	leaq	.LC81(%rip), %rsi
	movq	%rax, %rdi
	call	operand_is
	.loc 2 1523 15
	testb	%al, %al
	je	.L234
	.loc 2 1524 24
	movq	-40(%rbp), %rax
	leaq	.LC82(%rip), %rcx
	movl	$1, %edx
	leaq	statuses(%rip), %rsi
	movq	%rax, %rdi
	call	parse_symbols
	.loc 2 1524 22
	movl	%eax, status_level(%rip)
	jmp	.L229
.L234:
.LBB23:
	.loc 2 1528 24
	movl	$0, -104(%rbp)
	.loc 2 1529 25
	leaq	-104(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_integer
	movq	%rax, -32(%rbp)
	.loc 2 1530 21
	movq	$0, -64(%rbp)
	.loc 2 1531 21
	movq	$-1, -56(%rbp)
	.loc 2 1533 15
	movq	-48(%rbp), %rax
	leaq	.LC83(%rip), %rsi
	movq	%rax, %rdi
	call	operand_is
	.loc 2 1533 14
	testb	%al, %al
	je	.L235
	.loc 2 1535 21
	movq	$1, -64(%rbp)
	.loc 2 1536 23
	movq	page_size(%rip), %rax
	addq	$2, %rax
	addq	%rax, %rax
	negq	%rax
	.loc 2 1536 21
	movabsq	$9223372036854775807, %rcx
	movabsq	$9223372036854775807, %rdx
	cmpq	%rcx, %rax
	cmova	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 2 1537 31
	movq	-32(%rbp), %rax
	movq	%rax, input_blocksize(%rip)
	jmp	.L236
.L235:
	.loc 2 1539 20
	movq	-48(%rbp), %rax
	leaq	.LC84(%rip), %rsi
	movq	%rax, %rdi
	call	operand_is
	.loc 2 1539 19
	testb	%al, %al
	je	.L237
	.loc 2 1541 21
	movq	$1, -64(%rbp)
	.loc 2 1542 23
	movq	page_size(%rip), %rax
	negq	%rax
	.loc 2 1542 21
	movabsq	$9223372036854775807, %rcx
	movabsq	$9223372036854775807, %rdx
	cmpq	%rcx, %rax
	cmova	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 2 1543 32
	movq	-32(%rbp), %rax
	movq	%rax, output_blocksize(%rip)
	jmp	.L236
.L237:
	.loc 2 1545 20
	movq	-48(%rbp), %rax
	leaq	.LC85(%rip), %rsi
	movq	%rax, %rdi
	call	operand_is
	.loc 2 1545 19
	testb	%al, %al
	je	.L238
	.loc 2 1547 21
	movq	$1, -64(%rbp)
	.loc 2 1548 23
	movq	page_size(%rip), %rax
	addq	$2, %rax
	addq	%rax, %rax
	negq	%rax
	.loc 2 1548 21
	movabsq	$9223372036854775807, %rcx
	movabsq	$9223372036854775807, %rdx
	cmpq	%rcx, %rax
	cmova	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 2 1549 25
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L236
.L238:
	.loc 2 1551 20
	movq	-48(%rbp), %rax
	leaq	.LC86(%rip), %rsi
	movq	%rax, %rdi
	call	operand_is
	.loc 2 1551 19
	testb	%al, %al
	je	.L239
	.loc 2 1553 21
	movq	$1, -64(%rbp)
	.loc 2 1554 21
	movq	$-1, -56(%rbp)
	.loc 2 1555 36
	movq	-32(%rbp), %rax
	movq	%rax, conversion_blocksize(%rip)
	jmp	.L236
.L239:
	.loc 2 1557 20
	movq	-48(%rbp), %rax
	leaq	.LC87(%rip), %rsi
	movq	%rax, %rdi
	call	operand_is
	.loc 2 1557 19
	testb	%al, %al
	je	.L240
	.loc 2 1558 18
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.L236
.L240:
	.loc 2 1559 20
	movq	-48(%rbp), %rax
	leaq	.LC88(%rip), %rsi
	movq	%rax, %rdi
	call	operand_is
	.loc 2 1559 19
	testb	%al, %al
	je	.L241
	.loc 2 1560 18
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L236
.L241:
	.loc 2 1561 20
	movq	-48(%rbp), %rax
	leaq	.LC89(%rip), %rsi
	movq	%rax, %rdi
	call	operand_is
	.loc 2 1561 19
	testb	%al, %al
	je	.L242
	.loc 2 1562 19
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L236
.L242:
	.loc 2 1565 15
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1565 28
	leaq	.LC72(%rip), %rdi
	call	gettext@PLT
	.loc 2 1565 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 1567 15
	movl	$1, %edi
	call	usage
.L236:
	.loc 2 1570 14
	movq	-32(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L243
	.loc 2 1571 21
	movl	$4, -104(%rbp)
	jmp	.L244
.L243:
	.loc 2 1572 19
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L244
	.loc 2 1573 21
	movl	$1, -104(%rbp)
.L244:
	.loc 2 1575 23
	movl	-104(%rbp), %eax
	.loc 2 1575 14
	testl	%eax, %eax
	je	.L229
.LBB24:
	.loc 2 1576 13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC90(%rip), %rdi
	call	gettext@PLT
	movl	-104(%rbp), %edx
	cmpl	$1, %edx
	jne	.L246
	.loc 2 1576 13 is_stmt 0 discriminator 1
	movl	$75, %esi
	jmp	.L247
.L246:
	.loc 2 1576 13 discriminator 2
	movl	$0, %esi
.L247:
	.loc 2 1576 13 discriminator 4
	movq	%rbx, %r8
	movq	%rax, %rcx
	leaq	.LC67(%rip), %rdx
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L229:
.LBE24:
.LBE23:
.LBE22:
	.loc 2 1497 35 is_stmt 1 discriminator 2
	addl	$1, -100(%rbp)
.L226:
	.loc 2 1497 3 discriminator 1
	movl	-100(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L248
.LBE21:
	.loc 2 1581 6
	cmpq	$0, -96(%rbp)
	je	.L249
	.loc 2 1582 40
	movq	-96(%rbp), %rax
	movq	%rax, output_blocksize(%rip)
	.loc 2 1582 21
	movq	output_blocksize(%rip), %rax
	movq	%rax, input_blocksize(%rip)
	jmp	.L250
.L249:
	.loc 2 1587 24
	movl	conversions_mask(%rip), %eax
	orb	$8, %ah
	movl	%eax, conversions_mask(%rip)
.L250:
	.loc 2 1590 23
	movq	input_blocksize(%rip), %rax
	.loc 2 1590 6
	testq	%rax, %rax
	jne	.L251
	.loc 2 1591 21
	movq	$512, input_blocksize(%rip)
.L251:
	.loc 2 1592 24
	movq	output_blocksize(%rip), %rax
	.loc 2 1592 6
	testq	%rax, %rax
	jne	.L252
	.loc 2 1593 22
	movq	$512, output_blocksize(%rip)
.L252:
	.loc 2 1594 28
	movq	conversion_blocksize(%rip), %rax
	.loc 2 1594 6
	testq	%rax, %rax
	jne	.L253
	.loc 2 1595 22
	movl	conversions_mask(%rip), %eax
	andl	$-25, %eax
	movl	%eax, conversions_mask(%rip)
.L253:
	.loc 2 1597 19
	movl	input_flags(%rip), %eax
	andl	$1052672, %eax
	.loc 2 1597 6
	testl	%eax, %eax
	je	.L254
	.loc 2 1598 17
	movl	input_flags(%rip), %eax
	orl	$1052672, %eax
	movl	%eax, input_flags(%rip)
.L254:
	.loc 2 1600 20
	movl	output_flags(%rip), %eax
	andl	$1, %eax
	.loc 2 1600 6
	testl	%eax, %eax
	je	.L255
	.loc 2 1602 7
	leaq	.LC91(%rip), %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %r8
	movq	%rax, %rcx
	leaq	.LC67(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 1603 7
	movl	$1, %edi
	call	usage
.L255:
	.loc 2 1606 19
	movl	input_flags(%rip), %eax
	andl	$16, %eax
	.loc 2 1606 6
	testl	%eax, %eax
	je	.L256
	.loc 2 1608 7
	leaq	.LC92(%rip), %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC78(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %r8
	movq	%rax, %rcx
	leaq	.LC67(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 1609 7
	movl	$1, %edi
	call	usage
.L256:
	.loc 2 1612 20
	movl	output_flags(%rip), %eax
	andl	$12, %eax
	.loc 2 1612 6
	testl	%eax, %eax
	je	.L257
	.loc 2 1615 34
	movl	output_flags(%rip), %eax
	andl	$4, %eax
	.loc 2 1614 7
	testl	%eax, %eax
	je	.L258
	.loc 2 1614 7 is_stmt 0 discriminator 1
	leaq	.LC93(%rip), %rax
	jmp	.L259
.L258:
	.loc 2 1614 7 discriminator 2
	leaq	.LC94(%rip), %rax
.L259:
	.loc 2 1614 7 discriminator 4
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC80(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %r8
	movq	%rax, %rcx
	leaq	.LC67(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 1617 7 is_stmt 1 discriminator 4
	movl	$1, %edi
	call	usage
.L257:
	.loc 2 1620 19
	movl	input_flags(%rip), %eax
	andl	$8, %eax
	.loc 2 1620 6
	testl	%eax, %eax
	je	.L260
	.loc 2 1620 34 discriminator 1
	cmpq	$0, -80(%rbp)
	je	.L260
	.loc 2 1622 27
	movq	input_blocksize(%rip), %rbx
	movq	-80(%rbp), %rax
	movl	$0, %edx
	divq	%rbx
	.loc 2 1622 20
	movq	%rax, skip_records(%rip)
	.loc 2 1623 25
	movq	input_blocksize(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	.loc 2 1623 18
	movq	%rax, skip_bytes(%rip)
	jmp	.L261
.L260:
	.loc 2 1625 11
	cmpq	$0, -80(%rbp)
	je	.L261
	.loc 2 1626 18
	movq	-80(%rbp), %rax
	movq	%rax, skip_records(%rip)
.L261:
	.loc 2 1628 19
	movl	input_flags(%rip), %eax
	andl	$4, %eax
	.loc 2 1628 6
	testl	%eax, %eax
	je	.L262
	.loc 2 1628 35 discriminator 1
	cmpq	$-1, -88(%rbp)
	je	.L262
	.loc 2 1630 27
	movq	input_blocksize(%rip), %rbx
	movq	-88(%rbp), %rax
	movl	$0, %edx
	divq	%rbx
	.loc 2 1630 19
	movq	%rax, max_records(%rip)
	.loc 2 1631 25
	movq	input_blocksize(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	.loc 2 1631 17
	movq	%rax, max_bytes(%rip)
	jmp	.L263
.L262:
	.loc 2 1633 11
	cmpq	$-1, -88(%rbp)
	je	.L263
	.loc 2 1634 17
	movq	-88(%rbp), %rax
	movq	%rax, max_records(%rip)
.L263:
	.loc 2 1636 20
	movl	output_flags(%rip), %eax
	andl	$16, %eax
	.loc 2 1636 6
	testl	%eax, %eax
	je	.L264
	.loc 2 1636 35 discriminator 1
	cmpq	$0, -72(%rbp)
	je	.L264
	.loc 2 1638 27
	movq	output_blocksize(%rip), %rbx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	divq	%rbx
	.loc 2 1638 20
	movq	%rax, seek_records(%rip)
	.loc 2 1639 25
	movq	output_blocksize(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	.loc 2 1639 18
	movq	%rax, seek_bytes(%rip)
	jmp	.L265
.L264:
	.loc 2 1641 11
	cmpq	$0, -72(%rbp)
	je	.L265
	.loc 2 1642 18
	movq	-72(%rbp), %rax
	movq	%rax, seek_records(%rip)
.L265:
	.loc 2 1649 26
	movl	conversions_mask(%rip), %eax
	andl	$2048, %eax
	.loc 2 1650 6
	testl	%eax, %eax
	jne	.L266
	.loc 2 1649 57
	movl	input_flags(%rip), %eax
	andl	$1, %eax
	.loc 2 1649 39
	testl	%eax, %eax
	jne	.L266
	.loc 2 1650 10
	movq	skip_records(%rip), %rax
	.loc 2 1650 6
	testq	%rax, %rax
	jne	.L267
	.loc 2 1651 16
	movq	max_records(%rip), %rax
	.loc 2 1651 10
	testq	%rax, %rax
	je	.L268
	.loc 2 1651 45 discriminator 1
	movq	max_records(%rip), %rax
	.loc 2 1651 30 discriminator 1
	cmpq	$-1, %rax
	jne	.L267
.L268:
	.loc 2 1652 26
	movl	input_flags(%rip), %edx
	movl	output_flags(%rip), %eax
	orl	%edx, %eax
	.loc 2 1652 42
	andl	$16384, %eax
	.loc 2 1652 10
	testl	%eax, %eax
	je	.L266
.L267:
	.loc 2 1650 6 discriminator 2
	movl	$1, %eax
	jmp	.L269
.L266:
	.loc 2 1650 6 is_stmt 0 discriminator 1
	movl	$0, %eax
.L269:
	.loc 2 1650 6 discriminator 4
	andl	$1, %eax
	.loc 2 1648 21 is_stmt 1 discriminator 4
	movb	%al, warn_partial_read(%rip)
	.loc 2 1654 29 discriminator 4
	movl	input_flags(%rip), %eax
	andl	$1, %eax
	.loc 2 1656 16 discriminator 4
	testl	%eax, %eax
	je	.L270
	.loc 2 1656 16 is_stmt 0 discriminator 1
	leaq	iread_fullblock(%rip), %rax
	jmp	.L271
.L270:
	.loc 2 1656 16 discriminator 2
	leaq	iread(%rip), %rax
.L271:
	.loc 2 1654 13 is_stmt 1
	movq	%rax, iread_fnc(%rip)
	.loc 2 1657 15
	movl	input_flags(%rip), %eax
	andl	$-2, %eax
	movl	%eax, input_flags(%rip)
	.loc 2 1659 7
	movl	conversions_mask(%rip), %eax
	andl	$7, %eax
	movl	%eax, %edi
	call	multiple_bits_set
	.loc 2 1659 6
	testb	%al, %al
	je	.L272
.LBB25:
	.loc 2 1660 5
	leaq	.LC95(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L272:
.LBE25:
	.loc 2 1661 7
	movl	conversions_mask(%rip), %eax
	andl	$24, %eax
	movl	%eax, %edi
	call	multiple_bits_set
	.loc 2 1661 6
	testb	%al, %al
	je	.L273
.LBB26:
	.loc 2 1662 5
	leaq	.LC96(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L273:
.LBE26:
	.loc 2 1663 7
	movl	conversions_mask(%rip), %eax
	andl	$96, %eax
	movl	%eax, %edi
	call	multiple_bits_set
	.loc 2 1663 6
	testb	%al, %al
	je	.L274
.LBB27:
	.loc 2 1664 5
	leaq	.LC97(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L274:
.LBE27:
	.loc 2 1665 7
	movl	conversions_mask(%rip), %eax
	andl	$12288, %eax
	movl	%eax, %edi
	call	multiple_bits_set
	.loc 2 1665 6
	testb	%al, %al
	je	.L275
.LBB28:
	.loc 2 1666 5
	leaq	.LC98(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L275:
.LBE28:
	.loc 2 1667 7
	movl	input_flags(%rip), %eax
	andl	$16386, %eax
	movl	%eax, %edi
	call	multiple_bits_set
	.loc 2 1667 6
	testb	%al, %al
	jne	.L276
	.loc 2 1668 10
	movl	output_flags(%rip), %eax
	andl	$16386, %eax
	movl	%eax, %edi
	call	multiple_bits_set
	.loc 2 1668 7
	testb	%al, %al
	je	.L277
.L276:
.LBB29:
	.loc 2 1669 5
	leaq	.LC99(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L277:
.LBE29:
	.loc 2 1671 19
	movl	input_flags(%rip), %eax
	andl	$2, %eax
	.loc 2 1671 6
	testl	%eax, %eax
	je	.L278
	.loc 2 1673 17
	movb	$1, i_nocache(%rip)
	.loc 2 1674 36
	movq	max_records(%rip), %rax
	.loc 2 1674 41
	testq	%rax, %rax
	jne	.L279
	.loc 2 1674 54 discriminator 1
	movq	max_bytes(%rip), %rax
	.loc 2 1674 41 discriminator 1
	testq	%rax, %rax
	jne	.L279
	.loc 2 1674 41 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L280
.L279:
	.loc 2 1674 41 discriminator 4
	movl	$0, %eax
.L280:
	.loc 2 1674 41 discriminator 6
	andl	$1, %eax
	.loc 2 1674 21 is_stmt 1 discriminator 6
	movb	%al, i_nocache_eof(%rip)
	.loc 2 1675 19 discriminator 6
	movl	input_flags(%rip), %eax
	andl	$-3, %eax
	movl	%eax, input_flags(%rip)
.L278:
	.loc 2 1677 20
	movl	output_flags(%rip), %eax
	andl	$2, %eax
	.loc 2 1677 6
	testl	%eax, %eax
	je	.L285
	.loc 2 1679 17
	movb	$1, o_nocache(%rip)
	.loc 2 1680 36
	movq	max_records(%rip), %rax
	.loc 2 1680 41
	testq	%rax, %rax
	jne	.L282
	.loc 2 1680 54 discriminator 1
	movq	max_bytes(%rip), %rax
	.loc 2 1680 41 discriminator 1
	testq	%rax, %rax
	jne	.L282
	.loc 2 1680 41 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L283
.L282:
	.loc 2 1680 41 discriminator 4
	movl	$0, %eax
.L283:
	.loc 2 1680 41 discriminator 6
	andl	$1, %eax
	.loc 2 1680 21 is_stmt 1 discriminator 6
	movb	%al, o_nocache_eof(%rip)
	.loc 2 1681 20 discriminator 6
	movl	output_flags(%rip), %eax
	andl	$-3, %eax
	movl	%eax, output_flags(%rip)
.L285:
	.loc 2 1683 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L284
	call	__stack_chk_fail@PLT
.L284:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	scanargs, .-scanargs
	.type	apply_translations, @function
apply_translations:
.LFB86:
	.loc 2 1689 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 1692 24
	movl	conversions_mask(%rip), %eax
	andl	$1, %eax
	.loc 2 1692 6
	testl	%eax, %eax
	je	.L287
	.loc 2 1693 5
	leaq	ebcdic_to_ascii(%rip), %rdi
	call	translate_charset
.L287:
	.loc 2 1695 24
	movl	conversions_mask(%rip), %eax
	andl	$64, %eax
	.loc 2 1695 6
	testl	%eax, %eax
	je	.L288
	.loc 2 1697 14
	movl	$0, -4(%rbp)
	.loc 2 1697 7
	jmp	.L289
.L290:
	.loc 2 1698 46 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	trans_table(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1698 26 discriminator 3
	movzbl	%al, %eax
	movl	%eax, %edi
	call	toupper@PLT
	.loc 2 1698 24 discriminator 3
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	trans_table(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	.loc 2 1697 29 discriminator 3
	addl	$1, -4(%rbp)
.L289:
	.loc 2 1697 7 discriminator 1
	cmpl	$255, -4(%rbp)
	jle	.L290
	.loc 2 1699 26
	movb	$1, translation_needed(%rip)
	jmp	.L291
.L288:
	.loc 2 1701 29
	movl	conversions_mask(%rip), %eax
	andl	$32, %eax
	.loc 2 1701 11
	testl	%eax, %eax
	je	.L291
	.loc 2 1703 14
	movl	$0, -4(%rbp)
	.loc 2 1703 7
	jmp	.L292
.L293:
	.loc 2 1704 46 discriminator 3
	movl	-4(%rbp), %eax
	cltq
	leaq	trans_table(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	.loc 2 1704 26 discriminator 3
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	.loc 2 1704 24 discriminator 3
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	trans_table(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	.loc 2 1703 29 discriminator 3
	addl	$1, -4(%rbp)
.L292:
	.loc 2 1703 7 discriminator 1
	cmpl	$255, -4(%rbp)
	jle	.L293
	.loc 2 1705 26
	movb	$1, translation_needed(%rip)
.L291:
	.loc 2 1708 24
	movl	conversions_mask(%rip), %eax
	andl	$2, %eax
	.loc 2 1708 6
	testl	%eax, %eax
	je	.L294
	.loc 2 1710 7
	leaq	ascii_to_ebcdic(%rip), %rdi
	call	translate_charset
	.loc 2 1711 42
	movl	$37, %eax
	.loc 2 1711 25
	movb	%al, newline_character(%rip)
	.loc 2 1712 40
	movl	$64, %eax
	.loc 2 1712 23
	movb	%al, space_character(%rip)
	.loc 2 1720 1
	jmp	.L296
.L294:
	.loc 2 1714 29
	movl	conversions_mask(%rip), %eax
	andl	$4, %eax
	.loc 2 1714 11
	testl	%eax, %eax
	je	.L296
	.loc 2 1716 7
	leaq	ascii_to_ibm(%rip), %rdi
	call	translate_charset
	.loc 2 1717 39
	movl	$37, %eax
	.loc 2 1717 25
	movb	%al, newline_character(%rip)
	.loc 2 1718 37
	movl	$64, %eax
	.loc 2 1718 23
	movb	%al, space_character(%rip)
.L296:
	.loc 2 1720 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	apply_translations, .-apply_translations
	.type	translate_buffer, @function
translate_buffer:
.LFB87:
	.loc 2 1727 1
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
	.loc 2 1730 10
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 1730 22
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1730 3
	jmp	.L298
.L299:
	.loc 2 1731 33 discriminator 3
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1731 23 discriminator 3
	movsbl	%al, %eax
	movl	%eax, %edi
	call	to_uchar
	movzbl	%al, %eax
	.loc 2 1731 22 discriminator 3
	cltq
	leaq	trans_table(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movl	%eax, %edx
	.loc 2 1731 9 discriminator 3
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	.loc 2 1730 33 discriminator 3
	subq	$1, -16(%rbp)
	.loc 2 1730 39 discriminator 3
	addq	$1, -8(%rbp)
.L298:
	.loc 2 1730 3 discriminator 1
	cmpq	$0, -16(%rbp)
	jne	.L299
	.loc 2 1732 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	translate_buffer, .-translate_buffer
	.local	char_is_saved
	.comm	char_is_saved,1,1
	.local	saved_char
	.comm	saved_char,1,1
	.type	swab_buffer, @function
swab_buffer:
.LFB88:
	.loc 2 1747 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 2 1748 9
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 1751 7
	movzbl	char_is_saved(%rip), %eax
	.loc 2 1751 6
	testb	%al, %al
	je	.L301
	.loc 2 1753 19
	subq	$1, -24(%rbp)
	movzbl	saved_char(%rip), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	.loc 2 1754 8
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1754 15
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1755 21
	movb	$0, char_is_saved(%rip)
.L301:
	.loc 2 1758 7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1758 14
	andl	$1, %eax
	.loc 2 1758 6
	testq	%rax, %rax
	je	.L302
	.loc 2 1761 31
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1761 29
	leaq	-1(%rax), %rdx
	.loc 2 1761 18
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 1761 31
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 1761 28
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 1761 18
	movb	%al, saved_char(%rip)
	.loc 2 1762 21
	movb	$1, char_is_saved(%rip)
.L302:
	.loc 2 1769 25
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 1769 9
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
.LBB30:
	.loc 2 1770 19
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1770 15
	shrq	%rax
	movq	%rax, -8(%rbp)
	.loc 2 1770 3
	jmp	.L303
.L304:
	.loc 2 1771 9 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	-2(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	.loc 2 1770 35 discriminator 3
	subq	$1, -8(%rbp)
	.loc 2 1770 42 discriminator 3
	subq	$2, -16(%rbp)
.L303:
	.loc 2 1770 3 discriminator 1
	cmpq	$0, -8(%rbp)
	jne	.L304
.LBE30:
	.loc 2 1773 10
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	.loc 2 1774 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	swab_buffer, .-swab_buffer
	.type	advance_input_offset, @function
advance_input_offset:
.LFB89:
	.loc 2 1781 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 1782 16
	movq	input_offset(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, input_offset(%rip)
	.loc 2 1783 20
	movq	input_offset(%rip), %rax
	.loc 2 1783 6
	cmpq	%rax, -8(%rbp)
	jbe	.L308
	.loc 2 1784 27
	movb	$1, input_offset_overflow(%rip)
.L308:
	.loc 2 1785 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	advance_input_offset, .-advance_input_offset
	.section	.rodata
.LC100:
	.string	"cannot fstat %s"
.LC101:
	.string	"%s: cannot skip"
.LC102:
	.string	"%s: cannot seek"
.LC103:
	.string	"error reading %s"
	.text
	.type	skip, @function
skip:
.LFB90:
	.loc 2 1799 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$240, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -212(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -240(%rbp)
	movq	%r8, -248(%rbp)
	.loc 2 1799 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1800 30
	movq	-232(%rbp), %rax
	imulq	-240(%rbp), %rax
	movq	%rax, %rdx
	.loc 2 1800 44
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1800 13
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	.loc 2 1806 3
	call	__errno_location@PLT
	.loc 2 1806 9
	movl	$0, (%rax)
	.loc 2 1807 28
	movabsq	$9223372036854775807, %rax
	movl	$0, %edx
	divq	-240(%rbp)
	.loc 2 1807 6
	cmpq	%rax, -232(%rbp)
	ja	.L310
	.loc 2 1808 15
	movq	-200(%rbp), %rcx
	movl	-212(%rbp), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 2 1808 7
	testq	%rax, %rax
	js	.L310
	.loc 2 1810 10
	cmpl	$0, -212(%rbp)
	jne	.L311
.LBB31:
	.loc 2 1813 16
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ifstat
	.loc 2 1813 15
	testl	%eax, %eax
	je	.L312
.LBB32:
	.loc 2 1814 14
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC100(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L312:
.LBE32:
	.loc 2 1815 16
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	usable_st_size
	.loc 2 1815 15
	testb	%al, %al
	je	.L313
	.loc 2 1815 42 discriminator 1
	movq	-128(%rbp), %rax
	movq	%rax, %rcx
	.loc 2 1815 66 discriminator 1
	movq	input_offset(%rip), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1815 37 discriminator 1
	cmpq	%rax, %rcx
	jnb	.L313
	.loc 2 1820 39
	movq	-128(%rbp), %rax
	movq	%rax, %rdx
	.loc 2 1820 35
	movq	-200(%rbp), %rax
	subq	%rdx, %rax
	.loc 2 1820 24
	movl	$0, %edx
	divq	-240(%rbp)
	movq	%rax, -232(%rbp)
	.loc 2 1821 27
	movq	-128(%rbp), %rax
	movq	%rax, %rdx
	.loc 2 1821 36
	movq	input_offset(%rip), %rax
	.loc 2 1821 23
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -200(%rbp)
	jmp	.L314
.L313:
	.loc 2 1824 22
	movq	$0, -232(%rbp)
.L314:
	.loc 2 1825 12
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	advance_input_offset
.LBE31:
	jmp	.L315
.L311:
	.loc 2 1829 19
	movq	$0, -232(%rbp)
	.loc 2 1830 18
	movq	-248(%rbp), %rax
	movq	$0, (%rax)
.L315:
	.loc 2 1832 14
	movq	-232(%rbp), %rax
	jmp	.L316
.L310:
.LBB33:
	.loc 2 1836 25
	call	__errno_location@PLT
	.loc 2 1836 11
	movl	(%rax), %eax
	movl	%eax, -204(%rbp)
	.loc 2 1843 11
	movl	-212(%rbp), %eax
	movl	$2, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	.loc 2 1843 10
	testq	%rax, %rax
	js	.L317
	.loc 2 1848 14
	cmpl	$0, -204(%rbp)
	jne	.L318
	.loc 2 1857 27
	movl	$75, -204(%rbp)
.L318:
	.loc 2 1860 14
	cmpl	$0, -212(%rbp)
	jne	.L319
	.loc 2 1861 13
	movq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 1861 36
	leaq	.LC101(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1861 13
	movl	-204(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	jmp	.L320
.L319:
	.loc 2 1863 13
	movq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 1863 36
	leaq	.LC102(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1863 13
	movl	-204(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
.L320:
	.loc 2 1866 11
	movl	$1, %edi
	call	quit
.L317:
	.loc 2 1871 10
	cmpl	$0, -212(%rbp)
	jne	.L321
	.loc 2 1873 11
	call	alloc_ibuf
	.loc 2 1874 15
	movq	ibuf(%rip), %rax
	movq	%rax, -192(%rbp)
	jmp	.L333
.L321:
	.loc 2 1878 11
	call	alloc_obuf
	.loc 2 1879 15
	movq	obuf(%rip), %rax
	movq	%rax, -192(%rbp)
.L333:
.LBB34:
	.loc 2 1884 27
	movq	iread_fnc(%rip), %r8
	cmpq	$0, -232(%rbp)
	jne	.L323
	.loc 2 1884 27 is_stmt 0 discriminator 1
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L324
.L323:
	.loc 2 1884 27 discriminator 2
	movq	-240(%rbp), %rax
.L324:
	.loc 2 1884 27 discriminator 4
	movq	-192(%rbp), %rsi
	movl	-212(%rbp), %ecx
	movq	%rax, %rdx
	movl	%ecx, %edi
	call	*%r8
.LVL0:
	movq	%rax, -184(%rbp)
	.loc 2 1885 14 is_stmt 1 discriminator 4
	cmpq	$0, -184(%rbp)
	jns	.L325
	.loc 2 1887 18
	cmpl	$0, -212(%rbp)
	jne	.L326
	.loc 2 1889 19
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 1889 36
	leaq	.LC103(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 1889 29
	call	__errno_location@PLT
	.loc 2 1889 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 1890 40
	movl	conversions_mask(%rip), %eax
	andl	$256, %eax
	.loc 2 1890 22
	testl	%eax, %eax
	je	.L327
	.loc 2 1891 21
	call	print_stats
	jmp	.L327
.L326:
	.loc 2 1894 17
	movq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 1894 40
	leaq	.LC102(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1894 17
	movl	-204(%rbp), %eax
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
.L327:
	.loc 2 1895 15
	movl	$1, %edi
	call	quit
.L325:
	.loc 2 1897 19
	cmpq	$0, -184(%rbp)
	je	.L335
	.loc 2 1899 19
	cmpl	$0, -212(%rbp)
	jne	.L330
	.loc 2 1900 13
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	advance_input_offset
.L330:
	.loc 2 1902 14
	cmpq	$0, -232(%rbp)
	je	.L331
	.loc 2 1903 20
	subq	$1, -232(%rbp)
	jmp	.L332
.L331:
	.loc 2 1905 20
	movq	-248(%rbp), %rax
	movq	$0, (%rax)
.L332:
.LBE34:
	.loc 2 1907 7
	cmpq	$0, -232(%rbp)
	jne	.L333
	.loc 2 1907 25 discriminator 1
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1907 22 discriminator 1
	testq	%rax, %rax
	jne	.L333
	jmp	.L329
.L335:
.LBB35:
	.loc 2 1898 13
	nop
.L329:
.LBE35:
	.loc 2 1909 14
	movq	-232(%rbp), %rax
.L316:
.LBE33:
	.loc 2 1911 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L334
	call	__stack_chk_fail@PLT
.L334:
	addq	$240, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	skip, .-skip
	.section	.rodata
	.align 8
.LC104:
	.string	"offset overflow while reading file %s"
	.align 8
.LC105:
	.string	"warning: invalid file offset after failed read"
	.align 8
.LC106:
	.string	"cannot work around kernel bug after all"
	.text
	.type	advance_input_after_read_error, @function
advance_input_after_read_error:
.LFB91:
	.loc 2 1921 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	.loc 2 1922 7
	movzbl	input_seekable(%rip), %eax
	xorl	$1, %eax
	.loc 2 1922 6
	testb	%al, %al
	je	.L337
	.loc 2 1924 28
	movl	input_seek_errno(%rip), %eax
	.loc 2 1924 10
	cmpl	$29, %eax
	jne	.L338
	.loc 2 1925 16
	movl	$1, %eax
	jmp	.L339
.L338:
	.loc 2 1926 7
	call	__errno_location@PLT
	.loc 2 1926 13
	movl	input_seek_errno(%rip), %edx
	movl	%edx, (%rax)
	jmp	.L340
.L337:
.LBB36:
	.loc 2 1931 7
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	advance_input_offset
	.loc 2 1932 29
	movzbl	input_offset_overflow(%rip), %eax
	movzbl	%al, %edx
	.loc 2 1932 43
	movq	input_offset(%rip), %rax
	shrq	$63, %rax
	movzbl	%al, %eax
	.loc 2 1932 29
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, input_offset_overflow(%rip)
	.loc 2 1933 11
	movzbl	input_offset_overflow(%rip), %eax
	.loc 2 1933 10
	testb	%al, %al
	je	.L341
	.loc 2 1935 11
	movq	input_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 1935 24
	leaq	.LC104(%rip), %rdi
	call	gettext@PLT
	.loc 2 1935 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 1937 18
	movl	$0, %eax
	jmp	.L339
.L341:
	.loc 2 1939 16
	movl	$1, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	lseek@PLT
	movq	%rax, -32(%rbp)
	.loc 2 1940 10
	cmpq	$0, -32(%rbp)
	js	.L340
.LBB37:
	.loc 2 1943 22
	movq	input_offset(%rip), %rax
	.loc 2 1943 14
	cmpq	%rax, -32(%rbp)
	jne	.L342
	.loc 2 1944 20
	movl	$1, %eax
	jmp	.L339
.L342:
	.loc 2 1945 31
	movq	input_offset(%rip), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 1945 16
	movq	%rax, -24(%rbp)
	.loc 2 1946 14
	cmpq	$0, -24(%rbp)
	js	.L343
	.loc 2 1946 36 discriminator 2
	movq	-24(%rbp), %rax
	.loc 2 1946 15 discriminator 2
	cmpq	%rax, -40(%rbp)
	jnb	.L344
.L343:
	.loc 2 1946 63 discriminator 3
	movl	status_level(%rip), %eax
	.loc 2 1946 47 discriminator 3
	cmpl	$1, %eax
	je	.L344
	.loc 2 1947 26
	leaq	.LC105(%rip), %rdi
	call	gettext@PLT
	.loc 2 1947 13
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
.L344:
	.loc 2 1948 20
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	lseek@PLT
	.loc 2 1948 14
	testq	%rax, %rax
	js	.L345
	.loc 2 1949 20
	movl	$1, %eax
	jmp	.L339
.L345:
	.loc 2 1950 15
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 1950 14
	testl	%eax, %eax
	jne	.L340
	.loc 2 1951 26
	leaq	.LC106(%rip), %rdi
	call	gettext@PLT
	.loc 2 1951 13
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
.L340:
.LBE37:
.LBE36:
	.loc 2 1955 3
	movq	input_file(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 1955 20
	leaq	.LC102(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 1955 13
	call	__errno_location@PLT
	.loc 2 1955 3
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 1956 10
	movl	$0, %eax
.L339:
	.loc 2 1957 1
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	advance_input_after_read_error, .-advance_input_after_read_error
	.type	copy_simple, @function
copy_simple:
.LFB92:
	.loc 2 1963 1
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
	.loc 2 1964 15
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.L348:
.LBB38:
	.loc 2 1968 22
	movq	output_blocksize(%rip), %rdx
	movq	oc(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	.loc 2 1968 14
	cmpq	%rax, -32(%rbp)
	cmovbe	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1970 7
	movq	obuf(%rip), %rdx
	movq	oc(%rip), %rax
	.loc 2 1970 20
	leaq	(%rdx,%rax), %rcx
	.loc 2 1970 7
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 2 1972 13
	movq	-8(%rbp), %rax
	subq	%rax, -32(%rbp)
	.loc 2 1973 13
	movq	-8(%rbp), %rax
	addq	%rax, -16(%rbp)
	.loc 2 1974 10
	movq	oc(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, oc(%rip)
	.loc 2 1975 14
	movq	oc(%rip), %rdx
	movq	output_blocksize(%rip), %rax
	.loc 2 1975 10
	cmpq	%rax, %rdx
	jb	.L347
	.loc 2 1976 9
	call	write_output
.L347:
.LBE38:
	.loc 2 1978 3
	cmpq	$0, -32(%rbp)
	jne	.L348
	.loc 2 1979 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	copy_simple, .-copy_simple
	.type	copy_with_block, @function
copy_with_block:
.LFB93:
	.loc 2 1987 1
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
.LBB39:
	.loc 2 1988 15
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 1988 3
	jmp	.L350
.L359:
	.loc 2 1990 11
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	.loc 2 1990 16
	movzbl	newline_character(%rip), %eax
	.loc 2 1990 10
	cmpb	%al, %dl
	jne	.L351
	.loc 2 1992 19
	movq	col(%rip), %rdx
	movq	conversion_blocksize(%rip), %rax
	.loc 2 1992 14
	cmpq	%rax, %rdx
	jnb	.L352
.LBB40:
	.loc 2 1995 22
	movq	col(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 1995 15
	jmp	.L353
.L355:
	.loc 2 1996 17
	movq	obuf(%rip), %rcx
	movq	oc(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, oc(%rip)
	leaq	(%rcx,%rax), %rdx
	movzbl	space_character(%rip), %eax
	movb	%al, (%rdx)
	movq	oc(%rip), %rdx
	movq	output_blocksize(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L354
	.loc 2 1996 17 is_stmt 0 discriminator 1
	call	write_output
.L354:
	.loc 2 1995 56 is_stmt 1 discriminator 2
	addq	$1, -8(%rbp)
.L353:
	.loc 2 1995 31 discriminator 1
	movq	conversion_blocksize(%rip), %rax
	.loc 2 1995 15 discriminator 1
	cmpq	%rax, -8(%rbp)
	jb	.L355
.L352:
.LBE40:
	.loc 2 1998 15
	movq	$0, col(%rip)
	jmp	.L356
.L351:
	.loc 2 2002 19
	movq	col(%rip), %rdx
	movq	conversion_blocksize(%rip), %rax
	.loc 2 2002 14
	cmpq	%rax, %rdx
	jne	.L357
	.loc 2 2003 23
	movq	r_truncate(%rip), %rax
	addq	$1, %rax
	movq	%rax, r_truncate(%rip)
	jmp	.L358
.L357:
	.loc 2 2004 24
	movq	col(%rip), %rdx
	movq	conversion_blocksize(%rip), %rax
	.loc 2 2004 19
	cmpq	%rax, %rdx
	jnb	.L358
	.loc 2 2005 13
	movq	obuf(%rip), %rcx
	movq	oc(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, oc(%rip)
	leaq	(%rcx,%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movq	oc(%rip), %rdx
	movq	output_blocksize(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L358
	.loc 2 2005 13 is_stmt 0 discriminator 1
	call	write_output
.L358:
	.loc 2 2006 14 is_stmt 1
	movq	col(%rip), %rax
	addq	$1, %rax
	movq	%rax, col(%rip)
.L356:
	.loc 2 1988 30 discriminator 2
	subq	$1, -16(%rbp)
	.loc 2 1988 37 discriminator 2
	addq	$1, -24(%rbp)
.L350:
	.loc 2 1988 3 discriminator 1
	cmpq	$0, -16(%rbp)
	jne	.L359
.LBE39:
	.loc 2 2009 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	copy_with_block, .-copy_with_block
	.type	copy_with_unblock, @function
copy_with_unblock:
.LFB94:
	.loc 2 2017 1
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
.LBB41:
	.loc 2 2020 15
	movq	$0, -8(%rbp)
	.loc 2 2020 3
	jmp	.L361
.L368:
.LBB42:
	.loc 2 2022 19
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 2022 12
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	.loc 2 2024 14
	movq	col(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, col(%rip)
	.loc 2 2024 17
	movq	conversion_blocksize(%rip), %rdx
	.loc 2 2024 10
	cmpq	%rdx, %rax
	jb	.L362
	.loc 2 2026 32
	movq	$0, pending_spaces.6757(%rip)
	.loc 2 2026 15
	movq	pending_spaces.6757(%rip), %rax
	movq	%rax, col(%rip)
	.loc 2 2027 12
	subq	$1, -8(%rbp)
	.loc 2 2028 11
	movq	obuf(%rip), %rcx
	movq	oc(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, oc(%rip)
	leaq	(%rcx,%rax), %rdx
	movzbl	newline_character(%rip), %eax
	movb	%al, (%rdx)
	movq	oc(%rip), %rdx
	movq	output_blocksize(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L363
	.loc 2 2028 11 is_stmt 0 discriminator 1
	call	write_output
	jmp	.L363
.L362:
	.loc 2 2030 18 is_stmt 1
	movzbl	space_character(%rip), %eax
	.loc 2 2030 15
	cmpb	%al, -9(%rbp)
	jne	.L365
	.loc 2 2031 23
	movq	pending_spaces.6757(%rip), %rax
	addq	$1, %rax
	movq	%rax, pending_spaces.6757(%rip)
	jmp	.L363
.L367:
	.loc 2 2038 15
	movq	obuf(%rip), %rcx
	movq	oc(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, oc(%rip)
	leaq	(%rcx,%rax), %rdx
	movzbl	space_character(%rip), %eax
	movb	%al, (%rdx)
	movq	oc(%rip), %rdx
	movq	output_blocksize(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L366
	.loc 2 2038 15 is_stmt 0 discriminator 1
	call	write_output
.L366:
	.loc 2 2039 15 is_stmt 1
	movq	pending_spaces.6757(%rip), %rax
	subq	$1, %rax
	movq	%rax, pending_spaces.6757(%rip)
.L365:
	.loc 2 2036 18
	movq	pending_spaces.6757(%rip), %rax
	.loc 2 2036 17
	testq	%rax, %rax
	jne	.L367
	.loc 2 2041 11
	movq	obuf(%rip), %rcx
	movq	oc(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, oc(%rip)
	leaq	(%rcx,%rax), %rdx
	movzbl	-9(%rbp), %eax
	movb	%al, (%rdx)
	movq	oc(%rip), %rdx
	movq	output_blocksize(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L363
	.loc 2 2041 11 is_stmt 0 discriminator 1
	call	write_output
.L363:
.LBE42:
	.loc 2 2020 34 is_stmt 1 discriminator 2
	addq	$1, -8(%rbp)
.L361:
	.loc 2 2020 3 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L368
.LBE41:
	.loc 2 2044 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	copy_with_unblock, .-copy_with_unblock
	.section	.rodata
.LC107:
	.string	"setting flags for %s"
	.text
	.type	set_fd_flags, @function
set_fd_flags:
.LFB95:
	.loc 2 2051 1
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
	movl	%edi, -196(%rbp)
	movl	%esi, -200(%rbp)
	movq	%rdx, -208(%rbp)
	.loc 2 2051 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 2053 13
	andl	$-131329, -200(%rbp)
	.loc 2 2055 6
	cmpl	$0, -200(%rbp)
	je	.L377
.LBB43:
	.loc 2 2057 23
	movl	-196(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	rpl_fcntl@PLT
	movl	%eax, -180(%rbp)
	.loc 2 2058 11
	movl	-180(%rbp), %eax
	orl	-200(%rbp), %eax
	movl	%eax, -184(%rbp)
	.loc 2 2059 12
	movb	$1, -185(%rbp)
	.loc 2 2060 10
	cmpl	$0, -180(%rbp)
	jns	.L371
	.loc 2 2061 12
	movb	$0, -185(%rbp)
	jmp	.L372
.L371:
	.loc 2 2062 15
	movl	-180(%rbp), %eax
	cmpl	-184(%rbp), %eax
	je	.L372
	.loc 2 2064 25
	movl	-184(%rbp), %eax
	andl	$65536, %eax
	.loc 2 2064 14
	testl	%eax, %eax
	je	.L373
.LBB44:
	.loc 2 2069 19
	leaq	-176(%rbp), %rdx
	movl	-196(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ifstat
	.loc 2 2069 18
	testl	%eax, %eax
	je	.L374
	.loc 2 2070 20
	movb	$0, -185(%rbp)
	jmp	.L375
.L374:
	.loc 2 2071 35
	movl	-184(%rbp), %eax
	andl	$65536, %eax
	.loc 2 2071 23
	testl	%eax, %eax
	je	.L375
	.loc 2 2071 55 discriminator 1
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 2071 50 discriminator 1
	cmpl	$16384, %eax
	je	.L375
	.loc 2 2073 19
	call	__errno_location@PLT
	.loc 2 2073 25
	movl	$20, (%rax)
	.loc 2 2074 22
	movb	$0, -185(%rbp)
.L375:
	.loc 2 2081 25
	andl	$-65537, -184(%rbp)
.L373:
.LBE44:
	.loc 2 2084 14
	cmpb	$0, -185(%rbp)
	je	.L372
	.loc 2 2084 18 discriminator 1
	movl	-180(%rbp), %eax
	cmpl	-184(%rbp), %eax
	je	.L372
	.loc 2 2085 18
	movl	-184(%rbp), %edx
	movl	-196(%rbp), %eax
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	rpl_fcntl@PLT
	.loc 2 2085 15
	cmpl	$-1, %eax
	jne	.L372
	.loc 2 2086 16
	movb	$0, -185(%rbp)
.L372:
	.loc 2 2089 11
	movzbl	-185(%rbp), %eax
	xorl	$1, %eax
	.loc 2 2089 10
	testb	%al, %al
	je	.L377
.LBB45:
	.loc 2 2090 9
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC107(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L377:
.LBE45:
.LBE43:
	.loc 2 2092 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L376
	call	__stack_chk_fail@PLT
.L376:
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	set_fd_flags, .-set_fd_flags
	.section	.rodata
	.align 8
.LC108:
	.string	"%s: cannot skip to specified offset"
.LC109:
	.string	"error writing %s"
	.align 8
.LC110:
	.string	"failed to truncate to %ld bytes in output file %s"
.LC111:
	.string	"fdatasync failed for %s"
.LC112:
	.string	"fsync failed for %s"
	.text
	.type	dd_copy, @function
dd_copy:
.LFB96:
	.loc 2 2098 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$288, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 2 2098 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 2104 10
	movq	$0, -264(%rbp)
	.loc 2 2106 7
	movl	$0, -292(%rbp)
	.loc 2 2126 20
	movq	skip_records(%rip), %rax
	.loc 2 2126 6
	testq	%rax, %rax
	jne	.L379
	.loc 2 2126 39 discriminator 1
	movq	skip_bytes(%rip), %rax
	.loc 2 2126 25 discriminator 1
	testq	%rax, %rax
	je	.L380
.L379:
.LBB46:
	.loc 2 2128 57
	movq	skip_records(%rip), %rdx
	movq	input_blocksize(%rip), %rax
	imulq	%rax, %rdx
	.loc 2 2128 41
	movq	input_offset(%rip), %rax
	addq	%rax, %rdx
	.loc 2 2129 28
	movq	skip_bytes(%rip), %rax
	.loc 2 2128 17
	addq	%rdx, %rax
	movq	%rax, -240(%rbp)
	.loc 2 2130 29
	movq	input_blocksize(%rip), %rcx
	movq	skip_records(%rip), %rdx
	movq	input_file(%rip), %rax
	leaq	skip_bytes(%rip), %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	skip
	movq	%rax, -232(%rbp)
	.loc 2 2132 16
	movq	input_offset(%rip), %rax
	subq	%rax, -240(%rbp)
	.loc 2 2140 10
	cmpq	$0, -232(%rbp)
	jne	.L381
	.loc 2 2140 26 discriminator 1
	movzbl	input_offset_overflow(%rip), %eax
	xorl	$1, %eax
	.loc 2 2140 22 discriminator 1
	testb	%al, %al
	je	.L380
	.loc 2 2140 49 discriminator 2
	cmpq	$0, -240(%rbp)
	je	.L380
.L381:
	.loc 2 2141 27
	movl	status_level(%rip), %eax
	.loc 2 2141 11
	cmpl	$1, %eax
	je	.L380
	.loc 2 2143 11
	movq	input_file(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 2144 18
	leaq	.LC108(%rip), %rdi
	call	gettext@PLT
	.loc 2 2143 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
.L380:
.LBE46:
	.loc 2 2148 20
	movq	seek_records(%rip), %rax
	.loc 2 2148 6
	testq	%rax, %rax
	jne	.L382
	.loc 2 2148 39 discriminator 1
	movq	seek_bytes(%rip), %rax
	.loc 2 2148 25 discriminator 1
	testq	%rax, %rax
	je	.L383
.L382:
.LBB47:
	.loc 2 2150 14
	movq	seek_bytes(%rip), %rax
	movq	%rax, -288(%rbp)
	.loc 2 2151 33
	movq	output_blocksize(%rip), %rcx
	movq	seek_records(%rip), %rdx
	movq	output_file(%rip), %rax
	leaq	-288(%rbp), %rsi
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$1, %edi
	call	skip
	movq	%rax, -256(%rbp)
	.loc 2 2154 10
	cmpq	$0, -256(%rbp)
	jne	.L384
	.loc 2 2154 39 discriminator 1
	movq	-288(%rbp), %rax
	.loc 2 2154 30 discriminator 1
	testq	%rax, %rax
	je	.L383
.L384:
	.loc 2 2156 11
	cmpq	$0, -256(%rbp)
	je	.L386
	.loc 2 2156 11 is_stmt 0 discriminator 1
	movq	output_blocksize(%rip), %rax
	jmp	.L387
.L386:
	.loc 2 2156 11 discriminator 2
	movq	-288(%rbp), %rax
.L387:
	.loc 2 2156 11 discriminator 4
	movq	obuf(%rip), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
.L393:
.LBB48:
	.loc 2 2160 62 is_stmt 1
	cmpq	$0, -256(%rbp)
	je	.L388
	.loc 2 2160 62 is_stmt 0 discriminator 1
	movq	output_blocksize(%rip), %rax
	jmp	.L389
.L388:
	.loc 2 2160 62 discriminator 2
	movq	-288(%rbp), %rax
.L389:
	.loc 2 2160 22 is_stmt 1 discriminator 4
	movq	%rax, -224(%rbp)
	.loc 2 2161 19 discriminator 4
	movq	obuf(%rip), %rax
	movq	-224(%rbp), %rdx
	movq	%rax, %rsi
	movl	$1, %edi
	call	iwrite
	.loc 2 2161 18 discriminator 4
	cmpq	%rax, -224(%rbp)
	je	.L390
	.loc 2 2163 19
	movq	output_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 2163 36
	leaq	.LC66(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 2163 29
	call	__errno_location@PLT
	.loc 2 2163 19
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 2164 19
	movl	$1, %edi
	call	quit
.L390:
	.loc 2 2167 18
	cmpq	$0, -256(%rbp)
	je	.L391
	.loc 2 2168 30
	subq	$1, -256(%rbp)
	jmp	.L392
.L391:
	.loc 2 2170 23
	movq	$0, -288(%rbp)
.L392:
.LBE48:
	.loc 2 2172 11
	cmpq	$0, -256(%rbp)
	jne	.L393
	.loc 2 2172 32 discriminator 1
	movq	-288(%rbp), %rax
	testq	%rax, %rax
	jne	.L393
.L383:
.LBE47:
	.loc 2 2176 19
	movq	max_records(%rip), %rax
	.loc 2 2176 6
	testq	%rax, %rax
	jne	.L394
	.loc 2 2176 37 discriminator 1
	movq	max_bytes(%rip), %rax
	.loc 2 2176 24 discriminator 1
	testq	%rax, %rax
	jne	.L394
	.loc 2 2177 12
	movl	-292(%rbp), %eax
	jmp	.L447
.L394:
	.loc 2 2179 3
	call	alloc_ibuf
	.loc 2 2180 3
	call	alloc_obuf
.L429:
	.loc 2 2184 24
	movl	status_level(%rip), %eax
	.loc 2 2184 10
	cmpl	$4, %eax
	jne	.L396
.LBB49:
	.loc 2 2186 35
	call	gethrxtime@PLT
	movq	%rax, -216(%rbp)
	.loc 2 2187 25
	movq	next_time(%rip), %rax
	.loc 2 2187 14
	cmpq	%rax, -216(%rbp)
	jl	.L396
	.loc 2 2189 15
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	print_xfer_stats
	.loc 2 2190 25
	movq	next_time(%rip), %rax
	addq	$1000000000, %rax
	movq	%rax, next_time(%rip)
.L396:
.LBE49:
	.loc 2 2194 21
	movq	r_partial(%rip), %rdx
	movq	r_full(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 2 2194 47
	movq	max_bytes(%rip), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	.loc 2 2194 45
	movq	max_records(%rip), %rax
	addq	%rdx, %rax
	.loc 2 2194 10
	cmpq	%rax, %rcx
	jnb	.L449
	.loc 2 2200 29
	movl	conversions_mask(%rip), %eax
	andl	$1024, %eax
	.loc 2 2200 10
	testl	%eax, %eax
	je	.L399
	.loc 2 2200 60 discriminator 1
	movl	conversions_mask(%rip), %eax
	andl	$256, %eax
	.loc 2 2200 39 discriminator 1
	testl	%eax, %eax
	je	.L399
	.loc 2 2201 9
	movq	input_blocksize(%rip), %rdx
	.loc 2 2202 35
	movl	conversions_mask(%rip), %eax
	andl	$24, %eax
	.loc 2 2201 9
	testl	%eax, %eax
	je	.L400
	.loc 2 2201 9 is_stmt 0 discriminator 1
	movl	$32, %ecx
	jmp	.L401
.L400:
	.loc 2 2201 9 discriminator 2
	movl	$0, %ecx
.L401:
	.loc 2 2201 9 discriminator 4
	movq	ibuf(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L399:
	.loc 2 2205 21 is_stmt 1
	movq	r_partial(%rip), %rdx
	movq	r_full(%rip), %rax
	addq	%rax, %rdx
	.loc 2 2205 30
	movq	max_records(%rip), %rax
	.loc 2 2205 10
	cmpq	%rax, %rdx
	jb	.L402
	.loc 2 2206 17
	movq	iread_fnc(%rip), %rcx
	movq	max_bytes(%rip), %rdx
	movq	ibuf(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
.LVL1:
	movq	%rax, -272(%rbp)
	jmp	.L403
.L402:
	.loc 2 2208 17
	movq	iread_fnc(%rip), %rcx
	movq	input_blocksize(%rip), %rdx
	movq	ibuf(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
.LVL2:
	movq	%rax, -272(%rbp)
.L403:
	.loc 2 2210 10
	cmpq	$0, -272(%rbp)
	jle	.L404
	.loc 2 2212 11
	movq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	advance_input_offset
	.loc 2 2213 15
	movzbl	i_nocache(%rip), %eax
	.loc 2 2213 14
	testb	%al, %al
	je	.L405
	.loc 2 2214 13
	movq	-272(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	invalidate_cache
	jmp	.L405
.L404:
	.loc 2 2216 15
	cmpq	$0, -272(%rbp)
	jne	.L406
	.loc 2 2218 25
	movzbl	i_nocache_eof(%rip), %edx
	movzbl	i_nocache(%rip), %eax
	orl	%edx, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, i_nocache_eof(%rip)
	.loc 2 2219 25
	movzbl	o_nocache_eof(%rip), %eax
	movzbl	%al, %edx
	.loc 2 2219 28
	movzbl	o_nocache(%rip), %eax
	.loc 2 2219 38
	testb	%al, %al
	je	.L407
	.loc 2 2219 61 discriminator 1
	movl	conversions_mask(%rip), %eax
	andl	$512, %eax
	.loc 2 2219 38 discriminator 1
	testl	%eax, %eax
	jne	.L407
	.loc 2 2219 38 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L408
.L407:
	.loc 2 2219 38 discriminator 4
	movl	$0, %eax
.L408:
	.loc 2 2219 25 is_stmt 1 discriminator 6
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, o_nocache_eof(%rip)
	.loc 2 2220 11 discriminator 6
	jmp	.L398
.L406:
	.loc 2 2224 34
	movl	conversions_mask(%rip), %eax
	andl	$256, %eax
	.loc 2 2224 14
	testl	%eax, %eax
	je	.L409
	.loc 2 2224 63 discriminator 1
	movl	status_level(%rip), %eax
	.loc 2 2224 47 discriminator 1
	cmpl	$1, %eax
	je	.L410
.L409:
	.loc 2 2225 13
	movq	input_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 2225 30
	leaq	.LC103(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 2225 23
	call	__errno_location@PLT
	.loc 2 2225 13
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
.L410:
	.loc 2 2227 32
	movl	conversions_mask(%rip), %eax
	andl	$256, %eax
	.loc 2 2227 14
	testl	%eax, %eax
	je	.L411
.LBB50:
	.loc 2 2229 15
	call	print_stats
	.loc 2 2230 52
	movq	input_blocksize(%rip), %rax
	.loc 2 2230 22
	subq	-264(%rbp), %rax
	movq	%rax, -208(%rbp)
	.loc 2 2234 15
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	invalidate_cache
	.loc 2 2237 20
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	advance_input_after_read_error
	.loc 2 2237 19
	xorl	$1, %eax
	.loc 2 2237 18
	testb	%al, %al
	je	.L412
	.loc 2 2239 31
	movl	$1, -292(%rbp)
	.loc 2 2242 34
	movb	$0, input_seekable(%rip)
	.loc 2 2243 36
	movl	$29, input_seek_errno(%rip)
.L412:
	.loc 2 2245 37
	movl	conversions_mask(%rip), %eax
	andl	$1024, %eax
	.loc 2 2245 18
	testl	%eax, %eax
	je	.L450
	.loc 2 2245 47 discriminator 1
	cmpq	$0, -264(%rbp)
	jne	.L450
	.loc 2 2248 23
	movq	$0, -272(%rbp)
.LBE50:
	jmp	.L405
.L411:
	.loc 2 2255 27
	movl	$1, -292(%rbp)
	.loc 2 2256 15
	jmp	.L398
.L405:
	.loc 2 2260 20
	movq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	.loc 2 2262 24
	movq	-288(%rbp), %rdx
	movq	input_blocksize(%rip), %rax
	.loc 2 2262 10
	cmpq	%rax, %rdx
	jnb	.L415
	.loc 2 2264 20
	movq	r_partial(%rip), %rax
	addq	$1, %rax
	movq	%rax, r_partial(%rip)
	.loc 2 2265 20
	movq	-288(%rbp), %rax
	movq	%rax, -264(%rbp)
	.loc 2 2266 32
	movl	conversions_mask(%rip), %eax
	andl	$1024, %eax
	.loc 2 2266 14
	testl	%eax, %eax
	je	.L416
	.loc 2 2268 38
	movl	conversions_mask(%rip), %eax
	andl	$256, %eax
	.loc 2 2268 18
	testl	%eax, %eax
	jne	.L417
	.loc 2 2270 17
	movq	input_blocksize(%rip), %rdx
	movq	-288(%rbp), %rax
	subq	%rax, %rdx
	.loc 2 2271 43
	movl	conversions_mask(%rip), %eax
	andl	$24, %eax
	.loc 2 2270 17
	testl	%eax, %eax
	je	.L418
	.loc 2 2270 17 is_stmt 0 discriminator 1
	movl	$32, %esi
	jmp	.L419
.L418:
	.loc 2 2270 17 discriminator 2
	movl	$0, %esi
.L419:
	.loc 2 2270 17 discriminator 4
	movq	ibuf(%rip), %rcx
	movq	-288(%rbp), %rax
	.loc 2 2270 30 is_stmt 1 discriminator 4
	addq	%rcx, %rax
	.loc 2 2270 17 discriminator 4
	movq	%rax, %rdi
	call	memset@PLT
.L417:
	.loc 2 2273 28
	movq	input_blocksize(%rip), %rax
	movq	%rax, -288(%rbp)
	jmp	.L416
.L415:
	.loc 2 2278 17
	movq	r_full(%rip), %rax
	addq	$1, %rax
	movq	%rax, r_full(%rip)
	.loc 2 2279 20
	movq	$0, -264(%rbp)
.L416:
	.loc 2 2282 16
	movq	ibuf(%rip), %rdx
	movq	obuf(%rip), %rax
	.loc 2 2282 10
	cmpq	%rax, %rdx
	jne	.L420
.LBB51:
	.loc 2 2284 29
	movq	-288(%rbp), %rdx
	movq	obuf(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	iwrite
	movq	%rax, -200(%rbp)
	.loc 2 2285 19
	movq	w_bytes(%rip), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, w_bytes(%rip)
	.loc 2 2286 24
	movq	-288(%rbp), %rax
	.loc 2 2286 14
	cmpq	%rax, -200(%rbp)
	je	.L421
	.loc 2 2288 15
	movq	output_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 2288 32
	leaq	.LC109(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 2288 25
	call	__errno_location@PLT
	.loc 2 2288 15
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 2289 22
	movl	$1, %eax
	jmp	.L447
.L421:
	.loc 2 2291 33
	movq	-288(%rbp), %rdx
	movq	input_blocksize(%rip), %rax
	.loc 2 2291 19
	cmpq	%rax, %rdx
	jne	.L422
	.loc 2 2292 19
	movq	w_full(%rip), %rax
	addq	$1, %rax
	movq	%rax, w_full(%rip)
	.loc 2 2295 11
	jmp	.L414
.L422:
	.loc 2 2294 22
	movq	w_partial(%rip), %rax
	addq	$1, %rax
	movq	%rax, w_partial(%rip)
	.loc 2 2295 11
	jmp	.L414
.L420:
.LBE51:
	.loc 2 2300 11
	movzbl	translation_needed(%rip), %eax
	.loc 2 2300 10
	testb	%al, %al
	je	.L424
	.loc 2 2301 9
	movq	-288(%rbp), %rdx
	movq	ibuf(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	translate_buffer
.L424:
	.loc 2 2303 28
	movl	conversions_mask(%rip), %eax
	andl	$128, %eax
	.loc 2 2303 10
	testl	%eax, %eax
	je	.L425
	.loc 2 2304 20
	movq	ibuf(%rip), %rax
	leaq	-288(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	swab_buffer
	movq	%rax, -280(%rbp)
	jmp	.L426
.L425:
	.loc 2 2306 18
	movq	ibuf(%rip), %rax
	movq	%rax, -280(%rbp)
.L426:
	.loc 2 2308 28
	movl	conversions_mask(%rip), %eax
	andl	$8, %eax
	.loc 2 2308 10
	testl	%eax, %eax
	je	.L427
	.loc 2 2309 9
	movq	-288(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	copy_with_block
	jmp	.L429
.L427:
	.loc 2 2310 33
	movl	conversions_mask(%rip), %eax
	andl	$16, %eax
	.loc 2 2310 15
	testl	%eax, %eax
	je	.L428
	.loc 2 2311 9
	movq	-288(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	copy_with_unblock
	jmp	.L429
.L428:
	.loc 2 2313 9
	movq	-288(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	copy_simple
	jmp	.L429
.L450:
.LBB52:
	.loc 2 2250 17
	nop
.L414:
.LBE52:
	.loc 2 2184 10
	jmp	.L429
.L449:
	.loc 2 2195 9
	nop
.L398:
	.loc 2 2317 7
	movzbl	char_is_saved(%rip), %eax
	.loc 2 2317 6
	testb	%al, %al
	je	.L430
	.loc 2 2319 28
	movl	conversions_mask(%rip), %eax
	andl	$8, %eax
	.loc 2 2319 10
	testl	%eax, %eax
	je	.L431
	.loc 2 2320 9
	movl	$1, %esi
	leaq	saved_char(%rip), %rdi
	call	copy_with_block
	jmp	.L430
.L431:
	.loc 2 2321 33
	movl	conversions_mask(%rip), %eax
	andl	$16, %eax
	.loc 2 2321 15
	testl	%eax, %eax
	je	.L432
	.loc 2 2322 9
	movl	$1, %esi
	leaq	saved_char(%rip), %rdi
	call	copy_with_unblock
	jmp	.L430
.L432:
	.loc 2 2324 9
	movq	obuf(%rip), %rcx
	movq	oc(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, oc(%rip)
	leaq	(%rcx,%rax), %rdx
	movzbl	saved_char(%rip), %eax
	movb	%al, (%rdx)
	movq	oc(%rip), %rdx
	movq	output_blocksize(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L430
	.loc 2 2324 9 is_stmt 0 discriminator 1
	call	write_output
.L430:
	.loc 2 2327 25 is_stmt 1
	movl	conversions_mask(%rip), %eax
	andl	$8, %eax
	.loc 2 2327 6
	testl	%eax, %eax
	je	.L433
	.loc 2 2327 43 discriminator 1
	movq	col(%rip), %rax
	.loc 2 2327 36 discriminator 1
	testq	%rax, %rax
	je	.L433
.LBB53:
	.loc 2 2331 19
	movq	col(%rip), %rax
	movq	%rax, -248(%rbp)
	.loc 2 2331 7
	jmp	.L434
.L436:
	.loc 2 2332 9
	movq	obuf(%rip), %rcx
	movq	oc(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, oc(%rip)
	leaq	(%rcx,%rax), %rdx
	movzbl	space_character(%rip), %eax
	movb	%al, (%rdx)
	movq	oc(%rip), %rdx
	movq	output_blocksize(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L435
	.loc 2 2332 9 is_stmt 0 discriminator 1
	call	write_output
.L435:
	.loc 2 2331 55 is_stmt 1 discriminator 2
	addq	$1, -248(%rbp)
.L434:
	.loc 2 2331 30 discriminator 1
	movq	conversion_blocksize(%rip), %rax
	.loc 2 2331 7 discriminator 1
	cmpq	%rax, -248(%rbp)
	jb	.L436
.L433:
.LBE53:
	.loc 2 2335 7
	movq	col(%rip), %rax
	.loc 2 2335 6
	testq	%rax, %rax
	je	.L437
	.loc 2 2335 32 discriminator 1
	movl	conversions_mask(%rip), %eax
	andl	$16, %eax
	.loc 2 2335 11 discriminator 1
	testl	%eax, %eax
	je	.L437
	.loc 2 2338 7
	movq	obuf(%rip), %rcx
	movq	oc(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, oc(%rip)
	leaq	(%rcx,%rax), %rdx
	movzbl	newline_character(%rip), %eax
	movb	%al, (%rdx)
	movq	oc(%rip), %rdx
	movq	output_blocksize(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L437
	.loc 2 2338 7 is_stmt 0 discriminator 1
	call	write_output
.L437:
	.loc 2 2342 10 is_stmt 1
	movq	oc(%rip), %rax
	.loc 2 2342 6
	testq	%rax, %rax
	je	.L438
.LBB54:
	.loc 2 2344 25
	movq	oc(%rip), %rdx
	movq	obuf(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	iwrite
	movq	%rax, -192(%rbp)
	.loc 2 2345 15
	movq	w_bytes(%rip), %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, w_bytes(%rip)
	.loc 2 2346 10
	cmpq	$0, -192(%rbp)
	je	.L439
	.loc 2 2347 18
	movq	w_partial(%rip), %rax
	addq	$1, %rax
	movq	%rax, w_partial(%rip)
.L439:
	.loc 2 2348 20
	movq	oc(%rip), %rax
	.loc 2 2348 10
	cmpq	%rax, -192(%rbp)
	je	.L438
	.loc 2 2350 11
	movq	output_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 2350 28
	leaq	.LC109(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 2350 21
	call	__errno_location@PLT
	.loc 2 2350 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 2351 18
	movl	$1, %eax
	jmp	.L447
.L438:
.LBE54:
	.loc 2 2357 7
	movzbl	final_op_was_seek(%rip), %eax
	.loc 2 2357 6
	testb	%al, %al
	je	.L440
.LBB55:
	.loc 2 2360 11
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	ifstat
	.loc 2 2360 10
	testl	%eax, %eax
	je	.L441
	.loc 2 2362 11
	movq	output_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 2362 28
	leaq	.LC100(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 2362 21
	call	__errno_location@PLT
	.loc 2 2362 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 2363 18
	movl	$1, %eax
	jmp	.L447
.L441:
	.loc 2 2365 11
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 2365 10
	cmpl	$32768, %eax
	jne	.L440
.LBB56:
	.loc 2 2367 33
	movl	$1, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	lseek@PLT
	movq	%rax, -184(%rbp)
	.loc 2 2368 14
	cmpq	$0, -184(%rbp)
	js	.L440
	.loc 2 2368 48 discriminator 1
	movq	-128(%rbp), %rax
	.loc 2 2368 34 discriminator 1
	cmpq	%rax, -184(%rbp)
	jle	.L440
	.loc 2 2370 19
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	iftruncate
	.loc 2 2370 18
	testl	%eax, %eax
	je	.L440
	.loc 2 2372 19
	movq	output_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 2373 26
	leaq	.LC110(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 2372 29
	call	__errno_location@PLT
	.loc 2 2372 19
	movl	(%rax), %eax
	movq	-184(%rbp), %rdx
	movq	%r12, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 2376 26
	movl	$1, %eax
	jmp	.L447
.L440:
.LBE56:
.LBE55:
	.loc 2 2382 25
	movl	conversions_mask(%rip), %eax
	andl	$16384, %eax
	.loc 2 2382 6
	testl	%eax, %eax
	je	.L444
	.loc 2 2382 43 discriminator 1
	movl	$1, %edi
	call	ifdatasync
	.loc 2 2382 40 discriminator 1
	testl	%eax, %eax
	je	.L444
	.loc 2 2384 11
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 2384 10
	cmpl	$38, %eax
	je	.L445
	.loc 2 2384 30 discriminator 1
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 2384 27 discriminator 1
	cmpl	$22, %eax
	je	.L445
	.loc 2 2386 11
	movq	output_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 2386 28
	leaq	.LC111(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 2386 21
	call	__errno_location@PLT
	.loc 2 2386 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 2387 23
	movl	$1, -292(%rbp)
.L445:
	.loc 2 2389 24
	movl	conversions_mask(%rip), %eax
	orb	$-128, %ah
	movl	%eax, conversions_mask(%rip)
.L444:
	.loc 2 2392 25
	movl	conversions_mask(%rip), %eax
	andl	$32768, %eax
	.loc 2 2392 6
	testl	%eax, %eax
	je	.L446
	.loc 2 2392 39 discriminator 1
	movl	$1, %edi
	call	ifsync
	.loc 2 2392 36 discriminator 1
	testl	%eax, %eax
	je	.L446
	.loc 2 2394 7
	movq	output_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 2394 24
	leaq	.LC112(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 2394 17
	call	__errno_location@PLT
	.loc 2 2394 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 2395 14
	movl	$1, %eax
	jmp	.L447
.L446:
	.loc 2 2398 10
	movl	-292(%rbp), %eax
.L447:
	.loc 2 2399 1 discriminator 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L448
	.loc 2 2399 1 is_stmt 0
	call	__stack_chk_fail@PLT
.L448:
	addq	$288, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	dd_copy, .-dd_copy
	.section	.rodata
.LC113:
	.string	"/usr/local/share/locale"
.LC114:
	.string	"Stuart Kemp"
.LC115:
	.string	"David MacKenzie"
.LC116:
	.string	"Paul Rubin"
.LC117:
	.string	"standard input"
.LC118:
	.string	"failed to open %s"
.LC119:
	.string	"standard output"
	.align 8
.LC120:
	.string	"offset too large: cannot truncate to a length of seek=%lu (%lu-byte) blocks"
	.align 8
.LC121:
	.string	"failed to truncate to %lu bytes in output file %s"
	.align 8
.LC122:
	.string	"failed to discard cache for: %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB97:
	.loc 2 2403 1 is_stmt 1
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
	movl	%edi, -228(%rbp)
	movq	%rsi, -240(%rbp)
	.loc 2 2403 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 2408 3
	call	install_signal_handlers
	.loc 2 2411 3
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 2412 3
	leaq	.LC16(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 2413 3
	leaq	.LC113(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 2414 3
	leaq	.LC2(%rip), %rdi
	call	textdomain@PLT
	.loc 2 2417 3
	leaq	maybe_close_stdout(%rip), %rdi
	call	atexit@PLT
	.loc 2 2419 15
	call	getpagesize@PLT
	cltq
	.loc 2 2419 13
	movq	%rax, page_size(%rip)
	.loc 2 2421 3
	movq	Version(%rip), %rcx
	movq	-240(%rbp), %rsi
	movl	-228(%rbp), %eax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC114(%rip), %rdx
	pushq	%rdx
	leaq	.LC115(%rip), %rdx
	pushq	%rdx
	leaq	.LC116(%rip), %rdx
	pushq	%rdx
	leaq	usage(%rip), %rdx
	pushq	%rdx
	movl	$1, %r9d
	movq	%rcx, %r8
	leaq	.LC2(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	parse_gnu_standard_options_only@PLT
	addq	$48, %rsp
	.loc 2 2423 25
	movb	$0, close_stdout_required(%rip)
	.loc 2 2426 10
	movl	$0, -220(%rbp)
	.loc 2 2426 3
	jmp	.L452
.L453:
	.loc 2 2427 20 discriminator 3
	movl	-220(%rbp), %eax
	movl	%eax, %ecx
	movl	-220(%rbp), %eax
	cltq
	leaq	trans_table(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	.loc 2 2426 25 discriminator 3
	addl	$1, -220(%rbp)
.L452:
	.loc 2 2426 3 discriminator 1
	cmpl	$255, -220(%rbp)
	jle	.L453
	.loc 2 2430 3
	movq	-240(%rbp), %rdx
	movl	-228(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	scanargs
	.loc 2 2432 3
	call	apply_translations
	.loc 2 2434 18
	movq	input_file(%rip), %rax
	.loc 2 2434 6
	testq	%rax, %rax
	jne	.L454
	.loc 2 2436 20
	leaq	.LC117(%rip), %rdi
	call	gettext@PLT
	.loc 2 2436 18
	movq	%rax, input_file(%rip)
	.loc 2 2437 7
	movq	input_file(%rip), %rdx
	movl	input_flags(%rip), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	set_fd_flags
	jmp	.L455
.L454:
	.loc 2 2441 11
	movl	input_flags(%rip), %edx
	movq	input_file(%rip), %rax
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ifd_reopen
	.loc 2 2441 10
	testl	%eax, %eax
	jns	.L455
.LBB57:
	.loc 2 2442 9
	movq	input_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC118(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L455:
.LBE57:
	.loc 2 2446 12
	movl	$1, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	lseek@PLT
	movq	%rax, -200(%rbp)
	.loc 2 2447 23
	movq	-200(%rbp), %rax
	notq	%rax
	shrq	$63, %rax
	.loc 2 2447 18
	movb	%al, input_seekable(%rip)
	.loc 2 2448 18
	movl	$0, %eax
	cmpq	$0, -200(%rbp)
	cmovns	-200(%rbp), %rax
	.loc 2 2448 16
	movq	%rax, input_offset(%rip)
	.loc 2 2449 22
	call	__errno_location@PLT
	movl	(%rax), %eax
	.loc 2 2449 20
	movl	%eax, input_seek_errno(%rip)
	.loc 2 2451 19
	movq	output_file(%rip), %rax
	.loc 2 2451 6
	testq	%rax, %rax
	jne	.L456
	.loc 2 2453 21
	leaq	.LC119(%rip), %rdi
	call	gettext@PLT
	.loc 2 2453 19
	movq	%rax, output_file(%rip)
	.loc 2 2454 7
	movq	output_file(%rip), %rdx
	movl	output_flags(%rip), %eax
	movl	%eax, %esi
	movl	$1, %edi
	call	set_fd_flags
	jmp	.L457
.L456:
.LBB58:
	.loc 2 2458 14
	movl	$438, -212(%rbp)
	.loc 2 2461 32
	movl	conversions_mask(%rip), %eax
	andl	$4096, %eax
	.loc 2 2461 48
	testl	%eax, %eax
	je	.L458
	.loc 2 2461 48 is_stmt 0 discriminator 1
	movl	$0, %edx
	jmp	.L459
.L458:
	.loc 2 2461 48 discriminator 2
	movl	$64, %edx
.L459:
	.loc 2 2461 12 is_stmt 1 discriminator 4
	movl	output_flags(%rip), %eax
	orl	%eax, %edx
	.loc 2 2462 50 discriminator 4
	movl	conversions_mask(%rip), %eax
	sarl	$6, %eax
	andl	$128, %eax
	.loc 2 2462 12 discriminator 4
	orl	%eax, %edx
	.loc 2 2463 15 discriminator 4
	movq	seek_records(%rip), %rax
	.loc 2 2463 66 discriminator 4
	testq	%rax, %rax
	jne	.L460
	.loc 2 2463 49 discriminator 2
	movl	conversions_mask(%rip), %eax
	andl	$512, %eax
	.loc 2 2463 28 discriminator 2
	testl	%eax, %eax
	je	.L461
.L460:
	.loc 2 2463 66 discriminator 3
	movl	$0, %eax
	jmp	.L462
.L461:
	.loc 2 2463 66 is_stmt 0 discriminator 4
	movl	$512, %eax
.L462:
	.loc 2 2459 11 is_stmt 1
	orl	%edx, %eax
	movl	%eax, -208(%rbp)
	.loc 2 2468 12
	movq	seek_records(%rip), %rax
	.loc 2 2468 10
	testq	%rax, %rax
	je	.L463
	.loc 2 2469 15
	movl	-208(%rbp), %eax
	orl	$2, %eax
	movl	%eax, %esi
	movq	output_file(%rip), %rax
	movl	-212(%rbp), %edx
	movl	%edx, %ecx
	movl	%esi, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	ifd_reopen
	.loc 2 2469 12
	testl	%eax, %eax
	jns	.L464
.L463:
	.loc 2 2470 15
	movl	-208(%rbp), %eax
	orl	$1, %eax
	movl	%eax, %esi
	movq	output_file(%rip), %rax
	movl	-212(%rbp), %edx
	movl	%edx, %ecx
	movl	%esi, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	ifd_reopen
	.loc 2 2470 11
	testl	%eax, %eax
	jns	.L464
.LBB59:
	.loc 2 2472 9
	movq	output_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC118(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L464:
.LBE59:
	.loc 2 2475 24
	movq	seek_records(%rip), %rax
	.loc 2 2475 10
	testq	%rax, %rax
	je	.L457
	.loc 2 2475 51 discriminator 1
	movl	conversions_mask(%rip), %eax
	andl	$512, %eax
	.loc 2 2475 29 discriminator 1
	testl	%eax, %eax
	jne	.L457
.LBB60:
	.loc 2 2477 41
	movq	seek_records(%rip), %rdx
	movq	output_blocksize(%rip), %rax
	imulq	%rax, %rdx
	.loc 2 2477 60
	movq	seek_bytes(%rip), %rax
	.loc 2 2477 21
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	.loc 2 2478 29
	movq	output_blocksize(%rip), %rax
	movq	%rax, -184(%rbp)
	.loc 2 2480 25
	movq	output_blocksize(%rip), %rcx
	movabsq	$9223372036854775807, %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rax, %rdx
	.loc 2 2480 44
	movq	seek_records(%rip), %rax
	.loc 2 2480 14
	cmpq	%rax, %rdx
	jnb	.L465
.LBB61:
	.loc 2 2481 13
	movq	seek_records(%rip), %rbx
	leaq	.LC120(%rip), %rdi
	call	gettext@PLT
	movq	-184(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L465:
.LBE61:
	.loc 2 2487 15
	movq	-192(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	iftruncate
	.loc 2 2487 14
	testl	%eax, %eax
	je	.L457
.LBB62:
	.loc 2 2494 37
	call	__errno_location@PLT
	.loc 2 2494 19
	movl	(%rax), %eax
	movl	%eax, -204(%rbp)
	.loc 2 2496 19
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	ifstat
	.loc 2 2496 18
	testl	%eax, %eax
	je	.L466
.LBB63:
	.loc 2 2497 17
	movq	output_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC100(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L466:
.LBE63:
	.loc 2 2499 19
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 2499 18
	cmpl	$32768, %eax
	je	.L467
	.loc 2 2500 22
	movl	-152(%rbp), %eax
	andl	$61440, %eax
	.loc 2 2501 19
	cmpl	$16384, %eax
	jne	.L457
.L467:
.LBB64:
	.loc 2 2502 17
	movq	output_file(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	leaq	.LC121(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %eax
	movq	%rbx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	nl_error
.L457:
.LBE64:
.LBE62:
.LBE60:
.LBE58:
	.loc 2 2510 16
	call	gethrxtime@PLT
	.loc 2 2510 14
	movq	%rax, start_time(%rip)
	.loc 2 2511 26
	movq	start_time(%rip), %rax
	addq	$1000000000, %rax
	.loc 2 2511 13
	movq	%rax, next_time(%rip)
	.loc 2 2513 17
	call	dd_copy
	movl	%eax, -216(%rbp)
	.loc 2 2515 19
	movq	max_records(%rip), %rax
	.loc 2 2515 6
	testq	%rax, %rax
	jne	.L469
	.loc 2 2515 37 discriminator 1
	movq	max_bytes(%rip), %rax
	.loc 2 2515 24 discriminator 1
	testq	%rax, %rax
	jne	.L469
	.loc 2 2518 11
	movzbl	i_nocache(%rip), %eax
	.loc 2 2518 10
	testb	%al, %al
	je	.L470
	.loc 2 2518 25 discriminator 1
	movl	$0, %esi
	movl	$0, %edi
	call	invalidate_cache
	.loc 2 2518 24 discriminator 1
	xorl	$1, %eax
	.loc 2 2518 21 discriminator 1
	testb	%al, %al
	je	.L470
	.loc 2 2520 11
	movq	input_file(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 2520 28
	leaq	.LC122(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 2520 21
	call	__errno_location@PLT
	.loc 2 2520 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 2522 23
	movl	$1, -216(%rbp)
.L470:
	.loc 2 2524 11
	movzbl	o_nocache(%rip), %eax
	.loc 2 2524 10
	testb	%al, %al
	je	.L478
	.loc 2 2524 25 discriminator 1
	movl	$0, %esi
	movl	$1, %edi
	call	invalidate_cache
	.loc 2 2524 24 discriminator 1
	xorl	$1, %eax
	.loc 2 2524 21 discriminator 1
	testb	%al, %al
	je	.L478
	.loc 2 2526 11
	movq	output_file(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %r12
	.loc 2 2526 28
	leaq	.LC122(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 2526 21
	call	__errno_location@PLT
	.loc 2 2526 11
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	nl_error
	.loc 2 2528 23
	movl	$1, -216(%rbp)
	.loc 2 2524 10
	jmp	.L478
.L469:
	.loc 2 2534 11
	movzbl	i_nocache(%rip), %eax
	.loc 2 2534 10
	testb	%al, %al
	jne	.L473
	.loc 2 2534 21 discriminator 1
	movzbl	i_nocache_eof(%rip), %eax
	testb	%al, %al
	je	.L474
.L473:
	.loc 2 2535 9
	movl	$0, %esi
	movl	$0, %edi
	call	invalidate_cache
.L474:
	.loc 2 2536 11
	movzbl	o_nocache(%rip), %eax
	.loc 2 2536 10
	testb	%al, %al
	jne	.L475
	.loc 2 2536 21 discriminator 1
	movzbl	o_nocache_eof(%rip), %eax
	testb	%al, %al
	je	.L472
.L475:
	.loc 2 2537 9
	movl	$0, %esi
	movl	$1, %edi
	call	invalidate_cache
	jmp	.L472
.L478:
	.loc 2 2524 10
	nop
.L472:
	.loc 2 2540 3
	call	finish_up
	.loc 2 2541 10
	movl	-216(%rbp), %eax
	.loc 2 2542 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L477
	call	__stack_chk_fail@PLT
.L477:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	main, .-main
	.section	.rodata
	.type	slash_s.6472, @object
	.size	slash_s.6472, 3
slash_s.6472:
	.string	"/s"
	.local	i_pending.6529
	.comm	i_pending.6529,8,8
	.local	o_pending.6530
	.comm	o_pending.6530,8,8
	.data
	.align 8
	.type	output_offset.6542, @object
	.size	output_offset.6542, 8
output_offset.6542:
	.quad	-2
	.local	prev_nread.6549
	.comm	prev_nread.6549,8,8
	.local	pending_spaces.6757
	.comm	pending_spaces.6757,8,8
	.section	.rodata
	.align 8
.LC46:
	.long	0
	.long	1104006501
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h"
	.file 13 "/usr/include/signal.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/sigaction.h"
	.file 15 "./lib/sys/select.h"
	.file 16 "/usr/include/time.h"
	.file 17 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 18 "/usr/include/unistd.h"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 20 "/usr/include/errno.h"
	.file 21 "src/version.h"
	.file 22 "./lib/exitfail.h"
	.file 23 "/usr/include/stdint.h"
	.file 24 "./lib/timespec.h"
	.file 25 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h"
	.file 26 "<built-in>"
	.file 27 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 28 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 29 "/usr/include/stdio.h"
	.file 30 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 31 "./lib/version-etc.h"
	.file 32 "./lib/progname.h"
	.file 33 "./lib/quotearg.h"
	.file 34 "./lib/error.h"
	.file 35 "./lib/xtime.h"
	.file 36 "./lib/xstrtol.h"
	.file 37 "./lib/human.h"
	.file 38 "src/ioblksize.h"
	.file 39 "./lib/quote.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2c01
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF444
	.byte	0xc
	.long	.LASF445
	.long	.LASF446
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x3
	.long	0x2d
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.long	0x5c
	.uleb128 0x6
	.long	.LASF7
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x40
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x6
	.long	.LASF8
	.byte	0x3
	.byte	0x48
	.byte	0x12
	.long	0x74
	.uleb128 0x6
	.long	.LASF9
	.byte	0x3
	.byte	0x49
	.byte	0x1b
	.long	0x47
	.uleb128 0x6
	.long	.LASF10
	.byte	0x3
	.byte	0x91
	.byte	0x19
	.long	0x47
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0x92
	.byte	0x19
	.long	0x40
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0x93
	.byte	0x19
	.long	0x40
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0x94
	.byte	0x19
	.long	0x47
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.byte	0x96
	.byte	0x1a
	.long	0x40
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0x97
	.byte	0x1b
	.long	0x47
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x74
	.uleb128 0x6
	.long	.LASF17
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x74
	.uleb128 0x6
	.long	.LASF18
	.byte	0x3
	.byte	0x9a
	.byte	0x19
	.long	0x5c
	.uleb128 0x6
	.long	.LASF19
	.byte	0x3
	.byte	0x9c
	.byte	0x1b
	.long	0x74
	.uleb128 0x6
	.long	.LASF20
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0x74
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x6
	.long	.LASF21
	.byte	0x3
	.byte	0xae
	.byte	0x1d
	.long	0x74
	.uleb128 0x6
	.long	.LASF22
	.byte	0x3
	.byte	0xb3
	.byte	0x1c
	.long	0x74
	.uleb128 0x6
	.long	.LASF23
	.byte	0x3
	.byte	0xc1
	.byte	0x1b
	.long	0x74
	.uleb128 0x6
	.long	.LASF24
	.byte	0x3
	.byte	0xc4
	.byte	0x21
	.long	0x74
	.uleb128 0x8
	.byte	0x8
	.long	0x154
	.uleb128 0x3
	.long	0x149
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF25
	.uleb128 0x3
	.long	0x154
	.uleb128 0x6
	.long	.LASF26
	.byte	0x3
	.byte	0xd6
	.byte	0xd
	.long	0x5c
	.uleb128 0x6
	.long	.LASF27
	.byte	0x4
	.byte	0x45
	.byte	0x12
	.long	0xc3
	.uleb128 0x6
	.long	.LASF28
	.byte	0x4
	.byte	0x55
	.byte	0x11
	.long	0xdb
	.uleb128 0x6
	.long	.LASF29
	.byte	0x4
	.byte	0x6c
	.byte	0x13
	.long	0x131
	.uleb128 0x6
	.long	.LASF30
	.byte	0x5
	.byte	0x7
	.byte	0x12
	.long	0x10b
	.uleb128 0x6
	.long	.LASF31
	.byte	0x6
	.byte	0xd1
	.byte	0x17
	.long	0x47
	.uleb128 0x9
	.byte	0x80
	.byte	0x7
	.byte	0x5
	.byte	0x9
	.long	0x1bf
	.uleb128 0xa
	.long	.LASF34
	.byte	0x7
	.byte	0x7
	.byte	0x15
	.long	0x1bf
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x47
	.long	0x1cf
	.uleb128 0xc
	.long	0x47
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.long	.LASF32
	.byte	0x7
	.byte	0x8
	.byte	0x3
	.long	0x1a8
	.uleb128 0x6
	.long	.LASF33
	.byte	0x8
	.byte	0x7
	.byte	0x14
	.long	0x1cf
	.uleb128 0xd
	.long	.LASF79
	.byte	0x10
	.byte	0x9
	.byte	0xa
	.byte	0x8
	.long	0x20f
	.uleb128 0xa
	.long	.LASF35
	.byte	0x9
	.byte	0xc
	.byte	0xc
	.long	0x10b
	.byte	0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x9
	.byte	0x10
	.byte	0x15
	.long	0x13d
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	.LASF85
	.byte	0xf
	.value	0x30c
	.byte	0x1
	.long	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF37
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF38
	.uleb128 0x6
	.long	.LASF39
	.byte	0xa
	.byte	0x8
	.byte	0x18
	.long	0x160
	.uleb128 0x5
	.long	0x22a
	.uleb128 0xf
	.long	.LASF447
	.byte	0x8
	.byte	0xb
	.byte	0x18
	.byte	0x7
	.long	0x261
	.uleb128 0x10
	.long	.LASF40
	.byte	0xb
	.byte	0x1a
	.byte	0x7
	.long	0x5c
	.uleb128 0x10
	.long	.LASF41
	.byte	0xb
	.byte	0x1b
	.byte	0x9
	.long	0x117
	.byte	0
	.uleb128 0x6
	.long	.LASF42
	.byte	0xb
	.byte	0x1e
	.byte	0x16
	.long	0x23b
	.uleb128 0x9
	.byte	0x8
	.byte	0xc
	.byte	0x38
	.byte	0x2
	.long	0x291
	.uleb128 0xa
	.long	.LASF43
	.byte	0xc
	.byte	0x3a
	.byte	0xe
	.long	0xf3
	.byte	0
	.uleb128 0xa
	.long	.LASF44
	.byte	0xc
	.byte	0x3b
	.byte	0xe
	.long	0x9f
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0xc
	.byte	0x3f
	.byte	0x2
	.long	0x2c2
	.uleb128 0xa
	.long	.LASF45
	.byte	0xc
	.byte	0x41
	.byte	0xa
	.long	0x5c
	.byte	0
	.uleb128 0xa
	.long	.LASF46
	.byte	0xc
	.byte	0x42
	.byte	0xa
	.long	0x5c
	.byte	0x4
	.uleb128 0xa
	.long	.LASF47
	.byte	0xc
	.byte	0x43
	.byte	0x11
	.long	0x261
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0xc
	.byte	0x47
	.byte	0x2
	.long	0x2f3
	.uleb128 0xa
	.long	.LASF43
	.byte	0xc
	.byte	0x49
	.byte	0xe
	.long	0xf3
	.byte	0
	.uleb128 0xa
	.long	.LASF44
	.byte	0xc
	.byte	0x4a
	.byte	0xe
	.long	0x9f
	.byte	0x4
	.uleb128 0xa
	.long	.LASF47
	.byte	0xc
	.byte	0x4b
	.byte	0x11
	.long	0x261
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x20
	.byte	0xc
	.byte	0x4f
	.byte	0x2
	.long	0x33e
	.uleb128 0xa
	.long	.LASF43
	.byte	0xc
	.byte	0x51
	.byte	0xe
	.long	0xf3
	.byte	0
	.uleb128 0xa
	.long	.LASF44
	.byte	0xc
	.byte	0x52
	.byte	0xe
	.long	0x9f
	.byte	0x4
	.uleb128 0xa
	.long	.LASF48
	.byte	0xc
	.byte	0x53
	.byte	0xa
	.long	0x5c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF49
	.byte	0xc
	.byte	0x54
	.byte	0x13
	.long	0xff
	.byte	0x10
	.uleb128 0xa
	.long	.LASF50
	.byte	0xc
	.byte	0x55
	.byte	0x13
	.long	0xff
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0xc
	.byte	0x61
	.byte	0x3
	.long	0x362
	.uleb128 0xa
	.long	.LASF51
	.byte	0xc
	.byte	0x63
	.byte	0xd
	.long	0x117
	.byte	0
	.uleb128 0xa
	.long	.LASF52
	.byte	0xc
	.byte	0x64
	.byte	0xd
	.long	0x117
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0xc
	.byte	0x5e
	.byte	0x6
	.long	0x384
	.uleb128 0x10
	.long	.LASF53
	.byte	0xc
	.byte	0x65
	.byte	0x7
	.long	0x33e
	.uleb128 0x10
	.long	.LASF54
	.byte	0xc
	.byte	0x67
	.byte	0xe
	.long	0x68
	.byte	0
	.uleb128 0x9
	.byte	0x20
	.byte	0xc
	.byte	0x59
	.byte	0x2
	.long	0x3b5
	.uleb128 0xa
	.long	.LASF55
	.byte	0xc
	.byte	0x5b
	.byte	0xc
	.long	0x117
	.byte	0
	.uleb128 0xa
	.long	.LASF56
	.byte	0xc
	.byte	0x5d
	.byte	0x10
	.long	0x55
	.byte	0x8
	.uleb128 0xa
	.long	.LASF57
	.byte	0xc
	.byte	0x68
	.byte	0xa
	.long	0x362
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0xc
	.byte	0x6c
	.byte	0x2
	.long	0x3d9
	.uleb128 0xa
	.long	.LASF58
	.byte	0xc
	.byte	0x6e
	.byte	0x15
	.long	0x74
	.byte	0
	.uleb128 0xa
	.long	.LASF59
	.byte	0xc
	.byte	0x6f
	.byte	0xa
	.long	0x5c
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0xc
	.byte	0x74
	.byte	0x2
	.long	0x40a
	.uleb128 0xa
	.long	.LASF60
	.byte	0xc
	.byte	0x76
	.byte	0xc
	.long	0x117
	.byte	0
	.uleb128 0xa
	.long	.LASF61
	.byte	0xc
	.byte	0x77
	.byte	0xa
	.long	0x5c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF62
	.byte	0xc
	.byte	0x78
	.byte	0x13
	.long	0x40
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.byte	0x70
	.byte	0xc
	.byte	0x33
	.byte	0x5
	.long	0x474
	.uleb128 0x10
	.long	.LASF63
	.byte	0xc
	.byte	0x35
	.byte	0x6
	.long	0x474
	.uleb128 0x10
	.long	.LASF64
	.byte	0xc
	.byte	0x3c
	.byte	0x6
	.long	0x26d
	.uleb128 0x10
	.long	.LASF65
	.byte	0xc
	.byte	0x44
	.byte	0x6
	.long	0x291
	.uleb128 0x12
	.string	"_rt"
	.byte	0xc
	.byte	0x4c
	.byte	0x6
	.long	0x2c2
	.uleb128 0x10
	.long	.LASF66
	.byte	0xc
	.byte	0x56
	.byte	0x6
	.long	0x2f3
	.uleb128 0x10
	.long	.LASF67
	.byte	0xc
	.byte	0x69
	.byte	0x6
	.long	0x384
	.uleb128 0x10
	.long	.LASF68
	.byte	0xc
	.byte	0x70
	.byte	0x6
	.long	0x3b5
	.uleb128 0x10
	.long	.LASF69
	.byte	0xc
	.byte	0x79
	.byte	0x6
	.long	0x3d9
	.byte	0
	.uleb128 0xb
	.long	0x5c
	.long	0x484
	.uleb128 0xc
	.long	0x47
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.byte	0x80
	.byte	0xc
	.byte	0x24
	.byte	0x9
	.long	0x4cf
	.uleb128 0xa
	.long	.LASF70
	.byte	0xc
	.byte	0x26
	.byte	0x9
	.long	0x5c
	.byte	0
	.uleb128 0xa
	.long	.LASF71
	.byte	0xc
	.byte	0x28
	.byte	0x9
	.long	0x5c
	.byte	0x4
	.uleb128 0xa
	.long	.LASF72
	.byte	0xc
	.byte	0x2a
	.byte	0x9
	.long	0x5c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF73
	.byte	0xc
	.byte	0x30
	.byte	0x9
	.long	0x5c
	.byte	0xc
	.uleb128 0xa
	.long	.LASF74
	.byte	0xc
	.byte	0x7b
	.byte	0x9
	.long	0x40a
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF75
	.byte	0xc
	.byte	0x7c
	.byte	0x5
	.long	0x484
	.uleb128 0x6
	.long	.LASF76
	.byte	0xd
	.byte	0x48
	.byte	0x10
	.long	0x4e7
	.uleb128 0x8
	.byte	0x8
	.long	0x4ed
	.uleb128 0x13
	.long	0x4f8
	.uleb128 0x14
	.long	0x5c
	.byte	0
	.uleb128 0x11
	.byte	0x8
	.byte	0xe
	.byte	0x1f
	.byte	0x5
	.long	0x51a
	.uleb128 0x10
	.long	.LASF77
	.byte	0xe
	.byte	0x22
	.byte	0x11
	.long	0x4db
	.uleb128 0x10
	.long	.LASF78
	.byte	0xe
	.byte	0x24
	.byte	0x9
	.long	0x535
	.byte	0
	.uleb128 0x13
	.long	0x52f
	.uleb128 0x14
	.long	0x5c
	.uleb128 0x14
	.long	0x52f
	.uleb128 0x14
	.long	0x117
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x4cf
	.uleb128 0x8
	.byte	0x8
	.long	0x51a
	.uleb128 0xd
	.long	.LASF80
	.byte	0x98
	.byte	0xe
	.byte	0x1b
	.byte	0x8
	.long	0x57d
	.uleb128 0xa
	.long	.LASF81
	.byte	0xe
	.byte	0x26
	.byte	0x5
	.long	0x4f8
	.byte	0
	.uleb128 0xa
	.long	.LASF82
	.byte	0xe
	.byte	0x2e
	.byte	0x10
	.long	0x1cf
	.byte	0x8
	.uleb128 0xa
	.long	.LASF83
	.byte	0xe
	.byte	0x31
	.byte	0x9
	.long	0x5c
	.byte	0x88
	.uleb128 0xa
	.long	.LASF84
	.byte	0xe
	.byte	0x34
	.byte	0xc
	.long	0x57e
	.byte	0x90
	.byte	0
	.uleb128 0x15
	.uleb128 0x8
	.byte	0x8
	.long	0x57d
	.uleb128 0xb
	.long	0x59f
	.long	0x594
	.uleb128 0xc
	.long	0x47
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.long	0x584
	.uleb128 0x8
	.byte	0x8
	.long	0x15b
	.uleb128 0x3
	.long	0x599
	.uleb128 0xe
	.long	.LASF86
	.byte	0xd
	.value	0x11e
	.byte	0x1a
	.long	0x594
	.uleb128 0xe
	.long	.LASF87
	.byte	0xd
	.value	0x11f
	.byte	0x1a
	.long	0x594
	.uleb128 0xb
	.long	0x149
	.long	0x5ce
	.uleb128 0xc
	.long	0x47
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.long	.LASF88
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x5be
	.uleb128 0x16
	.long	.LASF89
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x5c
	.uleb128 0x16
	.long	.LASF90
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x74
	.uleb128 0x16
	.long	.LASF91
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x5be
	.uleb128 0x16
	.long	.LASF92
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x5c
	.uleb128 0x16
	.long	.LASF93
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x74
	.uleb128 0xe
	.long	.LASF94
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x5c
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF95
	.uleb128 0xd
	.long	.LASF96
	.byte	0x90
	.byte	0x11
	.byte	0x2e
	.byte	0x8
	.long	0x6fb
	.uleb128 0xa
	.long	.LASF97
	.byte	0x11
	.byte	0x30
	.byte	0xd
	.long	0x93
	.byte	0
	.uleb128 0xa
	.long	.LASF98
	.byte	0x11
	.byte	0x35
	.byte	0xd
	.long	0xb7
	.byte	0x8
	.uleb128 0xa
	.long	.LASF99
	.byte	0x11
	.byte	0x3d
	.byte	0xf
	.long	0xcf
	.byte	0x10
	.uleb128 0xa
	.long	.LASF100
	.byte	0x11
	.byte	0x3e
	.byte	0xe
	.long	0xc3
	.byte	0x18
	.uleb128 0xa
	.long	.LASF101
	.byte	0x11
	.byte	0x40
	.byte	0xd
	.long	0x9f
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF102
	.byte	0x11
	.byte	0x41
	.byte	0xd
	.long	0xab
	.byte	0x20
	.uleb128 0xa
	.long	.LASF73
	.byte	0x11
	.byte	0x43
	.byte	0x9
	.long	0x5c
	.byte	0x24
	.uleb128 0xa
	.long	.LASF103
	.byte	0x11
	.byte	0x45
	.byte	0xd
	.long	0x93
	.byte	0x28
	.uleb128 0xa
	.long	.LASF104
	.byte	0x11
	.byte	0x4a
	.byte	0xd
	.long	0xdb
	.byte	0x30
	.uleb128 0xa
	.long	.LASF105
	.byte	0x11
	.byte	0x4e
	.byte	0x11
	.long	0x119
	.byte	0x38
	.uleb128 0xa
	.long	.LASF106
	.byte	0x11
	.byte	0x50
	.byte	0x10
	.long	0x125
	.byte	0x40
	.uleb128 0xa
	.long	.LASF107
	.byte	0x11
	.byte	0x5b
	.byte	0x15
	.long	0x1e7
	.byte	0x48
	.uleb128 0xa
	.long	.LASF108
	.byte	0x11
	.byte	0x5c
	.byte	0x15
	.long	0x1e7
	.byte	0x58
	.uleb128 0xa
	.long	.LASF109
	.byte	0x11
	.byte	0x5d
	.byte	0x15
	.long	0x1e7
	.byte	0x68
	.uleb128 0xa
	.long	.LASF110
	.byte	0x11
	.byte	0x6a
	.byte	0x17
	.long	0x700
	.byte	0x78
	.byte	0
	.uleb128 0x3
	.long	0x62a
	.uleb128 0xb
	.long	0x13d
	.long	0x710
	.uleb128 0xc
	.long	0x47
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	.LASF111
	.byte	0x12
	.value	0x21f
	.byte	0xf
	.long	0x71d
	.uleb128 0x8
	.byte	0x8
	.long	0x149
	.uleb128 0xe
	.long	.LASF112
	.byte	0x12
	.value	0x221
	.byte	0xf
	.long	0x71d
	.uleb128 0x16
	.long	.LASF113
	.byte	0x13
	.byte	0x24
	.byte	0xe
	.long	0x149
	.uleb128 0x16
	.long	.LASF114
	.byte	0x13
	.byte	0x32
	.byte	0xc
	.long	0x5c
	.uleb128 0x16
	.long	.LASF115
	.byte	0x13
	.byte	0x37
	.byte	0xc
	.long	0x5c
	.uleb128 0x16
	.long	.LASF116
	.byte	0x13
	.byte	0x3b
	.byte	0xc
	.long	0x5c
	.uleb128 0x16
	.long	.LASF117
	.byte	0x14
	.byte	0x2d
	.byte	0xe
	.long	0x149
	.uleb128 0x16
	.long	.LASF118
	.byte	0x14
	.byte	0x2e
	.byte	0xe
	.long	0x149
	.uleb128 0x8
	.byte	0x8
	.long	0x77e
	.uleb128 0x17
	.uleb128 0x16
	.long	.LASF119
	.byte	0x15
	.byte	0x1
	.byte	0x14
	.long	0x599
	.uleb128 0x16
	.long	.LASF120
	.byte	0x16
	.byte	0x12
	.byte	0x15
	.long	0x63
	.uleb128 0x6
	.long	.LASF121
	.byte	0x17
	.byte	0x65
	.byte	0x15
	.long	0x7b
	.uleb128 0x6
	.long	.LASF122
	.byte	0x17
	.byte	0x66
	.byte	0x16
	.long	0x87
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x29
	.byte	0x6
	.long	0x7c7
	.uleb128 0x19
	.long	.LASF123
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x18
	.byte	0x2a
	.byte	0x6
	.long	0x7dc
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.long	.LASF125
	.byte	0x19
	.byte	0x28
	.byte	0x1b
	.long	0x7e8
	.uleb128 0x1b
	.long	.LASF448
	.long	0x7f1
	.uleb128 0xb
	.long	0x801
	.long	0x801
	.uleb128 0xc
	.long	0x47
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF449
	.byte	0x18
	.byte	0x1a
	.byte	0
	.long	0x83e
	.uleb128 0x1d
	.long	.LASF126
	.byte	0x1a
	.byte	0
	.long	0x40
	.byte	0
	.uleb128 0x1d
	.long	.LASF127
	.byte	0x1a
	.byte	0
	.long	0x40
	.byte	0x4
	.uleb128 0x1d
	.long	.LASF128
	.byte	0x1a
	.byte	0
	.long	0x117
	.byte	0x8
	.uleb128 0x1d
	.long	.LASF129
	.byte	0x1a
	.byte	0
	.long	0x117
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	.LASF130
	.byte	0xd8
	.byte	0x1b
	.byte	0x31
	.byte	0x8
	.long	0x9c5
	.uleb128 0xa
	.long	.LASF131
	.byte	0x1b
	.byte	0x33
	.byte	0x7
	.long	0x5c
	.byte	0
	.uleb128 0xa
	.long	.LASF132
	.byte	0x1b
	.byte	0x36
	.byte	0x9
	.long	0x149
	.byte	0x8
	.uleb128 0xa
	.long	.LASF133
	.byte	0x1b
	.byte	0x37
	.byte	0x9
	.long	0x149
	.byte	0x10
	.uleb128 0xa
	.long	.LASF134
	.byte	0x1b
	.byte	0x38
	.byte	0x9
	.long	0x149
	.byte	0x18
	.uleb128 0xa
	.long	.LASF135
	.byte	0x1b
	.byte	0x39
	.byte	0x9
	.long	0x149
	.byte	0x20
	.uleb128 0xa
	.long	.LASF136
	.byte	0x1b
	.byte	0x3a
	.byte	0x9
	.long	0x149
	.byte	0x28
	.uleb128 0xa
	.long	.LASF137
	.byte	0x1b
	.byte	0x3b
	.byte	0x9
	.long	0x149
	.byte	0x30
	.uleb128 0xa
	.long	.LASF138
	.byte	0x1b
	.byte	0x3c
	.byte	0x9
	.long	0x149
	.byte	0x38
	.uleb128 0xa
	.long	.LASF139
	.byte	0x1b
	.byte	0x3d
	.byte	0x9
	.long	0x149
	.byte	0x40
	.uleb128 0xa
	.long	.LASF140
	.byte	0x1b
	.byte	0x40
	.byte	0x9
	.long	0x149
	.byte	0x48
	.uleb128 0xa
	.long	.LASF141
	.byte	0x1b
	.byte	0x41
	.byte	0x9
	.long	0x149
	.byte	0x50
	.uleb128 0xa
	.long	.LASF142
	.byte	0x1b
	.byte	0x42
	.byte	0x9
	.long	0x149
	.byte	0x58
	.uleb128 0xa
	.long	.LASF143
	.byte	0x1b
	.byte	0x44
	.byte	0x16
	.long	0x9de
	.byte	0x60
	.uleb128 0xa
	.long	.LASF144
	.byte	0x1b
	.byte	0x46
	.byte	0x14
	.long	0x9e4
	.byte	0x68
	.uleb128 0xa
	.long	.LASF145
	.byte	0x1b
	.byte	0x48
	.byte	0x7
	.long	0x5c
	.byte	0x70
	.uleb128 0xa
	.long	.LASF146
	.byte	0x1b
	.byte	0x49
	.byte	0x7
	.long	0x5c
	.byte	0x74
	.uleb128 0xa
	.long	.LASF147
	.byte	0x1b
	.byte	0x4a
	.byte	0xb
	.long	0xdb
	.byte	0x78
	.uleb128 0xa
	.long	.LASF148
	.byte	0x1b
	.byte	0x4d
	.byte	0x12
	.long	0x39
	.byte	0x80
	.uleb128 0xa
	.long	.LASF149
	.byte	0x1b
	.byte	0x4e
	.byte	0xf
	.long	0x4e
	.byte	0x82
	.uleb128 0xa
	.long	.LASF150
	.byte	0x1b
	.byte	0x4f
	.byte	0x8
	.long	0x9ea
	.byte	0x83
	.uleb128 0xa
	.long	.LASF151
	.byte	0x1b
	.byte	0x51
	.byte	0xf
	.long	0x9fa
	.byte	0x88
	.uleb128 0xa
	.long	.LASF152
	.byte	0x1b
	.byte	0x59
	.byte	0xd
	.long	0xe7
	.byte	0x90
	.uleb128 0xa
	.long	.LASF153
	.byte	0x1b
	.byte	0x5b
	.byte	0x17
	.long	0xa05
	.byte	0x98
	.uleb128 0xa
	.long	.LASF154
	.byte	0x1b
	.byte	0x5c
	.byte	0x19
	.long	0xa10
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF155
	.byte	0x1b
	.byte	0x5d
	.byte	0x14
	.long	0x9e4
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF156
	.byte	0x1b
	.byte	0x5e
	.byte	0x9
	.long	0x117
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF157
	.byte	0x1b
	.byte	0x5f
	.byte	0xa
	.long	0x19c
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF158
	.byte	0x1b
	.byte	0x60
	.byte	0x7
	.long	0x5c
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF159
	.byte	0x1b
	.byte	0x62
	.byte	0x8
	.long	0xa16
	.byte	0xc4
	.byte	0
	.uleb128 0x6
	.long	.LASF160
	.byte	0x1c
	.byte	0x7
	.byte	0x19
	.long	0x83e
	.uleb128 0x1e
	.long	.LASF450
	.byte	0x1b
	.byte	0x2b
	.byte	0xe
	.uleb128 0x1f
	.long	.LASF161
	.uleb128 0x8
	.byte	0x8
	.long	0x9d9
	.uleb128 0x8
	.byte	0x8
	.long	0x83e
	.uleb128 0xb
	.long	0x154
	.long	0x9fa
	.uleb128 0xc
	.long	0x47
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9d1
	.uleb128 0x1f
	.long	.LASF162
	.uleb128 0x8
	.byte	0x8
	.long	0xa00
	.uleb128 0x1f
	.long	.LASF163
	.uleb128 0x8
	.byte	0x8
	.long	0xa0b
	.uleb128 0xb
	.long	0x154
	.long	0xa26
	.uleb128 0xc
	.long	0x47
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.long	.LASF164
	.byte	0x1d
	.byte	0x34
	.byte	0x18
	.long	0x7dc
	.uleb128 0x16
	.long	.LASF165
	.byte	0x1d
	.byte	0x89
	.byte	0xe
	.long	0xa3e
	.uleb128 0x8
	.byte	0x8
	.long	0x9c5
	.uleb128 0x16
	.long	.LASF166
	.byte	0x1d
	.byte	0x8a
	.byte	0xe
	.long	0xa3e
	.uleb128 0x16
	.long	.LASF167
	.byte	0x1d
	.byte	0x8b
	.byte	0xe
	.long	0xa3e
	.uleb128 0x16
	.long	.LASF168
	.byte	0x1e
	.byte	0x1a
	.byte	0xc
	.long	0x5c
	.uleb128 0xb
	.long	0x59f
	.long	0xa73
	.uleb128 0x20
	.byte	0
	.uleb128 0x3
	.long	0xa68
	.uleb128 0x16
	.long	.LASF169
	.byte	0x1e
	.byte	0x1b
	.byte	0x1a
	.long	0xa73
	.uleb128 0x16
	.long	.LASF170
	.byte	0x1e
	.byte	0x1e
	.byte	0xc
	.long	0x5c
	.uleb128 0x16
	.long	.LASF171
	.byte	0x1e
	.byte	0x1f
	.byte	0x1a
	.long	0xa73
	.uleb128 0xb
	.long	0x15b
	.long	0xaa7
	.uleb128 0x20
	.byte	0
	.uleb128 0x3
	.long	0xa9c
	.uleb128 0x16
	.long	.LASF172
	.byte	0x1f
	.byte	0x19
	.byte	0x13
	.long	0xaa7
	.uleb128 0x16
	.long	.LASF173
	.byte	0x20
	.byte	0x20
	.byte	0x14
	.long	0x599
	.uleb128 0x21
	.long	.LASF191
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x21
	.byte	0x20
	.byte	0x6
	.long	0xb19
	.uleb128 0x1a
	.long	.LASF174
	.byte	0
	.uleb128 0x1a
	.long	.LASF175
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF176
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF177
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF178
	.byte	0x4
	.uleb128 0x1a
	.long	.LASF179
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF180
	.byte	0x6
	.uleb128 0x1a
	.long	.LASF181
	.byte	0x7
	.uleb128 0x1a
	.long	.LASF182
	.byte	0x8
	.uleb128 0x1a
	.long	.LASF183
	.byte	0x9
	.uleb128 0x1a
	.long	.LASF184
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.long	0xac4
	.uleb128 0xe
	.long	.LASF185
	.byte	0x21
	.value	0x10b
	.byte	0x1a
	.long	0xa73
	.uleb128 0xb
	.long	0xb19
	.long	0xb36
	.uleb128 0x20
	.byte	0
	.uleb128 0x3
	.long	0xb2b
	.uleb128 0xe
	.long	.LASF186
	.byte	0x21
	.value	0x10c
	.byte	0x21
	.long	0xb36
	.uleb128 0x16
	.long	.LASF187
	.byte	0x22
	.byte	0x32
	.byte	0xf
	.long	0x57e
	.uleb128 0x16
	.long	.LASF188
	.byte	0x22
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0x16
	.long	.LASF189
	.byte	0x22
	.byte	0x39
	.byte	0xc
	.long	0x5c
	.uleb128 0x6
	.long	.LASF190
	.byte	0x23
	.byte	0x21
	.byte	0x17
	.long	0x223
	.uleb128 0x21
	.long	.LASF192
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x24
	.byte	0x19
	.byte	0x6
	.long	0xba9
	.uleb128 0x1a
	.long	.LASF193
	.byte	0
	.uleb128 0x1a
	.long	.LASF194
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF195
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF196
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF197
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF192
	.byte	0x24
	.byte	0x26
	.byte	0x1b
	.long	0xb78
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x25
	.byte	0x2c
	.byte	0x1
	.long	0xc01
	.uleb128 0x1a
	.long	.LASF198
	.byte	0
	.uleb128 0x1a
	.long	.LASF199
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF200
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF201
	.byte	0x4
	.uleb128 0x1a
	.long	.LASF202
	.byte	0x8
	.uleb128 0x1a
	.long	.LASF203
	.byte	0x10
	.uleb128 0x1a
	.long	.LASF204
	.byte	0x20
	.uleb128 0x1a
	.long	.LASF205
	.byte	0x40
	.uleb128 0x1a
	.long	.LASF206
	.byte	0x80
	.uleb128 0x22
	.long	.LASF207
	.value	0x100
	.byte	0
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x26
	.byte	0x49
	.byte	0x6
	.long	0xc19
	.uleb128 0x19
	.long	.LASF208
	.long	0x20000
	.byte	0
	.uleb128 0x1f
	.long	.LASF209
	.uleb128 0x16
	.long	.LASF210
	.byte	0x27
	.byte	0x19
	.byte	0x1f
	.long	0xc19
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x6d
	.byte	0x3
	.long	0xcaa
	.uleb128 0x1a
	.long	.LASF211
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF212
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF213
	.byte	0x4
	.uleb128 0x1a
	.long	.LASF214
	.byte	0x8
	.uleb128 0x1a
	.long	.LASF215
	.byte	0x10
	.uleb128 0x1a
	.long	.LASF216
	.byte	0x20
	.uleb128 0x1a
	.long	.LASF217
	.byte	0x40
	.uleb128 0x1a
	.long	.LASF218
	.byte	0x80
	.uleb128 0x22
	.long	.LASF219
	.value	0x100
	.uleb128 0x22
	.long	.LASF220
	.value	0x200
	.uleb128 0x22
	.long	.LASF221
	.value	0x400
	.uleb128 0x22
	.long	.LASF222
	.value	0x800
	.uleb128 0x22
	.long	.LASF223
	.value	0x1000
	.uleb128 0x22
	.long	.LASF224
	.value	0x2000
	.uleb128 0x22
	.long	.LASF225
	.value	0x4000
	.uleb128 0x22
	.long	.LASF226
	.value	0x8000
	.uleb128 0x19
	.long	.LASF227
	.long	0x10000
	.byte	0
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.byte	0x89
	.byte	0x3
	.long	0xcd1
	.uleb128 0x1a
	.long	.LASF228
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF229
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF230
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF231
	.byte	0x4
	.byte	0
	.uleb128 0x23
	.long	.LASF232
	.byte	0x2
	.byte	0x91
	.byte	0x14
	.long	0x599
	.uleb128 0x9
	.byte	0x3
	.quad	input_file
	.uleb128 0x23
	.long	.LASF233
	.byte	0x2
	.byte	0x94
	.byte	0x14
	.long	0x599
	.uleb128 0x9
	.byte	0x3
	.quad	output_file
	.uleb128 0x23
	.long	.LASF234
	.byte	0x2
	.byte	0x97
	.byte	0xf
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	page_size
	.uleb128 0x23
	.long	.LASF235
	.byte	0x2
	.byte	0x9a
	.byte	0xf
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	input_blocksize
	.uleb128 0x23
	.long	.LASF236
	.byte	0x2
	.byte	0x9d
	.byte	0xf
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	output_blocksize
	.uleb128 0x23
	.long	.LASF237
	.byte	0x2
	.byte	0xa0
	.byte	0xf
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	conversion_blocksize
	.uleb128 0x23
	.long	.LASF238
	.byte	0x2
	.byte	0xa3
	.byte	0x12
	.long	0x7a3
	.uleb128 0x9
	.byte	0x3
	.quad	skip_records
	.uleb128 0x23
	.long	.LASF239
	.byte	0x2
	.byte	0xa7
	.byte	0xf
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	skip_bytes
	.uleb128 0x23
	.long	.LASF240
	.byte	0x2
	.byte	0xaa
	.byte	0x12
	.long	0x7a3
	.uleb128 0x9
	.byte	0x3
	.quad	seek_records
	.uleb128 0x23
	.long	.LASF241
	.byte	0x2
	.byte	0xae
	.byte	0x12
	.long	0x7a3
	.uleb128 0x9
	.byte	0x3
	.quad	seek_bytes
	.uleb128 0x23
	.long	.LASF242
	.byte	0x2
	.byte	0xb1
	.byte	0xd
	.long	0xdc3
	.uleb128 0x9
	.byte	0x3
	.quad	final_op_was_seek
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF243
	.uleb128 0x23
	.long	.LASF244
	.byte	0x2
	.byte	0xb4
	.byte	0x12
	.long	0x7a3
	.uleb128 0x9
	.byte	0x3
	.quad	max_records
	.uleb128 0x23
	.long	.LASF245
	.byte	0x2
	.byte	0xb7
	.byte	0xf
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	max_bytes
	.uleb128 0x23
	.long	.LASF246
	.byte	0x2
	.byte	0xba
	.byte	0xc
	.long	0x5c
	.uleb128 0x9
	.byte	0x3
	.quad	conversions_mask
	.uleb128 0x23
	.long	.LASF247
	.byte	0x2
	.byte	0xbd
	.byte	0xc
	.long	0x5c
	.uleb128 0x9
	.byte	0x3
	.quad	input_flags
	.uleb128 0x23
	.long	.LASF248
	.byte	0x2
	.byte	0xbe
	.byte	0xc
	.long	0x5c
	.uleb128 0x9
	.byte	0x3
	.quad	output_flags
	.uleb128 0x23
	.long	.LASF249
	.byte	0x2
	.byte	0xc1
	.byte	0xc
	.long	0x5c
	.uleb128 0x9
	.byte	0x3
	.quad	status_level
	.uleb128 0x23
	.long	.LASF250
	.byte	0x2
	.byte	0xc4
	.byte	0xd
	.long	0xdc3
	.uleb128 0x9
	.byte	0x3
	.quad	translation_needed
	.uleb128 0x23
	.long	.LASF251
	.byte	0x2
	.byte	0xc7
	.byte	0x12
	.long	0x7a3
	.uleb128 0x9
	.byte	0x3
	.quad	w_partial
	.uleb128 0x23
	.long	.LASF252
	.byte	0x2
	.byte	0xca
	.byte	0x12
	.long	0x7a3
	.uleb128 0x9
	.byte	0x3
	.quad	w_full
	.uleb128 0x23
	.long	.LASF253
	.byte	0x2
	.byte	0xcd
	.byte	0x12
	.long	0x7a3
	.uleb128 0x9
	.byte	0x3
	.quad	r_partial
	.uleb128 0x23
	.long	.LASF254
	.byte	0x2
	.byte	0xd0
	.byte	0x12
	.long	0x7a3
	.uleb128 0x9
	.byte	0x3
	.quad	r_full
	.uleb128 0x23
	.long	.LASF255
	.byte	0x2
	.byte	0xd3
	.byte	0x12
	.long	0x7a3
	.uleb128 0x9
	.byte	0x3
	.quad	w_bytes
	.uleb128 0x23
	.long	.LASF256
	.byte	0x2
	.byte	0xd6
	.byte	0x10
	.long	0xb6c
	.uleb128 0x9
	.byte	0x3
	.quad	start_time
	.uleb128 0x23
	.long	.LASF257
	.byte	0x2
	.byte	0xd9
	.byte	0x10
	.long	0xb6c
	.uleb128 0x9
	.byte	0x3
	.quad	next_time
	.uleb128 0x23
	.long	.LASF258
	.byte	0x2
	.byte	0xdc
	.byte	0xc
	.long	0x5c
	.uleb128 0x9
	.byte	0x3
	.quad	progress_len
	.uleb128 0x23
	.long	.LASF259
	.byte	0x2
	.byte	0xdf
	.byte	0xd
	.long	0xdc3
	.uleb128 0x9
	.byte	0x3
	.quad	input_seekable
	.uleb128 0x23
	.long	.LASF260
	.byte	0x2
	.byte	0xe3
	.byte	0xc
	.long	0x5c
	.uleb128 0x9
	.byte	0x3
	.quad	input_seek_errno
	.uleb128 0x23
	.long	.LASF261
	.byte	0x2
	.byte	0xe7
	.byte	0x12
	.long	0x7a3
	.uleb128 0x9
	.byte	0x3
	.quad	input_offset
	.uleb128 0x23
	.long	.LASF262
	.byte	0x2
	.byte	0xe8
	.byte	0xd
	.long	0xdc3
	.uleb128 0x9
	.byte	0x3
	.quad	input_offset_overflow
	.uleb128 0x23
	.long	.LASF263
	.byte	0x2
	.byte	0xeb
	.byte	0xd
	.long	0xdc3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_partial_read
	.uleb128 0x23
	.long	.LASF264
	.byte	0x2
	.byte	0xee
	.byte	0x12
	.long	0x7a3
	.uleb128 0x9
	.byte	0x3
	.quad	r_truncate
	.uleb128 0x23
	.long	.LASF265
	.byte	0x2
	.byte	0xf2
	.byte	0xd
	.long	0x154
	.uleb128 0x9
	.byte	0x3
	.quad	newline_character
	.uleb128 0x23
	.long	.LASF266
	.byte	0x2
	.byte	0xf3
	.byte	0xd
	.long	0x154
	.uleb128 0x9
	.byte	0x3
	.quad	space_character
	.uleb128 0x23
	.long	.LASF267
	.byte	0x2
	.byte	0xf7
	.byte	0xe
	.long	0x149
	.uleb128 0x9
	.byte	0x3
	.quad	real_ibuf
	.uleb128 0x23
	.long	.LASF268
	.byte	0x2
	.byte	0xf8
	.byte	0xe
	.long	0x149
	.uleb128 0x9
	.byte	0x3
	.quad	real_obuf
	.uleb128 0x23
	.long	.LASF269
	.byte	0x2
	.byte	0xfc
	.byte	0xe
	.long	0x149
	.uleb128 0x9
	.byte	0x3
	.quad	ibuf
	.uleb128 0x23
	.long	.LASF270
	.byte	0x2
	.byte	0xfd
	.byte	0xe
	.long	0x149
	.uleb128 0x9
	.byte	0x3
	.quad	obuf
	.uleb128 0x24
	.string	"oc"
	.byte	0x2
	.value	0x100
	.byte	0xf
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	oc
	.uleb128 0x24
	.string	"col"
	.byte	0x2
	.value	0x103
	.byte	0xf
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	col
	.uleb128 0x25
	.long	.LASF271
	.byte	0x2
	.value	0x106
	.byte	0x11
	.long	0x1db
	.uleb128 0x9
	.byte	0x3
	.quad	caught_signals
	.uleb128 0x25
	.long	.LASF272
	.byte	0x2
	.value	0x109
	.byte	0x1e
	.long	0x236
	.uleb128 0x9
	.byte	0x3
	.quad	interrupt_signal
	.uleb128 0x25
	.long	.LASF273
	.byte	0x2
	.value	0x10c
	.byte	0x1e
	.long	0x236
	.uleb128 0x9
	.byte	0x3
	.quad	info_signal_count
	.uleb128 0x25
	.long	.LASF274
	.byte	0x2
	.value	0x10f
	.byte	0xd
	.long	0xdc3
	.uleb128 0x9
	.byte	0x3
	.quad	i_nocache
	.uleb128 0x25
	.long	.LASF275
	.byte	0x2
	.value	0x10f
	.byte	0x18
	.long	0xdc3
	.uleb128 0x9
	.byte	0x3
	.quad	o_nocache
	.uleb128 0x25
	.long	.LASF276
	.byte	0x2
	.value	0x112
	.byte	0xd
	.long	0xdc3
	.uleb128 0x9
	.byte	0x3
	.quad	i_nocache_eof
	.uleb128 0x25
	.long	.LASF277
	.byte	0x2
	.value	0x112
	.byte	0x1c
	.long	0xdc3
	.uleb128 0x9
	.byte	0x3
	.quad	o_nocache_eof
	.uleb128 0x26
	.long	0x184
	.long	0x1103
	.uleb128 0x14
	.long	0x5c
	.uleb128 0x14
	.long	0x149
	.uleb128 0x14
	.long	0x19c
	.byte	0
	.uleb128 0x25
	.long	.LASF278
	.byte	0x2
	.value	0x115
	.byte	0x12
	.long	0x111a
	.uleb128 0x9
	.byte	0x3
	.quad	iread_fnc
	.uleb128 0x8
	.byte	0x8
	.long	0x10ea
	.uleb128 0x27
	.long	.LASF279
	.byte	0x10
	.byte	0x2
	.value	0x11b
	.byte	0x8
	.long	0x114b
	.uleb128 0x28
	.long	.LASF280
	.byte	0x2
	.value	0x11d
	.byte	0x8
	.long	0x1150
	.byte	0
	.uleb128 0x28
	.long	.LASF281
	.byte	0x2
	.value	0x11e
	.byte	0x7
	.long	0x5c
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.long	0x1120
	.uleb128 0xb
	.long	0x154
	.long	0x1160
	.uleb128 0xc
	.long	0x47
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.long	0x114b
	.long	0x1170
	.uleb128 0xc
	.long	0x47
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	0x1160
	.uleb128 0x25
	.long	.LASF282
	.byte	0x2
	.value	0x122
	.byte	0x22
	.long	0x1170
	.uleb128 0x9
	.byte	0x3
	.quad	conversions
	.uleb128 0x29
	.byte	0x5
	.byte	0x4
	.long	0x5c
	.byte	0x2
	.value	0x139
	.byte	0x3
	.long	0x11e1
	.uleb128 0x2a
	.string	"v"
	.sleb128 -1531137
	.uleb128 0x1a
	.long	.LASF283
	.byte	0x1
	.uleb128 0x2a
	.string	"v2"
	.sleb128 -1531138
	.uleb128 0x1a
	.long	.LASF284
	.byte	0x2
	.uleb128 0x2a
	.string	"v3"
	.sleb128 -1531140
	.uleb128 0x1a
	.long	.LASF285
	.byte	0x4
	.uleb128 0x2a
	.string	"v4"
	.sleb128 -1531144
	.uleb128 0x1a
	.long	.LASF286
	.byte	0x8
	.uleb128 0x2a
	.string	"v5"
	.sleb128 -1531152
	.uleb128 0x1a
	.long	.LASF287
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	0x114b
	.long	0x11f1
	.uleb128 0xc
	.long	0x47
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.long	0x11e1
	.uleb128 0x25
	.long	.LASF288
	.byte	0x2
	.value	0x16d
	.byte	0x22
	.long	0x11f1
	.uleb128 0x9
	.byte	0x3
	.quad	flags
	.uleb128 0xb
	.long	0x114b
	.long	0x121d
	.uleb128 0xc
	.long	0x47
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	0x120d
	.uleb128 0x25
	.long	.LASF289
	.byte	0x2
	.value	0x185
	.byte	0x22
	.long	0x121d
	.uleb128 0x9
	.byte	0x3
	.quad	statuses
	.uleb128 0xb
	.long	0x2d
	.long	0x1249
	.uleb128 0xc
	.long	0x47
	.byte	0xff
	.byte	0
	.uleb128 0x25
	.long	.LASF290
	.byte	0x2
	.value	0x18e
	.byte	0x16
	.long	0x1239
	.uleb128 0x9
	.byte	0x3
	.quad	trans_table
	.uleb128 0xb
	.long	0x15b
	.long	0x1270
	.uleb128 0xc
	.long	0x47
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.long	0x1260
	.uleb128 0x25
	.long	.LASF291
	.byte	0x2
	.value	0x195
	.byte	0x13
	.long	0x1270
	.uleb128 0x9
	.byte	0x3
	.quad	ascii_to_ebcdic
	.uleb128 0x25
	.long	.LASF292
	.byte	0x2
	.value	0x1b9
	.byte	0x13
	.long	0x1270
	.uleb128 0x9
	.byte	0x3
	.quad	ascii_to_ibm
	.uleb128 0x25
	.long	.LASF293
	.byte	0x2
	.value	0x1dd
	.byte	0x13
	.long	0x1270
	.uleb128 0x9
	.byte	0x3
	.quad	ebcdic_to_ascii
	.uleb128 0x25
	.long	.LASF294
	.byte	0x2
	.value	0x202
	.byte	0xd
	.long	0xdc3
	.uleb128 0x9
	.byte	0x3
	.quad	close_stdout_required
	.uleb128 0x29
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x2
	.value	0x2b1
	.byte	0x6
	.long	0x12e8
	.uleb128 0x22
	.long	.LASF295
	.value	0x1d1
	.byte	0
	.uleb128 0x25
	.long	.LASF296
	.byte	0x2
	.value	0x6c8
	.byte	0xd
	.long	0xdc3
	.uleb128 0x9
	.byte	0x3
	.quad	char_is_saved
	.uleb128 0x25
	.long	.LASF297
	.byte	0x2
	.value	0x6cb
	.byte	0xd
	.long	0x154
	.uleb128 0x9
	.byte	0x3
	.quad	saved_char
	.uleb128 0x2b
	.long	.LASF424
	.byte	0x2
	.value	0x962
	.byte	0x1
	.long	0x5c
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x147e
	.uleb128 0x2c
	.long	.LASF298
	.byte	0x2
	.value	0x962
	.byte	0xb
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x2c
	.long	.LASF299
	.byte	0x2
	.value	0x962
	.byte	0x18
	.long	0x71d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x964
	.byte	0x7
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x25
	.long	.LASF300
	.byte	0x2
	.value	0x965
	.byte	0x7
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x25
	.long	.LASF301
	.byte	0x2
	.value	0x966
	.byte	0x9
	.long	0x178
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2d
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x2e
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x25
	.long	.LASF302
	.byte	0x2
	.value	0x99a
	.byte	0xe
	.long	0x16c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x25
	.long	.LASF303
	.byte	0x2
	.value	0x99b
	.byte	0xb
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2d
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x2e
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x25
	.long	.LASF304
	.byte	0x2
	.value	0x9ad
	.byte	0x15
	.long	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x24
	.string	"obs"
	.byte	0x2
	.value	0x9ae
	.byte	0x1d
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x2e
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x25
	.long	.LASF305
	.byte	0x2
	.value	0x9be
	.byte	0x13
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x25
	.long	.LASF306
	.byte	0x2
	.value	0x9bf
	.byte	0x1b
	.long	0x62a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2d
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x2d
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF330
	.byte	0x2
	.value	0x831
	.byte	0x1
	.long	0x5c
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x1685
	.uleb128 0x25
	.long	.LASF307
	.byte	0x2
	.value	0x833
	.byte	0x9
	.long	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x25
	.long	.LASF308
	.byte	0x2
	.value	0x834
	.byte	0xb
	.long	0x184
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x25
	.long	.LASF309
	.byte	0x2
	.value	0x838
	.byte	0xa
	.long	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x25
	.long	.LASF300
	.byte	0x2
	.value	0x83a
	.byte	0x7
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x25
	.long	.LASF310
	.byte	0x2
	.value	0x83b
	.byte	0xa
	.long	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x30
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x152e
	.uleb128 0x25
	.long	.LASF311
	.byte	0x2
	.value	0x850
	.byte	0x11
	.long	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x25
	.long	.LASF312
	.byte	0x2
	.value	0x852
	.byte	0x11
	.long	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x30
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x1589
	.uleb128 0x25
	.long	.LASF313
	.byte	0x2
	.value	0x866
	.byte	0xe
	.long	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x25
	.long	.LASF314
	.byte	0x2
	.value	0x867
	.byte	0x11
	.long	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2e
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x25
	.long	.LASF304
	.byte	0x2
	.value	0x870
	.byte	0x16
	.long	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x15b0
	.uleb128 0x25
	.long	.LASF315
	.byte	0x2
	.value	0x88a
	.byte	0x13
	.long	0xb6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x31
	.long	.Ldebug_ranges0+0x90
	.long	0x15cb
	.uleb128 0x25
	.long	.LASF316
	.byte	0x2
	.value	0x8b6
	.byte	0x16
	.long	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x30
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x15f2
	.uleb128 0x25
	.long	.LASF317
	.byte	0x2
	.value	0x8ec
	.byte	0x12
	.long	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x30
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.long	0x1617
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x91b
	.byte	0x13
	.long	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x30
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x163e
	.uleb128 0x25
	.long	.LASF317
	.byte	0x2
	.value	0x928
	.byte	0xe
	.long	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x2e
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x25
	.long	.LASF306
	.byte	0x2
	.value	0x937
	.byte	0x13
	.long	0x62a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2e
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x25
	.long	.LASF318
	.byte	0x2
	.value	0x93f
	.byte	0x11
	.long	0x178
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF323
	.byte	0x2
	.value	0x802
	.byte	0x1
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x1752
	.uleb128 0x33
	.string	"fd"
	.byte	0x2
	.value	0x802
	.byte	0x13
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2c
	.long	.LASF319
	.byte	0x2
	.value	0x802
	.byte	0x1b
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2c
	.long	.LASF320
	.byte	0x2
	.value	0x802
	.byte	0x32
	.long	0x599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2e
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x25
	.long	.LASF321
	.byte	0x2
	.value	0x809
	.byte	0xb
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x25
	.long	.LASF322
	.byte	0x2
	.value	0x80a
	.byte	0xb
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x24
	.string	"ok"
	.byte	0x2
	.value	0x80b
	.byte	0xc
	.long	0xdc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -201
	.uleb128 0x30
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x173f
	.uleb128 0x24
	.string	"st"
	.byte	0x2
	.value	0x814
	.byte	0x1b
	.long	0x62a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x2d
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF324
	.byte	0x2
	.value	0x7e0
	.byte	0x1
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x17e9
	.uleb128 0x33
	.string	"buf"
	.byte	0x2
	.value	0x7e0
	.byte	0x20
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF308
	.byte	0x2
	.value	0x7e0
	.byte	0x2c
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF325
	.byte	0x2
	.value	0x7e2
	.byte	0x11
	.long	0x19c
	.uleb128 0x9
	.byte	0x3
	.quad	pending_spaces.6757
	.uleb128 0x2e
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x7e4
	.byte	0xf
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x24
	.string	"c"
	.byte	0x2
	.value	0x7e6
	.byte	0xc
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF326
	.byte	0x2
	.value	0x7c2
	.byte	0x1
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x1869
	.uleb128 0x33
	.string	"buf"
	.byte	0x2
	.value	0x7c2
	.byte	0x1e
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF308
	.byte	0x2
	.value	0x7c2
	.byte	0x2a
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x7c4
	.byte	0xf
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x24
	.string	"j"
	.byte	0x2
	.value	0x7ca
	.byte	0x16
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF327
	.byte	0x2
	.value	0x7aa
	.byte	0x1
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x18db
	.uleb128 0x33
	.string	"buf"
	.byte	0x2
	.value	0x7aa
	.byte	0x1a
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF308
	.byte	0x2
	.value	0x7aa
	.byte	0x26
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF328
	.byte	0x2
	.value	0x7ac
	.byte	0xf
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x25
	.long	.LASF329
	.byte	0x2
	.value	0x7b0
	.byte	0xe
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF331
	.byte	0x2
	.value	0x780
	.byte	0x1
	.long	0xdc3
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x1953
	.uleb128 0x2c
	.long	.LASF332
	.byte	0x2
	.value	0x780
	.byte	0x28
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x25
	.long	.LASF301
	.byte	0x2
	.value	0x78a
	.byte	0xd
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x25
	.long	.LASF333
	.byte	0x2
	.value	0x796
	.byte	0x11
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF334
	.byte	0x2
	.value	0x705
	.byte	0x1
	.long	0x7a3
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a5f
	.uleb128 0x2c
	.long	.LASF335
	.byte	0x2
	.value	0x705
	.byte	0xb
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2c
	.long	.LASF336
	.byte	0x2
	.value	0x705
	.byte	0x1e
	.long	0x599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2c
	.long	.LASF337
	.byte	0x2
	.value	0x705
	.byte	0x2e
	.long	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2c
	.long	.LASF338
	.byte	0x2
	.value	0x705
	.byte	0x3e
	.long	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2c
	.long	.LASF313
	.byte	0x2
	.value	0x706
	.byte	0xf
	.long	0x1a5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x25
	.long	.LASF301
	.byte	0x2
	.value	0x708
	.byte	0xd
	.long	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x30
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x1a13
	.uleb128 0x24
	.string	"st"
	.byte	0x2
	.value	0x714
	.byte	0x18
	.long	0x62a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2d
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.byte	0
	.uleb128 0x2e
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x25
	.long	.LASF339
	.byte	0x2
	.value	0x72c
	.byte	0xb
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x24
	.string	"buf"
	.byte	0x2
	.value	0x74e
	.byte	0xd
	.long	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x25
	.long	.LASF308
	.byte	0x2
	.value	0x75c
	.byte	0x13
	.long	0x184
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x19c
	.uleb128 0x35
	.long	.LASF340
	.byte	0x2
	.value	0x6f4
	.byte	0x1
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a95
	.uleb128 0x2c
	.long	.LASF301
	.byte	0x2
	.value	0x6f4
	.byte	0x21
	.long	0x7a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF341
	.byte	0x2
	.value	0x6d2
	.byte	0x1
	.long	0x149
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b18
	.uleb128 0x33
	.string	"buf"
	.byte	0x2
	.value	0x6d2
	.byte	0x14
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF308
	.byte	0x2
	.value	0x6d2
	.byte	0x21
	.long	0x1a5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF307
	.byte	0x2
	.value	0x6d4
	.byte	0x9
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"cp"
	.byte	0x2
	.value	0x6e9
	.byte	0x9
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x6ea
	.byte	0xf
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF342
	.byte	0x2
	.value	0x6be
	.byte	0x1
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b75
	.uleb128 0x33
	.string	"buf"
	.byte	0x2
	.value	0x6be
	.byte	0x19
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF308
	.byte	0x2
	.value	0x6be
	.byte	0x25
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x6c0
	.byte	0xa
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"cp"
	.byte	0x2
	.value	0x6c1
	.byte	0x9
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF343
	.byte	0x2
	.value	0x698
	.byte	0x1
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ba3
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x69a
	.byte	0x7
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF344
	.byte	0x2
	.value	0x5d2
	.byte	0x1
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d39
	.uleb128 0x2c
	.long	.LASF298
	.byte	0x2
	.value	0x5d2
	.byte	0xf
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2c
	.long	.LASF299
	.byte	0x2
	.value	0x5d2
	.byte	0x22
	.long	0x1d39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x25
	.long	.LASF338
	.byte	0x2
	.value	0x5d4
	.byte	0xa
	.long	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.long	.LASF345
	.byte	0x2
	.value	0x5d5
	.byte	0xd
	.long	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.long	.LASF334
	.byte	0x2
	.value	0x5d6
	.byte	0xd
	.long	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.long	.LASF346
	.byte	0x2
	.value	0x5d7
	.byte	0xd
	.long	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x1ce3
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x5d9
	.byte	0xc
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2e
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x25
	.long	.LASF320
	.byte	0x2
	.value	0x5db
	.byte	0x13
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"val"
	.byte	0x2
	.value	0x5dc
	.byte	0x13
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x25
	.long	.LASF347
	.byte	0x2
	.value	0x5f8
	.byte	0x18
	.long	0xba9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.string	"n"
	.byte	0x2
	.value	0x5f9
	.byte	0x15
	.long	0x7a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF348
	.byte	0x2
	.value	0x5fa
	.byte	0x15
	.long	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF349
	.byte	0x2
	.value	0x5fb
	.byte	0x15
	.long	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2d
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2d
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2d
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2d
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x14f
	.uleb128 0x2f
	.long	.LASF350
	.byte	0x2
	.value	0x5cc
	.byte	0x1
	.long	0xdc3
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d83
	.uleb128 0x2c
	.long	.LASF351
	.byte	0x2
	.value	0x5cc
	.byte	0x19
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF320
	.byte	0x2
	.value	0x5cc
	.byte	0x2e
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2f
	.long	.LASF352
	.byte	0x2
	.value	0x5a8
	.byte	0x1
	.long	0x7a3
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e18
	.uleb128 0x33
	.string	"str"
	.byte	0x2
	.value	0x5a8
	.byte	0x1c
	.long	0x599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF347
	.byte	0x2
	.value	0x5a8
	.byte	0x2f
	.long	0x1e18
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.string	"n"
	.byte	0x2
	.value	0x5aa
	.byte	0xd
	.long	0x7a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF353
	.byte	0x2
	.value	0x5ab
	.byte	0x9
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"e"
	.byte	0x2
	.value	0x5ac
	.byte	0x10
	.long	0xba9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x25
	.long	.LASF354
	.byte	0x2
	.value	0x5b0
	.byte	0x11
	.long	0x7a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xba9
	.uleb128 0x2f
	.long	.LASF355
	.byte	0x2
	.value	0x57f
	.byte	0x1
	.long	0x5c
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ede
	.uleb128 0x33
	.string	"str"
	.byte	0x2
	.value	0x57f
	.byte	0x1c
	.long	0x599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF356
	.byte	0x2
	.value	0x57f
	.byte	0x3c
	.long	0x1ede
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF357
	.byte	0x2
	.value	0x580
	.byte	0x15
	.long	0xdc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF358
	.byte	0x2
	.value	0x580
	.byte	0x2c
	.long	0x599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.long	.LASF281
	.byte	0x2
	.value	0x582
	.byte	0x7
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x25
	.long	.LASF359
	.byte	0x2
	.value	0x586
	.byte	0x13
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF360
	.byte	0x2
	.value	0x587
	.byte	0x22
	.long	0x1ede
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x25
	.long	.LASF361
	.byte	0x2
	.value	0x58f
	.byte	0x16
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x114b
	.uleb128 0x36
	.long	.LASF362
	.byte	0x2
	.value	0x572
	.byte	0x1
	.long	0xdc3
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f38
	.uleb128 0x33
	.string	"str"
	.byte	0x2
	.value	0x572
	.byte	0x1e
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF363
	.byte	0x2
	.value	0x572
	.byte	0x2f
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF364
	.byte	0x2
	.value	0x572
	.byte	0x3d
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2f
	.long	.LASF365
	.byte	0x2
	.value	0x561
	.byte	0x1
	.long	0x5c
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f8b
	.uleb128 0x33
	.string	"fd"
	.byte	0x2
	.value	0x561
	.byte	0x11
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF366
	.byte	0x2
	.value	0x561
	.byte	0x1b
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"ret"
	.byte	0x2
	.value	0x563
	.byte	0x7
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF367
	.byte	0x2
	.value	0x550
	.byte	0x1
	.long	0x5c
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fce
	.uleb128 0x33
	.string	"fd"
	.byte	0x2
	.value	0x550
	.byte	0xd
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.string	"ret"
	.byte	0x2
	.value	0x552
	.byte	0x7
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF368
	.byte	0x2
	.value	0x53f
	.byte	0x1
	.long	0x5c
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x2020
	.uleb128 0x33
	.string	"fd"
	.byte	0x2
	.value	0x53f
	.byte	0xd
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"st"
	.byte	0x2
	.value	0x53f
	.byte	0x1e
	.long	0x2020
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"ret"
	.byte	0x2
	.value	0x541
	.byte	0x7
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x62a
	.uleb128 0x2f
	.long	.LASF369
	.byte	0x2
	.value	0x52e
	.byte	0x1
	.long	0x5c
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x209a
	.uleb128 0x2c
	.long	.LASF370
	.byte	0x2
	.value	0x52e
	.byte	0x11
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF336
	.byte	0x2
	.value	0x52e
	.byte	0x29
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF371
	.byte	0x2
	.value	0x52e
	.byte	0x33
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF372
	.byte	0x2
	.value	0x52e
	.byte	0x40
	.long	0x16c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"ret"
	.byte	0x2
	.value	0x530
	.byte	0x7
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF373
	.byte	0x2
	.value	0x51d
	.byte	0x1
	.long	0x5c
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x20dd
	.uleb128 0x33
	.string	"fd"
	.byte	0x2
	.value	0x51d
	.byte	0x11
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.string	"ret"
	.byte	0x2
	.value	0x51f
	.byte	0x7
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF374
	.byte	0x2
	.value	0x50a
	.byte	0x1
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x210d
	.uleb128 0x25
	.long	.LASF317
	.byte	0x2
	.value	0x50c
	.byte	0xa
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2f
	.long	.LASF375
	.byte	0x2
	.value	0x4bc
	.byte	0x1
	.long	0x19c
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x21bb
	.uleb128 0x33
	.string	"fd"
	.byte	0x2
	.value	0x4bc
	.byte	0xd
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"buf"
	.byte	0x2
	.value	0x4bc
	.byte	0x1d
	.long	0x599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF304
	.byte	0x2
	.value	0x4bc
	.byte	0x29
	.long	0x19c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF376
	.byte	0x2
	.value	0x4be
	.byte	0xa
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x2198
	.uleb128 0x25
	.long	.LASF321
	.byte	0x2
	.value	0x4c2
	.byte	0xb
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2e
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x25
	.long	.LASF317
	.byte	0x2
	.value	0x4da
	.byte	0xf
	.long	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF377
	.byte	0x2
	.value	0x4a3
	.byte	0x1
	.long	0x184
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x2234
	.uleb128 0x33
	.string	"fd"
	.byte	0x2
	.value	0x4a3
	.byte	0x16
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"buf"
	.byte	0x2
	.value	0x4a3
	.byte	0x20
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF304
	.byte	0x2
	.value	0x4a3
	.byte	0x2c
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF308
	.byte	0x2
	.value	0x4a5
	.byte	0xb
	.long	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.long	.Ldebug_ranges0+0
	.uleb128 0x25
	.long	.LASF378
	.byte	0x2
	.value	0x4a9
	.byte	0xf
	.long	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF379
	.byte	0x2
	.value	0x474
	.byte	0x1
	.long	0x184
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x22d0
	.uleb128 0x33
	.string	"fd"
	.byte	0x2
	.value	0x474
	.byte	0xc
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"buf"
	.byte	0x2
	.value	0x474
	.byte	0x16
	.long	0x149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF304
	.byte	0x2
	.value	0x474
	.byte	0x22
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF308
	.byte	0x2
	.value	0x476
	.byte	0xb
	.long	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF380
	.byte	0x2
	.value	0x477
	.byte	0x12
	.long	0x184
	.uleb128 0x9
	.byte	0x3
	.quad	prev_nread.6549
	.uleb128 0x2e
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x25
	.long	.LASF381
	.byte	0x2
	.value	0x491
	.byte	0x15
	.long	0x7a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF382
	.byte	0x2
	.value	0x42e
	.byte	0x1
	.long	0xdc3
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x238c
	.uleb128 0x33
	.string	"fd"
	.byte	0x2
	.value	0x42e
	.byte	0x17
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"len"
	.byte	0x2
	.value	0x42e
	.byte	0x21
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF383
	.byte	0x2
	.value	0x430
	.byte	0x7
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.long	.LASF301
	.byte	0x2
	.value	0x431
	.byte	0x9
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF384
	.byte	0x2
	.value	0x432
	.byte	0x8
	.long	0xdc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x25
	.long	.LASF385
	.byte	0x2
	.value	0x435
	.byte	0x9
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF386
	.byte	0x2
	.value	0x43a
	.byte	0x9
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x25
	.long	.LASF318
	.byte	0x2
	.value	0x448
	.byte	0x14
	.long	0x178
	.uleb128 0x9
	.byte	0x3
	.quad	output_offset.6542
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF387
	.byte	0x2
	.value	0x415
	.byte	0x1
	.long	0x178
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x242f
	.uleb128 0x33
	.string	"fd"
	.byte	0x2
	.value	0x415
	.byte	0x12
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.string	"len"
	.byte	0x2
	.value	0x415
	.byte	0x1c
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF388
	.byte	0x2
	.value	0x417
	.byte	0x10
	.long	0x178
	.uleb128 0x9
	.byte	0x3
	.quad	i_pending.6529
	.uleb128 0x25
	.long	.LASF389
	.byte	0x2
	.value	0x417
	.byte	0x1b
	.long	0x178
	.uleb128 0x9
	.byte	0x3
	.quad	o_pending.6530
	.uleb128 0x25
	.long	.LASF386
	.byte	0x2
	.value	0x418
	.byte	0xa
	.long	0x242f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x25
	.long	.LASF390
	.byte	0x2
	.value	0x41c
	.byte	0x11
	.long	0x7a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x178
	.uleb128 0x37
	.long	.LASF391
	.byte	0x2
	.value	0x409
	.byte	0x1
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x2465
	.uleb128 0x2c
	.long	.LASF392
	.byte	0x2
	.value	0x409
	.byte	0xb
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.long	.LASF403
	.byte	0x2
	.value	0x400
	.byte	0x1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF393
	.byte	0x2
	.value	0x3e3
	.byte	0x1
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x24e5
	.uleb128 0x2e
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x25
	.long	.LASF394
	.byte	0x2
	.value	0x3e7
	.byte	0xb
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x25
	.long	.LASF395
	.byte	0x2
	.value	0x3e8
	.byte	0xb
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x25
	.long	.LASF396
	.byte	0x2
	.value	0x3e9
	.byte	0x10
	.long	0x1db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF397
	.byte	0x2
	.value	0x3ca
	.byte	0x1
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x2527
	.uleb128 0x2d
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2d
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0
	.uleb128 0x2f
	.long	.LASF398
	.byte	0x2
	.value	0x3be
	.byte	0x1
	.long	0x5c
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x255a
	.uleb128 0x33
	.string	"fd"
	.byte	0x2
	.value	0x3be
	.byte	0xd
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF399
	.byte	0x2
	.value	0x389
	.byte	0x1
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x259c
	.uleb128 0x25
	.long	.LASF400
	.byte	0x2
	.value	0x38b
	.byte	0x8
	.long	0xdc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -177
	.uleb128 0x24
	.string	"act"
	.byte	0x2
	.value	0x38f
	.byte	0x14
	.long	0x53b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x35
	.long	.LASF401
	.byte	0x2
	.value	0x37f
	.byte	0x1
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x25cc
	.uleb128 0x33
	.string	"sig"
	.byte	0x2
	.value	0x37f
	.byte	0x16
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.long	.LASF402
	.byte	0x2
	.value	0x375
	.byte	0x1
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x25fc
	.uleb128 0x33
	.string	"sig"
	.byte	0x2
	.value	0x375
	.byte	0x18
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.long	.LASF404
	.byte	0x2
	.value	0x355
	.byte	0x1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF405
	.byte	0x2
	.value	0x309
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x273b
	.uleb128 0x2c
	.long	.LASF315
	.byte	0x2
	.value	0x309
	.byte	0x1b
	.long	0xb6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2120
	.uleb128 0x24
	.string	"now"
	.byte	0x2
	.value	0x30b
	.byte	0xb
	.long	0xb6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2080
	.uleb128 0x25
	.long	.LASF406
	.byte	0x2
	.value	0x30c
	.byte	0x15
	.long	0x274b
	.uleb128 0x9
	.byte	0x3
	.quad	slash_s.6472
	.uleb128 0x25
	.long	.LASF407
	.byte	0x2
	.value	0x30d
	.byte	0x8
	.long	0x2750
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2032
	.uleb128 0x25
	.long	.LASF408
	.byte	0x2
	.value	0x30e
	.byte	0xa
	.long	0x2767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2096
	.uleb128 0x25
	.long	.LASF409
	.byte	0x2
	.value	0x30f
	.byte	0xf
	.long	0x599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2088
	.uleb128 0x24
	.string	"si"
	.byte	0x2
	.value	0x310
	.byte	0xf
	.long	0x599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2072
	.uleb128 0x24
	.string	"iec"
	.byte	0x2
	.value	0x311
	.byte	0xf
	.long	0x599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2064
	.uleb128 0x25
	.long	.LASF410
	.byte	0x2
	.value	0x316
	.byte	0x9
	.long	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2056
	.uleb128 0x25
	.long	.LASF411
	.byte	0x2
	.value	0x317
	.byte	0x7
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2104
	.uleb128 0x25
	.long	.LASF412
	.byte	0x2
	.value	0x331
	.byte	0x8
	.long	0x276e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF413
	.byte	0x2
	.value	0x335
	.byte	0x7
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2100
	.uleb128 0x2e
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x25
	.long	.LASF414
	.byte	0x2
	.value	0x31a
	.byte	0xe
	.long	0x2767
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2048
	.uleb128 0x25
	.long	.LASF415
	.byte	0x2
	.value	0x31b
	.byte	0x11
	.long	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2040
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x15b
	.long	0x274b
	.uleb128 0xc
	.long	0x47
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	0x273b
	.uleb128 0xb
	.long	0x154
	.long	0x2767
	.uleb128 0xc
	.long	0x47
	.byte	0x2
	.uleb128 0x39
	.long	0x47
	.value	0x28d
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF416
	.uleb128 0xb
	.long	0x154
	.long	0x277e
	.uleb128 0xc
	.long	0x47
	.byte	0x17
	.byte	0
	.uleb128 0x2f
	.long	.LASF417
	.byte	0x2
	.value	0x301
	.byte	0x1
	.long	0xdc3
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x27b2
	.uleb128 0x2c
	.long	.LASF418
	.byte	0x2
	.value	0x301
	.byte	0x28
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF419
	.byte	0x2
	.value	0x2fb
	.byte	0x1
	.long	0xdc3
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x27e4
	.uleb128 0x33
	.string	"i"
	.byte	0x2
	.value	0x2fb
	.byte	0x18
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.long	.LASF420
	.byte	0x2
	.value	0x2f1
	.byte	0x1
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x2834
	.uleb128 0x2c
	.long	.LASF421
	.byte	0x2
	.value	0x2f1
	.byte	0x20
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x24
	.string	"i"
	.byte	0x2
	.value	0x2f3
	.byte	0xc
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF422
	.byte	0x2
	.value	0x2d0
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x28ab
	.uleb128 0x2e
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x24
	.string	"buf"
	.byte	0x2
	.value	0x2d8
	.byte	0xd
	.long	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x2e
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x24
	.string	"obs"
	.byte	0x2
	.value	0x2db
	.byte	0x15
	.long	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x25
	.long	.LASF407
	.byte	0x2
	.value	0x2dc
	.byte	0x10
	.long	0x28ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x154
	.long	0x28bc
	.uleb128 0x39
	.long	0x47
	.value	0x28b
	.byte	0
	.uleb128 0x32
	.long	.LASF423
	.byte	0x2
	.value	0x2b7
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x2921
	.uleb128 0x24
	.string	"buf"
	.byte	0x2
	.value	0x2bc
	.byte	0x9
	.long	0x149
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x2e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x24
	.string	"ibs"
	.byte	0x2
	.value	0x2bf
	.byte	0x11
	.long	0x7a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x25
	.long	.LASF407
	.byte	0x2
	.value	0x2c0
	.byte	0xc
	.long	0x28ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF425
	.byte	0x2
	.value	0x22c
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x2951
	.uleb128 0x2c
	.long	.LASF426
	.byte	0x2
	.value	0x22c
	.byte	0xc
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x32
	.long	.LASF427
	.byte	0x2
	.value	0x21b
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x29b5
	.uleb128 0x2c
	.long	.LASF426
	.byte	0x2
	.value	0x21b
	.byte	0xf
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2c
	.long	.LASF428
	.byte	0x2
	.value	0x21b
	.byte	0x1b
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x33
	.string	"fmt"
	.byte	0x2
	.value	0x21b
	.byte	0x2f
	.long	0x599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x3b
	.uleb128 0x24
	.string	"ap"
	.byte	0x2
	.value	0x223
	.byte	0xb
	.long	0xa26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x38
	.long	.LASF429
	.byte	0x2
	.value	0x210
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x36
	.long	.LASF430
	.byte	0x1
	.value	0x2c1
	.byte	0x1
	.long	0xdc3
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a03
	.uleb128 0x33
	.string	"sb"
	.byte	0x1
	.value	0x2c1
	.byte	0x24
	.long	0x2a03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x6fb
	.uleb128 0x32
	.long	.LASF431
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x2aae
	.uleb128 0x2c
	.long	.LASF432
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0x599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x27
	.long	.LASF433
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x2a64
	.uleb128 0x28
	.long	.LASF432
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0x599
	.byte	0
	.uleb128 0x28
	.long	.LASF434
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0x599
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	0x2a39
	.uleb128 0x25
	.long	.LASF433
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x2abe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x25
	.long	.LASF434
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0x599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x25
	.long	.LASF435
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x2ac3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x25
	.long	.LASF436
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0x599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xb
	.long	0x2a64
	.long	0x2abe
	.uleb128 0xc
	.long	0x47
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.long	0x2aae
	.uleb128 0x8
	.byte	0x8
	.long	0x2a64
	.uleb128 0x2f
	.long	.LASF437
	.byte	0x1
	.value	0x200
	.byte	0x1
	.long	0xdc3
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b2b
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.value	0x200
	.byte	0x15
	.long	0x778
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF366
	.byte	0x1
	.value	0x200
	.byte	0x21
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.value	0x202
	.byte	0x18
	.long	0x2b2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF438
	.byte	0x1
	.value	0x20c
	.byte	0x11
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x34
	.uleb128 0x36
	.long	.LASF439
	.byte	0x1
	.value	0x1f5
	.byte	0x1
	.long	0x117
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b93
	.uleb128 0x33
	.string	"ptr"
	.byte	0x1
	.value	0x1f5
	.byte	0x18
	.long	0x778
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF440
	.byte	0x1
	.value	0x1f5
	.byte	0x24
	.long	0x19c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"p0"
	.byte	0x1
	.value	0x1f7
	.byte	0xf
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"p1"
	.byte	0x1
	.value	0x1f8
	.byte	0xf
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3c
	.long	.LASF441
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.long	0x47
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bd7
	.uleb128 0x3d
	.string	"n"
	.byte	0x1
	.byte	0xb7
	.byte	0x1a
	.long	0x7a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3e
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1
	.byte	0xbb
	.byte	0x8
	.uleb128 0x19
	.long	.LASF442
	.long	0xf4240
	.byte	0
	.byte	0
	.uleb128 0x3f
	.long	.LASF443
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0x2d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0x154
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
	.uleb128 0x26
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x37
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
	.uleb128 0x39
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB17-.Ltext0
	.quad	.LBE17-.Ltext0
	.quad	.LBB19-.Ltext0
	.quad	.LBE19-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB50-.Ltext0
	.quad	.LBE50-.Ltext0
	.quad	.LBB52-.Ltext0
	.quad	.LBE52-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF110:
	.string	"__glibc_reserved"
.LASF109:
	.string	"st_ctim"
.LASF31:
	.string	"size_t"
.LASF340:
	.string	"advance_input_offset"
.LASF330:
	.string	"dd_copy"
.LASF427:
	.string	"nl_error"
.LASF105:
	.string	"st_blksize"
.LASF106:
	.string	"st_blocks"
.LASF23:
	.string	"__ssize_t"
.LASF300:
	.string	"exit_status"
.LASF162:
	.string	"_IO_codecvt"
.LASF225:
	.string	"C_FDATASYNC"
.LASF266:
	.string	"space_character"
.LASF222:
	.string	"C_TWOBUFS"
.LASF440:
	.string	"alignment"
.LASF344:
	.string	"scanargs"
.LASF142:
	.string	"_IO_save_end"
.LASF404:
	.string	"print_stats"
.LASF444:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF12:
	.string	"__gid_t"
.LASF86:
	.string	"_sys_siglist"
.LASF108:
	.string	"st_mtim"
.LASF30:
	.string	"time_t"
.LASF369:
	.string	"ifd_reopen"
.LASF33:
	.string	"sigset_t"
.LASF274:
	.string	"i_nocache"
.LASF189:
	.string	"error_one_per_line"
.LASF151:
	.string	"_lock"
.LASF205:
	.string	"human_space_before_unit"
.LASF382:
	.string	"invalidate_cache"
.LASF332:
	.string	"nbytes"
.LASF72:
	.string	"si_code"
.LASF58:
	.string	"si_band"
.LASF195:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF358:
	.string	"error_msgid"
.LASF213:
	.string	"C_IBM"
.LASF96:
	.string	"stat"
.LASF88:
	.string	"__tzname"
.LASF140:
	.string	"_IO_save_base"
.LASF388:
	.string	"i_pending"
.LASF144:
	.string	"_chain"
.LASF29:
	.string	"ssize_t"
.LASF432:
	.string	"program"
.LASF84:
	.string	"sa_restorer"
.LASF148:
	.string	"_cur_column"
.LASF168:
	.string	"sys_nerr"
.LASF220:
	.string	"C_NOTRUNC"
.LASF395:
	.string	"infos"
.LASF62:
	.string	"_arch"
.LASF10:
	.string	"__dev_t"
.LASF217:
	.string	"C_UCASE"
.LASF333:
	.string	"diff"
.LASF247:
	.string	"input_flags"
.LASF170:
	.string	"_sys_nerr"
.LASF39:
	.string	"sig_atomic_t"
.LASF310:
	.string	"n_bytes_read"
.LASF324:
	.string	"copy_with_unblock"
.LASF420:
	.string	"translate_charset"
.LASF111:
	.string	"__environ"
.LASF6:
	.string	"long int"
.LASF375:
	.string	"iwrite"
.LASF258:
	.string	"progress_len"
.LASF161:
	.string	"_IO_marker"
.LASF198:
	.string	"human_ceiling"
.LASF424:
	.string	"main"
.LASF438:
	.string	"word"
.LASF319:
	.string	"add_flags"
.LASF262:
	.string	"input_offset_overflow"
.LASF366:
	.string	"length"
.LASF376:
	.string	"total_written"
.LASF362:
	.string	"operand_matches"
.LASF318:
	.string	"output_offset"
.LASF405:
	.string	"print_xfer_stats"
.LASF411:
	.string	"bpsbufsize"
.LASF245:
	.string	"max_bytes"
.LASF428:
	.string	"errnum"
.LASF346:
	.string	"seek"
.LASF326:
	.string	"copy_with_block"
.LASF383:
	.string	"adv_ret"
.LASF311:
	.string	"us_bytes"
.LASF385:
	.string	"clen"
.LASF4:
	.string	"signed char"
.LASF21:
	.string	"__blksize_t"
.LASF372:
	.string	"mode"
.LASF130:
	.string	"_IO_FILE"
.LASF90:
	.string	"__timezone"
.LASF226:
	.string	"C_FSYNC"
.LASF163:
	.string	"_IO_wide_data"
.LASF101:
	.string	"st_uid"
.LASF329:
	.string	"nfree"
.LASF57:
	.string	"_bounds"
.LASF185:
	.string	"quoting_style_args"
.LASF112:
	.string	"environ"
.LASF75:
	.string	"siginfo_t"
.LASF0:
	.string	"unsigned char"
.LASF48:
	.string	"si_status"
.LASF103:
	.string	"st_rdev"
.LASF260:
	.string	"input_seek_errno"
.LASF407:
	.string	"hbuf"
.LASF82:
	.string	"sa_mask"
.LASF276:
	.string	"i_nocache_eof"
.LASF305:
	.string	"ftruncate_errno"
.LASF265:
	.string	"newline_character"
.LASF192:
	.string	"strtol_error"
.LASF431:
	.string	"emit_ancillary_info"
.LASF448:
	.string	"__builtin_va_list"
.LASF237:
	.string	"conversion_blocksize"
.LASF188:
	.string	"error_message_count"
.LASF390:
	.string	"c_pending"
.LASF359:
	.string	"strcomma"
.LASF24:
	.string	"__syscall_slong_t"
.LASF125:
	.string	"__gnuc_va_list"
.LASF243:
	.string	"_Bool"
.LASF52:
	.string	"_upper"
.LASF313:
	.string	"bytes"
.LASF356:
	.string	"table"
.LASF281:
	.string	"value"
.LASF279:
	.string	"symbol_value"
.LASF230:
	.string	"STATUS_DEFAULT"
.LASF25:
	.string	"char"
.LASF65:
	.string	"_timer"
.LASF410:
	.string	"bpsbuf"
.LASF277:
	.string	"o_nocache_eof"
.LASF323:
	.string	"set_fd_flags"
.LASF307:
	.string	"bufstart"
.LASF253:
	.string	"r_partial"
.LASF203:
	.string	"human_autoscale"
.LASF261:
	.string	"input_offset"
.LASF450:
	.string	"_IO_lock_t"
.LASF244:
	.string	"max_records"
.LASF264:
	.string	"r_truncate"
.LASF219:
	.string	"C_NOERROR"
.LASF263:
	.string	"warn_partial_read"
.LASF414:
	.string	"XTIME_PRECISIONe0"
.LASF93:
	.string	"timezone"
.LASF178:
	.string	"shell_escape_always_quoting_style"
.LASF354:
	.string	"multiplier"
.LASF339:
	.string	"lseek_errno"
.LASF337:
	.string	"records"
.LASF14:
	.string	"__mode_t"
.LASF50:
	.string	"si_stime"
.LASF288:
	.string	"flags"
.LASF132:
	.string	"_IO_read_ptr"
.LASF416:
	.string	"double"
.LASF403:
	.string	"finish_up"
.LASF127:
	.string	"fp_offset"
.LASF200:
	.string	"human_floor"
.LASF71:
	.string	"si_errno"
.LASF202:
	.string	"human_suppress_point_zero"
.LASF165:
	.string	"stdin"
.LASF401:
	.string	"siginfo_handler"
.LASF367:
	.string	"ifsync"
.LASF169:
	.string	"sys_errlist"
.LASF60:
	.string	"_call_addr"
.LASF207:
	.string	"human_B"
.LASF143:
	.string	"_markers"
.LASF173:
	.string	"program_name"
.LASF336:
	.string	"file"
.LASF449:
	.string	"__va_list_tag"
.LASF295:
	.string	"human_opts"
.LASF400:
	.string	"catch_siginfo"
.LASF180:
	.string	"c_maybe_quoting_style"
.LASF364:
	.string	"delim"
.LASF196:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF54:
	.string	"_pkey"
.LASF421:
	.string	"new_trans"
.LASF206:
	.string	"human_SI"
.LASF351:
	.string	"operand"
.LASF117:
	.string	"program_invocation_name"
.LASF248:
	.string	"output_flags"
.LASF70:
	.string	"si_signo"
.LASF41:
	.string	"sival_ptr"
.LASF322:
	.string	"new_flags"
.LASF211:
	.string	"C_ASCII"
.LASF102:
	.string	"st_gid"
.LASF194:
	.string	"LONGINT_OVERFLOW"
.LASF275:
	.string	"o_nocache"
.LASF114:
	.string	"optind"
.LASF434:
	.string	"node"
.LASF239:
	.string	"skip_bytes"
.LASF327:
	.string	"copy_simple"
.LASF398:
	.string	"iclose"
.LASF183:
	.string	"clocale_quoting_style"
.LASF284:
	.string	"O_NOCACHE"
.LASF187:
	.string	"error_print_progname"
.LASF3:
	.string	"long unsigned int"
.LASF365:
	.string	"iftruncate"
.LASF426:
	.string	"status"
.LASF146:
	.string	"_flags2"
.LASF331:
	.string	"advance_input_after_read_error"
.LASF104:
	.string	"st_size"
.LASF134:
	.string	"_IO_read_base"
.LASF423:
	.string	"alloc_ibuf"
.LASF113:
	.string	"optarg"
.LASF297:
	.string	"saved_char"
.LASF286:
	.string	"O_SKIP_BYTES"
.LASF159:
	.string	"_unused2"
.LASF350:
	.string	"operand_is"
.LASF374:
	.string	"write_output"
.LASF221:
	.string	"C_SYNC"
.LASF56:
	.string	"si_addr_lsb"
.LASF386:
	.string	"pending"
.LASF283:
	.string	"O_FULLBLOCK"
.LASF335:
	.string	"fdesc"
.LASF338:
	.string	"blocksize"
.LASF215:
	.string	"C_UNBLOCK"
.LASF373:
	.string	"ifdatasync"
.LASF406:
	.string	"slash_s"
.LASF298:
	.string	"argc"
.LASF422:
	.string	"alloc_obuf"
.LASF67:
	.string	"_sigfault"
.LASF147:
	.string	"_old_offset"
.LASF433:
	.string	"infomap"
.LASF299:
	.string	"argv"
.LASF227:
	.string	"C_SPARSE"
.LASF379:
	.string	"iread"
.LASF22:
	.string	"__blkcnt_t"
.LASF175:
	.string	"shell_quoting_style"
.LASF13:
	.string	"__ino_t"
.LASF242:
	.string	"final_op_was_seek"
.LASF81:
	.string	"__sigaction_handler"
.LASF254:
	.string	"r_full"
.LASF7:
	.string	"__uint32_t"
.LASF278:
	.string	"iread_fnc"
.LASF38:
	.string	"long long int"
.LASF164:
	.string	"va_list"
.LASF119:
	.string	"Version"
.LASF120:
	.string	"exit_failure"
.LASF85:
	.string	"_gl_cxxalias_dummy"
.LASF259:
	.string	"input_seekable"
.LASF155:
	.string	"_freeres_list"
.LASF179:
	.string	"c_quoting_style"
.LASF352:
	.string	"parse_integer"
.LASF343:
	.string	"apply_translations"
.LASF289:
	.string	"statuses"
.LASF137:
	.string	"_IO_write_end"
.LASF306:
	.string	"stdout_stat"
.LASF429:
	.string	"maybe_close_stdout"
.LASF223:
	.string	"C_NOCREAT"
.LASF216:
	.string	"C_LCASE"
.LASF122:
	.string	"uintmax_t"
.LASF197:
	.string	"LONGINT_INVALID"
.LASF126:
	.string	"gp_offset"
.LASF334:
	.string	"skip"
.LASF87:
	.string	"sys_siglist"
.LASF53:
	.string	"_addr_bnd"
.LASF391:
	.string	"quit"
.LASF345:
	.string	"count"
.LASF294:
	.string	"close_stdout_required"
.LASF8:
	.string	"__intmax_t"
.LASF138:
	.string	"_IO_buf_base"
.LASF51:
	.string	"_lower"
.LASF397:
	.string	"cleanup"
.LASF2:
	.string	"unsigned int"
.LASF417:
	.string	"abbreviation_lacks_prefix"
.LASF172:
	.string	"version_etc_copyright"
.LASF430:
	.string	"usable_st_size"
.LASF303:
	.string	"opts"
.LASF272:
	.string	"interrupt_signal"
.LASF74:
	.string	"_sifields"
.LASF186:
	.string	"quoting_style_vals"
.LASF231:
	.string	"STATUS_PROGRESS"
.LASF174:
	.string	"literal_quoting_style"
.LASF73:
	.string	"__pad0"
.LASF91:
	.string	"tzname"
.LASF68:
	.string	"_sigpoll"
.LASF157:
	.string	"__pad5"
.LASF353:
	.string	"suffix"
.LASF291:
	.string	"ascii_to_ebcdic"
.LASF285:
	.string	"O_COUNT_BYTES"
.LASF212:
	.string	"C_EBCDIC"
.LASF441:
	.string	"select_plural"
.LASF413:
	.string	"stats_len"
.LASF66:
	.string	"_sigchld"
.LASF128:
	.string	"overflow_arg_area"
.LASF135:
	.string	"_IO_write_base"
.LASF209:
	.string	"quoting_options"
.LASF131:
	.string	"_flags"
.LASF246:
	.string	"conversions_mask"
.LASF251:
	.string	"w_partial"
.LASF361:
	.string	"slen"
.LASF436:
	.string	"lc_messages"
.LASF210:
	.string	"quote_quoting_options"
.LASF19:
	.string	"__clock_t"
.LASF158:
	.string	"_mode"
.LASF218:
	.string	"C_SWAB"
.LASF153:
	.string	"_codecvt"
.LASF124:
	.string	"LOG10_TIMESPEC_HZ"
.LASF99:
	.string	"st_nlink"
.LASF28:
	.string	"off_t"
.LASF27:
	.string	"mode_t"
.LASF282:
	.string	"conversions"
.LASF387:
	.string	"cache_round"
.LASF121:
	.string	"intmax_t"
.LASF95:
	.string	"long double"
.LASF290:
	.string	"trans_table"
.LASF357:
	.string	"exclusive"
.LASF257:
	.string	"next_time"
.LASF59:
	.string	"si_fd"
.LASF355:
	.string	"parse_symbols"
.LASF160:
	.string	"FILE"
.LASF18:
	.string	"__pid_t"
.LASF64:
	.string	"_kill"
.LASF97:
	.string	"st_dev"
.LASF396:
	.string	"oldset"
.LASF360:
	.string	"entry"
.LASF193:
	.string	"LONGINT_OK"
.LASF79:
	.string	"timespec"
.LASF152:
	.string	"_offset"
.LASF409:
	.string	"bytes_per_second"
.LASF116:
	.string	"optopt"
.LASF321:
	.string	"old_flags"
.LASF315:
	.string	"progress_time"
.LASF182:
	.string	"locale_quoting_style"
.LASF380:
	.string	"prev_nread"
.LASF273:
	.string	"info_signal_count"
.LASF304:
	.string	"size"
.LASF228:
	.string	"STATUS_NONE"
.LASF37:
	.string	"long long unsigned int"
.LASF129:
	.string	"reg_save_area"
.LASF308:
	.string	"nread"
.LASF399:
	.string	"install_signal_handlers"
.LASF16:
	.string	"__off_t"
.LASF437:
	.string	"is_nul"
.LASF191:
	.string	"quoting_style"
.LASF118:
	.string	"program_invocation_short_name"
.LASF47:
	.string	"si_sigval"
.LASF296:
	.string	"char_is_saved"
.LASF45:
	.string	"si_tid"
.LASF156:
	.string	"_freeres_buf"
.LASF342:
	.string	"translate_buffer"
.LASF77:
	.string	"sa_handler"
.LASF439:
	.string	"ptr_align"
.LASF115:
	.string	"opterr"
.LASF190:
	.string	"xtime_t"
.LASF446:
	.string	"/root/coreutils"
.LASF20:
	.string	"__time_t"
.LASF269:
	.string	"ibuf"
.LASF80:
	.string	"sigaction"
.LASF26:
	.string	"__sig_atomic_t"
.LASF141:
	.string	"_IO_backup_base"
.LASF150:
	.string	"_shortbuf"
.LASF83:
	.string	"sa_flags"
.LASF443:
	.string	"to_uchar"
.LASF201:
	.string	"human_group_digits"
.LASF238:
	.string	"skip_records"
.LASF208:
	.string	"IO_BUFSIZE"
.LASF176:
	.string	"shell_always_quoting_style"
.LASF17:
	.string	"__off64_t"
.LASF46:
	.string	"si_overrun"
.LASF392:
	.string	"code"
.LASF270:
	.string	"obuf"
.LASF40:
	.string	"sival_int"
.LASF341:
	.string	"swab_buffer"
.LASF301:
	.string	"offset"
.LASF314:
	.string	"write_records"
.LASF181:
	.string	"escape_quoting_style"
.LASF154:
	.string	"_wide_data"
.LASF139:
	.string	"_IO_buf_end"
.LASF271:
	.string	"caught_signals"
.LASF235:
	.string	"input_blocksize"
.LASF61:
	.string	"_syscall"
.LASF402:
	.string	"interrupt_handler"
.LASF320:
	.string	"name"
.LASF250:
	.string	"translation_needed"
.LASF377:
	.string	"iread_fullblock"
.LASF435:
	.string	"map_prog"
.LASF412:
	.string	"delta_s_buf"
.LASF167:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF224:
	.string	"C_EXCL"
.LASF408:
	.string	"delta_s"
.LASF415:
	.string	"delta_xtime"
.LASF363:
	.string	"pattern"
.LASF236:
	.string	"output_blocksize"
.LASF312:
	.string	"us_blocks"
.LASF36:
	.string	"tv_nsec"
.LASF425:
	.string	"usage"
.LASF177:
	.string	"shell_escape_quoting_style"
.LASF328:
	.string	"start"
.LASF371:
	.string	"flag"
.LASF149:
	.string	"_vtable_offset"
.LASF302:
	.string	"perms"
.LASF171:
	.string	"_sys_errlist"
.LASF233:
	.string	"output_file"
.LASF9:
	.string	"__uintmax_t"
.LASF419:
	.string	"multiple_bits_set"
.LASF76:
	.string	"__sighandler_t"
.LASF63:
	.string	"_pad"
.LASF240:
	.string	"seek_records"
.LASF34:
	.string	"__val"
.LASF123:
	.string	"TIMESPEC_HZ"
.LASF256:
	.string	"start_time"
.LASF199:
	.string	"human_round_to_nearest"
.LASF55:
	.string	"si_addr"
.LASF69:
	.string	"_sigsys"
.LASF349:
	.string	"n_max"
.LASF89:
	.string	"__daylight"
.LASF325:
	.string	"pending_spaces"
.LASF42:
	.string	"__sigval_t"
.LASF280:
	.string	"symbol"
.LASF100:
	.string	"st_mode"
.LASF11:
	.string	"__uid_t"
.LASF78:
	.string	"sa_sigaction"
.LASF133:
	.string	"_IO_read_end"
.LASF252:
	.string	"w_full"
.LASF94:
	.string	"getdate_err"
.LASF393:
	.string	"process_signals"
.LASF368:
	.string	"ifstat"
.LASF447:
	.string	"sigval"
.LASF389:
	.string	"o_pending"
.LASF145:
	.string	"_fileno"
.LASF43:
	.string	"si_pid"
.LASF378:
	.string	"ncurr"
.LASF394:
	.string	"interrupt"
.LASF229:
	.string	"STATUS_NOXFER"
.LASF44:
	.string	"si_uid"
.LASF384:
	.string	"nocache_eof"
.LASF445:
	.string	"src/dd.c"
.LASF214:
	.string	"C_BLOCK"
.LASF370:
	.string	"desired_fd"
.LASF234:
	.string	"page_size"
.LASF292:
	.string	"ascii_to_ibm"
.LASF255:
	.string	"w_bytes"
.LASF1:
	.string	"short unsigned int"
.LASF166:
	.string	"stdout"
.LASF418:
	.string	"message"
.LASF136:
	.string	"_IO_write_ptr"
.LASF267:
	.string	"real_ibuf"
.LASF249:
	.string	"status_level"
.LASF309:
	.string	"partread"
.LASF293:
	.string	"ebcdic_to_ascii"
.LASF241:
	.string	"seek_bytes"
.LASF92:
	.string	"daylight"
.LASF98:
	.string	"st_ino"
.LASF232:
	.string	"input_file"
.LASF15:
	.string	"__nlink_t"
.LASF317:
	.string	"nwritten"
.LASF347:
	.string	"invalid"
.LASF268:
	.string	"real_obuf"
.LASF32:
	.string	"__sigset_t"
.LASF442:
	.string	"PLURAL_REDUCER"
.LASF348:
	.string	"n_min"
.LASF381:
	.string	"prev"
.LASF35:
	.string	"tv_sec"
.LASF204:
	.string	"human_base_1024"
.LASF184:
	.string	"custom_quoting_style"
.LASF49:
	.string	"si_utime"
.LASF287:
	.string	"O_SEEK_BYTES"
.LASF107:
	.string	"st_atim"
.LASF316:
	.string	"bad_portion"
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
