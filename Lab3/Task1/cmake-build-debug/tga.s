	.file	"tga.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	copy_pixel
	.def	copy_pixel;	.scl	2;	.type	32;	.endef
	.seh_proc	copy_pixel
copy_pixel:
.LFB17:
	.file 1 "C:/Users/johnn/Desktop/Lab3/Task1/tga.c"
	.loc 1 13 59
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 1 17 1
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "rb\0"
	.text
	.globl	tga_read
	.def	tga_read;	.scl	2;	.type	32;	.endef
	.seh_proc	tga_read
tga_read:
.LFB18:
	.loc 1 29 86
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	.loc 1 33 12
	movl	$0, -8(%rbp)
	.loc 1 38 17
	movq	40(%rbp), %rax
	movq	$0, (%rax)
	.loc 1 40 16
	leaq	.LC0(%rip), %rdx
	movq	16(%rbp), %rcx
	call	fopen
	movq	%rax, -16(%rbp)
	.loc 1 41 8
	cmpq	$0, -16(%rbp)
	jne	.L3
	.loc 1 41 21 discriminator 1
	movl	$-98, %eax
	jmp	.L21
.L3:
	.loc 1 59 9
	movq	-16(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$18, %edx
	movq	%rax, %rcx
	call	fread
	.loc 1 59 8
	cmpq	$1, %rax
	je	.L5
	.loc 1 60 16
	movl	$-97, -8(%rbp)
	.loc 1 61 9
	jmp	.L6
.L5:
	.loc 1 64 20
	movzwl	-52(%rbp), %eax
	movzwl	%ax, %eax
	.loc 1 64 14
	movq	24(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 65 21
	movzwl	-50(%rbp), %eax
	movzwl	%ax, %eax
	.loc 1 65 15
	movq	32(%rbp), %rdx
	movl	%eax, (%rdx)
	.loc 1 66 18
	movq	24(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 66 29
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 66 15
	imull	%edx, %eax
	movl	%eax, -20(%rbp)
	.loc 1 69 19
	movzbl	-64(%rbp), %eax
	.loc 1 69 5
	movzbl	%al, %eax
	movq	-16(%rbp), %rcx
	movl	$1, %r8d
	movl	%eax, %edx
	call	fseek
	.loc 1 72 19
	movzwl	-59(%rbp), %eax
	movzwl	%ax, %edx
	.loc 1 72 42
	movzbl	-57(%rbp), %eax
	.loc 1 72 57
	shrb	$3, %al
	movzbl	%al, %eax
	.loc 1 72 35
	imull	%edx, %eax
	.loc 1 72 5
	movq	-16(%rbp), %rcx
	movl	$1, %r8d
	movl	%eax, %edx
	call	fseek
	.loc 1 75 13
	movzwl	-56(%rbp), %eax
	.loc 1 75 8
	testw	%ax, %ax
	jne	.L7
	.loc 1 76 13 discriminator 1
	movzwl	-54(%rbp), %eax
	.loc 1 75 27 discriminator 1
	testw	%ax, %ax
	jne	.L7
	.loc 1 77 14
	movzbl	-47(%rbp), %eax
	.loc 1 77 31
	movzbl	%al, %eax
	andl	$48, %eax
	.loc 1 76 27
	testl	%eax, %eax
	je	.L8
.L7:
	.loc 1 78 16
	movl	$-99, -8(%rbp)
	.loc 1 79 9
	jmp	.L6
.L8:
	.loc 1 83 35
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, %rdx
	.loc 1 83 17
	movq	40(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 84 10
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 84 8
	testq	%rax, %rax
	jne	.L9
	.loc 1 85 16
	movl	$-95, -8(%rbp)
	.loc 1 86 9
	jmp	.L6
.L9:
	.loc 1 88 11
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 1 91 17
	movzbl	-62(%rbp), %eax
	movzbl	%al, %eax
	.loc 1 91 5
	cmpl	$2, %eax
	jne	.L10
	.loc 1 95 25
	movzbl	-48(%rbp), %eax
	movzbl	%al, %eax
	cmpl	$16, %eax
	je	.L11
	cmpl	$24, %eax
	jne	.L12
	.loc 1 101 25
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %r9
	movl	$1, %r8d
	movq	%rax, %rcx
	call	fread
	.loc 1 101 24
	cmpq	$1, %rax
	je	.L22
	.loc 1 102 32
	movl	$-97, -8(%rbp)
	.loc 1 103 21
	jmp	.L22
.L11:
	.loc 1 108 28
	movl	$0, -4(%rbp)
	.loc 1 108 21
	jmp	.L15
.L17:
	.loc 1 109 29
	movq	-16(%rbp), %rdx
	leaq	-34(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$2, %edx
	movq	%rax, %rcx
	call	fread
	.loc 1 109 28
	cmpq	$1, %rax
	je	.L16
	.loc 1 110 36
	movl	$-97, -8(%rbp)
	.loc 1 111 29
	jmp	.L6
.L16:
	.loc 1 113 59 discriminator 2
	movzwl	-34(%rbp), %eax
	shrw	$10, %ax
	movzwl	%ax, %eax
	leal	0(,%rax,8), %ecx
	.loc 1 113 30 discriminator 2
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 113 36 discriminator 2
	movl	%ecx, %edx
	movb	%dl, 2(%rax)
	.loc 1 114 58 discriminator 2
	movzwl	-34(%rbp), %eax
	shrw	$5, %ax
	movzwl	%ax, %eax
	leal	0(,%rax,8), %ecx
	.loc 1 114 30 discriminator 2
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 114 36 discriminator 2
	movl	%ecx, %edx
	movb	%dl, 1(%rax)
	.loc 1 115 53 discriminator 2
	movzwl	-34(%rbp), %eax
	movzwl	%ax, %eax
	leal	0(,%rax,8), %ecx
	.loc 1 115 30 discriminator 2
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 115 36 discriminator 2
	movl	%ecx, %edx
	movb	%dl, (%rax)
	.loc 1 108 49 discriminator 2
	addl	$1, -4(%rbp)
.L15:
	.loc 1 108 21 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L17
	.loc 1 117 21
	jmp	.L14
.L12:
	.loc 1 124 28
	movl	$-99, -8(%rbp)
	.loc 1 126 13
	jmp	.L18
.L22:
	.loc 1 103 21
	nop
.L14:
	.loc 1 126 13
	jmp	.L18
.L10:
	.loc 1 129 20
	movl	$-99, -8(%rbp)
.L18:
	.loc 1 132 8
	cmpl	$0, -8(%rbp)
	je	.L23
	.loc 1 135 5
	nop
.L6:
	.loc 1 136 10
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 136 8
	testq	%rax, %rax
	je	.L20
	.loc 1 137 9
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	free
.L20:
	.loc 1 139 26
	movq	32(%rbp), %rax
	movl	$0, (%rax)
	.loc 1 139 17
	movq	32(%rbp), %rax
	movl	(%rax), %edx
	.loc 1 139 14
	movq	24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 1 140 17
	movq	40(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L19
.L23:
	.loc 1 133 9
	nop
.L19:
	.loc 1 143 5
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	.loc 1 144 12
	movl	-8(%rbp), %eax
.L21:
	.loc 1 145 1 discriminator 1
	addq	$96, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "wb\0"
	.text
	.globl	tga_write
	.def	tga_write;	.scl	2;	.type	32;	.endef
	.seh_proc	tga_write
tga_write:
.LFB19:
	.loc 1 157 94
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movq	%r9, 40(%rbp)
	.loc 1 159 12
	movl	24(%rbp), %eax
	imull	32(%rbp), %eax
	movl	%eax, -8(%rbp)
	.loc 1 161 17
	leaq	.LC1(%rip), %rdx
	movq	16(%rbp), %rcx
	call	fopen
	movq	%rax, -16(%rbp)
	.loc 1 162 8
	cmpq	$0, -16(%rbp)
	jne	.L25
	.loc 1 162 22 discriminator 1
	movl	$-98, %eax
	jmp	.L37
.L25:
	.loc 1 165 5
	leaq	-48(%rbp), %rax
	movl	$18, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	.loc 1 166 16
	movl	24(%rbp), %eax
	movw	%ax, -36(%rbp)
	.loc 1 167 17
	movl	32(%rbp), %eax
	movw	%ax, -34(%rbp)
	.loc 1 168 21
	movl	48(%rbp), %eax
	movb	%al, -32(%rbp)
	.loc 1 169 20
	movb	$2, -46(%rbp)
	.loc 1 172 9
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$18, %edx
	movq	%rax, %rcx
	call	fwrite
	.loc 1 172 8
	cmpq	$1, %rax
	jne	.L38
	cmpl	$16, 48(%rbp)
	je	.L29
	cmpl	$24, 48(%rbp)
	jne	.L39
	.loc 1 179 17
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	40(%rbp), %rax
	movq	%rcx, %r9
	movl	$1, %r8d
	movq	%rax, %rcx
	call	fwrite
	.loc 1 179 16
	cmpq	$1, %rax
	je	.L40
	.loc 1 180 17
	jmp	.L28
.L29:
	.loc 1 184 20
	movl	$0, -4(%rbp)
	.loc 1 184 13
	jmp	.L33
.L35:
.LBB2:
	.loc 1 186 36
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	40(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 186 39
	movzbl	2(%rax), %eax
	.loc 1 186 56
	shrb	$3, %al
	movzbl	%al, %eax
	sall	$10, %eax
	andw	$31744, %ax
	movl	%eax, %ecx
	.loc 1 187 36
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	40(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 187 39
	movzbl	1(%rax), %eax
	.loc 1 187 56
	shrb	$3, %al
	movzbl	%al, %eax
	sall	$5, %eax
	andw	$992, %ax
	.loc 1 186 63
	orl	%eax, %ecx
	.loc 1 188 36
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	40(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 188 39
	movzbl	(%rax), %eax
	.loc 1 188 48
	shrb	$3, %al
	movzbl	%al, %eax
	andl	$31, %eax
	.loc 1 187 62
	orl	%ecx, %eax
	.loc 1 185 26
	movw	%ax, -50(%rbp)
	.loc 1 189 21
	movq	-16(%rbp), %rdx
	leaq	-50(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$2, %edx
	movq	%rax, %rcx
	call	fwrite
	.loc 1 189 20
	cmpq	$1, %rax
	jne	.L41
.LBE2:
	.loc 1 184 46
	addl	$1, -4(%rbp)
.L33:
	.loc 1 184 35 discriminator 1
	movl	24(%rbp), %eax
	imull	32(%rbp), %eax
	.loc 1 184 13 discriminator 1
	cmpl	%eax, -4(%rbp)
	jl	.L35
	.loc 1 192 13
	jmp	.L32
.L40:
	.loc 1 181 13
	nop
.L32:
	.loc 1 198 5
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	.loc 1 199 12
	movl	$0, %eax
	jmp	.L37
.L38:
	.loc 1 173 9
	nop
	jmp	.L28
.L41:
.LBB3:
	.loc 1 190 21
	nop
.L28:
.LBE3:
	.loc 1 206 5
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	.loc 1 207 12
	movl	$-96, %eax
	jmp	.L37
.L39:
	.loc 1 195 13
	nop
.L36:
	.loc 1 210 5
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	.loc 1 211 12
	movl	$-99, %eax
.L37:
	.loc 1 212 1 discriminator 1
	addq	$96, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.seh_endproc
.Letext0:
	.file 2 "C:/PROGRA~1/MINGW-~1/X86_64~1.0-P/mingw64/x86_64-w64-mingw32/include/stdio.h"
	.file 3 "C:/PROGRA~1/MINGW-~1/X86_64~1.0-P/mingw64/x86_64-w64-mingw32/include/crtdefs.h"
	.file 4 "C:/PROGRA~1/MINGW-~1/X86_64~1.0-P/mingw64/x86_64-w64-mingw32/include/stdlib.h"
	.file 5 "C:/PROGRA~1/MINGW-~1/X86_64~1.0-P/mingw64/x86_64-w64-mingw32/include/malloc.h"
	.file 6 "C:/PROGRA~1/MINGW-~1/X86_64~1.0-P/mingw64/x86_64-w64-mingw32/include/stdint.h"
	.file 7 "C:/Users/johnn/Desktop/Lab3/Task1/tga.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x8f5
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C99 8.1.0 -mtune=core2 -march=nocona -g -std=gnu99\0"
	.byte	0xc
	.ascii "C:\\Users\\johnn\\Desktop\\Lab3\\Task1\\tga.c\0"
	.ascii "C:\\\\Users\\\\johnn\\\\Desktop\\\\Lab3\\\\Task1\\\\cmake-build-debug\0"
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.long	0xba
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x4
	.ascii "wchar_t\0"
	.byte	0x3
	.byte	0x62
	.byte	0x18
	.long	0x102
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x5
	.byte	0x8
	.long	0xba
	.uleb128 0x5
	.byte	0x8
	.long	0xf2
	.uleb128 0x5
	.byte	0x8
	.long	0x118
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x6
	.ascii "_iobuf\0"
	.byte	0x30
	.byte	0x2
	.byte	0x1a
	.byte	0xa
	.long	0x203
	.uleb128 0x7
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x1b
	.byte	0xb
	.long	0x12b
	.byte	0
	.uleb128 0x7
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x1c
	.byte	0x9
	.long	0x118
	.byte	0x8
	.uleb128 0x7
	.ascii "_base\0"
	.byte	0x2
	.byte	0x1d
	.byte	0xb
	.long	0x12b
	.byte	0x10
	.uleb128 0x7
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x1e
	.byte	0x9
	.long	0x118
	.byte	0x18
	.uleb128 0x7
	.ascii "_file\0"
	.byte	0x2
	.byte	0x1f
	.byte	0x9
	.long	0x118
	.byte	0x1c
	.uleb128 0x7
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x20
	.byte	0x9
	.long	0x118
	.byte	0x20
	.uleb128 0x7
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x21
	.byte	0x9
	.long	0x118
	.byte	0x24
	.uleb128 0x7
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x22
	.byte	0xb
	.long	0x12b
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x24
	.byte	0x19
	.long	0x173
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x8
	.ascii "__imp___mb_cur_max\0"
	.byte	0x4
	.byte	0x73
	.byte	0x10
	.long	0x137
	.uleb128 0x9
	.long	0x12b
	.long	0x25d
	.uleb128 0xa
	.long	0xc7
	.byte	0
	.byte	0
	.uleb128 0x8
	.ascii "_sys_errlist\0"
	.byte	0x4
	.byte	0xac
	.byte	0x2b
	.long	0x24d
	.uleb128 0x8
	.ascii "_sys_nerr\0"
	.byte	0x4
	.byte	0xad
	.byte	0x29
	.long	0x118
	.uleb128 0xb
	.ascii "__imp___argc\0"
	.byte	0x4
	.word	0x119
	.byte	0x10
	.long	0x137
	.uleb128 0xb
	.ascii "__imp___argv\0"
	.byte	0x4
	.word	0x11d
	.byte	0x13
	.long	0x2b0
	.uleb128 0x5
	.byte	0x8
	.long	0x2b6
	.uleb128 0x5
	.byte	0x8
	.long	0x12b
	.uleb128 0xb
	.ascii "__imp___wargv\0"
	.byte	0x4
	.word	0x121
	.byte	0x16
	.long	0x2d3
	.uleb128 0x5
	.byte	0x8
	.long	0x2d9
	.uleb128 0x5
	.byte	0x8
	.long	0x131
	.uleb128 0xb
	.ascii "__imp__environ\0"
	.byte	0x4
	.word	0x127
	.byte	0x13
	.long	0x2b0
	.uleb128 0xb
	.ascii "__imp__wenviron\0"
	.byte	0x4
	.word	0x12c
	.byte	0x16
	.long	0x2d3
	.uleb128 0xb
	.ascii "__imp__pgmptr\0"
	.byte	0x4
	.word	0x132
	.byte	0x12
	.long	0x2b6
	.uleb128 0xb
	.ascii "__imp__wpgmptr\0"
	.byte	0x4
	.word	0x137
	.byte	0x15
	.long	0x2d9
	.uleb128 0xb
	.ascii "__imp__osplatform\0"
	.byte	0x4
	.word	0x13c
	.byte	0x19
	.long	0x35a
	.uleb128 0x5
	.byte	0x8
	.long	0x13d
	.uleb128 0xb
	.ascii "__imp__osver\0"
	.byte	0x4
	.word	0x141
	.byte	0x19
	.long	0x35a
	.uleb128 0xb
	.ascii "__imp__winver\0"
	.byte	0x4
	.word	0x146
	.byte	0x19
	.long	0x35a
	.uleb128 0xb
	.ascii "__imp__winmajor\0"
	.byte	0x4
	.word	0x14b
	.byte	0x19
	.long	0x35a
	.uleb128 0xb
	.ascii "__imp__winminor\0"
	.byte	0x4
	.word	0x150
	.byte	0x19
	.long	0x35a
	.uleb128 0x8
	.ascii "_amblksiz\0"
	.byte	0x5
	.byte	0x35
	.byte	0x17
	.long	0x13d
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x4
	.ascii "uint8_t\0"
	.byte	0x6
	.byte	0x24
	.byte	0x17
	.long	0x162
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x4
	.ascii "uint16_t\0"
	.byte	0x6
	.byte	0x26
	.byte	0x18
	.long	0x102
	.uleb128 0xc
	.ascii "TGA_TYPE\0"
	.byte	0x7
	.byte	0x4
	.long	0x13d
	.byte	0x7
	.byte	0x14
	.byte	0x6
	.long	0x4bb
	.uleb128 0xd
	.ascii "TGA_UNCOMPRESSED_PALETTE\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "TGA_UNCOMPRESSED_RGB\0"
	.byte	0x2
	.uleb128 0xd
	.ascii "TGA_UNCOMPRESSED_MONOCHROME\0"
	.byte	0x3
	.uleb128 0xd
	.ascii "TGA_RLE_PALETTE\0"
	.byte	0x9
	.uleb128 0xd
	.ascii "TGA_RLE_RGB\0"
	.byte	0xa
	.uleb128 0xd
	.ascii "TGA_RLE_MONOCHROME\0"
	.byte	0xb
	.uleb128 0xd
	.ascii "TGA_FLIP_MASK\0"
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.ascii "TGA_STATUS\0"
	.byte	0x5
	.byte	0x4
	.long	0x118
	.byte	0x7
	.byte	0x27
	.byte	0x6
	.long	0x556
	.uleb128 0xd
	.ascii "TGA_OK\0"
	.byte	0
	.uleb128 0xe
	.ascii "TGA_UNSUPPORTED_FORMAT\0"
	.sleb128 -99
	.uleb128 0xe
	.ascii "TGA_FILE_OPEN_FAILED\0"
	.sleb128 -98
	.uleb128 0xe
	.ascii "TGA_FILE_READ_FAILED\0"
	.sleb128 -97
	.uleb128 0xe
	.ascii "TGA_FILE_WRITE_FAILED\0"
	.sleb128 -96
	.uleb128 0xe
	.ascii "TGA_MALLOC_FAILED\0"
	.sleb128 -95
	.byte	0
	.uleb128 0xf
	.byte	0x12
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x649
	.uleb128 0x7
	.ascii "idLen\0"
	.byte	0x7
	.byte	0x37
	.byte	0xd
	.long	0x3e0
	.byte	0
	.uleb128 0x7
	.ascii "colorMapType\0"
	.byte	0x7
	.byte	0x38
	.byte	0xd
	.long	0x3e0
	.byte	0x1
	.uleb128 0x7
	.ascii "imageType\0"
	.byte	0x7
	.byte	0x39
	.byte	0xd
	.long	0x3e0
	.byte	0x2
	.uleb128 0x7
	.ascii "colorMapStart\0"
	.byte	0x7
	.byte	0x3a
	.byte	0xe
	.long	0x3fd
	.byte	0x3
	.uleb128 0x7
	.ascii "colorMapLength\0"
	.byte	0x7
	.byte	0x3b
	.byte	0xe
	.long	0x3fd
	.byte	0x5
	.uleb128 0x7
	.ascii "colorMapDepth\0"
	.byte	0x7
	.byte	0x3c
	.byte	0xd
	.long	0x3e0
	.byte	0x7
	.uleb128 0x7
	.ascii "xOffset\0"
	.byte	0x7
	.byte	0x3d
	.byte	0xe
	.long	0x3fd
	.byte	0x8
	.uleb128 0x7
	.ascii "yOffset\0"
	.byte	0x7
	.byte	0x3e
	.byte	0xe
	.long	0x3fd
	.byte	0xa
	.uleb128 0x7
	.ascii "width\0"
	.byte	0x7
	.byte	0x3f
	.byte	0xe
	.long	0x3fd
	.byte	0xc
	.uleb128 0x10
	.secrel32	.LASF0
	.byte	0x7
	.byte	0x40
	.byte	0xe
	.long	0x3fd
	.byte	0xe
	.uleb128 0x7
	.ascii "pixelDepth\0"
	.byte	0x7
	.byte	0x41
	.byte	0xd
	.long	0x3e0
	.byte	0x10
	.uleb128 0x7
	.ascii "imageDescriptor\0"
	.byte	0x7
	.byte	0x42
	.byte	0xd
	.long	0x3e0
	.byte	0x11
	.byte	0
	.uleb128 0x4
	.ascii "TGA_HEADER\0"
	.byte	0x7
	.byte	0x43
	.byte	0x3
	.long	0x556
	.uleb128 0xf
	.byte	0x3
	.byte	0x7
	.byte	0x48
	.byte	0x9
	.long	0x687
	.uleb128 0x7
	.ascii "B\0"
	.byte	0x7
	.byte	0x49
	.byte	0xd
	.long	0x3e0
	.byte	0
	.uleb128 0x7
	.ascii "G\0"
	.byte	0x7
	.byte	0x4a
	.byte	0xd
	.long	0x3e0
	.byte	0x1
	.uleb128 0x7
	.ascii "R\0"
	.byte	0x7
	.byte	0x4b
	.byte	0xd
	.long	0x3e0
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.ascii "PIXEL_RGB24\0"
	.byte	0x7
	.byte	0x4c
	.byte	0x3
	.long	0x65c
	.uleb128 0x3
	.long	0x687
	.uleb128 0x11
	.ascii "tga_write\0"
	.byte	0x1
	.byte	0x9d
	.byte	0x5
	.long	0x118
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x79a
	.uleb128 0x12
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x9d
	.byte	0x1b
	.long	0x79a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.ascii "width\0"
	.byte	0x1
	.byte	0x9d
	.byte	0x2a
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x9d
	.byte	0x35
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x12
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x9d
	.byte	0x4a
	.long	0x7a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x13
	.ascii "bits\0"
	.byte	0x1
	.byte	0x9d
	.byte	0x58
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x14
	.ascii "i\0"
	.byte	0x1
	.byte	0x9f
	.byte	0x9
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.ascii "size\0"
	.byte	0x1
	.byte	0x9f
	.byte	0xc
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.ascii "out\0"
	.byte	0x1
	.byte	0xa1
	.byte	0xb
	.long	0x7a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.ascii "head\0"
	.byte	0x1
	.byte	0xa4
	.byte	0x10
	.long	0x649
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.ascii "write_error\0"
	.byte	0x1
	.byte	0xcd
	.byte	0x5
	.quad	.L28
	.uleb128 0x15
	.ascii "format_error\0"
	.byte	0x1
	.byte	0xd1
	.byte	0x5
	.quad	.L36
	.uleb128 0x16
	.secrel32	.Ldebug_ranges0+0
	.uleb128 0x14
	.ascii "p16\0"
	.byte	0x1
	.byte	0xb9
	.byte	0x1a
	.long	0x3fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xc2
	.uleb128 0x5
	.byte	0x8
	.long	0x687
	.uleb128 0x5
	.byte	0x8
	.long	0x203
	.uleb128 0x11
	.ascii "tga_read\0"
	.byte	0x1
	.byte	0x1d
	.byte	0x5
	.long	0x118
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x8a8
	.uleb128 0x12
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x1d
	.byte	0x1a
	.long	0x79a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.ascii "width\0"
	.byte	0x1
	.byte	0x1d
	.byte	0x2a
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x1d
	.byte	0x36
	.long	0x137
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x12
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x1d
	.byte	0x4c
	.long	0x8a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x14
	.ascii "p16\0"
	.byte	0x1
	.byte	0x1f
	.byte	0xe
	.long	0x3fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x14
	.ascii "numPixels\0"
	.byte	0x1
	.byte	0x20
	.byte	0x9
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.ascii "i\0"
	.byte	0x1
	.byte	0x21
	.byte	0x9
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.ascii "status\0"
	.byte	0x1
	.byte	0x21
	.byte	0xc
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.ascii "head\0"
	.byte	0x1
	.byte	0x23
	.byte	0x10
	.long	0x649
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.ascii "image\0"
	.byte	0x1
	.byte	0x24
	.byte	0x12
	.long	0x7a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.ascii "in\0"
	.byte	0x1
	.byte	0x28
	.byte	0xb
	.long	0x7a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.ascii "error\0"
	.byte	0x1
	.byte	0x87
	.byte	0x5
	.quad	.L6
	.uleb128 0x15
	.ascii "exit\0"
	.byte	0x1
	.byte	0x8e
	.byte	0x5
	.quad	.L19
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x7a0
	.uleb128 0x17
	.ascii "copy_pixel\0"
	.byte	0x1
	.byte	0xd
	.byte	0x6
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f2
	.uleb128 0x13
	.ascii "dst\0"
	.byte	0x1
	.byte	0xd
	.byte	0x1e
	.long	0x7a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.ascii "src\0"
	.byte	0x1
	.byte	0xd
	.byte	0x36
	.long	0x8f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x69b
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.LBB2-.Ltext0
	.quad	.LBE2-.Ltext0
	.quad	.LBB3-.Ltext0
	.quad	.LBE3-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF2:
	.ascii "pixelBuf\0"
.LASF0:
	.ascii "height\0"
.LASF1:
	.ascii "file_name\0"
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	fread;	.scl	2;	.type	32;	.endef
	.def	fseek;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	fwrite;	.scl	2;	.type	32;	.endef
