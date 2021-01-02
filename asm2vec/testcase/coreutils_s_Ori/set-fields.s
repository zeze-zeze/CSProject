	.file	"set-fields.c"
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
	.globl	frp
	.bss
	.align 8
	.type	frp, @object
	.size	frp, 8
frp:
	.zero	8
	.globl	n_frp
	.align 8
	.type	n_frp, @object
	.size	n_frp, 8
n_frp:
	.zero	8
	.local	n_frp_allocated
	.comm	n_frp_allocated,8,8
	.text
	.type	add_range_pair, @function
add_range_pair:
.LFB46:
	.file 2 "src/set-fields.c"
	.loc 2 49 1
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
	.loc 2 50 13
	movq	n_frp(%rip), %rdx
	movq	n_frp_allocated(%rip), %rax
	.loc 2 50 6
	cmpq	%rax, %rdx
	jne	.L4
.LBB2:
	.loc 2 51 11
	movq	frp(%rip), %rax
	movl	$16, %edx
	leaq	n_frp_allocated(%rip), %rsi
	movq	%rax, %rdi
	call	x2nrealloc@PLT
	.loc 2 51 9
	movq	%rax, frp(%rip)
.L4:
.LBE2:
	.loc 2 52 6
	movq	frp(%rip), %rax
	movq	n_frp(%rip), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	.loc 2 52 17
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	.loc 2 53 6
	movq	frp(%rip), %rax
	movq	n_frp(%rip), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	.loc 2 53 17
	movq	-16(%rbp), %rax
	movq	%rax, 8(%rdx)
	.loc 2 54 3
	movq	n_frp(%rip), %rax
	addq	$1, %rax
	movq	%rax, n_frp(%rip)
	.loc 2 55 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	add_range_pair, .-add_range_pair
	.type	compare_ranges, @function
compare_ranges:
.LFB47:
	.loc 2 62 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 2 63 54
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 63 7
	movl	%eax, -8(%rbp)
	.loc 2 64 54
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 64 7
	movl	%eax, -4(%rbp)
	.loc 2 65 33
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L6
	.loc 2 65 43 discriminator 1
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	setg	%al
	.loc 2 65 33 discriminator 1
	movzbl	%al, %eax
	jmp	.L8
.L6:
	.loc 2 65 33 is_stmt 0 discriminator 2
	movl	$-1, %eax
.L8:
	.loc 2 66 1 is_stmt 1 discriminator 5
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	compare_ranges, .-compare_ranges
	.type	complement_rp, @function
complement_rp:
.LFB48:
	.loc 2 73 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 2 74 28
	movq	frp(%rip), %rax
	movq	%rax, -16(%rbp)
	.loc 2 75 10
	movq	n_frp(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 2 77 7
	movq	$0, frp(%rip)
	.loc 2 78 9
	movq	$0, n_frp(%rip)
	.loc 2 79 19
	movq	$0, n_frp_allocated(%rip)
	.loc 2 81 11
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 81 6
	cmpq	$1, %rax
	jbe	.L10
	.loc 2 82 28
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 82 5
	subq	$1, %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	add_range_pair
.L10:
.LBB3:
	.loc 2 84 15
	movq	$1, -24(%rbp)
	.loc 2 84 3
	jmp	.L11
.L14:
	.loc 2 86 12
	movq	-24(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 86 17
	movq	8(%rax), %rax
	.loc 2 86 21
	leaq	1(%rax), %rdx
	.loc 2 86 29
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 86 32
	movq	(%rax), %rax
	.loc 2 86 10
	cmpq	%rax, %rdx
	je	.L16
	.loc 2 89 39
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 89 42
	movq	(%rax), %rax
	.loc 2 89 7
	leaq	-1(%rax), %rdx
	.loc 2 89 24
	movq	-24(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	.loc 2 89 29
	movq	8(%rax), %rax
	.loc 2 89 7
	addq	$1, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_range_pair
	jmp	.L13
.L16:
	.loc 2 87 9
	nop
.L13:
	.loc 2 84 29 discriminator 2
	addq	$1, -24(%rbp)
.L11:
	.loc 2 84 3 discriminator 1
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L14
.LBE3:
	.loc 2 92 8
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 92 13
	movq	8(%rax), %rax
	.loc 2 92 6
	cmpq	$-1, %rax
	je	.L15
	.loc 2 93 22
	movq	-8(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 93 27
	movq	8(%rax), %rax
	.loc 2 93 5
	addq	$1, %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	add_range_pair
.L15:
	.loc 2 95 3
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 96 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	complement_rp, .-complement_rp
	.section	.rodata
.LC0:
	.string	"-"
	.align 8
.LC1:
	.string	"invalid byte or character range"
.LC2:
	.string	"invalid field range"
	.align 8
.LC3:
	.string	"byte/character positions are numbered from 1"
.LC4:
	.string	"fields are numbered from 1"
	.align 8
.LC5:
	.string	"invalid range with no endpoint: -"
.LC6:
	.string	"invalid decreasing range"
.LC7:
	.string	"0123456789"
	.align 8
.LC8:
	.string	"byte/character offset %s is too large"
.LC9:
	.string	"field number %s is too large"
	.align 8
.LC10:
	.string	"invalid byte/character position %s"
.LC11:
	.string	"invalid field value %s"
	.align 8
.LC12:
	.string	"missing list of byte/character positions"
.LC13:
	.string	"missing list of fields"
	.text
	.globl	set_fields
	.type	set_fields, @function
set_fields:
.LFB49:
	.loc 2 139 1
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
	movl	%esi, -92(%rbp)
	.loc 2 139 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 2 140 13
	movq	$1, -64(%rbp)
	.loc 2 141 13
	movq	$0, -72(%rbp)
	.loc 2 142 8
	movb	$0, -76(%rbp)
	.loc 2 143 8
	movb	$0, -75(%rbp)
	.loc 2 144 8
	movb	$0, -74(%rbp)
	.loc 2 146 8
	movb	$0, -73(%rbp)
	.loc 2 151 16
	movl	-92(%rbp), %eax
	andl	$1, %eax
	.loc 2 151 6
	testl	%eax, %eax
	je	.L54
	.loc 2 151 40 discriminator 1
	movq	-88(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 2 151 37 discriminator 1
	testl	%eax, %eax
	jne	.L54
	.loc 2 153 13
	movq	$1, -72(%rbp)
	.loc 2 154 21
	movb	$1, -76(%rbp)
	.loc 2 155 18
	movb	$1, -74(%rbp)
	.loc 2 156 15
	addq	$1, -88(%rbp)
.L54:
	.loc 2 161 11
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 161 10
	cmpb	$45, %al
	jne	.L19
	.loc 2 163 21
	movb	$0, -73(%rbp)
	.loc 2 165 14
	cmpb	$0, -74(%rbp)
	je	.L20
	.loc 2 166 13
	movl	-92(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L21
	.loc 2 166 13 is_stmt 0 discriminator 1
	leaq	.LC1(%rip), %rdi
	call	gettext@PLT
	jmp	.L22
.L21:
	.loc 2 166 13 discriminator 2
	leaq	.LC2(%rip), %rdi
	call	gettext@PLT
.L22:
	.loc 2 166 13 discriminator 4
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage@PLT
.L20:
	.loc 2 170 22 is_stmt 1
	movb	$1, -74(%rbp)
	.loc 2 171 19
	addq	$1, -88(%rbp)
	.loc 2 173 14
	cmpb	$0, -76(%rbp)
	je	.L23
	.loc 2 173 32 discriminator 1
	movq	-72(%rbp), %rax
	.loc 2 173 29 discriminator 1
	testq	%rax, %rax
	jne	.L23
	.loc 2 174 13
	movl	-92(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L24
	.loc 2 174 13 is_stmt 0 discriminator 1
	leaq	.LC3(%rip), %rdi
	call	gettext@PLT
	jmp	.L25
.L24:
	.loc 2 174 13 discriminator 2
	leaq	.LC4(%rip), %rdi
	call	gettext@PLT
.L25:
	.loc 2 174 13 discriminator 4
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage@PLT
.L23:
	.loc 2 178 44 is_stmt 1
	cmpb	$0, -76(%rbp)
	je	.L26
	.loc 2 178 44 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax
	jmp	.L27
.L26:
	.loc 2 178 44 discriminator 2
	movl	$1, %eax
.L27:
	.loc 2 178 19 is_stmt 1 discriminator 4
	movq	%rax, -64(%rbp)
	.loc 2 179 17 discriminator 4
	movq	$0, -72(%rbp)
	jmp	.L54
.L19:
	.loc 2 181 16
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 181 15
	cmpb	$44, %al
	je	.L29
	.loc 2 182 19
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	movq	-88(%rbp), %rax
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
	.loc 2 182 16
	testl	%eax, %eax
	jne	.L29
	.loc 2 182 53 discriminator 1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 182 50 discriminator 1
	testb	%al, %al
	jne	.L30
.L29:
	.loc 2 184 21
	movb	$0, -73(%rbp)
	.loc 2 186 14
	cmpb	$0, -74(%rbp)
	je	.L31
	.loc 2 188 26
	movb	$0, -74(%rbp)
	.loc 2 190 19
	movzbl	-76(%rbp), %eax
	xorl	$1, %eax
	.loc 2 190 18
	testb	%al, %al
	je	.L32
	.loc 2 190 37 discriminator 1
	movzbl	-75(%rbp), %eax
	xorl	$1, %eax
	.loc 2 190 34 discriminator 1
	testb	%al, %al
	je	.L32
	.loc 2 193 31
	movl	-92(%rbp), %eax
	andl	$1, %eax
	.loc 2 193 22
	testl	%eax, %eax
	je	.L33
	.loc 2 194 29
	movq	$1, -64(%rbp)
	jmp	.L32
.L33:
	.loc 2 196 21
	leaq	.LC5(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage@PLT
.L32:
	.loc 2 201 19
	movzbl	-75(%rbp), %eax
	xorl	$1, %eax
	.loc 2 201 18
	testb	%al, %al
	je	.L34
	.loc 2 204 19
	movq	-64(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	add_range_pair
	jmp	.L35
.L34:
	.loc 2 209 29
	movq	-72(%rbp), %rax
	.loc 2 209 22
	cmpq	%rax, -64(%rbp)
	jbe	.L36
	.loc 2 210 21
	leaq	.LC6(%rip), %rdi
	call	gettext@PLT
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage@PLT
.L36:
	.loc 2 212 19
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_range_pair
.L35:
	.loc 2 214 21
	movq	$0, -72(%rbp)
	jmp	.L37
.L31:
	.loc 2 219 25
	movq	-72(%rbp), %rax
	.loc 2 219 18
	testq	%rax, %rax
	jne	.L38
	.loc 2 220 17
	movl	-92(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L39
	.loc 2 220 17 is_stmt 0 discriminator 1
	leaq	.LC3(%rip), %rdi
	call	gettext@PLT
	jmp	.L40
.L39:
	.loc 2 220 17 discriminator 2
	leaq	.LC4(%rip), %rdi
	call	gettext@PLT
.L40:
	.loc 2 220 17 discriminator 4
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage@PLT
.L38:
	.loc 2 224 15 is_stmt 1
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_range_pair
	.loc 2 225 21
	movq	$0, -72(%rbp)
.L37:
	.loc 2 228 15
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 2 228 14
	testb	%al, %al
	je	.L68
	.loc 2 231 19
	addq	$1, -88(%rbp)
	.loc 2 232 25
	movb	$0, -76(%rbp)
	.loc 2 233 25
	movb	$0, -75(%rbp)
	jmp	.L28
.L30:
	.loc 2 235 16
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	.loc 2 235 15
	cmpl	$9, %eax
	ja	.L43
.LBB4:
	.loc 2 240 15
	movzbl	-73(%rbp), %eax
	xorl	$1, %eax
	.loc 2 240 14
	testb	%al, %al
	jne	.L44
	.loc 2 240 29 discriminator 1
	movq	num_start.6257(%rip), %rax
	.loc 2 240 26 discriminator 1
	testq	%rax, %rax
	jne	.L45
.L44:
	.loc 2 241 23
	movq	-88(%rbp), %rax
	movq	%rax, num_start.6257(%rip)
.L45:
	.loc 2 242 21
	movb	$1, -73(%rbp)
	.loc 2 244 14
	cmpb	$0, -74(%rbp)
	je	.L46
	.loc 2 245 27
	movb	$1, -75(%rbp)
	jmp	.L47
.L46:
	.loc 2 247 27
	movb	$1, -76(%rbp)
.L47:
.LBB5:
	.loc 2 250 16
	movq	-72(%rbp), %rax
	.loc 2 250 14
	movabsq	$1844674407370955161, %rdx
	cmpq	%rdx, %rax
	ja	.L48
	.loc 2 250 16 discriminator 1
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.L48
	.loc 2 250 16 is_stmt 0 discriminator 3
	movq	-72(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	.loc 2 250 14 is_stmt 1 discriminator 3
	nop
	.loc 2 251 24 discriminator 3
	movq	-72(%rbp), %rax
	.loc 2 251 15 discriminator 3
	cmpq	$-1, %rax
	jne	.L49
.L48:
.LBB6:
	.loc 2 256 28
	movq	num_start.6257(%rip), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	strspn@PLT
	movq	%rax, -40(%rbp)
	.loc 2 257 31
	movq	num_start.6257(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xstrndup@PLT
	movq	%rax, -32(%rbp)
	.loc 2 258 15
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 258 37
	movl	-92(%rbp), %eax
	andl	$4, %eax
	.loc 2 258 15
	testl	%eax, %eax
	je	.L50
	.loc 2 259 29
	leaq	.LC8(%rip), %rdi
	call	gettext@PLT
	jmp	.L51
.L50:
	.loc 2 260 29
	leaq	.LC9(%rip), %rdi
	call	gettext@PLT
.L51:
	.loc 2 258 15
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 262 15
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 263 15
	movl	$1, %edi
	call	usage@PLT
.L49:
.LBE6:
.LBE5:
	.loc 2 266 19
	addq	$1, -88(%rbp)
.LBE4:
	jmp	.L54
.L43:
	.loc 2 270 11
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	quote@PLT
	movq	%rax, %rbx
	.loc 2 270 33
	movl	-92(%rbp), %eax
	andl	$4, %eax
	.loc 2 270 11
	testl	%eax, %eax
	je	.L52
	.loc 2 271 25
	leaq	.LC10(%rip), %rdi
	call	gettext@PLT
	jmp	.L53
.L52:
	.loc 2 272 25
	leaq	.LC11(%rip), %rdi
	call	gettext@PLT
.L53:
	.loc 2 270 11
	movq	%rbx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	.loc 2 274 11
	movl	$1, %edi
	call	usage@PLT
.L28:
	.loc 2 161 10
	jmp	.L54
.L68:
	.loc 2 229 13
	nop
	.loc 2 278 7
	movq	n_frp(%rip), %rax
	.loc 2 278 6
	testq	%rax, %rax
	jne	.L55
	.loc 2 279 5
	movl	-92(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L56
	.loc 2 279 5 is_stmt 0 discriminator 1
	leaq	.LC12(%rip), %rdi
	call	gettext@PLT
	jmp	.L57
.L56:
	.loc 2 279 5 discriminator 2
	leaq	.LC13(%rip), %rdi
	call	gettext@PLT
.L57:
	.loc 2 279 5 discriminator 4
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	error@PLT
	movl	$1, %edi
	call	usage@PLT
.L55:
	.loc 2 283 3 is_stmt 1
	movq	n_frp(%rip), %rsi
	movq	frp(%rip), %rax
	leaq	compare_ranges(%rip), %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	qsort@PLT
.LBB7:
	.loc 2 286 15
	movq	$0, -56(%rbp)
	.loc 2 286 3
	jmp	.L58
.L64:
.LBB8:
	.loc 2 288 19
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	.loc 2 288 7
	jmp	.L59
.L63:
	.loc 2 290 18
	movq	frp(%rip), %rax
	movq	-48(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 2 290 21
	movq	(%rax), %rdx
	.loc 2 290 31
	movq	frp(%rip), %rax
	movq	-56(%rbp), %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	.loc 2 290 34
	movq	8(%rax), %rax
	.loc 2 290 14
	cmpq	%rax, %rdx
	ja	.L69
	.loc 2 292 27
	movq	frp(%rip), %rax
	movq	-56(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	frp(%rip), %rax
	movq	-48(%rbp), %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	.loc 2 292 18
	movq	frp(%rip), %rcx
	movq	-56(%rbp), %rsi
	salq	$4, %rsi
	addq	%rsi, %rcx
	.loc 2 292 27
	cmpq	%rax, %rdx
	cmovnb	%rdx, %rax
	.loc 2 292 25
	movq	%rax, 8(%rcx)
	.loc 2 293 53
	movq	n_frp(%rip), %rax
	subq	-48(%rbp), %rax
	.loc 2 293 57
	subq	$1, %rax
	.loc 2 293 15
	salq	$4, %rax
	movq	%rax, %rdx
	movq	frp(%rip), %rax
	.loc 2 293 41
	movq	-48(%rbp), %rcx
	addq	$1, %rcx
	salq	$4, %rcx
	addq	%rax, %rcx
	.loc 2 293 15
	movq	frp(%rip), %rax
	.loc 2 293 28
	movq	-48(%rbp), %rsi
	salq	$4, %rsi
	addq	%rsi, %rax
	.loc 2 293 15
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	.loc 2 294 20
	movq	n_frp(%rip), %rax
	subq	$1, %rax
	movq	%rax, n_frp(%rip)
	.loc 2 295 16
	subq	$1, -48(%rbp)
	.loc 2 288 41
	addq	$1, -48(%rbp)
.L59:
	.loc 2 288 32 discriminator 1
	movq	n_frp(%rip), %rax
	.loc 2 288 7 discriminator 1
	cmpq	%rax, -48(%rbp)
	jb	.L63
	jmp	.L62
.L69:
	.loc 2 298 13
	nop
.L62:
.LBE8:
	.loc 2 286 33 discriminator 2
	addq	$1, -56(%rbp)
.L58:
	.loc 2 286 24 discriminator 1
	movq	n_frp(%rip), %rax
	.loc 2 286 3 discriminator 1
	cmpq	%rax, -56(%rbp)
	jb	.L64
.LBE7:
	.loc 2 302 15
	movl	-92(%rbp), %eax
	andl	$2, %eax
	.loc 2 302 6
	testl	%eax, %eax
	je	.L65
	.loc 2 303 5
	call	complement_rp
.L65:
	.loc 2 308 3
	movq	n_frp(%rip), %rax
	addq	$1, %rax
	movq	%rax, n_frp(%rip)
	.loc 2 309 9
	movq	n_frp(%rip), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	frp(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xrealloc@PLT
	.loc 2 309 7
	movq	%rax, frp(%rip)
	.loc 2 310 26
	movq	frp(%rip), %rax
	movq	n_frp(%rip), %rdx
	salq	$4, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	.loc 2 310 41
	movq	$-1, 8(%rax)
	.loc 2 310 6
	movq	frp(%rip), %rdx
	movq	n_frp(%rip), %rcx
	salq	$4, %rcx
	subq	$16, %rcx
	addq	%rcx, %rdx
	.loc 2 310 37
	movq	8(%rax), %rax
	.loc 2 310 21
	movq	%rax, (%rdx)
	.loc 2 311 1
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L66
	call	__stack_chk_fail@PLT
.L66:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	set_fields, .-set_fields
	.globl	reset_fields
	.type	reset_fields, @function
reset_fields:
.LFB50:
	.loc 2 315 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 316 9
	movq	$0, n_frp(%rip)
	.loc 2 317 19
	movq	$0, n_frp_allocated(%rip)
	.loc 2 318 3
	movq	frp(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 2 319 7
	movq	$0, frp(%rip)
	.loc 2 320 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	reset_fields, .-reset_fields
	.local	num_start.6257
	.comm	num_start.6257,8,8
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 6 "./lib/sys/select.h"
	.file 7 "/usr/include/time.h"
	.file 8 "/usr/include/signal.h"
	.file 9 "/usr/include/unistd.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 11 "/usr/include/errno.h"
	.file 12 "src/version.h"
	.file 13 "./lib/exitfail.h"
	.file 14 "/usr/include/stdint.h"
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
	.file 25 "./lib/quote.h"
	.file 26 "src/set-fields.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x91a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF135
	.byte	0xc
	.long	.LASF136
	.long	.LASF137
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
	.byte	0x49
	.byte	0x1b
	.long	0x42
	.uleb128 0x5
	.long	.LASF8
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x63
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x63
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0x63
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0xa2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x8
	.long	0xa2
	.uleb128 0x5
	.long	.LASF12
	.byte	0x4
	.byte	0x7
	.byte	0x12
	.long	0x8e
	.uleb128 0x5
	.long	.LASF13
	.byte	0x5
	.byte	0xd1
	.byte	0x17
	.long	0x42
	.uleb128 0x9
	.long	.LASF16
	.byte	0x6
	.value	0x30c
	.byte	0x1
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x7
	.byte	0x8
	.long	0xa9
	.uleb128 0x8
	.long	0xe1
	.uleb128 0xa
	.long	0x9c
	.long	0xfc
	.uleb128 0xb
	.long	0x42
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	.LASF17
	.byte	0x7
	.byte	0x9f
	.byte	0xe
	.long	0xec
	.uleb128 0xc
	.long	.LASF18
	.byte	0x7
	.byte	0xa0
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF19
	.byte	0x7
	.byte	0xa1
	.byte	0x11
	.long	0x63
	.uleb128 0xc
	.long	.LASF20
	.byte	0x7
	.byte	0xa6
	.byte	0xe
	.long	0xec
	.uleb128 0xc
	.long	.LASF21
	.byte	0x7
	.byte	0xae
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF22
	.byte	0x7
	.byte	0xaf
	.byte	0x11
	.long	0x63
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.value	0x112
	.byte	0xc
	.long	0x57
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF24
	.uleb128 0xd
	.uleb128 0x7
	.byte	0x8
	.long	0x158
	.uleb128 0xa
	.long	0xe7
	.long	0x16f
	.uleb128 0xb
	.long	0x42
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.long	0x15f
	.uleb128 0x9
	.long	.LASF25
	.byte	0x8
	.value	0x11e
	.byte	0x1a
	.long	0x16f
	.uleb128 0x9
	.long	.LASF26
	.byte	0x8
	.value	0x11f
	.byte	0x1a
	.long	0x16f
	.uleb128 0x9
	.long	.LASF27
	.byte	0x9
	.value	0x21f
	.byte	0xf
	.long	0x19b
	.uleb128 0x7
	.byte	0x8
	.long	0x9c
	.uleb128 0x9
	.long	.LASF28
	.byte	0x9
	.value	0x221
	.byte	0xf
	.long	0x19b
	.uleb128 0xc
	.long	.LASF29
	.byte	0xa
	.byte	0x24
	.byte	0xe
	.long	0x9c
	.uleb128 0xc
	.long	.LASF30
	.byte	0xa
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF31
	.byte	0xa
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF32
	.byte	0xa
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF33
	.byte	0xb
	.byte	0x2d
	.byte	0xe
	.long	0x9c
	.uleb128 0xc
	.long	.LASF34
	.byte	0xb
	.byte	0x2e
	.byte	0xe
	.long	0x9c
	.uleb128 0x7
	.byte	0x8
	.long	0x1fc
	.uleb128 0xe
	.uleb128 0xc
	.long	.LASF35
	.byte	0xc
	.byte	0x1
	.byte	0x14
	.long	0xe1
	.uleb128 0xc
	.long	.LASF36
	.byte	0xd
	.byte	0x12
	.byte	0x15
	.long	0x5e
	.uleb128 0x5
	.long	.LASF37
	.byte	0xe
	.byte	0x66
	.byte	0x16
	.long	0x6a
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0xf
	.byte	0x29
	.byte	0x6
	.long	0x239
	.uleb128 0x10
	.long	.LASF38
	.long	0x3b9aca00
	.byte	0
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0xf
	.byte	0x2a
	.byte	0x6
	.long	0x24e
	.uleb128 0x11
	.long	.LASF39
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x10
	.byte	0x2f
	.byte	0x1
	.long	0x2ad
	.uleb128 0x12
	.long	.LASF40
	.value	0x100
	.uleb128 0x12
	.long	.LASF41
	.value	0x200
	.uleb128 0x12
	.long	.LASF42
	.value	0x400
	.uleb128 0x12
	.long	.LASF43
	.value	0x800
	.uleb128 0x12
	.long	.LASF44
	.value	0x1000
	.uleb128 0x12
	.long	.LASF45
	.value	0x2000
	.uleb128 0x12
	.long	.LASF46
	.value	0x4000
	.uleb128 0x12
	.long	.LASF47
	.value	0x8000
	.uleb128 0x11
	.long	.LASF48
	.byte	0x1
	.uleb128 0x11
	.long	.LASF49
	.byte	0x2
	.uleb128 0x11
	.long	.LASF50
	.byte	0x4
	.uleb128 0x11
	.long	.LASF51
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	.LASF112
	.byte	0xd8
	.byte	0x11
	.byte	0x31
	.byte	0x8
	.long	0x434
	.uleb128 0x14
	.long	.LASF52
	.byte	0x11
	.byte	0x33
	.byte	0x7
	.long	0x57
	.byte	0
	.uleb128 0x14
	.long	.LASF53
	.byte	0x11
	.byte	0x36
	.byte	0x9
	.long	0x9c
	.byte	0x8
	.uleb128 0x14
	.long	.LASF54
	.byte	0x11
	.byte	0x37
	.byte	0x9
	.long	0x9c
	.byte	0x10
	.uleb128 0x14
	.long	.LASF55
	.byte	0x11
	.byte	0x38
	.byte	0x9
	.long	0x9c
	.byte	0x18
	.uleb128 0x14
	.long	.LASF56
	.byte	0x11
	.byte	0x39
	.byte	0x9
	.long	0x9c
	.byte	0x20
	.uleb128 0x14
	.long	.LASF57
	.byte	0x11
	.byte	0x3a
	.byte	0x9
	.long	0x9c
	.byte	0x28
	.uleb128 0x14
	.long	.LASF58
	.byte	0x11
	.byte	0x3b
	.byte	0x9
	.long	0x9c
	.byte	0x30
	.uleb128 0x14
	.long	.LASF59
	.byte	0x11
	.byte	0x3c
	.byte	0x9
	.long	0x9c
	.byte	0x38
	.uleb128 0x14
	.long	.LASF60
	.byte	0x11
	.byte	0x3d
	.byte	0x9
	.long	0x9c
	.byte	0x40
	.uleb128 0x14
	.long	.LASF61
	.byte	0x11
	.byte	0x40
	.byte	0x9
	.long	0x9c
	.byte	0x48
	.uleb128 0x14
	.long	.LASF62
	.byte	0x11
	.byte	0x41
	.byte	0x9
	.long	0x9c
	.byte	0x50
	.uleb128 0x14
	.long	.LASF63
	.byte	0x11
	.byte	0x42
	.byte	0x9
	.long	0x9c
	.byte	0x58
	.uleb128 0x14
	.long	.LASF64
	.byte	0x11
	.byte	0x44
	.byte	0x16
	.long	0x44d
	.byte	0x60
	.uleb128 0x14
	.long	.LASF65
	.byte	0x11
	.byte	0x46
	.byte	0x14
	.long	0x453
	.byte	0x68
	.uleb128 0x14
	.long	.LASF66
	.byte	0x11
	.byte	0x48
	.byte	0x7
	.long	0x57
	.byte	0x70
	.uleb128 0x14
	.long	.LASF67
	.byte	0x11
	.byte	0x49
	.byte	0x7
	.long	0x57
	.byte	0x74
	.uleb128 0x14
	.long	.LASF68
	.byte	0x11
	.byte	0x4a
	.byte	0xb
	.long	0x76
	.byte	0x78
	.uleb128 0x14
	.long	.LASF69
	.byte	0x11
	.byte	0x4d
	.byte	0x12
	.long	0x34
	.byte	0x80
	.uleb128 0x14
	.long	.LASF70
	.byte	0x11
	.byte	0x4e
	.byte	0xf
	.long	0x49
	.byte	0x82
	.uleb128 0x14
	.long	.LASF71
	.byte	0x11
	.byte	0x4f
	.byte	0x8
	.long	0x459
	.byte	0x83
	.uleb128 0x14
	.long	.LASF72
	.byte	0x11
	.byte	0x51
	.byte	0xf
	.long	0x469
	.byte	0x88
	.uleb128 0x14
	.long	.LASF73
	.byte	0x11
	.byte	0x59
	.byte	0xd
	.long	0x82
	.byte	0x90
	.uleb128 0x14
	.long	.LASF74
	.byte	0x11
	.byte	0x5b
	.byte	0x17
	.long	0x474
	.byte	0x98
	.uleb128 0x14
	.long	.LASF75
	.byte	0x11
	.byte	0x5c
	.byte	0x19
	.long	0x47f
	.byte	0xa0
	.uleb128 0x14
	.long	.LASF76
	.byte	0x11
	.byte	0x5d
	.byte	0x14
	.long	0x453
	.byte	0xa8
	.uleb128 0x14
	.long	.LASF77
	.byte	0x11
	.byte	0x5e
	.byte	0x9
	.long	0x9a
	.byte	0xb0
	.uleb128 0x14
	.long	.LASF78
	.byte	0x11
	.byte	0x5f
	.byte	0xa
	.long	0xba
	.byte	0xb8
	.uleb128 0x14
	.long	.LASF79
	.byte	0x11
	.byte	0x60
	.byte	0x7
	.long	0x57
	.byte	0xc0
	.uleb128 0x14
	.long	.LASF80
	.byte	0x11
	.byte	0x62
	.byte	0x8
	.long	0x485
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	.LASF81
	.byte	0x12
	.byte	0x7
	.byte	0x19
	.long	0x2ad
	.uleb128 0x15
	.long	.LASF138
	.byte	0x11
	.byte	0x2b
	.byte	0xe
	.uleb128 0x16
	.long	.LASF82
	.uleb128 0x7
	.byte	0x8
	.long	0x448
	.uleb128 0x7
	.byte	0x8
	.long	0x2ad
	.uleb128 0xa
	.long	0xa2
	.long	0x469
	.uleb128 0xb
	.long	0x42
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x440
	.uleb128 0x16
	.long	.LASF83
	.uleb128 0x7
	.byte	0x8
	.long	0x46f
	.uleb128 0x16
	.long	.LASF84
	.uleb128 0x7
	.byte	0x8
	.long	0x47a
	.uleb128 0xa
	.long	0xa2
	.long	0x495
	.uleb128 0xb
	.long	0x42
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.long	.LASF85
	.byte	0x13
	.byte	0x89
	.byte	0xe
	.long	0x4a1
	.uleb128 0x7
	.byte	0x8
	.long	0x434
	.uleb128 0xc
	.long	.LASF86
	.byte	0x13
	.byte	0x8a
	.byte	0xe
	.long	0x4a1
	.uleb128 0xc
	.long	.LASF87
	.byte	0x13
	.byte	0x8b
	.byte	0xe
	.long	0x4a1
	.uleb128 0xc
	.long	.LASF88
	.byte	0x14
	.byte	0x1a
	.byte	0xc
	.long	0x57
	.uleb128 0xa
	.long	0xe7
	.long	0x4d6
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.long	0x4cb
	.uleb128 0xc
	.long	.LASF89
	.byte	0x14
	.byte	0x1b
	.byte	0x1a
	.long	0x4d6
	.uleb128 0xc
	.long	.LASF90
	.byte	0x14
	.byte	0x1e
	.byte	0xc
	.long	0x57
	.uleb128 0xc
	.long	.LASF91
	.byte	0x14
	.byte	0x1f
	.byte	0x1a
	.long	0x4d6
	.uleb128 0xa
	.long	0xa9
	.long	0x50a
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.long	0x4ff
	.uleb128 0xc
	.long	.LASF92
	.byte	0x15
	.byte	0x19
	.byte	0x13
	.long	0x50a
	.uleb128 0xc
	.long	.LASF93
	.byte	0x16
	.byte	0x20
	.byte	0x14
	.long	0xe1
	.uleb128 0x18
	.long	.LASF139
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.long	0x57c
	.uleb128 0x11
	.long	.LASF94
	.byte	0
	.uleb128 0x11
	.long	.LASF95
	.byte	0x1
	.uleb128 0x11
	.long	.LASF96
	.byte	0x2
	.uleb128 0x11
	.long	.LASF97
	.byte	0x3
	.uleb128 0x11
	.long	.LASF98
	.byte	0x4
	.uleb128 0x11
	.long	.LASF99
	.byte	0x5
	.uleb128 0x11
	.long	.LASF100
	.byte	0x6
	.uleb128 0x11
	.long	.LASF101
	.byte	0x7
	.uleb128 0x11
	.long	.LASF102
	.byte	0x8
	.uleb128 0x11
	.long	.LASF103
	.byte	0x9
	.uleb128 0x11
	.long	.LASF104
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x527
	.uleb128 0x9
	.long	.LASF105
	.byte	0x17
	.value	0x10b
	.byte	0x1a
	.long	0x4d6
	.uleb128 0xa
	.long	0x57c
	.long	0x599
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.long	0x58e
	.uleb128 0x9
	.long	.LASF106
	.byte	0x17
	.value	0x10c
	.byte	0x21
	.long	0x599
	.uleb128 0xc
	.long	.LASF107
	.byte	0x18
	.byte	0x32
	.byte	0xf
	.long	0x159
	.uleb128 0xc
	.long	.LASF108
	.byte	0x18
	.byte	0x35
	.byte	0x15
	.long	0x3b
	.uleb128 0xc
	.long	.LASF109
	.byte	0x18
	.byte	0x39
	.byte	0xc
	.long	0x57
	.uleb128 0x16
	.long	.LASF110
	.uleb128 0xc
	.long	.LASF111
	.byte	0x19
	.byte	0x19
	.byte	0x1f
	.long	0x5cf
	.uleb128 0x13
	.long	.LASF113
	.byte	0x10
	.byte	0x1a
	.byte	0x14
	.byte	0x8
	.long	0x606
	.uleb128 0x19
	.string	"lo"
	.byte	0x1a
	.byte	0x16
	.byte	0xf
	.long	0x215
	.byte	0
	.uleb128 0x19
	.string	"hi"
	.byte	0x1a
	.byte	0x17
	.byte	0xf
	.long	0x215
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.string	"frp"
	.byte	0x1a
	.byte	0x1b
	.byte	0x21
	.long	0x612
	.uleb128 0x7
	.byte	0x8
	.long	0x5e0
	.uleb128 0xc
	.long	.LASF114
	.byte	0x1a
	.byte	0x1e
	.byte	0xf
	.long	0xba
	.uleb128 0xf
	.byte	0x7
	.byte	0x4
	.long	0x3b
	.byte	0x1a
	.byte	0x22
	.byte	0x1
	.long	0x645
	.uleb128 0x11
	.long	.LASF115
	.byte	0x1
	.uleb128 0x11
	.long	.LASF116
	.byte	0x2
	.uleb128 0x11
	.long	.LASF117
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.long	0x606
	.byte	0x2
	.byte	0x1c
	.byte	0x1a
	.uleb128 0x9
	.byte	0x3
	.quad	frp
	.uleb128 0x1b
	.long	0x618
	.byte	0x2
	.byte	0x1f
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	n_frp
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x2
	.byte	0x22
	.byte	0xf
	.long	0xba
	.uleb128 0x9
	.byte	0x3
	.quad	n_frp_allocated
	.uleb128 0x1d
	.long	.LASF140
	.byte	0x2
	.value	0x13a
	.byte	0x1
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF141
	.byte	0x2
	.byte	0x8a
	.byte	0x1
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ea
	.uleb128 0x1f
	.long	.LASF118
	.byte	0x2
	.byte	0x8a
	.byte	0x19
	.long	0xe1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.long	.LASF119
	.byte	0x2
	.byte	0x8a
	.byte	0x30
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x2
	.byte	0x8c
	.byte	0xd
	.long	0x215
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x2
	.byte	0x8d
	.byte	0xd
	.long	0x215
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.long	.LASF123
	.byte	0x2
	.byte	0x8e
	.byte	0x8
	.long	0x7ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1c
	.long	.LASF124
	.byte	0x2
	.byte	0x8f
	.byte	0x8
	.long	0x7ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -91
	.uleb128 0x1c
	.long	.LASF125
	.byte	0x2
	.byte	0x90
	.byte	0x8
	.long	0x7ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -90
	.uleb128 0x1c
	.long	.LASF126
	.byte	0x2
	.byte	0x92
	.byte	0x8
	.long	0x7ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.uleb128 0x20
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x7a8
	.uleb128 0x1c
	.long	.LASF127
	.byte	0x2
	.byte	0xef
	.byte	0x1e
	.long	0xe1
	.uleb128 0x9
	.byte	0x3
	.quad	num_start.6257
	.uleb128 0x21
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x21
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x22
	.string	"len"
	.byte	0x2
	.value	0x100
	.byte	0x16
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF128
	.byte	0x2
	.value	0x101
	.byte	0x15
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x22
	.string	"i"
	.byte	0x2
	.value	0x11e
	.byte	0xf
	.long	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x22
	.string	"j"
	.byte	0x2
	.value	0x120
	.byte	0x13
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF129
	.uleb128 0x24
	.long	.LASF132
	.byte	0x2
	.byte	0x48
	.byte	0x1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x849
	.uleb128 0x25
	.string	"c"
	.byte	0x2
	.byte	0x4a
	.byte	0x1c
	.long	0x612
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"n"
	.byte	0x2
	.byte	0x4b
	.byte	0xa
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x25
	.string	"i"
	.byte	0x2
	.byte	0x54
	.byte	0xf
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF142
	.byte	0x2
	.byte	0x3d
	.byte	0x1
	.long	0x57
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x8a4
	.uleb128 0x27
	.string	"a"
	.byte	0x2
	.byte	0x3d
	.byte	0x1d
	.long	0x1f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"b"
	.byte	0x2
	.byte	0x3d
	.byte	0x2c
	.long	0x1f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF130
	.byte	0x2
	.byte	0x3f
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF131
	.byte	0x2
	.byte	0x40
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF133
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f0
	.uleb128 0x27
	.string	"lo"
	.byte	0x2
	.byte	0x30
	.byte	0x1b
	.long	0x215
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"hi"
	.byte	0x2
	.byte	0x30
	.byte	0x29
	.long	0x215
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.byte	0
	.uleb128 0x29
	.long	.LASF134
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.long	0x2d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.long	0xa2
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"exit_failure"
.LASF8:
	.string	"__off_t"
.LASF5:
	.string	"short int"
.LASF47:
	.string	"_ISgraph"
.LASF102:
	.string	"locale_quoting_style"
.LASF65:
	.string	"_chain"
.LASF139:
	.string	"quoting_style"
.LASF13:
	.string	"size_t"
.LASF71:
	.string	"_shortbuf"
.LASF45:
	.string	"_ISspace"
.LASF95:
	.string	"shell_quoting_style"
.LASF59:
	.string	"_IO_buf_base"
.LASF128:
	.string	"bad_num"
.LASF14:
	.string	"long long unsigned int"
.LASF42:
	.string	"_ISalpha"
.LASF74:
	.string	"_codecvt"
.LASF43:
	.string	"_ISdigit"
.LASF19:
	.string	"__timezone"
.LASF15:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF106:
	.string	"quoting_style_vals"
.LASF37:
	.string	"uintmax_t"
.LASF101:
	.string	"escape_quoting_style"
.LASF94:
	.string	"literal_quoting_style"
.LASF66:
	.string	"_fileno"
.LASF54:
	.string	"_IO_read_end"
.LASF26:
	.string	"sys_siglist"
.LASF6:
	.string	"long int"
.LASF16:
	.string	"_gl_cxxalias_dummy"
.LASF52:
	.string	"_flags"
.LASF136:
	.string	"src/set-fields.c"
.LASF51:
	.string	"_ISalnum"
.LASF69:
	.string	"_cur_column"
.LASF34:
	.string	"program_invocation_short_name"
.LASF99:
	.string	"c_quoting_style"
.LASF83:
	.string	"_IO_codecvt"
.LASF127:
	.string	"num_start"
.LASF91:
	.string	"_sys_errlist"
.LASF33:
	.string	"program_invocation_name"
.LASF68:
	.string	"_old_offset"
.LASF73:
	.string	"_offset"
.LASF118:
	.string	"fieldstr"
.LASF48:
	.string	"_ISblank"
.LASF38:
	.string	"TIMESPEC_HZ"
.LASF98:
	.string	"shell_escape_always_quoting_style"
.LASF142:
	.string	"compare_ranges"
.LASF22:
	.string	"timezone"
.LASF50:
	.string	"_ISpunct"
.LASF93:
	.string	"program_name"
.LASF122:
	.string	"value"
.LASF82:
	.string	"_IO_marker"
.LASF85:
	.string	"stdin"
.LASF2:
	.string	"unsigned int"
.LASF113:
	.string	"field_range_pair"
.LASF3:
	.string	"long unsigned int"
.LASF57:
	.string	"_IO_write_ptr"
.LASF88:
	.string	"sys_nerr"
.LASF135:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -fno-common -funit-at-a-time -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF104:
	.string	"custom_quoting_style"
.LASF1:
	.string	"short unsigned int"
.LASF109:
	.string	"error_one_per_line"
.LASF35:
	.string	"Version"
.LASF61:
	.string	"_IO_save_base"
.LASF28:
	.string	"environ"
.LASF72:
	.string	"_lock"
.LASF67:
	.string	"_flags2"
.LASF79:
	.string	"_mode"
.LASF86:
	.string	"stdout"
.LASF140:
	.string	"reset_fields"
.LASF92:
	.string	"version_etc_copyright"
.LASF75:
	.string	"_wide_data"
.LASF116:
	.string	"SETFLD_COMPLEMENT"
.LASF29:
	.string	"optarg"
.LASF23:
	.string	"getdate_err"
.LASF30:
	.string	"optind"
.LASF53:
	.string	"_IO_read_ptr"
.LASF138:
	.string	"_IO_lock_t"
.LASF112:
	.string	"_IO_FILE"
.LASF107:
	.string	"error_print_progname"
.LASF27:
	.string	"__environ"
.LASF12:
	.string	"time_t"
.LASF120:
	.string	"n_frp_allocated"
.LASF89:
	.string	"sys_errlist"
.LASF64:
	.string	"_markers"
.LASF134:
	.string	"to_uchar"
.LASF100:
	.string	"c_maybe_quoting_style"
.LASF39:
	.string	"LOG10_TIMESPEC_HZ"
.LASF129:
	.string	"_Bool"
.LASF0:
	.string	"unsigned char"
.LASF130:
	.string	"a_start"
.LASF60:
	.string	"_IO_buf_end"
.LASF111:
	.string	"quote_quoting_options"
.LASF141:
	.string	"set_fields"
.LASF90:
	.string	"_sys_nerr"
.LASF70:
	.string	"_vtable_offset"
.LASF20:
	.string	"tzname"
.LASF81:
	.string	"FILE"
.LASF97:
	.string	"shell_escape_quoting_style"
.LASF105:
	.string	"quoting_style_args"
.LASF32:
	.string	"optopt"
.LASF21:
	.string	"daylight"
.LASF117:
	.string	"SETFLD_ERRMSG_USE_POS"
.LASF24:
	.string	"long double"
.LASF115:
	.string	"SETFLD_ALLOW_DASH"
.LASF11:
	.string	"char"
.LASF96:
	.string	"shell_always_quoting_style"
.LASF49:
	.string	"_IScntrl"
.LASF10:
	.string	"__time_t"
.LASF125:
	.string	"dash_found"
.LASF44:
	.string	"_ISxdigit"
.LASF103:
	.string	"clocale_quoting_style"
.LASF41:
	.string	"_ISlower"
.LASF31:
	.string	"opterr"
.LASF7:
	.string	"__uintmax_t"
.LASF9:
	.string	"__off64_t"
.LASF110:
	.string	"quoting_options"
.LASF55:
	.string	"_IO_read_base"
.LASF63:
	.string	"_IO_save_end"
.LASF124:
	.string	"rhs_specified"
.LASF25:
	.string	"_sys_siglist"
.LASF123:
	.string	"lhs_specified"
.LASF78:
	.string	"__pad5"
.LASF58:
	.string	"_IO_write_end"
.LASF80:
	.string	"_unused2"
.LASF87:
	.string	"stderr"
.LASF18:
	.string	"__daylight"
.LASF137:
	.string	"/root/coreutils"
.LASF121:
	.string	"initial"
.LASF40:
	.string	"_ISupper"
.LASF77:
	.string	"_freeres_buf"
.LASF62:
	.string	"_IO_backup_base"
.LASF132:
	.string	"complement_rp"
.LASF114:
	.string	"n_frp"
.LASF108:
	.string	"error_message_count"
.LASF131:
	.string	"b_start"
.LASF119:
	.string	"options"
.LASF76:
	.string	"_freeres_list"
.LASF133:
	.string	"add_range_pair"
.LASF84:
	.string	"_IO_wide_data"
.LASF126:
	.string	"in_digits"
.LASF17:
	.string	"__tzname"
.LASF56:
	.string	"_IO_write_base"
.LASF46:
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
