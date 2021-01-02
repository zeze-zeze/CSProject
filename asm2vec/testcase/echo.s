
echo:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
	endbr64 
	sub    $0x8,%rsp
	mov    0x7fc9(%rip),%rax        # 9fd8 <__gmon_start__>
	test   %rax,%rax
	je     2016 <_init+0x16>
	callq  *%rax
	add    $0x8,%rsp
	retq   

Disassembly of section .plt:

0000000000002020 <.plt>:
	pushq  0x7e2a(%rip)        # 9e50 <_GLOBAL_OFFSET_TABLE_+0x8>
	bnd jmpq *0x7e2b(%rip)        # 9e58 <_GLOBAL_OFFSET_TABLE_+0x10>
	nopl   (%rax)
	endbr64 
	pushq  $0x0
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x1
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x2
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x3
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x4
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x5
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x6
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x7
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x8
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x9
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0xa
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0xb
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0xc
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0xd
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0xe
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0xf
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x10
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x11
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x12
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x13
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x14
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x15
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x16
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x17
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x18
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x19
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x1a
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x1b
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x1c
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x1d
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x1e
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x1f
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x20
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x21
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x22
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x23
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x24
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x25
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x26
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x27
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x28
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x29
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x2a
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x2b
	bnd jmpq 2020 <.plt>
	nop
	endbr64 
	pushq  $0x2c
	bnd jmpq 2020 <.plt>
	nop

Disassembly of section .plt.got:

0000000000002300 <__cxa_finalize@plt>:
	endbr64 
	bnd jmpq *0x7cdd(%rip)        # 9fe8 <__cxa_finalize@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000002310 <getenv@plt>:
	endbr64 
	bnd jmpq *0x7b45(%rip)        # 9e60 <getenv@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002320 <free@plt>:
	endbr64 
	bnd jmpq *0x7b3d(%rip)        # 9e68 <free@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002330 <abort@plt>:
	endbr64 
	bnd jmpq *0x7b35(%rip)        # 9e70 <abort@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002340 <__errno_location@plt>:
	endbr64 
	bnd jmpq *0x7b2d(%rip)        # 9e78 <__errno_location@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002350 <strncmp@plt>:
	endbr64 
	bnd jmpq *0x7b25(%rip)        # 9e80 <strncmp@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002360 <_exit@plt>:
	endbr64 
	bnd jmpq *0x7b1d(%rip)        # 9e88 <_exit@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002370 <__fpending@plt>:
	endbr64 
	bnd jmpq *0x7b15(%rip)        # 9e90 <__fpending@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002380 <textdomain@plt>:
	endbr64 
	bnd jmpq *0x7b0d(%rip)        # 9e98 <textdomain@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002390 <fclose@plt>:
	endbr64 
	bnd jmpq *0x7b05(%rip)        # 9ea0 <fclose@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

00000000000023a0 <bindtextdomain@plt>:
	endbr64 
	bnd jmpq *0x7afd(%rip)        # 9ea8 <bindtextdomain@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

00000000000023b0 <dcgettext@plt>:
	endbr64 
	bnd jmpq *0x7af5(%rip)        # 9eb0 <dcgettext@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

00000000000023c0 <__ctype_get_mb_cur_max@plt>:
	endbr64 
	bnd jmpq *0x7aed(%rip)        # 9eb8 <__ctype_get_mb_cur_max@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

00000000000023d0 <strlen@plt>:
	endbr64 
	bnd jmpq *0x7ae5(%rip)        # 9ec0 <strlen@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

00000000000023e0 <__stack_chk_fail@plt>:
	endbr64 
	bnd jmpq *0x7add(%rip)        # 9ec8 <__stack_chk_fail@GLIBC_2.4>
	nopl   0x0(%rax,%rax,1)

00000000000023f0 <mbrtowc@plt>:
	endbr64 
	bnd jmpq *0x7ad5(%rip)        # 9ed0 <mbrtowc@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002400 <gettext@plt>:
	endbr64 
	bnd jmpq *0x7acd(%rip)        # 9ed8 <gettext@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002410 <printf@plt>:
	endbr64 
	bnd jmpq *0x7ac5(%rip)        # 9ee0 <printf@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002420 <strrchr@plt>:
	endbr64 
	bnd jmpq *0x7abd(%rip)        # 9ee8 <strrchr@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002430 <lseek@plt>:
	endbr64 
	bnd jmpq *0x7ab5(%rip)        # 9ef0 <lseek@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002440 <__assert_fail@plt>:
	endbr64 
	bnd jmpq *0x7aad(%rip)        # 9ef8 <__assert_fail@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002450 <memset@plt>:
	endbr64 
	bnd jmpq *0x7aa5(%rip)        # 9f00 <memset@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002460 <memcmp@plt>:
	endbr64 
	bnd jmpq *0x7a9d(%rip)        # 9f08 <memcmp@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002470 <fputs_unlocked@plt>:
	endbr64 
	bnd jmpq *0x7a95(%rip)        # 9f10 <fputs_unlocked@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002480 <calloc@plt>:
	endbr64 
	bnd jmpq *0x7a8d(%rip)        # 9f18 <calloc@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002490 <strcmp@plt>:
	endbr64 
	bnd jmpq *0x7a85(%rip)        # 9f20 <strcmp@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

00000000000024a0 <fputc_unlocked@plt>:
	endbr64 
	bnd jmpq *0x7a7d(%rip)        # 9f28 <fputc_unlocked@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

00000000000024b0 <memcpy@plt>:
	endbr64 
	bnd jmpq *0x7a75(%rip)        # 9f30 <memcpy@GLIBC_2.14>
	nopl   0x0(%rax,%rax,1)

00000000000024c0 <putchar_unlocked@plt>:
	endbr64 
	bnd jmpq *0x7a6d(%rip)        # 9f38 <putchar_unlocked@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

00000000000024d0 <fileno@plt>:
	endbr64 
	bnd jmpq *0x7a65(%rip)        # 9f40 <fileno@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

00000000000024e0 <malloc@plt>:
	endbr64 
	bnd jmpq *0x7a5d(%rip)        # 9f48 <malloc@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

00000000000024f0 <fflush@plt>:
	endbr64 
	bnd jmpq *0x7a55(%rip)        # 9f50 <fflush@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002500 <nl_langinfo@plt>:
	endbr64 
	bnd jmpq *0x7a4d(%rip)        # 9f58 <nl_langinfo@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002510 <__freading@plt>:
	endbr64 
	bnd jmpq *0x7a45(%rip)        # 9f60 <__freading@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002520 <realloc@plt>:
	endbr64 
	bnd jmpq *0x7a3d(%rip)        # 9f68 <realloc@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002530 <setlocale@plt>:
	endbr64 
	bnd jmpq *0x7a35(%rip)        # 9f70 <setlocale@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002540 <__printf_chk@plt>:
	endbr64 
	bnd jmpq *0x7a2d(%rip)        # 9f78 <__printf_chk@GLIBC_2.3.4>
	nopl   0x0(%rax,%rax,1)

0000000000002550 <error@plt>:
	endbr64 
	bnd jmpq *0x7a25(%rip)        # 9f80 <error@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002560 <fseeko@plt>:
	endbr64 
	bnd jmpq *0x7a1d(%rip)        # 9f88 <fseeko@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002570 <__cxa_atexit@plt>:
	endbr64 
	bnd jmpq *0x7a15(%rip)        # 9f90 <__cxa_atexit@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002580 <exit@plt>:
	endbr64 
	bnd jmpq *0x7a0d(%rip)        # 9f98 <exit@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

0000000000002590 <fwrite@plt>:
	endbr64 
	bnd jmpq *0x7a05(%rip)        # 9fa0 <fwrite@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

00000000000025a0 <__fprintf_chk@plt>:
	endbr64 
	bnd jmpq *0x79fd(%rip)        # 9fa8 <__fprintf_chk@GLIBC_2.3.4>
	nopl   0x0(%rax,%rax,1)

00000000000025b0 <mbsinit@plt>:
	endbr64 
	bnd jmpq *0x79f5(%rip)        # 9fb0 <mbsinit@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

00000000000025c0 <iswprint@plt>:
	endbr64 
	bnd jmpq *0x79ed(%rip)        # 9fb8 <iswprint@GLIBC_2.2.5>
	nopl   0x0(%rax,%rax,1)

00000000000025d0 <__ctype_b_loc@plt>:
	endbr64 
	bnd jmpq *0x79e5(%rip)        # 9fc0 <__ctype_b_loc@GLIBC_2.3>
	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000025e0 <quotearg_buffer_restyled.cold>:
	callq  2330 <abort@plt>

00000000000025e5 <quotearg_n_options.cold>:
	callq  2330 <abort@plt>

00000000000025ea <set_custom_quoting.cold>:
	callq  2330 <abort@plt>

00000000000025ef <quotearg_n_style.cold>:
	callq  2330 <abort@plt>

00000000000025f4 <quotearg_n_style_mem.cold>:
	callq  2330 <abort@plt>

00000000000025f9 <quotearg_n_style_colon.cold>:
	callq  2330 <abort@plt>

00000000000025fe <quotearg_n_custom_mem.cold>:
	callq  2330 <abort@plt>
	nopw   %cs:0x0(%rax,%rax,1)
	nopl   (%rax)

0000000000002610 <_start>:
	endbr64 
	xor    %ebp,%ebp
	mov    %rdx,%r9
	pop    %rsi
	mov    %rsp,%rdx
	and    $0xfffffffffffffff0,%rsp
	push   %rax
	push   %rsp
	lea    0x3646(%rip),%r8        # 5c70 <__libc_csu_fini>
	lea    0x35cf(%rip),%rcx        # 5c00 <__libc_csu_init>
	lea    0x4e8(%rip),%rdi        # 2b20 <main>
	callq  *0x7992(%rip)        # 9fd0 <__libc_start_main@GLIBC_2.2.5>
	hlt    
	nop

0000000000002640 <deregister_tm_clones>:
	lea    0x7a39(%rip),%rdi        # a080 <__progname@@GLIBC_2.2.5>
	lea    0x7a32(%rip),%rax        # a080 <__progname@@GLIBC_2.2.5>
	cmp    %rdi,%rax
	je     2668 <deregister_tm_clones+0x28>
	mov    0x796e(%rip),%rax        # 9fc8 <_ITM_deregisterTMCloneTable>
	test   %rax,%rax
	je     2668 <deregister_tm_clones+0x28>
	jmpq   *%rax
	nopl   0x0(%rax)
	retq   
	nopl   0x0(%rax)

0000000000002670 <register_tm_clones>:
	lea    0x7a09(%rip),%rdi        # a080 <__progname@@GLIBC_2.2.5>
	lea    0x7a02(%rip),%rsi        # a080 <__progname@@GLIBC_2.2.5>
	sub    %rdi,%rsi
	mov    %rsi,%rax
	shr    $0x3f,%rsi
	sar    $0x3,%rax
	add    %rax,%rsi
	sar    %rsi
	je     26a8 <register_tm_clones+0x38>
	mov    0x7945(%rip),%rax        # 9fe0 <_ITM_registerTMCloneTable>
	test   %rax,%rax
	je     26a8 <register_tm_clones+0x38>
	jmpq   *%rax
	nopw   0x0(%rax,%rax,1)
	retq   
	nopl   0x0(%rax)

00000000000026b0 <__do_global_dtors_aux>:
	endbr64 
	cmpb   $0x0,0x79ed(%rip)        # a0a8 <completed.8059>
	jne    26e8 <__do_global_dtors_aux+0x38>
	push   %rbp
	cmpq   $0x0,0x7922(%rip)        # 9fe8 <__cxa_finalize@GLIBC_2.2.5>
	mov    %rsp,%rbp
	je     26d7 <__do_global_dtors_aux+0x27>
	mov    0x7936(%rip),%rdi        # a008 <__dso_handle>
	callq  2300 <__cxa_finalize@plt>
	callq  2640 <deregister_tm_clones>
	movb   $0x1,0x79c5(%rip)        # a0a8 <completed.8059>
	pop    %rbp
	retq   
	nopl   (%rax)
	retq   
	nopl   0x0(%rax)

00000000000026f0 <frame_dummy>:
	endbr64 
	jmpq   2670 <register_tm_clones>

00000000000026f9 <emit_ancillary_info>:
	push   %rbp
	mov    %rsp,%rbp
	push   %rbx
	sub    $0xb8,%rsp
	mov    %rdi,-0xb8(%rbp)
	mov    %fs:0x28,%rax
	mov    %rax,-0x18(%rbp)
	xor    %eax,%eax
	lea    0x38e6(%rip),%rax        # 6008 <_IO_stdin_used+0x8>
	mov    %rax,-0x90(%rbp)
	lea    0x38da(%rip),%rax        # 600a <_IO_stdin_used+0xa>
	mov    %rax,-0x88(%rbp)
	lea    0x38dc(%rip),%rax        # 601a <_IO_stdin_used+0x1a>
	mov    %rax,-0x80(%rbp)
	lea    0x38db(%rip),%rax        # 6024 <_IO_stdin_used+0x24>
	mov    %rax,-0x78(%rbp)
	lea    0x38e6(%rip),%rax        # 603a <_IO_stdin_used+0x3a>
	mov    %rax,-0x70(%rbp)
	lea    0x38e5(%rip),%rax        # 6044 <_IO_stdin_used+0x44>
	mov    %rax,-0x68(%rbp)
	lea    0x38e9(%rip),%rax        # 6053 <_IO_stdin_used+0x53>
	mov    %rax,-0x60(%rbp)
	lea    0x38cf(%rip),%rax        # 6044 <_IO_stdin_used+0x44>
	mov    %rax,-0x58(%rbp)
	lea    0x38dd(%rip),%rax        # 605d <_IO_stdin_used+0x5d>
	mov    %rax,-0x50(%rbp)
	lea    0x38b9(%rip),%rax        # 6044 <_IO_stdin_used+0x44>
	mov    %rax,-0x48(%rbp)
	lea    0x38d1(%rip),%rax        # 6067 <_IO_stdin_used+0x67>
	mov    %rax,-0x40(%rbp)
	lea    0x38a3(%rip),%rax        # 6044 <_IO_stdin_used+0x44>
	mov    %rax,-0x38(%rbp)
	movq   $0x0,-0x30(%rbp)
	movq   $0x0,-0x28(%rbp)
	mov    -0xb8(%rbp),%rax
	mov    %rax,-0xa8(%rbp)
	lea    -0x90(%rbp),%rax
	mov    %rax,-0xa0(%rbp)
	jmp    27db <emit_ancillary_info+0xe2>
	addq   $0x10,-0xa0(%rbp)
	mov    -0xa0(%rbp),%rax
	mov    (%rax),%rax
	test   %rax,%rax
	je     280a <emit_ancillary_info+0x111>
	mov    -0xa0(%rbp),%rax
	mov    (%rax),%rdx
	mov    -0xb8(%rbp),%rax
	mov    %rdx,%rsi
	mov    %rax,%rdi
	callq  2490 <strcmp@plt>
	test   %eax,%eax
	jne    27d3 <emit_ancillary_info+0xda>
	mov    -0xa0(%rbp),%rax
	mov    0x8(%rax),%rax
	test   %rax,%rax
	je     282c <emit_ancillary_info+0x133>
	mov    -0xa0(%rbp),%rax
	mov    0x8(%rax),%rax
	mov    %rax,-0xa8(%rbp)
	lea    0x383e(%rip),%rdi        # 6071 <_IO_stdin_used+0x71>
	callq  2400 <gettext@plt>
	lea    0x3849(%rip),%rdx        # 6088 <_IO_stdin_used+0x88>
	lea    0x386a(%rip),%rsi        # 60b0 <_IO_stdin_used+0xb0>
	mov    %rax,%rdi
	mov    $0x0,%eax
	callq  2410 <printf@plt>
	mov    $0x0,%esi
	mov    $0x5,%edi
	callq  2530 <setlocale@plt>
	mov    %rax,-0x98(%rbp)
	cmpq   $0x0,-0x98(%rbp)
	je     28b0 <emit_ancillary_info+0x1b7>
	mov    -0x98(%rbp),%rax
	mov    $0x3,%edx
	lea    0x3838(%rip),%rsi        # 60be <_IO_stdin_used+0xbe>
	mov    %rax,%rdi
	callq  2350 <strncmp@plt>
	test   %eax,%eax
	je     28b0 <emit_ancillary_info+0x1b7>
	mov    0x77ef(%rip),%rbx        # a088 <stdout@@GLIBC_2.2.5>
	lea    0x3828(%rip),%rdi        # 60c8 <_IO_stdin_used+0xc8>
	callq  2400 <gettext@plt>
	mov    %rbx,%rsi
	mov    %rax,%rdi
	callq  2470 <fputs_unlocked@plt>
	lea    0x3858(%rip),%rdi        # 610f <_IO_stdin_used+0x10f>
	callq  2400 <gettext@plt>
	mov    %rax,%rcx
	mov    -0xb8(%rbp),%rax
	mov    %rax,%rdx
	lea    0x37b8(%rip),%rsi        # 6088 <_IO_stdin_used+0x88>
	mov    %rcx,%rdi
	mov    $0x0,%eax
	callq  2410 <printf@plt>
	mov    -0xa8(%rbp),%rax
	cmp    -0xb8(%rbp),%rax
	jne    28f6 <emit_ancillary_info+0x1fd>
	lea    0x3836(%rip),%rbx        # 612a <_IO_stdin_used+0x12a>
	jmp    28fd <emit_ancillary_info+0x204>
	lea    0x3839(%rip),%rbx        # 6136 <_IO_stdin_used+0x136>
	lea    0x3834(%rip),%rdi        # 6138 <_IO_stdin_used+0x138>
	callq  2400 <gettext@plt>
	mov    %rax,%rcx
	mov    -0xa8(%rbp),%rax
	mov    %rbx,%rdx
	mov    %rax,%rsi
	mov    %rcx,%rdi
	mov    $0x0,%eax
	callq  2410 <printf@plt>
	nop
	mov    -0x18(%rbp),%rax
	xor    %fs:0x28,%rax
	je     293b <emit_ancillary_info+0x242>
	callq  23e0 <__stack_chk_fail@plt>
	add    $0xb8,%rsp
	pop    %rbx
	pop    %rbp
	retq   

0000000000002945 <usage>:
	endbr64 
	push   %rbp
	mov    %rsp,%rbp
	push   %r12
	push   %rbx
	sub    $0x10,%rsp
	mov    %edi,-0x14(%rbp)
	cmpl   $0x0,-0x14(%rbp)
	je     297c <usage+0x37>
	lea    0x3e28(%rip),%rcx        # 678c <__PRETTY_FUNCTION__.6196>
	mov    $0x28,%edx
	lea    0x37fb(%rip),%rsi        # 616b <_IO_stdin_used+0x16b>
	lea    0x37ff(%rip),%rdi        # 6176 <_IO_stdin_used+0x176>
	callq  2440 <__assert_fail@plt>
	mov    0x773d(%rip),%r12        # a0c0 <program_name>
	mov    0x7736(%rip),%rbx        # a0c0 <program_name>
	lea    0x37ff(%rip),%rdi        # 6190 <_IO_stdin_used+0x190>
	callq  2400 <gettext@plt>
	mov    %r12,%rdx
	mov    %rbx,%rsi
	mov    %rax,%rdi
	mov    $0x0,%eax
	callq  2410 <printf@plt>
	mov    0x76d8(%rip),%rbx        # a088 <stdout@@GLIBC_2.2.5>
	lea    0x3819(%rip),%rdi        # 61d0 <_IO_stdin_used+0x1d0>
	callq  2400 <gettext@plt>
	mov    %rbx,%rsi
	mov    %rax,%rdi
	callq  2470 <fputs_unlocked@plt>
	mov    0x76ba(%rip),%rbx        # a088 <stdout@@GLIBC_2.2.5>
	lea    0x385b(%rip),%rdi        # 6230 <_IO_stdin_used+0x230>
	callq  2400 <gettext@plt>
	mov    %rbx,%rsi
	mov    %rax,%rdi
	callq  2470 <fputs_unlocked@plt>
	mov    0x769c(%rip),%rbx        # a088 <stdout@@GLIBC_2.2.5>
	lea    0x38c5(%rip),%rdi        # 62b8 <_IO_stdin_used+0x2b8>
	callq  2400 <gettext@plt>
	mov    %rbx,%rsi
	mov    %rax,%rdi
	callq  2470 <fputs_unlocked@plt>
	mov    0x767e(%rip),%rbx        # a088 <stdout@@GLIBC_2.2.5>
	lea    0x38d7(%rip),%rdi        # 62e8 <_IO_stdin_used+0x2e8>
	callq  2400 <gettext@plt>
	mov    %rbx,%rsi
	mov    %rax,%rdi
	callq  2470 <fputs_unlocked@plt>
	mov    0x7660(%rip),%rbx        # a088 <stdout@@GLIBC_2.2.5>
	lea    0x38f1(%rip),%rdi        # 6320 <_IO_stdin_used+0x320>
	callq  2400 <gettext@plt>
	mov    %rbx,%rsi
	mov    %rax,%rdi
	callq  2470 <fputs_unlocked@plt>
	mov    0x7642(%rip),%rbx        # a088 <stdout@@GLIBC_2.2.5>
	lea    0x3913(%rip),%rdi        # 6360 <_IO_stdin_used+0x360>
	callq  2400 <gettext@plt>
	mov    %rbx,%rsi
	mov    %rax,%rdi
	callq  2470 <fputs_unlocked@plt>
	mov    0x7624(%rip),%rbx        # a088 <stdout@@GLIBC_2.2.5>
	lea    0x39dd(%rip),%rdi        # 6448 <_IO_stdin_used+0x448>
	callq  2400 <gettext@plt>
	mov    %rbx,%rsi
	mov    %rax,%rdi
	callq  2470 <fputs_unlocked@plt>
	lea    0x3a36(%rip),%rdi        # 64b8 <_IO_stdin_used+0x4b8>
	callq  2400 <gettext@plt>
	lea    0x3ae9(%rip),%rsi        # 6577 <_IO_stdin_used+0x577>
	mov    %rax,%rdi
	mov    $0x0,%eax
	callq  2410 <printf@plt>
	lea    0x3ad5(%rip),%rdi        # 6577 <_IO_stdin_used+0x577>
	callq  26f9 <emit_ancillary_info>
	mov    -0x14(%rbp),%eax
	mov    %eax,%edi
	callq  2580 <exit@plt>

0000000000002ab1 <hextobin>:
	endbr64 
	push   %rbp
	mov    %rsp,%rbp
	mov    %edi,%eax
	mov    %al,-0x4(%rbp)
	movzbl -0x4(%rbp),%eax
	sub    $0x41,%eax
	cmp    $0x25,%eax
	ja     2aed <hextobin+0x3c>
	mov    %eax,%eax
	lea    0x0(,%rax,4),%rdx
	lea    0x3aa1(%rip),%rax        # 657c <_IO_stdin_used+0x57c>
	mov    (%rdx,%rax,1),%eax
	cltq   
	lea    0x3a95(%rip),%rdx        # 657c <_IO_stdin_used+0x57c>
	add    %rdx,%rax
	notrack jmpq *%rax
	movzbl -0x4(%rbp),%eax
	sub    $0x30,%eax
	jmp    2b1e <hextobin+0x6d>
	mov    $0xa,%eax
	jmp    2b1e <hextobin+0x6d>
	mov    $0xb,%eax
	jmp    2b1e <hextobin+0x6d>
	mov    $0xc,%eax
	jmp    2b1e <hextobin+0x6d>
	mov    $0xd,%eax
	jmp    2b1e <hextobin+0x6d>
	mov    $0xe,%eax
	jmp    2b1e <hextobin+0x6d>
	mov    $0xf,%eax
	pop    %rbp
	retq   

0000000000002b20 <main>:
	endbr64 
	push   %rbp
	mov    %rsp,%rbp
	push   %rbx
	sub    $0x38,%rsp
	mov    %edi,-0x34(%rbp)
	mov    %rsi,-0x40(%rbp)
	movb   $0x1,-0x2e(%rbp)
	lea    0x3ad5(%rip),%rdi        # 6614 <_IO_stdin_used+0x614>
	callq  2310 <getenv@plt>
	test   %rax,%rax
	setne  %al
	mov    %al,-0x2b(%rbp)
	movzbl -0x2b(%rbp),%eax
	xor    $0x1,%eax
	test   %al,%al
	jne    2b7c <main+0x5c>
	cmpl   $0x1,-0x34(%rbp)
	jle    2b83 <main+0x63>
	mov    -0x40(%rbp),%rax
	add    $0x8,%rax
	mov    (%rax),%rax
	lea    0x3ab4(%rip),%rsi        # 6624 <_IO_stdin_used+0x624>
	mov    %rax,%rdi
	callq  2490 <strcmp@plt>
	test   %eax,%eax
	jne    2b83 <main+0x63>
	mov    $0x1,%eax
	jmp    2b88 <main+0x68>
	mov    $0x0,%eax
	mov    %al,-0x2a(%rbp)
	andb   $0x1,-0x2a(%rbp)
	movb   $0x0,-0x2d(%rbp)
	mov    -0x40(%rbp),%rax
	mov    (%rax),%rax
	mov    %rax,%rdi
	callq  3130 <set_program_name>
	lea    0x358d(%rip),%rsi        # 6136 <_IO_stdin_used+0x136>
	mov    $0x6,%edi
	callq  2530 <setlocale@plt>
	lea    0x3a6d(%rip),%rsi        # 6627 <_IO_stdin_used+0x627>
	lea    0x3459(%rip),%rdi        # 601a <_IO_stdin_used+0x1a>
	callq  23a0 <bindtextdomain@plt>
	lea    0x344d(%rip),%rdi        # 601a <_IO_stdin_used+0x1a>
	callq  2380 <textdomain@plt>
	lea    0x4a7(%rip),%rax        # 3080 <close_stdout>
	mov    %rax,%rdi
	callq  5c80 <atexit>
	cmpb   $0x0,-0x2a(%rbp)
	je     2c89 <main+0x169>
	cmpl   $0x2,-0x34(%rbp)
	jne    2c89 <main+0x169>
	mov    -0x40(%rbp),%rax
	add    $0x8,%rax
	mov    (%rax),%rax
	lea    0x3a38(%rip),%rsi        # 663f <_IO_stdin_used+0x63f>
	mov    %rax,%rdi
	callq  2490 <strcmp@plt>
	test   %eax,%eax
	jne    2c1d <main+0xfd>
	mov    $0x0,%edi
	callq  2945 <usage>
	mov    -0x40(%rbp),%rax
	add    $0x8,%rax
	mov    (%rax),%rax
	lea    0x3a17(%rip),%rsi        # 6646 <_IO_stdin_used+0x646>
	mov    %rax,%rdi
	callq  2490 <strcmp@plt>
	test   %eax,%eax
	jne    2c89 <main+0x169>
	mov    0x73ce(%rip),%rdx        # a010 <Version>
	mov    0x743f(%rip),%rax        # a088 <stdout@@GLIBC_2.2.5>
	sub    $0x8,%rsp
	pushq  $0x0
	lea    0x39fa(%rip),%r9        # 6650 <_IO_stdin_used+0x650>
	lea    0x39fe(%rip),%r8        # 665b <_IO_stdin_used+0x65b>
	mov    %rdx,%rcx
	lea    0x3449(%rip),%rdx        # 60b0 <_IO_stdin_used+0xb0>
	lea    0x3909(%rip),%rsi        # 6577 <_IO_stdin_used+0x577>
	mov    %rax,%rdi
	mov    $0x0,%eax
	callq  53e0 <version_etc>
	add    $0x10,%rsp
	mov    $0x0,%eax
	jmpq   3053 <main+0x533>
	subl   $0x1,-0x34(%rbp)
	addq   $0x8,-0x40(%rbp)
	cmpb   $0x0,-0x2a(%rbp)
	je     2d85 <main+0x265>
	jmpq   2d6d <main+0x24d>
	mov    -0x40(%rbp),%rax
	mov    (%rax),%rax
	add    $0x1,%rax
	mov    %rax,-0x28(%rbp)
	movq   $0x0,-0x20(%rbp)
	jmp    2d07 <main+0x1e7>
	mov    -0x28(%rbp),%rdx
	mov    -0x20(%rbp),%rax
	add    %rdx,%rax
	movzbl (%rax),%eax
	movsbl %al,%eax
	sub    $0x45,%eax
	cmp    $0x29,%eax
	seta   %dl
	test   %dl,%dl
	jne    2d88 <main+0x268>
	mov    $0x1,%edx
	mov    %eax,%ecx
	shl    %cl,%rdx
	movabs $0x20100000001,%rax
	and    %rdx,%rax
	test   %rax,%rax
	setne  %al
	test   %al,%al
	je     2d88 <main+0x268>
	nop
	addq   $0x1,-0x20(%rbp)
	mov    -0x28(%rbp),%rdx
	mov    -0x20(%rbp),%rax
	add    %rdx,%rax
	movzbl (%rax),%eax
	test   %al,%al
	jne    2cba <main+0x19a>
	cmpq   $0x0,-0x20(%rbp)
	je     2d8b <main+0x26b>
	jmp    2d59 <main+0x239>
	mov    -0x28(%rbp),%rax
	lea    0x1(%rax),%rdx
	mov    %rdx,-0x28(%rbp)
	movzbl (%rax),%eax
	movsbl %al,%eax
	cmp    $0x6e,%eax
	je     2d54 <main+0x234>
	cmp    $0x6e,%eax
	jg     2d59 <main+0x239>
	cmp    $0x45,%eax
	je     2d4e <main+0x22e>
	cmp    $0x65,%eax
	jne    2d59 <main+0x239>
	movb   $0x1,-0x2d(%rbp)
	jmp    2d59 <main+0x239>
	movb   $0x0,-0x2d(%rbp)
	jmp    2d59 <main+0x239>
	movb   $0x0,-0x2e(%rbp)
	nop
	mov    -0x28(%rbp),%rax
	movzbl (%rax),%eax
	test   %al,%al
	jne    2d22 <main+0x202>
	subl   $0x1,-0x34(%rbp)
	addq   $0x8,-0x40(%rbp)
	cmpl   $0x0,-0x34(%rbp)
	jle    2d85 <main+0x265>
	mov    -0x40(%rbp),%rax
	mov    (%rax),%rax
	movzbl (%rax),%eax
	cmp    $0x2d,%al
	je     2ca1 <main+0x181>
	nop
	jmp    2d8c <main+0x26c>
	nop
	jmp    2d8c <main+0x26c>
	nop
	cmpb   $0x0,-0x2d(%rbp)
	jne    2ffa <main+0x4da>
	cmpb   $0x0,-0x2b(%rbp)
	je     3038 <main+0x518>
	jmpq   2ffa <main+0x4da>
	mov    -0x40(%rbp),%rax
	mov    (%rax),%rax
	mov    %rax,-0x18(%rbp)
	jmpq   2fc5 <main+0x4a5>
	cmpb   $0x5c,-0x2c(%rbp)
	jne    2fb0 <main+0x490>
	mov    -0x18(%rbp),%rax
	movzbl (%rax),%eax
	test   %al,%al
	je     2fb0 <main+0x490>
	mov    -0x18(%rbp),%rax
	lea    0x1(%rax),%rdx
	mov    %rdx,-0x18(%rbp)
	movzbl (%rax),%eax
	mov    %al,-0x2c(%rbp)
	movzbl -0x2c(%rbp),%eax
	sub    $0x30,%eax
	cmp    $0x48,%eax
	ja     2fa4 <main+0x484>
	mov    %eax,%eax
	lea    0x0(,%rax,4),%rdx
	lea    0x3867(%rip),%rax        # 6668 <_IO_stdin_used+0x668>
	mov    (%rdx,%rax,1),%eax
	cltq   
	lea    0x385b(%rip),%rdx        # 6668 <_IO_stdin_used+0x668>
	add    %rdx,%rax
	notrack jmpq *%rax
	movb   $0x7,-0x2c(%rbp)
	jmpq   2fba <main+0x49a>
	movb   $0x8,-0x2c(%rbp)
	jmpq   2fba <main+0x49a>
	mov    $0x0,%eax
	jmpq   3053 <main+0x533>
	movb   $0x1b,-0x2c(%rbp)
	jmpq   2fba <main+0x49a>
	movb   $0xc,-0x2c(%rbp)
	jmpq   2fba <main+0x49a>
	movb   $0xa,-0x2c(%rbp)
	jmpq   2fba <main+0x49a>
	movb   $0xd,-0x2c(%rbp)
	jmpq   2fba <main+0x49a>
	movb   $0x9,-0x2c(%rbp)
	jmpq   2fba <main+0x49a>
	movb   $0xb,-0x2c(%rbp)
	jmpq   2fba <main+0x49a>
	mov    -0x18(%rbp),%rax
	movzbl (%rax),%eax
	mov    %al,-0x29(%rbp)
	callq  25d0 <__ctype_b_loc@plt>
	mov    (%rax),%rax
	movzbl -0x29(%rbp),%edx
	add    %rdx,%rdx
	add    %rdx,%rax
	movzwl (%rax),%eax
	movzwl %ax,%eax
	and    $0x1000,%eax
	test   %eax,%eax
	je     2fa3 <main+0x483>
	addq   $0x1,-0x18(%rbp)
	movzbl -0x29(%rbp),%eax
	mov    %eax,%edi
	callq  2ab1 <hextobin>
	mov    %al,-0x2c(%rbp)
	mov    -0x18(%rbp),%rax
	movzbl (%rax),%eax
	mov    %al,-0x29(%rbp)
	callq  25d0 <__ctype_b_loc@plt>
	mov    (%rax),%rax
	movzbl -0x29(%rbp),%edx
	add    %rdx,%rdx
	add    %rdx,%rax
	movzwl (%rax),%eax
	movzwl %ax,%eax
	and    $0x1000,%eax
	test   %eax,%eax
	je     2fb6 <main+0x496>
	addq   $0x1,-0x18(%rbp)
	movzbl -0x2c(%rbp),%eax
	shl    $0x4,%eax
	mov    %eax,%ebx
	movzbl -0x29(%rbp),%eax
	mov    %eax,%edi
	callq  2ab1 <hextobin>
	add    %ebx,%eax
	mov    %al,-0x2c(%rbp)
	jmpq   2fb6 <main+0x496>
	movb   $0x0,-0x2c(%rbp)
	mov    -0x18(%rbp),%rax
	movzbl (%rax),%eax
	cmp    $0x2f,%al
	jle    2fb0 <main+0x490>
	mov    -0x18(%rbp),%rax
	movzbl (%rax),%eax
	cmp    $0x37,%al
	jg     2fb0 <main+0x490>
	mov    -0x18(%rbp),%rax
	lea    0x1(%rax),%rdx
	mov    %rdx,-0x18(%rbp)
	movzbl (%rax),%eax
	mov    %al,-0x2c(%rbp)
	subb   $0x30,-0x2c(%rbp)
	mov    -0x18(%rbp),%rax
	movzbl (%rax),%eax
	cmp    $0x2f,%al
	jle    2f69 <main+0x449>
	mov    -0x18(%rbp),%rax
	movzbl (%rax),%eax
	cmp    $0x37,%al
	jg     2f69 <main+0x449>
	movzbl -0x2c(%rbp),%eax
	lea    0x0(,%rax,8),%ecx
	mov    -0x18(%rbp),%rax
	lea    0x1(%rax),%rdx
	mov    %rdx,-0x18(%rbp)
	movzbl (%rax),%eax
	add    %ecx,%eax
	sub    $0x30,%eax
	mov    %al,-0x2c(%rbp)
	mov    -0x18(%rbp),%rax
	movzbl (%rax),%eax
	cmp    $0x2f,%al
	jle    2fb9 <main+0x499>
	mov    -0x18(%rbp),%rax
	movzbl (%rax),%eax
	cmp    $0x37,%al
	jg     2fb9 <main+0x499>
	movzbl -0x2c(%rbp),%eax
	lea    0x0(,%rax,8),%ecx
	mov    -0x18(%rbp),%rax
	lea    0x1(%rax),%rdx
	mov    %rdx,-0x18(%rbp)
	movzbl (%rax),%eax
	add    %ecx,%eax
	sub    $0x30,%eax
	mov    %al,-0x2c(%rbp)
	jmp    2fb9 <main+0x499>
	nop
	mov    $0x5c,%edi
	callq  24c0 <putchar_unlocked@plt>
	jmp    2fba <main+0x49a>
	nop
	jmp    2fba <main+0x49a>
	nop
	jmp    2fba <main+0x49a>
	nop
	jmp    2fba <main+0x49a>
	nop
	movzbl -0x2c(%rbp),%eax
	mov    %eax,%edi
	callq  24c0 <putchar_unlocked@plt>
	mov    -0x18(%rbp),%rax
	lea    0x1(%rax),%rdx
	mov    %rdx,-0x18(%rbp)
	movzbl (%rax),%eax
	mov    %al,-0x2c(%rbp)
	cmpb   $0x0,-0x2c(%rbp)
	jne    2db5 <main+0x295>
	subl   $0x1,-0x34(%rbp)
	addq   $0x8,-0x40(%rbp)
	cmpl   $0x0,-0x34(%rbp)
	jle    2ffa <main+0x4da>
	mov    $0x20,%edi
	callq  24c0 <putchar_unlocked@plt>
	cmpl   $0x0,-0x34(%rbp)
	jg     2da5 <main+0x285>
	jmp    303e <main+0x51e>
	mov    0x707b(%rip),%rdx        # a088 <stdout@@GLIBC_2.2.5>
	mov    -0x40(%rbp),%rax
	mov    (%rax),%rax
	mov    %rdx,%rsi
	mov    %rax,%rdi
	callq  2470 <fputs_unlocked@plt>
	subl   $0x1,-0x34(%rbp)
	addq   $0x8,-0x40(%rbp)
	cmpl   $0x0,-0x34(%rbp)
	jle    3038 <main+0x518>
	mov    $0x20,%edi
	callq  24c0 <putchar_unlocked@plt>
	cmpl   $0x0,-0x34(%rbp)
	jg     3006 <main+0x4e6>
	cmpb   $0x0,-0x2e(%rbp)
	je     304e <main+0x52e>
	mov    $0xa,%edi
	callq  24c0 <putchar_unlocked@plt>
	mov    $0x0,%eax
	mov    -0x8(%rbp),%rbx
	leaveq 
	retq   
	nopl   0x0(%rax)

0000000000003060 <close_stdout_set_file_name>:
	endbr64 
	mov    %rdi,0x704d(%rip)        # a0b8 <file_name>
	retq   
	nopl   0x0(%rax)

0000000000003070 <close_stdout_set_ignore_EPIPE>:
	endbr64 
	mov    %dil,0x7035(%rip)        # a0b0 <ignore_EPIPE>
	retq   
	nopl   0x0(%rax)

0000000000003080 <close_stdout>:
	endbr64 
	push   %r12
	push   %rbx
	sub    $0x8,%rsp
	mov    0x6ff6(%rip),%rdi        # a088 <stdout@@GLIBC_2.2.5>
	callq  58b0 <close_stream>
	test   %eax,%eax
	je     30b1 <close_stdout+0x31>
	callq  2340 <__errno_location@plt>
	cmpb   $0x0,0x7009(%rip)        # a0b0 <ignore_EPIPE>
	mov    %rax,%rbx
	je     30c9 <close_stdout+0x49>
	cmpl   $0x20,(%rax)
	jne    30c9 <close_stdout+0x49>
	mov    0x6fe8(%rip),%rdi        # a0a0 <stderr@@GLIBC_2.2.5>
	callq  58b0 <close_stream>
	test   %eax,%eax
	jne    3108 <close_stdout+0x88>
	add    $0x8,%rsp
	pop    %rbx
	pop    %r12
	retq   
	xor    %edi,%edi
	mov    $0x5,%edx
	lea    0x36c9(%rip),%rsi        # 67a0 <__PRETTY_FUNCTION__.6196+0x14>
	callq  23b0 <dcgettext@plt>
	mov    0x6fd5(%rip),%rdi        # a0b8 <file_name>
	mov    %rax,%r12
	test   %rdi,%rdi
	je     3113 <close_stdout+0x93>
	callq  4c90 <quotearg_colon>
	mov    (%rbx),%esi
	mov    %r12,%r8
	xor    %edi,%edi
	mov    %rax,%rcx
	lea    0x36ab(%rip),%rdx        # 67ac <__PRETTY_FUNCTION__.6196+0x20>
	xor    %eax,%eax
	callq  2550 <error@plt>
	mov    0x6f0a(%rip),%edi        # a018 <exit_failure>
	callq  2360 <_exit@plt>
	mov    (%rbx),%esi
	mov    %rax,%rcx
	lea    0x3691(%rip),%rdx        # 67b0 <__PRETTY_FUNCTION__.6196+0x24>
	xor    %edi,%edi
	xor    %eax,%eax
	callq  2550 <error@plt>
	jmp    3108 <close_stdout+0x88>
	nopw   0x0(%rax,%rax,1)

0000000000003130 <set_program_name>:
	endbr64 
	push   %rbx
	test   %rdi,%rdi
	je     31c3 <set_program_name+0x93>
	mov    $0x2f,%esi
	mov    %rdi,%rbx
	callq  2420 <strrchr@plt>
	test   %rax,%rax
	je     319b <set_program_name+0x6b>
	lea    0x1(%rax),%r8
	mov    %r8,%rdx
	sub    %rbx,%rdx
	cmp    $0x6,%rdx
	jle    319b <set_program_name+0x6b>
	lea    -0x6(%rax),%rsi
	mov    $0x7,%ecx
	lea    0x3680(%rip),%rdi        # 67f0 <__PRETTY_FUNCTION__.6196+0x64>
	repz cmpsb %es:(%rdi),%ds:(%rsi)
	seta   %dl
	sbb    $0x0,%dl
	test   %dl,%dl
	jne    319b <set_program_name+0x6b>
	cmpb   $0x6c,0x1(%rax)
	jne    31b0 <set_program_name+0x80>
	cmpb   $0x74,0x1(%r8)
	jne    31b0 <set_program_name+0x80>
	cmpb   $0x2d,0x2(%r8)
	jne    31b0 <set_program_name+0x80>
	lea    0x4(%rax),%rbx
	mov    %rbx,0x6ee5(%rip)        # a080 <__progname@@GLIBC_2.2.5>
	mov    %rbx,0x6f1e(%rip)        # a0c0 <program_name>
	mov    %rbx,0x6ee7(%rip)        # a090 <__progname_full@@GLIBC_2.2.5>
	pop    %rbx
	retq   
	nopl   0x0(%rax,%rax,1)
	mov    %r8,%rbx
	mov    %rbx,0x6f06(%rip)        # a0c0 <program_name>
	mov    %rbx,0x6ecf(%rip)        # a090 <__progname_full@@GLIBC_2.2.5>
	pop    %rbx
	retq   
	mov    0x6ed6(%rip),%rcx        # a0a0 <stderr@@GLIBC_2.2.5>
	mov    $0x37,%edx
	mov    $0x1,%esi
	lea    0x35dd(%rip),%rdi        # 67b8 <__PRETTY_FUNCTION__.6196+0x2c>
	callq  2590 <fwrite@plt>
	callq  2330 <abort@plt>
	nopw   %cs:0x0(%rax,%rax,1)
	nop

00000000000031f0 <gettext_quote.part.0>:
	push   %rbp
	mov    %rdi,%rbp
	push   %rbx
	mov    %esi,%ebx
	sub    $0x8,%rsp
	callq  59a0 <locale_charset>
	movzbl (%rax),%edx
	and    $0xffffffdf,%edx
	cmp    $0x55,%dl
	jne    3258 <gettext_quote.part.0+0x68>
	movzbl 0x1(%rax),%edx
	and    $0xffffffdf,%edx
	cmp    $0x54,%dl
	jne    3275 <gettext_quote.part.0+0x85>
	movzbl 0x2(%rax),%edx
	and    $0xffffffdf,%edx
	cmp    $0x46,%dl
	jne    3275 <gettext_quote.part.0+0x85>
	cmpb   $0x2d,0x3(%rax)
	jne    3275 <gettext_quote.part.0+0x85>
	cmpb   $0x38,0x4(%rax)
	jne    3275 <gettext_quote.part.0+0x85>
	cmpb   $0x0,0x5(%rax)
	jne    3275 <gettext_quote.part.0+0x85>
	cmpb   $0x60,0x0(%rbp)
	lea    0x35c5(%rip),%rax        # 6805 <__PRETTY_FUNCTION__.6196+0x79>
	lea    0x35b3(%rip),%rdx        # 67fa <__PRETTY_FUNCTION__.6196+0x6e>
	cmovne %rdx,%rax
	add    $0x8,%rsp
	pop    %rbx
	pop    %rbp
	retq   
	nopw   0x0(%rax,%rax,1)
	cmp    $0x47,%dl
	jne    3275 <gettext_quote.part.0+0x85>
	movzbl 0x1(%rax),%edx
	and    $0xffffffdf,%edx
	cmp    $0x42,%dl
	jne    3275 <gettext_quote.part.0+0x85>
	cmpb   $0x31,0x2(%rax)
	jne    3275 <gettext_quote.part.0+0x85>
	cmpb   $0x38,0x3(%rax)
	je     3298 <gettext_quote.part.0+0xa8>
	cmp    $0x9,%ebx
	lea    0x3579(%rip),%rax        # 67f8 <__PRETTY_FUNCTION__.6196+0x6c>
	lea    0x3583(%rip),%rdx        # 6809 <__PRETTY_FUNCTION__.6196+0x7d>
	cmovne %rdx,%rax
	add    $0x8,%rsp
	pop    %rbx
	pop    %rbp
	retq   
	nopl   0x0(%rax)
	cmpb   $0x30,0x4(%rax)
	jne    3275 <gettext_quote.part.0+0x85>
	cmpb   $0x33,0x5(%rax)
	jne    3275 <gettext_quote.part.0+0x85>
	cmpb   $0x30,0x6(%rax)
	jne    3275 <gettext_quote.part.0+0x85>
	cmpb   $0x0,0x7(%rax)
	jne    3275 <gettext_quote.part.0+0x85>
	cmpb   $0x60,0x0(%rbp)
	lea    0x3543(%rip),%rax        # 67fe <__PRETTY_FUNCTION__.6196+0x72>
	lea    0x3540(%rip),%rdx        # 6802 <__PRETTY_FUNCTION__.6196+0x76>
	cmovne %rdx,%rax
	add    $0x8,%rsp
	pop    %rbx
	pop    %rbp
	retq   
	nopl   (%rax)

00000000000032d0 <quotearg_buffer_restyled>:
	push   %r15
	mov    %rdi,%r15
	push   %r14
	mov    %rsi,%r14
	push   %r13
	push   %r12
	push   %rbp
	push   %rbx
	mov    %r9d,%ebx
	sub    $0xb8,%rsp
	mov    0xf0(%rsp),%rax
	mov    %rdx,0x18(%rsp)
	mov    %rcx,0x10(%rsp)
	mov    %rax,0x28(%rsp)
	mov    0xf8(%rsp),%rax
	mov    %r8d,0x8(%rsp)
	mov    %rax,0x78(%rsp)
	mov    0x100(%rsp),%rax
	mov    %r9d,0x64(%rsp)
	mov    %rax,0x70(%rsp)
	mov    %fs:0x28,%rax
	mov    %rax,0xa8(%rsp)
	xor    %eax,%eax
	callq  23c0 <__ctype_get_mb_cur_max@plt>
	mov    0x8(%rsp),%r10d
	and    $0x2,%ebx
	mov    %rax,0x68(%rsp)
	setne  0x63(%rsp)
	cmp    $0xa,%r10d
	ja     25e0 <quotearg_buffer_restyled.cold>
	lea    0x3500(%rip),%rcx        # 6860 <__PRETTY_FUNCTION__.6196+0xd4>
	mov    %r10d,%edx
	mov    0x10(%rsp),%r11
	movslq (%rcx,%rdx,4),%rax
	add    %rcx,%rax
	notrack jmpq *%rax
	nopw   0x0(%rax,%rax,1)
	cmp    $0xa,%r10d
	je     33fc <quotearg_buffer_restyled+0x12c>
	xor    %edi,%edi
	mov    $0x5,%edx
	mov    %r10d,0x10(%rsp)
	lea    0x347a(%rip),%rsi        # 680b <__PRETTY_FUNCTION__.6196+0x7f>
	mov    %r11,0x8(%rsp)
	callq  23b0 <dcgettext@plt>
	mov    0x8(%rsp),%r11
	mov    0x10(%rsp),%r10d
	mov    %rax,%rdi
	mov    %rax,0x78(%rsp)
	lea    0x3457(%rip),%rax        # 680b <__PRETTY_FUNCTION__.6196+0x7f>
	cmp    %rax,%rdi
	je     442c <quotearg_buffer_restyled+0x115c>
	xor    %edi,%edi
	mov    $0x5,%edx
	mov    %r10d,0x10(%rsp)
	lea    0x3439(%rip),%rsi        # 6809 <__PRETTY_FUNCTION__.6196+0x7d>
	mov    %r11,0x8(%rsp)
	callq  23b0 <dcgettext@plt>
	mov    0x8(%rsp),%r11
	mov    0x10(%rsp),%r10d
	mov    %rax,%rdi
	mov    %rax,0x70(%rsp)
	lea    0x3416(%rip),%rax        # 6809 <__PRETTY_FUNCTION__.6196+0x7d>
	cmp    %rax,%rdi
	je     4406 <quotearg_buffer_restyled+0x1136>
	xor    %r12d,%r12d
	test   %ebx,%ebx
	je     422a <quotearg_buffer_restyled+0xf5a>
	mov    0x70(%rsp),%rbx
	mov    %r10d,0x38(%rsp)
	xor    %r13d,%r13d
	mov    %r11,0x30(%rsp)
	mov    %rbx,%rdi
	callq  23d0 <strlen@plt>
	mov    %rbx,0x50(%rsp)
	mov    0x30(%rsp),%r11
	mov    %rax,0x20(%rsp)
	mov    0x38(%rsp),%r10d
	movb   $0x1,0x8(%rsp)
	movb   $0x0,0x84(%rsp)
	movq   $0x0,0x58(%rsp)
	movb   $0x1,0x10(%rsp)
	xor    %ebx,%ebx
	mov    %r13d,%r8d
	nopl   (%rax)
	cmp    %rbx,%r11
	setne  %r13b
	cmp    $0xffffffffffffffff,%r11
	jne    3472 <quotearg_buffer_restyled+0x1a2>
	mov    0x18(%rsp),%rax
	cmpb   $0x0,(%rax,%rbx,1)
	setne  %r13b
	test   %r13b,%r13b
	je     3cf8 <quotearg_buffer_restyled+0xa28>
	cmp    $0x2,%r10d
	mov    0x18(%rsp),%rdi
	setne  %al
	and    0x10(%rsp),%al
	lea    (%rdi,%rbx,1),%rbp
	mov    %eax,%r9d
	je     3b50 <quotearg_buffer_restyled+0x880>
	mov    0x20(%rsp),%rax
	test   %rax,%rax
	je     3ca0 <quotearg_buffer_restyled+0x9d0>
	lea    (%rbx,%rax,1),%rdx
	cmp    $0xffffffffffffffff,%r11
	jne    34e8 <quotearg_buffer_restyled+0x218>
	cmp    $0x1,%rax
	jbe    34e8 <quotearg_buffer_restyled+0x218>
	mov    %r10d,0x48(%rsp)
	mov    %r8b,0x40(%rsp)
	mov    %r9b,0x38(%rsp)
	mov    %rdx,0x30(%rsp)
	callq  23d0 <strlen@plt>
	mov    0x48(%rsp),%r10d
	movzbl 0x40(%rsp),%r8d
	movzbl 0x38(%rsp),%r9d
	mov    0x30(%rsp),%rdx
	mov    %rax,%r11
	cmp    %r11,%rdx
	ja     3ca0 <quotearg_buffer_restyled+0x9d0>
	mov    0x20(%rsp),%rdx
	mov    0x50(%rsp),%rsi
	mov    %rbp,%rdi
	mov    %r10d,0x48(%rsp)
	mov    %r11,0x40(%rsp)
	mov    %r8b,0x38(%rsp)
	mov    %r9b,0x30(%rsp)
	callq  2460 <memcmp@plt>
	movzbl 0x30(%rsp),%r9d
	movzbl 0x38(%rsp),%r8d
	test   %eax,%eax
	mov    0x40(%rsp),%r11
	mov    0x48(%rsp),%r10d
	jne    3ca0 <quotearg_buffer_restyled+0x9d0>
	cmpb   $0x0,0x63(%rsp)
	jne    393e <quotearg_buffer_restyled+0x66e>
	movzbl 0x0(%rbp),%ebp
	cmp    $0x7e,%bpl
	ja     3673 <quotearg_buffer_restyled+0x3a3>
	lea    0x3337(%rip),%rcx        # 688c <__PRETTY_FUNCTION__.6196+0x100>
	movzbl %bpl,%edx
	movslq (%rcx,%rdx,4),%rax
	add    %rcx,%rax
	notrack jmpq *%rax
	nopl   0x0(%rax,%rax,1)
	mov    %r9d,%eax
	nopl   0x0(%rax,%rax,1)
	mov    %r9d,%r13d
	mov    %eax,%r9d
	xor    %eax,%eax
	nopl   0x0(%rax,%rax,1)
	mov    0x28(%rsp),%rsi
	test   %rsi,%rsi
	je     359e <quotearg_buffer_restyled+0x2ce>
	mov    %ebp,%edx
	mov    %ebp,%ecx
	shr    $0x5,%dl
	movzbl %dl,%edx
	mov    (%rsi,%rdx,4),%edx
	shr    %cl,%edx
	and    $0x1,%edx
	jne    35a7 <quotearg_buffer_restyled+0x2d7>
	test   %r9b,%r9b
	je     3661 <quotearg_buffer_restyled+0x391>
	cmp    $0x2,%r10d
	sete   %dl
	cmpb   $0x0,0x63(%rsp)
	mov    %edx,%eax
	jne    3aa0 <quotearg_buffer_restyled+0x7d0>
	mov    %r8d,%eax
	xor    $0x1,%eax
	and    %dl,%al
	je     35f6 <quotearg_buffer_restyled+0x326>
	cmp    %r12,%r14
	jbe    35cf <quotearg_buffer_restyled+0x2ff>
	movb   $0x27,(%r15,%r12,1)
	lea    0x1(%r12),%rdx
	cmp    %rdx,%r14
	jbe    35df <quotearg_buffer_restyled+0x30f>
	movb   $0x24,0x1(%r15,%r12,1)
	lea    0x2(%r12),%rdx
	cmp    %rdx,%r14
	jbe    35ef <quotearg_buffer_restyled+0x31f>
	movb   $0x27,0x2(%r15,%r12,1)
	add    $0x3,%r12
	mov    %eax,%r8d
	cmp    %r12,%r14
	jbe    3600 <quotearg_buffer_restyled+0x330>
	movb   $0x5c,(%r15,%r12,1)
	add    $0x1,%r12
	add    $0x1,%rbx
	cmp    %r14,%r12
	jae    3611 <quotearg_buffer_restyled+0x341>
	mov    %bpl,(%r15,%r12,1)
	movzbl 0x8(%rsp),%edi
	add    $0x1,%r12
	mov    $0x0,%eax
	test   %r13b,%r13b
	cmove  %eax,%edi
	mov    %dil,0x8(%rsp)
	jmpq   3458 <quotearg_buffer_restyled+0x188>
	nop
	xor    %r9d,%r9d
	xor    %eax,%eax
	xor    %r13d,%r13d
	movzbl 0x10(%rsp),%edx
	xor    $0x1,%edx
	or     %dl,%al
	je     3580 <quotearg_buffer_restyled+0x2b0>
	xor    %eax,%eax
	cmpb   $0x0,0x63(%rsp)
	jne    3580 <quotearg_buffer_restyled+0x2b0>
	nopl   (%rax)
	test   %r9b,%r9b
	jne    35a7 <quotearg_buffer_restyled+0x2d7>
	xor    $0x1,%eax
	add    $0x1,%rbx
	and    %r8d,%eax
	jmpq   3bc0 <quotearg_buffer_restyled+0x8f0>
	xor    %r9d,%r9d
	cmpq   $0x1,0x68(%rsp)
	jne    3dd8 <quotearg_buffer_restyled+0xb08>
	mov    %r10d,0x48(%rsp)
	mov    %r11,0x40(%rsp)
	mov    %r8b,0x38(%rsp)
	mov    %r9b,0x30(%rsp)
	callq  25d0 <__ctype_b_loc@plt>
	movzbl 0x30(%rsp),%r9d
	movzbl 0x38(%rsp),%r8d
	mov    $0x1,%edi
	mov    %rax,%r13
	movzbl %bpl,%eax
	mov    0x40(%rsp),%r11
	mov    0x48(%rsp),%r10d
	mov    0x0(%r13),%rdx
	movzwl (%rdx,%rax,2),%eax
	and    $0x4000,%ax
	setne  %r13b
	sete   %dl
	and    0x10(%rsp),%dl
	test   %dl,%dl
	jne    4191 <quotearg_buffer_restyled+0xec1>
	nopl   0x0(%rax)
	cmp    $0x2,%r10d
	sete   %al
	jmpq   3638 <quotearg_buffer_restyled+0x368>
	movb   $0x1,0x8(%rsp)
	xor    %r13d,%r13d
	movb   $0x0,0x84(%rsp)
	movq   $0x0,0x58(%rsp)
	movb   $0x1,0x63(%rsp)
	movb   $0x0,0x10(%rsp)
	lea    0x30f3(%rip),%rax        # 6809 <__PRETTY_FUNCTION__.6196+0x7d>
	xor    %r12d,%r12d
	mov    $0x2,%r10d
	movq   $0x1,0x20(%rsp)
	mov    %rax,0x50(%rsp)
	jmpq   3450 <quotearg_buffer_restyled+0x180>
	test   %ebx,%ebx
	jne    4383 <quotearg_buffer_restyled+0x10b3>
	test   %r14,%r14
	je     41c5 <quotearg_buffer_restyled+0xef5>
	movb   $0x22,(%r15)
	xor    %r13d,%r13d
	movb   $0x1,0x8(%rsp)
	movb   $0x0,0x84(%rsp)
	movq   $0x0,0x58(%rsp)
	lea    0x3091(%rip),%rax        # 67f8 <__PRETTY_FUNCTION__.6196+0x6c>
	movb   $0x0,0x63(%rsp)
	mov    $0x1,%r12d
	movb   $0x1,0x10(%rsp)
	movq   $0x1,0x20(%rsp)
	mov    %rax,0x50(%rsp)
	jmpq   3450 <quotearg_buffer_restyled+0x180>
	test   %ebx,%ebx
	jne    36ec <quotearg_buffer_restyled+0x41c>
	movb   $0x1,0x10(%rsp)
	test   %r14,%r14
	jne    44c1 <quotearg_buffer_restyled+0x11f1>
	movq   $0x0,0x58(%rsp)
	xor    %r13d,%r13d
	movb   $0x1,0x8(%rsp)
	movb   $0x0,0x84(%rsp)
	lea    0x3049(%rip),%rax        # 6809 <__PRETTY_FUNCTION__.6196+0x7d>
	movb   $0x0,0x63(%rsp)
	mov    $0x1,%r12d
	mov    $0x2,%r10d
	movq   $0x1,0x20(%rsp)
	mov    %rax,0x50(%rsp)
	jmpq   3450 <quotearg_buffer_restyled+0x180>
	lea    0x300d(%rip),%rax        # 67f8 <__PRETTY_FUNCTION__.6196+0x6c>
	xor    %r13d,%r13d
	xor    %r12d,%r12d
	movb   $0x1,0x8(%rsp)
	movb   $0x0,0x84(%rsp)
	mov    $0x5,%r10d
	movq   $0x0,0x58(%rsp)
	movb   $0x1,0x63(%rsp)
	movb   $0x1,0x10(%rsp)
	movq   $0x1,0x20(%rsp)
	mov    %rax,0x50(%rsp)
	jmpq   3450 <quotearg_buffer_restyled+0x180>
	movb   $0x1,0x8(%rsp)
	xor    %r13d,%r13d
	xor    %r12d,%r12d
	movb   $0x0,0x84(%rsp)
	movq   $0x0,0x58(%rsp)
	movb   $0x0,0x63(%rsp)
	movb   $0x1,0x10(%rsp)
	movq   $0x0,0x20(%rsp)
	movq   $0x0,0x50(%rsp)
	jmpq   3450 <quotearg_buffer_restyled+0x180>
	movb   $0x1,0x8(%rsp)
	xor    %r13d,%r13d
	xor    %r12d,%r12d
	movb   $0x0,0x84(%rsp)
	movq   $0x0,0x58(%rsp)
	movb   $0x0,0x63(%rsp)
	movb   $0x0,0x10(%rsp)
	movq   $0x0,0x20(%rsp)
	movq   $0x0,0x50(%rsp)
	jmpq   3450 <quotearg_buffer_restyled+0x180>
	movb   $0x1,0x8(%rsp)
	xor    %r13d,%r13d
	movb   $0x0,0x84(%rsp)
	movq   $0x0,0x58(%rsp)
	movb   $0x1,0x63(%rsp)
	movb   $0x1,0x10(%rsp)
	jmpq   370f <quotearg_buffer_restyled+0x43f>
	test   %ebx,%ebx
	jne    44de <quotearg_buffer_restyled+0x120e>
	movb   $0x0,0x10(%rsp)
	jmpq   3797 <quotearg_buffer_restyled+0x4c7>
	xchg   %ax,%ax
	xor    %r9d,%r9d
	cmp    $0x1,%r11
	setne  %dl
	cmp    $0xffffffffffffffff,%r11
	jne    38fc <quotearg_buffer_restyled+0x62c>
	mov    0x18(%rsp),%rax
	cmpb   $0x0,0x1(%rax)
	setne  %dl
	cmp    $0x2,%r10d
	sete   %al
	test   %dl,%dl
	jne    3635 <quotearg_buffer_restyled+0x365>
	test   %rbx,%rbx
	jne    3635 <quotearg_buffer_restyled+0x365>
	cmpb   $0x0,0x63(%rsp)
	je     3638 <quotearg_buffer_restyled+0x368>
	test   %al,%al
	je     3638 <quotearg_buffer_restyled+0x368>
	mov    $0x2,%r10d
	nopl   (%rax)
	cmpb   $0x0,0x10(%rsp)
	mov    $0x4,%eax
	cmovne %eax,%r10d
	sub    $0x8,%rsp
	mov    %r10d,%r8d
	mov    %r11,%rcx
	pushq  0x78(%rsp)
	mov    %r14,%rsi
	mov    %r15,%rdi
	pushq  0x88(%rsp)
	pushq  $0x0
	mov    0x84(%rsp),%r9d
	mov    0x38(%rsp),%rdx
	and    $0xfffffffd,%r9d
	callq  32d0 <quotearg_buffer_restyled>
	add    $0x20,%rsp
	mov    %rax,%r12
	mov    0xa8(%rsp),%rax
	xor    %fs:0x28,%rax
	jne    44bc <quotearg_buffer_restyled+0x11ec>
	add    $0xb8,%rsp
	mov    %r12,%rax
	pop    %rbx
	pop    %rbp
	pop    %r12
	pop    %r13
	pop    %r14
	pop    %r15
	retq   
	xor    %r9d,%r9d
	cmp    $0x2,%r10d
	je     3db8 <quotearg_buffer_restyled+0xae8>
	cmp    $0x5,%r10d
	jne    39e0 <quotearg_buffer_restyled+0x710>
	testb  $0x4,0x64(%rsp)
	je     39e0 <quotearg_buffer_restyled+0x710>
	lea    0x2(%rbx),%rax
	cmp    %r11,%rax
	jae    39e0 <quotearg_buffer_restyled+0x710>
	mov    0x18(%rsp),%rdi
	cmpb   $0x3f,0x1(%rdi,%rbx,1)
	je     429d <quotearg_buffer_restyled+0xfcd>
	nopw   0x0(%rax,%rax,1)
	xor    %eax,%eax
	xor    %r13d,%r13d
	mov    $0x3f,%ebp
	jmpq   3638 <quotearg_buffer_restyled+0x368>
	xor    %r9d,%r9d
	cmp    $0x2,%r10d
	je     3d70 <quotearg_buffer_restyled+0xaa0>
	mov    %r13b,0x84(%rsp)
	xor    %eax,%eax
	mov    $0x27,%ebp
	jmpq   3638 <quotearg_buffer_restyled+0x368>
	xor    %r9d,%r9d
	nopl   0x0(%rax,%rax,1)
	movzbl 0x63(%rsp),%ecx
	test   %cl,0x10(%rsp)
	je     3a2f <quotearg_buffer_restyled+0x75f>
	cmpq   $0x0,0x20(%rsp)
	jne    3ba8 <quotearg_buffer_restyled+0x8d8>
	mov    $0x5c,%ebp
	mov    $0x5c,%edx
	nopl   0x0(%rax)
	cmpb   $0x0,0x10(%rsp)
	jne    44d7 <quotearg_buffer_restyled+0x1207>
	xor    %r13d,%r13d
	xor    %eax,%eax
	cmpb   $0x0,0x63(%rsp)
	jne    3580 <quotearg_buffer_restyled+0x2b0>
	jmpq   3658 <quotearg_buffer_restyled+0x388>
	mov    $0x61,%ebp
	cmp    $0x2,%r10d
	sete   %al
	cmpb   $0x0,0x63(%rsp)
	jne    3aa0 <quotearg_buffer_restyled+0x7d0>
	xor    %r13d,%r13d
	jmpq   35f6 <quotearg_buffer_restyled+0x326>
	mov    $0x72,%ebp
	xor    %r13d,%r13d
	cmp    $0x2,%r10d
	sete   %dl
	cmpb   $0x0,0x63(%rsp)
	mov    %edx,%eax
	je     35bb <quotearg_buffer_restyled+0x2eb>
	nopw   0x0(%rax,%rax,1)
	and    %al,0x10(%rsp)
	jmpq   3930 <quotearg_buffer_restyled+0x660>
	mov    $0x66,%ebp
	jmp    3a65 <quotearg_buffer_restyled+0x795>
	mov    $0x6e,%ebp
	jmp    3a80 <quotearg_buffer_restyled+0x7b0>
	mov    $0x62,%ebp
	jmp    3a65 <quotearg_buffer_restyled+0x795>
	cmpb   $0x0,0x63(%rsp)
	jne    4452 <quotearg_buffer_restyled+0x1182>
	xor    %r9d,%r9d
	cmp    $0x2,%r10d
	mov    %r8d,%eax
	sete   %dl
	xor    $0x1,%eax
	and    %dl,%al
	je     40f0 <quotearg_buffer_restyled+0xe20>
	cmp    %r12,%r14
	jbe    3aeb <quotearg_buffer_restyled+0x81b>
	movb   $0x27,(%r15,%r12,1)
	lea    0x1(%r12),%rcx
	cmp    %rcx,%r14
	jbe    3afb <quotearg_buffer_restyled+0x82b>
	movb   $0x24,0x1(%r15,%r12,1)
	lea    0x2(%r12),%rcx
	cmp    %rcx,%r14
	jbe    3b0b <quotearg_buffer_restyled+0x83b>
	movb   $0x27,0x2(%r15,%r12,1)
	lea    0x3(%r12),%rcx
	cmp    %rcx,%r14
	ja     40fb <quotearg_buffer_restyled+0xe2b>
	add    $0x4,%r12
	mov    %eax,%r8d
	xor    %r13d,%r13d
	mov    $0x30,%ebp
	jmpq   359e <quotearg_buffer_restyled+0x2ce>
	xor    %r9d,%r9d
	mov    $0x9,%ebp
	mov    $0x74,%edx
	jmpq   3a40 <quotearg_buffer_restyled+0x770>
	mov    $0x76,%ebp
	jmpq   3a80 <quotearg_buffer_restyled+0x7b0>
	nopl   0x0(%rax)
	movzbl 0x0(%rbp),%ebp
	cmp    $0x7e,%bpl
	ja     3673 <quotearg_buffer_restyled+0x3a3>
	lea    0x2f23(%rip),%rcx        # 6a88 <__PRETTY_FUNCTION__.6196+0x2fc>
	movzbl %bpl,%edx
	movslq (%rcx,%rdx,4),%rax
	add    %rcx,%rax
	notrack jmpq *%rax
	nopl   0x0(%rax,%rax,1)
	cmp    $0x2,%r10d
	sete   %al
	xor    %r13d,%r13d
	jmpq   3914 <quotearg_buffer_restyled+0x644>
	cmp    $0x2,%r10d
	sete   %al
	jmpq   390b <quotearg_buffer_restyled+0x63b>
	cmp    $0x2,%r10d
	jne    3a18 <quotearg_buffer_restyled+0x748>
	cmpb   $0x0,0x63(%rsp)
	jne    3930 <quotearg_buffer_restyled+0x660>
	add    $0x1,%rbx
	mov    %r8d,%eax
	xor    %r13d,%r13d
	mov    $0x5c,%ebp
	nopw   0x0(%rax,%rax,1)
	test   %al,%al
	je     3608 <quotearg_buffer_restyled+0x338>
	cmp    %r12,%r14
	jbe    3bd2 <quotearg_buffer_restyled+0x902>
	movb   $0x27,(%r15,%r12,1)
	lea    0x1(%r12),%rax
	cmp    %rax,%r14
	jbe    3be2 <quotearg_buffer_restyled+0x912>
	movb   $0x27,0x1(%r15,%r12,1)
	add    $0x2,%r12
	xor    %r8d,%r8d
	jmpq   3608 <quotearg_buffer_restyled+0x338>
	cmp    $0x2,%r10d
	mov    $0x20,%ebp
	sete   %al
	jmpq   3914 <quotearg_buffer_restyled+0x644>
	mov    $0xc,%ebp
	mov    $0x66,%edx
	jmpq   3a40 <quotearg_buffer_restyled+0x770>
	mov    $0x9,%ebp
	mov    $0x74,%edx
	cmp    $0x2,%r10d
	sete   %al
	and    0x63(%rsp),%al
	mov    %eax,%r9d
	je     3a40 <quotearg_buffer_restyled+0x770>
	jmpq   3927 <quotearg_buffer_restyled+0x657>
	mov    $0x8,%ebp
	mov    $0x62,%edx
	jmpq   3a40 <quotearg_buffer_restyled+0x770>
	cmpb   $0x0,0x10(%rsp)
	jne    3abe <quotearg_buffer_restyled+0x7ee>
	xor    %r9d,%r9d
	xor    %ebp,%ebp
	testb  $0x1,0x64(%rsp)
	je     3a4b <quotearg_buffer_restyled+0x77b>
	add    $0x1,%rbx
	jmpq   3458 <quotearg_buffer_restyled+0x188>
	mov    $0xd,%ebp
	mov    $0x72,%edx
	jmp    3c18 <quotearg_buffer_restyled+0x948>
	mov    $0xb,%ebp
	mov    $0x76,%edx
	jmpq   3a40 <quotearg_buffer_restyled+0x770>
	mov    $0xa,%ebp
	mov    $0x6e,%edx
	jmp    3c18 <quotearg_buffer_restyled+0x948>
	mov    $0x7,%ebp
	mov    $0x61,%edx
	jmpq   3a40 <quotearg_buffer_restyled+0x770>
	nopw   0x0(%rax,%rax,1)
	movzbl 0x0(%rbp),%ebp
	cmp    $0x7e,%bpl
	ja     3670 <quotearg_buffer_restyled+0x3a0>
	lea    0x2fcf(%rip),%rcx        # 6c84 <__PRETTY_FUNCTION__.6196+0x4f8>
	movzbl %bpl,%edx
	movslq (%rcx,%rdx,4),%rax
	add    %rcx,%rax
	notrack jmpq *%rax
	nopl   0x0(%rax,%rax,1)
	xor    %eax,%eax
	jmpq   3570 <quotearg_buffer_restyled+0x2a0>
	xor    %eax,%eax
	test   %rbx,%rbx
	jne    40e0 <quotearg_buffer_restyled+0xe10>
	mov    %r9d,%r13d
	mov    %eax,%r9d
	xor    %eax,%eax
	jmpq   3638 <quotearg_buffer_restyled+0x368>
	xor    %eax,%eax
	mov    $0x20,%ebp
	jmpq   3570 <quotearg_buffer_restyled+0x2a0>
	nopl   0x0(%rax,%rax,1)
	cmp    $0x2,%r10d
	mov    %r8d,%r13d
	sete   %dl
	test   %r12,%r12
	jne    3d11 <quotearg_buffer_restyled+0xa41>
	test   %dl,0x63(%rsp)
	jne    3927 <quotearg_buffer_restyled+0x657>
	movzbl 0x63(%rsp),%eax
	xor    $0x1,%eax
	and    %al,%dl
	je     43c3 <quotearg_buffer_restyled+0x10f3>
	cmpb   $0x0,0x84(%rsp)
	je     43c5 <quotearg_buffer_restyled+0x10f5>
	cmpb   $0x0,0x8(%rsp)
	jne    446d <quotearg_buffer_restyled+0x119d>
	test   %r14,%r14
	sete   %al
	cmpq   $0x0,0x58(%rsp)
	setne  %dl
	and    %dl,%al
	je     4460 <quotearg_buffer_restyled+0x1190>
	mov    0x58(%rsp),%rdx
	mov    0x58(%rsp),%r14
	movb   $0x27,(%r15)
	mov    %al,0x84(%rsp)
	mov    %rdx,0x58(%rsp)
	jmpq   37b9 <quotearg_buffer_restyled+0x4e9>
	cmpb   $0x0,0x63(%rsp)
	jne    3930 <quotearg_buffer_restyled+0x660>
	test   %r14,%r14
	je     4156 <quotearg_buffer_restyled+0xe86>
	xor    %edx,%edx
	cmpq   $0x0,0x58(%rsp)
	jne    4156 <quotearg_buffer_restyled+0xe86>
	mov    %r14,0x58(%rsp)
	add    $0x3,%r12
	xor    %eax,%eax
	xor    %r8d,%r8d
	mov    %r13b,0x84(%rsp)
	mov    %rdx,%r14
	mov    $0x27,%ebp
	jmpq   359e <quotearg_buffer_restyled+0x2ce>
	nopl   (%rax)
	cmpb   $0x0,0x63(%rsp)
	jne    3930 <quotearg_buffer_restyled+0x660>
	xor    %r13d,%r13d
	xor    %eax,%eax
	mov    $0x3f,%ebp
	jmpq   359e <quotearg_buffer_restyled+0x2ce>
	nopw   0x0(%rax,%rax,1)
	lea    0xa0(%rsp),%rax
	movq   $0x0,0xa0(%rsp)
	mov    %rax,0x38(%rsp)
	cmp    $0xffffffffffffffff,%r11
	jne    3e24 <quotearg_buffer_restyled+0xb54>
	mov    0x18(%rsp),%rdi
	mov    %r10d,0x48(%rsp)
	mov    %r8b,0x40(%rsp)
	mov    %r9b,0x30(%rsp)
	callq  23d0 <strlen@plt>
	mov    0x48(%rsp),%r10d
	movzbl 0x40(%rsp),%r8d
	movzbl 0x30(%rsp),%r9d
	mov    %rax,%r11
	lea    0x9c(%rsp),%rax
	mov    %r13b,0x30(%rsp)
	xor    %edi,%edi
	mov    %rax,0x48(%rsp)
	mov    %r8b,0x85(%rsp)
	mov    %r9b,0x87(%rsp)
	mov    %r10d,0x80(%rsp)
	mov    %r12,0x88(%rsp)
	mov    0x38(%rsp),%r12
	mov    %rbx,0x40(%rsp)
	mov    %r11,%rbx
	mov    %bpl,0x86(%rsp)
	mov    %rdi,%rbp
	mov    0x40(%rsp),%rax
	mov    0x48(%rsp),%rdi
	mov    %rbx,%rdx
	mov    %r12,%rcx
	lea    (%rax,%rbp,1),%r13
	mov    0x18(%rsp),%rax
	sub    %r13,%rdx
	lea    (%rax,%r13,1),%rsi
	callq  5820 <rpl_mbrtowc>
	mov    %rax,%rdx
	test   %rax,%rax
	je     3f03 <quotearg_buffer_restyled+0xc33>
	cmp    $0xffffffffffffffff,%rax
	je     425b <quotearg_buffer_restyled+0xf8b>
	cmp    $0xfffffffffffffffe,%rax
	je     4317 <quotearg_buffer_restyled+0x1047>
	cmpl   $0x2,0x80(%rsp)
	jne    3ec6 <quotearg_buffer_restyled+0xbf6>
	cmpb   $0x0,0x63(%rsp)
	jne    4080 <quotearg_buffer_restyled+0xdb0>
	mov    0x9c(%rsp),%edi
	mov    %rdx,0x38(%rsp)
	callq  25c0 <iswprint@plt>
	movzbl 0x30(%rsp),%edi
	mov    0x38(%rsp),%rdx
	test   %eax,%eax
	mov    $0x0,%eax
	cmove  %eax,%edi
	add    %rdx,%rbp
	mov    %dil,0x30(%rsp)
	mov    %r12,%rdi
	callq  25b0 <mbsinit@plt>
	test   %eax,%eax
	je     3e70 <quotearg_buffer_restyled+0xba0>
	movzbl 0x30(%rsp),%r13d
	mov    %rbp,%rdi
	mov    %rbx,%r11
	movzbl 0x85(%rsp),%r8d
	movzbl 0x86(%rsp),%ebp
	mov    0x88(%rsp),%r12
	mov    %r13d,%edx
	mov    0x40(%rsp),%rbx
	movzbl 0x87(%rsp),%r9d
	mov    0x80(%rsp),%r10d
	xor    $0x1,%edx
	and    0x10(%rsp),%dl
	cmp    $0x1,%rdi
	jbe    36d1 <quotearg_buffer_restyled+0x401>
	mov    %rdi,%rcx
	mov    %r13b,0x30(%rsp)
	mov    0x18(%rsp),%rdi
	xor    %esi,%esi
	movzbl 0x63(%rsp),%r13d
	add    %rbx,%rcx
	jmpq   4021 <quotearg_buffer_restyled+0xd51>
	nop
	cmp    $0x2,%r10d
	sete   %al
	test   %r13b,%r13b
	jne    41a9 <quotearg_buffer_restyled+0xed9>
	mov    %r8d,%esi
	xor    $0x1,%esi
	and    %sil,%al
	je     3fbc <quotearg_buffer_restyled+0xcec>
	cmp    %r12,%r14
	jbe    3f95 <quotearg_buffer_restyled+0xcc5>
	movb   $0x27,(%r15,%r12,1)
	lea    0x1(%r12),%rsi
	cmp    %rsi,%r14
	jbe    3fa5 <quotearg_buffer_restyled+0xcd5>
	movb   $0x24,0x1(%r15,%r12,1)
	lea    0x2(%r12),%rsi
	cmp    %rsi,%r14
	jbe    3fb5 <quotearg_buffer_restyled+0xce5>
	movb   $0x27,0x2(%r15,%r12,1)
	add    $0x3,%r12
	mov    %eax,%r8d
	cmp    %r12,%r14
	jbe    3fc6 <quotearg_buffer_restyled+0xcf6>
	movb   $0x5c,(%r15,%r12,1)
	lea    0x1(%r12),%rax
	cmp    %rax,%r14
	jbe    3fdd <quotearg_buffer_restyled+0xd0d>
	mov    %ebp,%eax
	shr    $0x6,%al
	add    $0x30,%eax
	mov    %al,0x1(%r15,%r12,1)
	lea    0x2(%r12),%rax
	cmp    %rax,%r14
	jbe    3ff7 <quotearg_buffer_restyled+0xd27>
	mov    %ebp,%eax
	shr    $0x3,%al
	and    $0x7,%eax
	add    $0x30,%eax
	mov    %al,0x2(%r15,%r12,1)
	and    $0x7,%ebp
	add    $0x1,%rbx
	add    $0x3,%r12
	add    $0x30,%ebp
	cmp    %rcx,%rbx
	jae    41b2 <quotearg_buffer_restyled+0xee2>
	mov    %edx,%esi
	cmp    %r12,%r14
	jbe    4019 <quotearg_buffer_restyled+0xd49>
	mov    %bpl,(%r15,%r12,1)
	movzbl (%rdi,%rbx,1),%ebp
	add    $0x1,%r12
	test   %dl,%dl
	jne    3f70 <quotearg_buffer_restyled+0xca0>
	mov    %esi,%eax
	xor    $0x1,%eax
	and    %r8d,%eax
	test   %r9b,%r9b
	je     4044 <quotearg_buffer_restyled+0xd74>
	cmp    %r12,%r14
	jbe    4040 <quotearg_buffer_restyled+0xd70>
	movb   $0x5c,(%r15,%r12,1)
	add    $0x1,%r12
	add    $0x1,%rbx
	cmp    %rcx,%rbx
	jae    419e <quotearg_buffer_restyled+0xece>
	test   %al,%al
	je     41bd <quotearg_buffer_restyled+0xeed>
	cmp    %r12,%r14
	jbe    4063 <quotearg_buffer_restyled+0xd93>
	movb   $0x27,(%r15,%r12,1)
	lea    0x1(%r12),%rax
	cmp    %rax,%r14
	jbe    4073 <quotearg_buffer_restyled+0xda3>
	movb   $0x27,0x1(%r15,%r12,1)
	add    $0x2,%r12
	xor    %r9d,%r9d
	xor    %r8d,%r8d
	jmp    4010 <quotearg_buffer_restyled+0xd40>
	nop
	cmp    $0x1,%rax
	je     3ec6 <quotearg_buffer_restyled+0xbf6>
	mov    0x18(%rsp),%rax
	lea    0x1(%rax,%r13,1),%rsi
	add    %rdx,%rax
	lea    (%rax,%r13,1),%r8
	jmp    40aa <quotearg_buffer_restyled+0xdda>
	add    $0x1,%rsi
	cmp    %rsi,%r8
	je     3ec6 <quotearg_buffer_restyled+0xbf6>
	movzbl (%rsi),%eax
	lea    -0x5b(%rax),%ecx
	cmp    $0x21,%cl
	ja     409d <quotearg_buffer_restyled+0xdcd>
	mov    $0x1,%eax
	shl    %cl,%rax
	movabs $0x20000002b,%rcx
	test   %rcx,%rax
	je     409d <quotearg_buffer_restyled+0xdcd>
	mov    %rbx,%r11
	mov    $0x2,%r10d
	jmpq   3930 <quotearg_buffer_restyled+0x660>
	nopw   0x0(%rax,%rax,1)
	mov    %eax,%r9d
	xor    %r13d,%r13d
	xor    %eax,%eax
	jmpq   3580 <quotearg_buffer_restyled+0x2b0>
	nopl   (%rax)
	mov    %r12,%rcx
	cmp    %r12,%r14
	jbe    4103 <quotearg_buffer_restyled+0xe33>
	mov    %r8d,%eax
	movb   $0x5c,(%r15,%rcx,1)
	mov    %eax,%r8d
	lea    0x1(%rcx),%r12
	cmp    $0x2,%r10d
	je     41e3 <quotearg_buffer_restyled+0xf13>
	lea    0x1(%rbx),%rax
	mov    $0x30,%ebp
	cmp    %r11,%rax
	jae    4138 <quotearg_buffer_restyled+0xe68>
	mov    0x18(%rsp),%rax
	movzbl 0x1(%rax,%rbx,1),%eax
	mov    %al,0x30(%rsp)
	sub    $0x30,%eax
	cmp    $0x9,%al
	jbe    41f3 <quotearg_buffer_restyled+0xf23>
	movzbl 0x10(%rsp),%eax
	xor    $0x1,%eax
	or     %dl,%al
	mov    %r13d,%eax
	mov    $0x0,%r13d
	je     3580 <quotearg_buffer_restyled+0x2b0>
	jmpq   359e <quotearg_buffer_restyled+0x2ce>
	cmp    %r12,%r14
	jbe    4160 <quotearg_buffer_restyled+0xe90>
	movb   $0x27,(%r15,%r12,1)
	lea    0x1(%r12),%rax
	cmp    %rax,%r14
	jbe    4170 <quotearg_buffer_restyled+0xea0>
	movb   $0x5c,0x1(%r15,%r12,1)
	lea    0x2(%r12),%rax
	cmp    %rax,%r14
	jbe    44af <quotearg_buffer_restyled+0x11df>
	mov    %r14,%rdx
	movb   $0x27,0x2(%r15,%r12,1)
	mov    0x58(%rsp),%r14
	jmpq   3d92 <quotearg_buffer_restyled+0xac2>
	movzbl 0x10(%rsp),%edx
	xor    %r13d,%r13d
	jmpq   3f52 <quotearg_buffer_restyled+0xc82>
	movzbl 0x30(%rsp),%r13d
	jmpq   3bc0 <quotearg_buffer_restyled+0x8f0>
	mov    %al,0x10(%rsp)
	jmpq   3930 <quotearg_buffer_restyled+0x660>
	movzbl 0x30(%rsp),%r13d
	jmpq   3608 <quotearg_buffer_restyled+0x338>
	xor    %r9d,%r9d
	jmpq   4010 <quotearg_buffer_restyled+0xd40>
	movq   $0x0,0x58(%rsp)
	xor    %r13d,%r13d
	movb   $0x1,0x8(%rsp)
	movb   $0x0,0x84(%rsp)
	jmpq   3760 <quotearg_buffer_restyled+0x490>
	mov    %r13d,%eax
	mov    $0x30,%ebp
	xor    %r13d,%r13d
	jmpq   359e <quotearg_buffer_restyled+0x2ce>
	cmp    %r12,%r14
	jbe    41fd <quotearg_buffer_restyled+0xf2d>
	movb   $0x30,(%r15,%r12,1)
	lea    0x2(%rcx),%rax
	cmp    %rax,%r14
	jbe    420c <quotearg_buffer_restyled+0xf3c>
	movb   $0x30,0x2(%r15,%rcx,1)
	lea    0x3(%rcx),%r12
	mov    $0x30,%ebp
	jmpq   4138 <quotearg_buffer_restyled+0xe68>
	mov    %r9d,%eax
	jmpq   3cd1 <quotearg_buffer_restyled+0xa01>
	mov    %r9d,%eax
	jmpq   3ce9 <quotearg_buffer_restyled+0xa19>
	mov    0x78(%rsp),%rdx
	movzbl (%rdx),%eax
	test   %al,%al
	je     3407 <quotearg_buffer_restyled+0x137>
	nopw   0x0(%rax,%rax,1)
	cmp    %r12,%r14
	jbe    4249 <quotearg_buffer_restyled+0xf79>
	mov    %al,(%r15,%r12,1)
	add    $0x1,%r12
	movzbl (%rdx,%r12,1),%eax
	test   %al,%al
	jne    4240 <quotearg_buffer_restyled+0xf70>
	jmpq   3407 <quotearg_buffer_restyled+0x137>
	mov    %rbp,%rdi
	mov    %rbx,%r11
	movzbl 0x10(%rsp),%edx
	mov    0x40(%rsp),%rbx
	movzbl 0x85(%rsp),%r8d
	movzbl 0x86(%rsp),%ebp
	xor    %r13d,%r13d
	mov    0x88(%rsp),%r12
	mov    0x80(%rsp),%r10d
	movzbl 0x87(%rsp),%r9d
	jmpq   3f48 <quotearg_buffer_restyled+0xc78>
	movzbl (%rdi,%rax,1),%ebp
	lea    -0x21(%rbp),%edx
	cmp    $0x1d,%dl
	ja     39e0 <quotearg_buffer_restyled+0x710>
	lea    0x2bcc(%rip),%rdi        # 6e80 <__PRETTY_FUNCTION__.6196+0x6f4>
	movzbl %dl,%edx
	movslq (%rdi,%rdx,4),%rdx
	add    %rdi,%rdx
	notrack jmpq *%rdx
	cmpb   $0x0,0x63(%rsp)
	jne    393e <quotearg_buffer_restyled+0x66e>
	cmp    %r12,%r14
	jbe    42d6 <quotearg_buffer_restyled+0x1006>
	movb   $0x3f,(%r15,%r12,1)
	lea    0x1(%r12),%rdx
	cmp    %rdx,%r14
	jbe    42e6 <quotearg_buffer_restyled+0x1016>
	movb   $0x22,0x1(%r15,%r12,1)
	lea    0x2(%r12),%rdx
	cmp    %rdx,%r14
	jbe    42f6 <quotearg_buffer_restyled+0x1026>
	movb   $0x22,0x2(%r15,%r12,1)
	lea    0x3(%r12),%rdx
	cmp    %rdx,%r14
	jbe    4306 <quotearg_buffer_restyled+0x1036>
	movb   $0x3f,0x3(%r15,%r12,1)
	add    $0x4,%r12
	xor    %edx,%edx
	xor    %r13d,%r13d
	mov    %rax,%rbx
	jmpq   4138 <quotearg_buffer_restyled+0xe68>
	mov    %rbp,%rdi
	mov    %rbx,%r11
	mov    0x18(%rsp),%rcx
	mov    0x40(%rsp),%rbx
	movzbl 0x85(%rsp),%r8d
	mov    %r13,%rax
	mov    %rdi,%rdx
	movzbl 0x86(%rsp),%ebp
	mov    0x88(%rsp),%r12
	mov    0x80(%rsp),%r10d
	movzbl 0x87(%rsp),%r9d
	cmp    %r11,%r13
	jb     436d <quotearg_buffer_restyled+0x109d>
	jmp    4376 <quotearg_buffer_restyled+0x10a6>
	xchg   %ax,%ax
	add    $0x1,%rdx
	lea    (%rbx,%rdx,1),%rax
	cmp    %rax,%r11
	jbe    4373 <quotearg_buffer_restyled+0x10a3>
	cmpb   $0x0,(%rcx,%rax,1)
	jne    4360 <quotearg_buffer_restyled+0x1090>
	mov    %rdx,%rdi
	movzbl 0x10(%rsp),%edx
	xor    %r13d,%r13d
	jmpq   3f48 <quotearg_buffer_restyled+0xc78>
	lea    0x246e(%rip),%rax        # 67f8 <__PRETTY_FUNCTION__.6196+0x6c>
	xor    %r13d,%r13d
	xor    %r12d,%r12d
	movb   $0x1,0x8(%rsp)
	movb   $0x0,0x84(%rsp)
	movq   $0x0,0x58(%rsp)
	movb   $0x1,0x63(%rsp)
	movb   $0x1,0x10(%rsp)
	movq   $0x1,0x20(%rsp)
	mov    %rax,0x50(%rsp)
	jmpq   3450 <quotearg_buffer_restyled+0x180>
	mov    %eax,%edx
	mov    0x50(%rsp),%rax
	test   %rax,%rax
	je     43f3 <quotearg_buffer_restyled+0x1123>
	test   %dl,%dl
	je     43f3 <quotearg_buffer_restyled+0x1123>
	movzbl (%rax),%edx
	test   %dl,%dl
	je     43f3 <quotearg_buffer_restyled+0x1123>
	sub    %r12,%rax
	cmp    %r12,%r14
	jbe    43e6 <quotearg_buffer_restyled+0x1116>
	mov    %dl,(%r15,%r12,1)
	add    $0x1,%r12
	movzbl (%rax,%r12,1),%edx
	test   %dl,%dl
	jne    43dd <quotearg_buffer_restyled+0x110d>
	cmp    %r12,%r14
	jbe    3978 <quotearg_buffer_restyled+0x6a8>
	movb   $0x0,(%r15,%r12,1)
	jmpq   3978 <quotearg_buffer_restyled+0x6a8>
	mov    %r10d,%esi
	mov    %r11,0x10(%rsp)
	mov    %r10d,0x8(%rsp)
	callq  31f0 <gettext_quote.part.0>
	mov    0x10(%rsp),%r11
	mov    0x8(%rsp),%r10d
	mov    %rax,0x70(%rsp)
	jmpq   33fc <quotearg_buffer_restyled+0x12c>
	mov    %r10d,%esi
	mov    %r11,0x10(%rsp)
	mov    %r10d,0x8(%rsp)
	callq  31f0 <gettext_quote.part.0>
	mov    0x10(%rsp),%r11
	mov    0x8(%rsp),%r10d
	mov    %rax,0x78(%rsp)
	jmpq   33bd <quotearg_buffer_restyled+0xed>
	cmp    $0x2,%r10d
	sete   0x10(%rsp)
	jmpq   3930 <quotearg_buffer_restyled+0x660>
	movzbl 0x84(%rsp),%edx
	jmpq   43c5 <quotearg_buffer_restyled+0x10f5>
	sub    $0x8,%rsp
	mov    $0x5,%r8d
	mov    %r11,%rcx
	mov    %r15,%rdi
	pushq  0x78(%rsp)
	pushq  0x88(%rsp)
	pushq  0x40(%rsp)
	mov    0x84(%rsp),%r9d
	mov    0x38(%rsp),%rdx
	mov    0x78(%rsp),%rsi
	callq  32d0 <quotearg_buffer_restyled>
	add    $0x20,%rsp
	mov    %rax,%r12
	jmpq   3978 <quotearg_buffer_restyled+0x6a8>
	mov    %r14,%rdx
	mov    0x58(%rsp),%r14
	jmpq   3d92 <quotearg_buffer_restyled+0xac2>
	callq  23e0 <__stack_chk_fail@plt>
	mov    %r14,0x58(%rsp)
	xor    %edx,%edx
	xor    %r13d,%r13d
	xor    %eax,%eax
	movb   $0x1,0x8(%rsp)
	jmpq   3d56 <quotearg_buffer_restyled+0xa86>
	mov    %edx,%ebp
	jmpq   3a80 <quotearg_buffer_restyled+0x7b0>
	lea    0x2324(%rip),%rax        # 6809 <__PRETTY_FUNCTION__.6196+0x7d>
	xor    %r13d,%r13d
	xor    %r12d,%r12d
	movb   $0x1,0x8(%rsp)
	movb   $0x0,0x84(%rsp)
	movq   $0x0,0x58(%rsp)
	movb   $0x1,0x63(%rsp)
	movb   $0x0,0x10(%rsp)
	movq   $0x1,0x20(%rsp)
	mov    %rax,0x50(%rsp)
	jmpq   3450 <quotearg_buffer_restyled+0x180>
	xchg   %ax,%ax

0000000000004520 <quotearg_n_options>:
	push   %r15
	push   %r14
	push   %r13
	mov    %rdx,%r13
	push   %r12
	mov    %rsi,%r12
	push   %rbp
	mov    %rcx,%rbp
	push   %rbx
	movslq %edi,%rbx
	sub    $0x28,%rsp
	callq  2340 <__errno_location@plt>
	mov    0x5b1a(%rip),%r15        # a060 <slotvec>
	mov    %rax,(%rsp)
	mov    (%rax),%eax
	mov    %eax,0xc(%rsp)
	test   %ebx,%ebx
	js     25e5 <quotearg_n_options.cold>
	cmp    %ebx,0x5afa(%rip)        # a058 <nslots>
	jg     45c1 <quotearg_n_options+0xa1>
	cmp    $0x7fffffff,%ebx
	je     46b9 <quotearg_n_options+0x199>
	lea    0x1(%rbx),%r14d
	lea    0x5af9(%rip),%rax        # a070 <slotvec0>
	movslq %r14d,%rsi
	shl    $0x4,%rsi
	cmp    %rax,%r15
	je     4698 <quotearg_n_options+0x178>
	mov    %r15,%rdi
	callq  55e0 <xrealloc>
	mov    %rax,0x5aca(%rip)        # a060 <slotvec>
	mov    %rax,%r15
	movslq 0x5ab8(%rip),%rdi        # a058 <nslots>
	mov    %r14d,%edx
	xor    %esi,%esi
	sub    %edi,%edx
	shl    $0x4,%rdi
	movslq %edx,%rdx
	add    %r15,%rdi
	shl    $0x4,%rdx
	callq  2450 <memset@plt>
	mov    %r14d,0x5a97(%rip)        # a058 <nslots>
	lea    0x8(%rbp),%rax
	shl    $0x4,%rbx
	sub    $0x8,%rsp
	mov    0x4(%rbp),%r14d
	add    %r15,%rbx
	mov    %rax,0x20(%rsp)
	mov    0x0(%rbp),%r8d
	mov    %r13,%rcx
	mov    (%rbx),%rsi
	mov    0x8(%rbx),%r15
	pushq  0x30(%rbp)
	or     $0x1,%r14d
	pushq  0x28(%rbp)
	mov    %r14d,%r9d
	mov    %r12,%rdx
	push   %rax
	mov    %r15,%rdi
	mov    %rsi,0x30(%rsp)
	callq  32d0 <quotearg_buffer_restyled>
	mov    0x30(%rsp),%rsi
	add    $0x20,%rsp
	cmp    %rax,%rsi
	ja     4678 <quotearg_n_options+0x158>
	lea    0x1(%rax),%rsi
	lea    0x5ac2(%rip),%rax        # a0e0 <slot0>
	mov    %rsi,(%rbx)
	cmp    %rax,%r15
	je     4638 <quotearg_n_options+0x118>
	mov    %r15,%rdi
	mov    %rsi,0x10(%rsp)
	callq  2320 <free@plt>
	mov    0x10(%rsp),%rsi
	mov    %rsi,%rdi
	mov    %rsi,0x10(%rsp)
	callq  55c0 <xmalloc>
	sub    $0x8,%rsp
	mov    0x0(%rbp),%r8d
	mov    %r14d,%r9d
	mov    %rax,0x8(%rbx)
	mov    %r13,%rcx
	mov    %r12,%rdx
	mov    %rax,%rdi
	pushq  0x30(%rbp)
	mov    %rax,%r15
	pushq  0x28(%rbp)
	pushq  0x30(%rsp)
	mov    0x30(%rsp),%rsi
	callq  32d0 <quotearg_buffer_restyled>
	add    $0x20,%rsp
	mov    (%rsp),%rax
	mov    0xc(%rsp),%ecx
	mov    %ecx,(%rax)
	add    $0x28,%rsp
	mov    %r15,%rax
	pop    %rbx
	pop    %rbp
	pop    %r12
	pop    %r13
	pop    %r14
	pop    %r15
	retq   
	nopl   0x0(%rax)
	xor    %edi,%edi
	callq  55e0 <xrealloc>
	movdqa 0x59c9(%rip),%xmm0        # a070 <slotvec0>
	mov    %rax,0x59b2(%rip)        # a060 <slotvec>
	mov    %rax,%r15
	movups %xmm0,(%rax)
	jmpq   4599 <quotearg_n_options+0x79>
	callq  57e0 <xalloc_die>
	xchg   %ax,%ax

00000000000046c0 <clone_quoting_options>:
	endbr64 
	push   %r12
	push   %rbp
	mov    %rdi,%rbp
	push   %rbx
	callq  2340 <__errno_location@plt>
	test   %rbp,%rbp
	mov    $0x38,%esi
	mov    (%rax),%r12d
	mov    %rax,%rbx
	lea    0x5afb(%rip),%rax        # a1e0 <default_quoting_options>
	cmove  %rax,%rbp
	mov    %rbp,%rdi
	callq  5780 <xmemdup>
	mov    %r12d,(%rbx)
	pop    %rbx
	pop    %rbp
	pop    %r12
	retq   
	nopl   0x0(%rax)

0000000000004700 <get_quoting_style>:
	endbr64 
	test   %rdi,%rdi
	lea    0x5ad2(%rip),%rax        # a1e0 <default_quoting_options>
	cmove  %rax,%rdi
	mov    (%rdi),%eax
	retq   
	data16 nopw %cs:0x0(%rax,%rax,1)

0000000000004720 <set_quoting_style>:
	endbr64 
	test   %rdi,%rdi
	lea    0x5ab2(%rip),%rax        # a1e0 <default_quoting_options>
	cmove  %rax,%rdi
	mov    %esi,(%rdi)
	retq   
	data16 nopw %cs:0x0(%rax,%rax,1)

0000000000004740 <set_char_quoting>:
	endbr64 
	test   %rdi,%rdi
	lea    0x5a92(%rip),%rax        # a1e0 <default_quoting_options>
	mov    %esi,%ecx
	cmove  %rax,%rdi
	mov    %esi,%eax
	and    $0x1f,%ecx
	shr    $0x5,%al
	movzbl %al,%eax
	lea    0x8(%rdi,%rax,4),%rsi
	mov    (%rsi),%edi
	mov    %edi,%eax
	shr    %cl,%eax
	xor    %eax,%edx
	and    $0x1,%eax
	and    $0x1,%edx
	shl    %cl,%edx
	xor    %edi,%edx
	mov    %edx,(%rsi)
	retq   
	nopl   0x0(%rax)

0000000000004780 <set_quoting_flags>:
	endbr64 
	test   %rdi,%rdi
	lea    0x5a52(%rip),%rax        # a1e0 <default_quoting_options>
	cmove  %rax,%rdi
	mov    0x4(%rdi),%eax
	mov    %esi,0x4(%rdi)
	retq   
	nopl   0x0(%rax)

00000000000047a0 <set_custom_quoting>:
	endbr64 
	sub    $0x8,%rsp
	lea    0x5a31(%rip),%rax        # a1e0 <default_quoting_options>
	test   %rdi,%rdi
	cmove  %rax,%rdi
	movl   $0xa,(%rdi)
	test   %rsi,%rsi
	je     25ea <set_custom_quoting.cold>
	test   %rdx,%rdx
	je     25ea <set_custom_quoting.cold>
	mov    %rsi,0x28(%rdi)
	mov    %rdx,0x30(%rdi)
	add    $0x8,%rsp
	retq   
	nopl   0x0(%rax,%rax,1)

00000000000047e0 <quotearg_buffer>:
	endbr64 
	push   %r15
	lea    0x59f3(%rip),%rax        # a1e0 <default_quoting_options>
	push   %r14
	mov    %rdx,%r14
	push   %r13
	mov    %rsi,%r13
	push   %r12
	mov    %rdi,%r12
	push   %rbp
	push   %rbx
	mov    %r8,%rbx
	sub    $0x18,%rsp
	test   %r8,%r8
	cmove  %rax,%rbx
	mov    %rcx,0x8(%rsp)
	callq  2340 <__errno_location@plt>
	sub    $0x8,%rsp
	mov    %r14,%rdx
	mov    %r13,%rsi
	mov    (%rax),%r15d
	mov    %rax,%rbp
	lea    0x8(%rbx),%rax
	mov    0x4(%rbx),%r9d
	pushq  0x30(%rbx)
	mov    (%rbx),%r8d
	mov    %r12,%rdi
	pushq  0x28(%rbx)
	push   %rax
	mov    0x28(%rsp),%rcx
	callq  32d0 <quotearg_buffer_restyled>
	mov    %r15d,0x0(%rbp)
	add    $0x38,%rsp
	pop    %rbx
	pop    %rbp
	pop    %r12
	pop    %r13
	pop    %r14
	pop    %r15
	retq   
	nopl   0x0(%rax,%rax,1)

0000000000004860 <quotearg_alloc_mem>:
	endbr64 
	push   %r15
	lea    0x5973(%rip),%rax        # a1e0 <default_quoting_options>
	push   %r14
	mov    %rsi,%r14
	push   %r13
	mov    %rdi,%r13
	push   %r12
	push   %rbp
	mov    %rdx,%rbp
	push   %rbx
	mov    %rcx,%rbx
	sub    $0x28,%rsp
	test   %rcx,%rcx
	cmove  %rax,%rbx
	callq  2340 <__errno_location@plt>
	xor    %r9d,%r9d
	test   %rbp,%rbp
	mov    %r14,%rcx
	mov    %rax,%r12
	mov    (%rax),%eax
	sete   %r9b
	lea    0x8(%rbx),%r10
	sub    $0x8,%rsp
	or     0x4(%rbx),%r9d
	mov    (%rbx),%r8d
	mov    %r13,%rdx
	mov    %eax,0x18(%rsp)
	xor    %esi,%esi
	xor    %edi,%edi
	pushq  0x30(%rbx)
	pushq  0x28(%rbx)
	push   %r10
	mov    %r10,0x38(%rsp)
	mov    %r9d,0x34(%rsp)
	callq  32d0 <quotearg_buffer_restyled>
	add    $0x20,%rsp
	lea    0x1(%rax),%rsi
	mov    %rax,%r15
	mov    %rsi,%rdi
	mov    %rsi,0x8(%rsp)
	callq  55c0 <xmalloc>
	sub    $0x8,%rsp
	pushq  0x30(%rbx)
	mov    (%rbx),%r8d
	pushq  0x28(%rbx)
	mov    %r14,%rcx
	mov    %r13,%rdx
	mov    %rax,%rdi
	mov    0x30(%rsp),%r10
	push   %r10
	mov    0x28(%rsp),%rsi
	mov    0x34(%rsp),%r9d
	mov    %rax,0x28(%rsp)
	callq  32d0 <quotearg_buffer_restyled>
	mov    0x30(%rsp),%eax
	add    $0x20,%rsp
	test   %rbp,%rbp
	mov    0x8(%rsp),%r11
	mov    %eax,(%r12)
	je     4937 <quotearg_alloc_mem+0xd7>
	mov    %r15,0x0(%rbp)
	add    $0x28,%rsp
	mov    %r11,%rax
	pop    %rbx
	pop    %rbp
	pop    %r12
	pop    %r13
	pop    %r14
	pop    %r15
	retq   
	nopl   0x0(%rax)

0000000000004950 <quotearg_alloc>:
	endbr64 
	mov    %rdx,%rcx
	xor    %edx,%edx
	jmpq   4860 <quotearg_alloc_mem>
	xchg   %ax,%ax

0000000000004960 <quotearg_free>:
	endbr64 
	mov    0x56ee(%rip),%eax        # a058 <nslots>
	push   %r12
	mov    0x56ed(%rip),%r12        # a060 <slotvec>
	push   %rbp
	push   %rbx
	cmp    $0x1,%eax
	jle    49a1 <quotearg_free+0x41>
	sub    $0x2,%eax
	lea    0x18(%r12),%rbx
	shl    $0x4,%rax
	lea    0x28(%r12,%rax,1),%rbp
	nopl   0x0(%rax,%rax,1)
	mov    (%rbx),%rdi
	add    $0x10,%rbx
	callq  2320 <free@plt>
	cmp    %rbp,%rbx
	jne    4990 <quotearg_free+0x30>
	mov    0x8(%r12),%rdi
	lea    0x5733(%rip),%rbx        # a0e0 <slot0>
	cmp    %rbx,%rdi
	je     49c9 <quotearg_free+0x69>
	callq  2320 <free@plt>
	mov    %rbx,0x56ba(%rip)        # a078 <slotvec0+0x8>
	movq   $0x100,0x56a7(%rip)        # a070 <slotvec0>
	lea    0x56a0(%rip),%rbx        # a070 <slotvec0>
	cmp    %rbx,%r12
	je     49e4 <quotearg_free+0x84>
	mov    %r12,%rdi
	callq  2320 <free@plt>
	mov    %rbx,0x567c(%rip)        # a060 <slotvec>
	movl   $0x1,0x566a(%rip)        # a058 <nslots>
	pop    %rbx
	pop    %rbp
	pop    %r12
	retq   
	data16 nopw %cs:0x0(%rax,%rax,1)
	xchg   %ax,%ax

0000000000004a00 <quotearg_n>:
	endbr64 
	lea    0x57d5(%rip),%rcx        # a1e0 <default_quoting_options>
	mov    $0xffffffffffffffff,%rdx
	jmpq   4520 <quotearg_n_options>
	nopw   0x0(%rax,%rax,1)

0000000000004a20 <quotearg_n_mem>:
	endbr64 
	lea    0x57b5(%rip),%rcx        # a1e0 <default_quoting_options>
	jmpq   4520 <quotearg_n_options>

0000000000004a30 <quotearg>:
	endbr64 
	mov    %rdi,%rsi
	lea    0x57a2(%rip),%rcx        # a1e0 <default_quoting_options>
	mov    $0xffffffffffffffff,%rdx
	xor    %edi,%edi
	jmpq   4520 <quotearg_n_options>
	nopl   0x0(%rax)

0000000000004a50 <quotearg_mem>:
	endbr64 
	mov    %rsi,%rdx
	lea    0x5782(%rip),%rcx        # a1e0 <default_quoting_options>
	mov    %rdi,%rsi
	xor    %edi,%edi
	jmpq   4520 <quotearg_n_options>
	nopl   0x0(%rax,%rax,1)

0000000000004a70 <quotearg_n_style>:
	endbr64 
	sub    $0x48,%rsp
	mov    %fs:0x28,%rax
	mov    %rax,0x38(%rsp)
	xor    %eax,%eax
	cmp    $0xa,%esi
	je     25ef <quotearg_n_style.cold>
	mov    %rdx,%r8
	mov    %esi,(%rsp)
	mov    %rsp,%rcx
	mov    $0xffffffffffffffff,%rdx
	mov    %r8,%rsi
	movl   $0x0,0x4(%rsp)
	movq   $0x0,0x8(%rsp)
	movq   $0x0,0x10(%rsp)
	movq   $0x0,0x18(%rsp)
	movq   $0x0,0x20(%rsp)
	movq   $0x0,0x28(%rsp)
	movq   $0x0,0x30(%rsp)
	callq  4520 <quotearg_n_options>
	mov    0x38(%rsp),%rcx
	xor    %fs:0x28,%rcx
	jne    4afc <quotearg_n_style+0x8c>
	add    $0x48,%rsp
	retq   
	callq  23e0 <__stack_chk_fail@plt>
	data16 nopw %cs:0x0(%rax,%rax,1)
	nopl   0x0(%rax)

0000000000004b10 <quotearg_n_style_mem>:
	endbr64 
	sub    $0x48,%rsp
	mov    %fs:0x28,%rax
	mov    %rax,0x38(%rsp)
	xor    %eax,%eax
	cmp    $0xa,%esi
	je     25f4 <quotearg_n_style_mem.cold>
	mov    %rdx,%r8
	mov    %esi,(%rsp)
	mov    %rcx,%rdx
	mov    %rsp,%rcx
	mov    %r8,%rsi
	movl   $0x0,0x4(%rsp)
	movq   $0x0,0x8(%rsp)
	movq   $0x0,0x10(%rsp)
	movq   $0x0,0x18(%rsp)
	movq   $0x0,0x20(%rsp)
	movq   $0x0,0x28(%rsp)
	movq   $0x0,0x30(%rsp)
	callq  4520 <quotearg_n_options>
	mov    0x38(%rsp),%rdx
	xor    %fs:0x28,%rdx
	jne    4b98 <quotearg_n_style_mem+0x88>
	add    $0x48,%rsp
	retq   
	callq  23e0 <__stack_chk_fail@plt>
	nopl   (%rax)

0000000000004ba0 <quotearg_style>:
	endbr64 
	mov    %rsi,%rdx
	mov    %edi,%esi
	xor    %edi,%edi
	jmpq   4a70 <quotearg_n_style>

0000000000004bb0 <quotearg_style_mem>:
	endbr64 
	mov    %rdx,%rcx
	mov    %rsi,%rdx
	mov    %edi,%esi
	xor    %edi,%edi
	jmpq   4b10 <quotearg_n_style_mem>
	data16 nopw %cs:0x0(%rax,%rax,1)
	xchg   %ax,%ax

0000000000004bd0 <quotearg_char_mem>:
	endbr64 
	sub    $0x48,%rsp
	movdqa 0x5600(%rip),%xmm0        # a1e0 <default_quoting_options>
	movdqa 0x5608(%rip),%xmm1        # a1f0 <default_quoting_options+0x10>
	mov    %edx,%ecx
	mov    %fs:0x28,%rax
	mov    %rax,0x38(%rsp)
	xor    %eax,%eax
	mov    0x560f(%rip),%rax        # a210 <default_quoting_options+0x30>
	mov    %rsi,%r9
	and    $0x1f,%ecx
	movdqa 0x55f1(%rip),%xmm2        # a200 <default_quoting_options+0x20>
	movaps %xmm0,(%rsp)
	mov    %rsp,%r10
	mov    %rax,0x30(%rsp)
	mov    %edx,%eax
	shr    $0x5,%al
	movaps %xmm1,0x10(%rsp)
	movzbl %al,%eax
	movaps %xmm2,0x20(%rsp)
	lea    0x8(%rsp,%rax,4),%rdx
	mov    (%rdx),%esi
	mov    %esi,%eax
	shr    %cl,%eax
	not    %eax
	and    $0x1,%eax
	shl    %cl,%eax
	mov    %r10,%rcx
	xor    %esi,%eax
	mov    %rdi,%rsi
	xor    %edi,%edi
	mov    %eax,(%rdx)
	mov    %r9,%rdx
	callq  4520 <quotearg_n_options>
	mov    0x38(%rsp),%rdi
	xor    %fs:0x28,%rdi
	jne    4c68 <quotearg_char_mem+0x98>
	add    $0x48,%rsp
	retq   
	callq  23e0 <__stack_chk_fail@plt>
	nopl   (%rax)

0000000000004c70 <quotearg_char>:
	endbr64 
	movsbl %sil,%edx
	mov    $0xffffffffffffffff,%rsi
	jmpq   4bd0 <quotearg_char_mem>
	data16 nopw %cs:0x0(%rax,%rax,1)
	nop

0000000000004c90 <quotearg_colon>:
	endbr64 
	mov    $0x3a,%edx
	mov    $0xffffffffffffffff,%rsi
	jmpq   4bd0 <quotearg_char_mem>
	data16 nopw %cs:0x0(%rax,%rax,1)

0000000000004cb0 <quotearg_colon_mem>:
	endbr64 
	mov    $0x3a,%edx
	jmpq   4bd0 <quotearg_char_mem>
	xchg   %ax,%ax

0000000000004cc0 <quotearg_n_style_colon>:
	endbr64 
	sub    $0x48,%rsp
	mov    %fs:0x28,%rax
	mov    %rax,0x38(%rsp)
	xor    %eax,%eax
	cmp    $0xa,%esi
	je     25f9 <quotearg_n_style_colon.cold>
	mov    %rdx,%r8
	mov    %esi,(%rsp)
	mov    %rsp,%rcx
	mov    $0xffffffffffffffff,%rdx
	movabs $0x400000000000000,%rax
	mov    %r8,%rsi
	movl   $0x0,0x4(%rsp)
	mov    %rax,0x8(%rsp)
	movq   $0x0,0x10(%rsp)
	movq   $0x0,0x18(%rsp)
	movq   $0x0,0x20(%rsp)
	movq   $0x0,0x28(%rsp)
	movq   $0x0,0x30(%rsp)
	callq  4520 <quotearg_n_options>
	mov    0x38(%rsp),%rcx
	xor    %fs:0x28,%rcx
	jne    4d52 <quotearg_n_style_colon+0x92>
	add    $0x48,%rsp
	retq   
	callq  23e0 <__stack_chk_fail@plt>
	nopw   0x0(%rax,%rax,1)

0000000000004d60 <quotearg_n_custom_mem>:
	endbr64 
	sub    $0x48,%rsp
	movdqa 0x5470(%rip),%xmm0        # a1e0 <default_quoting_options>
	movdqa 0x5478(%rip),%xmm1        # a1f0 <default_quoting_options+0x10>
	mov    %fs:0x28,%rax
	mov    %rax,0x38(%rsp)
	xor    %eax,%eax
	movdqa 0x5470(%rip),%xmm2        # a200 <default_quoting_options+0x20>
	mov    0x5479(%rip),%rax        # a210 <default_quoting_options+0x30>
	movaps %xmm0,(%rsp)
	mov    %rax,0x30(%rsp)
	movl   $0xa,(%rsp)
	movaps %xmm1,0x10(%rsp)
	movaps %xmm2,0x20(%rsp)
	test   %rsi,%rsi
	je     25fe <quotearg_n_custom_mem.cold>
	test   %rdx,%rdx
	je     25fe <quotearg_n_custom_mem.cold>
	mov    %rcx,%r9
	mov    %rsi,0x28(%rsp)
	mov    %rsp,%rcx
	mov    %rdx,0x30(%rsp)
	mov    %r9,%rsi
	mov    %r8,%rdx
	callq  4520 <quotearg_n_options>
	mov    0x38(%rsp),%rcx
	xor    %fs:0x28,%rcx
	jne    4df3 <quotearg_n_custom_mem+0x93>
	add    $0x48,%rsp
	retq   
	callq  23e0 <__stack_chk_fail@plt>
	nopl   0x0(%rax,%rax,1)

0000000000004e00 <quotearg_n_custom>:
	endbr64 
	mov    $0xffffffffffffffff,%r8
	jmpq   4d60 <quotearg_n_custom_mem>

0000000000004e10 <quotearg_custom>:
	endbr64 
	mov    %rdx,%rcx
	mov    $0xffffffffffffffff,%r8
	mov    %rsi,%rdx
	mov    %rdi,%rsi
	xor    %edi,%edi
	jmpq   4d60 <quotearg_n_custom_mem>
	nopl   0x0(%rax,%rax,1)

0000000000004e30 <quotearg_custom_mem>:
	endbr64 
	mov    %rcx,%r8
	mov    %rdx,%rcx
	mov    %rsi,%rdx
	mov    %rdi,%rsi
	xor    %edi,%edi
	jmpq   4d60 <quotearg_n_custom_mem>
	nopw   0x0(%rax,%rax,1)

0000000000004e50 <quote_n_mem>:
	endbr64 
	lea    0x51c5(%rip),%rcx        # a020 <quote_quoting_options>
	jmpq   4520 <quotearg_n_options>

0000000000004e60 <quote_mem>:
	endbr64 
	mov    %rsi,%rdx
	lea    0x51b2(%rip),%rcx        # a020 <quote_quoting_options>
	mov    %rdi,%rsi
	xor    %edi,%edi
	jmpq   4520 <quotearg_n_options>
	nopl   0x0(%rax,%rax,1)

0000000000004e80 <quote_n>:
	endbr64 
	lea    0x5195(%rip),%rcx        # a020 <quote_quoting_options>
	mov    $0xffffffffffffffff,%rdx
	jmpq   4520 <quotearg_n_options>
	nopw   0x0(%rax,%rax,1)

0000000000004ea0 <quote>:
	endbr64 
	mov    %rdi,%rsi
	lea    0x5172(%rip),%rcx        # a020 <quote_quoting_options>
	mov    $0xffffffffffffffff,%rdx
	xor    %edi,%edi
	jmpq   4520 <quotearg_n_options>
	nopl   0x0(%rax)

0000000000004ec0 <version_etc_arn>:
	endbr64 
	push   %r15
	push   %r14
	push   %r13
	push   %r12
	mov    %r9,%r12
	push   %rbp
	mov    %rdi,%rbp
	push   %rbx
	mov    %r8,%rbx
	sub    $0x38,%rsp
	test   %rsi,%rsi
	je     5030 <version_etc_arn+0x170>
	mov    %rcx,%r9
	mov    %rdx,%r8
	mov    %rsi,%rcx
	xor    %eax,%eax
	lea    0x2032(%rip),%rdx        # 6f28 <quoting_style_vals+0x28>
	mov    $0x1,%esi
	callq  25a0 <__fprintf_chk@plt>
	xor    %edi,%edi
	mov    $0x5,%edx
	lea    0x202d(%rip),%rsi        # 6f3b <quoting_style_vals+0x3b>
	callq  23b0 <dcgettext@plt>
	mov    $0x7e4,%r8d
	mov    $0x1,%esi
	mov    %rbp,%rdi
	mov    %rax,%rcx
	lea    0x2375(%rip),%rdx        # 72a0 <version_etc_copyright>
	xor    %eax,%eax
	callq  25a0 <__fprintf_chk@plt>
	mov    %rbp,%rsi
	mov    $0xa,%edi
	callq  24a0 <fputc_unlocked@plt>
	xor    %edi,%edi
	mov    $0x5,%edx
	lea    0x20a3(%rip),%rsi        # 6ff0 <quoting_style_vals+0xf0>
	callq  23b0 <dcgettext@plt>
	mov    $0x1,%esi
	mov    %rbp,%rdi
	lea    0x213f(%rip),%rcx        # 70a0 <quoting_style_vals+0x1a0>
	mov    %rax,%rdx
	xor    %eax,%eax
	callq  25a0 <__fprintf_chk@plt>
	mov    %rbp,%rsi
	mov    $0xa,%edi
	callq  24a0 <fputc_unlocked@plt>
	cmp    $0x9,%r12
	ja     52d4 <version_etc_arn+0x414>
	lea    0x22d7(%rip),%rdx        # 7260 <quoting_style_vals+0x360>
	movslq (%rdx,%r12,4),%rax
	add    %rdx,%rax
	notrack jmpq *%rax
	nopl   0x0(%rax,%rax,1)
	mov    0x38(%rbx),%r10
	mov    0x30(%rbx),%r9
	mov    $0x5,%edx
	xor    %edi,%edi
	mov    0x28(%rbx),%r8
	mov    0x20(%rbx),%rcx
	lea    0x21b2(%rip),%rsi        # 7168 <quoting_style_vals+0x268>
	mov    0x18(%rbx),%r15
	mov    0x10(%rbx),%r14
	mov    %r10,0x20(%rsp)
	mov    0x8(%rbx),%r13
	mov    (%rbx),%r12
	mov    %r9,0x18(%rsp)
	mov    %r8,0x10(%rsp)
	mov    %rcx,0x8(%rsp)
	callq  23b0 <dcgettext@plt>
	sub    $0x8,%rsp
	mov    %rax,%rdx
	mov    0x28(%rsp),%r10
	mov    $0x1,%esi
	mov    %rbp,%rdi
	xor    %eax,%eax
	push   %r10
	mov    0x28(%rsp),%r9
	push   %r9
	mov    0x28(%rsp),%r8
	mov    %r14,%r9
	push   %r8
	mov    0x28(%rsp),%rcx
	mov    %r13,%r8
	push   %rcx
	mov    %r12,%rcx
	push   %r15
	callq  25a0 <__fprintf_chk@plt>
	add    $0x30,%rsp
	add    $0x38,%rsp
	pop    %rbx
	pop    %rbp
	pop    %r12
	pop    %r13
	pop    %r14
	pop    %r15
	retq   
	nopl   (%rax)
	mov    %rcx,%r8
	mov    $0x1,%esi
	mov    %rdx,%rcx
	xor    %eax,%eax
	lea    0x1ef0(%rip),%rdx        # 6f34 <quoting_style_vals+0x34>
	callq  25a0 <__fprintf_chk@plt>
	jmpq   4f00 <version_etc_arn+0x40>
	xchg   %ax,%ax
	mov    0x40(%rbx),%r11
	mov    0x38(%rbx),%r10
	mov    $0x5,%edx
	lea    0x2134(%rip),%rsi        # 7198 <quoting_style_vals+0x298>
	mov    0x30(%rbx),%r9
	mov    0x28(%rbx),%r8
	mov    0x20(%rbx),%rcx
	mov    0x18(%rbx),%r15
	mov    %r11,0x28(%rsp)
	mov    0x10(%rbx),%r14
	mov    0x8(%rbx),%r13
	mov    %r10,0x20(%rsp)
	mov    %r9,0x18(%rsp)
	mov    (%rbx),%r12
	mov    %r8,0x10(%rsp)
	mov    %rcx,0x8(%rsp)
	xor    %edi,%edi
	callq  23b0 <dcgettext@plt>
	mov    0x28(%rsp),%r11
	mov    %rax,%rdx
	push   %r11
	jmpq   4fe5 <version_etc_arn+0x125>
	xchg   %ax,%ax
	mov    (%rbx),%r12
	mov    $0x5,%edx
	lea    0x1e80(%rip),%rsi        # 6f3f <quoting_style_vals+0x3f>
	xor    %edi,%edi
	callq  23b0 <dcgettext@plt>
	add    $0x38,%rsp
	mov    %rbp,%rdi
	mov    $0x1,%esi
	pop    %rbx
	mov    %rax,%rdx
	pop    %rbp
	mov    %r12,%rcx
	xor    %eax,%eax
	pop    %r12
	pop    %r13
	pop    %r14
	pop    %r15
	jmpq   25a0 <__fprintf_chk@plt>
	nopl   0x0(%rax)
	mov    0x8(%rbx),%r13
	mov    (%rbx),%r12
	mov    $0x5,%edx
	xor    %edi,%edi
	lea    0x1e4a(%rip),%rsi        # 6f4f <quoting_style_vals+0x4f>
	callq  23b0 <dcgettext@plt>
	add    $0x38,%rsp
	mov    %r13,%r8
	mov    %r12,%rcx
	pop    %rbx
	mov    %rax,%rdx
	mov    %rbp,%rdi
	mov    $0x1,%esi
	pop    %rbp
	xor    %eax,%eax
	pop    %r12
	pop    %r13
	pop    %r14
	pop    %r15
	jmpq   25a0 <__fprintf_chk@plt>
	mov    0x10(%rbx),%r14
	mov    0x8(%rbx),%r13
	mov    $0x5,%edx
	xor    %edi,%edi
	mov    (%rbx),%r12
	lea    0x1e1d(%rip),%rsi        # 6f66 <quoting_style_vals+0x66>
	callq  23b0 <dcgettext@plt>
	add    $0x38,%rsp
	mov    %r14,%r9
	mov    %r13,%r8
	pop    %rbx
	mov    %rax,%rdx
	mov    %r12,%rcx
	mov    %rbp,%rdi
	mov    $0x1,%esi
	pop    %rbp
	xor    %eax,%eax
	pop    %r12
	pop    %r13
	pop    %r14
	pop    %r15
	jmpq   25a0 <__fprintf_chk@plt>
	nopw   0x0(%rax,%rax,1)
	mov    $0x5,%edx
	xor    %edi,%edi
	mov    0x18(%rbx),%r15
	mov    0x10(%rbx),%r14
	lea    0x1f32(%rip),%rsi        # 70c8 <quoting_style_vals+0x1c8>
	mov    0x8(%rbx),%r13
	mov    (%rbx),%r12
	callq  23b0 <dcgettext@plt>
	sub    $0x8,%rsp
	mov    %rax,%rdx
	push   %r15
	mov    %r14,%r9
	mov    %r13,%r8
	mov    %r12,%rcx
	mov    %rbp,%rdi
	mov    $0x1,%esi
	xor    %eax,%eax
	callq  25a0 <__fprintf_chk@plt>
	pop    %rax
	pop    %rdx
	add    $0x38,%rsp
	pop    %rbx
	pop    %rbp
	pop    %r12
	pop    %r13
	pop    %r14
	pop    %r15
	retq   
	nopl   0x0(%rax)
	mov    0x20(%rbx),%rcx
	mov    $0x5,%edx
	xor    %edi,%edi
	mov    0x18(%rbx),%r15
	lea    0x1efa(%rip),%rsi        # 70e8 <quoting_style_vals+0x1e8>
	mov    0x10(%rbx),%r14
	mov    0x8(%rbx),%r13
	mov    %rcx,0x8(%rsp)
	mov    (%rbx),%r12
	callq  23b0 <dcgettext@plt>
	mov    0x8(%rsp),%rcx
	mov    %rax,%rdx
	push   %rcx
	jmp    51a9 <version_etc_arn+0x2e9>
	xchg   %ax,%ax
	mov    0x28(%rbx),%r8
	mov    0x20(%rbx),%rcx
	mov    $0x5,%edx
	xor    %edi,%edi
	lea    0x1eea(%rip),%rsi        # 7110 <quoting_style_vals+0x210>
	mov    0x18(%rbx),%r15
	mov    0x10(%rbx),%r14
	mov    0x8(%rbx),%r13
	mov    (%rbx),%r12
	mov    %r8,0x10(%rsp)
	mov    %rcx,0x8(%rsp)
	callq  23b0 <dcgettext@plt>
	sub    $0x8,%rsp
	mov    %rax,%rdx
	mov    0x18(%rsp),%r8
	mov    %r14,%r9
	mov    %rbp,%rdi
	mov    $0x1,%esi
	xor    %eax,%eax
	push   %r8
	mov    0x18(%rsp),%rcx
	mov    %r13,%r8
	push   %rcx
	mov    %r12,%rcx
	push   %r15
	callq  25a0 <__fprintf_chk@plt>
	add    $0x20,%rsp
	add    $0x38,%rsp
	pop    %rbx
	pop    %rbp
	pop    %r12
	pop    %r13
	pop    %r14
	pop    %r15
	retq   
	nopl   (%rax)
	mov    0x30(%rbx),%r9
	mov    0x28(%rbx),%r8
	mov    $0x5,%edx
	xor    %edi,%edi
	mov    0x20(%rbx),%rcx
	lea    0x1e96(%rip),%rsi        # 7138 <quoting_style_vals+0x238>
	mov    0x18(%rbx),%r15
	mov    0x10(%rbx),%r14
	mov    0x8(%rbx),%r13
	mov    %r9,0x18(%rsp)
	mov    %r8,0x10(%rsp)
	mov    (%rbx),%r12
	mov    %rcx,0x8(%rsp)
	callq  23b0 <dcgettext@plt>
	mov    0x18(%rsp),%r9
	mov    %rax,%rdx
	push   %r9
	jmpq   524b <version_etc_arn+0x38b>
	mov    0x40(%rbx),%r11
	mov    0x38(%rbx),%r10
	mov    $0x5,%edx
	lea    0x1ee8(%rip),%rsi        # 71d0 <quoting_style_vals+0x2d0>
	mov    0x30(%rbx),%r9
	mov    0x28(%rbx),%r8
	mov    0x20(%rbx),%rcx
	mov    0x18(%rbx),%r15
	mov    %r11,0x28(%rsp)
	mov    0x10(%rbx),%r14
	mov    0x8(%rbx),%r13
	mov    %r10,0x20(%rsp)
	mov    %r9,0x18(%rsp)
	mov    (%rbx),%r12
	mov    %r8,0x10(%rsp)
	mov    %rcx,0x8(%rsp)
	jmpq   5098 <version_etc_arn+0x1d8>
	data16 nopw %cs:0x0(%rax,%rax,1)
	nopl   0x0(%rax)

0000000000005330 <version_etc_ar>:
	endbr64 
	xor    %r9d,%r9d
	cmpq   $0x0,(%r8)
	je     534b <version_etc_ar+0x1b>
	nopl   (%rax)
	add    $0x1,%r9
	cmpq   $0x0,(%r8,%r9,8)
	jne    5340 <version_etc_ar+0x10>
	jmpq   4ec0 <version_etc_arn>

0000000000005350 <version_etc_va>:
	endbr64 
	sub    $0x68,%rsp
	mov    %r8,%r11
	xor    %r9d,%r9d
	mov    %fs:0x28,%rax
	mov    %rax,0x58(%rsp)
	xor    %eax,%eax
	mov    %rsp,%r8
	jmp    539b <version_etc_va+0x4b>
	nopl   0x0(%rax,%rax,1)
	mov    %eax,%r10d
	add    $0x8,%eax
	add    0x10(%r11),%r10
	mov    %eax,(%r11)
	mov    (%r10),%rax
	mov    %rax,(%r8,%r9,8)
	test   %rax,%rax
	je     53c0 <version_etc_va+0x70>
	add    $0x1,%r9
	cmp    $0xa,%r9
	je     53c0 <version_etc_va+0x70>
	mov    (%r11),%eax
	cmp    $0x2f,%eax
	jbe    5378 <version_etc_va+0x28>
	mov    0x8(%r11),%r10
	lea    0x8(%r10),%rax
	mov    %rax,0x8(%r11)
	mov    (%r10),%rax
	mov    %rax,(%r8,%r9,8)
	test   %rax,%rax
	jne    5391 <version_etc_va+0x41>
	nopl   0x0(%rax,%rax,1)
	callq  4ec0 <version_etc_arn>
	mov    0x58(%rsp),%rax
	xor    %fs:0x28,%rax
	jne    53da <version_etc_va+0x8a>
	add    $0x68,%rsp
	retq   
	callq  23e0 <__stack_chk_fail@plt>
	nop

00000000000053e0 <version_etc>:
	endbr64 
	push   %rbx
	mov    $0x20,%r10d
	sub    $0xb0,%rsp
	mov    %r8,0xa0(%rsp)
	lea    0xc0(%rsp),%r11
	lea    0x20(%rsp),%r8
	mov    %r9,0xa8(%rsp)
	xor    %r9d,%r9d
	mov    %fs:0x28,%rax
	mov    %rax,0x78(%rsp)
	xor    %eax,%eax
	lea    0xc0(%rsp),%rax
	movl   $0x20,0x8(%rsp)
	mov    %rax,0x10(%rsp)
	lea    0x80(%rsp),%rax
	mov    %rax,0x18(%rsp)
	mov    %rax,%rbx
	jmp    5470 <version_etc+0x90>
	nopl   0x0(%rax)
	mov    %r10d,%eax
	add    $0x8,%r10d
	add    %rbx,%rax
	mov    (%rax),%rax
	mov    %rax,(%r8,%r9,8)
	test   %rax,%rax
	je     5490 <version_etc+0xb0>
	add    $0x1,%r9
	cmp    $0xa,%r9
	je     5490 <version_etc+0xb0>
	cmp    $0x2f,%r10d
	jbe    5450 <version_etc+0x70>
	mov    %r11,%rax
	add    $0x8,%r11
	mov    (%rax),%rax
	mov    %rax,(%r8,%r9,8)
	test   %rax,%rax
	jne    5466 <version_etc+0x86>
	nopl   0x0(%rax)
	callq  4ec0 <version_etc_arn>
	mov    0x78(%rsp),%rax
	xor    %fs:0x28,%rax
	jne    54ae <version_etc+0xce>
	add    $0xb0,%rsp
	pop    %rbx
	retq   
	callq  23e0 <__stack_chk_fail@plt>
	data16 nopw %cs:0x0(%rax,%rax,1)
	xchg   %ax,%ax

00000000000054c0 <emit_bug_reporting_address>:
	endbr64 
	sub    $0x8,%rsp
	mov    0x4bb9(%rip),%rsi        # a088 <stdout@@GLIBC_2.2.5>
	mov    $0xa,%edi
	callq  24a0 <fputc_unlocked@plt>
	mov    $0x5,%edx
	lea    0x1a9d(%rip),%rsi        # 6f82 <quoting_style_vals+0x82>
	xor    %edi,%edi
	callq  23b0 <dcgettext@plt>
	lea    0x1aa3(%rip),%rdx        # 6f96 <quoting_style_vals+0x96>
	mov    $0x1,%edi
	mov    %rax,%rsi
	xor    %eax,%eax
	callq  2540 <__printf_chk@plt>
	mov    $0x5,%edx
	lea    0x1a9e(%rip),%rsi        # 6fac <quoting_style_vals+0xac>
	xor    %edi,%edi
	callq  23b0 <dcgettext@plt>
	lea    0x1cf4(%rip),%rcx        # 7210 <quoting_style_vals+0x310>
	mov    $0x1,%edi
	lea    0x1a98(%rip),%rdx        # 6fc0 <quoting_style_vals+0xc0>
	mov    %rax,%rsi
	xor    %eax,%eax
	callq  2540 <__printf_chk@plt>
	mov    $0x5,%edx
	lea    0x1cfa(%rip),%rsi        # 7238 <quoting_style_vals+0x338>
	xor    %edi,%edi
	callq  23b0 <dcgettext@plt>
	lea    0x1a82(%rip),%rdx        # 6fce <quoting_style_vals+0xce>
	mov    $0x1,%edi
	add    $0x8,%rsp
	mov    %rax,%rsi
	xor    %eax,%eax
	jmpq   2540 <__printf_chk@plt>
	nop

0000000000005560 <xnmalloc>:
	endbr64 
	mov    %rdi,%rax
	sub    $0x8,%rsp
	mul    %rsi
	mov    %rax,%rdi
	seto   %al
	test   %rdi,%rdi
	js     5590 <xnmalloc+0x30>
	movzbl %al,%eax
	test   %rax,%rax
	jne    5590 <xnmalloc+0x30>
	callq  24e0 <malloc@plt>
	test   %rax,%rax
	je     5590 <xnmalloc+0x30>
	add    $0x8,%rsp
	retq   
	callq  57e0 <xalloc_die>
	data16 nopw %cs:0x0(%rax,%rax,1)

00000000000055a0 <xcharalloc>:
	endbr64 
	sub    $0x8,%rsp
	callq  24e0 <malloc@plt>
	test   %rax,%rax
	je     55b7 <xcharalloc+0x17>
	add    $0x8,%rsp
	retq   
	callq  57e0 <xalloc_die>
	nopl   0x0(%rax)

00000000000055c0 <xmalloc>:
	endbr64 
	sub    $0x8,%rsp
	callq  24e0 <malloc@plt>
	test   %rax,%rax
	je     55d7 <xmalloc+0x17>
	add    $0x8,%rsp
	retq   
	callq  57e0 <xalloc_die>
	nopl   0x0(%rax)

00000000000055e0 <xrealloc>:
	endbr64 
	push   %rbp
	mov    %rsi,%rbp
	push   %rbx
	mov    %rdi,%rbx
	sub    $0x8,%rsp
	callq  2520 <realloc@plt>
	test   %rax,%rax
	je     5601 <xrealloc+0x21>
	add    $0x8,%rsp
	pop    %rbx
	pop    %rbp
	retq   
	test   %rbp,%rbp
	jne    560b <xrealloc+0x2b>
	test   %rbx,%rbx
	jne    55fa <xrealloc+0x1a>
	callq  57e0 <xalloc_die>

0000000000005610 <xnrealloc>:
	endbr64 
	mov    %rsi,%rax
	mul    %rdx
	mov    %rax,%rsi
	seto   %al
	test   %rsi,%rsi
	js     562f <xnrealloc+0x1f>
	movzbl %al,%eax
	test   %rax,%rax
	jne    562f <xnrealloc+0x1f>
	jmp    55e0 <xrealloc>
	push   %rax
	callq  57e0 <xalloc_die>
	data16 nopw %cs:0x0(%rax,%rax,1)

0000000000005640 <x2nrealloc>:
	endbr64 
	mov    %rsi,%r9
	mov    %rdx,%r8
	mov    (%rsi),%rsi
	test   %rdi,%rdi
	je     5680 <x2nrealloc+0x40>
	movabs $0x5555555555555554,%rax
	xor    %edx,%edx
	div    %r8
	cmp    %rsi,%rax
	jbe    569b <x2nrealloc+0x5b>
	mov    %rsi,%rax
	shr    %rax
	lea    0x1(%rax,%rsi,1),%rsi
	mov    %rsi,(%r9)
	imul   %r8,%rsi
	jmpq   55e0 <xrealloc>
	nopl   (%rax)
	test   %rsi,%rsi
	je     56a8 <x2nrealloc+0x68>
	mov    %rsi,%rax
	mul    %r8
	seto   %dl
	movzbl %dl,%edx
	test   %rax,%rax
	js     569b <x2nrealloc+0x5b>
	test   %rdx,%rdx
	je     5671 <x2nrealloc+0x31>
	push   %rax
	callq  57e0 <xalloc_die>
	nopl   0x0(%rax)
	xor    %edx,%edx
	mov    $0x80,%eax
	xor    %ecx,%ecx
	div    %r8
	cmp    $0x80,%r8
	seta   %cl
	lea    (%rcx,%rax,1),%rsi
	jmp    5685 <x2nrealloc+0x45>
	data16 nopw %cs:0x0(%rax,%rax,1)
	nop

00000000000056d0 <x2realloc>:
	endbr64 
	mov    %rsi,%rax
	mov    (%rsi),%rsi
	test   %rdi,%rdi
	je     5708 <x2realloc+0x38>
	movabs $0x5555555555555553,%rdx
	cmp    %rdx,%rsi
	ja     5722 <x2realloc+0x52>
	mov    %rsi,%rdx
	shr    %rdx
	lea    0x1(%rdx,%rsi,1),%rsi
	mov    %rsi,(%rax)
	jmpq   55e0 <xrealloc>
	nopl   0x0(%rax)
	test   %rsi,%rsi
	jne    5720 <x2realloc+0x50>
	mov    $0x80,%esi
	mov    %rsi,(%rax)
	jmpq   55e0 <xrealloc>
	nopw   0x0(%rax,%rax,1)
	jns    56f9 <x2realloc+0x29>
	push   %rax
	callq  57e0 <xalloc_die>
	nopl   0x0(%rax,%rax,1)

0000000000005730 <xcalloc>:
	endbr64 
	mov    %rdi,%rax
	sub    $0x8,%rsp
	mul    %rsi
	seto   %dl
	test   %rax,%rax
	js     575d <xcalloc+0x2d>
	movzbl %dl,%edx
	test   %rdx,%rdx
	jne    575d <xcalloc+0x2d>
	callq  2480 <calloc@plt>
	test   %rax,%rax
	je     575d <xcalloc+0x2d>
	add    $0x8,%rsp
	retq   
	callq  57e0 <xalloc_die>
	data16 nopw %cs:0x0(%rax,%rax,1)
	nopl   (%rax)

0000000000005770 <xzalloc>:
	endbr64 
	mov    $0x1,%esi
	jmp    5730 <xcalloc>
	nopl   0x0(%rax,%rax,1)

0000000000005780 <xmemdup>:
	endbr64 
	push   %r12
	mov    %rsi,%r12
	push   %rbp
	mov    %rdi,%rbp
	mov    %rsi,%rdi
	sub    $0x8,%rsp
	callq  24e0 <malloc@plt>
	test   %rax,%rax
	je     57b3 <xmemdup+0x33>
	add    $0x8,%rsp
	mov    %r12,%rdx
	mov    %rbp,%rsi
	mov    %rax,%rdi
	pop    %rbp
	pop    %r12
	jmpq   24b0 <memcpy@plt>
	callq  57e0 <xalloc_die>
	nopl   0x0(%rax,%rax,1)

00000000000057c0 <xstrdup>:
	endbr64 
	push   %rbp
	mov    %rdi,%rbp
	callq  23d0 <strlen@plt>
	mov    %rbp,%rdi
	pop    %rbp
	lea    0x1(%rax),%rsi
	jmp    5780 <xmemdup>
	nopw   0x0(%rax,%rax,1)

00000000000057e0 <xalloc_die>:
	endbr64 
	push   %rax
	pop    %rax
	mov    $0x5,%edx
	lea    0x1add(%rip),%rsi        # 72cf <version_etc_copyright+0x2f>
	xor    %edi,%edi
	sub    $0x8,%rsp
	callq  23b0 <dcgettext@plt>
	mov    0x4815(%rip),%edi        # a018 <exit_failure>
	lea    0xfa6(%rip),%rdx        # 67b0 <__PRETTY_FUNCTION__.6196+0x24>
	xor    %esi,%esi
	mov    %rax,%rcx
	xor    %eax,%eax
	callq  2550 <error@plt>
	callq  2330 <abort@plt>
	nopl   0x0(%rax,%rax,1)

0000000000005820 <rpl_mbrtowc>:
	endbr64 
	push   %r13
	mov    %rsi,%r13
	push   %r12
	push   %rbp
	mov    %rdx,%rbp
	push   %rbx
	mov    %rdi,%rbx
	sub    $0x18,%rsp
	mov    %fs:0x28,%rax
	mov    %rax,0x8(%rsp)
	xor    %eax,%eax
	test   %rdi,%rdi
	lea    0x4(%rsp),%rax
	cmove  %rax,%rbx
	mov    %rbx,%rdi
	callq  23f0 <mbrtowc@plt>
	mov    %rax,%r12
	cmp    $0xfffffffffffffffd,%rax
	jbe    5869 <rpl_mbrtowc+0x49>
	test   %rbp,%rbp
	jne    5890 <rpl_mbrtowc+0x70>
	mov    0x8(%rsp),%rax
	xor    %fs:0x28,%rax
	jne    58aa <rpl_mbrtowc+0x8a>
	add    $0x18,%rsp
	mov    %r12,%rax
	pop    %rbx
	pop    %rbp
	pop    %r12
	pop    %r13
	retq   
	nopw   0x0(%rax,%rax,1)
	xor    %edi,%edi
	callq  5920 <hard_locale>
	test   %al,%al
	jne    5869 <rpl_mbrtowc+0x49>
	movzbl 0x0(%r13),%eax
	mov    $0x1,%r12d
	mov    %eax,(%rbx)
	jmp    5869 <rpl_mbrtowc+0x49>
	callq  23e0 <__stack_chk_fail@plt>
	nop

00000000000058b0 <close_stream>:
	endbr64 
	push   %r12
	push   %rbp
	mov    %rdi,%rbp
	push   %rbx
	callq  2370 <__fpending@plt>
	mov    0x0(%rbp),%ebx
	mov    %rbp,%rdi
	mov    %rax,%r12
	and    $0x20,%ebx
	callq  5aa0 <rpl_fclose>
	test   %ebx,%ebx
	jne    58f8 <close_stream+0x48>
	test   %eax,%eax
	je     58ee <close_stream+0x3e>
	test   %r12,%r12
	jne    590e <close_stream+0x5e>
	callq  2340 <__errno_location@plt>
	cmpl   $0x9,(%rax)
	setne  %al
	movzbl %al,%eax
	neg    %eax
	pop    %rbx
	pop    %rbp
	pop    %r12
	retq   
	nopl   0x0(%rax,%rax,1)
	test   %eax,%eax
	jne    590e <close_stream+0x5e>
	callq  2340 <__errno_location@plt>
	movl   $0x0,(%rax)
	mov    $0xffffffff,%eax
	jmp    58ee <close_stream+0x3e>
	mov    $0xffffffff,%eax
	jmp    58ee <close_stream+0x3e>
	nopw   %cs:0x0(%rax,%rax,1)
	nop

0000000000005920 <hard_locale>:
	endbr64 
	sub    $0x118,%rsp
	mov    $0x101,%edx
	mov    %fs:0x28,%rax
	mov    %rax,0x108(%rsp)
	xor    %eax,%eax
	mov    %rsp,%rsi
	callq  59e0 <setlocale_null_r>
	mov    %eax,%r8d
	xor    %eax,%eax
	test   %r8d,%r8d
	jne    596a <hard_locale+0x4a>
	cmpw   $0x43,(%rsp)
	je     596a <hard_locale+0x4a>
	cmpl   $0x49534f50,(%rsp)
	je     5988 <hard_locale+0x68>
	mov    $0x1,%eax
	mov    0x108(%rsp),%rcx
	xor    %fs:0x28,%rcx
	jne    5994 <hard_locale+0x74>
	add    $0x118,%rsp
	retq   
	nopl   (%rax)
	xor    %eax,%eax
	cmpw   $0x58,0x4(%rsp)
	jne    5965 <hard_locale+0x45>
	jmp    596a <hard_locale+0x4a>
	callq  23e0 <__stack_chk_fail@plt>
	nopl   0x0(%rax)

00000000000059a0 <locale_charset>:
	endbr64 
	sub    $0x8,%rsp
	mov    $0xe,%edi
	callq  2500 <nl_langinfo@plt>
	test   %rax,%rax
	je     59d0 <locale_charset+0x30>
	cmpb   $0x0,(%rax)
	lea    0x1927(%rip),%rdx        # 72e8 <version_etc_copyright+0x48>
	cmove  %rdx,%rax
	add    $0x8,%rsp
	retq   
	nopw   0x0(%rax,%rax,1)
	lea    0x1911(%rip),%rax        # 72e8 <version_etc_copyright+0x48>
	add    $0x8,%rsp
	retq   
	nopl   0x0(%rax)

00000000000059e0 <setlocale_null_r>:
	endbr64 
	push   %r13
	push   %r12
	mov    %rsi,%r12
	xor    %esi,%esi
	push   %rbp
	push   %rbx
	mov    %rdx,%rbx
	sub    $0x8,%rsp
	callq  2530 <setlocale@plt>
	test   %rax,%rax
	je     5a78 <setlocale_null_r+0x98>
	mov    %rax,%rdi
	mov    %rax,%rbp
	callq  23d0 <strlen@plt>
	cmp    %rax,%rbx
	ja     5a30 <setlocale_null_r+0x50>
	mov    $0x22,%r13d
	test   %rbx,%rbx
	jne    5a50 <setlocale_null_r+0x70>
	add    $0x8,%rsp
	mov    %r13d,%eax
	pop    %rbx
	pop    %rbp
	pop    %r12
	pop    %r13
	retq   
	nopl   0x0(%rax)
	mov    %rbp,%rsi
	mov    %r12,%rdi
	lea    0x1(%rax),%rdx
	xor    %r13d,%r13d
	callq  24b0 <memcpy@plt>
	add    $0x8,%rsp
	mov    %r13d,%eax
	pop    %rbx
	pop    %rbp
	pop    %r12
	pop    %r13
	retq   
	lea    -0x1(%rbx),%rdx
	mov    %rbp,%rsi
	mov    %r12,%rdi
	callq  24b0 <memcpy@plt>
	movb   $0x0,-0x1(%r12,%rbx,1)
	add    $0x8,%rsp
	mov    %r13d,%eax
	pop    %rbx
	pop    %rbp
	pop    %r12
	pop    %r13
	retq   
	nopl   0x0(%rax,%rax,1)
	mov    $0x16,%r13d
	test   %rbx,%rbx
	je     5a1b <setlocale_null_r+0x3b>
	movb   $0x0,(%r12)
	jmp    5a1b <setlocale_null_r+0x3b>
	nopw   0x0(%rax,%rax,1)

0000000000005a90 <setlocale_null>:
	endbr64 
	xor    %esi,%esi
	jmpq   2530 <setlocale@plt>
	nopl   0x0(%rax,%rax,1)

0000000000005aa0 <rpl_fclose>:
	endbr64 
	push   %r12
	push   %rbp
	mov    %rdi,%rbp
	push   %rbx
	callq  24d0 <fileno@plt>
	mov    %rbp,%rdi
	test   %eax,%eax
	js     5b0f <rpl_fclose+0x6f>
	callq  2510 <__freading@plt>
	test   %eax,%eax
	jne    5af0 <rpl_fclose+0x50>
	mov    %rbp,%rdi
	callq  5b30 <rpl_fflush>
	test   %eax,%eax
	je     5b0c <rpl_fclose+0x6c>
	callq  2340 <__errno_location@plt>
	mov    %rbp,%rdi
	mov    (%rax),%r12d
	mov    %rax,%rbx
	callq  2390 <fclose@plt>
	test   %r12d,%r12d
	jne    5b20 <rpl_fclose+0x80>
	pop    %rbx
	pop    %rbp
	pop    %r12
	retq   
	nopl   0x0(%rax)
	mov    %rbp,%rdi
	callq  24d0 <fileno@plt>
	xor    %esi,%esi
	mov    $0x1,%edx
	mov    %eax,%edi
	callq  2430 <lseek@plt>
	cmp    $0xffffffffffffffff,%rax
	jne    5ac0 <rpl_fclose+0x20>
	mov    %rbp,%rdi
	pop    %rbx
	pop    %rbp
	pop    %r12
	jmpq   2390 <fclose@plt>
	nopl   0x0(%rax,%rax,1)
	mov    %r12d,(%rbx)
	mov    $0xffffffff,%eax
	jmp    5ae4 <rpl_fclose+0x44>
	nopw   0x0(%rax,%rax,1)

0000000000005b30 <rpl_fflush>:
	endbr64 
	push   %rbp
	mov    %rdi,%rbp
	test   %rdi,%rdi
	je     5b4f <rpl_fflush+0x1f>
	callq  2510 <__freading@plt>
	test   %eax,%eax
	je     5b4f <rpl_fflush+0x1f>
	testl  $0x100,0x0(%rbp)
	jne    5b60 <rpl_fflush+0x30>
	mov    %rbp,%rdi
	pop    %rbp
	jmpq   24f0 <fflush@plt>
	nopl   0x0(%rax,%rax,1)
	mov    %rbp,%rdi
	mov    $0x1,%edx
	xor    %esi,%esi
	callq  5b80 <rpl_fseeko>
	mov    %rbp,%rdi
	pop    %rbp
	jmpq   24f0 <fflush@plt>
	nopl   0x0(%rax,%rax,1)

0000000000005b80 <rpl_fseeko>:
	endbr64 
	push   %rbp
	mov    %rdi,%rbp
	sub    $0x10,%rsp
	mov    0x8(%rdi),%rax
	cmp    %rax,0x10(%rdi)
	je     5ba8 <rpl_fseeko+0x28>
	add    $0x10,%rsp
	mov    %rbp,%rdi
	pop    %rbp
	jmpq   2560 <fseeko@plt>
	nopl   0x0(%rax,%rax,1)
	mov    0x20(%rdi),%rax
	cmp    %rax,0x28(%rdi)
	jne    5b96 <rpl_fseeko+0x16>
	cmpq   $0x0,0x48(%rdi)
	jne    5b96 <rpl_fseeko+0x16>
	mov    %edx,0xc(%rsp)
	mov    %rsi,(%rsp)
	callq  24d0 <fileno@plt>
	mov    0xc(%rsp),%edx
	mov    (%rsp),%rsi
	mov    %eax,%edi
	callq  2430 <lseek@plt>
	cmp    $0xffffffffffffffff,%rax
	je     5bee <rpl_fseeko+0x6e>
	andl   $0xffffffef,0x0(%rbp)
	mov    %rax,0x90(%rbp)
	xor    %eax,%eax
	add    $0x10,%rsp
	pop    %rbp
	retq   
	or     $0xffffffff,%eax
	jmp    5be8 <rpl_fseeko+0x68>
	nopw   %cs:0x0(%rax,%rax,1)
	nopl   (%rax)

0000000000005c00 <__libc_csu_init>:
	endbr64 
	push   %r15
	lea    0x3fe3(%rip),%r15        # 9bf0 <__frame_dummy_init_array_entry>
	push   %r14
	mov    %rdx,%r14
	push   %r13
	mov    %rsi,%r13
	push   %r12
	mov    %edi,%r12d
	push   %rbp
	lea    0x3fd4(%rip),%rbp        # 9bf8 <__do_global_dtors_aux_fini_array_entry>
	push   %rbx
	sub    %r15,%rbp
	sub    $0x8,%rsp
	callq  2000 <_init>
	sar    $0x3,%rbp
	je     5c56 <__libc_csu_init+0x56>
	xor    %ebx,%ebx
	nopl   0x0(%rax)
	mov    %r14,%rdx
	mov    %r13,%rsi
	mov    %r12d,%edi
	callq  *(%r15,%rbx,8)
	add    $0x1,%rbx
	cmp    %rbx,%rbp
	jne    5c40 <__libc_csu_init+0x40>
	add    $0x8,%rsp
	pop    %rbx
	pop    %rbp
	pop    %r12
	pop    %r13
	pop    %r14
	pop    %r15
	retq   
	data16 nopw %cs:0x0(%rax,%rax,1)

0000000000005c70 <__libc_csu_fini>:
	endbr64 
	retq   
	nopw   %cs:0x0(%rax,%rax,1)
	nop

0000000000005c80 <atexit>:
	endbr64 
	mov    0x437d(%rip),%rdx        # a008 <__dso_handle>
	xor    %esi,%esi
	jmpq   2570 <__cxa_atexit@plt>

Disassembly of section .fini:

0000000000005c94 <_fini>:
	endbr64 
	sub    $0x8,%rsp
	add    $0x8,%rsp
	retq   
