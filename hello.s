   1              		.file	"hello.cpp"
   2              		.text
   3              	.Ltext0:
   4              		.section	.rodata
   7              	_ZStL19piecewise_construct:
   8 0000 00       		.zero	1
   9              		.local	_ZStL8__ioinit
  10              		.comm	_ZStL8__ioinit,1,1
  11              	.LC0:
  12 0001 61726776 		.string	"argv[0] = %s\n"
  12      5B305D20 
  12      3D202573 
  12      0A00
  13              	.LC1:
  14 000f 612C2062 		.string	"a, b = %d, %d\n"
  14      203D2025 
  14      642C2025 
  14      640A00
  15              	.LC2:
  16 001e 622B2B0A 		.string	"b++\n"
  16      00
  17              	.LC3:
  18 0023 622B3D61 		.string	"b+=a\n"
  18      0A00
  19              	.LC4:
  20 0029 62203D20 		.string	"b = b + a\n"
  20      62202B20 
  20      610A00
  21              		.text
  22              		.globl	main
  24              	main:
  25              	.LFB1493:
  26              		.file 1 "hello.cpp"
   1:hello.cpp     **** #include <iostream>
   2:hello.cpp     **** #include <cstdio>
   3:hello.cpp     **** 
   4:hello.cpp     **** using namespace std;
   5:hello.cpp     **** 
   6:hello.cpp     **** int main(int argn, char * argv[]){
  27              		.loc 1 6 0
  28              		.cfi_startproc
  29 0000 55       		pushq	%rbp
  30              		.cfi_def_cfa_offset 16
  31              		.cfi_offset 6, -16
  32 0001 4889E5   		movq	%rsp, %rbp
  33              		.cfi_def_cfa_register 6
  34 0004 4883EC20 		subq	$32, %rsp
  35 0008 897DEC   		movl	%edi, -20(%rbp)
  36 000b 488975E0 		movq	%rsi, -32(%rbp)
   7:hello.cpp     **** 
   8:hello.cpp     **** 	int a = int(argv[0][0]);
  37              		.loc 1 8 0
  38 000f 488B45E0 		movq	-32(%rbp), %rax
  39 0013 488B00   		movq	(%rax), %rax
  40 0016 0FB600   		movzbl	(%rax), %eax
  41 0019 0FBEC0   		movsbl	%al, %eax
  42 001c 8945F8   		movl	%eax, -8(%rbp)
   9:hello.cpp     **** 	int b = int(argv[0][1]);
  43              		.loc 1 9 0
  44 001f 488B45E0 		movq	-32(%rbp), %rax
  45 0023 488B00   		movq	(%rax), %rax
  46 0026 4883C001 		addq	$1, %rax
  47 002a 0FB600   		movzbl	(%rax), %eax
  48 002d 0FBEC0   		movsbl	%al, %eax
  49 0030 8945FC   		movl	%eax, -4(%rbp)
  10:hello.cpp     **** 
  11:hello.cpp     **** 	printf("argv[0] = %s\n", argv[0]);	
  50              		.loc 1 11 0
  51 0033 488B45E0 		movq	-32(%rbp), %rax
  52 0037 488B00   		movq	(%rax), %rax
  53 003a 4889C6   		movq	%rax, %rsi
  54 003d 488D3D00 		leaq	.LC0(%rip), %rdi
  54      000000
  55 0044 B8000000 		movl	$0, %eax
  55      00
  56 0049 E8000000 		call	printf@PLT
  56      00
  12:hello.cpp     **** 	printf("a, b = %d, %d\n", a, b);
  57              		.loc 1 12 0
  58 004e 8B55FC   		movl	-4(%rbp), %edx
  59 0051 8B45F8   		movl	-8(%rbp), %eax
  60 0054 89C6     		movl	%eax, %esi
  61 0056 488D3D00 		leaq	.LC1(%rip), %rdi
  61      000000
  62 005d B8000000 		movl	$0, %eax
  62      00
  63 0062 E8000000 		call	printf@PLT
  63      00
  13:hello.cpp     **** 
  14:hello.cpp     **** 	b++;
  64              		.loc 1 14 0
  65 0067 8345FC01 		addl	$1, -4(%rbp)
  15:hello.cpp     **** 	puts("b++\n");
  66              		.loc 1 15 0
  67 006b 488D3D00 		leaq	.LC2(%rip), %rdi
  67      000000
  68 0072 E8000000 		call	puts@PLT
  68      00
  16:hello.cpp     **** 	printf("a, b = %d, %d\n", a, b);
  69              		.loc 1 16 0
  70 0077 8B55FC   		movl	-4(%rbp), %edx
  71 007a 8B45F8   		movl	-8(%rbp), %eax
  72 007d 89C6     		movl	%eax, %esi
  73 007f 488D3D00 		leaq	.LC1(%rip), %rdi
  73      000000
  74 0086 B8000000 		movl	$0, %eax
  74      00
  75 008b E8000000 		call	printf@PLT
  75      00
  17:hello.cpp     **** 
  18:hello.cpp     **** 	b+=a;
  76              		.loc 1 18 0
  77 0090 8B45F8   		movl	-8(%rbp), %eax
  78 0093 0145FC   		addl	%eax, -4(%rbp)
  19:hello.cpp     **** 	puts("b+=a\n");
  79              		.loc 1 19 0
  80 0096 488D3D00 		leaq	.LC3(%rip), %rdi
  80      000000
  81 009d E8000000 		call	puts@PLT
  81      00
  20:hello.cpp     **** 	printf("a, b = %d, %d\n", a, b);
  82              		.loc 1 20 0
  83 00a2 8B55FC   		movl	-4(%rbp), %edx
  84 00a5 8B45F8   		movl	-8(%rbp), %eax
  85 00a8 89C6     		movl	%eax, %esi
  86 00aa 488D3D00 		leaq	.LC1(%rip), %rdi
  86      000000
  87 00b1 B8000000 		movl	$0, %eax
  87      00
  88 00b6 E8000000 		call	printf@PLT
  88      00
  21:hello.cpp     **** 
  22:hello.cpp     **** 	b = b + a;
  89              		.loc 1 22 0
  90 00bb 8B45F8   		movl	-8(%rbp), %eax
  91 00be 0145FC   		addl	%eax, -4(%rbp)
  23:hello.cpp     **** 	puts("b = b + a\n");
  92              		.loc 1 23 0
  93 00c1 488D3D00 		leaq	.LC4(%rip), %rdi
  93      000000
  94 00c8 E8000000 		call	puts@PLT
  94      00
  24:hello.cpp     **** 	printf("a, b = %d, %d\n", a, b);
  95              		.loc 1 24 0
  96 00cd 8B55FC   		movl	-4(%rbp), %edx
  97 00d0 8B45F8   		movl	-8(%rbp), %eax
  98 00d3 89C6     		movl	%eax, %esi
  99 00d5 488D3D00 		leaq	.LC1(%rip), %rdi
  99      000000
 100 00dc B8000000 		movl	$0, %eax
 100      00
 101 00e1 E8000000 		call	printf@PLT
 101      00
  25:hello.cpp     **** 
  26:hello.cpp     **** 	return 0;
 102              		.loc 1 26 0
 103 00e6 B8000000 		movl	$0, %eax
 103      00
  27:hello.cpp     **** 
  28:hello.cpp     **** }
 104              		.loc 1 28 0
 105 00eb C9       		leave
 106              		.cfi_def_cfa 7, 8
 107 00ec C3       		ret
 108              		.cfi_endproc
 109              	.LFE1493:
 112              	_Z41__static_initialization_and_destruction_0ii:
 113              	.LFB1974:
 114              		.loc 1 28 0
 115              		.cfi_startproc
 116 00ed 55       		pushq	%rbp
 117              		.cfi_def_cfa_offset 16
 118              		.cfi_offset 6, -16
 119 00ee 4889E5   		movq	%rsp, %rbp
 120              		.cfi_def_cfa_register 6
 121 00f1 4883EC10 		subq	$16, %rsp
 122 00f5 897DFC   		movl	%edi, -4(%rbp)
 123 00f8 8975F8   		movl	%esi, -8(%rbp)
 124              		.loc 1 28 0
 125 00fb 837DFC01 		cmpl	$1, -4(%rbp)
 126 00ff 7532     		jne	.L5
 127              		.loc 1 28 0 is_stmt 0 discriminator 1
 128 0101 817DF8FF 		cmpl	$65535, -8(%rbp)
 128      FF0000
 129 0108 7529     		jne	.L5
 130              		.file 2 "/usr/include/c++/7/iostream"
   1:/usr/include/c++/7/iostream **** // Standard iostream objects -*- C++ -*-
   2:/usr/include/c++/7/iostream **** 
   3:/usr/include/c++/7/iostream **** // Copyright (C) 1997-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/iostream **** //
   5:/usr/include/c++/7/iostream **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/iostream **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/iostream **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/iostream **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/iostream **** // any later version.
  10:/usr/include/c++/7/iostream **** 
  11:/usr/include/c++/7/iostream **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/iostream **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/iostream **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/iostream **** // GNU General Public License for more details.
  15:/usr/include/c++/7/iostream **** 
  16:/usr/include/c++/7/iostream **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/iostream **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/iostream **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/iostream **** 
  20:/usr/include/c++/7/iostream **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/iostream **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/iostream **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/iostream **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/iostream **** 
  25:/usr/include/c++/7/iostream **** /** @file include/iostream
  26:/usr/include/c++/7/iostream ****  *  This is a Standard C++ Library header.
  27:/usr/include/c++/7/iostream ****  */
  28:/usr/include/c++/7/iostream **** 
  29:/usr/include/c++/7/iostream **** //
  30:/usr/include/c++/7/iostream **** // ISO C++ 14882: 27.3  Standard iostream objects
  31:/usr/include/c++/7/iostream **** //
  32:/usr/include/c++/7/iostream **** 
  33:/usr/include/c++/7/iostream **** #ifndef _GLIBCXX_IOSTREAM
  34:/usr/include/c++/7/iostream **** #define _GLIBCXX_IOSTREAM 1
  35:/usr/include/c++/7/iostream **** 
  36:/usr/include/c++/7/iostream **** #pragma GCC system_header
  37:/usr/include/c++/7/iostream **** 
  38:/usr/include/c++/7/iostream **** #include <bits/c++config.h>
  39:/usr/include/c++/7/iostream **** #include <ostream>
  40:/usr/include/c++/7/iostream **** #include <istream>
  41:/usr/include/c++/7/iostream **** 
  42:/usr/include/c++/7/iostream **** namespace std _GLIBCXX_VISIBILITY(default)
  43:/usr/include/c++/7/iostream **** {
  44:/usr/include/c++/7/iostream **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  45:/usr/include/c++/7/iostream **** 
  46:/usr/include/c++/7/iostream ****   /**
  47:/usr/include/c++/7/iostream ****    *  @name Standard Stream Objects
  48:/usr/include/c++/7/iostream ****    *
  49:/usr/include/c++/7/iostream ****    *  The &lt;iostream&gt; header declares the eight <em>standard stream
  50:/usr/include/c++/7/iostream ****    *  objects</em>.  For other declarations, see
  51:/usr/include/c++/7/iostream ****    *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/io.html
  52:/usr/include/c++/7/iostream ****    *  and the @link iosfwd I/O forward declarations @endlink
  53:/usr/include/c++/7/iostream ****    *
  54:/usr/include/c++/7/iostream ****    *  They are required by default to cooperate with the global C
  55:/usr/include/c++/7/iostream ****    *  library's @c FILE streams, and to be available during program
  56:/usr/include/c++/7/iostream ****    *  startup and termination. For more information, see the section of the
  57:/usr/include/c++/7/iostream ****    *  manual linked to above.
  58:/usr/include/c++/7/iostream ****   */
  59:/usr/include/c++/7/iostream ****   //@{
  60:/usr/include/c++/7/iostream ****   extern istream cin;		/// Linked to standard input
  61:/usr/include/c++/7/iostream ****   extern ostream cout;		/// Linked to standard output
  62:/usr/include/c++/7/iostream ****   extern ostream cerr;		/// Linked to standard error (unbuffered)
  63:/usr/include/c++/7/iostream ****   extern ostream clog;		/// Linked to standard error (buffered)
  64:/usr/include/c++/7/iostream **** 
  65:/usr/include/c++/7/iostream **** #ifdef _GLIBCXX_USE_WCHAR_T
  66:/usr/include/c++/7/iostream ****   extern wistream wcin;		/// Linked to standard input
  67:/usr/include/c++/7/iostream ****   extern wostream wcout;	/// Linked to standard output
  68:/usr/include/c++/7/iostream ****   extern wostream wcerr;	/// Linked to standard error (unbuffered)
  69:/usr/include/c++/7/iostream ****   extern wostream wclog;	/// Linked to standard error (buffered)
  70:/usr/include/c++/7/iostream **** #endif
  71:/usr/include/c++/7/iostream ****   //@}
  72:/usr/include/c++/7/iostream **** 
  73:/usr/include/c++/7/iostream ****   // For construction of filebuffers for cout, cin, cerr, clog et. al.
  74:/usr/include/c++/7/iostream ****   static ios_base::Init __ioinit;
 131              		.loc 2 74 0 is_stmt 1
 132 010a 488D3D00 		leaq	_ZStL8__ioinit(%rip), %rdi
 132      000000
 133 0111 E8000000 		call	_ZNSt8ios_base4InitC1Ev@PLT
 133      00
 134 0116 488D1500 		leaq	__dso_handle(%rip), %rdx
 134      000000
 135 011d 488D3500 		leaq	_ZStL8__ioinit(%rip), %rsi
 135      000000
 136 0124 488B0500 		movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
 136      000000
 137 012b 4889C7   		movq	%rax, %rdi
 138 012e E8000000 		call	__cxa_atexit@PLT
 138      00
 139              	.L5:
 140              		.loc 1 28 0
 141 0133 90       		nop
 142 0134 C9       		leave
 143              		.cfi_def_cfa 7, 8
 144 0135 C3       		ret
 145              		.cfi_endproc
 146              	.LFE1974:
 149              	_GLOBAL__sub_I_main:
 150              	.LFB1975:
 151              		.loc 1 28 0
 152              		.cfi_startproc
 153 0136 55       		pushq	%rbp
 154              		.cfi_def_cfa_offset 16
 155              		.cfi_offset 6, -16
 156 0137 4889E5   		movq	%rsp, %rbp
 157              		.cfi_def_cfa_register 6
 158              		.loc 1 28 0
 159 013a BEFFFF00 		movl	$65535, %esi
 159      00
 160 013f BF010000 		movl	$1, %edi
 160      00
 161 0144 E8A4FFFF 		call	_Z41__static_initialization_and_destruction_0ii
 161      FF
 162 0149 5D       		popq	%rbp
 163              		.cfi_def_cfa 7, 8
 164 014a C3       		ret
 165              		.cfi_endproc
 166              	.LFE1975:
 168              		.section	.init_array,"aw"
 169              		.align 8
 170 0000 00000000 		.quad	_GLOBAL__sub_I_main
 170      00000000 
 171              		.text
 172              	.Letext0:
 173              		.file 3 "/usr/include/c++/7/cwchar"
 174              		.file 4 "/usr/include/c++/7/new"
 175              		.file 5 "/usr/include/c++/7/bits/exception_ptr.h"
 176              		.file 6 "/usr/include/c++/7/type_traits"
 177              		.file 7 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
 178              		.file 8 "/usr/include/c++/7/bits/cpp_type_traits.h"
 179              		.file 9 "/usr/include/c++/7/bits/stl_pair.h"
 180              		.file 10 "/usr/include/c++/7/debug/debug.h"
 181              		.file 11 "/usr/include/c++/7/bits/char_traits.h"
 182              		.file 12 "/usr/include/c++/7/cstdint"
 183              		.file 13 "/usr/include/c++/7/clocale"
 184              		.file 14 "/usr/include/c++/7/cstdlib"
 185              		.file 15 "/usr/include/c++/7/cstdio"
 186              		.file 16 "/usr/include/c++/7/bits/basic_string.h"
 187              		.file 17 "/usr/include/c++/7/system_error"
 188              		.file 18 "/usr/include/c++/7/bits/ios_base.h"
 189              		.file 19 "/usr/include/c++/7/cwctype"
 190              		.file 20 "/usr/include/c++/7/iosfwd"
 191              		.file 21 "/usr/include/c++/7/bits/predefined_ops.h"
 192              		.file 22 "/usr/include/c++/7/ext/new_allocator.h"
 193              		.file 23 "/usr/include/c++/7/ext/numeric_traits.h"
 194              		.file 24 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
 195              		.file 25 "<built-in>"
 196              		.file 26 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
 197              		.file 27 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
 198              		.file 28 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
 199              		.file 29 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
 200              		.file 30 "/usr/include/x86_64-linux-gnu/bits/libio.h"
 201              		.file 31 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
 202              		.file 32 "/usr/include/wchar.h"
 203              		.file 33 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
 204              		.file 34 "/usr/include/x86_64-linux-gnu/bits/types.h"
 205              		.file 35 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
 206              		.file 36 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
 207              		.file 37 "/usr/include/stdint.h"
 208              		.file 38 "/usr/include/locale.h"
 209              		.file 39 "/usr/include/time.h"
 210              		.file 40 "/usr/include/x86_64-linux-gnu/c++/7/bits/atomic_word.h"
 211              		.file 41 "/usr/include/stdlib.h"
 212              		.file 42 "/usr/include/x86_64-linux-gnu/bits/_G_config.h"
 213              		.file 43 "/usr/include/stdio.h"
 214              		.file 44 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
 215              		.file 45 "/usr/include/errno.h"
 216              		.file 46 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
 217              		.file 47 "/usr/include/wctype.h"
