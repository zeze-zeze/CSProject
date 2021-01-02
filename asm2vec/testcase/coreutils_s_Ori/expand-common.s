	.file	"expand-common.c"
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
	.globl	convert_entire_line
	.bss
	.type	convert_entire_line, @object
	.size	convert_entire_line, 1
convert_entire_line:
	.zero	1
	.local	tab_size
	.comm	tab_size,8,8
	.local	extend_size
	.comm	extend_size,8,8
	.local	increment_size
	.comm	increment_size,8,8
	.globl	max_column_width
	.align 8
	.type	max_column_width, @object
	.size	max_column_width, 8
max_column_width:
	.zero	8
	.local	tab_list
	.comm	tab_list,8,8
	.local	n_tabs_allocated
	.comm	n_tabs_allocated,8,8
	.local	first_free_tab
	.comm	first_free_tab,8,8
	.local	file_list
	.comm	file_list,8,8
	.section	.rodata
.LC0:
	.string	"-"
	.section	.data.rel.local,"aw"
	.align 16
	.type	stdin_argv, @object
	.size	stdin_argv, 16
stdin_argv:
	.quad	.LC0
	.quad	0
	.local	have_read_stdin
	.comm	have_read_stdin,1,1
	.globl	exit_status
	.bss
	.align 4
	.type	exit_status, @object
	.size	exit_status, 4
exit_status:
	.zero	4
	.text
	.globl	add_tab_stop
	.type	add_tab_stop, @function
add_tab_stop:
.LFB46:
	.file 2 "src/expand-common.c"
	.loc 2 79 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 80 42
	movq	first_free_tab(%rip), %rax
	.loc 2 80 73
	testq	%rax, %rax
	je	.L4
	.loc 2 80 52 discriminator 1
	movq	tab_list(%rip), %rax
	movq	first_free_tab(%rip), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 80 73 discriminator 1
	movq	(%rax), %rax
	jmp	.L5
.L4:
	.loc 2 80 73 is_stmt 0 discriminator 2
	movl	$0, %eax
.L5:
	.loc 2 80 13 is_stmt 1 discriminator 4
	movq	%rax, -16(%rbp)
	.loc 2 81 73 discriminator 4
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	ja	.L6
	.loc 2 81 73 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	jmp	.L7
.L6:
	.loc 2 81 73 discriminator 2
	movl	$0, %eax
.L7:
	.loc 2 81 13 is_stmt 1 discriminator 4
	movq	%rax, -8(%rbp)
	.loc 2 83 22 discriminator 4
	movq	first_free_tab(%rip), %rdx
	movq	n_tabs_allocated(%rip), %rax
	.loc 2 83 6 discriminator 4
	cmpq	%rax, %rdx
	jne	.L8
.LBB2:
	.loc 2 84 16
	movq	tab_list(%rip), %rax
	movl	$8, %edx
	leaq	n_tabs_allocated(%rip), %rsi
	movq	%rax, %rdi
	call	x2nrealloc@PLT
	.loc 2 84 14
	movq	%rax, tab_list(%rip)
.L8:
.LBE2:
	.loc 2 85 11
	movq	tab_list(%rip), %rcx
	.loc 2 85 26
	movq	first_free_tab(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, first_free_tab(%rip)
	.loc 2 85 11
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	.loc 2 85 30
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 2 87 24
	movq	max_column_width(%rip), %rax
	.loc 2 87 6
	cmpq	%rax, -8(%rbp)
	jbe	.L10
	.loc 2 91 24
	movq	-8(%rbp), %rax
	movq	%rax, max_column_width(%rip)
.L10:
	.loc 2 93 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	add_tab_stop, .-add_tab_stop
	.section	.rodata
	.align 8
.LC1:
	.string	"'/' specifier only allowed with the last value"
	.text
	.type	set_extend_size, @function
set_extend_size:
.LFB47:
	.loc 2 97 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 98 8
	movb	$1, -1(%rbp)
	.loc 2 100 7
	movq	extend_size(%rip), %rax
	.loc 2 100 6
	testq	%rax, %rax
	je	.L12
	.loc 2 103 14
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	.loc 2 102 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 105 10
	movb	$0, -1(%rbp)
.L12:
	.loc 2 107 15
	movq	-24(%rbp), %rax
	movq	%rax, extend_size(%rip)
	.loc 2 109 10
	movzbl	-1(%rbp), %eax
	.loc 2 110 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	set_extend_size, .-set_extend_size
	.section	.rodata
	.align 8
.LC2:
	.string	"'+' specifier only allowed with the last value"
	.text
	.type	set_increment_size, @function
set_increment_size:
.LFB48:
	.loc 2 114 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 2 115 8
	movb	$1, -1(%rbp)
	.loc 2 117 7
	movq	increment_size(%rip), %rax
	.loc 2 117 6
	testq	%rax, %rax
	je	.L15
	.loc 2 120 14
	leaq	.LC2(%rip), %rdi
	call	gettext@PLT
	.loc 2 119 7
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 122 10
	movb	$0, -1(%rbp)
.L15:
	.loc 2 124 18
	movq	-24(%rbp), %rax
	movq	%rax, increment_size(%rip)
	.loc 2 126 10
	movzbl	-1(%rbp), %eax
	.loc 2 127 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	set_increment_size, .-set_increment_size
	.section	.rodata
	.align 8
.LC3:
	.string	"'/' specifier not at start of number: %s"
	.align 8
.LC4:
	.string	"'+' specifier not at start of number: %s"
.LC5:
	.string	"0123456789"
.LC6:
	.string	"tab stop is too large %s"
	.align 8
.LC7:
	.string	"tab size contains invalid character(s): %s"
	.text
	.globl	parse_tab_stops
	.type	parse_tab_stops, @function
parse_tab_stops:
.LFB49:
	.loc 2 133 1
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
	movq	%rdi, -72(%rbp)
	.loc 2 133 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 134 8
	movb	$0, -60(%rbp)
	.loc 2 135 13
	movq	$0, -56(%rbp)
	.loc 2 136 8
	movb	$0, -59(%rbp)
	.loc 2 137 8
	movb	$0, -58(%rbp)
	.loc 2 138 15
	movq	$0, -48(%rbp)
	.loc 2 139 8
	movb	$1, -57(%rbp)
	.loc 2 141 3
	jmp	.L18
.L34:
	.loc 2 143 11
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 143 10
	cmpb	$44, %al
	je	.L19
	.loc 2 143 28 discriminator 1
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
	andl	$1, %eax
	.loc 2 143 25 discriminator 1
	testl	%eax, %eax
	je	.L20
.L19:
	.loc 2 145 14
	cmpb	$0, -60(%rbp)
	je	.L21
	.loc 2 147 18
	cmpb	$0, -59(%rbp)
	je	.L22
	.loc 2 149 25
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	set_extend_size
	.loc 2 149 23
	xorl	$1, %eax
	.loc 2 149 22
	testb	%al, %al
	je	.L21
	.loc 2 151 26
	movb	$0, -57(%rbp)
	.loc 2 152 23
	jmp	.L23
.L22:
	.loc 2 155 23
	cmpb	$0, -58(%rbp)
	je	.L24
	.loc 2 157 25
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	set_increment_size
	.loc 2 157 23
	xorl	$1, %eax
	.loc 2 157 22
	testb	%al, %al
	je	.L21
	.loc 2 159 26
	movb	$0, -57(%rbp)
	.loc 2 160 23
	jmp	.L23
.L24:
	.loc 2 164 17
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	add_tab_stop
.L21:
	.loc 2 166 23
	movb	$0, -60(%rbp)
	jmp	.L25
.L20:
	.loc 2 168 16
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 168 15
	cmpb	$47, %al
	jne	.L26
	.loc 2 170 14
	cmpb	$0, -60(%rbp)
	je	.L27
	.loc 2 172 15
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 172 28
	leaq	.LC3(%rip), %rdi
	call	gettext@PLT
	.loc 2 172 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 174 18
	movb	$0, -57(%rbp)
.L27:
	.loc 2 176 25
	movb	$1, -59(%rbp)
	.loc 2 177 28
	movb	$0, -58(%rbp)
	jmp	.L25
.L26:
	.loc 2 179 16
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 179 15
	cmpb	$43, %al
	jne	.L28
	.loc 2 181 14
	cmpb	$0, -60(%rbp)
	je	.L29
	.loc 2 183 15
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 183 28
	leaq	.LC4(%rip), %rdi
	call	gettext@PLT
	.loc 2 183 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 185 18
	movb	$0, -57(%rbp)
.L29:
	.loc 2 187 28
	movb	$1, -58(%rbp)
	.loc 2 188 25
	movb	$0, -59(%rbp)
	jmp	.L25
.L28:
	.loc 2 190 16
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 190 15
	cmpl	$9, %eax
	ja	.L30
	.loc 2 192 15
	movzbl	-60(%rbp), %eax
	xorl	$1, %eax
	.loc 2 192 14
	testb	%al, %al
	je	.L31
	.loc 2 194 22
	movq	$0, -56(%rbp)
	.loc 2 195 27
	movb	$1, -60(%rbp)
	.loc 2 196 25
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
.L31:
.LBB3:
	.loc 2 200 16
	movq	-56(%rbp), %rax
	.loc 2 200 15
	movabsq	$1844674407370955161, %rdx
	cmpq	%rdx, %rax
	ja	.L32
	.loc 2 200 16 discriminator 1
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.L32
	.loc 2 200 16 is_stmt 0 discriminator 3
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 2 200 15 is_stmt 1 discriminator 3
	movl	$0, %eax
	jmp	.L33
.L32:
	.loc 2 200 15 is_stmt 0 discriminator 4
	movl	$1, %eax
.L33:
	.loc 2 200 14 is_stmt 1 discriminator 6
	testb	%al, %al
	je	.L25
.LBB4:
	.loc 2 202 28
	movq	-48(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	movq	%rax, -40(%rbp)
	.loc 2 203 31
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xstrndup@PLT
	movq	%rax, -32(%rbp)
	.loc 2 204 15
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 204 28
	leaq	.LC6(%rip), %rdi
	call	gettext@PLT
	.loc 2 204 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 205 15
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 206 18
	movb	$0, -57(%rbp)
	.loc 2 207 39
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	.loc 2 207 21
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	jmp	.L25
.L30:
.LBE4:
.LBE3:
	.loc 2 212 11
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 212 24
	leaq	.LC7(%rip), %rdi
	call	gettext@PLT
	.loc 2 212 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 214 14
	movb	$0, -57(%rbp)
	.loc 2 215 11
	jmp	.L23
.L25:
	.loc 2 141 23
	addq	$1, -72(%rbp)
.L18:
	.loc 2 141 10 discriminator 1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 141 3 discriminator 1
	testb	%al, %al
	jne	.L34
.L23:
	.loc 2 219 6
	cmpb	$0, -57(%rbp)
	je	.L35
	.loc 2 219 10 discriminator 1
	cmpb	$0, -60(%rbp)
	je	.L35
	.loc 2 221 10
	cmpb	$0, -59(%rbp)
	je	.L36
	.loc 2 222 15
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	set_extend_size
	.loc 2 222 12
	movzbl	-57(%rbp), %edx
	.loc 2 222 15
	movzbl	%al, %eax
	.loc 2 222 12
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -57(%rbp)
	jmp	.L35
.L36:
	.loc 2 223 15
	cmpb	$0, -58(%rbp)
	je	.L37
	.loc 2 224 15
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	set_increment_size
	.loc 2 224 12
	movzbl	-57(%rbp), %edx
	.loc 2 224 15
	movzbl	%al, %eax
	.loc 2 224 12
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -57(%rbp)
	jmp	.L35
.L37:
	.loc 2 226 9
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	add_tab_stop
.L35:
	.loc 2 229 7
	movzbl	-57(%rbp), %eax
	xorl	$1, %eax
	.loc 2 229 6
	testb	%al, %al
	je	.L40
	.loc 2 230 5
	movl	$1, %edi
	call	exit@PLT
.L40:
	.loc 2 231 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L39
	call	__stack_chk_fail@PLT
.L39:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	parse_tab_stops, .-parse_tab_stops
	.section	.rodata
.LC8:
	.string	"tab size cannot be 0"
.LC9:
	.string	"tab sizes must be ascending"
	.align 8
.LC10:
	.string	"'/' specifier is mutually exclusive with '+'"
	.text
	.type	validate_tab_stops, @function
validate_tab_stops:
.LFB50:
	.loc 2 238 1
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
	.loc 2 239 13
	movq	$0, -16(%rbp)
.LBB5:
	.loc 2 241 15
	movq	$0, -8(%rbp)
	.loc 2 241 3
	jmp	.L42
.L45:
	.loc 2 243 15
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 243 10
	testq	%rax, %rax
	jne	.L43
.LBB6:
	.loc 2 244 9
	leaq	.LC8(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L43:
.LBE6:
	.loc 2 245 15
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	.loc 2 245 10
	cmpq	%rax, -16(%rbp)
	jb	.L44
.LBB7:
	.loc 2 246 9
	leaq	.LC9(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L44:
.LBE7:
	.loc 2 247 22 discriminator 2
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 247 16 discriminator 2
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 241 36 discriminator 2
	addq	$1, -8(%rbp)
.L42:
	.loc 2 241 3 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L45
.LBE5:
	.loc 2 250 7
	movq	increment_size(%rip), %rax
	.loc 2 250 6
	testq	%rax, %rax
	je	.L47
	.loc 2 250 22 discriminator 1
	movq	extend_size(%rip), %rax
	testq	%rax, %rax
	je	.L47
.LBB8:
	.loc 2 251 5
	leaq	.LC10(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L47:
.LBE8:
	.loc 2 252 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	validate_tab_stops, .-validate_tab_stops
	.globl	finalize_tab_stops
	.type	finalize_tab_stops, @function
finalize_tab_stops:
.LFB51:
	.loc 2 264 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 265 3
	movq	first_free_tab(%rip), %rdx
	movq	tab_list(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validate_tab_stops
	.loc 2 267 22
	movq	first_free_tab(%rip), %rax
	.loc 2 267 6
	testq	%rax, %rax
	jne	.L49
	.loc 2 269 35
	movq	extend_size(%rip), %rax
	.loc 2 269 49
	testq	%rax, %rax
	jne	.L50
	.loc 2 270 51
	movq	increment_size(%rip), %rax
	.loc 2 270 68
	testq	%rax, %rax
	je	.L51
	.loc 2 270 68 is_stmt 0 discriminator 1
	movq	increment_size(%rip), %rax
	jmp	.L53
.L51:
	.loc 2 270 68 discriminator 2
	movl	$8, %eax
	jmp	.L53
.L50:
	.loc 2 269 49 is_stmt 1 discriminator 1
	movq	extend_size(%rip), %rax
.L53:
	.loc 2 268 33
	movq	%rax, max_column_width(%rip)
	.loc 2 268 14
	movq	max_column_width(%rip), %rax
	movq	%rax, tab_size(%rip)
	.loc 2 275 1
	jmp	.L56
.L49:
	.loc 2 271 27
	movq	first_free_tab(%rip), %rax
	.loc 2 271 11
	cmpq	$1, %rax
	jne	.L55
	.loc 2 271 35 discriminator 1
	movq	extend_size(%rip), %rax
	.loc 2 271 32 discriminator 1
	testq	%rax, %rax
	jne	.L55
	.loc 2 271 52 discriminator 2
	movq	increment_size(%rip), %rax
	.loc 2 271 49 discriminator 2
	testq	%rax, %rax
	jne	.L55
	.loc 2 272 24
	movq	tab_list(%rip), %rax
	movq	(%rax), %rax
	.loc 2 272 14
	movq	%rax, tab_size(%rip)
	.loc 2 275 1
	jmp	.L56
.L55:
	.loc 2 274 14
	movq	$0, tab_size(%rip)
.L56:
	.loc 2 275 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	finalize_tab_stops, .-finalize_tab_stops
	.globl	get_next_tab_column
	.type	get_next_tab_column, @function
get_next_tab_column:
.LFB52:
	.loc 2 281 1
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
	.loc 2 282 13
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	.loc 2 285 7
	movq	tab_size(%rip), %rax
	.loc 2 285 6
	testq	%rax, %rax
	je	.L60
	.loc 2 286 31
	movq	tab_size(%rip), %rcx
	.loc 2 286 40
	movq	tab_size(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rax
	.loc 2 286 31
	subq	%rax, %rcx
	movq	%rcx, %rdx
	.loc 2 286 19
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L59
.L62:
.LBB9:
	.loc 2 292 33
	movq	tab_list(%rip), %rdx
	.loc 2 292 34
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 292 33
	salq	$3, %rax
	addq	%rdx, %rax
	.loc 2 292 19
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 293 12
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L61
	.loc 2 294 20
	movq	-8(%rbp), %rax
	jmp	.L59
.L61:
.LBE9:
	.loc 2 290 42
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 290 53
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L60:
	.loc 2 290 11 discriminator 1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 290 22 discriminator 1
	movq	first_free_tab(%rip), %rax
	.loc 2 290 3 discriminator 1
	cmpq	%rax, %rdx
	jb	.L62
	.loc 2 298 7
	movq	extend_size(%rip), %rax
	.loc 2 298 6
	testq	%rax, %rax
	je	.L63
	.loc 2 299 34
	movq	extend_size(%rip), %rcx
	.loc 2 299 43
	movq	extend_size(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rax
	.loc 2 299 34
	subq	%rax, %rcx
	movq	%rcx, %rdx
	.loc 2 299 19
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L59
.L63:
	.loc 2 302 7
	movq	increment_size(%rip), %rax
	.loc 2 302 6
	testq	%rax, %rax
	je	.L64
.LBB10:
	.loc 2 304 35
	movq	tab_list(%rip), %rax
	movq	first_free_tab(%rip), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	.loc 2 304 17
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 306 39
	movq	increment_size(%rip), %rcx
	.loc 2 306 50
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	.loc 2 306 61
	movq	increment_size(%rip), %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rax
	.loc 2 306 39
	subq	%rax, %rcx
	movq	%rcx, %rdx
	.loc 2 306 21
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L59
.L64:
.LBE10:
	.loc 2 309 13
	movq	-40(%rbp), %rax
	movb	$1, (%rax)
	.loc 2 310 10
	movl	$0, %eax
.L59:
	.loc 2 311 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	get_next_tab_column, .-get_next_tab_column
	.globl	set_file_list
	.type	set_file_list, @function
set_file_list:
.LFB53:
	.loc 2 319 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 320 19
	movb	$0, have_read_stdin(%rip)
	.loc 2 322 6
	cmpq	$0, -8(%rbp)
	jne	.L66
	.loc 2 323 15
	leaq	stdin_argv(%rip), %rax
	movq	%rax, file_list(%rip)
	.loc 2 326 1
	jmp	.L68
.L66:
	.loc 2 325 15
	movq	-8(%rbp), %rax
	movq	%rax, file_list(%rip)
.L68:
	.loc 2 326 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	set_file_list, .-set_file_list
	.section	.rodata
.LC11:
	.string	"src/expand-common.c"
.LC12:
	.string	"prev_file"
.LC13:
	.string	"%s"
.LC14:
	.string	"r"
	.text
	.globl	next_file
	.type	next_file, @function
next_file:
.LFB54:
	.loc 2 335 1
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
	.loc 2 339 6
	cmpq	$0, -40(%rbp)
	je	.L74
	.loc 2 341 7
	movq	prev_file.6337(%rip), %rax
	testq	%rax, %rax
	jne	.L71
	.loc 2 341 7 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.6339(%rip), %rcx
	movl	$341, %edx
	leaq	.LC11(%rip), %rsi
	leaq	.LC12(%rip), %rdi
	call	__assert_fail@PLT
.L71:
	.loc 2 342 11 is_stmt 1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ferror_unlocked@PLT
	.loc 2 342 10
	testl	%eax, %eax
	je	.L72
	.loc 2 344 11
	movq	prev_file.6337(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 344 21
	call	__errno_location@PLT
	.loc 2 344 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC13(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 345 23
	movl	$1, exit_status(%rip)
.L72:
	.loc 2 347 11
	movq	prev_file.6337(%rip), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 347 10
	testl	%eax, %eax
	jne	.L73
	.loc 2 348 9
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	clearerr_unlocked@PLT
	jmp	.L74
.L73:
	.loc 2 349 16
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 349 15
	testl	%eax, %eax
	je	.L74
	.loc 2 351 11
	movq	prev_file.6337(%rip), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 351 21
	call	__errno_location@PLT
	.loc 2 351 11
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC13(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 352 23
	movl	$1, exit_status(%rip)
	.loc 2 356 9
	jmp	.L74
.L79:
	.loc 2 358 11
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 358 10
	testl	%eax, %eax
	jne	.L75
	.loc 2 360 27
	movb	$1, have_read_stdin(%rip)
	.loc 2 361 14
	movq	stdin(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L76
.L75:
	.loc 2 364 14
	movq	-24(%rbp), %rax
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -40(%rbp)
.L76:
	.loc 2 365 10
	cmpq	$0, -40(%rbp)
	je	.L77
	.loc 2 367 21
	movq	-24(%rbp), %rax
	movq	%rax, prev_file.6337(%rip)
	.loc 2 368 11
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	fadvise@PLT
	.loc 2 369 18
	movq	-40(%rbp), %rax
	jmp	.L78
.L77:
	.loc 2 371 7
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$0, %edi
	call	quotearg_n_style_colon@PLT
	movq	%rax, %rbx
	.loc 2 371 17
	call	__errno_location@PLT
	.loc 2 371 7
	movl	(%rax), %eax
	movq	%rbx, %rcx
	leaq	.LC13(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 372 19
	movl	$1, exit_status(%rip)
.L74:
	.loc 2 356 28
	movq	file_list(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, file_list(%rip)
	.loc 2 356 16
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 356 9
	cmpq	$0, -24(%rbp)
	jne	.L79
	.loc 2 374 10
	movl	$0, %eax
.L78:
	.loc 2 375 1
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	next_file, .-next_file
	.globl	cleanup_file_list_stdin
	.type	cleanup_file_list_stdin, @function
cleanup_file_list_stdin:
.LFB55:
	.loc 2 380 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 381 9
	movzbl	have_read_stdin(%rip), %eax
	.loc 2 381 8
	testb	%al, %al
	je	.L82
	.loc 2 381 28 discriminator 1
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	rpl_fclose@PLT
	.loc 2 381 25 discriminator 1
	testl	%eax, %eax
	je	.L82
.LBB11:
	.loc 2 382 7
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC0(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	error@PLT
.L82:
.LBE11:
	.loc 2 383 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	cleanup_file_list_stdin, .-cleanup_file_list_stdin
	.section	.rodata
	.align 8
.LC15:
	.string	"  -t, --tabs=LIST  use comma separated list of tab positions.\n"
	.align 8
.LC16:
	.ascii	"                     The last specified position can be pref"
	.ascii	"ixed with '/'\n                     to specify a "
	.string	"tab size to use after the last\n                     explicitly specified tab stop.  Also a prefix of '+'\n                     can be used to align remaining tab stops relative to\n                     the last specified tab stop instead of the first column\n"
	.text
	.globl	emit_tab_list_info
	.type	emit_tab_list_info, @function
emit_tab_list_info:
.LFB56:
	.loc 2 388 1
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
	.loc 2 390 3
	movq	stdout(%rip), %rbx
	leaq	.LC15(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 393 3
	movq	stdout(%rip), %rbx
	leaq	.LC16(%rip), %rdi
	call	gettext@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	fputs_unlocked@PLT
	.loc 2 400 1
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	emit_tab_list_info, .-emit_tab_list_info
	.local	prev_file.6337
	.comm	prev_file.6337,8,8
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.6339, @object
	.size	__PRETTY_FUNCTION__.6339, 10
__PRETTY_FUNCTION__.6339:
	.string	"next_file"
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 10 "./lib/sys/select.h"
	.file 11 "/usr/include/time.h"
	.file 12 "/usr/include/signal.h"
	.file 13 "/usr/include/unistd.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 15 "/usr/include/errno.h"
	.file 16 "src/version.h"
	.file 17 "./lib/exitfail.h"
	.file 18 "/usr/include/stdint.h"
	.file 19 "./lib/timespec.h"
	.file 20 "/usr/include/ctype.h"
	.file 21 "./lib/version-etc.h"
	.file 22 "./lib/progname.h"
	.file 23 "./lib/quotearg.h"
	.file 24 "./lib/error.h"
	.file 25 "./lib/fadvise.h"
	.file 26 "./lib/quote.h"
	.file 27 "src/expand-common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb7e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF162
	.byte	0xc
	.long	.LASF163
	.long	.LASF164
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
	.long	.LASF165
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
	.long	.LASF166
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
	.uleb128 0xd
	.long	0xa8
	.long	0x355
	.uleb128 0xe
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF58
	.byte	0xb
	.byte	0x9f
	.byte	0xe
	.long	0x345
	.uleb128 0xf
	.long	.LASF59
	.byte	0xb
	.byte	0xa0
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF60
	.byte	0xb
	.byte	0xa1
	.byte	0x11
	.long	0x71
	.uleb128 0xf
	.long	.LASF61
	.byte	0xb
	.byte	0xa6
	.byte	0xe
	.long	0x345
	.uleb128 0xf
	.long	.LASF62
	.byte	0xb
	.byte	0xae
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF63
	.byte	0xb
	.byte	0xaf
	.byte	0x11
	.long	0x71
	.uleb128 0x11
	.long	.LASF64
	.byte	0xb
	.value	0x112
	.byte	0xc
	.long	0x65
	.uleb128 0x12
	.uleb128 0x7
	.byte	0x8
	.long	0x3aa
	.uleb128 0xd
	.long	0x2a8
	.long	0x3c1
	.uleb128 0xe
	.long	0x39
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x3b1
	.uleb128 0x11
	.long	.LASF65
	.byte	0xc
	.value	0x11e
	.byte	0x1a
	.long	0x3c1
	.uleb128 0x11
	.long	.LASF66
	.byte	0xc
	.value	0x11f
	.byte	0x1a
	.long	0x3c1
	.uleb128 0x11
	.long	.LASF67
	.byte	0xd
	.value	0x21f
	.byte	0xf
	.long	0x3ed
	.uleb128 0x7
	.byte	0x8
	.long	0xa8
	.uleb128 0x11
	.long	.LASF68
	.byte	0xd
	.value	0x221
	.byte	0xf
	.long	0x3ed
	.uleb128 0xf
	.long	.LASF69
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF70
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF71
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF72
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xf
	.long	.LASF73
	.byte	0xf
	.byte	0x2d
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF74
	.byte	0xf
	.byte	0x2e
	.byte	0xe
	.long	0xa8
	.uleb128 0xf
	.long	.LASF75
	.byte	0x10
	.byte	0x1
	.byte	0x14
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF76
	.byte	0x11
	.byte	0x12
	.byte	0x15
	.long	0x6c
	.uleb128 0x2
	.long	.LASF77
	.byte	0x12
	.byte	0x66
	.byte	0x16
	.long	0x78
	.uleb128 0x8
	.long	0x460
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x29
	.byte	0x6
	.long	0x489
	.uleb128 0x14
	.long	.LASF78
	.long	0x3b9aca00
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x13
	.byte	0x2a
	.byte	0x6
	.long	0x49e
	.uleb128 0x15
	.long	.LASF79
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x14
	.byte	0x2f
	.byte	0x1
	.long	0x4fd
	.uleb128 0x16
	.long	.LASF80
	.value	0x100
	.uleb128 0x16
	.long	.LASF81
	.value	0x200
	.uleb128 0x16
	.long	.LASF82
	.value	0x400
	.uleb128 0x16
	.long	.LASF83
	.value	0x800
	.uleb128 0x16
	.long	.LASF84
	.value	0x1000
	.uleb128 0x16
	.long	.LASF85
	.value	0x2000
	.uleb128 0x16
	.long	.LASF86
	.value	0x4000
	.uleb128 0x16
	.long	.LASF87
	.value	0x8000
	.uleb128 0x15
	.long	.LASF88
	.byte	0x1
	.uleb128 0x15
	.long	.LASF89
	.byte	0x2
	.uleb128 0x15
	.long	.LASF90
	.byte	0x4
	.uleb128 0x15
	.long	.LASF91
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0xb5
	.long	0x508
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x4fd
	.uleb128 0xf
	.long	.LASF92
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x508
	.uleb128 0xf
	.long	.LASF93
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0x2a2
	.uleb128 0x17
	.long	.LASF167
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x57a
	.uleb128 0x15
	.long	.LASF94
	.byte	0
	.uleb128 0x15
	.long	.LASF95
	.byte	0x1
	.uleb128 0x15
	.long	.LASF96
	.byte	0x2
	.uleb128 0x15
	.long	.LASF97
	.byte	0x3
	.uleb128 0x15
	.long	.LASF98
	.byte	0x4
	.uleb128 0x15
	.long	.LASF99
	.byte	0x5
	.uleb128 0x15
	.long	.LASF100
	.byte	0x6
	.uleb128 0x15
	.long	.LASF101
	.byte	0x7
	.uleb128 0x15
	.long	.LASF102
	.byte	0x8
	.uleb128 0x15
	.long	.LASF103
	.byte	0x9
	.uleb128 0x15
	.long	.LASF104
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x525
	.uleb128 0x11
	.long	.LASF105
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x2ee
	.uleb128 0xd
	.long	0x57a
	.long	0x597
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.long	0x58c
	.uleb128 0x11
	.long	.LASF106
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x597
	.uleb128 0xf
	.long	.LASF107
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x3ab
	.uleb128 0xf
	.long	.LASF108
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x40
	.uleb128 0xf
	.long	.LASF109
	.byte	0x18
	.byte	0x39
	.byte	0xc
	.long	0x65
	.uleb128 0x13
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x19
	.byte	0x2d
	.byte	0xe
	.long	0x600
	.uleb128 0x15
	.long	.LASF110
	.byte	0
	.uleb128 0x15
	.long	.LASF111
	.byte	0x2
	.uleb128 0x15
	.long	.LASF112
	.byte	0x5
	.uleb128 0x15
	.long	.LASF113
	.byte	0x4
	.uleb128 0x15
	.long	.LASF114
	.byte	0x3
	.uleb128 0x15
	.long	.LASF115
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	.LASF116
	.uleb128 0xf
	.long	.LASF117
	.byte	0x1a
	.byte	0x19
	.byte	0x1f
	.long	0x600
	.uleb128 0xf
	.long	.LASF118
	.byte	0x1b
	.byte	0x14
	.byte	0xd
	.long	0x61d
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF119
	.uleb128 0xf
	.long	.LASF120
	.byte	0x1b
	.byte	0x17
	.byte	0xf
	.long	0x2d
	.uleb128 0xf
	.long	.LASF121
	.byte	0x1b
	.byte	0x23
	.byte	0xc
	.long	0x65
	.uleb128 0x18
	.long	0x611
	.byte	0x2
	.byte	0x21
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	convert_entire_line
	.uleb128 0x19
	.long	.LASF122
	.byte	0x2
	.byte	0x24
	.byte	0x12
	.long	0x460
	.uleb128 0x9
	.byte	0x3
	.quad	tab_size
	.uleb128 0x19
	.long	.LASF123
	.byte	0x2
	.byte	0x27
	.byte	0x12
	.long	0x460
	.uleb128 0x9
	.byte	0x3
	.quad	extend_size
	.uleb128 0x19
	.long	.LASF124
	.byte	0x2
	.byte	0x2a
	.byte	0x12
	.long	0x460
	.uleb128 0x9
	.byte	0x3
	.quad	increment_size
	.uleb128 0x18
	.long	0x624
	.byte	0x2
	.byte	0x2d
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	max_column_width
	.uleb128 0x19
	.long	.LASF125
	.byte	0x2
	.byte	0x32
	.byte	0x13
	.long	0x6b8
	.uleb128 0x9
	.byte	0x3
	.quad	tab_list
	.uleb128 0x7
	.byte	0x8
	.long	0x460
	.uleb128 0x19
	.long	.LASF126
	.byte	0x2
	.byte	0x35
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	n_tabs_allocated
	.uleb128 0x19
	.long	.LASF127
	.byte	0x2
	.byte	0x39
	.byte	0xf
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	first_free_tab
	.uleb128 0x19
	.long	.LASF128
	.byte	0x2
	.byte	0x3c
	.byte	0xf
	.long	0x3ed
	.uleb128 0x9
	.byte	0x3
	.quad	file_list
	.uleb128 0x19
	.long	.LASF129
	.byte	0x2
	.byte	0x3f
	.byte	0xe
	.long	0x345
	.uleb128 0x9
	.byte	0x3
	.quad	stdin_argv
	.uleb128 0x19
	.long	.LASF130
	.byte	0x2
	.byte	0x45
	.byte	0xd
	.long	0x61d
	.uleb128 0x9
	.byte	0x3
	.quad	have_read_stdin
	.uleb128 0x18
	.long	0x630
	.byte	0x2
	.byte	0x48
	.byte	0x5
	.uleb128 0x9
	.byte	0x3
	.quad	exit_status
	.uleb128 0x1a
	.long	.LASF142
	.byte	0x2
	.value	0x183
	.byte	0x1
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.long	.LASF133
	.byte	0x2
	.value	0x17b
	.byte	0x1
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x78a
	.uleb128 0x1c
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.byte	0
	.uleb128 0x1d
	.long	.LASF136
	.byte	0x2
	.value	0x14e
	.byte	0x1
	.long	0x2b9
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f7
	.uleb128 0x1e
	.string	"fp"
	.byte	0x2
	.value	0x14e
	.byte	0x12
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF131
	.byte	0x2
	.value	0x150
	.byte	0x10
	.long	0xa8
	.uleb128 0x9
	.byte	0x3
	.quad	prev_file.6337
	.uleb128 0x1f
	.long	.LASF132
	.byte	0x2
	.value	0x151
	.byte	0x9
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF168
	.long	0x807
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.6339
	.byte	0
	.uleb128 0xd
	.long	0xb5
	.long	0x807
	.uleb128 0xe
	.long	0x39
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.long	0x7f7
	.uleb128 0x21
	.long	.LASF134
	.byte	0x2
	.value	0x13e
	.byte	0x1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x83c
	.uleb128 0x22
	.long	.LASF135
	.byte	0x2
	.value	0x13e
	.byte	0x17
	.long	0x3ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF137
	.byte	0x2
	.value	0x117
	.byte	0x1
	.long	0x460
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d8
	.uleb128 0x22
	.long	.LASF138
	.byte	0x2
	.value	0x117
	.byte	0x26
	.long	0x46c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF139
	.byte	0x2
	.value	0x117
	.byte	0x36
	.long	0x8d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF140
	.byte	0x2
	.value	0x118
	.byte	0x1c
	.long	0x8de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x8b5
	.uleb128 0x25
	.string	"tab"
	.byte	0x2
	.value	0x124
	.byte	0x13
	.long	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x1f
	.long	.LASF141
	.byte	0x2
	.value	0x130
	.byte	0x11
	.long	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2d
	.uleb128 0x7
	.byte	0x8
	.long	0x61d
	.uleb128 0x1a
	.long	.LASF143
	.byte	0x2
	.value	0x107
	.byte	0x1
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.long	.LASF160
	.byte	0x2
	.byte	0xed
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a1
	.uleb128 0x28
	.long	.LASF144
	.byte	0x2
	.byte	0xed
	.byte	0x26
	.long	0x9a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF145
	.byte	0x2
	.byte	0xed
	.byte	0x33
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF146
	.byte	0x2
	.byte	0xef
	.byte	0xd
	.long	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x98f
	.uleb128 0x29
	.string	"i"
	.byte	0x2
	.byte	0xf1
	.byte	0xf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1c
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.byte	0
	.uleb128 0x1c
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x46c
	.uleb128 0x2a
	.long	.LASF147
	.byte	0x2
	.byte	0x84
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xa76
	.uleb128 0x28
	.long	.LASF148
	.byte	0x2
	.byte	0x84
	.byte	0x1e
	.long	0x2a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x19
	.long	.LASF149
	.byte	0x2
	.byte	0x86
	.byte	0x8
	.long	0x61d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x19
	.long	.LASF150
	.byte	0x2
	.byte	0x87
	.byte	0xd
	.long	0x460
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.long	.LASF151
	.byte	0x2
	.byte	0x88
	.byte	0x8
	.long	0x61d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -75
	.uleb128 0x19
	.long	.LASF152
	.byte	0x2
	.byte	0x89
	.byte	0x8
	.long	0x61d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -74
	.uleb128 0x19
	.long	.LASF153
	.byte	0x2
	.byte	0x8a
	.byte	0xf
	.long	0x2a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"ok"
	.byte	0x2
	.byte	0x8b
	.byte	0x8
	.long	0x61d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x26
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x26
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x29
	.string	"len"
	.byte	0x2
	.byte	0xca
	.byte	0x16
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF154
	.byte	0x2
	.byte	0xcb
	.byte	0x15
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF155
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.long	0x61d
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xab6
	.uleb128 0x28
	.long	.LASF150
	.byte	0x2
	.byte	0x71
	.byte	0x1f
	.long	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"ok"
	.byte	0x2
	.byte	0x73
	.byte	0x8
	.long	0x61d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2b
	.long	.LASF156
	.byte	0x2
	.byte	0x60
	.byte	0x1
	.long	0x61d
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xaf6
	.uleb128 0x28
	.long	.LASF150
	.byte	0x2
	.byte	0x60
	.byte	0x1c
	.long	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"ok"
	.byte	0x2
	.byte	0x62
	.byte	0x8
	.long	0x61d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2a
	.long	.LASF157
	.byte	0x2
	.byte	0x4e
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xb54
	.uleb128 0x28
	.long	.LASF150
	.byte	0x2
	.byte	0x4e
	.byte	0x19
	.long	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF158
	.byte	0x2
	.byte	0x50
	.byte	0xd
	.long	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF159
	.byte	0x2
	.byte	0x51
	.byte	0xd
	.long	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2d
	.long	.LASF161
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0x49
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0xae
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0
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
	.uleb128 0x2117
	.uleb128 0x19
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
.LASF120:
	.string	"max_column_width"
.LASF9:
	.string	"__off_t"
.LASF87:
	.string	"_ISgraph"
.LASF102:
	.string	"locale_quoting_style"
.LASF26:
	.string	"_chain"
.LASF163:
	.string	"src/expand-common.c"
.LASF167:
	.string	"quoting_style"
.LASF7:
	.string	"size_t"
.LASF79:
	.string	"LOG10_TIMESPEC_HZ"
.LASF32:
	.string	"_shortbuf"
.LASF126:
	.string	"n_tabs_allocated"
.LASF85:
	.string	"_ISspace"
.LASF96:
	.string	"shell_always_quoting_style"
.LASF95:
	.string	"shell_quoting_style"
.LASF134:
	.string	"set_file_list"
.LASF20:
	.string	"_IO_buf_base"
.LASF154:
	.string	"bad_num"
.LASF57:
	.string	"long long unsigned int"
.LASF141:
	.string	"end_tab"
.LASF82:
	.string	"_ISalpha"
.LASF35:
	.string	"_codecvt"
.LASF83:
	.string	"_ISdigit"
.LASF60:
	.string	"__timezone"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF106:
	.string	"quoting_style_vals"
.LASF168:
	.string	"__PRETTY_FUNCTION__"
.LASF101:
	.string	"escape_quoting_style"
.LASF160:
	.string	"validate_tab_stops"
.LASF125:
	.string	"tab_list"
.LASF94:
	.string	"literal_quoting_style"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF66:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF56:
	.string	"_gl_cxxalias_dummy"
.LASF13:
	.string	"_flags"
.LASF159:
	.string	"column_width"
.LASF36:
	.string	"_wide_data"
.LASF91:
	.string	"_ISalnum"
.LASF30:
	.string	"_cur_column"
.LASF74:
	.string	"program_invocation_short_name"
.LASF152:
	.string	"increment_tabval"
.LASF44:
	.string	"_IO_codecvt"
.LASF153:
	.string	"num_start"
.LASF52:
	.string	"_sys_errlist"
.LASF73:
	.string	"program_invocation_name"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF88:
	.string	"_ISblank"
.LASF78:
	.string	"TIMESPEC_HZ"
.LASF98:
	.string	"shell_escape_always_quoting_style"
.LASF122:
	.string	"tab_size"
.LASF63:
	.string	"timezone"
.LASF90:
	.string	"_ISpunct"
.LASF93:
	.string	"program_name"
.LASF97:
	.string	"shell_escape_quoting_style"
.LASF43:
	.string	"_IO_marker"
.LASF46:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF123:
	.string	"extend_size"
.LASF0:
	.string	"long unsigned int"
.LASF77:
	.string	"uintmax_t"
.LASF18:
	.string	"_IO_write_ptr"
.LASF49:
	.string	"sys_nerr"
.LASF162:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF104:
	.string	"custom_quoting_style"
.LASF3:
	.string	"short unsigned int"
.LASF69:
	.string	"optarg"
.LASF109:
	.string	"error_one_per_line"
.LASF75:
	.string	"Version"
.LASF140:
	.string	"last_tab"
.LASF22:
	.string	"_IO_save_base"
.LASF68:
	.string	"environ"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF47:
	.string	"stdout"
.LASF111:
	.string	"FADVISE_SEQUENTIAL"
.LASF157:
	.string	"add_tab_stop"
.LASF92:
	.string	"version_etc_copyright"
.LASF145:
	.string	"entries"
.LASF158:
	.string	"prev_column"
.LASF81:
	.string	"_ISlower"
.LASF136:
	.string	"next_file"
.LASF64:
	.string	"getdate_err"
.LASF70:
	.string	"optind"
.LASF14:
	.string	"_IO_read_ptr"
.LASF10:
	.string	"__off64_t"
.LASF166:
	.string	"_IO_lock_t"
.LASF165:
	.string	"_IO_FILE"
.LASF107:
	.string	"error_print_progname"
.LASF67:
	.string	"__environ"
.LASF55:
	.string	"time_t"
.LASF148:
	.string	"stops"
.LASF144:
	.string	"tabs"
.LASF124:
	.string	"increment_size"
.LASF147:
	.string	"parse_tab_stops"
.LASF142:
	.string	"emit_tab_list_info"
.LASF25:
	.string	"_markers"
.LASF127:
	.string	"first_free_tab"
.LASF161:
	.string	"to_uchar"
.LASF118:
	.string	"convert_entire_line"
.LASF100:
	.string	"c_maybe_quoting_style"
.LASF131:
	.string	"prev_file"
.LASF119:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF121:
	.string	"exit_status"
.LASF129:
	.string	"stdin_argv"
.LASF21:
	.string	"_IO_buf_end"
.LASF5:
	.string	"short int"
.LASF132:
	.string	"file"
.LASF117:
	.string	"quote_quoting_options"
.LASF51:
	.string	"_sys_nerr"
.LASF31:
	.string	"_vtable_offset"
.LASF61:
	.string	"tzname"
.LASF42:
	.string	"FILE"
.LASF76:
	.string	"exit_failure"
.LASF115:
	.string	"FADVISE_RANDOM"
.LASF143:
	.string	"finalize_tab_stops"
.LASF112:
	.string	"FADVISE_NOREUSE"
.LASF105:
	.string	"quoting_style_args"
.LASF72:
	.string	"optopt"
.LASF62:
	.string	"daylight"
.LASF139:
	.string	"tab_index"
.LASF155:
	.string	"set_increment_size"
.LASF149:
	.string	"have_tabval"
.LASF54:
	.string	"long double"
.LASF12:
	.string	"char"
.LASF113:
	.string	"FADVISE_DONTNEED"
.LASF156:
	.string	"set_extend_size"
.LASF89:
	.string	"_IScntrl"
.LASF11:
	.string	"__time_t"
.LASF137:
	.string	"get_next_tab_column"
.LASF84:
	.string	"_ISxdigit"
.LASF103:
	.string	"clocale_quoting_style"
.LASF133:
	.string	"cleanup_file_list_stdin"
.LASF71:
	.string	"opterr"
.LASF8:
	.string	"__uintmax_t"
.LASF110:
	.string	"FADVISE_NORMAL"
.LASF116:
	.string	"quoting_options"
.LASF16:
	.string	"_IO_read_base"
.LASF138:
	.string	"column"
.LASF24:
	.string	"_IO_save_end"
.LASF99:
	.string	"c_quoting_style"
.LASF65:
	.string	"_sys_siglist"
.LASF130:
	.string	"have_read_stdin"
.LASF39:
	.string	"__pad5"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF48:
	.string	"stderr"
.LASF59:
	.string	"__daylight"
.LASF128:
	.string	"file_list"
.LASF164:
	.string	"/root/coreutils"
.LASF151:
	.string	"extend_tabval"
.LASF80:
	.string	"_ISupper"
.LASF23:
	.string	"_IO_backup_base"
.LASF108:
	.string	"error_message_count"
.LASF50:
	.string	"sys_errlist"
.LASF150:
	.string	"tabval"
.LASF37:
	.string	"_freeres_list"
.LASF45:
	.string	"_IO_wide_data"
.LASF114:
	.string	"FADVISE_WILLNEED"
.LASF135:
	.string	"list"
.LASF58:
	.string	"__tzname"
.LASF17:
	.string	"_IO_write_base"
.LASF146:
	.string	"prev_tab"
.LASF86:
	.string	"_ISprint"
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
