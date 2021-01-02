	.file	"csplit.c"
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
	.local	head
	.comm	head,8,8
	.local	hold_area
	.comm	hold_area,8,8
	.local	hold_count
	.comm	hold_count,8,8
	.local	last_line_number
	.comm	last_line_number,8,8
	.local	current_line
	.comm	current_line,8,8
	.local	have_read_eof
	.comm	have_read_eof,1,1
	.local	filename_space
	.comm	filename_space,8,8
	.local	prefix
	.comm	prefix,8,8
	.local	suffix
	.comm	suffix,8,8
	.data
	.align 4
	.type	digits, @object
	.size	digits, 4
digits:
	.long	2
	.local	files_created
	.comm	files_created,4,4
	.local	bytes_written
	.comm	bytes_written,8,8
	.local	output_stream
	.comm	output_stream,8,8
	.local	output_filename
	.comm	output_filename,8,8
	.local	global_argv
	.comm	global_argv,8,8
	.local	suppress_count
	.comm	suppress_count,1,1
	.local	remove_files
	.comm	remove_files,1,1
	.local	elide_empty_files
	.comm	elide_empty_files,1,1
	.local	suppress_matched
	.comm	suppress_matched,1,1
	.local	controls
	.comm	controls,8,8
	.local	control_used
	.comm	control_used,8,8
	.local	caught_signals
	.comm	caught_signals,128,32
	.section	.rodata
.LC19:
	.string	"digits"
.LC20:
	.string	"quiet"
.LC21:
	.string	"silent"
.LC22:
	.string	"keep-files"
.LC23:
	.string	"elide-empty-files"
.LC24:
	.string	"prefix"
.LC25:
	.string	"suffix-format"
.LC26:
	.string	"suppress-matched"
.LC27:
	.string	"help"
.LC28:
	.string	"version"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	longopts, @object
	.size	longopts, 352
longopts:
	.quad	.LC19
	.long	1
	.zero	4
	.quad	0
	.long	110
	.zero	4
	.quad	.LC20
	.long	0
	.zero	4
	.quad	0
	.long	113
	.zero	4
	.quad	.LC21
	.long	0
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC22
	.long	0
	.zero	4
	.quad	0
	.long	107
	.zero	4
	.quad	.LC23
	.long	0
	.zero	4
	.quad	0
	.long	122
	.zero	4
	.quad	.LC24
	.long	1
	.zero	4
	.quad	0
	.long	102
	.zero	4
	.quad	.LC25
	.long	1
	.zero	4
	.quad	0
	.long	98
	.zero	4
	.quad	.LC26
	.long	0
	.zero	4
	.quad	0
	.long	128
	.zero	4
	.quad	.LC27
	.long	0
	.zero	4
	.quad	0
	.long	-130
	.zero	4
	.quad	.LC28
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
	.type	cleanup, @function
cleanup:
.LFB46:
	.file 2 "src/csplit.c"
	.loc 2 212 1 is_stmt 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	.loc 2 212 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 215 3
	call	close_output_file
	.loc 2 217 3
	leaq	-144(%rbp), %rax
	movq	%rax, %rdx
	leaq	caught_signals(%rip), %rsi
	movl	$0, %edi
	call	sigprocmask@PLT
	.loc 2 218 3
	movl	$0, %edi
	call	delete_all_files
	.loc 2 219 3
	leaq	-144(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$2, %edi
	call	sigprocmask@PLT
	.loc 2 220 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	cleanup, .-cleanup
	.type	cleanup_fatal, @function
cleanup_fatal:
.LFB47:
	.loc 2 225 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 226 3
	call	cleanup
	.loc 2 227 3
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE47:
	.size	cleanup_fatal, .-cleanup_fatal
	.section	.rodata
.LC29:
	.string	"memory exhausted"
.LC30:
	.string	"%s"
	.text
	.globl	xalloc_die
	.type	xalloc_die, @function
xalloc_die:
.LFB48:
	.loc 2 232 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 233 3
	leaq	.LC29(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	leaq	.LC30(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 234 3
	call	cleanup_fatal
	.cfi_endproc
.LFE48:
	.size	xalloc_die, .-xalloc_die
	.type	interrupt_handler, @function
interrupt_handler:
.LFB49:
	.loc 2 239 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 2 240 3
	movl	$1, %edi
	call	delete_all_files
	.loc 2 241 3
	movl	-4(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	signal@PLT
	.loc 2 245 3
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	raise@PLT
	.loc 2 246 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	interrupt_handler, .-interrupt_handler
	.type	save_to_hold_area, @function
save_to_hold_area:
.LFB50:
	.loc 2 253 1
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
	.loc 2 254 3
	movq	hold_area(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 255 13
	movq	-8(%rbp), %rax
	movq	%rax, hold_area(%rip)
	.loc 2 256 14
	movq	-16(%rbp), %rax
	movq	%rax, hold_count(%rip)
	.loc 2 257 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	save_to_hold_area, .-save_to_hold_area
	.section	.rodata
.LC31:
	.string	"read error"
	.text
	.type	read_input, @function
read_input:
.LFB51:
	.loc 2 264 1
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
	movq	%rsi, -48(%rbp)
	.loc 2 267 6
	cmpq	$0, -48(%rbp)
	jne	.L18
	.loc 2 268 12
	movl	$0, %eax
	jmp	.L19
.L18:
	.loc 2 270 16
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	safe_read@PLT
	movq	%rax, -24(%rbp)
	.loc 2 272 6
	cmpq	$0, -24(%rbp)
	jne	.L20
	.loc 2 273 19
	movb	$1, have_read_eof(%rip)
.L20:
	.loc 2 275 6
	cmpq	$-1, -24(%rbp)
	jne	.L21
	.loc 2 277 24
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 277 17
	call	__errno_location@PLT
	.loc 2 277 7
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 278 7
	call	cleanup_fatal
.L21:
	.loc 2 281 10
	movq	-24(%rbp), %rax
.L19:
	.loc 2 282 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	read_input, .-read_input
	.type	clear_line_control, @function
clear_line_control:
.LFB52:
	.loc 2 288 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 289 11
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 290 19
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 291 21
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 2 292 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	clear_line_control, .-clear_line_control
	.type	new_line_control, @function
new_line_control:
.LFB53:
	.loc 2 298 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 299 20
	movl	$1312, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 301 11
	movq	-8(%rbp), %rax
	movq	$0, 1304(%rax)
	.loc 2 302 3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clear_line_control
	.loc 2 304 10
	movq	-8(%rbp), %rax
	.loc 2 305 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	new_line_control, .-new_line_control
	.type	keep_new_line, @function
keep_new_line:
.LFB54:
	.loc 2 312 1
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
	.loc 2 316 8
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	.loc 2 316 6
	testq	%rax, %rax
	jne	.L26
	.loc 2 317 36
	call	new_line_control
	.loc 2 317 34
	movq	-40(%rbp), %rdx
	movq	%rax, 56(%rdx)
	.loc 2 317 22
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	.loc 2 317 19
	movq	-40(%rbp), %rax
	movq	%rdx, 48(%rax)
.L26:
	.loc 2 320 8
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	.loc 2 320 19
	movq	(%rax), %rax
	.loc 2 320 6
	cmpq	$80, %rax
	jne	.L27
	.loc 2 322 8
	movq	-40(%rbp), %rax
	movq	56(%rax), %rbx
	.loc 2 322 28
	call	new_line_control
	.loc 2 322 26
	movq	%rax, 1304(%rbx)
	.loc 2 323 23
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	.loc 2 323 34
	movq	1304(%rax), %rdx
	.loc 2 323 20
	movq	-40(%rbp), %rax
	movq	%rdx, 56(%rax)
.L27:
	.loc 2 326 5
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 329 14
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 329 34
	movq	-24(%rbp), %rax
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 2 330 14
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 330 34
	movq	-24(%rbp), %rax
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 2 331 4
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 331 10
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 332 4
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 332 18
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 333 1
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	keep_new_line, .-keep_new_line
	.type	record_line_starts, @function
record_line_starts:
.LFB55:
	.loc 2 345 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	.loc 2 352 8
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 352 6
	testq	%rax, %rax
	jne	.L29
	.loc 2 353 12
	movl	$0, %eax
	jmp	.L30
.L29:
	.loc 2 355 9
	movq	$0, -24(%rbp)
	.loc 2 356 14
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 2 357 14
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.L33:
	.loc 2 361 18
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	movq	%rax, -16(%rbp)
	.loc 2 362 10
	cmpq	$0, -16(%rbp)
	je	.L37
	.loc 2 364 30
	movq	-16(%rbp), %rax
	subq	-40(%rbp), %rax
	.loc 2 364 43
	addq	$1, %rax
	.loc 2 364 19
	movq	%rax, -8(%rbp)
	.loc 2 365 7
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	keep_new_line
	.loc 2 366 18
	movq	-8(%rbp), %rax
	subq	%rax, -32(%rbp)
	.loc 2 367 18
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	.loc 2 368 12
	addq	$1, -24(%rbp)
	.loc 2 361 16
	jmp	.L33
.L37:
	.loc 2 363 9
	nop
	.loc 2 372 6
	cmpq	$0, -32(%rbp)
	je	.L34
	.loc 2 374 11
	movzbl	have_read_eof(%rip), %eax
	.loc 2 374 10
	testb	%al, %al
	je	.L35
	.loc 2 376 11
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	keep_new_line
	.loc 2 377 16
	addq	$1, -24(%rbp)
	jmp	.L34
.L35:
	.loc 2 380 28
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xmemdup@PLT
	movq	%rax, %rdx
	.loc 2 380 9
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	save_to_hold_area
.L34:
	.loc 2 383 16
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	.loc 2 384 57
	movq	last_line_number(%rip), %rax
	leaq	1(%rax), %rdx
	.loc 2 384 38
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 384 25
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 384 22
	movq	-56(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 2 385 20
	movq	last_line_number(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, last_line_number(%rip)
	.loc 2 387 10
	movq	-24(%rbp), %rax
.L30:
	.loc 2 388 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	record_line_starts, .-record_line_starts
	.type	create_new_buffer, @function
create_new_buffer:
.LFB56:
	.loc 2 395 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 396 38
	movl	$72, %edi
	call	xmalloc@PLT
	movq	%rax, -8(%rbp)
	.loc 2 398 24
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	movq	%rax, %rdx
	.loc 2 398 22
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	.loc 2 400 27
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 401 50
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	.loc 2 401 38
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	.loc 2 401 26
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	.loc 2 403 10
	movq	-8(%rbp), %rax
	.loc 2 404 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	create_new_buffer, .-create_new_buffer
	.type	get_new_buffer, @function
get_new_buffer:
.LFB57:
	.loc 2 411 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 415 14
	movq	$8191, -24(%rbp)
	.loc 2 416 6
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L41
.LBB2:
	.loc 2 418 27
	movq	-40(%rbp), %rax
	subq	-24(%rbp), %rax
	.loc 2 418 14
	addq	$2047, %rax
	movq	%rax, -16(%rbp)
	.loc 2 419 23
	movq	-16(%rbp), %rax
	andq	$-2048, %rax
	.loc 2 419 18
	addq	%rax, -24(%rbp)
.L41:
.LBE2:
	.loc 2 422 16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	create_new_buffer
	movq	%rax, -8(%rbp)
	.loc 2 424 25
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	.loc 2 425 26
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 426 75
	movq	last_line_number(%rip), %rax
	leaq	1(%rax), %rdx
	.loc 2 426 56
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	.loc 2 426 38
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	.loc 2 426 26
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 427 20
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	.loc 2 429 10
	movq	-8(%rbp), %rax
	.loc 2 430 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	get_new_buffer, .-get_new_buffer
	.type	free_buffer, @function
free_buffer:
.LFB58:
	.loc 2 434 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 436 10
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 436 3
	jmp	.L44
.L45:
.LBB3:
	.loc 2 438 20
	movq	-16(%rbp), %rax
	movq	1304(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 439 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 440 9
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L44:
.LBE3:
	.loc 2 436 3 discriminator 1
	cmpq	$0, -16(%rbp)
	jne	.L45
	.loc 2 442 19
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	.loc 2 443 12
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	.loc 2 443 3
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 444 15
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	.loc 2 445 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	free_buffer, .-free_buffer
	.type	save_buffer, @function
save_buffer:
.LFB59:
	.loc 2 452 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 2 455 13
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	.loc 2 456 23
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	.loc 2 456 18
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
	.loc 2 458 12
	movq	head(%rip), %rax
	.loc 2 458 6
	testq	%rax, %rax
	jne	.L47
	.loc 2 459 10
	movq	-24(%rbp), %rax
	movq	%rax, head(%rip)
	.loc 2 466 1
	jmp	.L51
.L47:
	.loc 2 462 14
	movq	head(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 462 7
	jmp	.L49
.L50:
	.loc 2 462 33 discriminator 3
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
.L49:
	.loc 2 462 23 discriminator 1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 462 7 discriminator 1
	testq	%rax, %rax
	jne	.L50
	.loc 2 464 15
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 64(%rax)
.L51:
	.loc 2 466 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	save_buffer, .-save_buffer
	.type	load_buffer, @function
load_buffer:
.LFB60:
	.loc 2 483 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 2 485 10
	movq	$8191, -40(%rbp)
	.loc 2 490 7
	movzbl	have_read_eof(%rip), %eax
	.loc 2 490 6
	testb	%al, %al
	je	.L53
	.loc 2 491 12
	movl	$0, %eax
	jmp	.L54
.L53:
	.loc 2 495 20
	movq	hold_count(%rip), %rax
	.loc 2 495 6
	cmpq	%rax, -40(%rbp)
	jnb	.L62
	.loc 2 496 18
	movq	hold_count(%rip), %rax
	movq	%rax, -40(%rbp)
.L62:
	.loc 2 500 11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_new_buffer
	movq	%rax, -16(%rbp)
	.loc 2 501 19
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 502 9
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 505 11
	movq	hold_count(%rip), %rax
	.loc 2 505 10
	testq	%rax, %rax
	je	.L56
	.loc 2 507 11
	movq	hold_count(%rip), %rdx
	movq	hold_area(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 508 13
	movq	hold_count(%rip), %rax
	addq	%rax, -24(%rbp)
	.loc 2 509 25
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	hold_count(%rip), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 510 23
	movq	hold_count(%rip), %rax
	subq	%rax, -32(%rbp)
	.loc 2 511 22
	movq	$0, hold_count(%rip)
.L56:
	.loc 2 514 24
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_input
	.loc 2 514 21
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	.loc 2 516 21
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	record_line_starts
	movq	%rax, -8(%rbp)
	.loc 2 518 10
	cmpq	$0, -8(%rbp)
	jne	.L57
	.loc 2 518 23 discriminator 1
	movzbl	have_read_eof(%rip), %eax
	testb	%al, %al
	jne	.L57
	.loc 2 521 11
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	leaq	(%rax,%rax), %rcx
	shrq	$63, %rax
	testq	%rax, %rax
	je	.L58
	movl	$1, %edx
.L58:
	testq	%rcx, %rcx
	jns	.L60
	movl	$1, %edx
.L60:
	movq	%rdx, %rax
	andl	$1, %eax
	.loc 2 521 10
	testb	%al, %al
	je	.L61
	.loc 2 522 9
	call	xalloc_die
.L61:
	.loc 2 523 27
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 523 20
	addq	%rax, %rax
	movq	%rax, -40(%rbp)
	.loc 2 524 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free_buffer
	.loc 2 525 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 500 9
	jmp	.L62
.L57:
	.loc 2 528 6
	cmpq	$0, -8(%rbp)
	je	.L63
	.loc 2 529 5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	save_buffer
	jmp	.L64
.L63:
	.loc 2 532 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free_buffer
	.loc 2 533 7
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L64:
	.loc 2 536 22
	cmpq	$0, -8(%rbp)
	setne	%al
.L54:
	.loc 2 537 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	load_buffer, .-load_buffer
	.section	.rodata
.LC32:
	.string	"input disappeared"
	.text
	.type	get_first_line_in_buffer, @function
get_first_line_in_buffer:
.LFB61:
	.loc 2 543 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	.loc 2 544 12
	movq	head(%rip), %rax
	.loc 2 544 6
	testq	%rax, %rax
	jne	.L66
	.loc 2 544 24 discriminator 1
	call	load_buffer
	.loc 2 544 23 discriminator 1
	xorl	$1, %eax
	.loc 2 544 20 discriminator 1
	testb	%al, %al
	je	.L66
.LBB4:
	.loc 2 545 5
	leaq	.LC32(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L66:
.LBE4:
	.loc 2 547 14
	movq	head(%rip), %rax
	movq	24(%rax), %rax
	.loc 2 548 1
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	get_first_line_in_buffer, .-get_first_line_in_buffer
	.type	remove_line, @function
remove_line:
.LFB62:
	.loc 2 556 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 565 7
	movq	prev_buf.6591(%rip), %rax
	.loc 2 565 6
	testq	%rax, %rax
	je	.L69
	.loc 2 567 7
	movq	prev_buf.6591(%rip), %rax
	movq	%rax, %rdi
	call	free_buffer
	.loc 2 568 7
	movq	prev_buf.6591(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 569 16
	movq	$0, prev_buf.6591(%rip)
.L69:
	.loc 2 572 12
	movq	head(%rip), %rax
	.loc 2 572 6
	testq	%rax, %rax
	jne	.L70
	.loc 2 572 24 discriminator 1
	call	load_buffer
	.loc 2 572 23 discriminator 1
	xorl	$1, %eax
	.loc 2 572 20 discriminator 1
	testb	%al, %al
	je	.L70
	.loc 2 573 12
	movl	$0, %eax
	jmp	.L71
.L70:
	.loc 2 575 26
	movq	head(%rip), %rax
	movq	24(%rax), %rdx
	.loc 2 575 20
	movq	current_line(%rip), %rax
	.loc 2 575 6
	cmpq	%rax, %rdx
	jbe	.L72
	.loc 2 576 24
	movq	head(%rip), %rax
	movq	24(%rax), %rax
	.loc 2 576 18
	movq	%rax, current_line(%rip)
.L72:
	.loc 2 578 10
	movq	head(%rip), %rax
	movq	24(%rax), %rdx
	.loc 2 578 3
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	.loc 2 580 11
	movq	head(%rip), %rax
	.loc 2 580 5
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 582 22
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 582 8
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	.loc 2 585 10
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 585 7
	leaq	1(%rax), %rdx
	.loc 2 585 6
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 585 10
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 585 31
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 585 6
	cmpq	%rax, %rdx
	jne	.L73
	.loc 2 588 11
	movq	head(%rip), %rax
	.loc 2 588 26
	movq	-16(%rbp), %rdx
	movq	1304(%rdx), %rdx
	.loc 2 588 23
	movq	%rdx, 56(%rax)
	.loc 2 589 15
	movq	head(%rip), %rax
	movq	56(%rax), %rax
	.loc 2 589 10
	testq	%rax, %rax
	je	.L74
	.loc 2 589 42 discriminator 1
	movq	head(%rip), %rax
	movq	56(%rax), %rax
	.loc 2 589 53 discriminator 1
	movq	(%rax), %rax
	.loc 2 589 35 discriminator 1
	testq	%rax, %rax
	jne	.L73
.L74:
	.loc 2 594 20
	movq	head(%rip), %rax
	movq	%rax, prev_buf.6591(%rip)
	.loc 2 595 22
	movq	head(%rip), %rax
	movq	64(%rax), %rax
	.loc 2 595 16
	movq	%rax, head(%rip)
.L73:
	.loc 2 599 10
	movq	-8(%rbp), %rax
.L71:
	.loc 2 600 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	remove_line, .-remove_line
	.section	.rodata
.LC33:
	.string	"src/csplit.c"
.LC34:
	.string	"b"
	.text
	.type	find_line, @function
find_line:
.LFB63:
	.loc 2 607 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 610 12
	movq	head(%rip), %rax
	.loc 2 610 6
	testq	%rax, %rax
	jne	.L76
	.loc 2 610 24 discriminator 1
	call	load_buffer
	.loc 2 610 23 discriminator 1
	xorl	$1, %eax
	.loc 2 610 20 discriminator 1
	testb	%al, %al
	je	.L76
	.loc 2 611 12
	movl	$0, %eax
	jmp	.L77
.L76:
	.loc 2 613 21
	movq	head(%rip), %rax
	movq	16(%rax), %rax
	.loc 2 613 6
	cmpq	%rax, -40(%rbp)
	jnb	.L78
	.loc 2 614 12
	movl	$0, %eax
	jmp	.L77
.L78:
	.loc 2 616 10
	movq	head(%rip), %rax
	movq	%rax, -24(%rbp)
.L84:
	.loc 2 618 7
	cmpq	$0, -24(%rbp)
	jne	.L79
	.loc 2 618 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6598(%rip), %rcx
	movl	$618, %edx
	leaq	.LC33(%rip), %rsi
	leaq	.LC34(%rip), %rdi
	call	__assert_fail@PLT
.L79:
	.loc 2 619 22 is_stmt 1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	.loc 2 619 38
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	.loc 2 619 35
	addq	%rdx, %rax
	.loc 2 619 10
	cmpq	%rax, -40(%rbp)
	jnb	.L80
.LBB5:
	.loc 2 625 13
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 626 31
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 626 18
	movq	-40(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 628 17
	jmp	.L81
.L82:
	.loc 2 630 17
	movq	-16(%rbp), %rax
	movq	1304(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 631 22
	subq	$80, -8(%rbp)
.L81:
	.loc 2 628 17
	cmpq	$79, -8(%rbp)
	ja	.L82
	.loc 2 633 18
	movq	-8(%rbp), %rax
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	jmp	.L77
.L80:
.LBE5:
	.loc 2 635 12
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	.loc 2 635 10
	testq	%rax, %rax
	jne	.L83
	.loc 2 635 31 discriminator 1
	call	load_buffer
	.loc 2 635 30 discriminator 1
	xorl	$1, %eax
	.loc 2 635 27 discriminator 1
	testb	%al, %al
	je	.L83
	.loc 2 636 16
	movl	$0, %eax
	jmp	.L77
.L83:
	.loc 2 637 9
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 618 7
	jmp	.L84
.L77:
	.loc 2 639 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	find_line, .-find_line
	.type	no_more_lines, @function
no_more_lines:
.LFB64:
	.loc 2 645 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 646 10
	movq	current_line(%rip), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	find_line
	.loc 2 646 39
	testq	%rax, %rax
	sete	%al
	.loc 2 647 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	no_more_lines, .-no_more_lines
	.section	.rodata
.LC35:
	.string	"-"
.LC36:
	.string	"cannot open %s for reading"
	.text
	.type	set_input_file, @function
set_input_file:
.LFB65:
	.loc 2 653 1
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
	movq	%rdi, -24(%rbp)
	.loc 2 654 9
	movq	-24(%rbp), %rax
	leaq	.LC35(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 654 6
	testl	%eax, %eax
	je	.L89
	.loc 2 654 30 discriminator 1
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	fd_reopen@PLT
	.loc 2 654 27 discriminator 1
	testl	%eax, %eax
	jns	.L89
.LBB6:
	.loc 2 655 5
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	leaq	.LC36(%rip), %rdi
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
.L89:
.LBE6:
	.loc 2 657 1
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	set_input_file, .-set_input_file
	.section	.rodata
.LC37:
	.string	"%s: line number out of range"
	.text
	.type	write_to_file, @function
write_to_file:
.LFB66:
	.loc 2 666 1
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
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movl	%edx, -64(%rbp)
	movb	%al, -60(%rbp)
	.loc 2 672 16
	call	get_first_line_in_buffer
	movq	%rax, -40(%rbp)
	.loc 2 674 6
	movq	-40(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.L91
	.loc 2 677 32
	movq	global_argv(%rip), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 676 7
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 676 20
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	.loc 2 676 7
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 678 7
	call	cleanup_fatal
.L91:
	.loc 2 681 9
	movq	-56(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 683 10
	movq	$0, -48(%rbp)
	.loc 2 683 3
	jmp	.L92
.L95:
	.loc 2 685 14
	call	remove_line
	movq	%rax, -24(%rbp)
	.loc 2 686 10
	cmpq	$0, -24(%rbp)
	jne	.L93
	.loc 2 689 36
	movq	global_argv(%rip), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	.loc 2 688 11
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 688 24
	leaq	.LC37(%rip), %rdi
	call	gettext@PLT
	.loc 2 688 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 690 11
	call	cleanup_fatal
.L93:
	.loc 2 692 11
	movzbl	-60(%rbp), %eax
	xorl	$1, %eax
	.loc 2 692 10
	testb	%al, %al
	je	.L94
	.loc 2 693 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	save_line_to_file
.L94:
	.loc 2 683 27 discriminator 2
	addq	$1, -48(%rbp)
.L92:
	.loc 2 683 3 discriminator 1
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L95
	.loc 2 695 1
	nop
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	write_to_file, .-write_to_file
	.type	dump_rest_of_file, @function
dump_rest_of_file:
.LFB67:
	.loc 2 701 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 704 9
	jmp	.L97
.L98:
	.loc 2 705 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	save_line_to_file
.L97:
	.loc 2 704 18
	call	remove_line
	movq	%rax, -8(%rbp)
	.loc 2 704 9
	cmpq	$0, -8(%rbp)
	jne	.L98
	.loc 2 706 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	dump_rest_of_file, .-dump_rest_of_file
	.section	.rodata
	.align 8
.LC38:
	.string	"%s: %s: line number out of range"
.LC39:
	.string	" on repetition %s\n"
	.text
	.type	handle_line_error, @function
handle_line_error:
.LFB68:
	.loc 2 715 1
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
	movq	%rsi, -64(%rbp)
	.loc 2 715 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 719 33
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	.loc 2 718 3
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	movq	program_name(%rip), %rbx
	.loc 2 718 20
	leaq	.LC38(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 718 3
	movq	stderr(%rip), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 720 6
	cmpq	$0, -64(%rbp)
	je	.L100
	.loc 2 721 5
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rbx
	.loc 2 721 22
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 2 721 5
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L101
.L100:
	.loc 2 723 5
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L101:
	.loc 2 725 3
	call	cleanup_fatal
	.cfi_endproc
.LFE68:
	.size	handle_line_error, .-handle_line_error
	.type	process_line_count, @function
process_line_count:
.LFB69:
	.loc 2 735 1
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
	.loc 2 737 34
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 737 65
	movq	-48(%rbp), %rdx
	addq	$1, %rdx
	.loc 2 737 13
	imulq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 739 3
	call	create_output_file
	.loc 2 744 7
	call	no_more_lines
	.loc 2 744 6
	testb	%al, %al
	je	.L104
	.loc 2 744 24 discriminator 1
	movzbl	suppress_matched(%rip), %eax
	testb	%al, %al
	je	.L104
	.loc 2 745 5
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	handle_line_error
.L104:
	.loc 2 747 13
	call	get_first_line_in_buffer
	movq	%rax, -24(%rbp)
	.loc 2 748 9
	jmp	.L105
.L107:
.LBB7:
	.loc 2 750 30
	call	remove_line
	movq	%rax, -8(%rbp)
	.loc 2 751 10
	cmpq	$0, -8(%rbp)
	jne	.L106
	.loc 2 752 9
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	handle_line_error
.L106:
	.loc 2 753 7
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	save_line_to_file
.L105:
.LBE7:
	.loc 2 748 17
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 2 748 9
	cmpq	%rax, -16(%rbp)
	ja	.L107
	.loc 2 756 3
	call	close_output_file
	.loc 2 758 7
	movzbl	suppress_matched(%rip), %eax
	.loc 2 758 6
	testb	%al, %al
	je	.L108
	.loc 2 759 5
	call	remove_line
.L108:
	.loc 2 763 7
	call	no_more_lines
	.loc 2 763 6
	testb	%al, %al
	je	.L110
	.loc 2 763 27 discriminator 1
	movzbl	suppress_matched(%rip), %eax
	xorl	$1, %eax
	.loc 2 763 24 discriminator 1
	testb	%al, %al
	je	.L110
	.loc 2 764 5
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	handle_line_error
.L110:
	.loc 2 765 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	process_line_count, .-process_line_count
	.section	.rodata
.LC40:
	.string	"%s: %s: match not found"
	.text
	.type	regexp_error, @function
regexp_error:
.LFB70:
	.loc 2 770 1
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
	movl	%edx, %eax
	movb	%al, -68(%rbp)
	.loc 2 770 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 772 44
	movq	global_argv(%rip), %rdx
	.loc 2 772 46
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	.loc 2 772 44
	salq	$3, %rax
	addq	%rdx, %rax
	.loc 2 771 3
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %r12
	movq	program_name(%rip), %rbx
	.loc 2 771 20
	leaq	.LC40(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rsi
	.loc 2 771 3
	movq	stderr(%rip), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 774 6
	cmpq	$0, -64(%rbp)
	je	.L112
.LBB8:
	.loc 2 777 7
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rbx
	.loc 2 777 24
	leaq	.LC39(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	.loc 2 777 7
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.LBE8:
	jmp	.L113
.L112:
	.loc 2 780 5
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc@PLT
.L113:
	.loc 2 782 7
	movzbl	-68(%rbp), %eax
	xorl	$1, %eax
	.loc 2 782 6
	testb	%al, %al
	je	.L114
	.loc 2 784 7
	call	dump_rest_of_file
	.loc 2 785 7
	call	close_output_file
.L114:
	.loc 2 787 3
	call	cleanup_fatal
	.cfi_endproc
.LFE70:
	.size	regexp_error, .-regexp_error
	.section	.rodata
	.align 8
.LC41:
	.string	"error in regular expression search"
	.text
	.type	process_regexp, @function
process_regexp:
.LFB71:
	.loc 2 796 1
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
	.loc 2 800 8
	movq	-56(%rbp), %rax
	movzbl	29(%rax), %eax
	movb	%al, -33(%rbp)
	.loc 2 803 7
	movzbl	-33(%rbp), %eax
	xorl	$1, %eax
	.loc 2 803 6
	testb	%al, %al
	je	.L117
	.loc 2 804 5
	call	create_output_file
.L117:
	.loc 2 809 8
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 809 6
	testq	%rax, %rax
	js	.L118
.L127:
	.loc 2 813 18
	movq	current_line(%rip), %rax
	addq	$1, %rax
	.loc 2 813 16
	movq	%rax, current_line(%rip)
	.loc 2 813 18
	movq	current_line(%rip), %rax
	movq	%rax, %rdi
	call	find_line
	movq	%rax, -24(%rbp)
	.loc 2 814 14
	cmpq	$0, -24(%rbp)
	jne	.L119
	.loc 2 816 20
	movq	-56(%rbp), %rax
	movzbl	28(%rax), %eax
	.loc 2 816 18
	testb	%al, %al
	je	.L120
	.loc 2 818 23
	movzbl	-33(%rbp), %eax
	xorl	$1, %eax
	.loc 2 818 22
	testb	%al, %al
	je	.L121
	.loc 2 820 23
	call	dump_rest_of_file
	.loc 2 821 23
	call	close_output_file
.L121:
	.loc 2 823 19
	movl	$0, %edi
	call	exit@PLT
.L120:
	.loc 2 826 17
	movzbl	-33(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	regexp_error
.L119:
	.loc 2 828 20
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 829 19
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 829 24
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 829 14
	cmpb	$10, %al
	jne	.L122
	.loc 2 830 21
	subq	$1, -32(%rbp)
.L122:
	.loc 2 831 17
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rdx
	.loc 2 831 49
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 831 17
	movq	-56(%rbp), %rcx
	leaq	32(%rcx), %rdi
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	call	rpl_re_search@PLT
	movq	%rax, -16(%rbp)
	.loc 2 833 14
	cmpq	$-2, -16(%rbp)
	jne	.L123
	.loc 2 835 28
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	.loc 2 835 15
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 836 15
	call	cleanup_fatal
.L123:
	.loc 2 838 14
	cmpq	$-1, -16(%rbp)
	jne	.L138
	.loc 2 840 22
	call	remove_line
	movq	%rax, -24(%rbp)
	.loc 2 841 19
	movzbl	-33(%rbp), %eax
	xorl	$1, %eax
	.loc 2 841 18
	testb	%al, %al
	je	.L127
	.loc 2 842 17
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	save_line_to_file
	.loc 2 813 16
	jmp	.L127
.L118:
	.loc 2 853 18
	movq	current_line(%rip), %rax
	addq	$1, %rax
	.loc 2 853 16
	movq	%rax, current_line(%rip)
	.loc 2 853 18
	movq	current_line(%rip), %rax
	movq	%rax, %rdi
	call	find_line
	movq	%rax, -24(%rbp)
	.loc 2 854 14
	cmpq	$0, -24(%rbp)
	jne	.L129
	.loc 2 856 20
	movq	-56(%rbp), %rax
	movzbl	28(%rax), %eax
	.loc 2 856 18
	testb	%al, %al
	je	.L130
	.loc 2 858 23
	movzbl	-33(%rbp), %eax
	xorl	$1, %eax
	.loc 2 858 22
	testb	%al, %al
	je	.L131
	.loc 2 860 23
	call	dump_rest_of_file
	.loc 2 861 23
	call	close_output_file
.L131:
	.loc 2 863 19
	movl	$0, %edi
	call	exit@PLT
.L130:
	.loc 2 866 17
	movzbl	-33(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	regexp_error
.L129:
	.loc 2 868 20
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 2 869 19
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 869 24
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 2 869 14
	cmpb	$10, %al
	jne	.L132
	.loc 2 870 21
	subq	$1, -32(%rbp)
.L132:
	.loc 2 871 17
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rdx
	.loc 2 871 49
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 871 17
	movq	-56(%rbp), %rcx
	leaq	32(%rcx), %rdi
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	call	rpl_re_search@PLT
	movq	%rax, -16(%rbp)
	.loc 2 873 14
	cmpq	$-2, -16(%rbp)
	jne	.L133
	.loc 2 875 28
	leaq	.LC41(%rip), %rdi
	call	gettext@PLT
	.loc 2 875 15
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 876 15
	call	cleanup_fatal
.L133:
	.loc 2 878 14
	cmpq	$-1, -16(%rbp)
	jne	.L139
	.loc 2 853 16
	jmp	.L118
.L138:
	.loc 2 845 13
	nop
	jmp	.L128
.L139:
	.loc 2 879 13
	nop
.L128:
	.loc 2 884 32
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	.loc 2 884 29
	movq	current_line(%rip), %rax
	.loc 2 884 14
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 886 3
	movq	-56(%rbp), %rax
	movl	24(%rax), %edx
	movzbl	-33(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	write_to_file
	.loc 2 888 7
	movzbl	-33(%rbp), %eax
	xorl	$1, %eax
	.loc 2 888 6
	testb	%al, %al
	je	.L135
	.loc 2 889 5
	call	close_output_file
.L135:
	.loc 2 891 8
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 891 6
	testq	%rax, %rax
	jle	.L136
	.loc 2 892 18
	movq	-8(%rbp), %rax
	movq	%rax, current_line(%rip)
.L136:
	.loc 2 894 7
	movzbl	suppress_matched(%rip), %eax
	.loc 2 894 6
	testb	%al, %al
	je	.L140
	.loc 2 895 5
	call	remove_line
.L140:
	.loc 2 896 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	process_regexp, .-process_regexp
	.type	split_file, @function
split_file:
.LFB72:
	.loc 2 902 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
.LBB9:
	.loc 2 903 15
	movq	$0, -16(%rbp)
	.loc 2 903 3
	jmp	.L142
.L149:
.LBB10:
	.loc 2 906 19
	movq	controls(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	.loc 2 906 22
	movzbl	30(%rax), %eax
	.loc 2 906 10
	testb	%al, %al
	je	.L143
	.loc 2 908 18
	movq	$0, -8(%rbp)
	.loc 2 908 11
	jmp	.L144
.L145:
	.loc 2 910 13 discriminator 1
	movq	controls(%rip), %rcx
	.loc 2 910 38 discriminator 1
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	.loc 2 910 13 discriminator 1
	leaq	(%rcx,%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	process_regexp
	.loc 2 909 54 discriminator 1
	addq	$1, -8(%rbp)
.L144:
	.loc 2 908 32 discriminator 1
	movq	controls(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	.loc 2 908 35 discriminator 1
	movzbl	28(%rax), %eax
	.loc 2 908 11 discriminator 1
	testb	%al, %al
	jne	.L145
	.loc 2 909 40
	movq	controls(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	.loc 2 909 43
	movq	16(%rax), %rax
	.loc 2 909 24
	cmpq	%rax, -8(%rbp)
	jbe	.L145
	jmp	.L146
.L143:
	.loc 2 914 18
	movq	$0, -8(%rbp)
	.loc 2 914 11
	jmp	.L147
.L148:
	.loc 2 916 13 discriminator 1
	movq	controls(%rip), %rcx
	.loc 2 916 42 discriminator 1
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	.loc 2 916 33 discriminator 1
	leaq	(%rcx,%rax), %rdx
	.loc 2 916 13 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	process_line_count
	.loc 2 915 54 discriminator 1
	addq	$1, -8(%rbp)
.L147:
	.loc 2 914 32 discriminator 1
	movq	controls(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	.loc 2 914 35 discriminator 1
	movzbl	28(%rax), %eax
	.loc 2 914 11 discriminator 1
	testb	%al, %al
	jne	.L148
	.loc 2 915 40
	movq	controls(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	.loc 2 915 43
	movq	16(%rax), %rax
	.loc 2 915 24
	cmpq	%rax, -8(%rbp)
	jbe	.L148
.L146:
.LBE10:
	.loc 2 903 41 discriminator 2
	addq	$1, -16(%rbp)
.L142:
	.loc 2 903 24 discriminator 1
	movq	control_used(%rip), %rax
	.loc 2 903 3 discriminator 1
	cmpq	%rax, -16(%rbp)
	jb	.L149
.LBE9:
	.loc 2 920 3
	call	create_output_file
	.loc 2 921 3
	call	dump_rest_of_file
	.loc 2 922 3
	call	close_output_file
	.loc 2 923 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	split_file, .-split_file
	.section	.rodata
.LC42:
	.string	"%0*u"
	.text
	.type	make_filename, @function
make_filename:
.LFB73:
	.loc 2 934 1
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
	.loc 2 935 3
	movq	prefix(%rip), %rdx
	movq	filename_space(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	.loc 2 936 7
	movq	suffix(%rip), %rax
	.loc 2 936 6
	testq	%rax, %rax
	je	.L151
	.loc 2 937 5
	movq	suffix(%rip), %rbx
	movq	filename_space(%rip), %r12
	.loc 2 937 31
	movq	prefix(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 937 5
	leaq	(%r12,%rax), %rcx
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	jmp	.L152
.L151:
	.loc 2 939 5
	movl	digits(%rip), %ebx
	movq	filename_space(%rip), %r12
	.loc 2 939 31
	movq	prefix(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 939 5
	leaq	(%r12,%rax), %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movl	%ebx, %edx
	leaq	.LC42(%rip), %rsi
	movl	$0, %eax
	call	sprintf@PLT
.L152:
	.loc 2 940 10
	movq	filename_space(%rip), %rax
	.loc 2 941 1
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	make_filename, .-make_filename
	.section	.rodata
.LC43:
	.string	"w"
	.text
	.type	create_output_file, @function
create_output_file:
.LFB74:
	.loc 2 947 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	.loc 2 947 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 951 21
	movl	files_created(%rip), %eax
	movl	%eax, %edi
	call	make_filename
	.loc 2 951 19
	movq	%rax, output_filename(%rip)
	.loc 2 953 21
	movl	files_created(%rip), %eax
	.loc 2 953 6
	cmpl	$-1, %eax
	jne	.L155
	.loc 2 955 16
	movb	$0, -149(%rbp)
	.loc 2 956 19
	movl	$75, -148(%rbp)
	jmp	.L156
.L155:
.LBB11:
	.loc 2 962 7
	leaq	-144(%rbp), %rax
	movq	%rax, %rdx
	leaq	caught_signals(%rip), %rsi
	movl	$0, %edi
	call	sigprocmask@PLT
	.loc 2 963 23
	movq	output_filename(%rip), %rax
	leaq	.LC43(%rip), %rsi
	movq	%rax, %rdi
	call	fopen_safer@PLT
	.loc 2 963 21
	movq	%rax, output_stream(%rip)
	.loc 2 964 33
	movq	output_stream(%rip), %rax
	.loc 2 964 16
	testq	%rax, %rax
	setne	%al
	movb	%al, -149(%rbp)
	.loc 2 965 21
	call	__errno_location@PLT
	.loc 2 965 19
	movl	(%rax), %eax
	movl	%eax, -148(%rbp)
	.loc 2 966 21
	movzbl	-149(%rbp), %edx
	movl	files_created(%rip), %eax
	addl	%edx, %eax
	movl	%eax, files_created(%rip)
	.loc 2 967 7
	leaq	-144(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$2, %edi
	call	sigprocmask@PLT
.L156:
.LBE11:
	.loc 2 970 7
	movzbl	-149(%rbp), %eax
	xorl	$1, %eax
	.loc 2 970 6
	testb	%al, %al
	je	.L157
	.loc 2 972 7
	movq	output_filename(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rdx
	movl	-148(%rbp), %eax
	movq	%rdx, %rcx
	leaq	.LC30(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 973 7
	call	cleanup_fatal
.L157:
	.loc 2 975 17
	movq	$0, bytes_written(%rip)
	.loc 2 976 1
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L158
	call	__stack_chk_fail@PLT
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	create_output_file, .-create_output_file
	.type	delete_all_files, @function
delete_all_files:
.LFB75:
	.loc 2 983 1
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
	movb	%al, -36(%rbp)
	.loc 2 984 7
	movzbl	remove_files(%rip), %eax
	xorl	$1, %eax
	.loc 2 984 6
	testb	%al, %al
	jne	.L165
.LBB12:
	.loc 2 987 21
	movl	$0, -28(%rbp)
	.loc 2 987 3
	jmp	.L162
.L164:
.LBB13:
	.loc 2 989 26
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	make_filename
	movq	%rax, -24(%rbp)
	.loc 2 990 11
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	unlink@PLT
	.loc 2 990 10
	testl	%eax, %eax
	je	.L163
	.loc 2 990 33 discriminator 1
	movzbl	-36(%rbp), %eax
	xorl	$1, %eax
	.loc 2 990 30 discriminator 1
	testb	%al, %al
	je	.L163
	.loc 2 991 9
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 991 19
	call	__errno_location@PLT
	.loc 2 991 9
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC30(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L163:
.LBE13:
	.loc 2 987 48 discriminator 2
	addl	$1, -28(%rbp)
.L162:
	.loc 2 987 30 discriminator 1
	movl	files_created(%rip), %eax
	.loc 2 987 3 discriminator 1
	cmpl	%eax, -28(%rbp)
	jb	.L164
.LBE12:
	.loc 2 994 17
	movl	$0, files_created(%rip)
	jmp	.L159
.L165:
	.loc 2 985 5
	nop
.L159:
	.loc 2 995 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	delete_all_files, .-delete_all_files
	.section	.rodata
.LC44:
	.string	"write error for %s"
.LC45:
	.string	"%s\n"
	.text
	.type	close_output_file, @function
close_output_file:
.LFB76:
	.loc 2 1002 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	.loc 2 1002 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1003 7
	movq	output_stream(%rip), %rax
	.loc 2 1003 6
	testq	%rax, %rax
	je	.L174
	.loc 2 1005 11
	movq	output_stream(%rip), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 1005 10
	testl	%eax, %eax
	je	.L168
	.loc 2 1007 11
	movq	output_filename(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %rbx
	.loc 2 1007 24
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	.loc 2 1007 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1008 25
	movq	$0, output_stream(%rip)
	.loc 2 1009 11
	call	cleanup_fatal
.L168:
	.loc 2 1011 11
	movq	output_stream(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 1011 10
	testl	%eax, %eax
	je	.L169
	.loc 2 1013 11
	movq	output_filename(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 1013 21
	call	__errno_location@PLT
	.loc 2 1013 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC30(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1014 25
	movq	$0, output_stream(%rip)
	.loc 2 1015 11
	call	cleanup_fatal
.L169:
	.loc 2 1017 25
	movq	bytes_written(%rip), %rax
	.loc 2 1017 10
	testq	%rax, %rax
	jne	.L170
	.loc 2 1017 30 discriminator 1
	movzbl	elide_empty_files(%rip), %eax
	testb	%al, %al
	je	.L170
.LBB14:
	.loc 2 1024 11
	leaq	-176(%rbp), %rax
	movq	%rax, %rdx
	leaq	caught_signals(%rip), %rsi
	movl	$0, %edi
	call	sigprocmask@PLT
	.loc 2 1025 24
	movq	output_filename(%rip), %rax
	movq	%rax, %rdi
	call	unlink@PLT
	.loc 2 1025 21
	testl	%eax, %eax
	sete	%al
	movb	%al, -181(%rbp)
	.loc 2 1026 26
	call	__errno_location@PLT
	.loc 2 1026 24
	movl	(%rax), %eax
	movl	%eax, -180(%rbp)
	.loc 2 1027 25
	movl	files_created(%rip), %edx
	movzbl	-181(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, files_created(%rip)
	.loc 2 1028 11
	leaq	-176(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$2, %edi
	call	sigprocmask@PLT
	.loc 2 1030 15
	movzbl	-181(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1030 14
	testb	%al, %al
	je	.L175
	.loc 2 1031 13
	movq	output_filename(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rdx
	movl	-180(%rbp), %eax
	movq	%rdx, %rcx
	leaq	.LC30(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.LBE14:
	.loc 2 1018 9
	jmp	.L175
.L170:
	.loc 2 1035 15
	movzbl	suppress_count(%rip), %eax
	xorl	$1, %eax
	.loc 2 1035 14
	testb	%al, %al
	je	.L172
.LBB15:
	.loc 2 1038 15
	movq	bytes_written(%rip), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %rdx
	movq	stdout(%rip), %rax
	leaq	.LC45(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L172
.L175:
.LBE15:
	.loc 2 1018 9
	nop
.L172:
	.loc 2 1041 21
	movq	$0, output_stream(%rip)
.L174:
	.loc 2 1043 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L173
	call	__stack_chk_fail@PLT
.L173:
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	close_output_file, .-close_output_file
	.type	save_line_to_file, @function
save_line_to_file:
.LFB77:
	.loc 2 1050 1
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
	.loc 2 1051 14
	movq	output_stream(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite_unlocked@PLT
	movq	%rax, -24(%rbp)
	.loc 2 1052 16
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 1052 6
	cmpq	%rax, -24(%rbp)
	je	.L177
	.loc 2 1054 7
	movq	output_filename(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	quotearg_style@PLT
	movq	%rax, %r12
	.loc 2 1054 24
	leaq	.LC44(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 1054 17
	call	__errno_location@PLT
	.loc 2 1054 7
	movl	(%rax), %eax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1055 21
	movq	$0, output_stream(%rip)
	.loc 2 1056 7
	call	cleanup_fatal
.L177:
	.loc 2 1058 24
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 1058 17
	movq	bytes_written(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, bytes_written(%rip)
	.loc 2 1059 1
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	save_line_to_file, .-save_line_to_file
	.type	new_control_record, @function
new_control_record:
.LFB78:
	.loc 2 1065 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 2 1069 20
	movq	control_used(%rip), %rdx
	movq	control_allocated.6718(%rip), %rax
	.loc 2 1069 6
	cmpq	%rax, %rdx
	jne	.L179
.LBB16:
	.loc 2 1070 16
	movq	controls(%rip), %rax
	movl	$96, %edx
	leaq	control_allocated.6718(%rip), %rsi
	movq	%rax, %rdi
	call	x2nrealloc@PLT
	.loc 2 1070 14
	movq	%rax, controls(%rip)
.L179:
.LBE16:
	.loc 2 1071 7
	movq	controls(%rip), %rcx
	.loc 2 1071 29
	movq	control_used(%rip), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, control_used(%rip)
	.loc 2 1071 16
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	.loc 2 1071 5
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 1072 14
	movq	-8(%rbp), %rax
	movb	$0, 30(%rax)
	.loc 2 1073 13
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 2 1074 21
	movq	-8(%rbp), %rax
	movb	$0, 28(%rax)
	.loc 2 1075 21
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc 2 1076 13
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc 2 1077 10
	movq	-8(%rbp), %rax
	.loc 2 1078 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	new_control_record, .-new_control_record
	.section	.rodata
	.align 8
.LC46:
	.string	"%s: integer expected after delimiter"
	.text
	.type	check_for_offset, @function
check_for_offset:
.LFB79:
	.loc 2 1087 1
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
	.loc 2 1088 7
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC17(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoimax@PLT
	.loc 2 1088 6
	testl	%eax, %eax
	je	.L183
.LBB17:
	.loc 2 1089 5
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC46(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L183:
.LBE17:
	.loc 2 1091 1
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	check_for_offset, .-check_for_offset
	.section	.rodata
	.align 8
.LC47:
	.string	"%s: '}' is required in repeat count"
	.align 8
.LC48:
	.string	"%s}: integer required between '{' and '}'"
	.text
	.type	parse_repeat_count, @function
parse_repeat_count:
.LFB80:
	.loc 2 1100 1
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
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 2 1100 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1104 15
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 1104 28
	leaq	-1(%rax), %rdx
	.loc 2 1104 7
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	.loc 2 1105 7
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1105 6
	cmpb	$125, %al
	je	.L185
.LBB18:
	.loc 2 1106 5
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC47(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L185:
.LBE18:
	.loc 2 1108 8
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 1110 10
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	.loc 2 1110 19
	movq	-32(%rbp), %rax
	subq	$1, %rax
	.loc 2 1110 6
	cmpq	%rax, %rdx
	jne	.L186
	.loc 2 1110 30 discriminator 1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	.loc 2 1110 25 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 1110 22 discriminator 1
	cmpb	$42, %al
	jne	.L186
	.loc 2 1111 23
	movq	-64(%rbp), %rax
	movb	$1, 28(%rax)
	jmp	.L187
.L186:
	.loc 2 1114 27
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdi
	.loc 2 1114 11
	leaq	-40(%rbp), %rax
	leaq	.LC17(%rip), %r8
	movq	%rax, %rcx
	movl	$10, %edx
	movl	$0, %esi
	call	xstrtoumax@PLT
	.loc 2 1114 10
	testl	%eax, %eax
	je	.L188
.LBB19:
	.loc 2 1116 11
	movq	global_argv(%rip), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC48(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L188:
.LBE19:
	.loc 2 1120 17
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 16(%rax)
.L187:
	.loc 2 1123 8
	movq	-32(%rbp), %rax
	movb	$125, (%rax)
	.loc 2 1124 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L189
	call	__stack_chk_fail@PLT
.L189:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	parse_repeat_count, .-parse_repeat_count
	.section	.rodata
	.align 8
.LC49:
	.string	"%s: closing delimiter '%c' missing"
	.align 8
.LC50:
	.string	"%s: invalid regular expression: %s"
	.text
	.type	extract_regexp, @function
extract_regexp:
.LFB81:
	.loc 2 1134 1
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
	movl	%edi, -68(%rbp)
	movl	%esi, %eax
	movq	%rdx, -80(%rbp)
	movb	%al, -72(%rbp)
	.loc 2 1136 8
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -49(%rbp)
	.loc 2 1141 19
	movsbl	-49(%rbp), %eax
	movq	-80(%rbp), %rdx
	addq	$1, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	strrchr@PLT
	movq	%rax, -48(%rbp)
	.loc 2 1142 6
	cmpq	$0, -48(%rbp)
	jne	.L191
.LBB20:
	.loc 2 1143 5
	movsbl	-49(%rbp), %ebx
	leaq	.LC49(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L191:
.LBE20:
	.loc 2 1146 23
	movq	-48(%rbp), %rax
	subq	-80(%rbp), %rax
	.loc 2 1146 29
	subq	$1, %rax
	.loc 2 1146 7
	movq	%rax, -40(%rbp)
	.loc 2 1147 7
	call	new_control_record
	movq	%rax, -32(%rbp)
	.loc 2 1148 13
	movq	-32(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, 24(%rax)
	.loc 2 1149 13
	movq	-32(%rbp), %rax
	movzbl	-72(%rbp), %edx
	movb	%dl, 29(%rax)
	.loc 2 1151 14
	movq	-32(%rbp), %rax
	movb	$1, 30(%rax)
	.loc 2 1152 25
	movq	-32(%rbp), %rax
	movq	$0, 32(%rax)
	.loc 2 1153 28
	movq	-32(%rbp), %rax
	movq	$0, 40(%rax)
	.loc 2 1154 28
	movl	$256, %edi
	call	xmalloc@PLT
	movq	%rax, %rdx
	.loc 2 1154 26
	movq	-32(%rbp), %rax
	movq	%rdx, 64(%rax)
	.loc 2 1155 28
	movq	-32(%rbp), %rax
	movq	$0, 72(%rax)
	.loc 2 1156 21
	movq	$710, rpl_re_syntax_options(%rip)
	.loc 2 1158 9
	movq	-32(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	rpl_re_compile_pattern@PLT
	movq	%rax, -24(%rbp)
	.loc 2 1159 6
	cmpq	$0, -24(%rbp)
	je	.L192
	.loc 2 1161 7
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1161 20
	leaq	.LC50(%rip), %rdi
	call	gettext@PLT
	.loc 2 1161 7
	movq	-24(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1162 7
	call	cleanup_fatal
.L192:
	.loc 2 1165 20
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 2 1165 6
	testb	%al, %al
	je	.L193
	.loc 2 1166 5
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_for_offset
.L193:
	.loc 2 1168 10
	movq	-32(%rbp), %rax
	.loc 2 1169 1
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	extract_regexp, .-extract_regexp
	.section	.rodata
.LC51:
	.string	"%s: invalid pattern"
	.align 8
.LC52:
	.string	"%s: line number must be greater than zero"
	.align 8
.LC53:
	.string	"line number %s is smaller than preceding line number, %s"
	.align 8
.LC54:
	.string	"warning: line number %s is the same as preceding line number"
	.text
	.type	parse_patterns, @function
parse_patterns:
.LFB82:
	.loc 2 1176 1
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
	movl	%esi, -88(%rbp)
	movq	%rdx, -96(%rbp)
	.loc 2 1176 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
.LBB21:
	.loc 2 1181 12
	movl	-88(%rbp), %eax
	movl	%eax, -68(%rbp)
	.loc 2 1181 3
	jmp	.L196
.L205:
	.loc 2 1183 16
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1183 11
	movzbl	(%rax), %eax
	.loc 2 1183 10
	cmpb	$47, %al
	je	.L197
	.loc 2 1183 35 discriminator 1
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1183 30 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 1183 27 discriminator 1
	cmpb	$37, %al
	jne	.L198
.L197:
	.loc 2 1185 55
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1185 15
	movq	(%rax), %rdx
	.loc 2 1185 39
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-96(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	.loc 2 1185 34
	movzbl	(%rax), %eax
	.loc 2 1185 15
	cmpb	$37, %al
	sete	%al
	movzbl	%al, %ecx
	movl	-68(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	extract_regexp
	movq	%rax, -56(%rbp)
	.loc 2 1185 13
	jmp	.L199
.L198:
	.loc 2 1189 15
	call	new_control_record
	movq	%rax, -56(%rbp)
	.loc 2 1190 21
	movq	-56(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, 24(%rax)
	.loc 2 1192 31
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1192 15
	movq	(%rax), %rax
	leaq	-64(%rbp), %rdx
	leaq	.LC17(%rip), %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xstrtoumax@PLT
	.loc 2 1192 14
	testl	%eax, %eax
	je	.L200
.LBB22:
	.loc 2 1193 13
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC51(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L200:
.LBE22:
	.loc 2 1194 19
	movq	-64(%rbp), %rax
	.loc 2 1194 14
	testq	%rax, %rax
	jne	.L201
.LBB23:
	.loc 2 1195 13
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	leaq	.LC52(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L201:
.LBE23:
	.loc 2 1197 19
	movq	-64(%rbp), %rdx
	movq	last_val.6759(%rip), %rax
	.loc 2 1197 14
	cmpq	%rax, %rdx
	jnb	.L202
.LBB24:
	.loc 2 1200 15
	movq	last_val.6759(%rip), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	umaxtostr@PLT
	movq	%rax, %r12
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	leaq	.LC53(%rip), %rdi
	call	gettext@PLT
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L202:
.LBE24:
	.loc 2 1205 19
	movq	-64(%rbp), %rdx
	movq	last_val.6759(%rip), %rax
	.loc 2 1205 14
	cmpq	%rax, %rdx
	jne	.L203
	.loc 2 1208 31
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1206 13
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1207 12
	leaq	.LC54(%rip), %rdi
	call	gettext@PLT
	.loc 2 1206 13
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L203:
	.loc 2 1210 20
	movq	-64(%rbp), %rax
	movq	%rax, last_val.6759(%rip)
	.loc 2 1212 29
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
.L199:
	.loc 2 1215 13
	movl	-68(%rbp), %eax
	addl	$1, %eax
	.loc 2 1215 10
	cmpl	%eax, -84(%rbp)
	jle	.L204
	.loc 2 1215 32 discriminator 1
	movl	-68(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 1215 27 discriminator 1
	movzbl	(%rax), %eax
	.loc 2 1215 24 discriminator 1
	cmpb	$123, %al
	jne	.L204
	.loc 2 1218 12
	addl	$1, -68(%rbp)
	.loc 2 1219 41
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1219 11
	movq	(%rax), %rdx
	movq	-56(%rbp), %rcx
	movl	-68(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	parse_repeat_count
.L204:
	.loc 2 1181 34 discriminator 2
	addl	$1, -68(%rbp)
.L196:
	.loc 2 1181 3 discriminator 1
	movl	-68(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L205
.LBE21:
	.loc 2 1222 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L206
	call	__stack_chk_fail@PLT
.L206:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	parse_patterns, .-parse_patterns
	.type	get_format_flags, @function
get_format_flags:
.LFB83:
	.loc 2 1233 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 1234 7
	movl	$0, -12(%rbp)
.LBB25:
	.loc 2 1236 15
	movq	$0, -8(%rbp)
.L214:
	.loc 2 1238 21
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.loc 2 1238 7
	cmpl	$48, %eax
	je	.L216
	cmpl	$48, %eax
	jg	.L209
	cmpl	$45, %eax
	je	.L216
	cmpl	$45, %eax
	jg	.L209
	cmpl	$35, %eax
	je	.L210
	cmpl	$39, %eax
	jne	.L209
	.loc 2 1245 17
	orl	$1, -12(%rbp)
	.loc 2 1246 11
	jmp	.L212
.L210:
	.loc 2 1249 17
	orl	$2, -12(%rbp)
	.loc 2 1250 11
	jmp	.L212
.L209:
	.loc 2 1253 22
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	.loc 2 1254 18
	movq	-8(%rbp), %rax
	jmp	.L215
.L216:
	.loc 2 1242 11
	nop
.L212:
	.loc 2 1236 33
	addq	$1, -8(%rbp)
	.loc 2 1238 7
	jmp	.L214
.L215:
.LBE25:
	.loc 2 1257 1 discriminator 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	get_format_flags, .-get_format_flags
	.section	.rodata
	.align 8
.LC55:
	.string	"missing conversion specifier in suffix"
	.align 8
.LC56:
	.string	"invalid conversion specifier in suffix: %c"
	.align 8
.LC57:
	.string	"invalid conversion specifier in suffix: \\%.3o"
	.align 8
.LC58:
	.string	"invalid flags in conversion specification: %%%c%c"
	.text
	.type	check_format_conv_type, @function
check_format_conv_type:
.LFB84:
	.loc 2 1264 1
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
	movl	%esi, -44(%rbp)
	.loc 2 1265 22
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1265 17
	movb	%al, -21(%rbp)
	.loc 2 1266 7
	movl	$1, -20(%rbp)
	.loc 2 1268 3
	movzbl	-21(%rbp), %eax
	testl	%eax, %eax
	je	.L218
	testl	%eax, %eax
	js	.L219
	cmpl	$120, %eax
	jg	.L219
	cmpl	$88, %eax
	jl	.L219
	subl	$88, %eax
	cmpl	$32, %eax
	ja	.L219
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L221(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L221(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L221:
	.long	.L220-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L223-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L223-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L220-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L229-.L221
	.long	.L219-.L221
	.long	.L219-.L221
	.long	.L220-.L221
	.text
.L223:
.LBB26:
	.loc 2 1272 15
	movq	-40(%rbp), %rax
	movb	$117, (%rax)
	.loc 2 1273 7
	jmp	.L224
.L220:
	.loc 2 1281 24
	movl	$2, -20(%rbp)
	.loc 2 1282 7
	jmp	.L224
.L218:
	.loc 2 1285 7
	leaq	.LC55(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L219:
	.loc 2 1288 11
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-21(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	.loc 2 1288 10
	testl	%eax, %eax
	je	.L225
.LBB27:
	.loc 2 1289 9
	movzbl	-21(%rbp), %ebx
	leaq	.LC56(%rip), %rdi
	call	gettext@PLT
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L225:
.LBE27:
.LBB28:
	.loc 2 1292 9
	movzbl	-21(%rbp), %ebx
	leaq	.LC57(%rip), %rdi
	call	gettext@PLT
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L229:
.LBE28:
	.loc 2 1276 7
	nop
.L224:
.LBE26:
	.loc 2 1296 15
	movl	-20(%rbp), %eax
	notl	%eax
	.loc 2 1296 13
	andl	-44(%rbp), %eax
	.loc 2 1296 6
	testl	%eax, %eax
	je	.L230
.LBB29:
	.loc 2 1297 5
	movzbl	-21(%rbp), %ebx
	movl	-20(%rbp), %eax
	notl	%eax
	andl	-44(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L227
	.loc 2 1297 5 is_stmt 0 discriminator 1
	movl	$35, %r12d
	jmp	.L228
.L227:
	.loc 2 1297 5 discriminator 2
	movl	$39, %r12d
.L228:
	.loc 2 1297 5 discriminator 4
	leaq	.LC58(%rip), %rdi
	call	gettext@PLT
	movl	%ebx, %r8d
	movl	%r12d, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L230:
.LBE29:
	.loc 2 1300 1 is_stmt 1
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	check_format_conv_type, .-check_format_conv_type
	.section	.rodata
	.align 8
.LC59:
	.string	"too many %% conversion specifications in suffix"
	.align 8
.LC60:
	.string	"missing %% conversion specification in suffix"
	.text
	.type	max_out, @function
max_out:
.LFB85:
	.loc 2 1307 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 1307 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 1308 8
	movb	$0, -25(%rbp)
.LBB30:
	.loc 2 1310 14
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 2 1310 3
	jmp	.L232
.L240:
	.loc 2 1311 9
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1311 8
	cmpb	$37, %al
	jne	.L233
	.loc 2 1311 19 discriminator 1
	addq	$1, -16(%rbp)
	.loc 2 1311 22 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1311 19 discriminator 1
	cmpb	$37, %al
	je	.L233
.LBB31:
	.loc 2 1313 12
	cmpb	$0, -25(%rbp)
	je	.L234
.LBB32:
	.loc 2 1314 11
	leaq	.LC59(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L234:
.LBE32:
	.loc 2 1316 17
	movb	$1, -25(%rbp)
	.loc 2 1318 14
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_format_flags
	.loc 2 1318 11
	addq	%rax, -16(%rbp)
	.loc 2 1319 15
	jmp	.L235
.L236:
	.loc 2 1320 12
	addq	$1, -16(%rbp)
.L235:
	.loc 2 1319 16
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 1319 15
	cmpl	$9, %eax
	jbe	.L236
	.loc 2 1321 13
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1321 12
	cmpb	$46, %al
	jne	.L237
	.loc 2 1322 17
	jmp	.L238
.L239:
	.loc 2 1323 13
	nop
.L238:
	.loc 2 1322 17
	addq	$1, -16(%rbp)
	.loc 2 1322 18
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 1322 17
	cmpl	$9, %eax
	jbe	.L239
.L237:
	.loc 2 1324 9
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_format_conv_type
.L233:
.LBE31:
	.loc 2 1310 31 discriminator 2
	addq	$1, -16(%rbp)
.L232:
	.loc 2 1310 26 discriminator 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 1310 3 discriminator 1
	testb	%al, %al
	jne	.L240
.LBE30:
	.loc 2 1327 7
	movzbl	-25(%rbp), %eax
	xorl	$1, %eax
	.loc 2 1327 6
	testb	%al, %al
	je	.L241
.LBB33:
	.loc 2 1328 5
	leaq	.LC60(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L241:
.LBE33:
	.loc 2 1331 16
	movq	-40(%rbp), %rax
	movl	$-1, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	snprintf@PLT
	movl	%eax, -20(%rbp)
	.loc 2 1332 6
	cmpl	$0, -20(%rbp)
	jns	.L242
	.loc 2 1333 5
	call	xalloc_die
.L242:
	.loc 2 1334 10
	movl	-20(%rbp), %eax
	cltq
	.loc 2 1335 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L244
	call	__stack_chk_fail@PLT
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	max_out, .-max_out
	.section	.rodata
.LC61:
	.string	"/usr/local/share/locale"
.LC62:
	.string	"xx"
.LC63:
	.string	"invalid number"
.LC64:
	.string	"David MacKenzie"
.LC65:
	.string	"Stuart Kemp"
.LC66:
	.string	"csplit"
.LC67:
	.string	"f:b:kn:sqz"
.LC68:
	.string	"missing operand"
.LC69:
	.string	"missing operand after %s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB86:
	.loc 2 1339 1
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
	movl	%edi, -212(%rbp)
	movq	%rsi, -224(%rbp)
	.loc 2 1339 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 1343 3
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_program_name@PLT
	.loc 2 1344 3
	leaq	.LC17(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	.loc 2 1345 3
	leaq	.LC61(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	bindtextdomain@PLT
	.loc 2 1346 3
	leaq	.LC3(%rip), %rdi
	call	textdomain@PLT
	.loc 2 1348 3
	movq	close_stdout@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	atexit@PLT
	.loc 2 1350 15
	movq	-224(%rbp), %rax
	movq	%rax, global_argv(%rip)
	.loc 2 1351 12
	movq	$0, controls(%rip)
	.loc 2 1352 16
	movq	$0, control_used(%rip)
	.loc 2 1353 18
	movb	$0, suppress_count(%rip)
	.loc 2 1354 16
	movb	$1, remove_files(%rip)
	.loc 2 1355 20
	movb	$0, suppress_matched(%rip)
	.loc 2 1356 10
	leaq	.LC62(%rip), %rax
	movq	%rax, prefix(%rip)
	.loc 2 1358 9
	jmp	.L246
.L259:
	.loc 2 1359 5
	cmpl	$128, -196(%rbp)
	jg	.L247
	cmpl	$98, -196(%rbp)
	jge	.L248
	cmpl	$-131, -196(%rbp)
	je	.L249
	cmpl	$-130, -196(%rbp)
	je	.L250
	jmp	.L247
.L248:
	movl	-196(%rbp), %eax
	subl	$98, %eax
	cmpl	$30, %eax
	ja	.L247
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L252(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L252(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L252:
	.long	.L258-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L257-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L256-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L255-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L254-.L252
	.long	.L247-.L252
	.long	.L254-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L253-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L247-.L252
	.long	.L251-.L252
	.text
.L257:
	.loc 2 1362 16
	movq	optarg(%rip), %rax
	movq	%rax, prefix(%rip)
	.loc 2 1363 9
	jmp	.L246
.L258:
	.loc 2 1366 16
	movq	optarg(%rip), %rax
	movq	%rax, suffix(%rip)
	.loc 2 1367 9
	jmp	.L246
.L256:
	.loc 2 1370 22
	movb	$0, remove_files(%rip)
	.loc 2 1371 9
	jmp	.L246
.L255:
	.loc 2 1375 30
	leaq	.LC63(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	.loc 2 1374 18
	movq	optarg(%rip), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	leaq	.LC17(%rip), %rcx
	movl	$2147483647, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	xdectoimax@PLT
	.loc 2 1374 16
	movl	%eax, digits(%rip)
	.loc 2 1376 9
	jmp	.L246
.L254:
	.loc 2 1380 24
	movb	$1, suppress_count(%rip)
	.loc 2 1381 9
	jmp	.L246
.L253:
	.loc 2 1384 27
	movb	$1, elide_empty_files(%rip)
	.loc 2 1385 9
	jmp	.L246
.L251:
	.loc 2 1388 26
	movb	$1, suppress_matched(%rip)
	.loc 2 1389 9
	jmp	.L246
.L250:
	.loc 2 1391 7
	movl	$0, %edi
	call	usage
.L249:
	.loc 2 1393 7
	movq	Version(%rip), %rdx
	movq	stdout(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	leaq	.LC64(%rip), %r9
	leaq	.LC65(%rip), %r8
	movq	%rdx, %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC66(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	version_etc@PLT
	addq	$16, %rsp
	movl	$0, %edi
	call	exit@PLT
.L247:
	.loc 2 1396 9
	movl	$1, %edi
	call	usage
.L246:
	.loc 2 1358 18
	movq	-224(%rbp), %rsi
	movl	-212(%rbp), %eax
	movl	$0, %r8d
	leaq	longopts(%rip), %rcx
	leaq	.LC67(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -196(%rbp)
	.loc 2 1358 9
	cmpl	$-1, -196(%rbp)
	jne	.L259
	.loc 2 1399 12
	movl	optind(%rip), %eax
	movl	-212(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 2 1399 6
	cmpl	$1, %eax
	jg	.L260
	.loc 2 1401 16
	movl	optind(%rip), %eax
	.loc 2 1401 10
	cmpl	%eax, -212(%rbp)
	jg	.L261
	.loc 2 1402 22
	leaq	.LC68(%rip), %rdi
	call	gettext@PLT
	.loc 2 1402 9
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	jmp	.L262
.L261:
	.loc 2 1404 64
	movl	-212(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1404 9
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 1404 22
	leaq	.LC69(%rip), %rdi
	call	gettext@PLT
	.loc 2 1404 9
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
.L262:
	.loc 2 1405 7
	movl	$1, %edi
	call	usage
.L260:
	.loc 2 1408 23
	movq	prefix(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -192(%rbp)
	.loc 2 1411 8
	movq	suffix(%rip), %rax
	.loc 2 1412 8
	testq	%rax, %rax
	je	.L263
	.loc 2 1411 10
	movq	suffix(%rip), %rax
	movq	%rax, %rdi
	call	max_out
	jmp	.L264
.L263:
	.loc 2 1412 10 discriminator 1
	movl	digits(%rip), %eax
	cmpl	$9, %eax
	jbe	.L265
	.loc 2 1412 10 is_stmt 0 discriminator 2
	movl	digits(%rip), %eax
	cltq
	jmp	.L264
.L265:
	.loc 2 1412 10 discriminator 3
	movl	$10, %eax
.L264:
	.loc 2 1409 10 is_stmt 1
	movq	%rax, -184(%rbp)
	.loc 2 1413 20
	movq	$-2, %rax
	subq	-192(%rbp), %rax
	.loc 2 1413 6
	cmpq	%rax, -184(%rbp)
	jbe	.L267
	.loc 2 1414 5
	call	xalloc_die
.L267:
	.loc 2 1415 40
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1415 20
	addq	$1, %rax
	movq	%rax, %rdi
	call	xmalloc@PLT
	.loc 2 1415 18
	movq	%rax, filename_space(%rip)
	.loc 2 1417 30
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	.loc 2 1417 23
	leaq	0(,%rax,8), %rdx
	movq	-224(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 1417 3
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	set_input_file
	.loc 2 1419 3
	movl	optind(%rip), %ecx
	movq	-224(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	parse_patterns
.LBB34:
	.loc 2 1447 5
	leaq	caught_signals(%rip), %rdi
	call	sigemptyset@PLT
	.loc 2 1448 12
	movl	$0, -200(%rbp)
	.loc 2 1448 5
	jmp	.L268
.L270:
	.loc 2 1450 9
	movl	-200(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sig.6853(%rip), %rax
	movl	(%rdx,%rax), %eax
	leaq	-176(%rbp), %rdx
	movl	$0, %esi
	movl	%eax, %edi
	call	sigaction@PLT
	.loc 2 1451 17
	movq	-176(%rbp), %rax
	.loc 2 1451 12
	cmpq	$1, %rax
	je	.L269
	.loc 2 1452 11
	movl	-200(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sig.6853(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	leaq	caught_signals(%rip), %rdi
	call	sigaddset@PLT
.L269:
	.loc 2 1448 29 discriminator 2
	addl	$1, -200(%rbp)
.L268:
	.loc 2 1448 5 discriminator 1
	cmpl	$10, -200(%rbp)
	jle	.L270
	.loc 2 1455 20
	leaq	interrupt_handler(%rip), %rax
	movq	%rax, -176(%rbp)
	.loc 2 1456 17
	movq	caught_signals(%rip), %rax
	movq	8+caught_signals(%rip), %rdx
	movq	%rax, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	16+caught_signals(%rip), %rax
	movq	24+caught_signals(%rip), %rdx
	movq	%rax, -152(%rbp)
	movq	%rdx, -144(%rbp)
	movq	32+caught_signals(%rip), %rax
	movq	40+caught_signals(%rip), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	48+caught_signals(%rip), %rax
	movq	56+caught_signals(%rip), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	64+caught_signals(%rip), %rax
	movq	72+caught_signals(%rip), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	80+caught_signals(%rip), %rax
	movq	88+caught_signals(%rip), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	96+caught_signals(%rip), %rax
	movq	104+caught_signals(%rip), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	112+caught_signals(%rip), %rax
	movq	120+caught_signals(%rip), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	.loc 2 1457 18
	movl	$0, -40(%rbp)
	.loc 2 1459 12
	movl	$0, -200(%rbp)
	.loc 2 1459 5
	jmp	.L271
.L273:
	.loc 2 1460 11
	movl	-200(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sig.6853(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	leaq	caught_signals(%rip), %rdi
	call	sigismember@PLT
	.loc 2 1460 10
	testl	%eax, %eax
	je	.L272
	.loc 2 1461 9
	movl	-200(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	sig.6853(%rip), %rax
	movl	(%rdx,%rax), %eax
	leaq	-176(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	sigaction@PLT
.L272:
	.loc 2 1459 29 discriminator 2
	addl	$1, -200(%rbp)
.L271:
	.loc 2 1459 5 discriminator 1
	cmpl	$10, -200(%rbp)
	jle	.L273
.LBE34:
	.loc 2 1464 3
	call	split_file
	.loc 2 1466 7
	movl	$0, %edi
	call	close@PLT
	.loc 2 1466 6
	testl	%eax, %eax
	je	.L274
	.loc 2 1468 24
	leaq	.LC31(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rbx
	.loc 2 1468 17
	call	__errno_location@PLT
	.loc 2 1468 7
	movl	(%rax), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 1469 7
	call	cleanup_fatal
.L274:
	.loc 2 1472 10
	movl	$0, %eax
	.loc 2 1473 1
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L276
	call	__stack_chk_fail@PLT
.L276:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC70:
	.string	"Try '%s --help' for more information.\n"
	.align 8
.LC71:
	.string	"Usage: %s [OPTION]... FILE PATTERN...\n"
	.align 8
.LC72:
	.string	"Output pieces of FILE separated by PATTERN(s) to files 'xx00', 'xx01', ...,\nand output byte counts of each piece to standard output.\n"
	.align 8
.LC73:
	.string	"\nRead standard input if FILE is -\n"
	.align 8
.LC74:
	.string	"  -b, --suffix-format=FORMAT  use sprintf FORMAT instead of %02d\n  -f, --prefix=PREFIX        use PREFIX instead of 'xx'\n  -k, --keep-files           do not remove output files on errors\n"
	.align 8
.LC75:
	.string	"      --suppress-matched     suppress the lines matching PATTERN\n"
	.align 8
.LC76:
	.string	"  -n, --digits=DIGITS        use specified number of digits instead of 2\n  -s, --quiet, --silent      do not print counts of output file sizes\n  -z, --elide-empty-files    remove empty output files\n"
	.align 8
.LC77:
	.string	"      --help     display this help and exit\n"
	.align 8
.LC78:
	.string	"      --version  output version information and exit\n"
	.align 8
.LC79:
	.ascii	"\nEach PATTERN may be:\n  INTEGER            copy up to but "
	.ascii	"not including specified line number\n  /REGEXP/[OFFSET]   co"
	.ascii	"py up to but not including a matching line\n  %REGEXP%[OFFSE"
	.ascii	"T]   skip to, "
	.string	"but not including a matching line\n  {INTEGER}          repeat the previous pattern specified number of times\n  {*}                repeat the previous pattern as many times as possible\n\nA line OFFSET is a required '+' or '-' followed by a positive integer.\n"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB87:
	.loc 2 1477 1
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
	.loc 2 1478 6
	cmpl	$0, -20(%rbp)
	je	.L278
	.loc 2 1479 5
	movq	program_name(%rip), %rbx
	leaq	.LC70(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L279
.L278:
	.loc 2 1482 7
	movq	program_name(%rip), %rbx
	.loc 2 1482 15
	leaq	.LC71(%rip), %rdi
	call	gettext@PLT
	.loc 2 1482 7
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 2 1486 7
	movq	stdout(%rip), %rbx
	leaq	.LC72(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1490 8
	movq	stdout(%rip), %rbx
	leaq	.LC73(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1495 7
	call	emit_mandatory_arg_note
	.loc 2 1497 7
	movq	stdout(%rip), %rbx
	leaq	.LC74(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1502 7
	movq	stdout(%rip), %rbx
	leaq	.LC75(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1505 7
	movq	stdout(%rip), %rbx
	leaq	.LC76(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1510 7
	movq	stdout(%rip), %rbx
	leaq	.LC77(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1511 7
	movq	stdout(%rip), %rbx
	leaq	.LC78(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1512 7
	movq	stdout(%rip), %rbx
	leaq	.LC79(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 1523 7
	leaq	.LC66(%rip), %rdi
	call	emit_ancillary_info
.L279:
	.loc 2 1525 3
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit@PLT
	.cfi_endproc
.LFE87:
	.size	usage, .-usage
	.local	prev_buf.6591
	.comm	prev_buf.6591,8,8
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.6598, @object
	.size	__PRETTY_FUNCTION__.6598, 10
__PRETTY_FUNCTION__.6598:
	.string	"find_line"
	.local	control_allocated.6718
	.comm	control_allocated.6718,8,8
	.local	last_val.6759
	.comm	last_val.6759,8,8
	.align 32
	.type	sig.6853, @object
	.size	sig.6853, 44
sig.6853:
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
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h"
	.file 11 "./lib/sys/select.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h"
	.file 14 "/usr/include/signal.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/sigaction.h"
	.file 16 "/usr/include/time.h"
	.file 17 "/usr/include/unistd.h"
	.file 18 "/usr/include/errno.h"
	.file 19 "src/version.h"
	.file 20 "./lib/exitfail.h"
	.file 21 "/usr/include/stdint.h"
	.file 22 "./lib/timespec.h"
	.file 23 "/usr/include/ctype.h"
	.file 24 "./lib/xalloc-oversized.h"
	.file 25 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 26 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 27 "/usr/include/stdio.h"
	.file 28 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 29 "./lib/version-etc.h"
	.file 30 "./lib/progname.h"
	.file 31 "./lib/quotearg.h"
	.file 32 "./lib/regex.h"
	.file 33 "./lib/error.h"
	.file 34 "./lib/quote.h"
	.file 35 "./lib/xstrtol.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x20ef
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF347
	.byte	0xc
	.long	.LASF348
	.long	.LASF349
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
	.long	0x44
	.uleb128 0x4
	.long	0x39
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x6
	.long	0x44
	.uleb128 0x2
	.long	.LASF1
	.byte	0x3
	.byte	0x32
	.byte	0xc
	.long	0x5c
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	0x5c
	.uleb128 0x6
	.long	0x5c
	.uleb128 0x2
	.long	.LASF3
	.byte	0x3
	.byte	0x37
	.byte	0xc
	.long	0x5c
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
	.byte	0x3b
	.byte	0xc
	.long	0x5c
	.uleb128 0x8
	.long	.LASF73
	.byte	0x20
	.byte	0x4
	.byte	0x32
	.byte	0x8
	.long	0xc7
	.uleb128 0x9
	.long	.LASF5
	.byte	0x4
	.byte	0x34
	.byte	0xf
	.long	0xcc
	.byte	0
	.uleb128 0x9
	.long	.LASF6
	.byte	0x4
	.byte	0x37
	.byte	0x7
	.long	0x5c
	.byte	0x8
	.uleb128 0x9
	.long	.LASF7
	.byte	0x4
	.byte	0x38
	.byte	0x8
	.long	0xdc
	.byte	0x10
	.uleb128 0xa
	.string	"val"
	.byte	0x4
	.byte	0x39
	.byte	0x7
	.long	0x5c
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.long	0x85
	.uleb128 0x3
	.byte	0x8
	.long	0x4b
	.uleb128 0x6
	.long	0xcc
	.uleb128 0x4
	.long	0xcc
	.uleb128 0x3
	.byte	0x8
	.long	0x5c
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF8
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.long	0xf0
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF13
	.uleb128 0xb
	.long	.LASF15
	.byte	0x5
	.byte	0x2a
	.byte	0x16
	.long	0xf0
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0xb
	.long	.LASF16
	.byte	0x5
	.byte	0x48
	.byte	0x12
	.long	0x11d
	.uleb128 0xb
	.long	.LASF17
	.byte	0x5
	.byte	0x49
	.byte	0x1b
	.long	0xfc
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.byte	0x92
	.byte	0x19
	.long	0xf0
	.uleb128 0xb
	.long	.LASF19
	.byte	0x5
	.byte	0x98
	.byte	0x19
	.long	0x11d
	.uleb128 0xb
	.long	.LASF20
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.long	0x11d
	.uleb128 0xb
	.long	.LASF21
	.byte	0x5
	.byte	0x9a
	.byte	0x19
	.long	0x5c
	.uleb128 0xb
	.long	.LASF22
	.byte	0x5
	.byte	0x9c
	.byte	0x1b
	.long	0x11d
	.uleb128 0xb
	.long	.LASF23
	.byte	0x5
	.byte	0xa0
	.byte	0x1a
	.long	0x11d
	.uleb128 0xc
	.byte	0x8
	.uleb128 0xb
	.long	.LASF24
	.byte	0x5
	.byte	0xc1
	.byte	0x1b
	.long	0x11d
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.byte	0x6c
	.byte	0x13
	.long	0x186
	.uleb128 0xb
	.long	.LASF26
	.byte	0x7
	.byte	0x7
	.byte	0x12
	.long	0x178
	.uleb128 0xb
	.long	.LASF27
	.byte	0x8
	.byte	0xd1
	.byte	0x17
	.long	0xfc
	.uleb128 0xd
	.byte	0x80
	.byte	0x9
	.byte	0x5
	.byte	0x9
	.long	0x1cd
	.uleb128 0x9
	.long	.LASF28
	.byte	0x9
	.byte	0x7
	.byte	0x15
	.long	0x1cd
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0xfc
	.long	0x1dd
	.uleb128 0xf
	.long	0xfc
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.long	.LASF29
	.byte	0x9
	.byte	0x8
	.byte	0x3
	.long	0x1b6
	.uleb128 0xb
	.long	.LASF30
	.byte	0xa
	.byte	0x7
	.byte	0x14
	.long	0x1dd
	.uleb128 0x10
	.long	.LASF31
	.byte	0xb
	.value	0x30c
	.byte	0x1
	.long	0x5c
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF32
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF33
	.uleb128 0x11
	.long	.LASF350
	.byte	0x8
	.byte	0xc
	.byte	0x18
	.byte	0x7
	.long	0x236
	.uleb128 0x12
	.long	.LASF34
	.byte	0xc
	.byte	0x1a
	.byte	0x7
	.long	0x5c
	.uleb128 0x12
	.long	.LASF35
	.byte	0xc
	.byte	0x1b
	.byte	0x9
	.long	0x184
	.byte	0
	.uleb128 0xb
	.long	.LASF36
	.byte	0xc
	.byte	0x1e
	.byte	0x16
	.long	0x210
	.uleb128 0xd
	.byte	0x8
	.byte	0xd
	.byte	0x38
	.byte	0x2
	.long	0x266
	.uleb128 0x9
	.long	.LASF37
	.byte	0xd
	.byte	0x3a
	.byte	0xe
	.long	0x160
	.byte	0
	.uleb128 0x9
	.long	.LASF38
	.byte	0xd
	.byte	0x3b
	.byte	0xe
	.long	0x13c
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0xd
	.byte	0x3f
	.byte	0x2
	.long	0x297
	.uleb128 0x9
	.long	.LASF39
	.byte	0xd
	.byte	0x41
	.byte	0xa
	.long	0x5c
	.byte	0
	.uleb128 0x9
	.long	.LASF40
	.byte	0xd
	.byte	0x42
	.byte	0xa
	.long	0x5c
	.byte	0x4
	.uleb128 0x9
	.long	.LASF41
	.byte	0xd
	.byte	0x43
	.byte	0x11
	.long	0x236
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0xd
	.byte	0x47
	.byte	0x2
	.long	0x2c8
	.uleb128 0x9
	.long	.LASF37
	.byte	0xd
	.byte	0x49
	.byte	0xe
	.long	0x160
	.byte	0
	.uleb128 0x9
	.long	.LASF38
	.byte	0xd
	.byte	0x4a
	.byte	0xe
	.long	0x13c
	.byte	0x4
	.uleb128 0x9
	.long	.LASF41
	.byte	0xd
	.byte	0x4b
	.byte	0x11
	.long	0x236
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x20
	.byte	0xd
	.byte	0x4f
	.byte	0x2
	.long	0x313
	.uleb128 0x9
	.long	.LASF37
	.byte	0xd
	.byte	0x51
	.byte	0xe
	.long	0x160
	.byte	0
	.uleb128 0x9
	.long	.LASF38
	.byte	0xd
	.byte	0x52
	.byte	0xe
	.long	0x13c
	.byte	0x4
	.uleb128 0x9
	.long	.LASF42
	.byte	0xd
	.byte	0x53
	.byte	0xa
	.long	0x5c
	.byte	0x8
	.uleb128 0x9
	.long	.LASF43
	.byte	0xd
	.byte	0x54
	.byte	0x13
	.long	0x16c
	.byte	0x10
	.uleb128 0x9
	.long	.LASF44
	.byte	0xd
	.byte	0x55
	.byte	0x13
	.long	0x16c
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0xd
	.byte	0x61
	.byte	0x3
	.long	0x337
	.uleb128 0x9
	.long	.LASF45
	.byte	0xd
	.byte	0x63
	.byte	0xd
	.long	0x184
	.byte	0
	.uleb128 0x9
	.long	.LASF46
	.byte	0xd
	.byte	0x64
	.byte	0xd
	.long	0x184
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.byte	0x10
	.byte	0xd
	.byte	0x5e
	.byte	0x6
	.long	0x359
	.uleb128 0x12
	.long	.LASF47
	.byte	0xd
	.byte	0x65
	.byte	0x7
	.long	0x313
	.uleb128 0x12
	.long	.LASF48
	.byte	0xd
	.byte	0x67
	.byte	0xe
	.long	0x111
	.byte	0
	.uleb128 0xd
	.byte	0x20
	.byte	0xd
	.byte	0x59
	.byte	0x2
	.long	0x38a
	.uleb128 0x9
	.long	.LASF49
	.byte	0xd
	.byte	0x5b
	.byte	0xc
	.long	0x184
	.byte	0
	.uleb128 0x9
	.long	.LASF50
	.byte	0xd
	.byte	0x5d
	.byte	0x10
	.long	0x10a
	.byte	0x8
	.uleb128 0x9
	.long	.LASF51
	.byte	0xd
	.byte	0x68
	.byte	0xa
	.long	0x337
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0xd
	.byte	0x6c
	.byte	0x2
	.long	0x3ae
	.uleb128 0x9
	.long	.LASF52
	.byte	0xd
	.byte	0x6e
	.byte	0x15
	.long	0x11d
	.byte	0
	.uleb128 0x9
	.long	.LASF53
	.byte	0xd
	.byte	0x6f
	.byte	0xa
	.long	0x5c
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0xd
	.byte	0x74
	.byte	0x2
	.long	0x3df
	.uleb128 0x9
	.long	.LASF54
	.byte	0xd
	.byte	0x76
	.byte	0xc
	.long	0x184
	.byte	0
	.uleb128 0x9
	.long	.LASF55
	.byte	0xd
	.byte	0x77
	.byte	0xa
	.long	0x5c
	.byte	0x8
	.uleb128 0x9
	.long	.LASF56
	.byte	0xd
	.byte	0x78
	.byte	0x13
	.long	0xf0
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.byte	0x70
	.byte	0xd
	.byte	0x33
	.byte	0x5
	.long	0x449
	.uleb128 0x12
	.long	.LASF57
	.byte	0xd
	.byte	0x35
	.byte	0x6
	.long	0x449
	.uleb128 0x12
	.long	.LASF58
	.byte	0xd
	.byte	0x3c
	.byte	0x6
	.long	0x242
	.uleb128 0x12
	.long	.LASF59
	.byte	0xd
	.byte	0x44
	.byte	0x6
	.long	0x266
	.uleb128 0x14
	.string	"_rt"
	.byte	0xd
	.byte	0x4c
	.byte	0x6
	.long	0x297
	.uleb128 0x12
	.long	.LASF60
	.byte	0xd
	.byte	0x56
	.byte	0x6
	.long	0x2c8
	.uleb128 0x12
	.long	.LASF61
	.byte	0xd
	.byte	0x69
	.byte	0x6
	.long	0x359
	.uleb128 0x12
	.long	.LASF62
	.byte	0xd
	.byte	0x70
	.byte	0x6
	.long	0x38a
	.uleb128 0x12
	.long	.LASF63
	.byte	0xd
	.byte	0x79
	.byte	0x6
	.long	0x3ae
	.byte	0
	.uleb128 0xe
	.long	0x5c
	.long	0x459
	.uleb128 0xf
	.long	0xfc
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.byte	0x80
	.byte	0xd
	.byte	0x24
	.byte	0x9
	.long	0x4a4
	.uleb128 0x9
	.long	.LASF64
	.byte	0xd
	.byte	0x26
	.byte	0x9
	.long	0x5c
	.byte	0
	.uleb128 0x9
	.long	.LASF65
	.byte	0xd
	.byte	0x28
	.byte	0x9
	.long	0x5c
	.byte	0x4
	.uleb128 0x9
	.long	.LASF66
	.byte	0xd
	.byte	0x2a
	.byte	0x9
	.long	0x5c
	.byte	0x8
	.uleb128 0x9
	.long	.LASF67
	.byte	0xd
	.byte	0x30
	.byte	0x9
	.long	0x5c
	.byte	0xc
	.uleb128 0x9
	.long	.LASF68
	.byte	0xd
	.byte	0x7b
	.byte	0x9
	.long	0x3df
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF69
	.byte	0xd
	.byte	0x7c
	.byte	0x5
	.long	0x459
	.uleb128 0xb
	.long	.LASF70
	.byte	0xe
	.byte	0x48
	.byte	0x10
	.long	0x4bc
	.uleb128 0x3
	.byte	0x8
	.long	0x4c2
	.uleb128 0x15
	.long	0x4cd
	.uleb128 0x16
	.long	0x5c
	.byte	0
	.uleb128 0x13
	.byte	0x8
	.byte	0xf
	.byte	0x1f
	.byte	0x5
	.long	0x4ef
	.uleb128 0x12
	.long	.LASF71
	.byte	0xf
	.byte	0x22
	.byte	0x11
	.long	0x4b0
	.uleb128 0x12
	.long	.LASF72
	.byte	0xf
	.byte	0x24
	.byte	0x9
	.long	0x50a
	.byte	0
	.uleb128 0x15
	.long	0x504
	.uleb128 0x16
	.long	0x5c
	.uleb128 0x16
	.long	0x504
	.uleb128 0x16
	.long	0x184
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4a4
	.uleb128 0x3
	.byte	0x8
	.long	0x4ef
	.uleb128 0x8
	.long	.LASF74
	.byte	0x98
	.byte	0xf
	.byte	0x1b
	.byte	0x8
	.long	0x552
	.uleb128 0x9
	.long	.LASF75
	.byte	0xf
	.byte	0x26
	.byte	0x5
	.long	0x4cd
	.byte	0
	.uleb128 0x9
	.long	.LASF76
	.byte	0xf
	.byte	0x2e
	.byte	0x10
	.long	0x1dd
	.byte	0x8
	.uleb128 0x9
	.long	.LASF77
	.byte	0xf
	.byte	0x31
	.byte	0x9
	.long	0x5c
	.byte	0x88
	.uleb128 0x9
	.long	.LASF78
	.byte	0xf
	.byte	0x34
	.byte	0xc
	.long	0x553
	.byte	0x90
	.byte	0
	.uleb128 0x17
	.uleb128 0x3
	.byte	0x8
	.long	0x552
	.uleb128 0xe
	.long	0xd2
	.long	0x569
	.uleb128 0xf
	.long	0xfc
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.long	0x559
	.uleb128 0x10
	.long	.LASF79
	.byte	0xe
	.value	0x11e
	.byte	0x1a
	.long	0x569
	.uleb128 0x10
	.long	.LASF80
	.byte	0xe
	.value	0x11f
	.byte	0x1a
	.long	0x569
	.uleb128 0xe
	.long	0x39
	.long	0x598
	.uleb128 0xf
	.long	0xfc
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF81
	.byte	0x10
	.byte	0x9f
	.byte	0xe
	.long	0x588
	.uleb128 0x2
	.long	.LASF82
	.byte	0x10
	.byte	0xa0
	.byte	0xc
	.long	0x5c
	.uleb128 0x2
	.long	.LASF83
	.byte	0x10
	.byte	0xa1
	.byte	0x11
	.long	0x11d
	.uleb128 0x2
	.long	.LASF84
	.byte	0x10
	.byte	0xa6
	.byte	0xe
	.long	0x588
	.uleb128 0x2
	.long	.LASF85
	.byte	0x10
	.byte	0xae
	.byte	0xc
	.long	0x5c
	.uleb128 0x2
	.long	.LASF86
	.byte	0x10
	.byte	0xaf
	.byte	0x11
	.long	0x11d
	.uleb128 0x10
	.long	.LASF87
	.byte	0x10
	.value	0x112
	.byte	0xc
	.long	0x5c
	.uleb128 0xb
	.long	.LASF88
	.byte	0x8
	.byte	0x8f
	.byte	0x1a
	.long	0x11d
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.long	.LASF89
	.uleb128 0x10
	.long	.LASF90
	.byte	0x11
	.value	0x21f
	.byte	0xf
	.long	0x60d
	.uleb128 0x3
	.byte	0x8
	.long	0x39
	.uleb128 0x10
	.long	.LASF91
	.byte	0x11
	.value	0x221
	.byte	0xf
	.long	0x60d
	.uleb128 0x2
	.long	.LASF92
	.byte	0x12
	.byte	0x2d
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF93
	.byte	0x12
	.byte	0x2e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.long	.LASF94
	.byte	0x13
	.byte	0x1
	.byte	0x14
	.long	0xcc
	.uleb128 0x2
	.long	.LASF95
	.byte	0x14
	.byte	0x12
	.byte	0x15
	.long	0x63
	.uleb128 0xb
	.long	.LASF96
	.byte	0x15
	.byte	0x65
	.byte	0x15
	.long	0x124
	.uleb128 0xb
	.long	.LASF97
	.byte	0x15
	.byte	0x66
	.byte	0x16
	.long	0x130
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0xf0
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.long	0x680
	.uleb128 0x19
	.long	.LASF98
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0xf0
	.byte	0x16
	.byte	0x2a
	.byte	0x6
	.long	0x695
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x9
	.byte	0
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0xf0
	.byte	0x17
	.byte	0x2f
	.byte	0x1
	.long	0x6f4
	.uleb128 0x1b
	.long	.LASF100
	.value	0x100
	.uleb128 0x1b
	.long	.LASF101
	.value	0x200
	.uleb128 0x1b
	.long	.LASF102
	.value	0x400
	.uleb128 0x1b
	.long	.LASF103
	.value	0x800
	.uleb128 0x1b
	.long	.LASF104
	.value	0x1000
	.uleb128 0x1b
	.long	.LASF105
	.value	0x2000
	.uleb128 0x1b
	.long	.LASF106
	.value	0x4000
	.uleb128 0x1b
	.long	.LASF107
	.value	0x8000
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x4
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF112
	.byte	0x18
	.byte	0x22
	.byte	0x13
	.long	0x5ed
	.uleb128 0x8
	.long	.LASF113
	.byte	0xd8
	.byte	0x19
	.byte	0x31
	.byte	0x8
	.long	0x887
	.uleb128 0x9
	.long	.LASF114
	.byte	0x19
	.byte	0x33
	.byte	0x7
	.long	0x5c
	.byte	0
	.uleb128 0x9
	.long	.LASF115
	.byte	0x19
	.byte	0x36
	.byte	0x9
	.long	0x39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF116
	.byte	0x19
	.byte	0x37
	.byte	0x9
	.long	0x39
	.byte	0x10
	.uleb128 0x9
	.long	.LASF117
	.byte	0x19
	.byte	0x38
	.byte	0x9
	.long	0x39
	.byte	0x18
	.uleb128 0x9
	.long	.LASF118
	.byte	0x19
	.byte	0x39
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x9
	.long	.LASF119
	.byte	0x19
	.byte	0x3a
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF120
	.byte	0x19
	.byte	0x3b
	.byte	0x9
	.long	0x39
	.byte	0x30
	.uleb128 0x9
	.long	.LASF121
	.byte	0x19
	.byte	0x3c
	.byte	0x9
	.long	0x39
	.byte	0x38
	.uleb128 0x9
	.long	.LASF122
	.byte	0x19
	.byte	0x3d
	.byte	0x9
	.long	0x39
	.byte	0x40
	.uleb128 0x9
	.long	.LASF123
	.byte	0x19
	.byte	0x40
	.byte	0x9
	.long	0x39
	.byte	0x48
	.uleb128 0x9
	.long	.LASF124
	.byte	0x19
	.byte	0x41
	.byte	0x9
	.long	0x39
	.byte	0x50
	.uleb128 0x9
	.long	.LASF125
	.byte	0x19
	.byte	0x42
	.byte	0x9
	.long	0x39
	.byte	0x58
	.uleb128 0x9
	.long	.LASF126
	.byte	0x19
	.byte	0x44
	.byte	0x16
	.long	0x8a0
	.byte	0x60
	.uleb128 0x9
	.long	.LASF127
	.byte	0x19
	.byte	0x46
	.byte	0x14
	.long	0x8a6
	.byte	0x68
	.uleb128 0x9
	.long	.LASF128
	.byte	0x19
	.byte	0x48
	.byte	0x7
	.long	0x5c
	.byte	0x70
	.uleb128 0x9
	.long	.LASF129
	.byte	0x19
	.byte	0x49
	.byte	0x7
	.long	0x5c
	.byte	0x74
	.uleb128 0x9
	.long	.LASF130
	.byte	0x19
	.byte	0x4a
	.byte	0xb
	.long	0x148
	.byte	0x78
	.uleb128 0x9
	.long	.LASF131
	.byte	0x19
	.byte	0x4d
	.byte	0x12
	.long	0xe9
	.byte	0x80
	.uleb128 0x9
	.long	.LASF132
	.byte	0x19
	.byte	0x4e
	.byte	0xf
	.long	0x103
	.byte	0x82
	.uleb128 0x9
	.long	.LASF133
	.byte	0x19
	.byte	0x4f
	.byte	0x8
	.long	0x8ac
	.byte	0x83
	.uleb128 0x9
	.long	.LASF134
	.byte	0x19
	.byte	0x51
	.byte	0xf
	.long	0x8bc
	.byte	0x88
	.uleb128 0x9
	.long	.LASF135
	.byte	0x19
	.byte	0x59
	.byte	0xd
	.long	0x154
	.byte	0x90
	.uleb128 0x9
	.long	.LASF136
	.byte	0x19
	.byte	0x5b
	.byte	0x17
	.long	0x8c7
	.byte	0x98
	.uleb128 0x9
	.long	.LASF137
	.byte	0x19
	.byte	0x5c
	.byte	0x19
	.long	0x8d2
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF138
	.byte	0x19
	.byte	0x5d
	.byte	0x14
	.long	0x8a6
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF139
	.byte	0x19
	.byte	0x5e
	.byte	0x9
	.long	0x184
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF140
	.byte	0x19
	.byte	0x5f
	.byte	0xa
	.long	0x1aa
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF141
	.byte	0x19
	.byte	0x60
	.byte	0x7
	.long	0x5c
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF142
	.byte	0x19
	.byte	0x62
	.byte	0x8
	.long	0x8d8
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF143
	.byte	0x1a
	.byte	0x7
	.byte	0x19
	.long	0x700
	.uleb128 0x1c
	.long	.LASF351
	.byte	0x19
	.byte	0x2b
	.byte	0xe
	.uleb128 0x1d
	.long	.LASF144
	.uleb128 0x3
	.byte	0x8
	.long	0x89b
	.uleb128 0x3
	.byte	0x8
	.long	0x700
	.uleb128 0xe
	.long	0x44
	.long	0x8bc
	.uleb128 0xf
	.long	0xfc
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x893
	.uleb128 0x1d
	.long	.LASF145
	.uleb128 0x3
	.byte	0x8
	.long	0x8c2
	.uleb128 0x1d
	.long	.LASF146
	.uleb128 0x3
	.byte	0x8
	.long	0x8cd
	.uleb128 0xe
	.long	0x44
	.long	0x8e8
	.uleb128 0xf
	.long	0xfc
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF147
	.byte	0x1b
	.byte	0x89
	.byte	0xe
	.long	0x8f4
	.uleb128 0x3
	.byte	0x8
	.long	0x887
	.uleb128 0x2
	.long	.LASF148
	.byte	0x1b
	.byte	0x8a
	.byte	0xe
	.long	0x8f4
	.uleb128 0x2
	.long	.LASF149
	.byte	0x1b
	.byte	0x8b
	.byte	0xe
	.long	0x8f4
	.uleb128 0x2
	.long	.LASF150
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.long	0x5c
	.uleb128 0xe
	.long	0xd2
	.long	0x929
	.uleb128 0x1e
	.byte	0
	.uleb128 0x6
	.long	0x91e
	.uleb128 0x2
	.long	.LASF151
	.byte	0x1c
	.byte	0x1b
	.byte	0x1a
	.long	0x929
	.uleb128 0x2
	.long	.LASF152
	.byte	0x1c
	.byte	0x1e
	.byte	0xc
	.long	0x5c
	.uleb128 0x2
	.long	.LASF153
	.byte	0x1c
	.byte	0x1f
	.byte	0x1a
	.long	0x929
	.uleb128 0x1f
	.byte	0x5
	.byte	0x4
	.long	0x5c
	.byte	0x1
	.value	0x147
	.byte	0x1
	.long	0x970
	.uleb128 0x20
	.long	.LASF154
	.sleb128 -130
	.uleb128 0x20
	.long	.LASF155
	.sleb128 -131
	.byte	0
	.uleb128 0xe
	.long	0x4b
	.long	0x97b
	.uleb128 0x1e
	.byte	0
	.uleb128 0x6
	.long	0x970
	.uleb128 0x2
	.long	.LASF156
	.byte	0x1d
	.byte	0x19
	.byte	0x13
	.long	0x97b
	.uleb128 0x2
	.long	.LASF157
	.byte	0x1e
	.byte	0x20
	.byte	0x14
	.long	0xcc
	.uleb128 0x21
	.long	.LASF196
	.byte	0x7
	.byte	0x4
	.long	0xf0
	.byte	0x1f
	.byte	0x20
	.byte	0x6
	.long	0x9ed
	.uleb128 0x1a
	.long	.LASF158
	.byte	0
	.uleb128 0x1a
	.long	.LASF159
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF160
	.byte	0x2
	.uleb128 0x1a
	.long	.LASF161
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF162
	.byte	0x4
	.uleb128 0x1a
	.long	.LASF163
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF164
	.byte	0x6
	.uleb128 0x1a
	.long	.LASF165
	.byte	0x7
	.uleb128 0x1a
	.long	.LASF166
	.byte	0x8
	.uleb128 0x1a
	.long	.LASF167
	.byte	0x9
	.uleb128 0x1a
	.long	.LASF168
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	0x998
	.uleb128 0x10
	.long	.LASF169
	.byte	0x1f
	.value	0x10b
	.byte	0x1a
	.long	0x929
	.uleb128 0xe
	.long	0x9ed
	.long	0xa0a
	.uleb128 0x1e
	.byte	0
	.uleb128 0x6
	.long	0x9ff
	.uleb128 0x10
	.long	.LASF170
	.byte	0x1f
	.value	0x10c
	.byte	0x21
	.long	0xa0a
	.uleb128 0xb
	.long	.LASF171
	.byte	0x20
	.byte	0x31
	.byte	0x10
	.long	0x1aa
	.uleb128 0xb
	.long	.LASF172
	.byte	0x20
	.byte	0x48
	.byte	0x1b
	.long	0xfc
	.uleb128 0x2
	.long	.LASF173
	.byte	0x20
	.byte	0xd3
	.byte	0x15
	.long	0xa28
	.uleb128 0x22
	.long	.LASF174
	.byte	0x40
	.byte	0x20
	.value	0x19d
	.byte	0x8
	.long	0xb28
	.uleb128 0x23
	.long	.LASF175
	.byte	0x20
	.value	0x1a1
	.byte	0x14
	.long	0xb2d
	.byte	0
	.uleb128 0x23
	.long	.LASF176
	.byte	0x20
	.value	0x1a4
	.byte	0x14
	.long	0xa1c
	.byte	0x8
	.uleb128 0x23
	.long	.LASF177
	.byte	0x20
	.value	0x1a7
	.byte	0x14
	.long	0xa1c
	.byte	0x10
	.uleb128 0x23
	.long	.LASF178
	.byte	0x20
	.value	0x1aa
	.byte	0x10
	.long	0xa28
	.byte	0x18
	.uleb128 0x23
	.long	.LASF179
	.byte	0x20
	.value	0x1af
	.byte	0x9
	.long	0x39
	.byte	0x20
	.uleb128 0x23
	.long	.LASF180
	.byte	0x20
	.value	0x1b5
	.byte	0x17
	.long	0xb33
	.byte	0x28
	.uleb128 0x23
	.long	.LASF181
	.byte	0x20
	.value	0x1b8
	.byte	0xa
	.long	0x1aa
	.byte	0x30
	.uleb128 0x24
	.long	.LASF182
	.byte	0x20
	.value	0x1be
	.byte	0xc
	.long	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x38
	.uleb128 0x24
	.long	.LASF183
	.byte	0x20
	.value	0x1c9
	.byte	0xc
	.long	0xf0
	.byte	0x4
	.byte	0x2
	.byte	0x1d
	.byte	0x38
	.uleb128 0x24
	.long	.LASF184
	.byte	0x20
	.value	0x1cd
	.byte	0xc
	.long	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x38
	.uleb128 0x24
	.long	.LASF185
	.byte	0x20
	.value	0x1d1
	.byte	0xc
	.long	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x38
	.uleb128 0x24
	.long	.LASF186
	.byte	0x20
	.value	0x1d5
	.byte	0xc
	.long	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x38
	.uleb128 0x24
	.long	.LASF187
	.byte	0x20
	.value	0x1d8
	.byte	0xc
	.long	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x38
	.uleb128 0x24
	.long	.LASF188
	.byte	0x20
	.value	0x1db
	.byte	0xc
	.long	0xf0
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x38
	.byte	0
	.uleb128 0x1d
	.long	.LASF189
	.uleb128 0x3
	.byte	0x8
	.long	0xb28
	.uleb128 0x3
	.byte	0x8
	.long	0xe2
	.uleb128 0x25
	.long	.LASF190
	.byte	0x20
	.value	0x1e6
	.byte	0x11
	.long	0x192
	.uleb128 0x2
	.long	.LASF191
	.byte	0x21
	.byte	0x32
	.byte	0xf
	.long	0x553
	.uleb128 0x2
	.long	.LASF192
	.byte	0x21
	.byte	0x35
	.byte	0x15
	.long	0xf0
	.uleb128 0x2
	.long	.LASF193
	.byte	0x21
	.byte	0x39
	.byte	0xc
	.long	0x5c
	.uleb128 0x1d
	.long	.LASF194
	.uleb128 0x2
	.long	.LASF195
	.byte	0x22
	.byte	0x19
	.byte	0x1f
	.long	0xb6a
	.uleb128 0x21
	.long	.LASF197
	.byte	0x7
	.byte	0x4
	.long	0xf0
	.byte	0x23
	.byte	0x19
	.byte	0x6
	.long	0xbac
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
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF202
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF203
	.byte	0x60
	.byte	0x2
	.byte	0x33
	.byte	0x8
	.long	0xc22
	.uleb128 0x9
	.long	.LASF204
	.byte	0x2
	.byte	0x35
	.byte	0xc
	.long	0x650
	.byte	0
	.uleb128 0x9
	.long	.LASF205
	.byte	0x2
	.byte	0x36
	.byte	0xd
	.long	0x65c
	.byte	0x8
	.uleb128 0x9
	.long	.LASF206
	.byte	0x2
	.byte	0x37
	.byte	0xd
	.long	0x65c
	.byte	0x10
	.uleb128 0x9
	.long	.LASF207
	.byte	0x2
	.byte	0x38
	.byte	0x7
	.long	0x5c
	.byte	0x18
	.uleb128 0x9
	.long	.LASF208
	.byte	0x2
	.byte	0x39
	.byte	0x8
	.long	0xc27
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF209
	.byte	0x2
	.byte	0x3a
	.byte	0x8
	.long	0xc27
	.byte	0x1d
	.uleb128 0x9
	.long	.LASF210
	.byte	0x2
	.byte	0x3b
	.byte	0x8
	.long	0xc27
	.byte	0x1e
	.uleb128 0x9
	.long	.LASF211
	.byte	0x2
	.byte	0x3c
	.byte	0x1c
	.long	0xa40
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	0xbac
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.long	.LASF212
	.uleb128 0x4
	.long	0xc27
	.uleb128 0x8
	.long	.LASF213
	.byte	0x10
	.byte	0x2
	.byte	0x50
	.byte	0x8
	.long	0xc5b
	.uleb128 0xa
	.string	"len"
	.byte	0x2
	.byte	0x52
	.byte	0xa
	.long	0x1aa
	.byte	0
	.uleb128 0xa
	.string	"str"
	.byte	0x2
	.byte	0x53
	.byte	0x9
	.long	0x39
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0xc33
	.uleb128 0x26
	.long	.LASF214
	.value	0x520
	.byte	0x2
	.byte	0x58
	.byte	0x8
	.long	0xcb1
	.uleb128 0x9
	.long	.LASF177
	.byte	0x2
	.byte	0x5a
	.byte	0xa
	.long	0x1aa
	.byte	0
	.uleb128 0x9
	.long	.LASF215
	.byte	0x2
	.byte	0x5b
	.byte	0xa
	.long	0x1aa
	.byte	0x8
	.uleb128 0x9
	.long	.LASF216
	.byte	0x2
	.byte	0x5c
	.byte	0xa
	.long	0x1aa
	.byte	0x10
	.uleb128 0x9
	.long	.LASF217
	.byte	0x2
	.byte	0x5d
	.byte	0x12
	.long	0xcb1
	.byte	0x18
	.uleb128 0x27
	.long	.LASF218
	.byte	0x2
	.byte	0x5e
	.byte	0x10
	.long	0xcc1
	.value	0x518
	.byte	0
	.uleb128 0xe
	.long	0xc33
	.long	0xcc1
	.uleb128 0xf
	.long	0xfc
	.byte	0x4f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc60
	.uleb128 0x8
	.long	.LASF219
	.byte	0x48
	.byte	0x2
	.byte	0x64
	.byte	0x8
	.long	0xd4a
	.uleb128 0x9
	.long	.LASF220
	.byte	0x2
	.byte	0x66
	.byte	0xa
	.long	0x1aa
	.byte	0
	.uleb128 0x9
	.long	.LASF221
	.byte	0x2
	.byte	0x67
	.byte	0xa
	.long	0x1aa
	.byte	0x8
	.uleb128 0x9
	.long	.LASF222
	.byte	0x2
	.byte	0x68
	.byte	0xd
	.long	0x65c
	.byte	0x10
	.uleb128 0x9
	.long	.LASF223
	.byte	0x2
	.byte	0x69
	.byte	0xd
	.long	0x65c
	.byte	0x18
	.uleb128 0x9
	.long	.LASF224
	.byte	0x2
	.byte	0x6a
	.byte	0xa
	.long	0x1aa
	.byte	0x20
	.uleb128 0x9
	.long	.LASF175
	.byte	0x2
	.byte	0x6b
	.byte	0x9
	.long	0x39
	.byte	0x28
	.uleb128 0x9
	.long	.LASF225
	.byte	0x2
	.byte	0x6c
	.byte	0x10
	.long	0xcc1
	.byte	0x30
	.uleb128 0x9
	.long	.LASF226
	.byte	0x2
	.byte	0x6d
	.byte	0x10
	.long	0xcc1
	.byte	0x38
	.uleb128 0x9
	.long	.LASF218
	.byte	0x2
	.byte	0x6e
	.byte	0x19
	.long	0xd4a
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xcc7
	.uleb128 0x28
	.long	.LASF227
	.byte	0x2
	.byte	0x77
	.byte	0x1e
	.long	0xd4a
	.uleb128 0x9
	.byte	0x3
	.quad	head
	.uleb128 0x28
	.long	.LASF228
	.byte	0x2
	.byte	0x7a
	.byte	0xe
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	hold_area
	.uleb128 0x28
	.long	.LASF229
	.byte	0x2
	.byte	0x7d
	.byte	0xf
	.long	0x1aa
	.uleb128 0x9
	.byte	0x3
	.quad	hold_count
	.uleb128 0x28
	.long	.LASF230
	.byte	0x2
	.byte	0x80
	.byte	0x12
	.long	0x65c
	.uleb128 0x9
	.byte	0x3
	.quad	last_line_number
	.uleb128 0x28
	.long	.LASF231
	.byte	0x2
	.byte	0x83
	.byte	0x12
	.long	0x65c
	.uleb128 0x9
	.byte	0x3
	.quad	current_line
	.uleb128 0x28
	.long	.LASF232
	.byte	0x2
	.byte	0x86
	.byte	0xd
	.long	0xc27
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_eof
	.uleb128 0x28
	.long	.LASF233
	.byte	0x2
	.byte	0x89
	.byte	0x17
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	filename_space
	.uleb128 0x28
	.long	.LASF234
	.byte	0x2
	.byte	0x8c
	.byte	0x1d
	.long	0xd7
	.uleb128 0x9
	.byte	0x3
	.quad	prefix
	.uleb128 0x28
	.long	.LASF235
	.byte	0x2
	.byte	0x8f
	.byte	0x17
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	suffix
	.uleb128 0x28
	.long	.LASF236
	.byte	0x2
	.byte	0x92
	.byte	0x15
	.long	0x63
	.uleb128 0x9
	.byte	0x3
	.quad	digits
	.uleb128 0x28
	.long	.LASF237
	.byte	0x2
	.byte	0x95
	.byte	0x1e
	.long	0xf7
	.uleb128 0x9
	.byte	0x3
	.quad	files_created
	.uleb128 0x28
	.long	.LASF238
	.byte	0x2
	.byte	0x98
	.byte	0x12
	.long	0x65c
	.uleb128 0x9
	.byte	0x3
	.quad	bytes_written
	.uleb128 0x28
	.long	.LASF239
	.byte	0x2
	.byte	0x9b
	.byte	0xe
	.long	0x8f4
	.uleb128 0x9
	.byte	0x3
	.quad	output_stream
	.uleb128 0x28
	.long	.LASF240
	.byte	0x2
	.byte	0x9e
	.byte	0xe
	.long	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	output_filename
	.uleb128 0x28
	.long	.LASF241
	.byte	0x2
	.byte	0xa1
	.byte	0xf
	.long	0x60d
	.uleb128 0x9
	.byte	0x3
	.quad	global_argv
	.uleb128 0x28
	.long	.LASF242
	.byte	0x2
	.byte	0xa4
	.byte	0xd
	.long	0xc27
	.uleb128 0x9
	.byte	0x3
	.quad	suppress_count
	.uleb128 0x28
	.long	.LASF243
	.byte	0x2
	.byte	0xa7
	.byte	0x16
	.long	0xc2e
	.uleb128 0x9
	.byte	0x3
	.quad	remove_files
	.uleb128 0x28
	.long	.LASF244
	.byte	0x2
	.byte	0xaa
	.byte	0xd
	.long	0xc27
	.uleb128 0x9
	.byte	0x3
	.quad	elide_empty_files
	.uleb128 0x28
	.long	.LASF245
	.byte	0x2
	.byte	0xad
	.byte	0xd
	.long	0xc27
	.uleb128 0x9
	.byte	0x3
	.quad	suppress_matched
	.uleb128 0x28
	.long	.LASF246
	.byte	0x2
	.byte	0xb1
	.byte	0x18
	.long	0xf08
	.uleb128 0x9
	.byte	0x3
	.quad	controls
	.uleb128 0x3
	.byte	0x8
	.long	0xbac
	.uleb128 0x28
	.long	.LASF247
	.byte	0x2
	.byte	0xb4
	.byte	0xf
	.long	0x1aa
	.uleb128 0x9
	.byte	0x3
	.quad	control_used
	.uleb128 0x28
	.long	.LASF248
	.byte	0x2
	.byte	0xb7
	.byte	0x11
	.long	0x1e9
	.uleb128 0x9
	.byte	0x3
	.quad	caught_signals
	.uleb128 0x18
	.byte	0x7
	.byte	0x4
	.long	0xf0
	.byte	0x2
	.byte	0xbc
	.byte	0x1
	.long	0xf4f
	.uleb128 0x1a
	.long	.LASF249
	.byte	0x80
	.byte	0
	.uleb128 0xe
	.long	0xc7
	.long	0xf5f
	.uleb128 0xf
	.long	0xfc
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	0xf4f
	.uleb128 0x28
	.long	.LASF250
	.byte	0x2
	.byte	0xc0
	.byte	0x1c
	.long	0xf5f
	.uleb128 0x9
	.byte	0x3
	.quad	longopts
	.uleb128 0x1f
	.byte	0x7
	.byte	0x4
	.long	0xf0
	.byte	0x2
	.value	0x4cb
	.byte	0x6
	.long	0xf96
	.uleb128 0x1a
	.long	.LASF251
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF252
	.byte	0x2
	.byte	0
	.uleb128 0x29
	.long	.LASF253
	.byte	0x2
	.value	0x5c4
	.byte	0x1
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0xfc6
	.uleb128 0x2a
	.long	.LASF255
	.byte	0x2
	.value	0x5c4
	.byte	0xc
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2b
	.long	.LASF254
	.byte	0x2
	.value	0x53a
	.byte	0x1
	.long	0x5c
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x109e
	.uleb128 0x2a
	.long	.LASF256
	.byte	0x2
	.value	0x53a
	.byte	0xb
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2a
	.long	.LASF257
	.byte	0x2
	.value	0x53a
	.byte	0x18
	.long	0x60d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2c
	.long	.LASF258
	.byte	0x2
	.value	0x53c
	.byte	0x7
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2c
	.long	.LASF259
	.byte	0x2
	.value	0x580
	.byte	0xa
	.long	0x1aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2c
	.long	.LASF260
	.byte	0x2
	.value	0x581
	.byte	0xa
	.long	0x1aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2e
	.string	"i"
	.byte	0x2
	.value	0x58e
	.byte	0x9
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2e
	.string	"sig"
	.byte	0x2
	.value	0x58f
	.byte	0x16
	.long	0x10ae
	.uleb128 0x9
	.byte	0x3
	.quad	sig.6853
	.uleb128 0x1f
	.byte	0x7
	.byte	0x4
	.long	0xf0
	.byte	0x2
	.value	0x5a3
	.byte	0xa
	.long	0x108b
	.uleb128 0x1a
	.long	.LASF261
	.byte	0xb
	.byte	0
	.uleb128 0x2e
	.string	"act"
	.byte	0x2
	.value	0x5a5
	.byte	0x16
	.long	0x510
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x68
	.long	0x10ae
	.uleb128 0xf
	.long	0xfc
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	0x109e
	.uleb128 0x2f
	.long	.LASF267
	.byte	0x2
	.value	0x51a
	.byte	0x1
	.long	0x1aa
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x116f
	.uleb128 0x2a
	.long	.LASF262
	.byte	0x2
	.value	0x51a
	.byte	0x10
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF263
	.byte	0x2
	.value	0x51c
	.byte	0x8
	.long	0xc27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2c
	.long	.LASF264
	.byte	0x2
	.value	0x533
	.byte	0x7
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x115d
	.uleb128 0x2e
	.string	"f"
	.byte	0x2
	.value	0x51e
	.byte	0xe
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x2c
	.long	.LASF265
	.byte	0x2
	.value	0x525
	.byte	0xd
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.byte	0
	.byte	0
	.uleb128 0x31
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.byte	0
	.uleb128 0x32
	.long	.LASF271
	.byte	0x2
	.value	0x4ef
	.byte	0x1
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x1217
	.uleb128 0x2a
	.long	.LASF262
	.byte	0x2
	.value	0x4ef
	.byte	0x1f
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF265
	.byte	0x2
	.value	0x4ef
	.byte	0x2b
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.string	"ch"
	.byte	0x2
	.value	0x4f1
	.byte	0x11
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2c
	.long	.LASF266
	.byte	0x2
	.value	0x4f2
	.byte	0x7
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x1205
	.uleb128 0x31
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x31
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0
	.uleb128 0x31
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.byte	0
	.uleb128 0x33
	.long	.LASF268
	.byte	0x2
	.value	0x4d0
	.byte	0x1
	.long	0x1aa
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x128d
	.uleb128 0x2a
	.long	.LASF262
	.byte	0x2
	.value	0x4d0
	.byte	0x1f
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF269
	.byte	0x2
	.value	0x4d0
	.byte	0x2c
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF265
	.byte	0x2
	.value	0x4d2
	.byte	0x7
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2c
	.long	.LASF270
	.byte	0x2
	.value	0x4d4
	.byte	0xf
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF272
	.byte	0x2
	.value	0x497
	.byte	0x1
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x137c
	.uleb128 0x2a
	.long	.LASF256
	.byte	0x2
	.value	0x497
	.byte	0x15
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF273
	.byte	0x2
	.value	0x497
	.byte	0x1f
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF257
	.byte	0x2
	.value	0x497
	.byte	0x2d
	.long	0x60d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.string	"p"
	.byte	0x2
	.value	0x499
	.byte	0x13
	.long	0xf08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"val"
	.byte	0x2
	.value	0x49a
	.byte	0xd
	.long	0x65c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF274
	.byte	0x2
	.value	0x49b
	.byte	0x14
	.long	0x65c
	.uleb128 0x9
	.byte	0x3
	.quad	last_val.6759
	.uleb128 0x2d
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2e
	.string	"i"
	.byte	0x2
	.value	0x49d
	.byte	0xc
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x31
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x31
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2d
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x2e
	.string	"buf"
	.byte	0x2
	.value	0x4af
	.byte	0x14
	.long	0x137c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x44
	.long	0x138c
	.uleb128 0xf
	.long	0xfc
	.byte	0x14
	.byte	0
	.uleb128 0x2f
	.long	.LASF275
	.byte	0x2
	.value	0x46d
	.byte	0x1
	.long	0xf08
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1443
	.uleb128 0x2a
	.long	.LASF207
	.byte	0x2
	.value	0x46d
	.byte	0x15
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF209
	.byte	0x2
	.value	0x46d
	.byte	0x22
	.long	0xc27
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.string	"str"
	.byte	0x2
	.value	0x46d
	.byte	0x36
	.long	0xcc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.string	"len"
	.byte	0x2
	.value	0x46f
	.byte	0xa
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF276
	.byte	0x2
	.value	0x470
	.byte	0x8
	.long	0x44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x2c
	.long	.LASF277
	.byte	0x2
	.value	0x471
	.byte	0xf
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"p"
	.byte	0x2
	.value	0x472
	.byte	0x13
	.long	0xf08
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"err"
	.byte	0x2
	.value	0x473
	.byte	0xf
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0
	.uleb128 0x32
	.long	.LASF278
	.byte	0x2
	.value	0x44b
	.byte	0x1
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x14d6
	.uleb128 0x2a
	.long	.LASF207
	.byte	0x2
	.value	0x44b
	.byte	0x19
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.string	"p"
	.byte	0x2
	.value	0x44b
	.byte	0x31
	.long	0xf08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.string	"str"
	.byte	0x2
	.value	0x44b
	.byte	0x3a
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.string	"val"
	.byte	0x2
	.value	0x44d
	.byte	0xd
	.long	0x65c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"end"
	.byte	0x2
	.value	0x44e
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x31
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.byte	0
	.uleb128 0x32
	.long	.LASF279
	.byte	0x2
	.value	0x43e
	.byte	0x1
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x1535
	.uleb128 0x34
	.string	"p"
	.byte	0x2
	.value	0x43e
	.byte	0x23
	.long	0xf08
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"str"
	.byte	0x2
	.value	0x43e
	.byte	0x32
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.string	"num"
	.byte	0x2
	.value	0x43e
	.byte	0x43
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.byte	0
	.uleb128 0x2f
	.long	.LASF280
	.byte	0x2
	.value	0x428
	.byte	0x1
	.long	0xf08
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x158f
	.uleb128 0x2c
	.long	.LASF281
	.byte	0x2
	.value	0x42a
	.byte	0x11
	.long	0x1aa
	.uleb128 0x9
	.byte	0x3
	.quad	control_allocated.6718
	.uleb128 0x2e
	.string	"p"
	.byte	0x2
	.value	0x42b
	.byte	0x13
	.long	0xf08
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0
	.uleb128 0x32
	.long	.LASF282
	.byte	0x2
	.value	0x419
	.byte	0x1
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x15cd
	.uleb128 0x2a
	.long	.LASF214
	.byte	0x2
	.value	0x419
	.byte	0x2a
	.long	0x15cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"l"
	.byte	0x2
	.value	0x41b
	.byte	0xa
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc5b
	.uleb128 0x32
	.long	.LASF283
	.byte	0x2
	.value	0x3e9
	.byte	0x1
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x165e
	.uleb128 0x30
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x163b
	.uleb128 0x2c
	.long	.LASF284
	.byte	0x2
	.value	0x3fb
	.byte	0x14
	.long	0x1e9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2c
	.long	.LASF285
	.byte	0x2
	.value	0x3fc
	.byte	0x10
	.long	0xc27
	.uleb128 0x3
	.byte	0x91
	.sleb128 -197
	.uleb128 0x2c
	.long	.LASF286
	.byte	0x2
	.value	0x3fd
	.byte	0xf
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.byte	0
	.uleb128 0x2d
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2e
	.string	"buf"
	.byte	0x2
	.value	0x40d
	.byte	0x14
	.long	0x137c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF287
	.byte	0x2
	.value	0x3d6
	.byte	0x1
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x16d0
	.uleb128 0x2a
	.long	.LASF288
	.byte	0x2
	.value	0x3d6
	.byte	0x18
	.long	0xc27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2e
	.string	"i"
	.byte	0x2
	.value	0x3db
	.byte	0x15
	.long	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2c
	.long	.LASF5
	.byte	0x2
	.value	0x3dd
	.byte	0x13
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF289
	.byte	0x2
	.value	0x3b2
	.byte	0x1
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x1735
	.uleb128 0x2c
	.long	.LASF290
	.byte	0x2
	.value	0x3b4
	.byte	0x8
	.long	0xc27
	.uleb128 0x3
	.byte	0x91
	.sleb128 -165
	.uleb128 0x2c
	.long	.LASF291
	.byte	0x2
	.value	0x3b5
	.byte	0x7
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2d
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2c
	.long	.LASF284
	.byte	0x2
	.value	0x3c1
	.byte	0x10
	.long	0x1e9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF292
	.byte	0x2
	.value	0x3a5
	.byte	0x1
	.long	0x39
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x1769
	.uleb128 0x34
	.string	"num"
	.byte	0x2
	.value	0x3a5
	.byte	0x1d
	.long	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x32
	.long	.LASF293
	.byte	0x2
	.value	0x385
	.byte	0x1
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x17c9
	.uleb128 0x2d
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2e
	.string	"i"
	.byte	0x2
	.value	0x387
	.byte	0xf
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2e
	.string	"j"
	.byte	0x2
	.value	0x389
	.byte	0x11
	.long	0x65c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF294
	.byte	0x2
	.value	0x31b
	.byte	0x1
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x1859
	.uleb128 0x34
	.string	"p"
	.byte	0x2
	.value	0x31b
	.byte	0x21
	.long	0xf08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF295
	.byte	0x2
	.value	0x31b
	.byte	0x2e
	.long	0x65c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF214
	.byte	0x2
	.value	0x31d
	.byte	0x13
	.long	0x1859
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF296
	.byte	0x2
	.value	0x31e
	.byte	0xa
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF297
	.byte	0x2
	.value	0x31f
	.byte	0xd
	.long	0x65c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF209
	.byte	0x2
	.value	0x320
	.byte	0x8
	.long	0xc27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x2e
	.string	"ret"
	.byte	0x2
	.value	0x321
	.byte	0xc
	.long	0xb39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc33
	.uleb128 0x35
	.long	.LASF298
	.byte	0x2
	.value	0x301
	.byte	0x1
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x18d2
	.uleb128 0x34
	.string	"p"
	.byte	0x2
	.value	0x301
	.byte	0x1f
	.long	0xf08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF295
	.byte	0x2
	.value	0x301
	.byte	0x2c
	.long	0x65c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF209
	.byte	0x2
	.value	0x301
	.byte	0x3d
	.long	0xc27
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2e
	.string	"buf"
	.byte	0x2
	.value	0x308
	.byte	0xc
	.long	0x137c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF299
	.byte	0x2
	.value	0x2de
	.byte	0x1
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x1952
	.uleb128 0x34
	.string	"p"
	.byte	0x2
	.value	0x2de
	.byte	0x2b
	.long	0x1952
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF295
	.byte	0x2
	.value	0x2de
	.byte	0x38
	.long	0x65c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF300
	.byte	0x2
	.value	0x2e0
	.byte	0xd
	.long	0x65c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF301
	.byte	0x2
	.value	0x2e1
	.byte	0xd
	.long	0x65c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2c
	.long	.LASF214
	.byte	0x2
	.value	0x2ee
	.byte	0x17
	.long	0x1859
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc22
	.uleb128 0x35
	.long	.LASF302
	.byte	0x2
	.value	0x2ca
	.byte	0x1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x19a8
	.uleb128 0x34
	.string	"p"
	.byte	0x2
	.value	0x2ca
	.byte	0x2a
	.long	0x1952
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF295
	.byte	0x2
	.value	0x2ca
	.byte	0x37
	.long	0x65c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"buf"
	.byte	0x2
	.value	0x2cc
	.byte	0x8
	.long	0x137c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x32
	.long	.LASF303
	.byte	0x2
	.value	0x2bc
	.byte	0x1
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x19d8
	.uleb128 0x2c
	.long	.LASF214
	.byte	0x2
	.value	0x2be
	.byte	0x13
	.long	0x1859
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF304
	.byte	0x2
	.value	0x299
	.byte	0x1
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a69
	.uleb128 0x2a
	.long	.LASF305
	.byte	0x2
	.value	0x299
	.byte	0x1a
	.long	0x65c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF209
	.byte	0x2
	.value	0x299
	.byte	0x2a
	.long	0xc27
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF207
	.byte	0x2
	.value	0x299
	.byte	0x36
	.long	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF214
	.byte	0x2
	.value	0x29b
	.byte	0x13
	.long	0x1859
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF306
	.byte	0x2
	.value	0x29c
	.byte	0xd
	.long	0x65c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF307
	.byte	0x2
	.value	0x29d
	.byte	0xd
	.long	0x65c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"i"
	.byte	0x2
	.value	0x29e
	.byte	0xd
	.long	0x65c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x32
	.long	.LASF308
	.byte	0x2
	.value	0x28c
	.byte	0x1
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1aaa
	.uleb128 0x2a
	.long	.LASF5
	.byte	0x2
	.value	0x28c
	.byte	0x1d
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0
	.uleb128 0x36
	.long	.LASF338
	.byte	0x2
	.value	0x284
	.byte	0x1
	.long	0xc27
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.long	.LASF309
	.byte	0x2
	.value	0x25e
	.byte	0x1
	.long	0x1859
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b4e
	.uleb128 0x2a
	.long	.LASF300
	.byte	0x2
	.value	0x25e
	.byte	0x16
	.long	0x65c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"b"
	.byte	0x2
	.value	0x260
	.byte	0x19
	.long	0xd4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF352
	.long	0x1b5e
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6598
	.uleb128 0x2d
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2e
	.string	"l"
	.byte	0x2
	.value	0x26e
	.byte	0x18
	.long	0xcc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF204
	.byte	0x2
	.value	0x26f
	.byte	0x12
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x4b
	.long	0x1b5e
	.uleb128 0xf
	.long	0xfc
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.long	0x1b4e
	.uleb128 0x2f
	.long	.LASF310
	.byte	0x2
	.value	0x22b
	.byte	0x1
	.long	0x1859
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bbc
	.uleb128 0x2c
	.long	.LASF311
	.byte	0x2
	.value	0x230
	.byte	0x20
	.long	0xd4a
	.uleb128 0x9
	.byte	0x3
	.quad	prev_buf.6591
	.uleb128 0x2c
	.long	.LASF214
	.byte	0x2
	.value	0x232
	.byte	0x13
	.long	0x1859
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"l"
	.byte	0x2
	.value	0x233
	.byte	0x10
	.long	0xcc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2f
	.long	.LASF312
	.byte	0x2
	.value	0x21e
	.byte	0x1
	.long	0x65c
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bf1
	.uleb128 0x31
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.byte	0
	.uleb128 0x2f
	.long	.LASF313
	.byte	0x2
	.value	0x1e2
	.byte	0x1
	.long	0xc27
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c61
	.uleb128 0x2e
	.string	"b"
	.byte	0x2
	.value	0x1e4
	.byte	0x19
	.long	0xd4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF314
	.byte	0x2
	.value	0x1e5
	.byte	0xa
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF315
	.byte	0x2
	.value	0x1e6
	.byte	0xa
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF316
	.byte	0x2
	.value	0x1e7
	.byte	0xa
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"p"
	.byte	0x2
	.value	0x1e8
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x38
	.long	.LASF317
	.byte	0x2
	.value	0x1c3
	.byte	0x1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c9f
	.uleb128 0x34
	.string	"buf"
	.byte	0x2
	.value	0x1c3
	.byte	0x24
	.long	0xd4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"p"
	.byte	0x2
	.value	0x1c5
	.byte	0x19
	.long	0xd4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF318
	.byte	0x2
	.value	0x1b1
	.byte	0x1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cfd
	.uleb128 0x34
	.string	"buf"
	.byte	0x2
	.value	0x1b1
	.byte	0x24
	.long	0xd4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"l"
	.byte	0x2
	.value	0x1b3
	.byte	0x10
	.long	0xcc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2e
	.string	"n"
	.byte	0x2
	.value	0x1b6
	.byte	0x14
	.long	0xcc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF319
	.byte	0x2
	.value	0x19a
	.byte	0x1
	.long	0xd4a
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d71
	.uleb128 0x2a
	.long	.LASF320
	.byte	0x2
	.value	0x19a
	.byte	0x18
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF321
	.byte	0x2
	.value	0x19c
	.byte	0x19
	.long	0xd4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF322
	.byte	0x2
	.value	0x19d
	.byte	0xa
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2e
	.string	"s"
	.byte	0x2
	.value	0x1a2
	.byte	0xe
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF323
	.byte	0x2
	.value	0x18a
	.byte	0x1
	.long	0xd4a
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x1db5
	.uleb128 0x2a
	.long	.LASF324
	.byte	0x2
	.value	0x18a
	.byte	0x1b
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF321
	.byte	0x2
	.value	0x18c
	.byte	0x19
	.long	0xd4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF325
	.byte	0x2
	.value	0x158
	.byte	0x1
	.long	0x1aa
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e38
	.uleb128 0x34
	.string	"b"
	.byte	0x2
	.value	0x158
	.byte	0x2b
	.long	0xd4a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF225
	.byte	0x2
	.value	0x15a
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF326
	.byte	0x2
	.value	0x15b
	.byte	0x9
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF327
	.byte	0x2
	.value	0x15c
	.byte	0xa
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF307
	.byte	0x2
	.value	0x15d
	.byte	0xa
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF328
	.byte	0x2
	.value	0x15e
	.byte	0xa
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF329
	.byte	0x2
	.value	0x137
	.byte	0x1
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e95
	.uleb128 0x34
	.string	"b"
	.byte	0x2
	.value	0x137
	.byte	0x26
	.long	0xd4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF225
	.byte	0x2
	.value	0x137
	.byte	0x2f
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF296
	.byte	0x2
	.value	0x137
	.byte	0x42
	.long	0x1aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"l"
	.byte	0x2
	.value	0x139
	.byte	0x10
	.long	0xcc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2f
	.long	.LASF330
	.byte	0x2
	.value	0x129
	.byte	0x1
	.long	0xcc1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ec7
	.uleb128 0x2e
	.string	"p"
	.byte	0x2
	.value	0x12b
	.byte	0x10
	.long	0xcc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF331
	.byte	0x2
	.value	0x11f
	.byte	0x1
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ef5
	.uleb128 0x34
	.string	"p"
	.byte	0x2
	.value	0x11f
	.byte	0x22
	.long	0xcc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF332
	.byte	0x2
	.value	0x107
	.byte	0x1
	.long	0x1aa
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f49
	.uleb128 0x2a
	.long	.LASF333
	.byte	0x2
	.value	0x107
	.byte	0x13
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF334
	.byte	0x2
	.value	0x107
	.byte	0x20
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF335
	.byte	0x2
	.value	0x109
	.byte	0xa
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x39
	.long	.LASF336
	.byte	0x2
	.byte	0xfc
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f86
	.uleb128 0x3a
	.long	.LASF273
	.byte	0x2
	.byte	0xfc
	.byte	0x1a
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.string	"num"
	.byte	0x2
	.byte	0xfc
	.byte	0x28
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x39
	.long	.LASF337
	.byte	0x2
	.byte	0xee
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fb4
	.uleb128 0x3b
	.string	"sig"
	.byte	0x2
	.byte	0xee
	.byte	0x18
	.long	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3c
	.long	.LASF353
	.byte	0x2
	.byte	0xe7
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.long	.LASF339
	.byte	0x2
	.byte	0xe0
	.byte	0x1
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x39
	.long	.LASF340
	.byte	0x2
	.byte	0xd3
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x2017
	.uleb128 0x28
	.long	.LASF284
	.byte	0x2
	.byte	0xd5
	.byte	0xc
	.long	0x1e9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x32
	.long	.LASF341
	.byte	0x1
	.value	0x27a
	.byte	0x1
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x20bc
	.uleb128 0x2a
	.long	.LASF342
	.byte	0x1
	.value	0x27a
	.byte	0x22
	.long	0xcc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x22
	.long	.LASF343
	.byte	0x10
	.byte	0x1
	.value	0x27c
	.byte	0xa
	.long	0x2072
	.uleb128 0x23
	.long	.LASF342
	.byte	0x1
	.value	0x27c
	.byte	0x20
	.long	0xcc
	.byte	0
	.uleb128 0x23
	.long	.LASF344
	.byte	0x1
	.value	0x27c
	.byte	0x35
	.long	0xcc
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0x2047
	.uleb128 0x2c
	.long	.LASF343
	.byte	0x1
	.value	0x27c
	.byte	0x43
	.long	0x20cc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2c
	.long	.LASF344
	.byte	0x1
	.value	0x286
	.byte	0xf
	.long	0xcc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2c
	.long	.LASF345
	.byte	0x1
	.value	0x287
	.byte	0x19
	.long	0x20d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.long	.LASF346
	.byte	0x1
	.value	0x293
	.byte	0xf
	.long	0xcc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0xe
	.long	0x2072
	.long	0x20cc
	.uleb128 0xf
	.long	0xfc
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.long	0x20bc
	.uleb128 0x3
	.byte	0x8
	.long	0x2072
	.uleb128 0x3e
	.long	.LASF354
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x5
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
	.uleb128 0x2a
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x34
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x3d
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
.LASF292:
	.string	"make_filename"
.LASF27:
	.string	"size_t"
.LASF338:
	.string	"no_more_lines"
.LASF273:
	.string	"start"
.LASF154:
	.string	"GETOPT_HELP_CHAR"
.LASF107:
	.string	"_ISgraph"
.LASF177:
	.string	"used"
.LASF24:
	.string	"__ssize_t"
.LASF145:
	.string	"_IO_codecvt"
.LASF320:
	.string	"min_size"
.LASF180:
	.string	"translate"
.LASF125:
	.string	"_IO_save_end"
.LASF330:
	.string	"new_line_control"
.LASF347:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF297:
	.string	"break_line"
.LASF236:
	.string	"digits"
.LASF171:
	.string	"__re_long_size_t"
.LASF79:
	.string	"_sys_siglist"
.LASF26:
	.string	"time_t"
.LASF322:
	.string	"alloc_size"
.LASF30:
	.string	"sigset_t"
.LASF316:
	.string	"lines_found"
.LASF323:
	.string	"create_new_buffer"
.LASF193:
	.string	"error_one_per_line"
.LASF134:
	.string	"_lock"
.LASF183:
	.string	"regs_allocated"
.LASF66:
	.string	"si_code"
.LASF52:
	.string	"si_band"
.LASF200:
	.string	"LONGINT_INVALID_SUFFIX_CHAR"
.LASF81:
	.string	"__tzname"
.LASF259:
	.string	"prefix_len"
.LASF123:
	.string	"_IO_save_base"
.LASF211:
	.string	"re_compiled"
.LASF230:
	.string	"last_line_number"
.LASF127:
	.string	"_chain"
.LASF25:
	.string	"ssize_t"
.LASF78:
	.string	"sa_restorer"
.LASF131:
	.string	"_cur_column"
.LASF150:
	.string	"sys_nerr"
.LASF56:
	.string	"_arch"
.LASF152:
	.string	"_sys_nerr"
.LASF90:
	.string	"__environ"
.LASF14:
	.string	"long int"
.LASF348:
	.string	"src/csplit.c"
.LASF221:
	.string	"bytes_used"
.LASF237:
	.string	"files_created"
.LASF6:
	.string	"has_arg"
.LASF321:
	.string	"new_buffer"
.LASF144:
	.string	"_IO_marker"
.LASF181:
	.string	"re_nsub"
.LASF106:
	.string	"_ISprint"
.LASF260:
	.string	"max_digit_string_len"
.LASF227:
	.string	"head"
.LASF112:
	.string	"__xalloc_count_type"
.LASF12:
	.string	"signed char"
.LASF277:
	.string	"closing_delim"
.LASF113:
	.string	"_IO_FILE"
.LASF173:
	.string	"rpl_re_syntax_options"
.LASF83:
	.string	"__timezone"
.LASF146:
	.string	"_IO_wide_data"
.LASF266:
	.string	"compatible_flags"
.LASF261:
	.string	"nsigs"
.LASF352:
	.string	"__PRETTY_FUNCTION__"
.LASF315:
	.string	"bytes_avail"
.LASF280:
	.string	"new_control_record"
.LASF51:
	.string	"_bounds"
.LASF169:
	.string	"quoting_style_args"
.LASF91:
	.string	"environ"
.LASF69:
	.string	"siginfo_t"
.LASF8:
	.string	"unsigned char"
.LASF42:
	.string	"si_status"
.LASF210:
	.string	"regexpr"
.LASF76:
	.string	"sa_mask"
.LASF241:
	.string	"global_argv"
.LASF197:
	.string	"strtol_error"
.LASF285:
	.string	"unlink_ok"
.LASF281:
	.string	"control_allocated"
.LASF192:
	.string	"error_message_count"
.LASF187:
	.string	"not_eol"
.LASF71:
	.string	"sa_handler"
.LASF282:
	.string	"save_line_to_file"
.LASF212:
	.string	"_Bool"
.LASF46:
	.string	"_upper"
.LASF2:
	.string	"char"
.LASF59:
	.string	"_timer"
.LASF318:
	.string	"free_buffer"
.LASF289:
	.string	"create_output_file"
.LASF233:
	.string	"filename_space"
.LASF351:
	.string	"_IO_lock_t"
.LASF290:
	.string	"fopen_ok"
.LASF225:
	.string	"line_start"
.LASF307:
	.string	"lines"
.LASF86:
	.string	"timezone"
.LASF162:
	.string	"shell_escape_always_quoting_style"
.LASF172:
	.string	"reg_syntax_t"
.LASF44:
	.string	"si_stime"
.LASF265:
	.string	"flags"
.LASF269:
	.string	"flags_ptr"
.LASF115:
	.string	"_IO_read_ptr"
.LASF231:
	.string	"current_line"
.LASF294:
	.string	"process_regexp"
.LASF88:
	.string	"ptrdiff_t"
.LASF65:
	.string	"si_errno"
.LASF147:
	.string	"stdin"
.LASF310:
	.string	"remove_line"
.LASF151:
	.string	"sys_errlist"
.LASF54:
	.string	"_call_addr"
.LASF223:
	.string	"first_available"
.LASF189:
	.string	"re_dfa_t"
.LASF126:
	.string	"_markers"
.LASF157:
	.string	"program_name"
.LASF110:
	.string	"_ISpunct"
.LASF314:
	.string	"bytes_wanted"
.LASF164:
	.string	"c_maybe_quoting_style"
.LASF175:
	.string	"buffer"
.LASF201:
	.string	"LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW"
.LASF48:
	.string	"_pkey"
.LASF234:
	.string	"prefix"
.LASF228:
	.string	"hold_area"
.LASF92:
	.string	"program_invocation_name"
.LASF174:
	.string	"re_pattern_buffer"
.LASF64:
	.string	"si_signo"
.LASF334:
	.string	"max_n_bytes"
.LASF215:
	.string	"insert_index"
.LASF35:
	.string	"sival_ptr"
.LASF199:
	.string	"LONGINT_OVERFLOW"
.LASF1:
	.string	"optind"
.LASF344:
	.string	"node"
.LASF291:
	.string	"fopen_errno"
.LASF167:
	.string	"clocale_quoting_style"
.LASF191:
	.string	"error_print_progname"
.LASF11:
	.string	"long unsigned int"
.LASF262:
	.string	"format"
.LASF255:
	.string	"status"
.LASF129:
	.string	"_flags2"
.LASF117:
	.string	"_IO_read_base"
.LASF279:
	.string	"check_for_offset"
.LASF214:
	.string	"line"
.LASF73:
	.string	"option"
.LASF142:
	.string	"_unused2"
.LASF176:
	.string	"allocated"
.LASF271:
	.string	"check_format_conv_type"
.LASF50:
	.string	"si_addr_lsb"
.LASF317:
	.string	"save_buffer"
.LASF283:
	.string	"close_output_file"
.LASF104:
	.string	"_ISxdigit"
.LASF240:
	.string	"output_filename"
.LASF256:
	.string	"argc"
.LASF61:
	.string	"_sigfault"
.LASF130:
	.string	"_old_offset"
.LASF249:
	.string	"SUPPRESS_MATCHED_OPTION"
.LASF247:
	.string	"control_used"
.LASF343:
	.string	"infomap"
.LASF257:
	.string	"argv"
.LASF159:
	.string	"shell_quoting_style"
.LASF243:
	.string	"remove_files"
.LASF331:
	.string	"clear_line_control"
.LASF303:
	.string	"dump_rest_of_file"
.LASF272:
	.string	"parse_patterns"
.LASF75:
	.string	"__sigaction_handler"
.LASF15:
	.string	"__uint32_t"
.LASF33:
	.string	"long long int"
.LASF342:
	.string	"program"
.LASF94:
	.string	"Version"
.LASF95:
	.string	"exit_failure"
.LASF31:
	.string	"_gl_cxxalias_dummy"
.LASF264:
	.string	"maxlen"
.LASF100:
	.string	"_ISupper"
.LASF286:
	.string	"unlink_errno"
.LASF138:
	.string	"_freeres_list"
.LASF163:
	.string	"c_quoting_style"
.LASF329:
	.string	"keep_new_line"
.LASF109:
	.string	"_IScntrl"
.LASF120:
	.string	"_IO_write_end"
.LASF263:
	.string	"percent"
.LASF207:
	.string	"argnum"
.LASF97:
	.string	"uintmax_t"
.LASF304:
	.string	"write_to_file"
.LASF202:
	.string	"LONGINT_INVALID"
.LASF179:
	.string	"fastmap"
.LASF295:
	.string	"repetition"
.LASF190:
	.string	"regoff_t"
.LASF213:
	.string	"cstring"
.LASF203:
	.string	"control"
.LASF80:
	.string	"sys_siglist"
.LASF219:
	.string	"buffer_record"
.LASF47:
	.string	"_addr_bnd"
.LASF270:
	.string	"count"
.LASF325:
	.string	"record_line_starts"
.LASF16:
	.string	"__intmax_t"
.LASF155:
	.string	"GETOPT_VERSION_CHAR"
.LASF121:
	.string	"_IO_buf_base"
.LASF45:
	.string	"_lower"
.LASF340:
	.string	"cleanup"
.LASF258:
	.string	"optc"
.LASF10:
	.string	"unsigned int"
.LASF178:
	.string	"syntax"
.LASF267:
	.string	"max_out"
.LASF156:
	.string	"version_etc_copyright"
.LASF206:
	.string	"repeat"
.LASF68:
	.string	"_sifields"
.LASF170:
	.string	"quoting_style_vals"
.LASF158:
	.string	"literal_quoting_style"
.LASF185:
	.string	"no_sub"
.LASF220:
	.string	"bytes_alloc"
.LASF67:
	.string	"__pad0"
.LASF84:
	.string	"tzname"
.LASF62:
	.string	"_sigpoll"
.LASF140:
	.string	"__pad5"
.LASF235:
	.string	"suffix"
.LASF274:
	.string	"last_val"
.LASF7:
	.string	"flag"
.LASF341:
	.string	"emit_ancillary_info"
.LASF275:
	.string	"extract_regexp"
.LASF182:
	.string	"can_be_null"
.LASF308:
	.string	"set_input_file"
.LASF60:
	.string	"_sigchld"
.LASF268:
	.string	"get_format_flags"
.LASF118:
	.string	"_IO_write_base"
.LASF194:
	.string	"quoting_options"
.LASF287:
	.string	"delete_all_files"
.LASF114:
	.string	"_flags"
.LASF204:
	.string	"offset"
.LASF346:
	.string	"lc_messages"
.LASF195:
	.string	"quote_quoting_options"
.LASF22:
	.string	"__clock_t"
.LASF141:
	.string	"_mode"
.LASF136:
	.string	"_codecvt"
.LASF99:
	.string	"LOG10_TIMESPEC_HZ"
.LASF224:
	.string	"num_lines"
.LASF205:
	.string	"lines_required"
.LASF218:
	.string	"next"
.LASF96:
	.string	"intmax_t"
.LASF89:
	.string	"long double"
.LASF186:
	.string	"not_bol"
.LASF246:
	.string	"controls"
.LASF53:
	.string	"si_fd"
.LASF143:
	.string	"FILE"
.LASF21:
	.string	"__pid_t"
.LASF58:
	.string	"_kill"
.LASF250:
	.string	"longopts"
.LASF226:
	.string	"curr_line"
.LASF284:
	.string	"oldset"
.LASF288:
	.string	"in_signal_handler"
.LASF198:
	.string	"LONGINT_OK"
.LASF135:
	.string	"_offset"
.LASF251:
	.string	"FLAG_THOUSANDS"
.LASF102:
	.string	"_ISalpha"
.LASF245:
	.string	"suppress_matched"
.LASF4:
	.string	"optopt"
.LASF335:
	.string	"bytes_read"
.LASF166:
	.string	"locale_quoting_style"
.LASF324:
	.string	"size"
.LASF32:
	.string	"long long unsigned int"
.LASF302:
	.string	"handle_line_error"
.LASF108:
	.string	"_ISblank"
.LASF19:
	.string	"__off_t"
.LASF196:
	.string	"quoting_style"
.LASF111:
	.string	"_ISalnum"
.LASF93:
	.string	"program_invocation_short_name"
.LASF41:
	.string	"si_sigval"
.LASF39:
	.string	"si_tid"
.LASF354:
	.string	"emit_mandatory_arg_note"
.LASF139:
	.string	"_freeres_buf"
.LASF105:
	.string	"_ISspace"
.LASF208:
	.string	"repeat_forever"
.LASF298:
	.string	"regexp_error"
.LASF3:
	.string	"opterr"
.LASF232:
	.string	"have_read_eof"
.LASF349:
	.string	"/root/coreutils"
.LASF23:
	.string	"__time_t"
.LASF184:
	.string	"fastmap_accurate"
.LASF188:
	.string	"newline_anchor"
.LASF74:
	.string	"sigaction"
.LASF124:
	.string	"_IO_backup_base"
.LASF133:
	.string	"_shortbuf"
.LASF328:
	.string	"line_length"
.LASF77:
	.string	"sa_flags"
.LASF252:
	.string	"FLAG_ALTERNATIVE"
.LASF353:
	.string	"xalloc_die"
.LASF333:
	.string	"dest"
.LASF209:
	.string	"ignore"
.LASF160:
	.string	"shell_always_quoting_style"
.LASF20:
	.string	"__off64_t"
.LASF40:
	.string	"si_overrun"
.LASF34:
	.string	"sival_int"
.LASF300:
	.string	"linenum"
.LASF244:
	.string	"elide_empty_files"
.LASF165:
	.string	"escape_quoting_style"
.LASF137:
	.string	"_wide_data"
.LASF122:
	.string	"_IO_buf_end"
.LASF248:
	.string	"caught_signals"
.LASF216:
	.string	"retrieve_index"
.LASF55:
	.string	"_syscall"
.LASF337:
	.string	"interrupt_handler"
.LASF5:
	.string	"name"
.LASF336:
	.string	"save_to_hold_area"
.LASF101:
	.string	"_ISlower"
.LASF345:
	.string	"map_prog"
.LASF293:
	.string	"split_file"
.LASF149:
	.string	"stderr"
.LASF13:
	.string	"short int"
.LASF313:
	.string	"load_buffer"
.LASF327:
	.string	"bytes_left"
.LASF253:
	.string	"usage"
.LASF161:
	.string	"shell_escape_quoting_style"
.LASF132:
	.string	"_vtable_offset"
.LASF153:
	.string	"_sys_errlist"
.LASF17:
	.string	"__uintmax_t"
.LASF326:
	.string	"line_end"
.LASF70:
	.string	"__sighandler_t"
.LASF57:
	.string	"_pad"
.LASF28:
	.string	"__val"
.LASF98:
	.string	"TIMESPEC_HZ"
.LASF49:
	.string	"si_addr"
.LASF63:
	.string	"_sigsys"
.LASF82:
	.string	"__daylight"
.LASF254:
	.string	"main"
.LASF229:
	.string	"hold_count"
.LASF36:
	.string	"__sigval_t"
.LASF242:
	.string	"suppress_count"
.LASF18:
	.string	"__uid_t"
.LASF72:
	.string	"sa_sigaction"
.LASF305:
	.string	"last_line"
.LASF116:
	.string	"_IO_read_end"
.LASF238:
	.string	"bytes_written"
.LASF87:
	.string	"getdate_err"
.LASF299:
	.string	"process_line_count"
.LASF350:
	.string	"sigval"
.LASF128:
	.string	"_fileno"
.LASF37:
	.string	"si_pid"
.LASF239:
	.string	"output_stream"
.LASF278:
	.string	"parse_repeat_count"
.LASF301:
	.string	"last_line_to_save"
.LASF38:
	.string	"si_uid"
.LASF0:
	.string	"optarg"
.LASF222:
	.string	"start_line"
.LASF103:
	.string	"_ISdigit"
.LASF339:
	.string	"cleanup_fatal"
.LASF309:
	.string	"find_line"
.LASF312:
	.string	"get_first_line_in_buffer"
.LASF9:
	.string	"short unsigned int"
.LASF148:
	.string	"stdout"
.LASF119:
	.string	"_IO_write_ptr"
.LASF85:
	.string	"daylight"
.LASF311:
	.string	"prev_buf"
.LASF296:
	.string	"line_len"
.LASF319:
	.string	"get_new_buffer"
.LASF276:
	.string	"delim"
.LASF29:
	.string	"__sigset_t"
.LASF217:
	.string	"starts"
.LASF168:
	.string	"custom_quoting_style"
.LASF306:
	.string	"first_line"
.LASF43:
	.string	"si_utime"
.LASF332:
	.string	"read_input"
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
