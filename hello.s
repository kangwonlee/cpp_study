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
  14 000f 61726776 		.string	"argv[1] = %s\n"
  14      5B315D20 
  14      3D202573 
  14      0A00
  15              	.LC2:
  16 001d 61726776 		.string	"argv[2] = %s\n\n"
  16      5B325D20 
  16      3D202573 
  16      0A0A00
  17              	.LC3:
  18 002c 612C2062 		.string	"a, b, c = %d, %d, %d\n"
  18      2C206320 
  18      3D202564 
  18      2C202564 
  18      2C202564 
  19              	.LC4:
  20 0042 0A622B2B 		.string	"\nb++"
  20      00
  21              	.LC5:
  22 0047 0A622B3D 		.string	"\nb+=a"
  22      6100
  23              	.LC6:
  24 004d 0A63203D 		.string	"\nc = a + b"
  24      2061202B 
  24      206200
  25              		.text
  26              		.globl	main
  28              	main:
  29              	.LFB1493:
  30              		.file 1 "hello.cpp"
   1:hello.cpp     **** #include <iostream>
   2:hello.cpp     **** #include <cstdio>
   3:hello.cpp     **** 
   4:hello.cpp     **** int main(int argn, char * argv[]){
  31              		.loc 1 4 0
  32              		.cfi_startproc
  33 0000 55       		pushq	%rbp
  34              		.cfi_def_cfa_offset 16
  35              		.cfi_offset 6, -16
  36 0001 4889E5   		movq	%rsp, %rbp
  37              		.cfi_def_cfa_register 6
  38 0004 4883EC20 		subq	$32, %rsp
  39 0008 897DEC   		movl	%edi, -20(%rbp)
  40 000b 488975E0 		movq	%rsi, -32(%rbp)
   5:hello.cpp     **** 
   6:hello.cpp     **** 	int a = int(argv[0][0]);
  41              		.loc 1 6 0
  42 000f 488B45E0 		movq	-32(%rbp), %rax
  43 0013 488B00   		movq	(%rax), %rax
  44 0016 0FB600   		movzbl	(%rax), %eax
  45 0019 0FBEC0   		movsbl	%al, %eax
  46 001c 8945F4   		movl	%eax, -12(%rbp)
   7:hello.cpp     **** 	int b = int(argv[0][1]);
  47              		.loc 1 7 0
  48 001f 488B45E0 		movq	-32(%rbp), %rax
  49 0023 488B00   		movq	(%rax), %rax
  50 0026 4883C001 		addq	$1, %rax
  51 002a 0FB600   		movzbl	(%rax), %eax
  52 002d 0FBEC0   		movsbl	%al, %eax
  53 0030 8945F8   		movl	%eax, -8(%rbp)
   8:hello.cpp     **** 	int c = 0;
  54              		.loc 1 8 0
  55 0033 C745FC00 		movl	$0, -4(%rbp)
  55      000000
   9:hello.cpp     **** 
  10:hello.cpp     **** 	printf("argv[0] = %s\n", argv[0]);
  56              		.loc 1 10 0
  57 003a 488B45E0 		movq	-32(%rbp), %rax
  58 003e 488B00   		movq	(%rax), %rax
  59 0041 4889C6   		movq	%rax, %rsi
  60 0044 488D3D00 		leaq	.LC0(%rip), %rdi
  60      000000
  61 004b B8000000 		movl	$0, %eax
  61      00
  62 0050 E8000000 		call	printf@PLT
  62      00
  11:hello.cpp     **** 	printf("argv[1] = %s\n", argv[1]);
  63              		.loc 1 11 0
  64 0055 488B45E0 		movq	-32(%rbp), %rax
  65 0059 4883C008 		addq	$8, %rax
  66 005d 488B00   		movq	(%rax), %rax
  67 0060 4889C6   		movq	%rax, %rsi
  68 0063 488D3D00 		leaq	.LC1(%rip), %rdi
  68      000000
  69 006a B8000000 		movl	$0, %eax
  69      00
  70 006f E8000000 		call	printf@PLT
  70      00
  12:hello.cpp     **** 	printf("argv[2] = %s\n\n", argv[2]);
  71              		.loc 1 12 0
  72 0074 488B45E0 		movq	-32(%rbp), %rax
  73 0078 4883C010 		addq	$16, %rax
  74 007c 488B00   		movq	(%rax), %rax
  75 007f 4889C6   		movq	%rax, %rsi
  76 0082 488D3D00 		leaq	.LC2(%rip), %rdi
  76      000000
  77 0089 B8000000 		movl	$0, %eax
  77      00
  78 008e E8000000 		call	printf@PLT
  78      00
  13:hello.cpp     **** 
  14:hello.cpp     **** 	printf("a, b, c = %d, %d, %d\n", a, b, c);
  79              		.loc 1 14 0
  80 0093 8B4DFC   		movl	-4(%rbp), %ecx
  81 0096 8B55F8   		movl	-8(%rbp), %edx
  82 0099 8B45F4   		movl	-12(%rbp), %eax
  83 009c 89C6     		movl	%eax, %esi
  84 009e 488D3D00 		leaq	.LC3(%rip), %rdi
  84      000000
  85 00a5 B8000000 		movl	$0, %eax
  85      00
  86 00aa E8000000 		call	printf@PLT
  86      00
  15:hello.cpp     **** 
  16:hello.cpp     **** 	b++;
  87              		.loc 1 16 0
  88 00af 8345F801 		addl	$1, -8(%rbp)
  17:hello.cpp     **** 	puts("\nb++");
  89              		.loc 1 17 0
  90 00b3 488D3D00 		leaq	.LC4(%rip), %rdi
  90      000000
  91 00ba E8000000 		call	puts@PLT
  91      00
  18:hello.cpp     **** 	printf("a, b, c = %d, %d, %d\n", a, b, c);
  92              		.loc 1 18 0
  93 00bf 8B4DFC   		movl	-4(%rbp), %ecx
  94 00c2 8B55F8   		movl	-8(%rbp), %edx
  95 00c5 8B45F4   		movl	-12(%rbp), %eax
  96 00c8 89C6     		movl	%eax, %esi
  97 00ca 488D3D00 		leaq	.LC3(%rip), %rdi
  97      000000
  98 00d1 B8000000 		movl	$0, %eax
  98      00
  99 00d6 E8000000 		call	printf@PLT
  99      00
  19:hello.cpp     **** 
  20:hello.cpp     **** 	b+=a;
 100              		.loc 1 20 0
 101 00db 8B45F4   		movl	-12(%rbp), %eax
 102 00de 0145F8   		addl	%eax, -8(%rbp)
  21:hello.cpp     **** 	puts("\nb+=a");
 103              		.loc 1 21 0
 104 00e1 488D3D00 		leaq	.LC5(%rip), %rdi
 104      000000
 105 00e8 E8000000 		call	puts@PLT
 105      00
  22:hello.cpp     **** 	printf("a, b, c = %d, %d, %d\n", a, b, c);
 106              		.loc 1 22 0
 107 00ed 8B4DFC   		movl	-4(%rbp), %ecx
 108 00f0 8B55F8   		movl	-8(%rbp), %edx
 109 00f3 8B45F4   		movl	-12(%rbp), %eax
 110 00f6 89C6     		movl	%eax, %esi
 111 00f8 488D3D00 		leaq	.LC3(%rip), %rdi
 111      000000
 112 00ff B8000000 		movl	$0, %eax
 112      00
 113 0104 E8000000 		call	printf@PLT
 113      00
  23:hello.cpp     **** 
  24:hello.cpp     **** 	c = a + b;
 114              		.loc 1 24 0
 115 0109 8B55F4   		movl	-12(%rbp), %edx
 116 010c 8B45F8   		movl	-8(%rbp), %eax
 117 010f 01D0     		addl	%edx, %eax
 118 0111 8945FC   		movl	%eax, -4(%rbp)
  25:hello.cpp     **** 	puts("\nc = a + b");
 119              		.loc 1 25 0
 120 0114 488D3D00 		leaq	.LC6(%rip), %rdi
 120      000000
 121 011b E8000000 		call	puts@PLT
 121      00
  26:hello.cpp     **** 	printf("a, b, c = %d, %d, %d\n", a, b, c);
 122              		.loc 1 26 0
 123 0120 8B4DFC   		movl	-4(%rbp), %ecx
 124 0123 8B55F8   		movl	-8(%rbp), %edx
 125 0126 8B45F4   		movl	-12(%rbp), %eax
 126 0129 89C6     		movl	%eax, %esi
 127 012b 488D3D00 		leaq	.LC3(%rip), %rdi
 127      000000
 128 0132 B8000000 		movl	$0, %eax
 128      00
 129 0137 E8000000 		call	printf@PLT
 129      00
  27:hello.cpp     **** 
  28:hello.cpp     **** 	return 0;
 130              		.loc 1 28 0
 131 013c B8000000 		movl	$0, %eax
 131      00
  29:hello.cpp     **** 
  30:hello.cpp     **** }
 132              		.loc 1 30 0
 133 0141 C9       		leave
 134              		.cfi_def_cfa 7, 8
 135 0142 C3       		ret
 136              		.cfi_endproc
 137              	.LFE1493:
 140              	_Z41__static_initialization_and_destruction_0ii:
 141              	.LFB1974:
 142              		.loc 1 30 0
 143              		.cfi_startproc
 144 0143 55       		pushq	%rbp
 145              		.cfi_def_cfa_offset 16
 146              		.cfi_offset 6, -16
 147 0144 4889E5   		movq	%rsp, %rbp
 148              		.cfi_def_cfa_register 6
 149 0147 4883EC10 		subq	$16, %rsp
 150 014b 897DFC   		movl	%edi, -4(%rbp)
 151 014e 8975F8   		movl	%esi, -8(%rbp)
 152              		.loc 1 30 0
 153 0151 837DFC01 		cmpl	$1, -4(%rbp)
 154 0155 7532     		jne	.L5
 155              		.loc 1 30 0 is_stmt 0 discriminator 1
 156 0157 817DF8FF 		cmpl	$65535, -8(%rbp)
 156      FF0000
 157 015e 7529     		jne	.L5
 158              		.file 2 "/usr/include/c++/7/iostream"
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
 159              		.loc 2 74 0 is_stmt 1
 160 0160 488D3D00 		leaq	_ZStL8__ioinit(%rip), %rdi
 160      000000
 161 0167 E8000000 		call	_ZNSt8ios_base4InitC1Ev@PLT
 161      00
 162 016c 488D1500 		leaq	__dso_handle(%rip), %rdx
 162      000000
 163 0173 488D3500 		leaq	_ZStL8__ioinit(%rip), %rsi
 163      000000
 164 017a 488B0500 		movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
 164      000000
 165 0181 4889C7   		movq	%rax, %rdi
 166 0184 E8000000 		call	__cxa_atexit@PLT
 166      00
 167              	.L5:
 168              		.loc 1 30 0
 169 0189 90       		nop
 170 018a C9       		leave
 171              		.cfi_def_cfa 7, 8
 172 018b C3       		ret
 173              		.cfi_endproc
 174              	.LFE1974:
 177              	_GLOBAL__sub_I_main:
 178              	.LFB1975:
 179              		.loc 1 30 0
 180              		.cfi_startproc
 181 018c 55       		pushq	%rbp
 182              		.cfi_def_cfa_offset 16
 183              		.cfi_offset 6, -16
 184 018d 4889E5   		movq	%rsp, %rbp
 185              		.cfi_def_cfa_register 6
 186              		.loc 1 30 0
 187 0190 BEFFFF00 		movl	$65535, %esi
 187      00
 188 0195 BF010000 		movl	$1, %edi
 188      00
 189 019a E8A4FFFF 		call	_Z41__static_initialization_and_destruction_0ii
 189      FF
 190 019f 5D       		popq	%rbp
 191              		.cfi_def_cfa 7, 8
 192 01a0 C3       		ret
 193              		.cfi_endproc
 194              	.LFE1975:
 196              		.section	.init_array,"aw"
 197              		.align 8
 198 0000 00000000 		.quad	_GLOBAL__sub_I_main
 198      00000000 
 199              		.text
 200              	.Letext0:
 201              		.file 3 "/usr/include/c++/7/cwchar"
 202              		.file 4 "/usr/include/c++/7/new"
 203              		.file 5 "/usr/include/c++/7/bits/exception_ptr.h"
 204              		.file 6 "/usr/include/c++/7/type_traits"
 205              		.file 7 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
 206              		.file 8 "/usr/include/c++/7/bits/cpp_type_traits.h"
 207              		.file 9 "/usr/include/c++/7/bits/stl_pair.h"
 208              		.file 10 "/usr/include/c++/7/debug/debug.h"
 209              		.file 11 "/usr/include/c++/7/bits/char_traits.h"
 210              		.file 12 "/usr/include/c++/7/cstdint"
 211              		.file 13 "/usr/include/c++/7/clocale"
 212              		.file 14 "/usr/include/c++/7/cstdlib"
 213              		.file 15 "/usr/include/c++/7/cstdio"
 214              		.file 16 "/usr/include/c++/7/bits/basic_string.h"
 215              		.file 17 "/usr/include/c++/7/system_error"
 216              		.file 18 "/usr/include/c++/7/bits/ios_base.h"
 217              		.file 19 "/usr/include/c++/7/cwctype"
 218              		.file 20 "/usr/include/c++/7/iosfwd"
 219              		.file 21 "/usr/include/c++/7/bits/predefined_ops.h"
 220              		.file 22 "/usr/include/c++/7/ext/new_allocator.h"
 221              		.file 23 "/usr/include/c++/7/ext/numeric_traits.h"
 222              		.file 24 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
 223              		.file 25 "<built-in>"
 224              		.file 26 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
 225              		.file 27 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
 226              		.file 28 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
 227              		.file 29 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
 228              		.file 30 "/usr/include/x86_64-linux-gnu/bits/libio.h"
 229              		.file 31 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
 230              		.file 32 "/usr/include/wchar.h"
 231              		.file 33 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
 232              		.file 34 "/usr/include/x86_64-linux-gnu/bits/types.h"
 233              		.file 35 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
 234              		.file 36 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
 235              		.file 37 "/usr/include/stdint.h"
 236              		.file 38 "/usr/include/locale.h"
 237              		.file 39 "/usr/include/time.h"
 238              		.file 40 "/usr/include/x86_64-linux-gnu/c++/7/bits/atomic_word.h"
 239              		.file 41 "/usr/include/stdlib.h"
 240              		.file 42 "/usr/include/x86_64-linux-gnu/bits/_G_config.h"
 241              		.file 43 "/usr/include/stdio.h"
 242              		.file 44 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
 243              		.file 45 "/usr/include/errno.h"
 244              		.file 46 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
 245              		.file 47 "/usr/include/wctype.h"
