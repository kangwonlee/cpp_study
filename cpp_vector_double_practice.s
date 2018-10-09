   1              		.file	"cpp_vector_double_practice.cpp"
   2              		.text
   3              	.Ltext0:
   4              		.section	.rodata
   7              	_ZStL19piecewise_construct:
   8 0000 00       		.zero	1
   9              		.local	_ZStL8__ioinit
  10              		.comm	_ZStL8__ioinit,1,1
  11              	.LC0:
  12 0001 7E20526F 		.string	"~ RowVector()"
  12      77566563 
  12      746F7228 
  12      2900
  13              		.section	.text._ZN9RowVectorD2Ev,"axG",@progbits,_ZN9RowVectorD5Ev,comdat
  14              		.align 2
  15              		.weak	_ZN9RowVectorD2Ev
  17              	_ZN9RowVectorD2Ev:
  18              	.LFB1842:
  19              		.file 1 "cpp_vector_double_practice.cpp"
   1:cpp_vector_double_practice.cpp **** // Begin cpp_vector_double_practice.cpp
   2:cpp_vector_double_practice.cpp **** 
   3:cpp_vector_double_practice.cpp **** #include <cassert>
   4:cpp_vector_double_practice.cpp **** #include <cstdint>
   5:cpp_vector_double_practice.cpp **** #include <exception>
   6:cpp_vector_double_practice.cpp **** #include <iostream>
   7:cpp_vector_double_practice.cpp **** #include <string>
   8:cpp_vector_double_practice.cpp **** #include <vector>
   9:cpp_vector_double_practice.cpp **** 
  10:cpp_vector_double_practice.cpp **** #define LOG
  11:cpp_vector_double_practice.cpp **** 
  12:cpp_vector_double_practice.cpp **** class RowVector 
  13:cpp_vector_double_practice.cpp **** {
  14:cpp_vector_double_practice.cpp ****     // automatic allocation
  15:cpp_vector_double_practice.cpp ****     // https://stackoverflow.com/questions/8553464/vector-as-a-class-member
  16:cpp_vector_double_practice.cpp ****     std::vector<double> columns;
  17:cpp_vector_double_practice.cpp **** 
  18:cpp_vector_double_practice.cpp ****     protected:
  19:cpp_vector_double_practice.cpp ****         std::string name;
  20:cpp_vector_double_practice.cpp **** 
  21:cpp_vector_double_practice.cpp ****     public:
  22:cpp_vector_double_practice.cpp ****         // Default constructor
  23:cpp_vector_double_practice.cpp **** 		RowVector(){
  24:cpp_vector_double_practice.cpp **** #ifdef LOG
  25:cpp_vector_double_practice.cpp ****             std::cout << '[' << &columns << ']' << "RowVector()" << '\n';
  26:cpp_vector_double_practice.cpp **** #endif
  27:cpp_vector_double_practice.cpp ****             name = "None";
  28:cpp_vector_double_practice.cpp **** 		}
  29:cpp_vector_double_practice.cpp **** 
  30:cpp_vector_double_practice.cpp ****         ~ RowVector(){
  20              		.loc 1 30 0
  21              		.cfi_startproc
  22              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
  23              		.cfi_lsda 0x1b,.LLSDA1842
  24 0000 55       		pushq	%rbp
  25              		.cfi_def_cfa_offset 16
  26              		.cfi_offset 6, -16
  27 0001 4889E5   		movq	%rsp, %rbp
  28              		.cfi_def_cfa_register 6
  29 0004 4883EC10 		subq	$16, %rsp
  30 0008 48897DF8 		movq	%rdi, -8(%rbp)
  31              	.LBB2:
  31:cpp_vector_double_practice.cpp **** #ifdef LOG
  32:cpp_vector_double_practice.cpp ****             std::cout << '[' << &columns << ']' << "~ RowVector()" << '\n';
  32              		.loc 1 32 0
  33 000c BE5B0000 		movl	$91, %esi
  33      00
  34 0011 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
  34      000000
  35 0018 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
  35      00
  36 001d 4889C2   		movq	%rax, %rdx
  37 0020 488B45F8 		movq	-8(%rbp), %rax
  38 0024 4889C6   		movq	%rax, %rsi
  39 0027 4889D7   		movq	%rdx, %rdi
  40 002a E8000000 		call	_ZNSolsEPKv@PLT
  40      00
  41 002f BE5D0000 		movl	$93, %esi
  41      00
  42 0034 4889C7   		movq	%rax, %rdi
  43 0037 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
  43      00
  44 003c 488D3500 		leaq	.LC0(%rip), %rsi
  44      000000
  45 0043 4889C7   		movq	%rax, %rdi
  46 0046 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
  46      00
  47 004b BE0A0000 		movl	$10, %esi
  47      00
  48 0050 4889C7   		movq	%rax, %rdi
  49 0053 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
  49      00
  30:cpp_vector_double_practice.cpp **** #ifdef LOG
  50              		.loc 1 30 0
  51 0058 488B45F8 		movq	-8(%rbp), %rax
  52 005c 4883C018 		addq	$24, %rax
  53 0060 4889C7   		movq	%rax, %rdi
  54 0063 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
  54      00
  55 0068 488B45F8 		movq	-8(%rbp), %rax
  56 006c 4889C7   		movq	%rax, %rdi
  57 006f E8000000 		call	_ZNSt6vectorIdSaIdEED1Ev
  57      00
  58              	.LBE2:
  33:cpp_vector_double_practice.cpp **** #endif
  34:cpp_vector_double_practice.cpp ****         }
  59              		.loc 1 34 0
  60 0074 90       		nop
  61 0075 C9       		leave
  62              		.cfi_def_cfa 7, 8
  63 0076 C3       		ret
  64              		.cfi_endproc
  65              	.LFE1842:
  66              		.globl	__gxx_personality_v0
  67              		.section	.gcc_except_table._ZN9RowVectorD2Ev,"aG",@progbits,_ZN9RowVectorD5Ev,comdat
  68              	.LLSDA1842:
  69 0000 FF       		.byte	0xff
  70 0001 FF       		.byte	0xff
  71 0002 01       		.byte	0x1
  72 0003 00       		.uleb128 .LLSDACSE1842-.LLSDACSB1842
  73              	.LLSDACSB1842:
  74              	.LLSDACSE1842:
  75              		.section	.text._ZN9RowVectorD2Ev,"axG",@progbits,_ZN9RowVectorD5Ev,comdat
  77              		.weak	_ZN9RowVectorD1Ev
  78              		.set	_ZN9RowVectorD1Ev,_ZN9RowVectorD2Ev
  79              		.section	.rodata
  80              	.LC1:
  81 000f 526F7756 		.string	"RowVector("
  81      6563746F 
  81      722800
  82              	.LC2:
  83 001a 2C2000   		.string	", "
  84              	.LC3:
  85 001d 290A00   		.string	")\n"
  86              		.section	.text._ZN9RowVectorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbi
  87              		.align 2
  88              		.weak	_ZN9RowVectorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
  90              	_ZN9RowVectorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
  91              	.LFB1845:
  35:cpp_vector_double_practice.cpp **** 
  36:cpp_vector_double_practice.cpp ****         // Default arguments
  37:cpp_vector_double_practice.cpp ****         // If the function could not find the argument in the call, it uses the default value.
  38:cpp_vector_double_practice.cpp ****         RowVector(const uint32_t n, const double *values=NULL, std::string new_name="None");
  39:cpp_vector_double_practice.cpp **** 
  40:cpp_vector_double_practice.cpp ****         // Instead of implementing another constructor, reusing an existing one
  41:cpp_vector_double_practice.cpp ****         // c++ 11 or later
  42:cpp_vector_double_practice.cpp ****         RowVector(const uint32_t n, std::string new_name="None") : RowVector(n, NULL, new_name){
  92              		.loc 1 42 0
  93              		.cfi_startproc
  94              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
  95              		.cfi_lsda 0x1b,.LLSDA1845
  96 0000 55       		pushq	%rbp
  97              		.cfi_def_cfa_offset 16
  98              		.cfi_offset 6, -16
  99 0001 4889E5   		movq	%rsp, %rbp
 100              		.cfi_def_cfa_register 6
 101 0004 53       		pushq	%rbx
 102 0005 4883EC58 		subq	$88, %rsp
 103              		.cfi_offset 3, -24
 104 0009 48897DB8 		movq	%rdi, -72(%rbp)
 105 000d 8975B4   		movl	%esi, -76(%rbp)
 106 0010 488955A8 		movq	%rdx, -88(%rbp)
 107              		.loc 1 42 0
 108 0014 64488B04 		movq	%fs:40, %rax
 108      25280000 
 108      00
 109 001d 488945E8 		movq	%rax, -24(%rbp)
 110 0021 31C0     		xorl	%eax, %eax
 111              	.LBB3:
 112 0023 488B55A8 		movq	-88(%rbp), %rdx
 113 0027 488D45C0 		leaq	-64(%rbp), %rax
 114 002b 4889D6   		movq	%rdx, %rsi
 115 002e 4889C7   		movq	%rax, %rdi
 116              	.LEHB0:
 117 0031 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
 117      00
 118              	.LEHE0:
 119 0036 488D55C0 		leaq	-64(%rbp), %rdx
 120 003a 8B75B4   		movl	-76(%rbp), %esi
 121 003d 488B45B8 		movq	-72(%rbp), %rax
 122 0041 4889D1   		movq	%rdx, %rcx
 123 0044 BA000000 		movl	$0, %edx
 123      00
 124 0049 4889C7   		movq	%rax, %rdi
 125              	.LEHB1:
 126 004c E8000000 		call	_ZN9RowVectorC1EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 126      00
 127              	.LEHE1:
 128              		.loc 1 42 0 is_stmt 0 discriminator 2
 129 0051 488D45C0 		leaq	-64(%rbp), %rax
 130 0055 4889C7   		movq	%rax, %rdi
 131 0058 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 131      00
  43:cpp_vector_double_practice.cpp **** #ifdef LOG
  44:cpp_vector_double_practice.cpp ****             std::cout << '[' << &columns << ']' << "RowVector(" << n << ", " << new_name << ")\n";
 132              		.loc 1 44 0 is_stmt 1 discriminator 2
 133 005d BE5B0000 		movl	$91, %esi
 133      00
 134 0062 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 134      000000
 135              	.LEHB2:
 136 0069 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 136      00
 137 006e 4889C2   		movq	%rax, %rdx
 138 0071 488B45B8 		movq	-72(%rbp), %rax
 139 0075 4889C6   		movq	%rax, %rsi
 140 0078 4889D7   		movq	%rdx, %rdi
 141 007b E8000000 		call	_ZNSolsEPKv@PLT
 141      00
 142              		.loc 1 44 0 is_stmt 0 discriminator 1
 143 0080 BE5D0000 		movl	$93, %esi
 143      00
 144 0085 4889C7   		movq	%rax, %rdi
 145 0088 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 145      00
 146              		.loc 1 44 0 discriminator 2
 147 008d 488D3500 		leaq	.LC1(%rip), %rsi
 147      000000
 148 0094 4889C7   		movq	%rax, %rdi
 149 0097 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 149      00
 150              		.loc 1 44 0 discriminator 3
 151 009c 4889C2   		movq	%rax, %rdx
 152 009f 8B45B4   		movl	-76(%rbp), %eax
 153 00a2 89C6     		movl	%eax, %esi
 154 00a4 4889D7   		movq	%rdx, %rdi
 155 00a7 E8000000 		call	_ZNSolsEj@PLT
 155      00
 156              		.loc 1 44 0 discriminator 4
 157 00ac 488D3500 		leaq	.LC2(%rip), %rsi
 157      000000
 158 00b3 4889C7   		movq	%rax, %rdi
 159 00b6 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 159      00
 160              		.loc 1 44 0 discriminator 5
 161 00bb 4889C2   		movq	%rax, %rdx
 162 00be 488B45A8 		movq	-88(%rbp), %rax
 163 00c2 4889C6   		movq	%rax, %rsi
 164 00c5 4889D7   		movq	%rdx, %rdi
 165 00c8 E8000000 		call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5
 165      00
 166              		.loc 1 44 0 discriminator 6
 167 00cd 488D3500 		leaq	.LC3(%rip), %rsi
 167      000000
 168 00d4 4889C7   		movq	%rax, %rdi
 169 00d7 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 169      00
 170              	.LEHE2:
 171              	.LBE3:
  45:cpp_vector_double_practice.cpp **** #endif
  46:cpp_vector_double_practice.cpp ****         }
 172              		.loc 1 46 0 is_stmt 1
 173 00dc EB34     		jmp	.L8
 174              	.L6:
 175 00de 4889C3   		movq	%rax, %rbx
 176              	.LBB4:
  42:cpp_vector_double_practice.cpp **** #ifdef LOG
 177              		.loc 1 42 0
 178 00e1 488D45C0 		leaq	-64(%rbp), %rax
 179 00e5 4889C7   		movq	%rax, %rdi
 180 00e8 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 180      00
 181 00ed 4889D8   		movq	%rbx, %rax
 182 00f0 4889C7   		movq	%rax, %rdi
 183              	.LEHB3:
 184 00f3 E8000000 		call	_Unwind_Resume@PLT
 184      00
 185              	.L7:
 186 00f8 4889C3   		movq	%rax, %rbx
 187 00fb 488B45B8 		movq	-72(%rbp), %rax
 188 00ff 4889C7   		movq	%rax, %rdi
 189 0102 E8000000 		call	_ZN9RowVectorD1Ev
 189      00
 190 0107 4889D8   		movq	%rbx, %rax
 191 010a 4889C7   		movq	%rax, %rdi
 192 010d E8000000 		call	_Unwind_Resume@PLT
 192      00
 193              	.LEHE3:
 194              	.L8:
 195              	.LBE4:
 196              		.loc 1 46 0
 197 0112 488B45E8 		movq	-24(%rbp), %rax
 198 0116 64483304 		xorq	%fs:40, %rax
 198      25280000 
 198      00
 199 011f 7405     		je	.L5
 200 0121 E8000000 		call	__stack_chk_fail@PLT
 200      00
 201              	.L5:
 202 0126 4883C458 		addq	$88, %rsp
 203 012a 5B       		popq	%rbx
 204 012b 5D       		popq	%rbp
 205              		.cfi_def_cfa 7, 8
 206 012c C3       		ret
 207              		.cfi_endproc
 208              	.LFE1845:
 209              		.section	.gcc_except_table._ZN9RowVectorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"
 210              	.LLSDA1845:
 211 0000 FF       		.byte	0xff
 212 0001 FF       		.byte	0xff
 213 0002 01       		.byte	0x1
 214 0003 13       		.uleb128 .LLSDACSE1845-.LLSDACSB1845
 215              	.LLSDACSB1845:
 216 0004 31       		.uleb128 .LEHB0-.LFB1845
 217 0005 05       		.uleb128 .LEHE0-.LEHB0
 218 0006 00       		.uleb128 0
 219 0007 00       		.uleb128 0
 220 0008 4C       		.uleb128 .LEHB1-.LFB1845
 221 0009 05       		.uleb128 .LEHE1-.LEHB1
 222 000a DE01     		.uleb128 .L6-.LFB1845
 223 000c 00       		.uleb128 0
 224 000d 69       		.uleb128 .LEHB2-.LFB1845
 225 000e 73       		.uleb128 .LEHE2-.LEHB2
 226 000f F801     		.uleb128 .L7-.LFB1845
 227 0011 00       		.uleb128 0
 228 0012 F301     		.uleb128 .LEHB3-.LFB1845
 229 0014 1F       		.uleb128 .LEHE3-.LEHB3
 230 0015 00       		.uleb128 0
 231 0016 00       		.uleb128 0
 232              	.LLSDACSE1845:
 233              		.section	.text._ZN9RowVectorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbi
 235              		.weak	_ZN9RowVectorC1EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 236              		.set	_ZN9RowVectorC1EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,_ZN9RowVectorC2EjNSt7__
 237              		.section	.rodata
 238              	.LC4:
 239 0020 646F7562 		.string	"double & operator [] ("
 239      6C652026 
 239      206F7065 
 239      7261746F 
 239      72205B5D 
 240              		.section	.text._ZN9RowVectorixEj,"axG",@progbits,_ZN9RowVectorixEj,comdat
 241              		.align 2
 242              		.weak	_ZN9RowVectorixEj
 244              	_ZN9RowVectorixEj:
 245              	.LFB1847:
  47:cpp_vector_double_practice.cpp **** 
  48:cpp_vector_double_practice.cpp ****         RowVector(const RowVector & other);
  49:cpp_vector_double_practice.cpp **** 
  50:cpp_vector_double_practice.cpp ****         double & operator [] (const uint32_t i){
 246              		.loc 1 50 0
 247              		.cfi_startproc
 248 0000 55       		pushq	%rbp
 249              		.cfi_def_cfa_offset 16
 250              		.cfi_offset 6, -16
 251 0001 4889E5   		movq	%rsp, %rbp
 252              		.cfi_def_cfa_register 6
 253 0004 4883EC10 		subq	$16, %rsp
 254 0008 48897DF8 		movq	%rdi, -8(%rbp)
 255 000c 8975F4   		movl	%esi, -12(%rbp)
  51:cpp_vector_double_practice.cpp **** #ifdef LOG
  52:cpp_vector_double_practice.cpp ****             std::cout << '[' << &columns << ']' << "double & operator [] (" << i << ")\n";
 256              		.loc 1 52 0
 257 000f BE5B0000 		movl	$91, %esi
 257      00
 258 0014 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 258      000000
 259 001b E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 259      00
 260 0020 4889C2   		movq	%rax, %rdx
 261 0023 488B45F8 		movq	-8(%rbp), %rax
 262 0027 4889C6   		movq	%rax, %rsi
 263 002a 4889D7   		movq	%rdx, %rdi
 264 002d E8000000 		call	_ZNSolsEPKv@PLT
 264      00
 265 0032 BE5D0000 		movl	$93, %esi
 265      00
 266 0037 4889C7   		movq	%rax, %rdi
 267 003a E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 267      00
 268 003f 488D3500 		leaq	.LC4(%rip), %rsi
 268      000000
 269 0046 4889C7   		movq	%rax, %rdi
 270 0049 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 270      00
 271 004e 4889C2   		movq	%rax, %rdx
 272 0051 8B45F4   		movl	-12(%rbp), %eax
 273 0054 89C6     		movl	%eax, %esi
 274 0056 4889D7   		movq	%rdx, %rdi
 275 0059 E8000000 		call	_ZNSolsEj@PLT
 275      00
 276 005e 488D3500 		leaq	.LC3(%rip), %rsi
 276      000000
 277 0065 4889C7   		movq	%rax, %rdi
 278 0068 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 278      00
  53:cpp_vector_double_practice.cpp **** #endif
  54:cpp_vector_double_practice.cpp ****             // Return reference; otherwise, unable to assign
  55:cpp_vector_double_practice.cpp ****             return columns[i];
 279              		.loc 1 55 0
 280 006d 8B55F4   		movl	-12(%rbp), %edx
 281 0070 488B45F8 		movq	-8(%rbp), %rax
 282 0074 4889D6   		movq	%rdx, %rsi
 283 0077 4889C7   		movq	%rax, %rdi
 284 007a E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 284      00
  56:cpp_vector_double_practice.cpp ****         }
 285              		.loc 1 56 0
 286 007f C9       		leave
 287              		.cfi_def_cfa 7, 8
 288 0080 C3       		ret
 289              		.cfi_endproc
 290              	.LFE1847:
 292              		.section	.rodata
 293              	.LC5:
 294 0037 526F7756 		.string	"RowVector operator + ("
 294      6563746F 
 294      72206F70 
 294      65726174 
 294      6F72202B 
 295 004e 0000     		.align 8
 296              	.LC6:
 297 0050 6370705F 		.string	"cpp_vector_double_practice.cpp"
 297      76656374 
 297      6F725F64 
 297      6F75626C 
 297      655F7072 
 298 006f 00       		.align 8
 299              	.LC7:
 300 0070 636F6C75 		.string	"columns.size() == other.columns.size()"
 300      6D6E732E 
 300      73697A65 
 300      2829203D 
 300      3D206F74 
 301              		.section	.text._ZN9RowVectorplERKS_,"axG",@progbits,_ZN9RowVectorplERKS_,comdat
 302              		.align 2
 303              		.weak	_ZN9RowVectorplERKS_
 305              	_ZN9RowVectorplERKS_:
 306              	.LFB1849:
  57:cpp_vector_double_practice.cpp **** 
  58:cpp_vector_double_practice.cpp ****         const std::string get_name(){
  59:cpp_vector_double_practice.cpp **** #ifdef LOG
  60:cpp_vector_double_practice.cpp ****             std::cout << '[' << &columns << ']' << "void show()\n";
  61:cpp_vector_double_practice.cpp **** #endif
  62:cpp_vector_double_practice.cpp ****             // Return constant; to prevent change
  63:cpp_vector_double_practice.cpp ****             return name;
  64:cpp_vector_double_practice.cpp ****         }
  65:cpp_vector_double_practice.cpp **** 
  66:cpp_vector_double_practice.cpp ****         RowVector operator + (const RowVector & other){
 307              		.loc 1 66 0
 308              		.cfi_startproc
 309              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 310              		.cfi_lsda 0x1b,.LLSDA1849
 311 0000 55       		pushq	%rbp
 312              		.cfi_def_cfa_offset 16
 313              		.cfi_offset 6, -16
 314 0001 4889E5   		movq	%rsp, %rbp
 315              		.cfi_def_cfa_register 6
 316 0004 53       		pushq	%rbx
 317 0005 4883EC38 		subq	$56, %rsp
 318              		.cfi_offset 3, -24
 319 0009 48897DD8 		movq	%rdi, -40(%rbp)
 320 000d 488975D0 		movq	%rsi, -48(%rbp)
 321 0011 488955C8 		movq	%rdx, -56(%rbp)
 322              		.loc 1 66 0
 323 0015 64488B04 		movq	%fs:40, %rax
 323      25280000 
 323      00
 324 001e 488945E8 		movq	%rax, -24(%rbp)
 325 0022 31C0     		xorl	%eax, %eax
  67:cpp_vector_double_practice.cpp **** #ifdef LOG
  68:cpp_vector_double_practice.cpp ****             std::cout << '[' << &columns << ']' << "RowVector operator + (" << & other << ")\n";
 326              		.loc 1 68 0
 327 0024 BE5B0000 		movl	$91, %esi
 327      00
 328 0029 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 328      000000
 329              	.LEHB4:
 330 0030 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 330      00
 331 0035 4889C2   		movq	%rax, %rdx
 332 0038 488B45D0 		movq	-48(%rbp), %rax
 333 003c 4889C6   		movq	%rax, %rsi
 334 003f 4889D7   		movq	%rdx, %rdi
 335 0042 E8000000 		call	_ZNSolsEPKv@PLT
 335      00
 336 0047 BE5D0000 		movl	$93, %esi
 336      00
 337 004c 4889C7   		movq	%rax, %rdi
 338 004f E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 338      00
 339 0054 488D3500 		leaq	.LC5(%rip), %rsi
 339      000000
 340 005b 4889C7   		movq	%rax, %rdi
 341 005e E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 341      00
 342 0063 4889C2   		movq	%rax, %rdx
 343 0066 488B45C8 		movq	-56(%rbp), %rax
 344 006a 4889C6   		movq	%rax, %rsi
 345 006d 4889D7   		movq	%rdx, %rdi
 346 0070 E8000000 		call	_ZNSolsEPKv@PLT
 346      00
 347 0075 488D3500 		leaq	.LC3(%rip), %rsi
 347      000000
 348 007c 4889C7   		movq	%rax, %rdi
 349 007f E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 349      00
  69:cpp_vector_double_practice.cpp **** #endif
  70:cpp_vector_double_practice.cpp ****             // Check size
  71:cpp_vector_double_practice.cpp ****             assert(columns.size() == other.columns.size());
 350              		.loc 1 71 0
 351 0084 488B45D0 		movq	-48(%rbp), %rax
 352 0088 4889C7   		movq	%rax, %rdi
 353 008b E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 353      00
 354 0090 4889C3   		movq	%rax, %rbx
 355 0093 488B45C8 		movq	-56(%rbp), %rax
 356 0097 4889C7   		movq	%rax, %rdi
 357 009a E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 357      00
 358 009f 4839C3   		cmpq	%rax, %rbx
 359 00a2 741F     		je	.L12
 360              		.loc 1 71 0 is_stmt 0 discriminator 1
 361 00a4 488D0D00 		leaq	_ZZN9RowVectorplERKS_E19__PRETTY_FUNCTION__(%rip), %rcx
 361      000000
 362 00ab BA470000 		movl	$71, %edx
 362      00
 363 00b0 488D3500 		leaq	.LC6(%rip), %rsi
 363      000000
 364 00b7 488D3D00 		leaq	.LC7(%rip), %rdi
 364      000000
 365 00be E8000000 		call	__assert_fail@PLT
 365      00
 366              	.L12:
  72:cpp_vector_double_practice.cpp **** 
  73:cpp_vector_double_practice.cpp ****             // Make a new vector to return
  74:cpp_vector_double_practice.cpp ****             RowVector temp(other);
 367              		.loc 1 74 0 is_stmt 1
 368 00c3 488B55C8 		movq	-56(%rbp), %rdx
 369 00c7 488B45D8 		movq	-40(%rbp), %rax
 370 00cb 4889D6   		movq	%rdx, %rsi
 371 00ce 4889C7   		movq	%rax, %rdi
 372 00d1 E8000000 		call	_ZN9RowVectorC1ERKS_
 372      00
 373              	.LEHE4:
 374              	.LBB5:
  75:cpp_vector_double_practice.cpp **** 
  76:cpp_vector_double_practice.cpp ****             // Element loop
  77:cpp_vector_double_practice.cpp ****             for (uint32_t i=0; columns.size() > i; ++i){
 375              		.loc 1 77 0
 376 00d6 C745E400 		movl	$0, -28(%rbp)
 376      000000
 377              	.L14:
 378              		.loc 1 77 0 is_stmt 0 discriminator 2
 379 00dd 488B45D0 		movq	-48(%rbp), %rax
 380 00e1 4889C7   		movq	%rax, %rdi
 381 00e4 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 381      00
 382 00e9 4889C2   		movq	%rax, %rdx
 383 00ec 8B45E4   		movl	-28(%rbp), %eax
 384 00ef 4839C2   		cmpq	%rax, %rdx
 385 00f2 0F97C0   		seta	%al
 386 00f5 84C0     		testb	%al, %al
 387 00f7 7459     		je	.L19
  78:cpp_vector_double_practice.cpp ****                 temp[i] += columns[i];
 388              		.loc 1 78 0 is_stmt 1
 389 00f9 8B55E4   		movl	-28(%rbp), %edx
 390 00fc 488B45D0 		movq	-48(%rbp), %rax
 391 0100 4889D6   		movq	%rdx, %rsi
 392 0103 4889C7   		movq	%rax, %rdi
 393 0106 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 393      00
 394 010b F20F1008 		movsd	(%rax), %xmm1
 395 010f F20F114D 		movsd	%xmm1, -64(%rbp)
 395      C0
 396 0114 8B55E4   		movl	-28(%rbp), %edx
 397 0117 488B45D8 		movq	-40(%rbp), %rax
 398 011b 89D6     		movl	%edx, %esi
 399 011d 4889C7   		movq	%rax, %rdi
 400              	.LEHB5:
 401 0120 E8000000 		call	_ZN9RowVectorixEj
 401      00
 402              	.LEHE5:
 403              		.loc 1 78 0 is_stmt 0 discriminator 1
 404 0125 F20F1000 		movsd	(%rax), %xmm0
 405 0129 F20F5845 		addsd	-64(%rbp), %xmm0
 405      C0
 406 012e F20F1100 		movsd	%xmm0, (%rax)
  77:cpp_vector_double_practice.cpp ****                 temp[i] += columns[i];
 407              		.loc 1 77 0 is_stmt 1 discriminator 1
 408 0132 8345E401 		addl	$1, -28(%rbp)
 409 0136 EBA5     		jmp	.L14
 410              	.L18:
 411 0138 4889C3   		movq	%rax, %rbx
 412              	.LBE5:
 413 013b 488B45D8 		movq	-40(%rbp), %rax
 414 013f 4889C7   		movq	%rax, %rdi
 415 0142 E8000000 		call	_ZN9RowVectorD1Ev
 415      00
 416 0147 4889D8   		movq	%rbx, %rax
 417 014a 4889C7   		movq	%rax, %rdi
 418              	.LEHB6:
 419 014d E8000000 		call	_Unwind_Resume@PLT
 419      00
 420              	.LEHE6:
 421              	.L19:
  79:cpp_vector_double_practice.cpp ****             }
  80:cpp_vector_double_practice.cpp **** 
  81:cpp_vector_double_practice.cpp ****             // Returning a temporary image
  82:cpp_vector_double_practice.cpp ****             return temp;
 422              		.loc 1 82 0
 423 0152 90       		nop
  83:cpp_vector_double_practice.cpp ****         }
 424              		.loc 1 83 0
 425 0153 488B45D8 		movq	-40(%rbp), %rax
 426 0157 488B4DE8 		movq	-24(%rbp), %rcx
 427 015b 6448330C 		xorq	%fs:40, %rcx
 427      25280000 
 427      00
 428 0164 7405     		je	.L17
 429 0166 E8000000 		call	__stack_chk_fail@PLT
 429      00
 430              	.L17:
 431 016b 4883C438 		addq	$56, %rsp
 432 016f 5B       		popq	%rbx
 433 0170 5D       		popq	%rbp
 434              		.cfi_def_cfa 7, 8
 435 0171 C3       		ret
 436              		.cfi_endproc
 437              	.LFE1849:
 438              		.section	.gcc_except_table._ZN9RowVectorplERKS_,"aG",@progbits,_ZN9RowVectorplERKS_,comdat
 439              	.LLSDA1849:
 440 0000 FF       		.byte	0xff
 441 0001 FF       		.byte	0xff
 442 0002 01       		.byte	0x1
 443 0003 10       		.uleb128 .LLSDACSE1849-.LLSDACSB1849
 444              	.LLSDACSB1849:
 445 0004 30       		.uleb128 .LEHB4-.LFB1849
 446 0005 A601     		.uleb128 .LEHE4-.LEHB4
 447 0007 00       		.uleb128 0
 448 0008 00       		.uleb128 0
 449 0009 A002     		.uleb128 .LEHB5-.LFB1849
 450 000b 05       		.uleb128 .LEHE5-.LEHB5
 451 000c B802     		.uleb128 .L18-.LFB1849
 452 000e 00       		.uleb128 0
 453 000f CD02     		.uleb128 .LEHB6-.LFB1849
 454 0011 05       		.uleb128 .LEHE6-.LEHB6
 455 0012 00       		.uleb128 0
 456 0013 00       		.uleb128 0
 457              	.LLSDACSE1849:
 458              		.section	.text._ZN9RowVectorplERKS_,"axG",@progbits,_ZN9RowVectorplERKS_,comdat
 460              		.text
 461              		.align 2
 462              		.globl	_ZN9RowVectorC2EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 464              	_ZN9RowVectorC2EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
 465              	.LFB1851:
  84:cpp_vector_double_practice.cpp **** 
  85:cpp_vector_double_practice.cpp ****         RowVector operator * (const double a);
  86:cpp_vector_double_practice.cpp **** 
  87:cpp_vector_double_practice.cpp ****         const double operator * (const RowVector & other);
  88:cpp_vector_double_practice.cpp **** 
  89:cpp_vector_double_practice.cpp ****         void show();
  90:cpp_vector_double_practice.cpp **** };
  91:cpp_vector_double_practice.cpp **** 
  92:cpp_vector_double_practice.cpp **** 
  93:cpp_vector_double_practice.cpp **** RowVector::RowVector(const uint32_t n, const double *values, std::string new_name){
 466              		.loc 1 93 0
 467              		.cfi_startproc
 468              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 469              		.cfi_lsda 0x1b,.LLSDA1851
 470 0000 55       		pushq	%rbp
 471              		.cfi_def_cfa_offset 16
 472              		.cfi_offset 6, -16
 473 0001 4889E5   		movq	%rsp, %rbp
 474              		.cfi_def_cfa_register 6
 475 0004 53       		pushq	%rbx
 476 0005 4883EC38 		subq	$56, %rsp
 477              		.cfi_offset 3, -24
 478 0009 48897DD8 		movq	%rdi, -40(%rbp)
 479 000d 8975D4   		movl	%esi, -44(%rbp)
 480 0010 488955C8 		movq	%rdx, -56(%rbp)
 481 0014 48894DC0 		movq	%rcx, -64(%rbp)
 482              	.LBB6:
 483              		.loc 1 93 0
 484 0018 488B45D8 		movq	-40(%rbp), %rax
 485 001c 4889C7   		movq	%rax, %rdi
 486 001f E8000000 		call	_ZNSt6vectorIdSaIdEEC1Ev
 486      00
 487 0024 488B45D8 		movq	-40(%rbp), %rax
 488 0028 4883C018 		addq	$24, %rax
 489 002c 4889C7   		movq	%rax, %rdi
 490 002f E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
 490      00
 491              	.LBB7:
  94:cpp_vector_double_practice.cpp **** #ifdef LOG
  95:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' 
 492              		.loc 1 95 0
 493 0034 BE5B0000 		movl	$91, %esi
 493      00
 494 0039 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 494      000000
 495              	.LEHB7:
 496 0040 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 496      00
 497 0045 4889C2   		movq	%rax, %rdx
 498 0048 488B45D8 		movq	-40(%rbp), %rax
 499 004c 4889C6   		movq	%rax, %rsi
 500 004f 4889D7   		movq	%rdx, %rdi
 501 0052 E8000000 		call	_ZNSolsEPKv@PLT
 501      00
  96:cpp_vector_double_practice.cpp ****     << "RowVector(" << n << ", " << values << ", " << new_name << ")\n";
 502              		.loc 1 96 0 discriminator 1
 503 0057 BE5D0000 		movl	$93, %esi
 503      00
 504 005c 4889C7   		movq	%rax, %rdi
 505 005f E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 505      00
 506              		.loc 1 96 0 is_stmt 0 discriminator 2
 507 0064 488D3500 		leaq	.LC1(%rip), %rsi
 507      000000
 508 006b 4889C7   		movq	%rax, %rdi
 509 006e E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 509      00
 510              		.loc 1 96 0 discriminator 1
 511 0073 4889C2   		movq	%rax, %rdx
 512 0076 8B45D4   		movl	-44(%rbp), %eax
 513 0079 89C6     		movl	%eax, %esi
 514 007b 4889D7   		movq	%rdx, %rdi
 515 007e E8000000 		call	_ZNSolsEj@PLT
 515      00
 516              		.loc 1 96 0 discriminator 2
 517 0083 488D3500 		leaq	.LC2(%rip), %rsi
 517      000000
 518 008a 4889C7   		movq	%rax, %rdi
 519 008d E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 519      00
 520              		.loc 1 96 0 discriminator 3
 521 0092 4889C2   		movq	%rax, %rdx
 522 0095 488B45C8 		movq	-56(%rbp), %rax
 523 0099 4889C6   		movq	%rax, %rsi
 524 009c 4889D7   		movq	%rdx, %rdi
 525 009f E8000000 		call	_ZNSolsEPKv@PLT
 525      00
 526              		.loc 1 96 0 discriminator 4
 527 00a4 488D3500 		leaq	.LC2(%rip), %rsi
 527      000000
 528 00ab 4889C7   		movq	%rax, %rdi
 529 00ae E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 529      00
 530              		.loc 1 96 0 discriminator 5
 531 00b3 4889C2   		movq	%rax, %rdx
 532 00b6 488B45C0 		movq	-64(%rbp), %rax
 533 00ba 4889C6   		movq	%rax, %rsi
 534 00bd 4889D7   		movq	%rdx, %rdi
 535 00c0 E8000000 		call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5
 535      00
 536              		.loc 1 96 0 discriminator 6
 537 00c5 488D3500 		leaq	.LC3(%rip), %rsi
 537      000000
 538 00cc 4889C7   		movq	%rax, %rdi
 539 00cf E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 539      00
  97:cpp_vector_double_practice.cpp **** #endif
  98:cpp_vector_double_practice.cpp ****     columns.resize(n);
 540              		.loc 1 98 0 is_stmt 1
 541 00d4 488B45D8 		movq	-40(%rbp), %rax
 542 00d8 8B55D4   		movl	-44(%rbp), %edx
 543 00db 4889D6   		movq	%rdx, %rsi
 544 00de 4889C7   		movq	%rax, %rdi
 545 00e1 E8000000 		call	_ZNSt6vectorIdSaIdEE6resizeEm
 545      00
 546              	.LBB8:
  99:cpp_vector_double_practice.cpp **** 
 100:cpp_vector_double_practice.cpp ****     // If initial values available, copy
 101:cpp_vector_double_practice.cpp ****     if (values){
 547              		.loc 1 101 0
 548 00e6 48837DC8 		cmpq	$0, -56(%rbp)
 548      00
 549 00eb 7456     		je	.L21
 550              	.LBB9:
 551              	.LBB10:
 102:cpp_vector_double_practice.cpp ****         for (uint32_t i = 0; columns.size() > i; ++i){
 552              		.loc 1 102 0
 553 00ed C745E800 		movl	$0, -24(%rbp)
 553      000000
 554              	.L23:
 555              		.loc 1 102 0 is_stmt 0 discriminator 3
 556 00f4 488B45D8 		movq	-40(%rbp), %rax
 557 00f8 4889C7   		movq	%rax, %rdi
 558 00fb E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 558      00
 559 0100 4889C2   		movq	%rax, %rdx
 560 0103 8B45E8   		movl	-24(%rbp), %eax
 561 0106 4839C2   		cmpq	%rax, %rdx
 562 0109 0F97C0   		seta	%al
 563 010c 84C0     		testb	%al, %al
 564 010e 7476     		je	.L24
 103:cpp_vector_double_practice.cpp ****             columns[i] = values[i];
 565              		.loc 1 103 0 is_stmt 1 discriminator 2
 566 0110 8B45E8   		movl	-24(%rbp), %eax
 567 0113 488D14C5 		leaq	0(,%rax,8), %rdx
 567      00000000 
 568 011b 488B45C8 		movq	-56(%rbp), %rax
 569 011f 488D1C02 		leaq	(%rdx,%rax), %rbx
 570 0123 8B55E8   		movl	-24(%rbp), %edx
 571 0126 488B45D8 		movq	-40(%rbp), %rax
 572 012a 4889D6   		movq	%rdx, %rsi
 573 012d 4889C7   		movq	%rax, %rdi
 574 0130 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 574      00
 575 0135 F20F1003 		movsd	(%rbx), %xmm0
 576 0139 F20F1100 		movsd	%xmm0, (%rax)
 102:cpp_vector_double_practice.cpp ****         for (uint32_t i = 0; columns.size() > i; ++i){
 577              		.loc 1 102 0 discriminator 2
 578 013d 8345E801 		addl	$1, -24(%rbp)
 579 0141 EBB1     		jmp	.L23
 580              	.L21:
 581              	.LBE10:
 582              	.LBE9:
 583              	.LBB11:
 584              	.LBB12:
 104:cpp_vector_double_practice.cpp ****         }
 105:cpp_vector_double_practice.cpp ****     }
 106:cpp_vector_double_practice.cpp ****     // If no initial values, set all values zero
 107:cpp_vector_double_practice.cpp ****     else{
 108:cpp_vector_double_practice.cpp ****         for (uint32_t i = 0; columns.size() > i; ++i){
 585              		.loc 1 108 0
 586 0143 C745EC00 		movl	$0, -20(%rbp)
 586      000000
 587              	.L25:
 588              		.loc 1 108 0 is_stmt 0 discriminator 3
 589 014a 488B45D8 		movq	-40(%rbp), %rax
 590 014e 4889C7   		movq	%rax, %rdi
 591 0151 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 591      00
 592 0156 4889C2   		movq	%rax, %rdx
 593 0159 8B45EC   		movl	-20(%rbp), %eax
 594 015c 4839C2   		cmpq	%rax, %rdx
 595 015f 0F97C0   		seta	%al
 596 0162 84C0     		testb	%al, %al
 597 0164 7420     		je	.L24
 109:cpp_vector_double_practice.cpp ****             columns[i] = 0.0;
 598              		.loc 1 109 0 is_stmt 1 discriminator 2
 599 0166 8B55EC   		movl	-20(%rbp), %edx
 600 0169 488B45D8 		movq	-40(%rbp), %rax
 601 016d 4889D6   		movq	%rdx, %rsi
 602 0170 4889C7   		movq	%rax, %rdi
 603 0173 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 603      00
 604 0178 660FEFC0 		pxor	%xmm0, %xmm0
 605 017c F20F1100 		movsd	%xmm0, (%rax)
 108:cpp_vector_double_practice.cpp ****             columns[i] = 0.0;
 606              		.loc 1 108 0 discriminator 2
 607 0180 8345EC01 		addl	$1, -20(%rbp)
 608 0184 EBC4     		jmp	.L25
 609              	.L24:
 610              	.LBE12:
 611              	.LBE11:
 612              	.LBE8:
 110:cpp_vector_double_practice.cpp ****         }
 111:cpp_vector_double_practice.cpp ****     }
 112:cpp_vector_double_practice.cpp **** 
 113:cpp_vector_double_practice.cpp ****     name = new_name;
 613              		.loc 1 113 0
 614 0186 488B45D8 		movq	-40(%rbp), %rax
 615 018a 488D5018 		leaq	24(%rax), %rdx
 616 018e 488B45C0 		movq	-64(%rbp), %rax
 617 0192 4889C6   		movq	%rax, %rsi
 618 0195 4889D7   		movq	%rdx, %rdi
 619 0198 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
 619      00
 620              	.LEHE7:
 621              	.LBE7:
 622              	.LBE6:
 114:cpp_vector_double_practice.cpp **** }
 623              		.loc 1 114 0
 624 019d EB2A     		jmp	.L28
 625              	.L27:
 626 019f 4889C3   		movq	%rax, %rbx
 627              	.LBB13:
  93:cpp_vector_double_practice.cpp **** #ifdef LOG
 628              		.loc 1 93 0
 629 01a2 488B45D8 		movq	-40(%rbp), %rax
 630 01a6 4883C018 		addq	$24, %rax
 631 01aa 4889C7   		movq	%rax, %rdi
 632 01ad E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 632      00
 633 01b2 488B45D8 		movq	-40(%rbp), %rax
 634 01b6 4889C7   		movq	%rax, %rdi
 635 01b9 E8000000 		call	_ZNSt6vectorIdSaIdEED1Ev
 635      00
 636 01be 4889D8   		movq	%rbx, %rax
 637 01c1 4889C7   		movq	%rax, %rdi
 638              	.LEHB8:
 639 01c4 E8000000 		call	_Unwind_Resume@PLT
 639      00
 640              	.LEHE8:
 641              	.L28:
 642              	.LBE13:
 643              		.loc 1 114 0
 644 01c9 4883C438 		addq	$56, %rsp
 645 01cd 5B       		popq	%rbx
 646 01ce 5D       		popq	%rbp
 647              		.cfi_def_cfa 7, 8
 648 01cf C3       		ret
 649              		.cfi_endproc
 650              	.LFE1851:
 651              		.section	.gcc_except_table,"a",@progbits
 652              	.LLSDA1851:
 653 0000 FF       		.byte	0xff
 654 0001 FF       		.byte	0xff
 655 0002 01       		.byte	0x1
 656 0003 0B       		.uleb128 .LLSDACSE1851-.LLSDACSB1851
 657              	.LLSDACSB1851:
 658 0004 40       		.uleb128 .LEHB7-.LFB1851
 659 0005 DD02     		.uleb128 .LEHE7-.LEHB7
 660 0007 9F03     		.uleb128 .L27-.LFB1851
 661 0009 00       		.uleb128 0
 662 000a C403     		.uleb128 .LEHB8-.LFB1851
 663 000c 05       		.uleb128 .LEHE8-.LEHB8
 664 000d 00       		.uleb128 0
 665 000e 00       		.uleb128 0
 666              	.LLSDACSE1851:
 667              		.text
 669              		.globl	_ZN9RowVectorC1EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 670              		.set	_ZN9RowVectorC1EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,_ZN9RowVectorC2EjPKd
 671              		.section	.rodata
 672              	.LC9:
 673 0097 3200     		.string	"2"
 674              		.text
 675              		.align 2
 676              		.globl	_ZN9RowVectorC2ERKS_
 678              	_ZN9RowVectorC2ERKS_:
 679              	.LFB1854:
 115:cpp_vector_double_practice.cpp **** 
 116:cpp_vector_double_practice.cpp **** 
 117:cpp_vector_double_practice.cpp **** RowVector::RowVector(const RowVector & other){
 680              		.loc 1 117 0
 681              		.cfi_startproc
 682              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 683              		.cfi_lsda 0x1b,.LLSDA1854
 684 01d0 55       		pushq	%rbp
 685              		.cfi_def_cfa_offset 16
 686              		.cfi_offset 6, -16
 687 01d1 4889E5   		movq	%rsp, %rbp
 688              		.cfi_def_cfa_register 6
 689 01d4 53       		pushq	%rbx
 690 01d5 4883EC28 		subq	$40, %rsp
 691              		.cfi_offset 3, -24
 692 01d9 48897DD8 		movq	%rdi, -40(%rbp)
 693 01dd 488975D0 		movq	%rsi, -48(%rbp)
 694              	.LBB14:
 695              		.loc 1 117 0
 696 01e1 488B45D8 		movq	-40(%rbp), %rax
 697 01e5 4889C7   		movq	%rax, %rdi
 698 01e8 E8000000 		call	_ZNSt6vectorIdSaIdEEC1Ev
 698      00
 699 01ed 488B45D8 		movq	-40(%rbp), %rax
 700 01f1 4883C018 		addq	$24, %rax
 701 01f5 4889C7   		movq	%rax, %rdi
 702 01f8 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
 702      00
 703              	.LBB15:
 118:cpp_vector_double_practice.cpp **** #ifdef LOG
 119:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "RowVector(" << & other << ")\n";
 704              		.loc 1 119 0
 705 01fd BE5B0000 		movl	$91, %esi
 705      00
 706 0202 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 706      000000
 707              	.LEHB9:
 708 0209 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 708      00
 709 020e 4889C2   		movq	%rax, %rdx
 710 0211 488B45D8 		movq	-40(%rbp), %rax
 711 0215 4889C6   		movq	%rax, %rsi
 712 0218 4889D7   		movq	%rdx, %rdi
 713 021b E8000000 		call	_ZNSolsEPKv@PLT
 713      00
 714              		.loc 1 119 0 is_stmt 0 discriminator 1
 715 0220 BE5D0000 		movl	$93, %esi
 715      00
 716 0225 4889C7   		movq	%rax, %rdi
 717 0228 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 717      00
 718              		.loc 1 119 0 discriminator 2
 719 022d 488D3500 		leaq	.LC1(%rip), %rsi
 719      000000
 720 0234 4889C7   		movq	%rax, %rdi
 721 0237 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 721      00
 722              		.loc 1 119 0 discriminator 3
 723 023c 4889C2   		movq	%rax, %rdx
 724 023f 488B45D0 		movq	-48(%rbp), %rax
 725 0243 4889C6   		movq	%rax, %rsi
 726 0246 4889D7   		movq	%rdx, %rdi
 727 0249 E8000000 		call	_ZNSolsEPKv@PLT
 727      00
 728              		.loc 1 119 0 discriminator 4
 729 024e 488D3500 		leaq	.LC3(%rip), %rsi
 729      000000
 730 0255 4889C7   		movq	%rax, %rdi
 731 0258 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 731      00
 120:cpp_vector_double_practice.cpp **** #endif
 121:cpp_vector_double_practice.cpp ****     // https://codereview.stackexchange.com/questions/149669/c-operator-overloading-for-matrix-oper
 122:cpp_vector_double_practice.cpp ****     // http://www.cplusplus.com/reference/vector/vector/resize/
 123:cpp_vector_double_practice.cpp ****     columns.resize(other.columns.size());
 732              		.loc 1 123 0 is_stmt 1
 733 025d 488B5DD8 		movq	-40(%rbp), %rbx
 734 0261 488B45D0 		movq	-48(%rbp), %rax
 735 0265 4889C7   		movq	%rax, %rdi
 736 0268 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 736      00
 737 026d 4889C6   		movq	%rax, %rsi
 738 0270 4889DF   		movq	%rbx, %rdi
 739 0273 E8000000 		call	_ZNSt6vectorIdSaIdEE6resizeEm
 739      00
 740              	.LBB16:
 124:cpp_vector_double_practice.cpp ****     for(uint32_t i=0; columns.size() > i; ++i){
 741              		.loc 1 124 0
 742 0278 C745EC00 		movl	$0, -20(%rbp)
 742      000000
 743              	.L31:
 744              		.loc 1 124 0 is_stmt 0 discriminator 3
 745 027f 488B45D8 		movq	-40(%rbp), %rax
 746 0283 4889C7   		movq	%rax, %rdi
 747 0286 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 747      00
 748 028b 4889C2   		movq	%rax, %rdx
 749 028e 8B45EC   		movl	-20(%rbp), %eax
 750 0291 4839C2   		cmpq	%rax, %rdx
 751 0294 0F97C0   		seta	%al
 752 0297 84C0     		testb	%al, %al
 753 0299 7435     		je	.L30
 125:cpp_vector_double_practice.cpp ****         columns[i] = other.columns[i];
 754              		.loc 1 125 0 is_stmt 1 discriminator 2
 755 029b 8B55EC   		movl	-20(%rbp), %edx
 756 029e 488B45D0 		movq	-48(%rbp), %rax
 757 02a2 4889D6   		movq	%rdx, %rsi
 758 02a5 4889C7   		movq	%rax, %rdi
 759 02a8 E8000000 		call	_ZNKSt6vectorIdSaIdEEixEm
 759      00
 760 02ad 4889C3   		movq	%rax, %rbx
 761 02b0 8B55EC   		movl	-20(%rbp), %edx
 762 02b3 488B45D8 		movq	-40(%rbp), %rax
 763 02b7 4889D6   		movq	%rdx, %rsi
 764 02ba 4889C7   		movq	%rax, %rdi
 765 02bd E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 765      00
 766 02c2 F20F1003 		movsd	(%rbx), %xmm0
 767 02c6 F20F1100 		movsd	%xmm0, (%rax)
 124:cpp_vector_double_practice.cpp ****     for(uint32_t i=0; columns.size() > i; ++i){
 768              		.loc 1 124 0 discriminator 2
 769 02ca 8345EC01 		addl	$1, -20(%rbp)
 770 02ce EBAF     		jmp	.L31
 771              	.L30:
 772              	.LBE16:
 126:cpp_vector_double_practice.cpp ****     }
 127:cpp_vector_double_practice.cpp **** 
 128:cpp_vector_double_practice.cpp ****     // Copy name of the other one
 129:cpp_vector_double_practice.cpp ****     name = other.name;
 773              		.loc 1 129 0
 774 02d0 488B45D0 		movq	-48(%rbp), %rax
 775 02d4 488D5018 		leaq	24(%rax), %rdx
 776 02d8 488B45D8 		movq	-40(%rbp), %rax
 777 02dc 4883C018 		addq	$24, %rax
 778 02e0 4889D6   		movq	%rdx, %rsi
 779 02e3 4889C7   		movq	%rax, %rdi
 780 02e6 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
 780      00
 130:cpp_vector_double_practice.cpp ****     // Then append
 131:cpp_vector_double_practice.cpp ****     name.append("2");
 781              		.loc 1 131 0
 782 02eb 488B45D8 		movq	-40(%rbp), %rax
 783 02ef 4883C018 		addq	$24, %rax
 784 02f3 488D3500 		leaq	.LC9(%rip), %rsi
 784      000000
 785 02fa 4889C7   		movq	%rax, %rdi
 786 02fd E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@PLT
 786      00
 787              	.LEHE9:
 788              	.LBE15:
 789              	.LBE14:
 132:cpp_vector_double_practice.cpp **** }
 790              		.loc 1 132 0
 791 0302 EB2A     		jmp	.L34
 792              	.L33:
 793 0304 4889C3   		movq	%rax, %rbx
 794              	.LBB17:
 117:cpp_vector_double_practice.cpp **** #ifdef LOG
 795              		.loc 1 117 0
 796 0307 488B45D8 		movq	-40(%rbp), %rax
 797 030b 4883C018 		addq	$24, %rax
 798 030f 4889C7   		movq	%rax, %rdi
 799 0312 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 799      00
 800 0317 488B45D8 		movq	-40(%rbp), %rax
 801 031b 4889C7   		movq	%rax, %rdi
 802 031e E8000000 		call	_ZNSt6vectorIdSaIdEED1Ev
 802      00
 803 0323 4889D8   		movq	%rbx, %rax
 804 0326 4889C7   		movq	%rax, %rdi
 805              	.LEHB10:
 806 0329 E8000000 		call	_Unwind_Resume@PLT
 806      00
 807              	.LEHE10:
 808              	.L34:
 809              	.LBE17:
 810              		.loc 1 132 0
 811 032e 4883C428 		addq	$40, %rsp
 812 0332 5B       		popq	%rbx
 813 0333 5D       		popq	%rbp
 814              		.cfi_def_cfa 7, 8
 815 0334 C3       		ret
 816              		.cfi_endproc
 817              	.LFE1854:
 818              		.section	.gcc_except_table
 819              	.LLSDA1854:
 820 000f FF       		.byte	0xff
 821 0010 FF       		.byte	0xff
 822 0011 01       		.byte	0x1
 823 0012 0B       		.uleb128 .LLSDACSE1854-.LLSDACSB1854
 824              	.LLSDACSB1854:
 825 0013 39       		.uleb128 .LEHB9-.LFB1854
 826 0014 F901     		.uleb128 .LEHE9-.LEHB9
 827 0016 B402     		.uleb128 .L33-.LFB1854
 828 0018 00       		.uleb128 0
 829 0019 D902     		.uleb128 .LEHB10-.LFB1854
 830 001b 05       		.uleb128 .LEHE10-.LEHB10
 831 001c 00       		.uleb128 0
 832 001d 00       		.uleb128 0
 833              	.LLSDACSE1854:
 834              		.text
 836              		.globl	_ZN9RowVectorC1ERKS_
 837              		.set	_ZN9RowVectorC1ERKS_,_ZN9RowVectorC2ERKS_
 838              		.section	.rodata
 839              	.LC10:
 840 0099 526F7756 		.string	"RowVector operator * ("
 840      6563746F 
 840      72206F70 
 840      65726174 
 840      6F72202A 
 841              		.text
 842 0335 90       		.align 2
 843              		.globl	_ZN9RowVectormlEd
 845              	_ZN9RowVectormlEd:
 846              	.LFB1856:
 133:cpp_vector_double_practice.cpp **** 
 134:cpp_vector_double_practice.cpp **** 
 135:cpp_vector_double_practice.cpp **** RowVector RowVector::operator * (const double a){
 847              		.loc 1 135 0
 848              		.cfi_startproc
 849 0336 55       		pushq	%rbp
 850              		.cfi_def_cfa_offset 16
 851              		.cfi_offset 6, -16
 852 0337 4889E5   		movq	%rsp, %rbp
 853              		.cfi_def_cfa_register 6
 854 033a 4883EC50 		subq	$80, %rsp
 855 033e 48897DC8 		movq	%rdi, -56(%rbp)
 856 0342 488975C0 		movq	%rsi, -64(%rbp)
 857 0346 F20F1145 		movsd	%xmm0, -72(%rbp)
 857      B8
 858              		.loc 1 135 0
 859 034b 64488B04 		movq	%fs:40, %rax
 859      25280000 
 859      00
 860 0354 488945F8 		movq	%rax, -8(%rbp)
 861 0358 31C0     		xorl	%eax, %eax
 136:cpp_vector_double_practice.cpp **** #ifdef LOG
 137:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "RowVector operator * (" << a << ")\n";
 862              		.loc 1 137 0
 863 035a BE5B0000 		movl	$91, %esi
 863      00
 864 035f 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 864      000000
 865 0366 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 865      00
 866 036b 4889C2   		movq	%rax, %rdx
 867 036e 488B45C0 		movq	-64(%rbp), %rax
 868 0372 4889C6   		movq	%rax, %rsi
 869 0375 4889D7   		movq	%rdx, %rdi
 870 0378 E8000000 		call	_ZNSolsEPKv@PLT
 870      00
 871 037d BE5D0000 		movl	$93, %esi
 871      00
 872 0382 4889C7   		movq	%rax, %rdi
 873 0385 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 873      00
 874 038a 488D3500 		leaq	.LC10(%rip), %rsi
 874      000000
 875 0391 4889C7   		movq	%rax, %rdi
 876 0394 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 876      00
 877 0399 4889C2   		movq	%rax, %rdx
 878 039c 488B45B8 		movq	-72(%rbp), %rax
 879 03a0 488945B0 		movq	%rax, -80(%rbp)
 880 03a4 F20F1045 		movsd	-80(%rbp), %xmm0
 880      B0
 881 03a9 4889D7   		movq	%rdx, %rdi
 882 03ac E8000000 		call	_ZNSolsEd@PLT
 882      00
 883 03b1 488D3500 		leaq	.LC3(%rip), %rsi
 883      000000
 884 03b8 4889C7   		movq	%rax, %rdi
 885 03bb E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 885      00
 138:cpp_vector_double_practice.cpp **** #endif
 139:cpp_vector_double_practice.cpp **** 
 140:cpp_vector_double_practice.cpp ****     // Make a new vector to return
 141:cpp_vector_double_practice.cpp ****     RowVector temp(*this);
 886              		.loc 1 141 0
 887 03c0 488B55C0 		movq	-64(%rbp), %rdx
 888 03c4 488B45C8 		movq	-56(%rbp), %rax
 889 03c8 4889D6   		movq	%rdx, %rsi
 890 03cb 4889C7   		movq	%rax, %rdi
 891 03ce E8000000 		call	_ZN9RowVectorC1ERKS_
 891      00
 892              	.LBB18:
 142:cpp_vector_double_practice.cpp **** 
 143:cpp_vector_double_practice.cpp ****     // Element loop in `for each` style
 144:cpp_vector_double_practice.cpp ****     // c++ 11 or later
 145:cpp_vector_double_practice.cpp ****     for (auto & element : temp.columns){
 893              		.loc 1 145 0
 894 03d3 488B45C8 		movq	-56(%rbp), %rax
 895 03d7 488945E8 		movq	%rax, -24(%rbp)
 896 03db 488B45E8 		movq	-24(%rbp), %rax
 897 03df 4889C7   		movq	%rax, %rdi
 898 03e2 E8000000 		call	_ZNSt6vectorIdSaIdEE5beginEv
 898      00
 899 03e7 488945D8 		movq	%rax, -40(%rbp)
 900 03eb 488B45E8 		movq	-24(%rbp), %rax
 901 03ef 4889C7   		movq	%rax, %rdi
 902 03f2 E8000000 		call	_ZNSt6vectorIdSaIdEE3endEv
 902      00
 903 03f7 488945E0 		movq	%rax, -32(%rbp)
 904              	.L37:
 905              		.loc 1 145 0 is_stmt 0 discriminator 3
 906 03fb 488D55E0 		leaq	-32(%rbp), %rdx
 907 03ff 488D45D8 		leaq	-40(%rbp), %rax
 908 0403 4889D6   		movq	%rdx, %rsi
 909 0406 4889C7   		movq	%rax, %rdi
 910 0409 E8000000 		call	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
 910      00
 911 040e 84C0     		testb	%al, %al
 912 0410 7433     		je	.L40
 913              		.loc 1 145 0 discriminator 2
 914 0412 488D45D8 		leaq	-40(%rbp), %rax
 915 0416 4889C7   		movq	%rax, %rdi
 916 0419 E8000000 		call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
 916      00
 917 041e 488945F0 		movq	%rax, -16(%rbp)
 146:cpp_vector_double_practice.cpp ****         element *= a;
 918              		.loc 1 146 0 is_stmt 1 discriminator 2
 919 0422 488B45F0 		movq	-16(%rbp), %rax
 920 0426 F20F1000 		movsd	(%rax), %xmm0
 921 042a F20F5945 		mulsd	-72(%rbp), %xmm0
 921      B8
 922 042f 488B45F0 		movq	-16(%rbp), %rax
 923 0433 F20F1100 		movsd	%xmm0, (%rax)
 145:cpp_vector_double_practice.cpp ****         element *= a;
 924              		.loc 1 145 0 discriminator 2
 925 0437 488D45D8 		leaq	-40(%rbp), %rax
 926 043b 4889C7   		movq	%rax, %rdi
 927 043e E8000000 		call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
 927      00
 928 0443 EBB6     		jmp	.L37
 929              	.L40:
 930              	.LBE18:
 147:cpp_vector_double_practice.cpp ****     }
 148:cpp_vector_double_practice.cpp **** 
 149:cpp_vector_double_practice.cpp ****     // Returning a temporary image
 150:cpp_vector_double_practice.cpp ****     return temp;
 931              		.loc 1 150 0
 932 0445 90       		nop
 151:cpp_vector_double_practice.cpp **** }
 933              		.loc 1 151 0
 934 0446 488B45C8 		movq	-56(%rbp), %rax
 935 044a 488B4DF8 		movq	-8(%rbp), %rcx
 936 044e 6448330C 		xorq	%fs:40, %rcx
 936      25280000 
 936      00
 937 0457 7405     		je	.L39
 938 0459 E8000000 		call	__stack_chk_fail@PLT
 938      00
 939              	.L39:
 940 045e C9       		leave
 941              		.cfi_def_cfa 7, 8
 942 045f C3       		ret
 943              		.cfi_endproc
 944              	.LFE1856:
 946              		.align 2
 947              		.globl	_ZN9RowVectormlERKS_
 949              	_ZN9RowVectormlERKS_:
 950              	.LFB1857:
 152:cpp_vector_double_practice.cpp **** 
 153:cpp_vector_double_practice.cpp **** 
 154:cpp_vector_double_practice.cpp **** const double RowVector::operator * (const RowVector & other){
 951              		.loc 1 154 0
 952              		.cfi_startproc
 953 0460 55       		pushq	%rbp
 954              		.cfi_def_cfa_offset 16
 955              		.cfi_offset 6, -16
 956 0461 4889E5   		movq	%rsp, %rbp
 957              		.cfi_def_cfa_register 6
 958 0464 53       		pushq	%rbx
 959 0465 4883EC38 		subq	$56, %rsp
 960              		.cfi_offset 3, -24
 961 0469 48897DD8 		movq	%rdi, -40(%rbp)
 962 046d 488975D0 		movq	%rsi, -48(%rbp)
 155:cpp_vector_double_practice.cpp **** #ifdef LOG
 156:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "RowVector operator * (" << & other << ")\n";
 963              		.loc 1 156 0
 964 0471 BE5B0000 		movl	$91, %esi
 964      00
 965 0476 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 965      000000
 966 047d E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 966      00
 967 0482 4889C2   		movq	%rax, %rdx
 968 0485 488B45D8 		movq	-40(%rbp), %rax
 969 0489 4889C6   		movq	%rax, %rsi
 970 048c 4889D7   		movq	%rdx, %rdi
 971 048f E8000000 		call	_ZNSolsEPKv@PLT
 971      00
 972 0494 BE5D0000 		movl	$93, %esi
 972      00
 973 0499 4889C7   		movq	%rax, %rdi
 974 049c E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 974      00
 975 04a1 488D3500 		leaq	.LC10(%rip), %rsi
 975      000000
 976 04a8 4889C7   		movq	%rax, %rdi
 977 04ab E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 977      00
 978 04b0 4889C2   		movq	%rax, %rdx
 979 04b3 488B45D0 		movq	-48(%rbp), %rax
 980 04b7 4889C6   		movq	%rax, %rsi
 981 04ba 4889D7   		movq	%rdx, %rdi
 982 04bd E8000000 		call	_ZNSolsEPKv@PLT
 982      00
 983 04c2 488D3500 		leaq	.LC3(%rip), %rsi
 983      000000
 984 04c9 4889C7   		movq	%rax, %rdi
 985 04cc E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 985      00
 157:cpp_vector_double_practice.cpp **** #endif
 158:cpp_vector_double_practice.cpp **** 
 159:cpp_vector_double_practice.cpp ****     // Check size
 160:cpp_vector_double_practice.cpp ****     assert(columns.size() == other.columns.size());
 986              		.loc 1 160 0
 987 04d1 488B45D8 		movq	-40(%rbp), %rax
 988 04d5 4889C7   		movq	%rax, %rdi
 989 04d8 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 989      00
 990 04dd 4889C3   		movq	%rax, %rbx
 991 04e0 488B45D0 		movq	-48(%rbp), %rax
 992 04e4 4889C7   		movq	%rax, %rdi
 993 04e7 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 993      00
 994 04ec 4839C3   		cmpq	%rax, %rbx
 995 04ef 741F     		je	.L42
 996              		.loc 1 160 0 is_stmt 0 discriminator 1
 997 04f1 488D0D00 		leaq	_ZZN9RowVectormlERKS_E19__PRETTY_FUNCTION__(%rip), %rcx
 997      000000
 998 04f8 BAA00000 		movl	$160, %edx
 998      00
 999 04fd 488D3500 		leaq	.LC6(%rip), %rsi
 999      000000
 1000 0504 488D3D00 		leaq	.LC7(%rip), %rdi
 1000      000000
 1001 050b E8000000 		call	__assert_fail@PLT
 1001      00
 1002              	.L42:
 161:cpp_vector_double_practice.cpp **** 
 162:cpp_vector_double_practice.cpp ****     double dot_product = 0.0;
 1003              		.loc 1 162 0 is_stmt 1
 1004 0510 660FEFC0 		pxor	%xmm0, %xmm0
 1005 0514 F20F1145 		movsd	%xmm0, -24(%rbp)
 1005      E8
 1006              	.LBB19:
 163:cpp_vector_double_practice.cpp **** 
 164:cpp_vector_double_practice.cpp ****     // Element loop
 165:cpp_vector_double_practice.cpp ****     for (uint32_t i = 0; columns.size() > i; ++i){
 1007              		.loc 1 165 0
 1008 0519 C745E400 		movl	$0, -28(%rbp)
 1008      000000
 1009              	.L44:
 1010              		.loc 1 165 0 is_stmt 0 discriminator 3
 1011 0520 488B45D8 		movq	-40(%rbp), %rax
 1012 0524 4889C7   		movq	%rax, %rdi
 1013 0527 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1013      00
 1014 052c 4889C2   		movq	%rax, %rdx
 1015 052f 8B45E4   		movl	-28(%rbp), %eax
 1016 0532 4839C2   		cmpq	%rax, %rdx
 1017 0535 0F97C0   		seta	%al
 1018 0538 84C0     		testb	%al, %al
 1019 053a 744A     		je	.L43
 166:cpp_vector_double_practice.cpp ****         dot_product += columns[i] * other.columns[i];
 1020              		.loc 1 166 0 is_stmt 1 discriminator 2
 1021 053c 8B55E4   		movl	-28(%rbp), %edx
 1022 053f 488B45D8 		movq	-40(%rbp), %rax
 1023 0543 4889D6   		movq	%rdx, %rsi
 1024 0546 4889C7   		movq	%rax, %rdi
 1025 0549 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 1025      00
 1026 054e F20F1010 		movsd	(%rax), %xmm2
 1027 0552 F20F1155 		movsd	%xmm2, -56(%rbp)
 1027      C8
 1028 0557 8B55E4   		movl	-28(%rbp), %edx
 1029 055a 488B45D0 		movq	-48(%rbp), %rax
 1030 055e 4889D6   		movq	%rdx, %rsi
 1031 0561 4889C7   		movq	%rax, %rdi
 1032 0564 E8000000 		call	_ZNKSt6vectorIdSaIdEEixEm
 1032      00
 1033 0569 F20F1000 		movsd	(%rax), %xmm0
 1034 056d F20F5945 		mulsd	-56(%rbp), %xmm0
 1034      C8
 1035 0572 F20F104D 		movsd	-24(%rbp), %xmm1
 1035      E8
 1036 0577 F20F58C1 		addsd	%xmm1, %xmm0
 1037 057b F20F1145 		movsd	%xmm0, -24(%rbp)
 1037      E8
 165:cpp_vector_double_practice.cpp ****         dot_product += columns[i] * other.columns[i];
 1038              		.loc 1 165 0 discriminator 2
 1039 0580 8345E401 		addl	$1, -28(%rbp)
 1040 0584 EB9A     		jmp	.L44
 1041              	.L43:
 1042              	.LBE19:
 167:cpp_vector_double_practice.cpp ****     }
 168:cpp_vector_double_practice.cpp **** 
 169:cpp_vector_double_practice.cpp ****     // Returning a temporary image
 170:cpp_vector_double_practice.cpp ****     return dot_product;
 1043              		.loc 1 170 0
 1044 0586 F20F1045 		movsd	-24(%rbp), %xmm0
 1044      E8
 171:cpp_vector_double_practice.cpp **** }
 1045              		.loc 1 171 0
 1046 058b 4883C438 		addq	$56, %rsp
 1047 058f 5B       		popq	%rbx
 1048 0590 5D       		popq	%rbp
 1049              		.cfi_def_cfa 7, 8
 1050 0591 C3       		ret
 1051              		.cfi_endproc
 1052              	.LFE1857:
 1054              		.section	.rodata
 1055              	.LC11:
 1056 00b0 766F6964 		.string	"void show()\n"
 1056      2073686F 
 1056      7728290A 
 1056      00
 1057              	.LC12:
 1058 00bd 5D203D20 		.string	"] = "
 1058      00
 1059              		.text
 1060              		.align 2
 1061              		.globl	_ZN9RowVector4showEv
 1063              	_ZN9RowVector4showEv:
 1064              	.LFB1858:
 172:cpp_vector_double_practice.cpp **** 
 173:cpp_vector_double_practice.cpp **** 
 174:cpp_vector_double_practice.cpp **** void RowVector::show(){
 1065              		.loc 1 174 0
 1066              		.cfi_startproc
 1067 0592 55       		pushq	%rbp
 1068              		.cfi_def_cfa_offset 16
 1069              		.cfi_offset 6, -16
 1070 0593 4889E5   		movq	%rsp, %rbp
 1071              		.cfi_def_cfa_register 6
 1072 0596 53       		pushq	%rbx
 1073 0597 4883EC28 		subq	$40, %rsp
 1074              		.cfi_offset 3, -24
 1075 059b 48897DD8 		movq	%rdi, -40(%rbp)
 175:cpp_vector_double_practice.cpp **** #ifdef LOG
 176:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "void show()\n";
 1076              		.loc 1 176 0
 1077 059f BE5B0000 		movl	$91, %esi
 1077      00
 1078 05a4 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1078      000000
 1079 05ab E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1079      00
 1080 05b0 4889C2   		movq	%rax, %rdx
 1081 05b3 488B45D8 		movq	-40(%rbp), %rax
 1082 05b7 4889C6   		movq	%rax, %rsi
 1083 05ba 4889D7   		movq	%rdx, %rdi
 1084 05bd E8000000 		call	_ZNSolsEPKv@PLT
 1084      00
 1085 05c2 BE5D0000 		movl	$93, %esi
 1085      00
 1086 05c7 4889C7   		movq	%rax, %rdi
 1087 05ca E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1087      00
 1088 05cf 488D3500 		leaq	.LC11(%rip), %rsi
 1088      000000
 1089 05d6 4889C7   		movq	%rax, %rdi
 1090 05d9 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1090      00
 1091              	.LBB20:
 177:cpp_vector_double_practice.cpp **** #endif
 178:cpp_vector_double_practice.cpp ****     for (uint32_t i=0; columns.size()> i; ++i){
 1092              		.loc 1 178 0
 1093 05de C745EC00 		movl	$0, -20(%rbp)
 1093      000000
 1094              	.L48:
 1095              		.loc 1 178 0 is_stmt 0 discriminator 3
 1096 05e5 488B45D8 		movq	-40(%rbp), %rax
 1097 05e9 4889C7   		movq	%rax, %rdi
 1098 05ec E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1098      00
 1099 05f1 4889C2   		movq	%rax, %rdx
 1100 05f4 8B45EC   		movl	-20(%rbp), %eax
 1101 05f7 4839C2   		cmpq	%rax, %rdx
 1102 05fa 0F97C0   		seta	%al
 1103 05fd 84C0     		testb	%al, %al
 1104 05ff 0F848200 		je	.L49
 1104      0000
 179:cpp_vector_double_practice.cpp ****         std::cout << name << '[' << i << "] = " << columns[i] << '\n';
 1105              		.loc 1 179 0 is_stmt 1 discriminator 2
 1106 0605 488B45D8 		movq	-40(%rbp), %rax
 1107 0609 4883C018 		addq	$24, %rax
 1108 060d 4889C6   		movq	%rax, %rsi
 1109 0610 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1109      000000
 1110 0617 E8000000 		call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5
 1110      00
 1111 061c BE5B0000 		movl	$91, %esi
 1111      00
 1112 0621 4889C7   		movq	%rax, %rdi
 1113 0624 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1113      00
 1114 0629 4889C2   		movq	%rax, %rdx
 1115 062c 8B45EC   		movl	-20(%rbp), %eax
 1116 062f 89C6     		movl	%eax, %esi
 1117 0631 4889D7   		movq	%rdx, %rdi
 1118 0634 E8000000 		call	_ZNSolsEj@PLT
 1118      00
 1119 0639 488D3500 		leaq	.LC12(%rip), %rsi
 1119      000000
 1120 0640 4889C7   		movq	%rax, %rdi
 1121 0643 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1121      00
 1122 0648 4889C3   		movq	%rax, %rbx
 1123 064b 8B55EC   		movl	-20(%rbp), %edx
 1124 064e 488B45D8 		movq	-40(%rbp), %rax
 1125 0652 4889D6   		movq	%rdx, %rsi
 1126 0655 4889C7   		movq	%rax, %rdi
 1127 0658 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 1127      00
 1128 065d 488B00   		movq	(%rax), %rax
 1129 0660 488945D0 		movq	%rax, -48(%rbp)
 1130 0664 F20F1045 		movsd	-48(%rbp), %xmm0
 1130      D0
 1131 0669 4889DF   		movq	%rbx, %rdi
 1132 066c E8000000 		call	_ZNSolsEd@PLT
 1132      00
 1133 0671 BE0A0000 		movl	$10, %esi
 1133      00
 1134 0676 4889C7   		movq	%rax, %rdi
 1135 0679 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1135      00
 178:cpp_vector_double_practice.cpp ****         std::cout << name << '[' << i << "] = " << columns[i] << '\n';
 1136              		.loc 1 178 0 discriminator 2
 1137 067e 8345EC01 		addl	$1, -20(%rbp)
 1138 0682 E95EFFFF 		jmp	.L48
 1138      FF
 1139              	.L49:
 1140              	.LBE20:
 180:cpp_vector_double_practice.cpp ****     }
 181:cpp_vector_double_practice.cpp **** }
 1141              		.loc 1 181 0
 1142 0687 90       		nop
 1143 0688 4883C428 		addq	$40, %rsp
 1144 068c 5B       		popq	%rbx
 1145 068d 5D       		popq	%rbp
 1146              		.cfi_def_cfa 7, 8
 1147 068e C3       		ret
 1148              		.cfi_endproc
 1149              	.LFE1858:
 1151              		.section	.rodata
 1152 00c2 00000000 		.align 8
 1152      0000
 1153              	.LC15:
 1154 00c8 526F7756 		.string	"RowVector row (2u, s, \"row\");\n"
 1154      6563746F 
 1154      7220726F 
 1154      77202832 
 1154      752C2073 
 1155              	.LC16:
 1156 00e7 726F7700 		.string	"row"
 1157              	.LC17:
 1158 00eb 526F7756 		.string	"RowVector another_row (row);\n"
 1158      6563746F 
 1158      7220616E 
 1158      6F746865 
 1158      725F726F 
 1159              	.LC18:
 1160 0109 616E6F74 		.string	"another_row[1] += 0.5;\n"
 1160      6865725F 
 1160      726F775B 
 1160      315D202B 
 1160      3D20302E 
 1161 0121 00000000 		.align 8
 1161      000000
 1162              	.LC20:
 1163 0128 526F7756 		.string	"RowVector row_plus_another(row + another_row);\n"
 1163      6563746F 
 1163      7220726F 
 1163      775F706C 
 1163      75735F61 
 1164              	.LC21:
 1165 0158 526F7756 		.string	"RowVector zeros(3);\n"
 1165      6563746F 
 1165      72207A65 
 1165      726F7328 
 1165      33293B0A 
 1166              	.LC22:
 1167 016d 7A65726F 		.string	"zeros"
 1167      7300
 1168              	.LC24:
 1169 0173 6F727468 		.string	"ortho"
 1169      6F00
 1170              	.LC25:
 1171 0179 646F7562 		.string	"double dot = row * ortho;\n"
 1171      6C652064 
 1171      6F74203D 
 1171      20726F77 
 1171      202A206F 
 1172              	.LC26:
 1173 0194 646F7420 		.string	"dot  = "
 1173      203D2000 
 1174              	.LC27:
 1175 019c 646F7420 		.string	"dot = row * row;\n"
 1175      3D20726F 
 1175      77202A20 
 1175      726F773B 
 1175      0A00
 1176              		.text
 1177              		.globl	main
 1179              	main:
 1180              	.LFB1859:
 182:cpp_vector_double_practice.cpp **** 
 183:cpp_vector_double_practice.cpp **** 
 184:cpp_vector_double_practice.cpp **** int32_t main(int32_t argn, char *argv[]){
 1181              		.loc 1 184 0
 1182              		.cfi_startproc
 1183              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 1184              		.cfi_lsda 0x1b,.LLSDA1859
 1185 068f 55       		pushq	%rbp
 1186              		.cfi_def_cfa_offset 16
 1187              		.cfi_offset 6, -16
 1188 0690 4889E5   		movq	%rsp, %rbp
 1189              		.cfi_def_cfa_register 6
 1190 0693 53       		pushq	%rbx
 1191 0694 4881ECB8 		subq	$440, %rsp
 1191      010000
 1192              		.cfi_offset 3, -24
 1193 069b 89BD5CFE 		movl	%edi, -420(%rbp)
 1193      FFFF
 1194 06a1 4889B550 		movq	%rsi, -432(%rbp)
 1194      FEFFFF
 1195              		.loc 1 184 0
 1196 06a8 64488B04 		movq	%fs:40, %rax
 1196      25280000 
 1196      00
 1197 06b1 488945E8 		movq	%rax, -24(%rbp)
 1198 06b5 31C0     		xorl	%eax, %eax
 185:cpp_vector_double_practice.cpp **** 	double s[] = {1.0, 2.0};
 1199              		.loc 1 185 0
 1200 06b7 F20F1005 		movsd	.LC13(%rip), %xmm0
 1200      00000000 
 1201 06bf F20F1185 		movsd	%xmm0, -400(%rbp)
 1201      70FEFFFF 
 1202 06c7 F20F1005 		movsd	.LC14(%rip), %xmm0
 1202      00000000 
 1203 06cf F20F1185 		movsd	%xmm0, -392(%rbp)
 1203      78FEFFFF 
 186:cpp_vector_double_practice.cpp **** 
 187:cpp_vector_double_practice.cpp ****     std::cout << "RowVector row (2u, s, \"row\");\n";
 1204              		.loc 1 187 0
 1205 06d7 488D3500 		leaq	.LC15(%rip), %rsi
 1205      000000
 1206 06de 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1206      000000
 1207              	.LEHB11:
 1208 06e5 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1208      00
 1209              	.LEHE11:
 188:cpp_vector_double_practice.cpp **** 	RowVector row (2u, s, "row");
 1210              		.loc 1 188 0
 1211 06ea 488D8567 		leaq	-409(%rbp), %rax
 1211      FEFFFF
 1212 06f1 4889C7   		movq	%rax, %rdi
 1213 06f4 E8000000 		call	_ZNSaIcEC1Ev@PLT
 1213      00
 1214 06f9 488D9567 		leaq	-409(%rbp), %rdx
 1214      FEFFFF
 1215 0700 488D45B0 		leaq	-80(%rbp), %rax
 1216 0704 488D3500 		leaq	.LC16(%rip), %rsi
 1216      000000
 1217 070b 4889C7   		movq	%rax, %rdi
 1218              	.LEHB12:
 1219 070e E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
 1219      00
 1220              	.LEHE12:
 1221              		.loc 1 188 0 is_stmt 0 discriminator 1
 1222 0713 488D4DB0 		leaq	-80(%rbp), %rcx
 1223 0717 488D9570 		leaq	-400(%rbp), %rdx
 1223      FEFFFF
 1224 071e 488D85B0 		leaq	-336(%rbp), %rax
 1224      FEFFFF
 1225 0725 BE020000 		movl	$2, %esi
 1225      00
 1226 072a 4889C7   		movq	%rax, %rdi
 1227              	.LEHB13:
 1228 072d E8000000 		call	_ZN9RowVectorC1EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 1228      00
 1229              	.LEHE13:
 1230 0732 488D45B0 		leaq	-80(%rbp), %rax
 1231 0736 4889C7   		movq	%rax, %rdi
 1232 0739 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1232      00
 1233 073e 488D8567 		leaq	-409(%rbp), %rax
 1233      FEFFFF
 1234 0745 4889C7   		movq	%rax, %rdi
 1235 0748 E8000000 		call	_ZNSaIcED1Ev@PLT
 1235      00
 189:cpp_vector_double_practice.cpp **** 
 190:cpp_vector_double_practice.cpp ****     row.show();
 1236              		.loc 1 190 0 is_stmt 1
 1237 074d 488D85B0 		leaq	-336(%rbp), %rax
 1237      FEFFFF
 1238 0754 4889C7   		movq	%rax, %rdi
 1239              	.LEHB14:
 1240 0757 E8000000 		call	_ZN9RowVector4showEv
 1240      00
 191:cpp_vector_double_practice.cpp **** 
 192:cpp_vector_double_practice.cpp ****     std::cout << "RowVector another_row (row);\n";
 1241              		.loc 1 192 0
 1242 075c 488D3500 		leaq	.LC17(%rip), %rsi
 1242      000000
 1243 0763 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1243      000000
 1244 076a E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1244      00
 193:cpp_vector_double_practice.cpp **** 	RowVector another_row (row);
 1245              		.loc 1 193 0
 1246 076f 488D95B0 		leaq	-336(%rbp), %rdx
 1246      FEFFFF
 1247 0776 488D85F0 		leaq	-272(%rbp), %rax
 1247      FEFFFF
 1248 077d 4889D6   		movq	%rdx, %rsi
 1249 0780 4889C7   		movq	%rax, %rdi
 1250 0783 E8000000 		call	_ZN9RowVectorC1ERKS_
 1250      00
 1251              	.LEHE14:
 194:cpp_vector_double_practice.cpp ****     row.show();
 1252              		.loc 1 194 0
 1253 0788 488D85B0 		leaq	-336(%rbp), %rax
 1253      FEFFFF
 1254 078f 4889C7   		movq	%rax, %rdi
 1255              	.LEHB15:
 1256 0792 E8000000 		call	_ZN9RowVector4showEv
 1256      00
 195:cpp_vector_double_practice.cpp ****     another_row.show();
 1257              		.loc 1 195 0
 1258 0797 488D85F0 		leaq	-272(%rbp), %rax
 1258      FEFFFF
 1259 079e 4889C7   		movq	%rax, %rdi
 1260 07a1 E8000000 		call	_ZN9RowVector4showEv
 1260      00
 196:cpp_vector_double_practice.cpp **** 
 197:cpp_vector_double_practice.cpp ****     std::cout << "another_row[1] += 0.5;\n";
 1261              		.loc 1 197 0
 1262 07a6 488D3500 		leaq	.LC18(%rip), %rsi
 1262      000000
 1263 07ad 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1263      000000
 1264 07b4 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1264      00
 198:cpp_vector_double_practice.cpp ****     another_row[1] += 0.5;
 1265              		.loc 1 198 0
 1266 07b9 488D85F0 		leaq	-272(%rbp), %rax
 1266      FEFFFF
 1267 07c0 BE010000 		movl	$1, %esi
 1267      00
 1268 07c5 4889C7   		movq	%rax, %rdi
 1269 07c8 E8000000 		call	_ZN9RowVectorixEj
 1269      00
 1270 07cd F20F1008 		movsd	(%rax), %xmm1
 1271 07d1 F20F1005 		movsd	.LC19(%rip), %xmm0
 1271      00000000 
 1272 07d9 F20F58C1 		addsd	%xmm1, %xmm0
 1273 07dd F20F1100 		movsd	%xmm0, (%rax)
 199:cpp_vector_double_practice.cpp ****     row.show();
 1274              		.loc 1 199 0
 1275 07e1 488D85B0 		leaq	-336(%rbp), %rax
 1275      FEFFFF
 1276 07e8 4889C7   		movq	%rax, %rdi
 1277 07eb E8000000 		call	_ZN9RowVector4showEv
 1277      00
 200:cpp_vector_double_practice.cpp ****     another_row.show();
 1278              		.loc 1 200 0
 1279 07f0 488D85F0 		leaq	-272(%rbp), %rax
 1279      FEFFFF
 1280 07f7 4889C7   		movq	%rax, %rdi
 1281 07fa E8000000 		call	_ZN9RowVector4showEv
 1281      00
 201:cpp_vector_double_practice.cpp **** 
 202:cpp_vector_double_practice.cpp ****     std::cout << "RowVector row_plus_another(row + another_row);\n";
 1282              		.loc 1 202 0
 1283 07ff 488D3500 		leaq	.LC20(%rip), %rsi
 1283      000000
 1284 0806 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1284      000000
 1285 080d E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1285      00
 203:cpp_vector_double_practice.cpp ****     RowVector row_plus_another(row + another_row);
 1286              		.loc 1 203 0
 1287 0812 488D8530 		leaq	-208(%rbp), %rax
 1287      FFFFFF
 1288 0819 488D95F0 		leaq	-272(%rbp), %rdx
 1288      FEFFFF
 1289 0820 488D8DB0 		leaq	-336(%rbp), %rcx
 1289      FEFFFF
 1290 0827 4889CE   		movq	%rcx, %rsi
 1291 082a 4889C7   		movq	%rax, %rdi
 1292 082d E8000000 		call	_ZN9RowVectorplERKS_
 1292      00
 1293              	.LEHE15:
 204:cpp_vector_double_practice.cpp ****     row.show();
 1294              		.loc 1 204 0
 1295 0832 488D85B0 		leaq	-336(%rbp), %rax
 1295      FEFFFF
 1296 0839 4889C7   		movq	%rax, %rdi
 1297              	.LEHB16:
 1298 083c E8000000 		call	_ZN9RowVector4showEv
 1298      00
 205:cpp_vector_double_practice.cpp ****     another_row.show();
 1299              		.loc 1 205 0
 1300 0841 488D85F0 		leaq	-272(%rbp), %rax
 1300      FEFFFF
 1301 0848 4889C7   		movq	%rax, %rdi
 1302 084b E8000000 		call	_ZN9RowVector4showEv
 1302      00
 206:cpp_vector_double_practice.cpp ****     row_plus_another.show();
 1303              		.loc 1 206 0
 1304 0850 488D8530 		leaq	-208(%rbp), %rax
 1304      FFFFFF
 1305 0857 4889C7   		movq	%rax, %rdi
 1306 085a E8000000 		call	_ZN9RowVector4showEv
 1306      00
 207:cpp_vector_double_practice.cpp **** 
 208:cpp_vector_double_practice.cpp ****     std::cout << "RowVector zeros(3);\n";
 1307              		.loc 1 208 0
 1308 085f 488D3500 		leaq	.LC21(%rip), %rsi
 1308      000000
 1309 0866 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1309      000000
 1310 086d E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1310      00
 1311              	.LEHE16:
 209:cpp_vector_double_practice.cpp **** 	RowVector zeros(3u, "zeros");
 1312              		.loc 1 209 0
 1313 0872 488D8567 		leaq	-409(%rbp), %rax
 1313      FEFFFF
 1314 0879 4889C7   		movq	%rax, %rdi
 1315 087c E8000000 		call	_ZNSaIcEC1Ev@PLT
 1315      00
 1316 0881 488D9567 		leaq	-409(%rbp), %rdx
 1316      FEFFFF
 1317 0888 488D45B0 		leaq	-80(%rbp), %rax
 1318 088c 488D3500 		leaq	.LC22(%rip), %rsi
 1318      000000
 1319 0893 4889C7   		movq	%rax, %rdi
 1320              	.LEHB17:
 1321 0896 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
 1321      00
 1322              	.LEHE17:
 1323              		.loc 1 209 0 is_stmt 0 discriminator 1
 1324 089b 488D55B0 		leaq	-80(%rbp), %rdx
 1325 089f 488D8570 		leaq	-144(%rbp), %rax
 1325      FFFFFF
 1326 08a6 BE030000 		movl	$3, %esi
 1326      00
 1327 08ab 4889C7   		movq	%rax, %rdi
 1328              	.LEHB18:
 1329 08ae E8000000 		call	_ZN9RowVectorC1EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 1329      00
 1330              	.LEHE18:
 1331 08b3 488D45B0 		leaq	-80(%rbp), %rax
 1332 08b7 4889C7   		movq	%rax, %rdi
 1333 08ba E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1333      00
 1334 08bf 488D8567 		leaq	-409(%rbp), %rax
 1334      FEFFFF
 1335 08c6 4889C7   		movq	%rax, %rdi
 1336 08c9 E8000000 		call	_ZNSaIcED1Ev@PLT
 1336      00
 210:cpp_vector_double_practice.cpp ****     row.show();
 1337              		.loc 1 210 0 is_stmt 1
 1338 08ce 488D85B0 		leaq	-336(%rbp), %rax
 1338      FEFFFF
 1339 08d5 4889C7   		movq	%rax, %rdi
 1340              	.LEHB19:
 1341 08d8 E8000000 		call	_ZN9RowVector4showEv
 1341      00
 211:cpp_vector_double_practice.cpp ****     another_row.show();
 1342              		.loc 1 211 0
 1343 08dd 488D85F0 		leaq	-272(%rbp), %rax
 1343      FEFFFF
 1344 08e4 4889C7   		movq	%rax, %rdi
 1345 08e7 E8000000 		call	_ZN9RowVector4showEv
 1345      00
 212:cpp_vector_double_practice.cpp ****     row_plus_another.show();
 1346              		.loc 1 212 0
 1347 08ec 488D8530 		leaq	-208(%rbp), %rax
 1347      FFFFFF
 1348 08f3 4889C7   		movq	%rax, %rdi
 1349 08f6 E8000000 		call	_ZN9RowVector4showEv
 1349      00
 213:cpp_vector_double_practice.cpp ****     zeros.show();
 1350              		.loc 1 213 0
 1351 08fb 488D8570 		leaq	-144(%rbp), %rax
 1351      FFFFFF
 1352 0902 4889C7   		movq	%rax, %rdi
 1353 0905 E8000000 		call	_ZN9RowVector4showEv
 1353      00
 1354              	.LEHE19:
 214:cpp_vector_double_practice.cpp **** 
 215:cpp_vector_double_practice.cpp ****     double t[] = {2.0, -1.0};
 1355              		.loc 1 215 0
 1356 090a F20F1005 		movsd	.LC14(%rip), %xmm0
 1356      00000000 
 1357 0912 F20F1185 		movsd	%xmm0, -384(%rbp)
 1357      80FEFFFF 
 1358 091a F20F1005 		movsd	.LC23(%rip), %xmm0
 1358      00000000 
 1359 0922 F20F1185 		movsd	%xmm0, -376(%rbp)
 1359      88FEFFFF 
 216:cpp_vector_double_practice.cpp **** 	RowVector ortho (2u, t, "ortho");
 1360              		.loc 1 216 0
 1361 092a 488D8567 		leaq	-409(%rbp), %rax
 1361      FEFFFF
 1362 0931 4889C7   		movq	%rax, %rdi
 1363 0934 E8000000 		call	_ZNSaIcEC1Ev@PLT
 1363      00
 1364 0939 488D9567 		leaq	-409(%rbp), %rdx
 1364      FEFFFF
 1365 0940 488D8590 		leaq	-368(%rbp), %rax
 1365      FEFFFF
 1366 0947 488D3500 		leaq	.LC24(%rip), %rsi
 1366      000000
 1367 094e 4889C7   		movq	%rax, %rdi
 1368              	.LEHB20:
 1369 0951 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
 1369      00
 1370              	.LEHE20:
 1371              		.loc 1 216 0 is_stmt 0 discriminator 1
 1372 0956 488D8D90 		leaq	-368(%rbp), %rcx
 1372      FEFFFF
 1373 095d 488D9580 		leaq	-384(%rbp), %rdx
 1373      FEFFFF
 1374 0964 488D45B0 		leaq	-80(%rbp), %rax
 1375 0968 BE020000 		movl	$2, %esi
 1375      00
 1376 096d 4889C7   		movq	%rax, %rdi
 1377              	.LEHB21:
 1378 0970 E8000000 		call	_ZN9RowVectorC1EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 1378      00
 1379              	.LEHE21:
 1380 0975 488D8590 		leaq	-368(%rbp), %rax
 1380      FEFFFF
 1381 097c 4889C7   		movq	%rax, %rdi
 1382 097f E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1382      00
 1383 0984 488D8567 		leaq	-409(%rbp), %rax
 1383      FEFFFF
 1384 098b 4889C7   		movq	%rax, %rdi
 1385 098e E8000000 		call	_ZNSaIcED1Ev@PLT
 1385      00
 217:cpp_vector_double_practice.cpp ****     double dot = row * ortho;
 1386              		.loc 1 217 0 is_stmt 1
 1387 0993 488D55B0 		leaq	-80(%rbp), %rdx
 1388 0997 488D85B0 		leaq	-336(%rbp), %rax
 1388      FEFFFF
 1389 099e 4889D6   		movq	%rdx, %rsi
 1390 09a1 4889C7   		movq	%rax, %rdi
 1391              	.LEHB22:
 1392 09a4 E8000000 		call	_ZN9RowVectormlERKS_
 1392      00
 1393 09a9 66480F7E 		movq	%xmm0, %rax
 1393      C0
 1394 09ae 48898568 		movq	%rax, -408(%rbp)
 1394      FEFFFF
 218:cpp_vector_double_practice.cpp ****     std::cout << "double dot = row * ortho;\n";
 1395              		.loc 1 218 0
 1396 09b5 488D3500 		leaq	.LC25(%rip), %rsi
 1396      000000
 1397 09bc 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1397      000000
 1398 09c3 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1398      00
 219:cpp_vector_double_practice.cpp ****     std::cout << "dot  = " << dot << '\n';
 1399              		.loc 1 219 0
 1400 09c8 488D3500 		leaq	.LC26(%rip), %rsi
 1400      000000
 1401 09cf 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1401      000000
 1402 09d6 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1402      00
 1403 09db 4889C2   		movq	%rax, %rdx
 1404 09de 488B8568 		movq	-408(%rbp), %rax
 1404      FEFFFF
 1405 09e5 48898548 		movq	%rax, -440(%rbp)
 1405      FEFFFF
 1406 09ec F20F1085 		movsd	-440(%rbp), %xmm0
 1406      48FEFFFF 
 1407 09f4 4889D7   		movq	%rdx, %rdi
 1408 09f7 E8000000 		call	_ZNSolsEd@PLT
 1408      00
 1409              		.loc 1 219 0 is_stmt 0 discriminator 1
 1410 09fc BE0A0000 		movl	$10, %esi
 1410      00
 1411 0a01 4889C7   		movq	%rax, %rdi
 1412 0a04 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1412      00
 220:cpp_vector_double_practice.cpp **** 
 221:cpp_vector_double_practice.cpp ****     std::cout << "dot = row * row;\n";
 1413              		.loc 1 221 0 is_stmt 1
 1414 0a09 488D3500 		leaq	.LC27(%rip), %rsi
 1414      000000
 1415 0a10 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1415      000000
 1416 0a17 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1416      00
 222:cpp_vector_double_practice.cpp ****     dot = row * row;
 1417              		.loc 1 222 0
 1418 0a1c 488D95B0 		leaq	-336(%rbp), %rdx
 1418      FEFFFF
 1419 0a23 488D85B0 		leaq	-336(%rbp), %rax
 1419      FEFFFF
 1420 0a2a 4889D6   		movq	%rdx, %rsi
 1421 0a2d 4889C7   		movq	%rax, %rdi
 1422 0a30 E8000000 		call	_ZN9RowVectormlERKS_
 1422      00
 1423 0a35 66480F7E 		movq	%xmm0, %rax
 1423      C0
 1424 0a3a 48898568 		movq	%rax, -408(%rbp)
 1424      FEFFFF
 223:cpp_vector_double_practice.cpp ****     std::cout << "dot  = " << dot << '\n';
 1425              		.loc 1 223 0
 1426 0a41 488D3500 		leaq	.LC26(%rip), %rsi
 1426      000000
 1427 0a48 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1427      000000
 1428 0a4f E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1428      00
 1429              		.loc 1 223 0 is_stmt 0 discriminator 1
 1430 0a54 4889C2   		movq	%rax, %rdx
 1431 0a57 488B8568 		movq	-408(%rbp), %rax
 1431      FEFFFF
 1432 0a5e 48898548 		movq	%rax, -440(%rbp)
 1432      FEFFFF
 1433 0a65 F20F1085 		movsd	-440(%rbp), %xmm0
 1433      48FEFFFF 
 1434 0a6d 4889D7   		movq	%rdx, %rdi
 1435 0a70 E8000000 		call	_ZNSolsEd@PLT
 1435      00
 1436 0a75 BE0A0000 		movl	$10, %esi
 1436      00
 1437 0a7a 4889C7   		movq	%rax, %rdi
 1438 0a7d E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1438      00
 1439              	.LEHE22:
 216:cpp_vector_double_practice.cpp ****     double dot = row * ortho;
 1440              		.loc 1 216 0 is_stmt 1
 1441 0a82 488D45B0 		leaq	-80(%rbp), %rax
 1442 0a86 4889C7   		movq	%rax, %rdi
 1443 0a89 E8000000 		call	_ZN9RowVectorD1Ev
 1443      00
 209:cpp_vector_double_practice.cpp ****     row.show();
 1444              		.loc 1 209 0
 1445 0a8e 488D8570 		leaq	-144(%rbp), %rax
 1445      FFFFFF
 1446 0a95 4889C7   		movq	%rax, %rdi
 1447 0a98 E8000000 		call	_ZN9RowVectorD1Ev
 1447      00
 203:cpp_vector_double_practice.cpp ****     row.show();
 1448              		.loc 1 203 0
 1449 0a9d 488D8530 		leaq	-208(%rbp), %rax
 1449      FFFFFF
 1450 0aa4 4889C7   		movq	%rax, %rdi
 1451 0aa7 E8000000 		call	_ZN9RowVectorD1Ev
 1451      00
 193:cpp_vector_double_practice.cpp ****     row.show();
 1452              		.loc 1 193 0
 1453 0aac 488D85F0 		leaq	-272(%rbp), %rax
 1453      FEFFFF
 1454 0ab3 4889C7   		movq	%rax, %rdi
 1455 0ab6 E8000000 		call	_ZN9RowVectorD1Ev
 1455      00
 188:cpp_vector_double_practice.cpp **** 
 1456              		.loc 1 188 0
 1457 0abb 488D85B0 		leaq	-336(%rbp), %rax
 1457      FEFFFF
 1458 0ac2 4889C7   		movq	%rax, %rdi
 1459 0ac5 E8000000 		call	_ZN9RowVectorD1Ev
 1459      00
 224:cpp_vector_double_practice.cpp **** 
 225:cpp_vector_double_practice.cpp **** }
 1460              		.loc 1 225 0
 1461 0aca B8000000 		movl	$0, %eax
 1461      00
 1462 0acf 488B4DE8 		movq	-24(%rbp), %rcx
 1463 0ad3 6448330C 		xorq	%fs:40, %rcx
 1463      25280000 
 1463      00
 1464 0adc 0F84EF00 		je	.L63
 1464      0000
 1465 0ae2 E9E50000 		jmp	.L75
 1465      00
 1466              	.L65:
 1467 0ae7 4889C3   		movq	%rax, %rbx
 1468 0aea 488D45B0 		leaq	-80(%rbp), %rax
 1469 0aee 4889C7   		movq	%rax, %rdi
 1470 0af1 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1470      00
 1471 0af6 EB03     		jmp	.L53
 1472              	.L64:
 1473 0af8 4889C3   		movq	%rax, %rbx
 1474              	.L53:
 1475 0afb 488D8567 		leaq	-409(%rbp), %rax
 1475      FEFFFF
 1476 0b02 4889C7   		movq	%rax, %rdi
 1477 0b05 E8000000 		call	_ZNSaIcED1Ev@PLT
 1477      00
 1478 0b0a 4889D8   		movq	%rbx, %rax
 1479 0b0d 4889C7   		movq	%rax, %rdi
 1480              	.LEHB23:
 1481 0b10 E8000000 		call	_Unwind_Resume@PLT
 1481      00
 1482              	.L70:
 1483 0b15 4889C3   		movq	%rax, %rbx
 1484 0b18 488D45B0 		leaq	-80(%rbp), %rax
 1485 0b1c 4889C7   		movq	%rax, %rdi
 1486 0b1f E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1486      00
 1487 0b24 EB03     		jmp	.L55
 1488              	.L69:
 1489 0b26 4889C3   		movq	%rax, %rbx
 1490              	.L55:
 1491 0b29 488D8567 		leaq	-409(%rbp), %rax
 1491      FEFFFF
 1492 0b30 4889C7   		movq	%rax, %rdi
 1493 0b33 E8000000 		call	_ZNSaIcED1Ev@PLT
 1493      00
 1494 0b38 EB50     		jmp	.L56
 1495              	.L73:
 1496 0b3a 4889C3   		movq	%rax, %rbx
 1497 0b3d 488D8590 		leaq	-368(%rbp), %rax
 1497      FEFFFF
 1498 0b44 4889C7   		movq	%rax, %rdi
 1499 0b47 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1499      00
 1500 0b4c EB03     		jmp	.L58
 1501              	.L72:
 1502 0b4e 4889C3   		movq	%rax, %rbx
 1503              	.L58:
 1504 0b51 488D8567 		leaq	-409(%rbp), %rax
 1504      FEFFFF
 1505 0b58 4889C7   		movq	%rax, %rdi
 1506 0b5b E8000000 		call	_ZNSaIcED1Ev@PLT
 1506      00
 1507 0b60 EB14     		jmp	.L59
 1508              	.L74:
 1509 0b62 4889C3   		movq	%rax, %rbx
 216:cpp_vector_double_practice.cpp ****     double dot = row * ortho;
 1510              		.loc 1 216 0
 1511 0b65 488D45B0 		leaq	-80(%rbp), %rax
 1512 0b69 4889C7   		movq	%rax, %rdi
 1513 0b6c E8000000 		call	_ZN9RowVectorD1Ev
 1513      00
 1514 0b71 EB03     		jmp	.L59
 1515              	.L71:
 1516 0b73 4889C3   		movq	%rax, %rbx
 1517              	.L59:
 209:cpp_vector_double_practice.cpp ****     row.show();
 1518              		.loc 1 209 0
 1519 0b76 488D8570 		leaq	-144(%rbp), %rax
 1519      FFFFFF
 1520 0b7d 4889C7   		movq	%rax, %rdi
 1521 0b80 E8000000 		call	_ZN9RowVectorD1Ev
 1521      00
 1522 0b85 EB03     		jmp	.L56
 1523              	.L68:
 1524 0b87 4889C3   		movq	%rax, %rbx
 1525              	.L56:
 203:cpp_vector_double_practice.cpp ****     row.show();
 1526              		.loc 1 203 0
 1527 0b8a 488D8530 		leaq	-208(%rbp), %rax
 1527      FFFFFF
 1528 0b91 4889C7   		movq	%rax, %rdi
 1529 0b94 E8000000 		call	_ZN9RowVectorD1Ev
 1529      00
 1530 0b99 EB03     		jmp	.L61
 1531              	.L67:
 1532 0b9b 4889C3   		movq	%rax, %rbx
 1533              	.L61:
 193:cpp_vector_double_practice.cpp ****     row.show();
 1534              		.loc 1 193 0
 1535 0b9e 488D85F0 		leaq	-272(%rbp), %rax
 1535      FEFFFF
 1536 0ba5 4889C7   		movq	%rax, %rdi
 1537 0ba8 E8000000 		call	_ZN9RowVectorD1Ev
 1537      00
 1538 0bad EB03     		jmp	.L62
 1539              	.L66:
 1540 0baf 4889C3   		movq	%rax, %rbx
 1541              	.L62:
 188:cpp_vector_double_practice.cpp **** 
 1542              		.loc 1 188 0
 1543 0bb2 488D85B0 		leaq	-336(%rbp), %rax
 1543      FEFFFF
 1544 0bb9 4889C7   		movq	%rax, %rdi
 1545 0bbc E8000000 		call	_ZN9RowVectorD1Ev
 1545      00
 1546 0bc1 4889D8   		movq	%rbx, %rax
 1547 0bc4 4889C7   		movq	%rax, %rdi
 1548 0bc7 E8000000 		call	_Unwind_Resume@PLT
 1548      00
 1549              	.LEHE23:
 1550              	.L75:
 1551              		.loc 1 225 0
 1552 0bcc E8000000 		call	__stack_chk_fail@PLT
 1552      00
 1553              	.L63:
 1554 0bd1 4881C4B8 		addq	$440, %rsp
 1554      010000
 1555 0bd8 5B       		popq	%rbx
 1556 0bd9 5D       		popq	%rbp
 1557              		.cfi_def_cfa 7, 8
 1558 0bda C3       		ret
 1559              		.cfi_endproc
 1560              	.LFE1859:
 1561              		.section	.gcc_except_table
 1562              	.LLSDA1859:
 1563 001e FF       		.byte	0xff
 1564 001f FF       		.byte	0xff
 1565 0020 01       		.byte	0x1
 1566 0021 4D       		.uleb128 .LLSDACSE1859-.LLSDACSB1859
 1567              	.LLSDACSB1859:
 1568 0022 56       		.uleb128 .LEHB11-.LFB1859
 1569 0023 05       		.uleb128 .LEHE11-.LEHB11
 1570 0024 00       		.uleb128 0
 1571 0025 00       		.uleb128 0
 1572 0026 7F       		.uleb128 .LEHB12-.LFB1859
 1573 0027 05       		.uleb128 .LEHE12-.LEHB12
 1574 0028 E908     		.uleb128 .L64-.LFB1859
 1575 002a 00       		.uleb128 0
 1576 002b 9E01     		.uleb128 .LEHB13-.LFB1859
 1577 002d 05       		.uleb128 .LEHE13-.LEHB13
 1578 002e D808     		.uleb128 .L65-.LFB1859
 1579 0030 00       		.uleb128 0
 1580 0031 C801     		.uleb128 .LEHB14-.LFB1859
 1581 0033 31       		.uleb128 .LEHE14-.LEHB14
 1582 0034 A00A     		.uleb128 .L66-.LFB1859
 1583 0036 00       		.uleb128 0
 1584 0037 8302     		.uleb128 .LEHB15-.LFB1859
 1585 0039 A001     		.uleb128 .LEHE15-.LEHB15
 1586 003b 8C0A     		.uleb128 .L67-.LFB1859
 1587 003d 00       		.uleb128 0
 1588 003e AD03     		.uleb128 .LEHB16-.LFB1859
 1589 0040 36       		.uleb128 .LEHE16-.LEHB16
 1590 0041 F809     		.uleb128 .L68-.LFB1859
 1591 0043 00       		.uleb128 0
 1592 0044 8704     		.uleb128 .LEHB17-.LFB1859
 1593 0046 05       		.uleb128 .LEHE17-.LEHB17
 1594 0047 9709     		.uleb128 .L69-.LFB1859
 1595 0049 00       		.uleb128 0
 1596 004a 9F04     		.uleb128 .LEHB18-.LFB1859
 1597 004c 05       		.uleb128 .LEHE18-.LEHB18
 1598 004d 8609     		.uleb128 .L70-.LFB1859
 1599 004f 00       		.uleb128 0
 1600 0050 C904     		.uleb128 .LEHB19-.LFB1859
 1601 0052 32       		.uleb128 .LEHE19-.LEHB19
 1602 0053 E409     		.uleb128 .L71-.LFB1859
 1603 0055 00       		.uleb128 0
 1604 0056 C205     		.uleb128 .LEHB20-.LFB1859
 1605 0058 05       		.uleb128 .LEHE20-.LEHB20
 1606 0059 BF09     		.uleb128 .L72-.LFB1859
 1607 005b 00       		.uleb128 0
 1608 005c E105     		.uleb128 .LEHB21-.LFB1859
 1609 005e 05       		.uleb128 .LEHE21-.LEHB21
 1610 005f AB09     		.uleb128 .L73-.LFB1859
 1611 0061 00       		.uleb128 0
 1612 0062 9506     		.uleb128 .LEHB22-.LFB1859
 1613 0064 DE01     		.uleb128 .LEHE22-.LEHB22
 1614 0066 D309     		.uleb128 .L74-.LFB1859
 1615 0068 00       		.uleb128 0
 1616 0069 8109     		.uleb128 .LEHB23-.LFB1859
 1617 006b BC01     		.uleb128 .LEHE23-.LEHB23
 1618 006d 00       		.uleb128 0
 1619 006e 00       		.uleb128 0
 1620              	.LLSDACSE1859:
 1621              		.text
 1623              		.section	.text._ZNSt6vectorIdSaIdEEC2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5Ev,comdat
 1624              		.align 2
 1625              		.weak	_ZNSt6vectorIdSaIdEEC2Ev
 1627              	_ZNSt6vectorIdSaIdEEC2Ev:
 1628              	.LFB2098:
 1629              		.file 2 "/usr/include/c++/7/bits/stl_vector.h"
   1:/usr/include/c++/7/bits/stl_vector.h **** // Vector implementation -*- C++ -*-
   2:/usr/include/c++/7/bits/stl_vector.h **** 
   3:/usr/include/c++/7/bits/stl_vector.h **** // Copyright (C) 2001-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/stl_vector.h **** //
   5:/usr/include/c++/7/bits/stl_vector.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/stl_vector.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/stl_vector.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/stl_vector.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/stl_vector.h **** // any later version.
  10:/usr/include/c++/7/bits/stl_vector.h **** 
  11:/usr/include/c++/7/bits/stl_vector.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/stl_vector.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/stl_vector.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/stl_vector.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/stl_vector.h **** 
  16:/usr/include/c++/7/bits/stl_vector.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/stl_vector.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/stl_vector.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/stl_vector.h **** 
  20:/usr/include/c++/7/bits/stl_vector.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/stl_vector.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/stl_vector.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/stl_vector.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/stl_vector.h **** 
  25:/usr/include/c++/7/bits/stl_vector.h **** /*
  26:/usr/include/c++/7/bits/stl_vector.h ****  *
  27:/usr/include/c++/7/bits/stl_vector.h ****  * Copyright (c) 1994
  28:/usr/include/c++/7/bits/stl_vector.h ****  * Hewlett-Packard Company
  29:/usr/include/c++/7/bits/stl_vector.h ****  *
  30:/usr/include/c++/7/bits/stl_vector.h ****  * Permission to use, copy, modify, distribute and sell this software
  31:/usr/include/c++/7/bits/stl_vector.h ****  * and its documentation for any purpose is hereby granted without fee,
  32:/usr/include/c++/7/bits/stl_vector.h ****  * provided that the above copyright notice appear in all copies and
  33:/usr/include/c++/7/bits/stl_vector.h ****  * that both that copyright notice and this permission notice appear
  34:/usr/include/c++/7/bits/stl_vector.h ****  * in supporting documentation.  Hewlett-Packard Company makes no
  35:/usr/include/c++/7/bits/stl_vector.h ****  * representations about the suitability of this software for any
  36:/usr/include/c++/7/bits/stl_vector.h ****  * purpose.  It is provided "as is" without express or implied warranty.
  37:/usr/include/c++/7/bits/stl_vector.h ****  *
  38:/usr/include/c++/7/bits/stl_vector.h ****  *
  39:/usr/include/c++/7/bits/stl_vector.h ****  * Copyright (c) 1996
  40:/usr/include/c++/7/bits/stl_vector.h ****  * Silicon Graphics Computer Systems, Inc.
  41:/usr/include/c++/7/bits/stl_vector.h ****  *
  42:/usr/include/c++/7/bits/stl_vector.h ****  * Permission to use, copy, modify, distribute and sell this software
  43:/usr/include/c++/7/bits/stl_vector.h ****  * and its documentation for any purpose is hereby granted without fee,
  44:/usr/include/c++/7/bits/stl_vector.h ****  * provided that the above copyright notice appear in all copies and
  45:/usr/include/c++/7/bits/stl_vector.h ****  * that both that copyright notice and this permission notice appear
  46:/usr/include/c++/7/bits/stl_vector.h ****  * in supporting documentation.  Silicon Graphics makes no
  47:/usr/include/c++/7/bits/stl_vector.h ****  * representations about the suitability of this  software for any
  48:/usr/include/c++/7/bits/stl_vector.h ****  * purpose.  It is provided "as is" without express or implied warranty.
  49:/usr/include/c++/7/bits/stl_vector.h ****  */
  50:/usr/include/c++/7/bits/stl_vector.h **** 
  51:/usr/include/c++/7/bits/stl_vector.h **** /** @file bits/stl_vector.h
  52:/usr/include/c++/7/bits/stl_vector.h ****  *  This is an internal header file, included by other library headers.
  53:/usr/include/c++/7/bits/stl_vector.h ****  *  Do not attempt to use it directly. @headername{vector}
  54:/usr/include/c++/7/bits/stl_vector.h ****  */
  55:/usr/include/c++/7/bits/stl_vector.h **** 
  56:/usr/include/c++/7/bits/stl_vector.h **** #ifndef _STL_VECTOR_H
  57:/usr/include/c++/7/bits/stl_vector.h **** #define _STL_VECTOR_H 1
  58:/usr/include/c++/7/bits/stl_vector.h **** 
  59:/usr/include/c++/7/bits/stl_vector.h **** #include <bits/stl_iterator_base_funcs.h>
  60:/usr/include/c++/7/bits/stl_vector.h **** #include <bits/functexcept.h>
  61:/usr/include/c++/7/bits/stl_vector.h **** #include <bits/concept_check.h>
  62:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
  63:/usr/include/c++/7/bits/stl_vector.h **** #include <initializer_list>
  64:/usr/include/c++/7/bits/stl_vector.h **** #endif
  65:/usr/include/c++/7/bits/stl_vector.h **** 
  66:/usr/include/c++/7/bits/stl_vector.h **** #include <debug/assertions.h>
  67:/usr/include/c++/7/bits/stl_vector.h **** 
  68:/usr/include/c++/7/bits/stl_vector.h **** namespace std _GLIBCXX_VISIBILITY(default)
  69:/usr/include/c++/7/bits/stl_vector.h **** {
  70:/usr/include/c++/7/bits/stl_vector.h **** _GLIBCXX_BEGIN_NAMESPACE_CONTAINER
  71:/usr/include/c++/7/bits/stl_vector.h **** 
  72:/usr/include/c++/7/bits/stl_vector.h ****   /// See bits/stl_deque.h's _Deque_base for an explanation.
  73:/usr/include/c++/7/bits/stl_vector.h ****   template<typename _Tp, typename _Alloc>
  74:/usr/include/c++/7/bits/stl_vector.h ****     struct _Vector_base
  75:/usr/include/c++/7/bits/stl_vector.h ****     {
  76:/usr/include/c++/7/bits/stl_vector.h ****       typedef typename __gnu_cxx::__alloc_traits<_Alloc>::template
  77:/usr/include/c++/7/bits/stl_vector.h **** 	rebind<_Tp>::other _Tp_alloc_type;
  78:/usr/include/c++/7/bits/stl_vector.h ****       typedef typename __gnu_cxx::__alloc_traits<_Tp_alloc_type>::pointer
  79:/usr/include/c++/7/bits/stl_vector.h ****        	pointer;
  80:/usr/include/c++/7/bits/stl_vector.h **** 
  81:/usr/include/c++/7/bits/stl_vector.h ****       struct _Vector_impl
  82:/usr/include/c++/7/bits/stl_vector.h ****       : public _Tp_alloc_type
  83:/usr/include/c++/7/bits/stl_vector.h ****       {
  84:/usr/include/c++/7/bits/stl_vector.h **** 	pointer _M_start;
  85:/usr/include/c++/7/bits/stl_vector.h **** 	pointer _M_finish;
  86:/usr/include/c++/7/bits/stl_vector.h **** 	pointer _M_end_of_storage;
  87:/usr/include/c++/7/bits/stl_vector.h **** 
  88:/usr/include/c++/7/bits/stl_vector.h **** 	_Vector_impl()
  89:/usr/include/c++/7/bits/stl_vector.h **** 	: _Tp_alloc_type(), _M_start(), _M_finish(), _M_end_of_storage()
  90:/usr/include/c++/7/bits/stl_vector.h **** 	{ }
  91:/usr/include/c++/7/bits/stl_vector.h **** 
  92:/usr/include/c++/7/bits/stl_vector.h **** 	_Vector_impl(_Tp_alloc_type const& __a) _GLIBCXX_NOEXCEPT
  93:/usr/include/c++/7/bits/stl_vector.h **** 	: _Tp_alloc_type(__a), _M_start(), _M_finish(), _M_end_of_storage()
  94:/usr/include/c++/7/bits/stl_vector.h **** 	{ }
  95:/usr/include/c++/7/bits/stl_vector.h **** 
  96:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
  97:/usr/include/c++/7/bits/stl_vector.h **** 	_Vector_impl(_Tp_alloc_type&& __a) noexcept
  98:/usr/include/c++/7/bits/stl_vector.h **** 	: _Tp_alloc_type(std::move(__a)),
  99:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_start(), _M_finish(), _M_end_of_storage()
 100:/usr/include/c++/7/bits/stl_vector.h **** 	{ }
 101:/usr/include/c++/7/bits/stl_vector.h **** #endif
 102:/usr/include/c++/7/bits/stl_vector.h **** 
 103:/usr/include/c++/7/bits/stl_vector.h **** 	void _M_swap_data(_Vector_impl& __x) _GLIBCXX_NOEXCEPT
 104:/usr/include/c++/7/bits/stl_vector.h **** 	{
 105:/usr/include/c++/7/bits/stl_vector.h **** 	  std::swap(_M_start, __x._M_start);
 106:/usr/include/c++/7/bits/stl_vector.h **** 	  std::swap(_M_finish, __x._M_finish);
 107:/usr/include/c++/7/bits/stl_vector.h **** 	  std::swap(_M_end_of_storage, __x._M_end_of_storage);
 108:/usr/include/c++/7/bits/stl_vector.h **** 	}
 109:/usr/include/c++/7/bits/stl_vector.h ****       };
 110:/usr/include/c++/7/bits/stl_vector.h **** 
 111:/usr/include/c++/7/bits/stl_vector.h ****     public:
 112:/usr/include/c++/7/bits/stl_vector.h ****       typedef _Alloc allocator_type;
 113:/usr/include/c++/7/bits/stl_vector.h **** 
 114:/usr/include/c++/7/bits/stl_vector.h ****       _Tp_alloc_type&
 115:/usr/include/c++/7/bits/stl_vector.h ****       _M_get_Tp_allocator() _GLIBCXX_NOEXCEPT
 116:/usr/include/c++/7/bits/stl_vector.h ****       { return *static_cast<_Tp_alloc_type*>(&this->_M_impl); }
 117:/usr/include/c++/7/bits/stl_vector.h **** 
 118:/usr/include/c++/7/bits/stl_vector.h ****       const _Tp_alloc_type&
 119:/usr/include/c++/7/bits/stl_vector.h ****       _M_get_Tp_allocator() const _GLIBCXX_NOEXCEPT
 120:/usr/include/c++/7/bits/stl_vector.h ****       { return *static_cast<const _Tp_alloc_type*>(&this->_M_impl); }
 121:/usr/include/c++/7/bits/stl_vector.h **** 
 122:/usr/include/c++/7/bits/stl_vector.h ****       allocator_type
 123:/usr/include/c++/7/bits/stl_vector.h ****       get_allocator() const _GLIBCXX_NOEXCEPT
 124:/usr/include/c++/7/bits/stl_vector.h ****       { return allocator_type(_M_get_Tp_allocator()); }
 125:/usr/include/c++/7/bits/stl_vector.h **** 
 126:/usr/include/c++/7/bits/stl_vector.h ****       _Vector_base()
 127:/usr/include/c++/7/bits/stl_vector.h ****       : _M_impl() { }
 128:/usr/include/c++/7/bits/stl_vector.h **** 
 129:/usr/include/c++/7/bits/stl_vector.h ****       _Vector_base(const allocator_type& __a) _GLIBCXX_NOEXCEPT
 130:/usr/include/c++/7/bits/stl_vector.h ****       : _M_impl(__a) { }
 131:/usr/include/c++/7/bits/stl_vector.h **** 
 132:/usr/include/c++/7/bits/stl_vector.h ****       _Vector_base(size_t __n)
 133:/usr/include/c++/7/bits/stl_vector.h ****       : _M_impl()
 134:/usr/include/c++/7/bits/stl_vector.h ****       { _M_create_storage(__n); }
 135:/usr/include/c++/7/bits/stl_vector.h **** 
 136:/usr/include/c++/7/bits/stl_vector.h ****       _Vector_base(size_t __n, const allocator_type& __a)
 137:/usr/include/c++/7/bits/stl_vector.h ****       : _M_impl(__a)
 138:/usr/include/c++/7/bits/stl_vector.h ****       { _M_create_storage(__n); }
 139:/usr/include/c++/7/bits/stl_vector.h **** 
 140:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 141:/usr/include/c++/7/bits/stl_vector.h ****       _Vector_base(_Tp_alloc_type&& __a) noexcept
 142:/usr/include/c++/7/bits/stl_vector.h ****       : _M_impl(std::move(__a)) { }
 143:/usr/include/c++/7/bits/stl_vector.h **** 
 144:/usr/include/c++/7/bits/stl_vector.h ****       _Vector_base(_Vector_base&& __x) noexcept
 145:/usr/include/c++/7/bits/stl_vector.h ****       : _M_impl(std::move(__x._M_get_Tp_allocator()))
 146:/usr/include/c++/7/bits/stl_vector.h ****       { this->_M_impl._M_swap_data(__x._M_impl); }
 147:/usr/include/c++/7/bits/stl_vector.h **** 
 148:/usr/include/c++/7/bits/stl_vector.h ****       _Vector_base(_Vector_base&& __x, const allocator_type& __a)
 149:/usr/include/c++/7/bits/stl_vector.h ****       : _M_impl(__a)
 150:/usr/include/c++/7/bits/stl_vector.h ****       {
 151:/usr/include/c++/7/bits/stl_vector.h **** 	if (__x.get_allocator() == __a)
 152:/usr/include/c++/7/bits/stl_vector.h **** 	  this->_M_impl._M_swap_data(__x._M_impl);
 153:/usr/include/c++/7/bits/stl_vector.h **** 	else
 154:/usr/include/c++/7/bits/stl_vector.h **** 	  {
 155:/usr/include/c++/7/bits/stl_vector.h **** 	    size_t __n = __x._M_impl._M_finish - __x._M_impl._M_start;
 156:/usr/include/c++/7/bits/stl_vector.h **** 	    _M_create_storage(__n);
 157:/usr/include/c++/7/bits/stl_vector.h **** 	  }
 158:/usr/include/c++/7/bits/stl_vector.h ****       }
 159:/usr/include/c++/7/bits/stl_vector.h **** #endif
 160:/usr/include/c++/7/bits/stl_vector.h **** 
 161:/usr/include/c++/7/bits/stl_vector.h ****       ~_Vector_base() _GLIBCXX_NOEXCEPT
 162:/usr/include/c++/7/bits/stl_vector.h ****       { _M_deallocate(this->_M_impl._M_start, this->_M_impl._M_end_of_storage
 163:/usr/include/c++/7/bits/stl_vector.h **** 		      - this->_M_impl._M_start); }
 164:/usr/include/c++/7/bits/stl_vector.h **** 
 165:/usr/include/c++/7/bits/stl_vector.h ****     public:
 166:/usr/include/c++/7/bits/stl_vector.h ****       _Vector_impl _M_impl;
 167:/usr/include/c++/7/bits/stl_vector.h **** 
 168:/usr/include/c++/7/bits/stl_vector.h ****       pointer
 169:/usr/include/c++/7/bits/stl_vector.h ****       _M_allocate(size_t __n)
 170:/usr/include/c++/7/bits/stl_vector.h ****       {
 171:/usr/include/c++/7/bits/stl_vector.h **** 	typedef __gnu_cxx::__alloc_traits<_Tp_alloc_type> _Tr;
 172:/usr/include/c++/7/bits/stl_vector.h **** 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
 173:/usr/include/c++/7/bits/stl_vector.h ****       }
 174:/usr/include/c++/7/bits/stl_vector.h **** 
 175:/usr/include/c++/7/bits/stl_vector.h ****       void
 176:/usr/include/c++/7/bits/stl_vector.h ****       _M_deallocate(pointer __p, size_t __n)
 177:/usr/include/c++/7/bits/stl_vector.h ****       {
 178:/usr/include/c++/7/bits/stl_vector.h **** 	typedef __gnu_cxx::__alloc_traits<_Tp_alloc_type> _Tr;
 179:/usr/include/c++/7/bits/stl_vector.h **** 	if (__p)
 180:/usr/include/c++/7/bits/stl_vector.h **** 	  _Tr::deallocate(_M_impl, __p, __n);
 181:/usr/include/c++/7/bits/stl_vector.h ****       }
 182:/usr/include/c++/7/bits/stl_vector.h **** 
 183:/usr/include/c++/7/bits/stl_vector.h ****     private:
 184:/usr/include/c++/7/bits/stl_vector.h ****       void
 185:/usr/include/c++/7/bits/stl_vector.h ****       _M_create_storage(size_t __n)
 186:/usr/include/c++/7/bits/stl_vector.h ****       {
 187:/usr/include/c++/7/bits/stl_vector.h **** 	this->_M_impl._M_start = this->_M_allocate(__n);
 188:/usr/include/c++/7/bits/stl_vector.h **** 	this->_M_impl._M_finish = this->_M_impl._M_start;
 189:/usr/include/c++/7/bits/stl_vector.h **** 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
 190:/usr/include/c++/7/bits/stl_vector.h ****       }
 191:/usr/include/c++/7/bits/stl_vector.h ****     };
 192:/usr/include/c++/7/bits/stl_vector.h **** 
 193:/usr/include/c++/7/bits/stl_vector.h **** 
 194:/usr/include/c++/7/bits/stl_vector.h ****   /**
 195:/usr/include/c++/7/bits/stl_vector.h ****    *  @brief A standard container which offers fixed time access to
 196:/usr/include/c++/7/bits/stl_vector.h ****    *  individual elements in any order.
 197:/usr/include/c++/7/bits/stl_vector.h ****    *
 198:/usr/include/c++/7/bits/stl_vector.h ****    *  @ingroup sequences
 199:/usr/include/c++/7/bits/stl_vector.h ****    *
 200:/usr/include/c++/7/bits/stl_vector.h ****    *  @tparam _Tp  Type of element.
 201:/usr/include/c++/7/bits/stl_vector.h ****    *  @tparam _Alloc  Allocator type, defaults to allocator<_Tp>.
 202:/usr/include/c++/7/bits/stl_vector.h ****    *
 203:/usr/include/c++/7/bits/stl_vector.h ****    *  Meets the requirements of a <a href="tables.html#65">container</a>, a
 204:/usr/include/c++/7/bits/stl_vector.h ****    *  <a href="tables.html#66">reversible container</a>, and a
 205:/usr/include/c++/7/bits/stl_vector.h ****    *  <a href="tables.html#67">sequence</a>, including the
 206:/usr/include/c++/7/bits/stl_vector.h ****    *  <a href="tables.html#68">optional sequence requirements</a> with the
 207:/usr/include/c++/7/bits/stl_vector.h ****    *  %exception of @c push_front and @c pop_front.
 208:/usr/include/c++/7/bits/stl_vector.h ****    *
 209:/usr/include/c++/7/bits/stl_vector.h ****    *  In some terminology a %vector can be described as a dynamic
 210:/usr/include/c++/7/bits/stl_vector.h ****    *  C-style array, it offers fast and efficient access to individual
 211:/usr/include/c++/7/bits/stl_vector.h ****    *  elements in any order and saves the user from worrying about
 212:/usr/include/c++/7/bits/stl_vector.h ****    *  memory and size allocation.  Subscripting ( @c [] ) access is
 213:/usr/include/c++/7/bits/stl_vector.h ****    *  also provided as with C-style arrays.
 214:/usr/include/c++/7/bits/stl_vector.h ****   */
 215:/usr/include/c++/7/bits/stl_vector.h ****   template<typename _Tp, typename _Alloc = std::allocator<_Tp> >
 216:/usr/include/c++/7/bits/stl_vector.h ****     class vector : protected _Vector_base<_Tp, _Alloc>
 217:/usr/include/c++/7/bits/stl_vector.h ****     {
 218:/usr/include/c++/7/bits/stl_vector.h **** #ifdef _GLIBCXX_CONCEPT_CHECKS
 219:/usr/include/c++/7/bits/stl_vector.h ****       // Concept requirements.
 220:/usr/include/c++/7/bits/stl_vector.h ****       typedef typename _Alloc::value_type		_Alloc_value_type;
 221:/usr/include/c++/7/bits/stl_vector.h **** # if __cplusplus < 201103L
 222:/usr/include/c++/7/bits/stl_vector.h ****       __glibcxx_class_requires(_Tp, _SGIAssignableConcept)
 223:/usr/include/c++/7/bits/stl_vector.h **** # endif
 224:/usr/include/c++/7/bits/stl_vector.h ****       __glibcxx_class_requires2(_Tp, _Alloc_value_type, _SameTypeConcept)
 225:/usr/include/c++/7/bits/stl_vector.h **** #endif
 226:/usr/include/c++/7/bits/stl_vector.h **** 
 227:/usr/include/c++/7/bits/stl_vector.h ****       typedef _Vector_base<_Tp, _Alloc>			_Base;
 228:/usr/include/c++/7/bits/stl_vector.h ****       typedef typename _Base::_Tp_alloc_type		_Tp_alloc_type;
 229:/usr/include/c++/7/bits/stl_vector.h ****       typedef __gnu_cxx::__alloc_traits<_Tp_alloc_type>	_Alloc_traits;
 230:/usr/include/c++/7/bits/stl_vector.h **** 
 231:/usr/include/c++/7/bits/stl_vector.h ****     public:
 232:/usr/include/c++/7/bits/stl_vector.h ****       typedef _Tp					value_type;
 233:/usr/include/c++/7/bits/stl_vector.h ****       typedef typename _Base::pointer			pointer;
 234:/usr/include/c++/7/bits/stl_vector.h ****       typedef typename _Alloc_traits::const_pointer	const_pointer;
 235:/usr/include/c++/7/bits/stl_vector.h ****       typedef typename _Alloc_traits::reference		reference;
 236:/usr/include/c++/7/bits/stl_vector.h ****       typedef typename _Alloc_traits::const_reference	const_reference;
 237:/usr/include/c++/7/bits/stl_vector.h ****       typedef __gnu_cxx::__normal_iterator<pointer, vector> iterator;
 238:/usr/include/c++/7/bits/stl_vector.h ****       typedef __gnu_cxx::__normal_iterator<const_pointer, vector>
 239:/usr/include/c++/7/bits/stl_vector.h ****       const_iterator;
 240:/usr/include/c++/7/bits/stl_vector.h ****       typedef std::reverse_iterator<const_iterator>	const_reverse_iterator;
 241:/usr/include/c++/7/bits/stl_vector.h ****       typedef std::reverse_iterator<iterator>		reverse_iterator;
 242:/usr/include/c++/7/bits/stl_vector.h ****       typedef size_t					size_type;
 243:/usr/include/c++/7/bits/stl_vector.h ****       typedef ptrdiff_t					difference_type;
 244:/usr/include/c++/7/bits/stl_vector.h ****       typedef _Alloc					allocator_type;
 245:/usr/include/c++/7/bits/stl_vector.h **** 
 246:/usr/include/c++/7/bits/stl_vector.h ****     protected:
 247:/usr/include/c++/7/bits/stl_vector.h ****       using _Base::_M_allocate;
 248:/usr/include/c++/7/bits/stl_vector.h ****       using _Base::_M_deallocate;
 249:/usr/include/c++/7/bits/stl_vector.h ****       using _Base::_M_impl;
 250:/usr/include/c++/7/bits/stl_vector.h ****       using _Base::_M_get_Tp_allocator;
 251:/usr/include/c++/7/bits/stl_vector.h **** 
 252:/usr/include/c++/7/bits/stl_vector.h ****     public:
 253:/usr/include/c++/7/bits/stl_vector.h ****       // [23.2.4.1] construct/copy/destroy
 254:/usr/include/c++/7/bits/stl_vector.h ****       // (assign() and get_allocator() are also listed in this section)
 255:/usr/include/c++/7/bits/stl_vector.h **** 
 256:/usr/include/c++/7/bits/stl_vector.h ****       /**
 257:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Creates a %vector with no elements.
 258:/usr/include/c++/7/bits/stl_vector.h ****        */
 259:/usr/include/c++/7/bits/stl_vector.h ****       vector()
 1630              		.loc 2 259 0
 1631              		.cfi_startproc
 1632              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 1633              		.cfi_lsda 0x1b,.LLSDA2098
 1634 0000 55       		pushq	%rbp
 1635              		.cfi_def_cfa_offset 16
 1636              		.cfi_offset 6, -16
 1637 0001 4889E5   		movq	%rsp, %rbp
 1638              		.cfi_def_cfa_register 6
 1639 0004 4883EC10 		subq	$16, %rsp
 1640 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1641              	.LBB21:
 260:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 261:/usr/include/c++/7/bits/stl_vector.h ****       noexcept(is_nothrow_default_constructible<_Alloc>::value)
 262:/usr/include/c++/7/bits/stl_vector.h **** #endif
 263:/usr/include/c++/7/bits/stl_vector.h ****       : _Base() { }
 1642              		.loc 2 263 0
 1643 000c 488B45F8 		movq	-8(%rbp), %rax
 1644 0010 4889C7   		movq	%rax, %rdi
 1645 0013 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEEC2Ev
 1645      00
 1646              	.LBE21:
 1647 0018 90       		nop
 1648 0019 C9       		leave
 1649              		.cfi_def_cfa 7, 8
 1650 001a C3       		ret
 1651              		.cfi_endproc
 1652              	.LFE2098:
 1653              		.section	.gcc_except_table
 1654              	.LLSDA2098:
 1655 006f FF       		.byte	0xff
 1656 0070 FF       		.byte	0xff
 1657 0071 01       		.byte	0x1
 1658 0072 00       		.uleb128 .LLSDACSE2098-.LLSDACSB2098
 1659              	.LLSDACSB2098:
 1660              	.LLSDACSE2098:
 1661              		.section	.text._ZNSt6vectorIdSaIdEEC2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5Ev,comdat
 1663              		.weak	_ZNSt6vectorIdSaIdEEC1Ev
 1664              		.set	_ZNSt6vectorIdSaIdEEC1Ev,_ZNSt6vectorIdSaIdEEC2Ev
 1665              		.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
 1666              		.align 2
 1667              		.weak	_ZNSt6vectorIdSaIdEED2Ev
 1669              	_ZNSt6vectorIdSaIdEED2Ev:
 1670              	.LFB2101:
 264:/usr/include/c++/7/bits/stl_vector.h **** 
 265:/usr/include/c++/7/bits/stl_vector.h ****       /**
 266:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Creates a %vector with no elements.
 267:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __a  An allocator object.
 268:/usr/include/c++/7/bits/stl_vector.h ****        */
 269:/usr/include/c++/7/bits/stl_vector.h ****       explicit
 270:/usr/include/c++/7/bits/stl_vector.h ****       vector(const allocator_type& __a) _GLIBCXX_NOEXCEPT
 271:/usr/include/c++/7/bits/stl_vector.h ****       : _Base(__a) { }
 272:/usr/include/c++/7/bits/stl_vector.h **** 
 273:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 274:/usr/include/c++/7/bits/stl_vector.h ****       /**
 275:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Creates a %vector with default constructed elements.
 276:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __n  The number of elements to initially create.
 277:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __a  An allocator.
 278:/usr/include/c++/7/bits/stl_vector.h ****        *
 279:/usr/include/c++/7/bits/stl_vector.h ****        *  This constructor fills the %vector with @a __n default
 280:/usr/include/c++/7/bits/stl_vector.h ****        *  constructed elements.
 281:/usr/include/c++/7/bits/stl_vector.h ****        */
 282:/usr/include/c++/7/bits/stl_vector.h ****       explicit
 283:/usr/include/c++/7/bits/stl_vector.h ****       vector(size_type __n, const allocator_type& __a = allocator_type())
 284:/usr/include/c++/7/bits/stl_vector.h ****       : _Base(__n, __a)
 285:/usr/include/c++/7/bits/stl_vector.h ****       { _M_default_initialize(__n); }
 286:/usr/include/c++/7/bits/stl_vector.h **** 
 287:/usr/include/c++/7/bits/stl_vector.h ****       /**
 288:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Creates a %vector with copies of an exemplar element.
 289:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __n  The number of elements to initially create.
 290:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __value  An element to copy.
 291:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __a  An allocator.
 292:/usr/include/c++/7/bits/stl_vector.h ****        *
 293:/usr/include/c++/7/bits/stl_vector.h ****        *  This constructor fills the %vector with @a __n copies of @a __value.
 294:/usr/include/c++/7/bits/stl_vector.h ****        */
 295:/usr/include/c++/7/bits/stl_vector.h ****       vector(size_type __n, const value_type& __value,
 296:/usr/include/c++/7/bits/stl_vector.h **** 	     const allocator_type& __a = allocator_type())
 297:/usr/include/c++/7/bits/stl_vector.h ****       : _Base(__n, __a)
 298:/usr/include/c++/7/bits/stl_vector.h ****       { _M_fill_initialize(__n, __value); }
 299:/usr/include/c++/7/bits/stl_vector.h **** #else
 300:/usr/include/c++/7/bits/stl_vector.h ****       /**
 301:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Creates a %vector with copies of an exemplar element.
 302:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __n  The number of elements to initially create.
 303:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __value  An element to copy.
 304:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __a  An allocator.
 305:/usr/include/c++/7/bits/stl_vector.h ****        *
 306:/usr/include/c++/7/bits/stl_vector.h ****        *  This constructor fills the %vector with @a __n copies of @a __value.
 307:/usr/include/c++/7/bits/stl_vector.h ****        */
 308:/usr/include/c++/7/bits/stl_vector.h ****       explicit
 309:/usr/include/c++/7/bits/stl_vector.h ****       vector(size_type __n, const value_type& __value = value_type(),
 310:/usr/include/c++/7/bits/stl_vector.h **** 	     const allocator_type& __a = allocator_type())
 311:/usr/include/c++/7/bits/stl_vector.h ****       : _Base(__n, __a)
 312:/usr/include/c++/7/bits/stl_vector.h ****       { _M_fill_initialize(__n, __value); }
 313:/usr/include/c++/7/bits/stl_vector.h **** #endif
 314:/usr/include/c++/7/bits/stl_vector.h **** 
 315:/usr/include/c++/7/bits/stl_vector.h ****       /**
 316:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  %Vector copy constructor.
 317:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __x  A %vector of identical element and allocator types.
 318:/usr/include/c++/7/bits/stl_vector.h ****        *
 319:/usr/include/c++/7/bits/stl_vector.h ****        *  All the elements of @a __x are copied, but any unused capacity in
 320:/usr/include/c++/7/bits/stl_vector.h ****        *  @a __x  will not be copied
 321:/usr/include/c++/7/bits/stl_vector.h ****        *  (i.e. capacity() == size() in the new %vector).
 322:/usr/include/c++/7/bits/stl_vector.h ****        *
 323:/usr/include/c++/7/bits/stl_vector.h ****        *  The newly-created %vector uses a copy of the allocator object used
 324:/usr/include/c++/7/bits/stl_vector.h ****        *  by @a __x (unless the allocator traits dictate a different object).
 325:/usr/include/c++/7/bits/stl_vector.h ****        */
 326:/usr/include/c++/7/bits/stl_vector.h ****       vector(const vector& __x)
 327:/usr/include/c++/7/bits/stl_vector.h ****       : _Base(__x.size(),
 328:/usr/include/c++/7/bits/stl_vector.h **** 	_Alloc_traits::_S_select_on_copy(__x._M_get_Tp_allocator()))
 329:/usr/include/c++/7/bits/stl_vector.h ****       {
 330:/usr/include/c++/7/bits/stl_vector.h **** 	this->_M_impl._M_finish =
 331:/usr/include/c++/7/bits/stl_vector.h **** 	  std::__uninitialized_copy_a(__x.begin(), __x.end(),
 332:/usr/include/c++/7/bits/stl_vector.h **** 				      this->_M_impl._M_start,
 333:/usr/include/c++/7/bits/stl_vector.h **** 				      _M_get_Tp_allocator());
 334:/usr/include/c++/7/bits/stl_vector.h ****       }
 335:/usr/include/c++/7/bits/stl_vector.h **** 
 336:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 337:/usr/include/c++/7/bits/stl_vector.h ****       /**
 338:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  %Vector move constructor.
 339:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __x  A %vector of identical element and allocator types.
 340:/usr/include/c++/7/bits/stl_vector.h ****        *
 341:/usr/include/c++/7/bits/stl_vector.h ****        *  The newly-created %vector contains the exact contents of @a __x.
 342:/usr/include/c++/7/bits/stl_vector.h ****        *  The contents of @a __x are a valid, but unspecified %vector.
 343:/usr/include/c++/7/bits/stl_vector.h ****        */
 344:/usr/include/c++/7/bits/stl_vector.h ****       vector(vector&& __x) noexcept
 345:/usr/include/c++/7/bits/stl_vector.h ****       : _Base(std::move(__x)) { }
 346:/usr/include/c++/7/bits/stl_vector.h **** 
 347:/usr/include/c++/7/bits/stl_vector.h ****       /// Copy constructor with alternative allocator
 348:/usr/include/c++/7/bits/stl_vector.h ****       vector(const vector& __x, const allocator_type& __a)
 349:/usr/include/c++/7/bits/stl_vector.h ****       : _Base(__x.size(), __a)
 350:/usr/include/c++/7/bits/stl_vector.h ****       {
 351:/usr/include/c++/7/bits/stl_vector.h **** 	this->_M_impl._M_finish =
 352:/usr/include/c++/7/bits/stl_vector.h **** 	  std::__uninitialized_copy_a(__x.begin(), __x.end(),
 353:/usr/include/c++/7/bits/stl_vector.h **** 				      this->_M_impl._M_start,
 354:/usr/include/c++/7/bits/stl_vector.h **** 				      _M_get_Tp_allocator());
 355:/usr/include/c++/7/bits/stl_vector.h ****       }
 356:/usr/include/c++/7/bits/stl_vector.h **** 
 357:/usr/include/c++/7/bits/stl_vector.h ****       /// Move constructor with alternative allocator
 358:/usr/include/c++/7/bits/stl_vector.h ****       vector(vector&& __rv, const allocator_type& __m)
 359:/usr/include/c++/7/bits/stl_vector.h ****       noexcept(_Alloc_traits::_S_always_equal())
 360:/usr/include/c++/7/bits/stl_vector.h ****       : _Base(std::move(__rv), __m)
 361:/usr/include/c++/7/bits/stl_vector.h ****       {
 362:/usr/include/c++/7/bits/stl_vector.h **** 	if (__rv.get_allocator() != __m)
 363:/usr/include/c++/7/bits/stl_vector.h **** 	  {
 364:/usr/include/c++/7/bits/stl_vector.h **** 	    this->_M_impl._M_finish =
 365:/usr/include/c++/7/bits/stl_vector.h **** 	      std::__uninitialized_move_a(__rv.begin(), __rv.end(),
 366:/usr/include/c++/7/bits/stl_vector.h **** 					  this->_M_impl._M_start,
 367:/usr/include/c++/7/bits/stl_vector.h **** 					  _M_get_Tp_allocator());
 368:/usr/include/c++/7/bits/stl_vector.h **** 	    __rv.clear();
 369:/usr/include/c++/7/bits/stl_vector.h **** 	  }
 370:/usr/include/c++/7/bits/stl_vector.h ****       }
 371:/usr/include/c++/7/bits/stl_vector.h **** 
 372:/usr/include/c++/7/bits/stl_vector.h ****       /**
 373:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Builds a %vector from an initializer list.
 374:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __l  An initializer_list.
 375:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __a  An allocator.
 376:/usr/include/c++/7/bits/stl_vector.h ****        *
 377:/usr/include/c++/7/bits/stl_vector.h ****        *  Create a %vector consisting of copies of the elements in the
 378:/usr/include/c++/7/bits/stl_vector.h ****        *  initializer_list @a __l.
 379:/usr/include/c++/7/bits/stl_vector.h ****        *
 380:/usr/include/c++/7/bits/stl_vector.h ****        *  This will call the element type's copy constructor N times
 381:/usr/include/c++/7/bits/stl_vector.h ****        *  (where N is @a __l.size()) and do no memory reallocation.
 382:/usr/include/c++/7/bits/stl_vector.h ****        */
 383:/usr/include/c++/7/bits/stl_vector.h ****       vector(initializer_list<value_type> __l,
 384:/usr/include/c++/7/bits/stl_vector.h **** 	     const allocator_type& __a = allocator_type())
 385:/usr/include/c++/7/bits/stl_vector.h ****       : _Base(__a)
 386:/usr/include/c++/7/bits/stl_vector.h ****       {
 387:/usr/include/c++/7/bits/stl_vector.h **** 	_M_range_initialize(__l.begin(), __l.end(),
 388:/usr/include/c++/7/bits/stl_vector.h **** 			    random_access_iterator_tag());
 389:/usr/include/c++/7/bits/stl_vector.h ****       }
 390:/usr/include/c++/7/bits/stl_vector.h **** #endif
 391:/usr/include/c++/7/bits/stl_vector.h **** 
 392:/usr/include/c++/7/bits/stl_vector.h ****       /**
 393:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Builds a %vector from a range.
 394:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __first  An input iterator.
 395:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __last  An input iterator.
 396:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __a  An allocator.
 397:/usr/include/c++/7/bits/stl_vector.h ****        *
 398:/usr/include/c++/7/bits/stl_vector.h ****        *  Create a %vector consisting of copies of the elements from
 399:/usr/include/c++/7/bits/stl_vector.h ****        *  [first,last).
 400:/usr/include/c++/7/bits/stl_vector.h ****        *
 401:/usr/include/c++/7/bits/stl_vector.h ****        *  If the iterators are forward, bidirectional, or
 402:/usr/include/c++/7/bits/stl_vector.h ****        *  random-access, then this will call the elements' copy
 403:/usr/include/c++/7/bits/stl_vector.h ****        *  constructor N times (where N is distance(first,last)) and do
 404:/usr/include/c++/7/bits/stl_vector.h ****        *  no memory reallocation.  But if only input iterators are
 405:/usr/include/c++/7/bits/stl_vector.h ****        *  used, then this will do at most 2N calls to the copy
 406:/usr/include/c++/7/bits/stl_vector.h ****        *  constructor, and logN memory reallocations.
 407:/usr/include/c++/7/bits/stl_vector.h ****        */
 408:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 409:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _InputIterator,
 410:/usr/include/c++/7/bits/stl_vector.h **** 	       typename = std::_RequireInputIter<_InputIterator>>
 411:/usr/include/c++/7/bits/stl_vector.h **** 	vector(_InputIterator __first, _InputIterator __last,
 412:/usr/include/c++/7/bits/stl_vector.h **** 	       const allocator_type& __a = allocator_type())
 413:/usr/include/c++/7/bits/stl_vector.h **** 	: _Base(__a)
 414:/usr/include/c++/7/bits/stl_vector.h **** 	{ _M_initialize_dispatch(__first, __last, __false_type()); }
 415:/usr/include/c++/7/bits/stl_vector.h **** #else
 416:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _InputIterator>
 417:/usr/include/c++/7/bits/stl_vector.h **** 	vector(_InputIterator __first, _InputIterator __last,
 418:/usr/include/c++/7/bits/stl_vector.h **** 	       const allocator_type& __a = allocator_type())
 419:/usr/include/c++/7/bits/stl_vector.h **** 	: _Base(__a)
 420:/usr/include/c++/7/bits/stl_vector.h **** 	{
 421:/usr/include/c++/7/bits/stl_vector.h **** 	  // Check whether it's an integral type.  If so, it's not an iterator.
 422:/usr/include/c++/7/bits/stl_vector.h **** 	  typedef typename std::__is_integer<_InputIterator>::__type _Integral;
 423:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_initialize_dispatch(__first, __last, _Integral());
 424:/usr/include/c++/7/bits/stl_vector.h **** 	}
 425:/usr/include/c++/7/bits/stl_vector.h **** #endif
 426:/usr/include/c++/7/bits/stl_vector.h **** 
 427:/usr/include/c++/7/bits/stl_vector.h ****       /**
 428:/usr/include/c++/7/bits/stl_vector.h ****        *  The dtor only erases the elements, and note that if the
 429:/usr/include/c++/7/bits/stl_vector.h ****        *  elements themselves are pointers, the pointed-to memory is
 430:/usr/include/c++/7/bits/stl_vector.h ****        *  not touched in any way.  Managing the pointer is the user's
 431:/usr/include/c++/7/bits/stl_vector.h ****        *  responsibility.
 432:/usr/include/c++/7/bits/stl_vector.h ****        */
 433:/usr/include/c++/7/bits/stl_vector.h ****       ~vector() _GLIBCXX_NOEXCEPT
 1671              		.loc 2 433 0
 1672              		.cfi_startproc
 1673              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 1674              		.cfi_lsda 0x1b,.LLSDA2101
 1675 0000 55       		pushq	%rbp
 1676              		.cfi_def_cfa_offset 16
 1677              		.cfi_offset 6, -16
 1678 0001 4889E5   		movq	%rsp, %rbp
 1679              		.cfi_def_cfa_register 6
 1680 0004 4883EC10 		subq	$16, %rsp
 1681 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1682              	.LBB22:
 434:/usr/include/c++/7/bits/stl_vector.h ****       { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 435:/usr/include/c++/7/bits/stl_vector.h **** 		      _M_get_Tp_allocator()); }
 1683              		.loc 2 435 0
 1684 000c 488B45F8 		movq	-8(%rbp), %rax
 1685 0010 4889C7   		movq	%rax, %rdi
 1686 0013 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 1686      00
 1687 0018 4889C2   		movq	%rax, %rdx
 434:/usr/include/c++/7/bits/stl_vector.h ****       { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 1688              		.loc 2 434 0
 1689 001b 488B45F8 		movq	-8(%rbp), %rax
 1690 001f 488B4808 		movq	8(%rax), %rcx
 1691 0023 488B45F8 		movq	-8(%rbp), %rax
 1692 0027 488B00   		movq	(%rax), %rax
 1693 002a 4889CE   		movq	%rcx, %rsi
 1694 002d 4889C7   		movq	%rax, %rdi
 1695 0030 E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 1695      00
 1696              		.loc 2 435 0
 1697 0035 488B45F8 		movq	-8(%rbp), %rax
 1698 0039 4889C7   		movq	%rax, %rdi
 1699 003c E8000000 		call	_ZNSt12_Vector_baseIdSaIdEED2Ev
 1699      00
 1700              	.LBE22:
 1701 0041 90       		nop
 1702 0042 C9       		leave
 1703              		.cfi_def_cfa 7, 8
 1704 0043 C3       		ret
 1705              		.cfi_endproc
 1706              	.LFE2101:
 1707              		.section	.gcc_except_table
 1708              	.LLSDA2101:
 1709 0073 FF       		.byte	0xff
 1710 0074 FF       		.byte	0xff
 1711 0075 01       		.byte	0x1
 1712 0076 00       		.uleb128 .LLSDACSE2101-.LLSDACSB2101
 1713              	.LLSDACSB2101:
 1714              	.LLSDACSE2101:
 1715              		.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
 1717              		.weak	_ZNSt6vectorIdSaIdEED1Ev
 1718              		.set	_ZNSt6vectorIdSaIdEED1Ev,_ZNSt6vectorIdSaIdEED2Ev
 1719              		.section	.text._ZNSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNSt6vectorIdSaIdEEixEm,comdat
 1720              		.align 2
 1721              		.weak	_ZNSt6vectorIdSaIdEEixEm
 1723              	_ZNSt6vectorIdSaIdEEixEm:
 1724              	.LFB2115:
 436:/usr/include/c++/7/bits/stl_vector.h **** 
 437:/usr/include/c++/7/bits/stl_vector.h ****       /**
 438:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  %Vector assignment operator.
 439:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __x  A %vector of identical element and allocator types.
 440:/usr/include/c++/7/bits/stl_vector.h ****        *
 441:/usr/include/c++/7/bits/stl_vector.h ****        *  All the elements of @a __x are copied, but any unused capacity in
 442:/usr/include/c++/7/bits/stl_vector.h ****        *  @a __x will not be copied.
 443:/usr/include/c++/7/bits/stl_vector.h ****        *
 444:/usr/include/c++/7/bits/stl_vector.h ****        *  Whether the allocator is copied depends on the allocator traits.
 445:/usr/include/c++/7/bits/stl_vector.h ****        */
 446:/usr/include/c++/7/bits/stl_vector.h ****       vector&
 447:/usr/include/c++/7/bits/stl_vector.h ****       operator=(const vector& __x);
 448:/usr/include/c++/7/bits/stl_vector.h **** 
 449:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 450:/usr/include/c++/7/bits/stl_vector.h ****       /**
 451:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  %Vector move assignment operator.
 452:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __x  A %vector of identical element and allocator types.
 453:/usr/include/c++/7/bits/stl_vector.h ****        *
 454:/usr/include/c++/7/bits/stl_vector.h ****        *  The contents of @a __x are moved into this %vector (without copying,
 455:/usr/include/c++/7/bits/stl_vector.h ****        *  if the allocators permit it).
 456:/usr/include/c++/7/bits/stl_vector.h ****        *  Afterwards @a __x is a valid, but unspecified %vector.
 457:/usr/include/c++/7/bits/stl_vector.h ****        *
 458:/usr/include/c++/7/bits/stl_vector.h ****        *  Whether the allocator is moved depends on the allocator traits.
 459:/usr/include/c++/7/bits/stl_vector.h ****        */
 460:/usr/include/c++/7/bits/stl_vector.h ****       vector&
 461:/usr/include/c++/7/bits/stl_vector.h ****       operator=(vector&& __x) noexcept(_Alloc_traits::_S_nothrow_move())
 462:/usr/include/c++/7/bits/stl_vector.h ****       {
 463:/usr/include/c++/7/bits/stl_vector.h **** 	constexpr bool __move_storage =
 464:/usr/include/c++/7/bits/stl_vector.h **** 	  _Alloc_traits::_S_propagate_on_move_assign()
 465:/usr/include/c++/7/bits/stl_vector.h **** 	  || _Alloc_traits::_S_always_equal();
 466:/usr/include/c++/7/bits/stl_vector.h **** 	_M_move_assign(std::move(__x), __bool_constant<__move_storage>());
 467:/usr/include/c++/7/bits/stl_vector.h **** 	return *this;
 468:/usr/include/c++/7/bits/stl_vector.h ****       }
 469:/usr/include/c++/7/bits/stl_vector.h **** 
 470:/usr/include/c++/7/bits/stl_vector.h ****       /**
 471:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  %Vector list assignment operator.
 472:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __l  An initializer_list.
 473:/usr/include/c++/7/bits/stl_vector.h ****        *
 474:/usr/include/c++/7/bits/stl_vector.h ****        *  This function fills a %vector with copies of the elements in the
 475:/usr/include/c++/7/bits/stl_vector.h ****        *  initializer list @a __l.
 476:/usr/include/c++/7/bits/stl_vector.h ****        *
 477:/usr/include/c++/7/bits/stl_vector.h ****        *  Note that the assignment completely changes the %vector and
 478:/usr/include/c++/7/bits/stl_vector.h ****        *  that the resulting %vector's size is the same as the number
 479:/usr/include/c++/7/bits/stl_vector.h ****        *  of elements assigned.
 480:/usr/include/c++/7/bits/stl_vector.h ****        */
 481:/usr/include/c++/7/bits/stl_vector.h ****       vector&
 482:/usr/include/c++/7/bits/stl_vector.h ****       operator=(initializer_list<value_type> __l)
 483:/usr/include/c++/7/bits/stl_vector.h ****       {
 484:/usr/include/c++/7/bits/stl_vector.h **** 	this->_M_assign_aux(__l.begin(), __l.end(),
 485:/usr/include/c++/7/bits/stl_vector.h **** 			    random_access_iterator_tag());
 486:/usr/include/c++/7/bits/stl_vector.h **** 	return *this;
 487:/usr/include/c++/7/bits/stl_vector.h ****       }
 488:/usr/include/c++/7/bits/stl_vector.h **** #endif
 489:/usr/include/c++/7/bits/stl_vector.h **** 
 490:/usr/include/c++/7/bits/stl_vector.h ****       /**
 491:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Assigns a given value to a %vector.
 492:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __n  Number of elements to be assigned.
 493:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __val  Value to be assigned.
 494:/usr/include/c++/7/bits/stl_vector.h ****        *
 495:/usr/include/c++/7/bits/stl_vector.h ****        *  This function fills a %vector with @a __n copies of the given
 496:/usr/include/c++/7/bits/stl_vector.h ****        *  value.  Note that the assignment completely changes the
 497:/usr/include/c++/7/bits/stl_vector.h ****        *  %vector and that the resulting %vector's size is the same as
 498:/usr/include/c++/7/bits/stl_vector.h ****        *  the number of elements assigned.
 499:/usr/include/c++/7/bits/stl_vector.h ****        */
 500:/usr/include/c++/7/bits/stl_vector.h ****       void
 501:/usr/include/c++/7/bits/stl_vector.h ****       assign(size_type __n, const value_type& __val)
 502:/usr/include/c++/7/bits/stl_vector.h ****       { _M_fill_assign(__n, __val); }
 503:/usr/include/c++/7/bits/stl_vector.h **** 
 504:/usr/include/c++/7/bits/stl_vector.h ****       /**
 505:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Assigns a range to a %vector.
 506:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __first  An input iterator.
 507:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __last   An input iterator.
 508:/usr/include/c++/7/bits/stl_vector.h ****        *
 509:/usr/include/c++/7/bits/stl_vector.h ****        *  This function fills a %vector with copies of the elements in the
 510:/usr/include/c++/7/bits/stl_vector.h ****        *  range [__first,__last).
 511:/usr/include/c++/7/bits/stl_vector.h ****        *
 512:/usr/include/c++/7/bits/stl_vector.h ****        *  Note that the assignment completely changes the %vector and
 513:/usr/include/c++/7/bits/stl_vector.h ****        *  that the resulting %vector's size is the same as the number
 514:/usr/include/c++/7/bits/stl_vector.h ****        *  of elements assigned.
 515:/usr/include/c++/7/bits/stl_vector.h ****        */
 516:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 517:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _InputIterator,
 518:/usr/include/c++/7/bits/stl_vector.h **** 	       typename = std::_RequireInputIter<_InputIterator>>
 519:/usr/include/c++/7/bits/stl_vector.h **** 	void
 520:/usr/include/c++/7/bits/stl_vector.h **** 	assign(_InputIterator __first, _InputIterator __last)
 521:/usr/include/c++/7/bits/stl_vector.h **** 	{ _M_assign_dispatch(__first, __last, __false_type()); }
 522:/usr/include/c++/7/bits/stl_vector.h **** #else
 523:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _InputIterator>
 524:/usr/include/c++/7/bits/stl_vector.h **** 	void
 525:/usr/include/c++/7/bits/stl_vector.h **** 	assign(_InputIterator __first, _InputIterator __last)
 526:/usr/include/c++/7/bits/stl_vector.h **** 	{
 527:/usr/include/c++/7/bits/stl_vector.h **** 	  // Check whether it's an integral type.  If so, it's not an iterator.
 528:/usr/include/c++/7/bits/stl_vector.h **** 	  typedef typename std::__is_integer<_InputIterator>::__type _Integral;
 529:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_assign_dispatch(__first, __last, _Integral());
 530:/usr/include/c++/7/bits/stl_vector.h **** 	}
 531:/usr/include/c++/7/bits/stl_vector.h **** #endif
 532:/usr/include/c++/7/bits/stl_vector.h **** 
 533:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 534:/usr/include/c++/7/bits/stl_vector.h ****       /**
 535:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Assigns an initializer list to a %vector.
 536:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __l  An initializer_list.
 537:/usr/include/c++/7/bits/stl_vector.h ****        *
 538:/usr/include/c++/7/bits/stl_vector.h ****        *  This function fills a %vector with copies of the elements in the
 539:/usr/include/c++/7/bits/stl_vector.h ****        *  initializer list @a __l.
 540:/usr/include/c++/7/bits/stl_vector.h ****        *
 541:/usr/include/c++/7/bits/stl_vector.h ****        *  Note that the assignment completely changes the %vector and
 542:/usr/include/c++/7/bits/stl_vector.h ****        *  that the resulting %vector's size is the same as the number
 543:/usr/include/c++/7/bits/stl_vector.h ****        *  of elements assigned.
 544:/usr/include/c++/7/bits/stl_vector.h ****        */
 545:/usr/include/c++/7/bits/stl_vector.h ****       void
 546:/usr/include/c++/7/bits/stl_vector.h ****       assign(initializer_list<value_type> __l)
 547:/usr/include/c++/7/bits/stl_vector.h ****       {
 548:/usr/include/c++/7/bits/stl_vector.h **** 	this->_M_assign_aux(__l.begin(), __l.end(),
 549:/usr/include/c++/7/bits/stl_vector.h **** 			    random_access_iterator_tag());
 550:/usr/include/c++/7/bits/stl_vector.h ****       }
 551:/usr/include/c++/7/bits/stl_vector.h **** #endif
 552:/usr/include/c++/7/bits/stl_vector.h **** 
 553:/usr/include/c++/7/bits/stl_vector.h ****       /// Get a copy of the memory allocation object.
 554:/usr/include/c++/7/bits/stl_vector.h ****       using _Base::get_allocator;
 555:/usr/include/c++/7/bits/stl_vector.h **** 
 556:/usr/include/c++/7/bits/stl_vector.h ****       // iterators
 557:/usr/include/c++/7/bits/stl_vector.h ****       /**
 558:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read/write iterator that points to the first
 559:/usr/include/c++/7/bits/stl_vector.h ****        *  element in the %vector.  Iteration is done in ordinary
 560:/usr/include/c++/7/bits/stl_vector.h ****        *  element order.
 561:/usr/include/c++/7/bits/stl_vector.h ****        */
 562:/usr/include/c++/7/bits/stl_vector.h ****       iterator
 563:/usr/include/c++/7/bits/stl_vector.h ****       begin() _GLIBCXX_NOEXCEPT
 564:/usr/include/c++/7/bits/stl_vector.h ****       { return iterator(this->_M_impl._M_start); }
 565:/usr/include/c++/7/bits/stl_vector.h **** 
 566:/usr/include/c++/7/bits/stl_vector.h ****       /**
 567:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read-only (constant) iterator that points to the
 568:/usr/include/c++/7/bits/stl_vector.h ****        *  first element in the %vector.  Iteration is done in ordinary
 569:/usr/include/c++/7/bits/stl_vector.h ****        *  element order.
 570:/usr/include/c++/7/bits/stl_vector.h ****        */
 571:/usr/include/c++/7/bits/stl_vector.h ****       const_iterator
 572:/usr/include/c++/7/bits/stl_vector.h ****       begin() const _GLIBCXX_NOEXCEPT
 573:/usr/include/c++/7/bits/stl_vector.h ****       { return const_iterator(this->_M_impl._M_start); }
 574:/usr/include/c++/7/bits/stl_vector.h **** 
 575:/usr/include/c++/7/bits/stl_vector.h ****       /**
 576:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read/write iterator that points one past the last
 577:/usr/include/c++/7/bits/stl_vector.h ****        *  element in the %vector.  Iteration is done in ordinary
 578:/usr/include/c++/7/bits/stl_vector.h ****        *  element order.
 579:/usr/include/c++/7/bits/stl_vector.h ****        */
 580:/usr/include/c++/7/bits/stl_vector.h ****       iterator
 581:/usr/include/c++/7/bits/stl_vector.h ****       end() _GLIBCXX_NOEXCEPT
 582:/usr/include/c++/7/bits/stl_vector.h ****       { return iterator(this->_M_impl._M_finish); }
 583:/usr/include/c++/7/bits/stl_vector.h **** 
 584:/usr/include/c++/7/bits/stl_vector.h ****       /**
 585:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read-only (constant) iterator that points one past
 586:/usr/include/c++/7/bits/stl_vector.h ****        *  the last element in the %vector.  Iteration is done in
 587:/usr/include/c++/7/bits/stl_vector.h ****        *  ordinary element order.
 588:/usr/include/c++/7/bits/stl_vector.h ****        */
 589:/usr/include/c++/7/bits/stl_vector.h ****       const_iterator
 590:/usr/include/c++/7/bits/stl_vector.h ****       end() const _GLIBCXX_NOEXCEPT
 591:/usr/include/c++/7/bits/stl_vector.h ****       { return const_iterator(this->_M_impl._M_finish); }
 592:/usr/include/c++/7/bits/stl_vector.h **** 
 593:/usr/include/c++/7/bits/stl_vector.h ****       /**
 594:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read/write reverse iterator that points to the
 595:/usr/include/c++/7/bits/stl_vector.h ****        *  last element in the %vector.  Iteration is done in reverse
 596:/usr/include/c++/7/bits/stl_vector.h ****        *  element order.
 597:/usr/include/c++/7/bits/stl_vector.h ****        */
 598:/usr/include/c++/7/bits/stl_vector.h ****       reverse_iterator
 599:/usr/include/c++/7/bits/stl_vector.h ****       rbegin() _GLIBCXX_NOEXCEPT
 600:/usr/include/c++/7/bits/stl_vector.h ****       { return reverse_iterator(end()); }
 601:/usr/include/c++/7/bits/stl_vector.h **** 
 602:/usr/include/c++/7/bits/stl_vector.h ****       /**
 603:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read-only (constant) reverse iterator that points
 604:/usr/include/c++/7/bits/stl_vector.h ****        *  to the last element in the %vector.  Iteration is done in
 605:/usr/include/c++/7/bits/stl_vector.h ****        *  reverse element order.
 606:/usr/include/c++/7/bits/stl_vector.h ****        */
 607:/usr/include/c++/7/bits/stl_vector.h ****       const_reverse_iterator
 608:/usr/include/c++/7/bits/stl_vector.h ****       rbegin() const _GLIBCXX_NOEXCEPT
 609:/usr/include/c++/7/bits/stl_vector.h ****       { return const_reverse_iterator(end()); }
 610:/usr/include/c++/7/bits/stl_vector.h **** 
 611:/usr/include/c++/7/bits/stl_vector.h ****       /**
 612:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read/write reverse iterator that points to one
 613:/usr/include/c++/7/bits/stl_vector.h ****        *  before the first element in the %vector.  Iteration is done
 614:/usr/include/c++/7/bits/stl_vector.h ****        *  in reverse element order.
 615:/usr/include/c++/7/bits/stl_vector.h ****        */
 616:/usr/include/c++/7/bits/stl_vector.h ****       reverse_iterator
 617:/usr/include/c++/7/bits/stl_vector.h ****       rend() _GLIBCXX_NOEXCEPT
 618:/usr/include/c++/7/bits/stl_vector.h ****       { return reverse_iterator(begin()); }
 619:/usr/include/c++/7/bits/stl_vector.h **** 
 620:/usr/include/c++/7/bits/stl_vector.h ****       /**
 621:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read-only (constant) reverse iterator that points
 622:/usr/include/c++/7/bits/stl_vector.h ****        *  to one before the first element in the %vector.  Iteration
 623:/usr/include/c++/7/bits/stl_vector.h ****        *  is done in reverse element order.
 624:/usr/include/c++/7/bits/stl_vector.h ****        */
 625:/usr/include/c++/7/bits/stl_vector.h ****       const_reverse_iterator
 626:/usr/include/c++/7/bits/stl_vector.h ****       rend() const _GLIBCXX_NOEXCEPT
 627:/usr/include/c++/7/bits/stl_vector.h ****       { return const_reverse_iterator(begin()); }
 628:/usr/include/c++/7/bits/stl_vector.h **** 
 629:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 630:/usr/include/c++/7/bits/stl_vector.h ****       /**
 631:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read-only (constant) iterator that points to the
 632:/usr/include/c++/7/bits/stl_vector.h ****        *  first element in the %vector.  Iteration is done in ordinary
 633:/usr/include/c++/7/bits/stl_vector.h ****        *  element order.
 634:/usr/include/c++/7/bits/stl_vector.h ****        */
 635:/usr/include/c++/7/bits/stl_vector.h ****       const_iterator
 636:/usr/include/c++/7/bits/stl_vector.h ****       cbegin() const noexcept
 637:/usr/include/c++/7/bits/stl_vector.h ****       { return const_iterator(this->_M_impl._M_start); }
 638:/usr/include/c++/7/bits/stl_vector.h **** 
 639:/usr/include/c++/7/bits/stl_vector.h ****       /**
 640:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read-only (constant) iterator that points one past
 641:/usr/include/c++/7/bits/stl_vector.h ****        *  the last element in the %vector.  Iteration is done in
 642:/usr/include/c++/7/bits/stl_vector.h ****        *  ordinary element order.
 643:/usr/include/c++/7/bits/stl_vector.h ****        */
 644:/usr/include/c++/7/bits/stl_vector.h ****       const_iterator
 645:/usr/include/c++/7/bits/stl_vector.h ****       cend() const noexcept
 646:/usr/include/c++/7/bits/stl_vector.h ****       { return const_iterator(this->_M_impl._M_finish); }
 647:/usr/include/c++/7/bits/stl_vector.h **** 
 648:/usr/include/c++/7/bits/stl_vector.h ****       /**
 649:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read-only (constant) reverse iterator that points
 650:/usr/include/c++/7/bits/stl_vector.h ****        *  to the last element in the %vector.  Iteration is done in
 651:/usr/include/c++/7/bits/stl_vector.h ****        *  reverse element order.
 652:/usr/include/c++/7/bits/stl_vector.h ****        */
 653:/usr/include/c++/7/bits/stl_vector.h ****       const_reverse_iterator
 654:/usr/include/c++/7/bits/stl_vector.h ****       crbegin() const noexcept
 655:/usr/include/c++/7/bits/stl_vector.h ****       { return const_reverse_iterator(end()); }
 656:/usr/include/c++/7/bits/stl_vector.h **** 
 657:/usr/include/c++/7/bits/stl_vector.h ****       /**
 658:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read-only (constant) reverse iterator that points
 659:/usr/include/c++/7/bits/stl_vector.h ****        *  to one before the first element in the %vector.  Iteration
 660:/usr/include/c++/7/bits/stl_vector.h ****        *  is done in reverse element order.
 661:/usr/include/c++/7/bits/stl_vector.h ****        */
 662:/usr/include/c++/7/bits/stl_vector.h ****       const_reverse_iterator
 663:/usr/include/c++/7/bits/stl_vector.h ****       crend() const noexcept
 664:/usr/include/c++/7/bits/stl_vector.h ****       { return const_reverse_iterator(begin()); }
 665:/usr/include/c++/7/bits/stl_vector.h **** #endif
 666:/usr/include/c++/7/bits/stl_vector.h **** 
 667:/usr/include/c++/7/bits/stl_vector.h ****       // [23.2.4.2] capacity
 668:/usr/include/c++/7/bits/stl_vector.h ****       /**  Returns the number of elements in the %vector.  */
 669:/usr/include/c++/7/bits/stl_vector.h ****       size_type
 670:/usr/include/c++/7/bits/stl_vector.h ****       size() const _GLIBCXX_NOEXCEPT
 671:/usr/include/c++/7/bits/stl_vector.h ****       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
 672:/usr/include/c++/7/bits/stl_vector.h **** 
 673:/usr/include/c++/7/bits/stl_vector.h ****       /**  Returns the size() of the largest possible %vector.  */
 674:/usr/include/c++/7/bits/stl_vector.h ****       size_type
 675:/usr/include/c++/7/bits/stl_vector.h ****       max_size() const _GLIBCXX_NOEXCEPT
 676:/usr/include/c++/7/bits/stl_vector.h ****       { return _Alloc_traits::max_size(_M_get_Tp_allocator()); }
 677:/usr/include/c++/7/bits/stl_vector.h **** 
 678:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 679:/usr/include/c++/7/bits/stl_vector.h ****       /**
 680:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Resizes the %vector to the specified number of elements.
 681:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __new_size  Number of elements the %vector should contain.
 682:/usr/include/c++/7/bits/stl_vector.h ****        *
 683:/usr/include/c++/7/bits/stl_vector.h ****        *  This function will %resize the %vector to the specified
 684:/usr/include/c++/7/bits/stl_vector.h ****        *  number of elements.  If the number is smaller than the
 685:/usr/include/c++/7/bits/stl_vector.h ****        *  %vector's current size the %vector is truncated, otherwise
 686:/usr/include/c++/7/bits/stl_vector.h ****        *  default constructed elements are appended.
 687:/usr/include/c++/7/bits/stl_vector.h ****        */
 688:/usr/include/c++/7/bits/stl_vector.h ****       void
 689:/usr/include/c++/7/bits/stl_vector.h ****       resize(size_type __new_size)
 690:/usr/include/c++/7/bits/stl_vector.h ****       {
 691:/usr/include/c++/7/bits/stl_vector.h **** 	if (__new_size > size())
 692:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_default_append(__new_size - size());
 693:/usr/include/c++/7/bits/stl_vector.h **** 	else if (__new_size < size())
 694:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
 695:/usr/include/c++/7/bits/stl_vector.h ****       }
 696:/usr/include/c++/7/bits/stl_vector.h **** 
 697:/usr/include/c++/7/bits/stl_vector.h ****       /**
 698:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Resizes the %vector to the specified number of elements.
 699:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __new_size  Number of elements the %vector should contain.
 700:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __x  Data with which new elements should be populated.
 701:/usr/include/c++/7/bits/stl_vector.h ****        *
 702:/usr/include/c++/7/bits/stl_vector.h ****        *  This function will %resize the %vector to the specified
 703:/usr/include/c++/7/bits/stl_vector.h ****        *  number of elements.  If the number is smaller than the
 704:/usr/include/c++/7/bits/stl_vector.h ****        *  %vector's current size the %vector is truncated, otherwise
 705:/usr/include/c++/7/bits/stl_vector.h ****        *  the %vector is extended and new elements are populated with
 706:/usr/include/c++/7/bits/stl_vector.h ****        *  given data.
 707:/usr/include/c++/7/bits/stl_vector.h ****        */
 708:/usr/include/c++/7/bits/stl_vector.h ****       void
 709:/usr/include/c++/7/bits/stl_vector.h ****       resize(size_type __new_size, const value_type& __x)
 710:/usr/include/c++/7/bits/stl_vector.h ****       {
 711:/usr/include/c++/7/bits/stl_vector.h **** 	if (__new_size > size())
 712:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_fill_insert(end(), __new_size - size(), __x);
 713:/usr/include/c++/7/bits/stl_vector.h **** 	else if (__new_size < size())
 714:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
 715:/usr/include/c++/7/bits/stl_vector.h ****       }
 716:/usr/include/c++/7/bits/stl_vector.h **** #else
 717:/usr/include/c++/7/bits/stl_vector.h ****       /**
 718:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Resizes the %vector to the specified number of elements.
 719:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __new_size  Number of elements the %vector should contain.
 720:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __x  Data with which new elements should be populated.
 721:/usr/include/c++/7/bits/stl_vector.h ****        *
 722:/usr/include/c++/7/bits/stl_vector.h ****        *  This function will %resize the %vector to the specified
 723:/usr/include/c++/7/bits/stl_vector.h ****        *  number of elements.  If the number is smaller than the
 724:/usr/include/c++/7/bits/stl_vector.h ****        *  %vector's current size the %vector is truncated, otherwise
 725:/usr/include/c++/7/bits/stl_vector.h ****        *  the %vector is extended and new elements are populated with
 726:/usr/include/c++/7/bits/stl_vector.h ****        *  given data.
 727:/usr/include/c++/7/bits/stl_vector.h ****        */
 728:/usr/include/c++/7/bits/stl_vector.h ****       void
 729:/usr/include/c++/7/bits/stl_vector.h ****       resize(size_type __new_size, value_type __x = value_type())
 730:/usr/include/c++/7/bits/stl_vector.h ****       {
 731:/usr/include/c++/7/bits/stl_vector.h **** 	if (__new_size > size())
 732:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_fill_insert(end(), __new_size - size(), __x);
 733:/usr/include/c++/7/bits/stl_vector.h **** 	else if (__new_size < size())
 734:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
 735:/usr/include/c++/7/bits/stl_vector.h ****       }
 736:/usr/include/c++/7/bits/stl_vector.h **** #endif
 737:/usr/include/c++/7/bits/stl_vector.h **** 
 738:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 739:/usr/include/c++/7/bits/stl_vector.h ****       /**  A non-binding request to reduce capacity() to size().  */
 740:/usr/include/c++/7/bits/stl_vector.h ****       void
 741:/usr/include/c++/7/bits/stl_vector.h ****       shrink_to_fit()
 742:/usr/include/c++/7/bits/stl_vector.h ****       { _M_shrink_to_fit(); }
 743:/usr/include/c++/7/bits/stl_vector.h **** #endif
 744:/usr/include/c++/7/bits/stl_vector.h **** 
 745:/usr/include/c++/7/bits/stl_vector.h ****       /**
 746:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns the total number of elements that the %vector can
 747:/usr/include/c++/7/bits/stl_vector.h ****        *  hold before needing to allocate more memory.
 748:/usr/include/c++/7/bits/stl_vector.h ****        */
 749:/usr/include/c++/7/bits/stl_vector.h ****       size_type
 750:/usr/include/c++/7/bits/stl_vector.h ****       capacity() const _GLIBCXX_NOEXCEPT
 751:/usr/include/c++/7/bits/stl_vector.h ****       { return size_type(this->_M_impl._M_end_of_storage
 752:/usr/include/c++/7/bits/stl_vector.h **** 			 - this->_M_impl._M_start); }
 753:/usr/include/c++/7/bits/stl_vector.h **** 
 754:/usr/include/c++/7/bits/stl_vector.h ****       /**
 755:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns true if the %vector is empty.  (Thus begin() would
 756:/usr/include/c++/7/bits/stl_vector.h ****        *  equal end().)
 757:/usr/include/c++/7/bits/stl_vector.h ****        */
 758:/usr/include/c++/7/bits/stl_vector.h ****       bool
 759:/usr/include/c++/7/bits/stl_vector.h ****       empty() const _GLIBCXX_NOEXCEPT
 760:/usr/include/c++/7/bits/stl_vector.h ****       { return begin() == end(); }
 761:/usr/include/c++/7/bits/stl_vector.h **** 
 762:/usr/include/c++/7/bits/stl_vector.h ****       /**
 763:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Attempt to preallocate enough memory for specified number of
 764:/usr/include/c++/7/bits/stl_vector.h ****        *          elements.
 765:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __n  Number of elements required.
 766:/usr/include/c++/7/bits/stl_vector.h ****        *  @throw  std::length_error  If @a n exceeds @c max_size().
 767:/usr/include/c++/7/bits/stl_vector.h ****        *
 768:/usr/include/c++/7/bits/stl_vector.h ****        *  This function attempts to reserve enough memory for the
 769:/usr/include/c++/7/bits/stl_vector.h ****        *  %vector to hold the specified number of elements.  If the
 770:/usr/include/c++/7/bits/stl_vector.h ****        *  number requested is more than max_size(), length_error is
 771:/usr/include/c++/7/bits/stl_vector.h ****        *  thrown.
 772:/usr/include/c++/7/bits/stl_vector.h ****        *
 773:/usr/include/c++/7/bits/stl_vector.h ****        *  The advantage of this function is that if optimal code is a
 774:/usr/include/c++/7/bits/stl_vector.h ****        *  necessity and the user can determine the number of elements
 775:/usr/include/c++/7/bits/stl_vector.h ****        *  that will be required, the user can reserve the memory in
 776:/usr/include/c++/7/bits/stl_vector.h ****        *  %advance, and thus prevent a possible reallocation of memory
 777:/usr/include/c++/7/bits/stl_vector.h ****        *  and copying of %vector data.
 778:/usr/include/c++/7/bits/stl_vector.h ****        */
 779:/usr/include/c++/7/bits/stl_vector.h ****       void
 780:/usr/include/c++/7/bits/stl_vector.h ****       reserve(size_type __n);
 781:/usr/include/c++/7/bits/stl_vector.h **** 
 782:/usr/include/c++/7/bits/stl_vector.h ****       // element access
 783:/usr/include/c++/7/bits/stl_vector.h ****       /**
 784:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Subscript access to the data contained in the %vector.
 785:/usr/include/c++/7/bits/stl_vector.h ****        *  @param __n The index of the element for which data should be
 786:/usr/include/c++/7/bits/stl_vector.h ****        *  accessed.
 787:/usr/include/c++/7/bits/stl_vector.h ****        *  @return  Read/write reference to data.
 788:/usr/include/c++/7/bits/stl_vector.h ****        *
 789:/usr/include/c++/7/bits/stl_vector.h ****        *  This operator allows for easy, array-style, data access.
 790:/usr/include/c++/7/bits/stl_vector.h ****        *  Note that data access with this operator is unchecked and
 791:/usr/include/c++/7/bits/stl_vector.h ****        *  out_of_range lookups are not defined. (For checked lookups
 792:/usr/include/c++/7/bits/stl_vector.h ****        *  see at().)
 793:/usr/include/c++/7/bits/stl_vector.h ****        */
 794:/usr/include/c++/7/bits/stl_vector.h ****       reference
 795:/usr/include/c++/7/bits/stl_vector.h ****       operator[](size_type __n) _GLIBCXX_NOEXCEPT
 1725              		.loc 2 795 0
 1726              		.cfi_startproc
 1727 0000 55       		pushq	%rbp
 1728              		.cfi_def_cfa_offset 16
 1729              		.cfi_offset 6, -16
 1730 0001 4889E5   		movq	%rsp, %rbp
 1731              		.cfi_def_cfa_register 6
 1732 0004 48897DF8 		movq	%rdi, -8(%rbp)
 1733 0008 488975F0 		movq	%rsi, -16(%rbp)
 796:/usr/include/c++/7/bits/stl_vector.h ****       {
 797:/usr/include/c++/7/bits/stl_vector.h **** 	__glibcxx_requires_subscript(__n);
 798:/usr/include/c++/7/bits/stl_vector.h **** 	return *(this->_M_impl._M_start + __n);
 1734              		.loc 2 798 0
 1735 000c 488B45F8 		movq	-8(%rbp), %rax
 1736 0010 488B00   		movq	(%rax), %rax
 1737 0013 488B55F0 		movq	-16(%rbp), %rdx
 1738 0017 48C1E203 		salq	$3, %rdx
 1739 001b 4801D0   		addq	%rdx, %rax
 799:/usr/include/c++/7/bits/stl_vector.h ****       }
 1740              		.loc 2 799 0
 1741 001e 5D       		popq	%rbp
 1742              		.cfi_def_cfa 7, 8
 1743 001f C3       		ret
 1744              		.cfi_endproc
 1745              	.LFE2115:
 1747              		.section	.text._ZNKSt6vectorIdSaIdEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE4sizeEv,comdat
 1748              		.align 2
 1749              		.weak	_ZNKSt6vectorIdSaIdEE4sizeEv
 1751              	_ZNKSt6vectorIdSaIdEE4sizeEv:
 1752              	.LFB2116:
 670:/usr/include/c++/7/bits/stl_vector.h ****       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
 1753              		.loc 2 670 0
 1754              		.cfi_startproc
 1755 0000 55       		pushq	%rbp
 1756              		.cfi_def_cfa_offset 16
 1757              		.cfi_offset 6, -16
 1758 0001 4889E5   		movq	%rsp, %rbp
 1759              		.cfi_def_cfa_register 6
 1760 0004 48897DF8 		movq	%rdi, -8(%rbp)
 671:/usr/include/c++/7/bits/stl_vector.h **** 
 1761              		.loc 2 671 0
 1762 0008 488B45F8 		movq	-8(%rbp), %rax
 1763 000c 488B4008 		movq	8(%rax), %rax
 1764 0010 4889C2   		movq	%rax, %rdx
 1765 0013 488B45F8 		movq	-8(%rbp), %rax
 1766 0017 488B00   		movq	(%rax), %rax
 1767 001a 4829C2   		subq	%rax, %rdx
 1768 001d 4889D0   		movq	%rdx, %rax
 1769 0020 48C1F803 		sarq	$3, %rax
 1770 0024 5D       		popq	%rbp
 1771              		.cfi_def_cfa 7, 8
 1772 0025 C3       		ret
 1773              		.cfi_endproc
 1774              	.LFE2116:
 1776              		.section	.text._ZNSt6vectorIdSaIdEE6resizeEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE6resizeEm,comdat
 1777              		.align 2
 1778              		.weak	_ZNSt6vectorIdSaIdEE6resizeEm
 1780              	_ZNSt6vectorIdSaIdEE6resizeEm:
 1781              	.LFB2117:
 689:/usr/include/c++/7/bits/stl_vector.h ****       {
 1782              		.loc 2 689 0
 1783              		.cfi_startproc
 1784 0000 55       		pushq	%rbp
 1785              		.cfi_def_cfa_offset 16
 1786              		.cfi_offset 6, -16
 1787 0001 4889E5   		movq	%rsp, %rbp
 1788              		.cfi_def_cfa_register 6
 1789 0004 4883EC10 		subq	$16, %rsp
 1790 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1791 000c 488975F0 		movq	%rsi, -16(%rbp)
 691:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_default_append(__new_size - size());
 1792              		.loc 2 691 0
 1793 0010 488B45F8 		movq	-8(%rbp), %rax
 1794 0014 4889C7   		movq	%rax, %rdi
 1795 0017 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1795      00
 1796 001c 483945F0 		cmpq	%rax, -16(%rbp)
 1797 0020 0F97C0   		seta	%al
 1798 0023 84C0     		testb	%al, %al
 1799 0025 742A     		je	.L83
 692:/usr/include/c++/7/bits/stl_vector.h **** 	else if (__new_size < size())
 1800              		.loc 2 692 0
 1801 0027 488B45F8 		movq	-8(%rbp), %rax
 1802 002b 4889C7   		movq	%rax, %rdi
 1803 002e E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1803      00
 1804 0033 4889C2   		movq	%rax, %rdx
 1805 0036 488B45F0 		movq	-16(%rbp), %rax
 1806 003a 4829D0   		subq	%rdx, %rax
 1807 003d 4889C2   		movq	%rax, %rdx
 1808 0040 488B45F8 		movq	-8(%rbp), %rax
 1809 0044 4889D6   		movq	%rdx, %rsi
 1810 0047 4889C7   		movq	%rax, %rdi
 1811 004a E8000000 		call	_ZNSt6vectorIdSaIdEE17_M_default_appendEm
 1811      00
 695:/usr/include/c++/7/bits/stl_vector.h **** 
 1812              		.loc 2 695 0
 1813 004f EB38     		jmp	.L85
 1814              	.L83:
 693:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
 1815              		.loc 2 693 0
 1816 0051 488B45F8 		movq	-8(%rbp), %rax
 1817 0055 4889C7   		movq	%rax, %rdi
 1818 0058 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1818      00
 1819 005d 483945F0 		cmpq	%rax, -16(%rbp)
 1820 0061 0F92C0   		setb	%al
 1821 0064 84C0     		testb	%al, %al
 1822 0066 7421     		je	.L85
 694:/usr/include/c++/7/bits/stl_vector.h ****       }
 1823              		.loc 2 694 0
 1824 0068 488B45F8 		movq	-8(%rbp), %rax
 1825 006c 488B00   		movq	(%rax), %rax
 1826 006f 488B55F0 		movq	-16(%rbp), %rdx
 1827 0073 48C1E203 		salq	$3, %rdx
 1828 0077 4801C2   		addq	%rax, %rdx
 1829 007a 488B45F8 		movq	-8(%rbp), %rax
 1830 007e 4889D6   		movq	%rdx, %rsi
 1831 0081 4889C7   		movq	%rax, %rdi
 1832 0084 E8000000 		call	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd
 1832      00
 1833              	.L85:
 695:/usr/include/c++/7/bits/stl_vector.h **** 
 1834              		.loc 2 695 0
 1835 0089 90       		nop
 1836 008a C9       		leave
 1837              		.cfi_def_cfa 7, 8
 1838 008b C3       		ret
 1839              		.cfi_endproc
 1840              	.LFE2117:
 1842              		.section	.text._ZNKSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNKSt6vectorIdSaIdEEixEm,comdat
 1843              		.align 2
 1844              		.weak	_ZNKSt6vectorIdSaIdEEixEm
 1846              	_ZNKSt6vectorIdSaIdEEixEm:
 1847              	.LFB2121:
 800:/usr/include/c++/7/bits/stl_vector.h **** 
 801:/usr/include/c++/7/bits/stl_vector.h ****       /**
 802:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Subscript access to the data contained in the %vector.
 803:/usr/include/c++/7/bits/stl_vector.h ****        *  @param __n The index of the element for which data should be
 804:/usr/include/c++/7/bits/stl_vector.h ****        *  accessed.
 805:/usr/include/c++/7/bits/stl_vector.h ****        *  @return  Read-only (constant) reference to data.
 806:/usr/include/c++/7/bits/stl_vector.h ****        *
 807:/usr/include/c++/7/bits/stl_vector.h ****        *  This operator allows for easy, array-style, data access.
 808:/usr/include/c++/7/bits/stl_vector.h ****        *  Note that data access with this operator is unchecked and
 809:/usr/include/c++/7/bits/stl_vector.h ****        *  out_of_range lookups are not defined. (For checked lookups
 810:/usr/include/c++/7/bits/stl_vector.h ****        *  see at().)
 811:/usr/include/c++/7/bits/stl_vector.h ****        */
 812:/usr/include/c++/7/bits/stl_vector.h ****       const_reference
 813:/usr/include/c++/7/bits/stl_vector.h ****       operator[](size_type __n) const _GLIBCXX_NOEXCEPT
 1848              		.loc 2 813 0
 1849              		.cfi_startproc
 1850 0000 55       		pushq	%rbp
 1851              		.cfi_def_cfa_offset 16
 1852              		.cfi_offset 6, -16
 1853 0001 4889E5   		movq	%rsp, %rbp
 1854              		.cfi_def_cfa_register 6
 1855 0004 48897DF8 		movq	%rdi, -8(%rbp)
 1856 0008 488975F0 		movq	%rsi, -16(%rbp)
 814:/usr/include/c++/7/bits/stl_vector.h ****       {
 815:/usr/include/c++/7/bits/stl_vector.h **** 	__glibcxx_requires_subscript(__n);
 816:/usr/include/c++/7/bits/stl_vector.h **** 	return *(this->_M_impl._M_start + __n);
 1857              		.loc 2 816 0
 1858 000c 488B45F8 		movq	-8(%rbp), %rax
 1859 0010 488B00   		movq	(%rax), %rax
 1860 0013 488B55F0 		movq	-16(%rbp), %rdx
 1861 0017 48C1E203 		salq	$3, %rdx
 1862 001b 4801D0   		addq	%rdx, %rax
 817:/usr/include/c++/7/bits/stl_vector.h ****       }
 1863              		.loc 2 817 0
 1864 001e 5D       		popq	%rbp
 1865              		.cfi_def_cfa 7, 8
 1866 001f C3       		ret
 1867              		.cfi_endproc
 1868              	.LFE2121:
 1870              		.section	.text._ZNSt6vectorIdSaIdEE5beginEv,"axG",@progbits,_ZNSt6vectorIdSaIdEE5beginEv,comdat
 1871              		.align 2
 1872              		.weak	_ZNSt6vectorIdSaIdEE5beginEv
 1874              	_ZNSt6vectorIdSaIdEE5beginEv:
 1875              	.LFB2124:
 563:/usr/include/c++/7/bits/stl_vector.h ****       { return iterator(this->_M_impl._M_start); }
 1876              		.loc 2 563 0
 1877              		.cfi_startproc
 1878 0000 55       		pushq	%rbp
 1879              		.cfi_def_cfa_offset 16
 1880              		.cfi_offset 6, -16
 1881 0001 4889E5   		movq	%rsp, %rbp
 1882              		.cfi_def_cfa_register 6
 1883 0004 4883EC20 		subq	$32, %rsp
 1884 0008 48897DE8 		movq	%rdi, -24(%rbp)
 563:/usr/include/c++/7/bits/stl_vector.h ****       { return iterator(this->_M_impl._M_start); }
 1885              		.loc 2 563 0
 1886 000c 64488B04 		movq	%fs:40, %rax
 1886      25280000 
 1886      00
 1887 0015 488945F8 		movq	%rax, -8(%rbp)
 1888 0019 31C0     		xorl	%eax, %eax
 564:/usr/include/c++/7/bits/stl_vector.h **** 
 1889              		.loc 2 564 0
 1890 001b 488B55E8 		movq	-24(%rbp), %rdx
 1891 001f 488D45F0 		leaq	-16(%rbp), %rax
 1892 0023 4889D6   		movq	%rdx, %rsi
 1893 0026 4889C7   		movq	%rax, %rdi
 1894 0029 E8000000 		call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
 1894      00
 1895 002e 488B45F0 		movq	-16(%rbp), %rax
 1896 0032 488B4DF8 		movq	-8(%rbp), %rcx
 1897 0036 6448330C 		xorq	%fs:40, %rcx
 1897      25280000 
 1897      00
 1898 003f 7405     		je	.L90
 1899 0041 E8000000 		call	__stack_chk_fail@PLT
 1899      00
 1900              	.L90:
 1901 0046 C9       		leave
 1902              		.cfi_def_cfa 7, 8
 1903 0047 C3       		ret
 1904              		.cfi_endproc
 1905              	.LFE2124:
 1907              		.section	.text._ZNSt6vectorIdSaIdEE3endEv,"axG",@progbits,_ZNSt6vectorIdSaIdEE3endEv,comdat
 1908              		.align 2
 1909              		.weak	_ZNSt6vectorIdSaIdEE3endEv
 1911              	_ZNSt6vectorIdSaIdEE3endEv:
 1912              	.LFB2125:
 581:/usr/include/c++/7/bits/stl_vector.h ****       { return iterator(this->_M_impl._M_finish); }
 1913              		.loc 2 581 0
 1914              		.cfi_startproc
 1915 0000 55       		pushq	%rbp
 1916              		.cfi_def_cfa_offset 16
 1917              		.cfi_offset 6, -16
 1918 0001 4889E5   		movq	%rsp, %rbp
 1919              		.cfi_def_cfa_register 6
 1920 0004 4883EC20 		subq	$32, %rsp
 1921 0008 48897DE8 		movq	%rdi, -24(%rbp)
 581:/usr/include/c++/7/bits/stl_vector.h ****       { return iterator(this->_M_impl._M_finish); }
 1922              		.loc 2 581 0
 1923 000c 64488B04 		movq	%fs:40, %rax
 1923      25280000 
 1923      00
 1924 0015 488945F8 		movq	%rax, -8(%rbp)
 1925 0019 31C0     		xorl	%eax, %eax
 582:/usr/include/c++/7/bits/stl_vector.h **** 
 1926              		.loc 2 582 0
 1927 001b 488B45E8 		movq	-24(%rbp), %rax
 1928 001f 488D5008 		leaq	8(%rax), %rdx
 1929 0023 488D45F0 		leaq	-16(%rbp), %rax
 1930 0027 4889D6   		movq	%rdx, %rsi
 1931 002a 4889C7   		movq	%rax, %rdi
 1932 002d E8000000 		call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
 1932      00
 1933 0032 488B45F0 		movq	-16(%rbp), %rax
 1934 0036 488B4DF8 		movq	-8(%rbp), %rcx
 1935 003a 6448330C 		xorq	%fs:40, %rcx
 1935      25280000 
 1935      00
 1936 0043 7405     		je	.L93
 1937 0045 E8000000 		call	__stack_chk_fail@PLT
 1937      00
 1938              	.L93:
 1939 004a C9       		leave
 1940              		.cfi_def_cfa 7, 8
 1941 004b C3       		ret
 1942              		.cfi_endproc
 1943              	.LFE2125:
 1945              		.section	.text._ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@pr
 1946              		.weak	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
 1948              	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
 1949              	.LFB2126:
 1950              		.file 3 "/usr/include/c++/7/bits/stl_iterator.h"
   1:/usr/include/c++/7/bits/stl_iterator.h **** // Iterators -*- C++ -*-
   2:/usr/include/c++/7/bits/stl_iterator.h **** 
   3:/usr/include/c++/7/bits/stl_iterator.h **** // Copyright (C) 2001-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/stl_iterator.h **** //
   5:/usr/include/c++/7/bits/stl_iterator.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/stl_iterator.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/stl_iterator.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/stl_iterator.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/stl_iterator.h **** // any later version.
  10:/usr/include/c++/7/bits/stl_iterator.h **** 
  11:/usr/include/c++/7/bits/stl_iterator.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/stl_iterator.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/stl_iterator.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/stl_iterator.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/stl_iterator.h **** 
  16:/usr/include/c++/7/bits/stl_iterator.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/stl_iterator.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/stl_iterator.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/stl_iterator.h **** 
  20:/usr/include/c++/7/bits/stl_iterator.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/stl_iterator.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/stl_iterator.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/stl_iterator.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/stl_iterator.h **** 
  25:/usr/include/c++/7/bits/stl_iterator.h **** /*
  26:/usr/include/c++/7/bits/stl_iterator.h ****  *
  27:/usr/include/c++/7/bits/stl_iterator.h ****  * Copyright (c) 1994
  28:/usr/include/c++/7/bits/stl_iterator.h ****  * Hewlett-Packard Company
  29:/usr/include/c++/7/bits/stl_iterator.h ****  *
  30:/usr/include/c++/7/bits/stl_iterator.h ****  * Permission to use, copy, modify, distribute and sell this software
  31:/usr/include/c++/7/bits/stl_iterator.h ****  * and its documentation for any purpose is hereby granted without fee,
  32:/usr/include/c++/7/bits/stl_iterator.h ****  * provided that the above copyright notice appear in all copies and
  33:/usr/include/c++/7/bits/stl_iterator.h ****  * that both that copyright notice and this permission notice appear
  34:/usr/include/c++/7/bits/stl_iterator.h ****  * in supporting documentation.  Hewlett-Packard Company makes no
  35:/usr/include/c++/7/bits/stl_iterator.h ****  * representations about the suitability of this software for any
  36:/usr/include/c++/7/bits/stl_iterator.h ****  * purpose.  It is provided "as is" without express or implied warranty.
  37:/usr/include/c++/7/bits/stl_iterator.h ****  *
  38:/usr/include/c++/7/bits/stl_iterator.h ****  *
  39:/usr/include/c++/7/bits/stl_iterator.h ****  * Copyright (c) 1996-1998
  40:/usr/include/c++/7/bits/stl_iterator.h ****  * Silicon Graphics Computer Systems, Inc.
  41:/usr/include/c++/7/bits/stl_iterator.h ****  *
  42:/usr/include/c++/7/bits/stl_iterator.h ****  * Permission to use, copy, modify, distribute and sell this software
  43:/usr/include/c++/7/bits/stl_iterator.h ****  * and its documentation for any purpose is hereby granted without fee,
  44:/usr/include/c++/7/bits/stl_iterator.h ****  * provided that the above copyright notice appear in all copies and
  45:/usr/include/c++/7/bits/stl_iterator.h ****  * that both that copyright notice and this permission notice appear
  46:/usr/include/c++/7/bits/stl_iterator.h ****  * in supporting documentation.  Silicon Graphics makes no
  47:/usr/include/c++/7/bits/stl_iterator.h ****  * representations about the suitability of this software for any
  48:/usr/include/c++/7/bits/stl_iterator.h ****  * purpose.  It is provided "as is" without express or implied warranty.
  49:/usr/include/c++/7/bits/stl_iterator.h ****  */
  50:/usr/include/c++/7/bits/stl_iterator.h **** 
  51:/usr/include/c++/7/bits/stl_iterator.h **** /** @file bits/stl_iterator.h
  52:/usr/include/c++/7/bits/stl_iterator.h ****  *  This is an internal header file, included by other library headers.
  53:/usr/include/c++/7/bits/stl_iterator.h ****  *  Do not attempt to use it directly. @headername{iterator}
  54:/usr/include/c++/7/bits/stl_iterator.h ****  *
  55:/usr/include/c++/7/bits/stl_iterator.h ****  *  This file implements reverse_iterator, back_insert_iterator,
  56:/usr/include/c++/7/bits/stl_iterator.h ****  *  front_insert_iterator, insert_iterator, __normal_iterator, and their
  57:/usr/include/c++/7/bits/stl_iterator.h ****  *  supporting functions and overloaded operators.
  58:/usr/include/c++/7/bits/stl_iterator.h ****  */
  59:/usr/include/c++/7/bits/stl_iterator.h **** 
  60:/usr/include/c++/7/bits/stl_iterator.h **** #ifndef _STL_ITERATOR_H
  61:/usr/include/c++/7/bits/stl_iterator.h **** #define _STL_ITERATOR_H 1
  62:/usr/include/c++/7/bits/stl_iterator.h **** 
  63:/usr/include/c++/7/bits/stl_iterator.h **** #include <bits/cpp_type_traits.h>
  64:/usr/include/c++/7/bits/stl_iterator.h **** #include <ext/type_traits.h>
  65:/usr/include/c++/7/bits/stl_iterator.h **** #include <bits/move.h>
  66:/usr/include/c++/7/bits/stl_iterator.h **** #include <bits/ptr_traits.h>
  67:/usr/include/c++/7/bits/stl_iterator.h **** 
  68:/usr/include/c++/7/bits/stl_iterator.h **** #if __cplusplus > 201402L
  69:/usr/include/c++/7/bits/stl_iterator.h **** # define __cpp_lib_array_constexpr 201603
  70:/usr/include/c++/7/bits/stl_iterator.h **** #endif
  71:/usr/include/c++/7/bits/stl_iterator.h **** 
  72:/usr/include/c++/7/bits/stl_iterator.h **** namespace std _GLIBCXX_VISIBILITY(default)
  73:/usr/include/c++/7/bits/stl_iterator.h **** {
  74:/usr/include/c++/7/bits/stl_iterator.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  75:/usr/include/c++/7/bits/stl_iterator.h **** 
  76:/usr/include/c++/7/bits/stl_iterator.h ****   /**
  77:/usr/include/c++/7/bits/stl_iterator.h ****    * @addtogroup iterators
  78:/usr/include/c++/7/bits/stl_iterator.h ****    * @{
  79:/usr/include/c++/7/bits/stl_iterator.h ****    */
  80:/usr/include/c++/7/bits/stl_iterator.h **** 
  81:/usr/include/c++/7/bits/stl_iterator.h ****   // 24.4.1 Reverse iterators
  82:/usr/include/c++/7/bits/stl_iterator.h ****   /**
  83:/usr/include/c++/7/bits/stl_iterator.h ****    *  Bidirectional and random access iterators have corresponding reverse
  84:/usr/include/c++/7/bits/stl_iterator.h ****    *  %iterator adaptors that iterate through the data structure in the
  85:/usr/include/c++/7/bits/stl_iterator.h ****    *  opposite direction.  They have the same signatures as the corresponding
  86:/usr/include/c++/7/bits/stl_iterator.h ****    *  iterators.  The fundamental relation between a reverse %iterator and its
  87:/usr/include/c++/7/bits/stl_iterator.h ****    *  corresponding %iterator @c i is established by the identity:
  88:/usr/include/c++/7/bits/stl_iterator.h ****    *  @code
  89:/usr/include/c++/7/bits/stl_iterator.h ****    *      &*(reverse_iterator(i)) == &*(i - 1)
  90:/usr/include/c++/7/bits/stl_iterator.h ****    *  @endcode
  91:/usr/include/c++/7/bits/stl_iterator.h ****    *
  92:/usr/include/c++/7/bits/stl_iterator.h ****    *  <em>This mapping is dictated by the fact that while there is always a
  93:/usr/include/c++/7/bits/stl_iterator.h ****    *  pointer past the end of an array, there might not be a valid pointer
  94:/usr/include/c++/7/bits/stl_iterator.h ****    *  before the beginning of an array.</em> [24.4.1]/1,2
  95:/usr/include/c++/7/bits/stl_iterator.h ****    *
  96:/usr/include/c++/7/bits/stl_iterator.h ****    *  Reverse iterators can be tricky and surprising at first.  Their
  97:/usr/include/c++/7/bits/stl_iterator.h ****    *  semantics make sense, however, and the trickiness is a side effect of
  98:/usr/include/c++/7/bits/stl_iterator.h ****    *  the requirement that the iterators must be safe.
  99:/usr/include/c++/7/bits/stl_iterator.h ****   */
 100:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
 101:/usr/include/c++/7/bits/stl_iterator.h ****     class reverse_iterator
 102:/usr/include/c++/7/bits/stl_iterator.h ****     : public iterator<typename iterator_traits<_Iterator>::iterator_category,
 103:/usr/include/c++/7/bits/stl_iterator.h **** 		      typename iterator_traits<_Iterator>::value_type,
 104:/usr/include/c++/7/bits/stl_iterator.h **** 		      typename iterator_traits<_Iterator>::difference_type,
 105:/usr/include/c++/7/bits/stl_iterator.h **** 		      typename iterator_traits<_Iterator>::pointer,
 106:/usr/include/c++/7/bits/stl_iterator.h ****                       typename iterator_traits<_Iterator>::reference>
 107:/usr/include/c++/7/bits/stl_iterator.h ****     {
 108:/usr/include/c++/7/bits/stl_iterator.h ****     protected:
 109:/usr/include/c++/7/bits/stl_iterator.h ****       _Iterator current;
 110:/usr/include/c++/7/bits/stl_iterator.h **** 
 111:/usr/include/c++/7/bits/stl_iterator.h ****       typedef iterator_traits<_Iterator>		__traits_type;
 112:/usr/include/c++/7/bits/stl_iterator.h **** 
 113:/usr/include/c++/7/bits/stl_iterator.h ****     public:
 114:/usr/include/c++/7/bits/stl_iterator.h ****       typedef _Iterator					iterator_type;
 115:/usr/include/c++/7/bits/stl_iterator.h ****       typedef typename __traits_type::difference_type	difference_type;
 116:/usr/include/c++/7/bits/stl_iterator.h ****       typedef typename __traits_type::pointer		pointer;
 117:/usr/include/c++/7/bits/stl_iterator.h ****       typedef typename __traits_type::reference		reference;
 118:/usr/include/c++/7/bits/stl_iterator.h **** 
 119:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 120:/usr/include/c++/7/bits/stl_iterator.h ****        *  The default constructor value-initializes member @p current.
 121:/usr/include/c++/7/bits/stl_iterator.h ****        *  If it is a pointer, that means it is zero-initialized.
 122:/usr/include/c++/7/bits/stl_iterator.h ****       */
 123:/usr/include/c++/7/bits/stl_iterator.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
 124:/usr/include/c++/7/bits/stl_iterator.h ****       // 235 No specification of default ctor for reverse_iterator
 125:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR
 126:/usr/include/c++/7/bits/stl_iterator.h ****       reverse_iterator() : current() { }
 127:/usr/include/c++/7/bits/stl_iterator.h **** 
 128:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 129:/usr/include/c++/7/bits/stl_iterator.h ****        *  This %iterator will move in the opposite direction that @p x does.
 130:/usr/include/c++/7/bits/stl_iterator.h ****       */
 131:/usr/include/c++/7/bits/stl_iterator.h ****       explicit _GLIBCXX17_CONSTEXPR
 132:/usr/include/c++/7/bits/stl_iterator.h ****       reverse_iterator(iterator_type __x) : current(__x) { }
 133:/usr/include/c++/7/bits/stl_iterator.h **** 
 134:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 135:/usr/include/c++/7/bits/stl_iterator.h ****        *  The copy constructor is normal.
 136:/usr/include/c++/7/bits/stl_iterator.h ****       */
 137:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR
 138:/usr/include/c++/7/bits/stl_iterator.h ****       reverse_iterator(const reverse_iterator& __x)
 139:/usr/include/c++/7/bits/stl_iterator.h ****       : current(__x.current) { }
 140:/usr/include/c++/7/bits/stl_iterator.h **** 
 141:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 142:/usr/include/c++/7/bits/stl_iterator.h ****        *  A %reverse_iterator across other types can be copied if the
 143:/usr/include/c++/7/bits/stl_iterator.h ****        *  underlying %iterator can be converted to the type of @c current.
 144:/usr/include/c++/7/bits/stl_iterator.h ****       */
 145:/usr/include/c++/7/bits/stl_iterator.h ****       template<typename _Iter>
 146:/usr/include/c++/7/bits/stl_iterator.h **** 	_GLIBCXX17_CONSTEXPR
 147:/usr/include/c++/7/bits/stl_iterator.h ****         reverse_iterator(const reverse_iterator<_Iter>& __x)
 148:/usr/include/c++/7/bits/stl_iterator.h **** 	: current(__x.base()) { }
 149:/usr/include/c++/7/bits/stl_iterator.h **** 
 150:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 151:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  @c current, the %iterator used for underlying work.
 152:/usr/include/c++/7/bits/stl_iterator.h ****       */
 153:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR iterator_type
 154:/usr/include/c++/7/bits/stl_iterator.h ****       base() const
 155:/usr/include/c++/7/bits/stl_iterator.h ****       { return current; }
 156:/usr/include/c++/7/bits/stl_iterator.h **** 
 157:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 158:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  A reference to the value at @c --current
 159:/usr/include/c++/7/bits/stl_iterator.h ****        *
 160:/usr/include/c++/7/bits/stl_iterator.h ****        *  This requires that @c --current is dereferenceable.
 161:/usr/include/c++/7/bits/stl_iterator.h ****        *
 162:/usr/include/c++/7/bits/stl_iterator.h ****        *  @warning This implementation requires that for an iterator of the
 163:/usr/include/c++/7/bits/stl_iterator.h ****        *           underlying iterator type, @c x, a reference obtained by
 164:/usr/include/c++/7/bits/stl_iterator.h ****        *           @c *x remains valid after @c x has been modified or
 165:/usr/include/c++/7/bits/stl_iterator.h ****        *           destroyed. This is a bug: http://gcc.gnu.org/PR51823
 166:/usr/include/c++/7/bits/stl_iterator.h ****       */
 167:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR reference
 168:/usr/include/c++/7/bits/stl_iterator.h ****       operator*() const
 169:/usr/include/c++/7/bits/stl_iterator.h ****       {
 170:/usr/include/c++/7/bits/stl_iterator.h **** 	_Iterator __tmp = current;
 171:/usr/include/c++/7/bits/stl_iterator.h **** 	return *--__tmp;
 172:/usr/include/c++/7/bits/stl_iterator.h ****       }
 173:/usr/include/c++/7/bits/stl_iterator.h **** 
 174:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 175:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  A pointer to the value at @c --current
 176:/usr/include/c++/7/bits/stl_iterator.h ****        *
 177:/usr/include/c++/7/bits/stl_iterator.h ****        *  This requires that @c --current is dereferenceable.
 178:/usr/include/c++/7/bits/stl_iterator.h ****       */
 179:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR pointer
 180:/usr/include/c++/7/bits/stl_iterator.h ****       operator->() const
 181:/usr/include/c++/7/bits/stl_iterator.h ****       { return &(operator*()); }
 182:/usr/include/c++/7/bits/stl_iterator.h **** 
 183:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 184:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  @c *this
 185:/usr/include/c++/7/bits/stl_iterator.h ****        *
 186:/usr/include/c++/7/bits/stl_iterator.h ****        *  Decrements the underlying iterator.
 187:/usr/include/c++/7/bits/stl_iterator.h ****       */
 188:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR reverse_iterator&
 189:/usr/include/c++/7/bits/stl_iterator.h ****       operator++()
 190:/usr/include/c++/7/bits/stl_iterator.h ****       {
 191:/usr/include/c++/7/bits/stl_iterator.h **** 	--current;
 192:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 193:/usr/include/c++/7/bits/stl_iterator.h ****       }
 194:/usr/include/c++/7/bits/stl_iterator.h **** 
 195:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 196:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  The original value of @c *this
 197:/usr/include/c++/7/bits/stl_iterator.h ****        *
 198:/usr/include/c++/7/bits/stl_iterator.h ****        *  Decrements the underlying iterator.
 199:/usr/include/c++/7/bits/stl_iterator.h ****       */
 200:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR reverse_iterator
 201:/usr/include/c++/7/bits/stl_iterator.h ****       operator++(int)
 202:/usr/include/c++/7/bits/stl_iterator.h ****       {
 203:/usr/include/c++/7/bits/stl_iterator.h **** 	reverse_iterator __tmp = *this;
 204:/usr/include/c++/7/bits/stl_iterator.h **** 	--current;
 205:/usr/include/c++/7/bits/stl_iterator.h **** 	return __tmp;
 206:/usr/include/c++/7/bits/stl_iterator.h ****       }
 207:/usr/include/c++/7/bits/stl_iterator.h **** 
 208:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 209:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  @c *this
 210:/usr/include/c++/7/bits/stl_iterator.h ****        *
 211:/usr/include/c++/7/bits/stl_iterator.h ****        *  Increments the underlying iterator.
 212:/usr/include/c++/7/bits/stl_iterator.h ****       */
 213:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR reverse_iterator&
 214:/usr/include/c++/7/bits/stl_iterator.h ****       operator--()
 215:/usr/include/c++/7/bits/stl_iterator.h ****       {
 216:/usr/include/c++/7/bits/stl_iterator.h **** 	++current;
 217:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 218:/usr/include/c++/7/bits/stl_iterator.h ****       }
 219:/usr/include/c++/7/bits/stl_iterator.h **** 
 220:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 221:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  A reverse_iterator with the previous value of @c *this
 222:/usr/include/c++/7/bits/stl_iterator.h ****        *
 223:/usr/include/c++/7/bits/stl_iterator.h ****        *  Increments the underlying iterator.
 224:/usr/include/c++/7/bits/stl_iterator.h ****       */
 225:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR reverse_iterator
 226:/usr/include/c++/7/bits/stl_iterator.h ****       operator--(int)
 227:/usr/include/c++/7/bits/stl_iterator.h ****       {
 228:/usr/include/c++/7/bits/stl_iterator.h **** 	reverse_iterator __tmp = *this;
 229:/usr/include/c++/7/bits/stl_iterator.h **** 	++current;
 230:/usr/include/c++/7/bits/stl_iterator.h **** 	return __tmp;
 231:/usr/include/c++/7/bits/stl_iterator.h ****       }
 232:/usr/include/c++/7/bits/stl_iterator.h **** 
 233:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 234:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  A reverse_iterator that refers to @c current - @a __n
 235:/usr/include/c++/7/bits/stl_iterator.h ****        *
 236:/usr/include/c++/7/bits/stl_iterator.h ****        *  The underlying iterator must be a Random Access Iterator.
 237:/usr/include/c++/7/bits/stl_iterator.h ****       */
 238:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR reverse_iterator
 239:/usr/include/c++/7/bits/stl_iterator.h ****       operator+(difference_type __n) const
 240:/usr/include/c++/7/bits/stl_iterator.h ****       { return reverse_iterator(current - __n); }
 241:/usr/include/c++/7/bits/stl_iterator.h **** 
 242:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 243:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  *this
 244:/usr/include/c++/7/bits/stl_iterator.h ****        *
 245:/usr/include/c++/7/bits/stl_iterator.h ****        *  Moves the underlying iterator backwards @a __n steps.
 246:/usr/include/c++/7/bits/stl_iterator.h ****        *  The underlying iterator must be a Random Access Iterator.
 247:/usr/include/c++/7/bits/stl_iterator.h ****       */
 248:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR reverse_iterator&
 249:/usr/include/c++/7/bits/stl_iterator.h ****       operator+=(difference_type __n)
 250:/usr/include/c++/7/bits/stl_iterator.h ****       {
 251:/usr/include/c++/7/bits/stl_iterator.h **** 	current -= __n;
 252:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 253:/usr/include/c++/7/bits/stl_iterator.h ****       }
 254:/usr/include/c++/7/bits/stl_iterator.h **** 
 255:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 256:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  A reverse_iterator that refers to @c current - @a __n
 257:/usr/include/c++/7/bits/stl_iterator.h ****        *
 258:/usr/include/c++/7/bits/stl_iterator.h ****        *  The underlying iterator must be a Random Access Iterator.
 259:/usr/include/c++/7/bits/stl_iterator.h ****       */
 260:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR reverse_iterator
 261:/usr/include/c++/7/bits/stl_iterator.h ****       operator-(difference_type __n) const
 262:/usr/include/c++/7/bits/stl_iterator.h ****       { return reverse_iterator(current + __n); }
 263:/usr/include/c++/7/bits/stl_iterator.h **** 
 264:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 265:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  *this
 266:/usr/include/c++/7/bits/stl_iterator.h ****        *
 267:/usr/include/c++/7/bits/stl_iterator.h ****        *  Moves the underlying iterator forwards @a __n steps.
 268:/usr/include/c++/7/bits/stl_iterator.h ****        *  The underlying iterator must be a Random Access Iterator.
 269:/usr/include/c++/7/bits/stl_iterator.h ****       */
 270:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR reverse_iterator&
 271:/usr/include/c++/7/bits/stl_iterator.h ****       operator-=(difference_type __n)
 272:/usr/include/c++/7/bits/stl_iterator.h ****       {
 273:/usr/include/c++/7/bits/stl_iterator.h **** 	current += __n;
 274:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 275:/usr/include/c++/7/bits/stl_iterator.h ****       }
 276:/usr/include/c++/7/bits/stl_iterator.h **** 
 277:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 278:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  The value at @c current - @a __n - 1
 279:/usr/include/c++/7/bits/stl_iterator.h ****        *
 280:/usr/include/c++/7/bits/stl_iterator.h ****        *  The underlying iterator must be a Random Access Iterator.
 281:/usr/include/c++/7/bits/stl_iterator.h ****       */
 282:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR reference
 283:/usr/include/c++/7/bits/stl_iterator.h ****       operator[](difference_type __n) const
 284:/usr/include/c++/7/bits/stl_iterator.h ****       { return *(*this + __n); }
 285:/usr/include/c++/7/bits/stl_iterator.h ****     };
 286:/usr/include/c++/7/bits/stl_iterator.h **** 
 287:/usr/include/c++/7/bits/stl_iterator.h ****   //@{
 288:/usr/include/c++/7/bits/stl_iterator.h ****   /**
 289:/usr/include/c++/7/bits/stl_iterator.h ****    *  @param  __x  A %reverse_iterator.
 290:/usr/include/c++/7/bits/stl_iterator.h ****    *  @param  __y  A %reverse_iterator.
 291:/usr/include/c++/7/bits/stl_iterator.h ****    *  @return  A simple bool.
 292:/usr/include/c++/7/bits/stl_iterator.h ****    *
 293:/usr/include/c++/7/bits/stl_iterator.h ****    *  Reverse iterators forward many operations to their underlying base()
 294:/usr/include/c++/7/bits/stl_iterator.h ****    *  iterators.  Others are implemented in terms of one another.
 295:/usr/include/c++/7/bits/stl_iterator.h ****    *
 296:/usr/include/c++/7/bits/stl_iterator.h ****   */
 297:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
 298:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
 299:/usr/include/c++/7/bits/stl_iterator.h ****     operator==(const reverse_iterator<_Iterator>& __x,
 300:/usr/include/c++/7/bits/stl_iterator.h **** 	       const reverse_iterator<_Iterator>& __y)
 301:/usr/include/c++/7/bits/stl_iterator.h ****     { return __x.base() == __y.base(); }
 302:/usr/include/c++/7/bits/stl_iterator.h **** 
 303:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
 304:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
 305:/usr/include/c++/7/bits/stl_iterator.h ****     operator<(const reverse_iterator<_Iterator>& __x,
 306:/usr/include/c++/7/bits/stl_iterator.h **** 	      const reverse_iterator<_Iterator>& __y)
 307:/usr/include/c++/7/bits/stl_iterator.h ****     { return __y.base() < __x.base(); }
 308:/usr/include/c++/7/bits/stl_iterator.h **** 
 309:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
 310:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
 311:/usr/include/c++/7/bits/stl_iterator.h ****     operator!=(const reverse_iterator<_Iterator>& __x,
 312:/usr/include/c++/7/bits/stl_iterator.h **** 	       const reverse_iterator<_Iterator>& __y)
 313:/usr/include/c++/7/bits/stl_iterator.h ****     { return !(__x == __y); }
 314:/usr/include/c++/7/bits/stl_iterator.h **** 
 315:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
 316:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
 317:/usr/include/c++/7/bits/stl_iterator.h ****     operator>(const reverse_iterator<_Iterator>& __x,
 318:/usr/include/c++/7/bits/stl_iterator.h **** 	      const reverse_iterator<_Iterator>& __y)
 319:/usr/include/c++/7/bits/stl_iterator.h ****     { return __y < __x; }
 320:/usr/include/c++/7/bits/stl_iterator.h **** 
 321:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
 322:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
 323:/usr/include/c++/7/bits/stl_iterator.h ****     operator<=(const reverse_iterator<_Iterator>& __x,
 324:/usr/include/c++/7/bits/stl_iterator.h **** 	       const reverse_iterator<_Iterator>& __y)
 325:/usr/include/c++/7/bits/stl_iterator.h ****     { return !(__y < __x); }
 326:/usr/include/c++/7/bits/stl_iterator.h **** 
 327:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
 328:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
 329:/usr/include/c++/7/bits/stl_iterator.h ****     operator>=(const reverse_iterator<_Iterator>& __x,
 330:/usr/include/c++/7/bits/stl_iterator.h **** 	       const reverse_iterator<_Iterator>& __y)
 331:/usr/include/c++/7/bits/stl_iterator.h ****     { return !(__x < __y); }
 332:/usr/include/c++/7/bits/stl_iterator.h **** 
 333:/usr/include/c++/7/bits/stl_iterator.h ****   // _GLIBCXX_RESOLVE_LIB_DEFECTS
 334:/usr/include/c++/7/bits/stl_iterator.h ****   // DR 280. Comparison of reverse_iterator to const reverse_iterator.
 335:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
 336:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
 337:/usr/include/c++/7/bits/stl_iterator.h ****     operator==(const reverse_iterator<_IteratorL>& __x,
 338:/usr/include/c++/7/bits/stl_iterator.h **** 	       const reverse_iterator<_IteratorR>& __y)
 339:/usr/include/c++/7/bits/stl_iterator.h ****     { return __x.base() == __y.base(); }
 340:/usr/include/c++/7/bits/stl_iterator.h **** 
 341:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
 342:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
 343:/usr/include/c++/7/bits/stl_iterator.h ****     operator<(const reverse_iterator<_IteratorL>& __x,
 344:/usr/include/c++/7/bits/stl_iterator.h **** 	      const reverse_iterator<_IteratorR>& __y)
 345:/usr/include/c++/7/bits/stl_iterator.h ****     { return __y.base() < __x.base(); }
 346:/usr/include/c++/7/bits/stl_iterator.h **** 
 347:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
 348:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
 349:/usr/include/c++/7/bits/stl_iterator.h ****     operator!=(const reverse_iterator<_IteratorL>& __x,
 350:/usr/include/c++/7/bits/stl_iterator.h **** 	       const reverse_iterator<_IteratorR>& __y)
 351:/usr/include/c++/7/bits/stl_iterator.h ****     { return !(__x == __y); }
 352:/usr/include/c++/7/bits/stl_iterator.h **** 
 353:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
 354:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
 355:/usr/include/c++/7/bits/stl_iterator.h ****     operator>(const reverse_iterator<_IteratorL>& __x,
 356:/usr/include/c++/7/bits/stl_iterator.h **** 	      const reverse_iterator<_IteratorR>& __y)
 357:/usr/include/c++/7/bits/stl_iterator.h ****     { return __y < __x; }
 358:/usr/include/c++/7/bits/stl_iterator.h **** 
 359:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
 360:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
 361:/usr/include/c++/7/bits/stl_iterator.h ****     operator<=(const reverse_iterator<_IteratorL>& __x,
 362:/usr/include/c++/7/bits/stl_iterator.h **** 	       const reverse_iterator<_IteratorR>& __y)
 363:/usr/include/c++/7/bits/stl_iterator.h ****     { return !(__y < __x); }
 364:/usr/include/c++/7/bits/stl_iterator.h **** 
 365:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
 366:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
 367:/usr/include/c++/7/bits/stl_iterator.h ****     operator>=(const reverse_iterator<_IteratorL>& __x,
 368:/usr/include/c++/7/bits/stl_iterator.h **** 	       const reverse_iterator<_IteratorR>& __y)
 369:/usr/include/c++/7/bits/stl_iterator.h ****     { return !(__x < __y); }
 370:/usr/include/c++/7/bits/stl_iterator.h ****   //@}
 371:/usr/include/c++/7/bits/stl_iterator.h **** 
 372:/usr/include/c++/7/bits/stl_iterator.h **** #if __cplusplus < 201103L
 373:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
 374:/usr/include/c++/7/bits/stl_iterator.h ****     inline typename reverse_iterator<_Iterator>::difference_type
 375:/usr/include/c++/7/bits/stl_iterator.h ****     operator-(const reverse_iterator<_Iterator>& __x,
 376:/usr/include/c++/7/bits/stl_iterator.h **** 	      const reverse_iterator<_Iterator>& __y)
 377:/usr/include/c++/7/bits/stl_iterator.h ****     { return __y.base() - __x.base(); }
 378:/usr/include/c++/7/bits/stl_iterator.h **** 
 379:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
 380:/usr/include/c++/7/bits/stl_iterator.h ****     inline typename reverse_iterator<_IteratorL>::difference_type
 381:/usr/include/c++/7/bits/stl_iterator.h ****     operator-(const reverse_iterator<_IteratorL>& __x,
 382:/usr/include/c++/7/bits/stl_iterator.h **** 	      const reverse_iterator<_IteratorR>& __y)
 383:/usr/include/c++/7/bits/stl_iterator.h ****     { return __y.base() - __x.base(); }
 384:/usr/include/c++/7/bits/stl_iterator.h **** #else
 385:/usr/include/c++/7/bits/stl_iterator.h ****   // _GLIBCXX_RESOLVE_LIB_DEFECTS
 386:/usr/include/c++/7/bits/stl_iterator.h ****   // DR 685. reverse_iterator/move_iterator difference has invalid signatures
 387:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
 388:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR auto
 389:/usr/include/c++/7/bits/stl_iterator.h ****     operator-(const reverse_iterator<_IteratorL>& __x,
 390:/usr/include/c++/7/bits/stl_iterator.h **** 	      const reverse_iterator<_IteratorR>& __y)
 391:/usr/include/c++/7/bits/stl_iterator.h ****     -> decltype(__y.base() - __x.base())
 392:/usr/include/c++/7/bits/stl_iterator.h ****     { return __y.base() - __x.base(); }
 393:/usr/include/c++/7/bits/stl_iterator.h **** #endif
 394:/usr/include/c++/7/bits/stl_iterator.h **** 
 395:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
 396:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR reverse_iterator<_Iterator>
 397:/usr/include/c++/7/bits/stl_iterator.h ****     operator+(typename reverse_iterator<_Iterator>::difference_type __n,
 398:/usr/include/c++/7/bits/stl_iterator.h **** 	      const reverse_iterator<_Iterator>& __x)
 399:/usr/include/c++/7/bits/stl_iterator.h ****     { return reverse_iterator<_Iterator>(__x.base() - __n); }
 400:/usr/include/c++/7/bits/stl_iterator.h **** 
 401:/usr/include/c++/7/bits/stl_iterator.h **** #if __cplusplus >= 201103L
 402:/usr/include/c++/7/bits/stl_iterator.h ****   // Same as C++14 make_reverse_iterator but used in C++03 mode too.
 403:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
 404:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR reverse_iterator<_Iterator>
 405:/usr/include/c++/7/bits/stl_iterator.h ****     __make_reverse_iterator(_Iterator __i)
 406:/usr/include/c++/7/bits/stl_iterator.h ****     { return reverse_iterator<_Iterator>(__i); }
 407:/usr/include/c++/7/bits/stl_iterator.h **** 
 408:/usr/include/c++/7/bits/stl_iterator.h **** # if __cplusplus > 201103L
 409:/usr/include/c++/7/bits/stl_iterator.h **** #  define __cpp_lib_make_reverse_iterator 201402
 410:/usr/include/c++/7/bits/stl_iterator.h **** 
 411:/usr/include/c++/7/bits/stl_iterator.h ****   // _GLIBCXX_RESOLVE_LIB_DEFECTS
 412:/usr/include/c++/7/bits/stl_iterator.h ****   // DR 2285. make_reverse_iterator
 413:/usr/include/c++/7/bits/stl_iterator.h ****   /// Generator function for reverse_iterator.
 414:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
 415:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR reverse_iterator<_Iterator>
 416:/usr/include/c++/7/bits/stl_iterator.h ****     make_reverse_iterator(_Iterator __i)
 417:/usr/include/c++/7/bits/stl_iterator.h ****     { return reverse_iterator<_Iterator>(__i); }
 418:/usr/include/c++/7/bits/stl_iterator.h **** # endif
 419:/usr/include/c++/7/bits/stl_iterator.h **** #endif
 420:/usr/include/c++/7/bits/stl_iterator.h **** 
 421:/usr/include/c++/7/bits/stl_iterator.h **** #if __cplusplus >= 201103L
 422:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
 423:/usr/include/c++/7/bits/stl_iterator.h ****     auto
 424:/usr/include/c++/7/bits/stl_iterator.h ****     __niter_base(reverse_iterator<_Iterator> __it)
 425:/usr/include/c++/7/bits/stl_iterator.h ****     -> decltype(__make_reverse_iterator(__niter_base(__it.base())))
 426:/usr/include/c++/7/bits/stl_iterator.h ****     { return __make_reverse_iterator(__niter_base(__it.base())); }
 427:/usr/include/c++/7/bits/stl_iterator.h **** 
 428:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
 429:/usr/include/c++/7/bits/stl_iterator.h ****     struct __is_move_iterator<reverse_iterator<_Iterator> >
 430:/usr/include/c++/7/bits/stl_iterator.h ****       : __is_move_iterator<_Iterator>
 431:/usr/include/c++/7/bits/stl_iterator.h ****     { };
 432:/usr/include/c++/7/bits/stl_iterator.h **** 
 433:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
 434:/usr/include/c++/7/bits/stl_iterator.h ****     auto
 435:/usr/include/c++/7/bits/stl_iterator.h ****     __miter_base(reverse_iterator<_Iterator> __it)
 436:/usr/include/c++/7/bits/stl_iterator.h ****     -> decltype(__make_reverse_iterator(__miter_base(__it.base())))
 437:/usr/include/c++/7/bits/stl_iterator.h ****     { return __make_reverse_iterator(__miter_base(__it.base())); }
 438:/usr/include/c++/7/bits/stl_iterator.h **** #endif
 439:/usr/include/c++/7/bits/stl_iterator.h **** 
 440:/usr/include/c++/7/bits/stl_iterator.h ****   // 24.4.2.2.1 back_insert_iterator
 441:/usr/include/c++/7/bits/stl_iterator.h ****   /**
 442:/usr/include/c++/7/bits/stl_iterator.h ****    *  @brief  Turns assignment into insertion.
 443:/usr/include/c++/7/bits/stl_iterator.h ****    *
 444:/usr/include/c++/7/bits/stl_iterator.h ****    *  These are output iterators, constructed from a container-of-T.
 445:/usr/include/c++/7/bits/stl_iterator.h ****    *  Assigning a T to the iterator appends it to the container using
 446:/usr/include/c++/7/bits/stl_iterator.h ****    *  push_back.
 447:/usr/include/c++/7/bits/stl_iterator.h ****    *
 448:/usr/include/c++/7/bits/stl_iterator.h ****    *  Tip:  Using the back_inserter function to create these iterators can
 449:/usr/include/c++/7/bits/stl_iterator.h ****    *  save typing.
 450:/usr/include/c++/7/bits/stl_iterator.h ****   */
 451:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Container>
 452:/usr/include/c++/7/bits/stl_iterator.h ****     class back_insert_iterator
 453:/usr/include/c++/7/bits/stl_iterator.h ****     : public iterator<output_iterator_tag, void, void, void, void>
 454:/usr/include/c++/7/bits/stl_iterator.h ****     {
 455:/usr/include/c++/7/bits/stl_iterator.h ****     protected:
 456:/usr/include/c++/7/bits/stl_iterator.h ****       _Container* container;
 457:/usr/include/c++/7/bits/stl_iterator.h **** 
 458:/usr/include/c++/7/bits/stl_iterator.h ****     public:
 459:/usr/include/c++/7/bits/stl_iterator.h ****       /// A nested typedef for the type of whatever container you used.
 460:/usr/include/c++/7/bits/stl_iterator.h ****       typedef _Container          container_type;
 461:/usr/include/c++/7/bits/stl_iterator.h **** 
 462:/usr/include/c++/7/bits/stl_iterator.h ****       /// The only way to create this %iterator is with a container.
 463:/usr/include/c++/7/bits/stl_iterator.h ****       explicit
 464:/usr/include/c++/7/bits/stl_iterator.h ****       back_insert_iterator(_Container& __x)
 465:/usr/include/c++/7/bits/stl_iterator.h ****       : container(std::__addressof(__x)) { }
 466:/usr/include/c++/7/bits/stl_iterator.h **** 
 467:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 468:/usr/include/c++/7/bits/stl_iterator.h ****        *  @param  __value  An instance of whatever type
 469:/usr/include/c++/7/bits/stl_iterator.h ****        *                 container_type::const_reference is; presumably a
 470:/usr/include/c++/7/bits/stl_iterator.h ****        *                 reference-to-const T for container<T>.
 471:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  This %iterator, for chained operations.
 472:/usr/include/c++/7/bits/stl_iterator.h ****        *
 473:/usr/include/c++/7/bits/stl_iterator.h ****        *  This kind of %iterator doesn't really have a @a position in the
 474:/usr/include/c++/7/bits/stl_iterator.h ****        *  container (you can think of the position as being permanently at
 475:/usr/include/c++/7/bits/stl_iterator.h ****        *  the end, if you like).  Assigning a value to the %iterator will
 476:/usr/include/c++/7/bits/stl_iterator.h ****        *  always append the value to the end of the container.
 477:/usr/include/c++/7/bits/stl_iterator.h ****       */
 478:/usr/include/c++/7/bits/stl_iterator.h **** #if __cplusplus < 201103L
 479:/usr/include/c++/7/bits/stl_iterator.h ****       back_insert_iterator&
 480:/usr/include/c++/7/bits/stl_iterator.h ****       operator=(typename _Container::const_reference __value)
 481:/usr/include/c++/7/bits/stl_iterator.h ****       {
 482:/usr/include/c++/7/bits/stl_iterator.h **** 	container->push_back(__value);
 483:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 484:/usr/include/c++/7/bits/stl_iterator.h ****       }
 485:/usr/include/c++/7/bits/stl_iterator.h **** #else
 486:/usr/include/c++/7/bits/stl_iterator.h ****       back_insert_iterator&
 487:/usr/include/c++/7/bits/stl_iterator.h ****       operator=(const typename _Container::value_type& __value)
 488:/usr/include/c++/7/bits/stl_iterator.h ****       {
 489:/usr/include/c++/7/bits/stl_iterator.h **** 	container->push_back(__value);
 490:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 491:/usr/include/c++/7/bits/stl_iterator.h ****       }
 492:/usr/include/c++/7/bits/stl_iterator.h **** 
 493:/usr/include/c++/7/bits/stl_iterator.h ****       back_insert_iterator&
 494:/usr/include/c++/7/bits/stl_iterator.h ****       operator=(typename _Container::value_type&& __value)
 495:/usr/include/c++/7/bits/stl_iterator.h ****       {
 496:/usr/include/c++/7/bits/stl_iterator.h **** 	container->push_back(std::move(__value));
 497:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 498:/usr/include/c++/7/bits/stl_iterator.h ****       }
 499:/usr/include/c++/7/bits/stl_iterator.h **** #endif
 500:/usr/include/c++/7/bits/stl_iterator.h **** 
 501:/usr/include/c++/7/bits/stl_iterator.h ****       /// Simply returns *this.
 502:/usr/include/c++/7/bits/stl_iterator.h ****       back_insert_iterator&
 503:/usr/include/c++/7/bits/stl_iterator.h ****       operator*()
 504:/usr/include/c++/7/bits/stl_iterator.h ****       { return *this; }
 505:/usr/include/c++/7/bits/stl_iterator.h **** 
 506:/usr/include/c++/7/bits/stl_iterator.h ****       /// Simply returns *this.  (This %iterator does not @a move.)
 507:/usr/include/c++/7/bits/stl_iterator.h ****       back_insert_iterator&
 508:/usr/include/c++/7/bits/stl_iterator.h ****       operator++()
 509:/usr/include/c++/7/bits/stl_iterator.h ****       { return *this; }
 510:/usr/include/c++/7/bits/stl_iterator.h **** 
 511:/usr/include/c++/7/bits/stl_iterator.h ****       /// Simply returns *this.  (This %iterator does not @a move.)
 512:/usr/include/c++/7/bits/stl_iterator.h ****       back_insert_iterator
 513:/usr/include/c++/7/bits/stl_iterator.h ****       operator++(int)
 514:/usr/include/c++/7/bits/stl_iterator.h ****       { return *this; }
 515:/usr/include/c++/7/bits/stl_iterator.h ****     };
 516:/usr/include/c++/7/bits/stl_iterator.h **** 
 517:/usr/include/c++/7/bits/stl_iterator.h ****   /**
 518:/usr/include/c++/7/bits/stl_iterator.h ****    *  @param  __x  A container of arbitrary type.
 519:/usr/include/c++/7/bits/stl_iterator.h ****    *  @return  An instance of back_insert_iterator working on @p __x.
 520:/usr/include/c++/7/bits/stl_iterator.h ****    *
 521:/usr/include/c++/7/bits/stl_iterator.h ****    *  This wrapper function helps in creating back_insert_iterator instances.
 522:/usr/include/c++/7/bits/stl_iterator.h ****    *  Typing the name of the %iterator requires knowing the precise full
 523:/usr/include/c++/7/bits/stl_iterator.h ****    *  type of the container, which can be tedious and impedes generic
 524:/usr/include/c++/7/bits/stl_iterator.h ****    *  programming.  Using this function lets you take advantage of automatic
 525:/usr/include/c++/7/bits/stl_iterator.h ****    *  template parameter deduction, making the compiler match the correct
 526:/usr/include/c++/7/bits/stl_iterator.h ****    *  types for you.
 527:/usr/include/c++/7/bits/stl_iterator.h ****   */
 528:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Container>
 529:/usr/include/c++/7/bits/stl_iterator.h ****     inline back_insert_iterator<_Container>
 530:/usr/include/c++/7/bits/stl_iterator.h ****     back_inserter(_Container& __x)
 531:/usr/include/c++/7/bits/stl_iterator.h ****     { return back_insert_iterator<_Container>(__x); }
 532:/usr/include/c++/7/bits/stl_iterator.h **** 
 533:/usr/include/c++/7/bits/stl_iterator.h ****   /**
 534:/usr/include/c++/7/bits/stl_iterator.h ****    *  @brief  Turns assignment into insertion.
 535:/usr/include/c++/7/bits/stl_iterator.h ****    *
 536:/usr/include/c++/7/bits/stl_iterator.h ****    *  These are output iterators, constructed from a container-of-T.
 537:/usr/include/c++/7/bits/stl_iterator.h ****    *  Assigning a T to the iterator prepends it to the container using
 538:/usr/include/c++/7/bits/stl_iterator.h ****    *  push_front.
 539:/usr/include/c++/7/bits/stl_iterator.h ****    *
 540:/usr/include/c++/7/bits/stl_iterator.h ****    *  Tip:  Using the front_inserter function to create these iterators can
 541:/usr/include/c++/7/bits/stl_iterator.h ****    *  save typing.
 542:/usr/include/c++/7/bits/stl_iterator.h ****   */
 543:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Container>
 544:/usr/include/c++/7/bits/stl_iterator.h ****     class front_insert_iterator
 545:/usr/include/c++/7/bits/stl_iterator.h ****     : public iterator<output_iterator_tag, void, void, void, void>
 546:/usr/include/c++/7/bits/stl_iterator.h ****     {
 547:/usr/include/c++/7/bits/stl_iterator.h ****     protected:
 548:/usr/include/c++/7/bits/stl_iterator.h ****       _Container* container;
 549:/usr/include/c++/7/bits/stl_iterator.h **** 
 550:/usr/include/c++/7/bits/stl_iterator.h ****     public:
 551:/usr/include/c++/7/bits/stl_iterator.h ****       /// A nested typedef for the type of whatever container you used.
 552:/usr/include/c++/7/bits/stl_iterator.h ****       typedef _Container          container_type;
 553:/usr/include/c++/7/bits/stl_iterator.h **** 
 554:/usr/include/c++/7/bits/stl_iterator.h ****       /// The only way to create this %iterator is with a container.
 555:/usr/include/c++/7/bits/stl_iterator.h ****       explicit front_insert_iterator(_Container& __x)
 556:/usr/include/c++/7/bits/stl_iterator.h ****       : container(std::__addressof(__x)) { }
 557:/usr/include/c++/7/bits/stl_iterator.h **** 
 558:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 559:/usr/include/c++/7/bits/stl_iterator.h ****        *  @param  __value  An instance of whatever type
 560:/usr/include/c++/7/bits/stl_iterator.h ****        *                 container_type::const_reference is; presumably a
 561:/usr/include/c++/7/bits/stl_iterator.h ****        *                 reference-to-const T for container<T>.
 562:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  This %iterator, for chained operations.
 563:/usr/include/c++/7/bits/stl_iterator.h ****        *
 564:/usr/include/c++/7/bits/stl_iterator.h ****        *  This kind of %iterator doesn't really have a @a position in the
 565:/usr/include/c++/7/bits/stl_iterator.h ****        *  container (you can think of the position as being permanently at
 566:/usr/include/c++/7/bits/stl_iterator.h ****        *  the front, if you like).  Assigning a value to the %iterator will
 567:/usr/include/c++/7/bits/stl_iterator.h ****        *  always prepend the value to the front of the container.
 568:/usr/include/c++/7/bits/stl_iterator.h ****       */
 569:/usr/include/c++/7/bits/stl_iterator.h **** #if __cplusplus < 201103L
 570:/usr/include/c++/7/bits/stl_iterator.h ****       front_insert_iterator&
 571:/usr/include/c++/7/bits/stl_iterator.h ****       operator=(typename _Container::const_reference __value)
 572:/usr/include/c++/7/bits/stl_iterator.h ****       {
 573:/usr/include/c++/7/bits/stl_iterator.h **** 	container->push_front(__value);
 574:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 575:/usr/include/c++/7/bits/stl_iterator.h ****       }
 576:/usr/include/c++/7/bits/stl_iterator.h **** #else
 577:/usr/include/c++/7/bits/stl_iterator.h ****       front_insert_iterator&
 578:/usr/include/c++/7/bits/stl_iterator.h ****       operator=(const typename _Container::value_type& __value)
 579:/usr/include/c++/7/bits/stl_iterator.h ****       {
 580:/usr/include/c++/7/bits/stl_iterator.h **** 	container->push_front(__value);
 581:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 582:/usr/include/c++/7/bits/stl_iterator.h ****       }
 583:/usr/include/c++/7/bits/stl_iterator.h **** 
 584:/usr/include/c++/7/bits/stl_iterator.h ****       front_insert_iterator&
 585:/usr/include/c++/7/bits/stl_iterator.h ****       operator=(typename _Container::value_type&& __value)
 586:/usr/include/c++/7/bits/stl_iterator.h ****       {
 587:/usr/include/c++/7/bits/stl_iterator.h **** 	container->push_front(std::move(__value));
 588:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 589:/usr/include/c++/7/bits/stl_iterator.h ****       }
 590:/usr/include/c++/7/bits/stl_iterator.h **** #endif
 591:/usr/include/c++/7/bits/stl_iterator.h **** 
 592:/usr/include/c++/7/bits/stl_iterator.h ****       /// Simply returns *this.
 593:/usr/include/c++/7/bits/stl_iterator.h ****       front_insert_iterator&
 594:/usr/include/c++/7/bits/stl_iterator.h ****       operator*()
 595:/usr/include/c++/7/bits/stl_iterator.h ****       { return *this; }
 596:/usr/include/c++/7/bits/stl_iterator.h **** 
 597:/usr/include/c++/7/bits/stl_iterator.h ****       /// Simply returns *this.  (This %iterator does not @a move.)
 598:/usr/include/c++/7/bits/stl_iterator.h ****       front_insert_iterator&
 599:/usr/include/c++/7/bits/stl_iterator.h ****       operator++()
 600:/usr/include/c++/7/bits/stl_iterator.h ****       { return *this; }
 601:/usr/include/c++/7/bits/stl_iterator.h **** 
 602:/usr/include/c++/7/bits/stl_iterator.h ****       /// Simply returns *this.  (This %iterator does not @a move.)
 603:/usr/include/c++/7/bits/stl_iterator.h ****       front_insert_iterator
 604:/usr/include/c++/7/bits/stl_iterator.h ****       operator++(int)
 605:/usr/include/c++/7/bits/stl_iterator.h ****       { return *this; }
 606:/usr/include/c++/7/bits/stl_iterator.h ****     };
 607:/usr/include/c++/7/bits/stl_iterator.h **** 
 608:/usr/include/c++/7/bits/stl_iterator.h ****   /**
 609:/usr/include/c++/7/bits/stl_iterator.h ****    *  @param  __x  A container of arbitrary type.
 610:/usr/include/c++/7/bits/stl_iterator.h ****    *  @return  An instance of front_insert_iterator working on @p x.
 611:/usr/include/c++/7/bits/stl_iterator.h ****    *
 612:/usr/include/c++/7/bits/stl_iterator.h ****    *  This wrapper function helps in creating front_insert_iterator instances.
 613:/usr/include/c++/7/bits/stl_iterator.h ****    *  Typing the name of the %iterator requires knowing the precise full
 614:/usr/include/c++/7/bits/stl_iterator.h ****    *  type of the container, which can be tedious and impedes generic
 615:/usr/include/c++/7/bits/stl_iterator.h ****    *  programming.  Using this function lets you take advantage of automatic
 616:/usr/include/c++/7/bits/stl_iterator.h ****    *  template parameter deduction, making the compiler match the correct
 617:/usr/include/c++/7/bits/stl_iterator.h ****    *  types for you.
 618:/usr/include/c++/7/bits/stl_iterator.h ****   */
 619:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Container>
 620:/usr/include/c++/7/bits/stl_iterator.h ****     inline front_insert_iterator<_Container>
 621:/usr/include/c++/7/bits/stl_iterator.h ****     front_inserter(_Container& __x)
 622:/usr/include/c++/7/bits/stl_iterator.h ****     { return front_insert_iterator<_Container>(__x); }
 623:/usr/include/c++/7/bits/stl_iterator.h **** 
 624:/usr/include/c++/7/bits/stl_iterator.h ****   /**
 625:/usr/include/c++/7/bits/stl_iterator.h ****    *  @brief  Turns assignment into insertion.
 626:/usr/include/c++/7/bits/stl_iterator.h ****    *
 627:/usr/include/c++/7/bits/stl_iterator.h ****    *  These are output iterators, constructed from a container-of-T.
 628:/usr/include/c++/7/bits/stl_iterator.h ****    *  Assigning a T to the iterator inserts it in the container at the
 629:/usr/include/c++/7/bits/stl_iterator.h ****    *  %iterator's position, rather than overwriting the value at that
 630:/usr/include/c++/7/bits/stl_iterator.h ****    *  position.
 631:/usr/include/c++/7/bits/stl_iterator.h ****    *
 632:/usr/include/c++/7/bits/stl_iterator.h ****    *  (Sequences will actually insert a @e copy of the value before the
 633:/usr/include/c++/7/bits/stl_iterator.h ****    *  %iterator's position.)
 634:/usr/include/c++/7/bits/stl_iterator.h ****    *
 635:/usr/include/c++/7/bits/stl_iterator.h ****    *  Tip:  Using the inserter function to create these iterators can
 636:/usr/include/c++/7/bits/stl_iterator.h ****    *  save typing.
 637:/usr/include/c++/7/bits/stl_iterator.h ****   */
 638:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Container>
 639:/usr/include/c++/7/bits/stl_iterator.h ****     class insert_iterator
 640:/usr/include/c++/7/bits/stl_iterator.h ****     : public iterator<output_iterator_tag, void, void, void, void>
 641:/usr/include/c++/7/bits/stl_iterator.h ****     {
 642:/usr/include/c++/7/bits/stl_iterator.h ****     protected:
 643:/usr/include/c++/7/bits/stl_iterator.h ****       _Container* container;
 644:/usr/include/c++/7/bits/stl_iterator.h ****       typename _Container::iterator iter;
 645:/usr/include/c++/7/bits/stl_iterator.h **** 
 646:/usr/include/c++/7/bits/stl_iterator.h ****     public:
 647:/usr/include/c++/7/bits/stl_iterator.h ****       /// A nested typedef for the type of whatever container you used.
 648:/usr/include/c++/7/bits/stl_iterator.h ****       typedef _Container          container_type;
 649:/usr/include/c++/7/bits/stl_iterator.h **** 
 650:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 651:/usr/include/c++/7/bits/stl_iterator.h ****        *  The only way to create this %iterator is with a container and an
 652:/usr/include/c++/7/bits/stl_iterator.h ****        *  initial position (a normal %iterator into the container).
 653:/usr/include/c++/7/bits/stl_iterator.h ****       */
 654:/usr/include/c++/7/bits/stl_iterator.h ****       insert_iterator(_Container& __x, typename _Container::iterator __i)
 655:/usr/include/c++/7/bits/stl_iterator.h ****       : container(std::__addressof(__x)), iter(__i) {}
 656:/usr/include/c++/7/bits/stl_iterator.h **** 
 657:/usr/include/c++/7/bits/stl_iterator.h ****       /**
 658:/usr/include/c++/7/bits/stl_iterator.h ****        *  @param  __value  An instance of whatever type
 659:/usr/include/c++/7/bits/stl_iterator.h ****        *                 container_type::const_reference is; presumably a
 660:/usr/include/c++/7/bits/stl_iterator.h ****        *                 reference-to-const T for container<T>.
 661:/usr/include/c++/7/bits/stl_iterator.h ****        *  @return  This %iterator, for chained operations.
 662:/usr/include/c++/7/bits/stl_iterator.h ****        *
 663:/usr/include/c++/7/bits/stl_iterator.h ****        *  This kind of %iterator maintains its own position in the
 664:/usr/include/c++/7/bits/stl_iterator.h ****        *  container.  Assigning a value to the %iterator will insert the
 665:/usr/include/c++/7/bits/stl_iterator.h ****        *  value into the container at the place before the %iterator.
 666:/usr/include/c++/7/bits/stl_iterator.h ****        *
 667:/usr/include/c++/7/bits/stl_iterator.h ****        *  The position is maintained such that subsequent assignments will
 668:/usr/include/c++/7/bits/stl_iterator.h ****        *  insert values immediately after one another.  For example,
 669:/usr/include/c++/7/bits/stl_iterator.h ****        *  @code
 670:/usr/include/c++/7/bits/stl_iterator.h ****        *     // vector v contains A and Z
 671:/usr/include/c++/7/bits/stl_iterator.h ****        *
 672:/usr/include/c++/7/bits/stl_iterator.h ****        *     insert_iterator i (v, ++v.begin());
 673:/usr/include/c++/7/bits/stl_iterator.h ****        *     i = 1;
 674:/usr/include/c++/7/bits/stl_iterator.h ****        *     i = 2;
 675:/usr/include/c++/7/bits/stl_iterator.h ****        *     i = 3;
 676:/usr/include/c++/7/bits/stl_iterator.h ****        *
 677:/usr/include/c++/7/bits/stl_iterator.h ****        *     // vector v contains A, 1, 2, 3, and Z
 678:/usr/include/c++/7/bits/stl_iterator.h ****        *  @endcode
 679:/usr/include/c++/7/bits/stl_iterator.h ****       */
 680:/usr/include/c++/7/bits/stl_iterator.h **** #if __cplusplus < 201103L
 681:/usr/include/c++/7/bits/stl_iterator.h ****       insert_iterator&
 682:/usr/include/c++/7/bits/stl_iterator.h ****       operator=(typename _Container::const_reference __value)
 683:/usr/include/c++/7/bits/stl_iterator.h ****       {
 684:/usr/include/c++/7/bits/stl_iterator.h **** 	iter = container->insert(iter, __value);
 685:/usr/include/c++/7/bits/stl_iterator.h **** 	++iter;
 686:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 687:/usr/include/c++/7/bits/stl_iterator.h ****       }
 688:/usr/include/c++/7/bits/stl_iterator.h **** #else
 689:/usr/include/c++/7/bits/stl_iterator.h ****       insert_iterator&
 690:/usr/include/c++/7/bits/stl_iterator.h ****       operator=(const typename _Container::value_type& __value)
 691:/usr/include/c++/7/bits/stl_iterator.h ****       {
 692:/usr/include/c++/7/bits/stl_iterator.h **** 	iter = container->insert(iter, __value);
 693:/usr/include/c++/7/bits/stl_iterator.h **** 	++iter;
 694:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 695:/usr/include/c++/7/bits/stl_iterator.h ****       }
 696:/usr/include/c++/7/bits/stl_iterator.h **** 
 697:/usr/include/c++/7/bits/stl_iterator.h ****       insert_iterator&
 698:/usr/include/c++/7/bits/stl_iterator.h ****       operator=(typename _Container::value_type&& __value)
 699:/usr/include/c++/7/bits/stl_iterator.h ****       {
 700:/usr/include/c++/7/bits/stl_iterator.h **** 	iter = container->insert(iter, std::move(__value));
 701:/usr/include/c++/7/bits/stl_iterator.h **** 	++iter;
 702:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 703:/usr/include/c++/7/bits/stl_iterator.h ****       }
 704:/usr/include/c++/7/bits/stl_iterator.h **** #endif
 705:/usr/include/c++/7/bits/stl_iterator.h **** 
 706:/usr/include/c++/7/bits/stl_iterator.h ****       /// Simply returns *this.
 707:/usr/include/c++/7/bits/stl_iterator.h ****       insert_iterator&
 708:/usr/include/c++/7/bits/stl_iterator.h ****       operator*()
 709:/usr/include/c++/7/bits/stl_iterator.h ****       { return *this; }
 710:/usr/include/c++/7/bits/stl_iterator.h **** 
 711:/usr/include/c++/7/bits/stl_iterator.h ****       /// Simply returns *this.  (This %iterator does not @a move.)
 712:/usr/include/c++/7/bits/stl_iterator.h ****       insert_iterator&
 713:/usr/include/c++/7/bits/stl_iterator.h ****       operator++()
 714:/usr/include/c++/7/bits/stl_iterator.h ****       { return *this; }
 715:/usr/include/c++/7/bits/stl_iterator.h **** 
 716:/usr/include/c++/7/bits/stl_iterator.h ****       /// Simply returns *this.  (This %iterator does not @a move.)
 717:/usr/include/c++/7/bits/stl_iterator.h ****       insert_iterator&
 718:/usr/include/c++/7/bits/stl_iterator.h ****       operator++(int)
 719:/usr/include/c++/7/bits/stl_iterator.h ****       { return *this; }
 720:/usr/include/c++/7/bits/stl_iterator.h ****     };
 721:/usr/include/c++/7/bits/stl_iterator.h **** 
 722:/usr/include/c++/7/bits/stl_iterator.h ****   /**
 723:/usr/include/c++/7/bits/stl_iterator.h ****    *  @param __x  A container of arbitrary type.
 724:/usr/include/c++/7/bits/stl_iterator.h ****    *  @return  An instance of insert_iterator working on @p __x.
 725:/usr/include/c++/7/bits/stl_iterator.h ****    *
 726:/usr/include/c++/7/bits/stl_iterator.h ****    *  This wrapper function helps in creating insert_iterator instances.
 727:/usr/include/c++/7/bits/stl_iterator.h ****    *  Typing the name of the %iterator requires knowing the precise full
 728:/usr/include/c++/7/bits/stl_iterator.h ****    *  type of the container, which can be tedious and impedes generic
 729:/usr/include/c++/7/bits/stl_iterator.h ****    *  programming.  Using this function lets you take advantage of automatic
 730:/usr/include/c++/7/bits/stl_iterator.h ****    *  template parameter deduction, making the compiler match the correct
 731:/usr/include/c++/7/bits/stl_iterator.h ****    *  types for you.
 732:/usr/include/c++/7/bits/stl_iterator.h ****   */
 733:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Container, typename _Iterator>
 734:/usr/include/c++/7/bits/stl_iterator.h ****     inline insert_iterator<_Container>
 735:/usr/include/c++/7/bits/stl_iterator.h ****     inserter(_Container& __x, _Iterator __i)
 736:/usr/include/c++/7/bits/stl_iterator.h ****     {
 737:/usr/include/c++/7/bits/stl_iterator.h ****       return insert_iterator<_Container>(__x,
 738:/usr/include/c++/7/bits/stl_iterator.h **** 					 typename _Container::iterator(__i));
 739:/usr/include/c++/7/bits/stl_iterator.h ****     }
 740:/usr/include/c++/7/bits/stl_iterator.h **** 
 741:/usr/include/c++/7/bits/stl_iterator.h ****   // @} group iterators
 742:/usr/include/c++/7/bits/stl_iterator.h **** 
 743:/usr/include/c++/7/bits/stl_iterator.h **** _GLIBCXX_END_NAMESPACE_VERSION
 744:/usr/include/c++/7/bits/stl_iterator.h **** } // namespace
 745:/usr/include/c++/7/bits/stl_iterator.h **** 
 746:/usr/include/c++/7/bits/stl_iterator.h **** namespace __gnu_cxx _GLIBCXX_VISIBILITY(default)
 747:/usr/include/c++/7/bits/stl_iterator.h **** {
 748:/usr/include/c++/7/bits/stl_iterator.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
 749:/usr/include/c++/7/bits/stl_iterator.h **** 
 750:/usr/include/c++/7/bits/stl_iterator.h ****   // This iterator adapter is @a normal in the sense that it does not
 751:/usr/include/c++/7/bits/stl_iterator.h ****   // change the semantics of any of the operators of its iterator
 752:/usr/include/c++/7/bits/stl_iterator.h ****   // parameter.  Its primary purpose is to convert an iterator that is
 753:/usr/include/c++/7/bits/stl_iterator.h ****   // not a class, e.g. a pointer, into an iterator that is a class.
 754:/usr/include/c++/7/bits/stl_iterator.h ****   // The _Container parameter exists solely so that different containers
 755:/usr/include/c++/7/bits/stl_iterator.h ****   // using this template can instantiate different types, even if the
 756:/usr/include/c++/7/bits/stl_iterator.h ****   // _Iterator parameter is the same.
 757:/usr/include/c++/7/bits/stl_iterator.h ****   using std::iterator_traits;
 758:/usr/include/c++/7/bits/stl_iterator.h ****   using std::iterator;
 759:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator, typename _Container>
 760:/usr/include/c++/7/bits/stl_iterator.h ****     class __normal_iterator
 761:/usr/include/c++/7/bits/stl_iterator.h ****     {
 762:/usr/include/c++/7/bits/stl_iterator.h ****     protected:
 763:/usr/include/c++/7/bits/stl_iterator.h ****       _Iterator _M_current;
 764:/usr/include/c++/7/bits/stl_iterator.h **** 
 765:/usr/include/c++/7/bits/stl_iterator.h ****       typedef iterator_traits<_Iterator>		__traits_type;
 766:/usr/include/c++/7/bits/stl_iterator.h **** 
 767:/usr/include/c++/7/bits/stl_iterator.h ****     public:
 768:/usr/include/c++/7/bits/stl_iterator.h ****       typedef _Iterator					iterator_type;
 769:/usr/include/c++/7/bits/stl_iterator.h ****       typedef typename __traits_type::iterator_category iterator_category;
 770:/usr/include/c++/7/bits/stl_iterator.h ****       typedef typename __traits_type::value_type  	value_type;
 771:/usr/include/c++/7/bits/stl_iterator.h ****       typedef typename __traits_type::difference_type 	difference_type;
 772:/usr/include/c++/7/bits/stl_iterator.h ****       typedef typename __traits_type::reference 	reference;
 773:/usr/include/c++/7/bits/stl_iterator.h ****       typedef typename __traits_type::pointer   	pointer;
 774:/usr/include/c++/7/bits/stl_iterator.h **** 
 775:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX_CONSTEXPR __normal_iterator() _GLIBCXX_NOEXCEPT
 776:/usr/include/c++/7/bits/stl_iterator.h ****       : _M_current(_Iterator()) { }
 777:/usr/include/c++/7/bits/stl_iterator.h **** 
 778:/usr/include/c++/7/bits/stl_iterator.h ****       explicit
 779:/usr/include/c++/7/bits/stl_iterator.h ****       __normal_iterator(const _Iterator& __i) _GLIBCXX_NOEXCEPT
 780:/usr/include/c++/7/bits/stl_iterator.h ****       : _M_current(__i) { }
 781:/usr/include/c++/7/bits/stl_iterator.h **** 
 782:/usr/include/c++/7/bits/stl_iterator.h ****       // Allow iterator to const_iterator conversion
 783:/usr/include/c++/7/bits/stl_iterator.h ****       template<typename _Iter>
 784:/usr/include/c++/7/bits/stl_iterator.h ****         __normal_iterator(const __normal_iterator<_Iter,
 785:/usr/include/c++/7/bits/stl_iterator.h **** 			  typename __enable_if<
 786:/usr/include/c++/7/bits/stl_iterator.h ****       	       (std::__are_same<_Iter, typename _Container::pointer>::__value),
 787:/usr/include/c++/7/bits/stl_iterator.h **** 		      _Container>::__type>& __i) _GLIBCXX_NOEXCEPT
 788:/usr/include/c++/7/bits/stl_iterator.h ****         : _M_current(__i.base()) { }
 789:/usr/include/c++/7/bits/stl_iterator.h **** 
 790:/usr/include/c++/7/bits/stl_iterator.h ****       // Forward iterator requirements
 791:/usr/include/c++/7/bits/stl_iterator.h ****       reference
 792:/usr/include/c++/7/bits/stl_iterator.h ****       operator*() const _GLIBCXX_NOEXCEPT
 793:/usr/include/c++/7/bits/stl_iterator.h ****       { return *_M_current; }
 794:/usr/include/c++/7/bits/stl_iterator.h **** 
 795:/usr/include/c++/7/bits/stl_iterator.h ****       pointer
 796:/usr/include/c++/7/bits/stl_iterator.h ****       operator->() const _GLIBCXX_NOEXCEPT
 797:/usr/include/c++/7/bits/stl_iterator.h ****       { return _M_current; }
 798:/usr/include/c++/7/bits/stl_iterator.h **** 
 799:/usr/include/c++/7/bits/stl_iterator.h ****       __normal_iterator&
 800:/usr/include/c++/7/bits/stl_iterator.h ****       operator++() _GLIBCXX_NOEXCEPT
 801:/usr/include/c++/7/bits/stl_iterator.h ****       {
 802:/usr/include/c++/7/bits/stl_iterator.h **** 	++_M_current;
 803:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 804:/usr/include/c++/7/bits/stl_iterator.h ****       }
 805:/usr/include/c++/7/bits/stl_iterator.h **** 
 806:/usr/include/c++/7/bits/stl_iterator.h ****       __normal_iterator
 807:/usr/include/c++/7/bits/stl_iterator.h ****       operator++(int) _GLIBCXX_NOEXCEPT
 808:/usr/include/c++/7/bits/stl_iterator.h ****       { return __normal_iterator(_M_current++); }
 809:/usr/include/c++/7/bits/stl_iterator.h **** 
 810:/usr/include/c++/7/bits/stl_iterator.h ****       // Bidirectional iterator requirements
 811:/usr/include/c++/7/bits/stl_iterator.h ****       __normal_iterator&
 812:/usr/include/c++/7/bits/stl_iterator.h ****       operator--() _GLIBCXX_NOEXCEPT
 813:/usr/include/c++/7/bits/stl_iterator.h ****       {
 814:/usr/include/c++/7/bits/stl_iterator.h **** 	--_M_current;
 815:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 816:/usr/include/c++/7/bits/stl_iterator.h ****       }
 817:/usr/include/c++/7/bits/stl_iterator.h **** 
 818:/usr/include/c++/7/bits/stl_iterator.h ****       __normal_iterator
 819:/usr/include/c++/7/bits/stl_iterator.h ****       operator--(int) _GLIBCXX_NOEXCEPT
 820:/usr/include/c++/7/bits/stl_iterator.h ****       { return __normal_iterator(_M_current--); }
 821:/usr/include/c++/7/bits/stl_iterator.h **** 
 822:/usr/include/c++/7/bits/stl_iterator.h ****       // Random access iterator requirements
 823:/usr/include/c++/7/bits/stl_iterator.h ****       reference
 824:/usr/include/c++/7/bits/stl_iterator.h ****       operator[](difference_type __n) const _GLIBCXX_NOEXCEPT
 825:/usr/include/c++/7/bits/stl_iterator.h ****       { return _M_current[__n]; }
 826:/usr/include/c++/7/bits/stl_iterator.h **** 
 827:/usr/include/c++/7/bits/stl_iterator.h ****       __normal_iterator&
 828:/usr/include/c++/7/bits/stl_iterator.h ****       operator+=(difference_type __n) _GLIBCXX_NOEXCEPT
 829:/usr/include/c++/7/bits/stl_iterator.h ****       { _M_current += __n; return *this; }
 830:/usr/include/c++/7/bits/stl_iterator.h **** 
 831:/usr/include/c++/7/bits/stl_iterator.h ****       __normal_iterator
 832:/usr/include/c++/7/bits/stl_iterator.h ****       operator+(difference_type __n) const _GLIBCXX_NOEXCEPT
 833:/usr/include/c++/7/bits/stl_iterator.h ****       { return __normal_iterator(_M_current + __n); }
 834:/usr/include/c++/7/bits/stl_iterator.h **** 
 835:/usr/include/c++/7/bits/stl_iterator.h ****       __normal_iterator&
 836:/usr/include/c++/7/bits/stl_iterator.h ****       operator-=(difference_type __n) _GLIBCXX_NOEXCEPT
 837:/usr/include/c++/7/bits/stl_iterator.h ****       { _M_current -= __n; return *this; }
 838:/usr/include/c++/7/bits/stl_iterator.h **** 
 839:/usr/include/c++/7/bits/stl_iterator.h ****       __normal_iterator
 840:/usr/include/c++/7/bits/stl_iterator.h ****       operator-(difference_type __n) const _GLIBCXX_NOEXCEPT
 841:/usr/include/c++/7/bits/stl_iterator.h ****       { return __normal_iterator(_M_current - __n); }
 842:/usr/include/c++/7/bits/stl_iterator.h **** 
 843:/usr/include/c++/7/bits/stl_iterator.h ****       const _Iterator&
 844:/usr/include/c++/7/bits/stl_iterator.h ****       base() const _GLIBCXX_NOEXCEPT
 845:/usr/include/c++/7/bits/stl_iterator.h ****       { return _M_current; }
 846:/usr/include/c++/7/bits/stl_iterator.h ****     };
 847:/usr/include/c++/7/bits/stl_iterator.h **** 
 848:/usr/include/c++/7/bits/stl_iterator.h ****   // Note: In what follows, the left- and right-hand-side iterators are
 849:/usr/include/c++/7/bits/stl_iterator.h ****   // allowed to vary in types (conceptually in cv-qualification) so that
 850:/usr/include/c++/7/bits/stl_iterator.h ****   // comparison between cv-qualified and non-cv-qualified iterators be
 851:/usr/include/c++/7/bits/stl_iterator.h ****   // valid.  However, the greedy and unfriendly operators in std::rel_ops
 852:/usr/include/c++/7/bits/stl_iterator.h ****   // will make overload resolution ambiguous (when in scope) if we don't
 853:/usr/include/c++/7/bits/stl_iterator.h ****   // provide overloads whose operands are of the same type.  Can someone
 854:/usr/include/c++/7/bits/stl_iterator.h ****   // remind me what generic programming is about? -- Gaby
 855:/usr/include/c++/7/bits/stl_iterator.h **** 
 856:/usr/include/c++/7/bits/stl_iterator.h ****   // Forward iterator requirements
 857:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR, typename _Container>
 858:/usr/include/c++/7/bits/stl_iterator.h ****     inline bool
 859:/usr/include/c++/7/bits/stl_iterator.h ****     operator==(const __normal_iterator<_IteratorL, _Container>& __lhs,
 860:/usr/include/c++/7/bits/stl_iterator.h **** 	       const __normal_iterator<_IteratorR, _Container>& __rhs)
 861:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 862:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() == __rhs.base(); }
 863:/usr/include/c++/7/bits/stl_iterator.h **** 
 864:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator, typename _Container>
 865:/usr/include/c++/7/bits/stl_iterator.h ****     inline bool
 866:/usr/include/c++/7/bits/stl_iterator.h ****     operator==(const __normal_iterator<_Iterator, _Container>& __lhs,
 867:/usr/include/c++/7/bits/stl_iterator.h **** 	       const __normal_iterator<_Iterator, _Container>& __rhs)
 868:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 869:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() == __rhs.base(); }
 870:/usr/include/c++/7/bits/stl_iterator.h **** 
 871:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR, typename _Container>
 872:/usr/include/c++/7/bits/stl_iterator.h ****     inline bool
 873:/usr/include/c++/7/bits/stl_iterator.h ****     operator!=(const __normal_iterator<_IteratorL, _Container>& __lhs,
 874:/usr/include/c++/7/bits/stl_iterator.h **** 	       const __normal_iterator<_IteratorR, _Container>& __rhs)
 875:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 876:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() != __rhs.base(); }
 877:/usr/include/c++/7/bits/stl_iterator.h **** 
 878:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator, typename _Container>
 879:/usr/include/c++/7/bits/stl_iterator.h ****     inline bool
 880:/usr/include/c++/7/bits/stl_iterator.h ****     operator!=(const __normal_iterator<_Iterator, _Container>& __lhs,
 1951              		.loc 3 880 0
 1952              		.cfi_startproc
 1953 0000 55       		pushq	%rbp
 1954              		.cfi_def_cfa_offset 16
 1955              		.cfi_offset 6, -16
 1956 0001 4889E5   		movq	%rsp, %rbp
 1957              		.cfi_def_cfa_register 6
 1958 0004 53       		pushq	%rbx
 1959 0005 4883EC18 		subq	$24, %rsp
 1960              		.cfi_offset 3, -24
 1961 0009 48897DE8 		movq	%rdi, -24(%rbp)
 1962 000d 488975E0 		movq	%rsi, -32(%rbp)
 881:/usr/include/c++/7/bits/stl_iterator.h **** 	       const __normal_iterator<_Iterator, _Container>& __rhs)
 882:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 883:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() != __rhs.base(); }
 1963              		.loc 3 883 0
 1964 0011 488B45E8 		movq	-24(%rbp), %rax
 1965 0015 4889C7   		movq	%rax, %rdi
 1966 0018 E8000000 		call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
 1966      00
 1967 001d 488B18   		movq	(%rax), %rbx
 1968 0020 488B45E0 		movq	-32(%rbp), %rax
 1969 0024 4889C7   		movq	%rax, %rdi
 1970 0027 E8000000 		call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
 1970      00
 1971 002c 488B00   		movq	(%rax), %rax
 1972 002f 4839C3   		cmpq	%rax, %rbx
 1973 0032 0F95C0   		setne	%al
 1974 0035 4883C418 		addq	$24, %rsp
 1975 0039 5B       		popq	%rbx
 1976 003a 5D       		popq	%rbp
 1977              		.cfi_def_cfa 7, 8
 1978 003b C3       		ret
 1979              		.cfi_endproc
 1980              	.LFE2126:
 1982              		.section	.text._ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv,"axG",@progbits,_ZN9__gnu
 1983              		.align 2
 1984              		.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
 1986              	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv:
 1987              	.LFB2127:
 800:/usr/include/c++/7/bits/stl_iterator.h ****       {
 1988              		.loc 3 800 0
 1989              		.cfi_startproc
 1990 0000 55       		pushq	%rbp
 1991              		.cfi_def_cfa_offset 16
 1992              		.cfi_offset 6, -16
 1993 0001 4889E5   		movq	%rsp, %rbp
 1994              		.cfi_def_cfa_register 6
 1995 0004 48897DF8 		movq	%rdi, -8(%rbp)
 802:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 1996              		.loc 3 802 0
 1997 0008 488B45F8 		movq	-8(%rbp), %rax
 1998 000c 488B00   		movq	(%rax), %rax
 1999 000f 488D5008 		leaq	8(%rax), %rdx
 2000 0013 488B45F8 		movq	-8(%rbp), %rax
 2001 0017 488910   		movq	%rdx, (%rax)
 803:/usr/include/c++/7/bits/stl_iterator.h ****       }
 2002              		.loc 3 803 0
 2003 001a 488B45F8 		movq	-8(%rbp), %rax
 804:/usr/include/c++/7/bits/stl_iterator.h **** 
 2004              		.loc 3 804 0
 2005 001e 5D       		popq	%rbp
 2006              		.cfi_def_cfa 7, 8
 2007 001f C3       		ret
 2008              		.cfi_endproc
 2009              	.LFE2127:
 2011              		.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv,"axG",@progbits,_ZNK9__g
 2012              		.align 2
 2013              		.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
 2015              	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv:
 2016              	.LFB2128:
 792:/usr/include/c++/7/bits/stl_iterator.h ****       { return *_M_current; }
 2017              		.loc 3 792 0
 2018              		.cfi_startproc
 2019 0000 55       		pushq	%rbp
 2020              		.cfi_def_cfa_offset 16
 2021              		.cfi_offset 6, -16
 2022 0001 4889E5   		movq	%rsp, %rbp
 2023              		.cfi_def_cfa_register 6
 2024 0004 48897DF8 		movq	%rdi, -8(%rbp)
 793:/usr/include/c++/7/bits/stl_iterator.h **** 
 2025              		.loc 3 793 0
 2026 0008 488B45F8 		movq	-8(%rbp), %rax
 2027 000c 488B00   		movq	(%rax), %rax
 2028 000f 5D       		popq	%rbp
 2029              		.cfi_def_cfa 7, 8
 2030 0010 C3       		ret
 2031              		.cfi_endproc
 2032              	.LFE2128:
 2034              		.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseId
 2035              		.align 2
 2036              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
 2038              	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev:
 2039              	.LFB2240:
  81:/usr/include/c++/7/bits/stl_vector.h ****       : public _Tp_alloc_type
 2040              		.loc 2 81 0
 2041              		.cfi_startproc
 2042 0000 55       		pushq	%rbp
 2043              		.cfi_def_cfa_offset 16
 2044              		.cfi_offset 6, -16
 2045 0001 4889E5   		movq	%rsp, %rbp
 2046              		.cfi_def_cfa_register 6
 2047 0004 4883EC10 		subq	$16, %rsp
 2048 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2049              	.LBB23:
  81:/usr/include/c++/7/bits/stl_vector.h ****       : public _Tp_alloc_type
 2050              		.loc 2 81 0
 2051 000c 488B45F8 		movq	-8(%rbp), %rax
 2052 0010 4889C7   		movq	%rax, %rdi
 2053 0013 E8000000 		call	_ZNSaIdED2Ev
 2053      00
 2054              	.LBE23:
 2055 0018 90       		nop
 2056 0019 C9       		leave
 2057              		.cfi_def_cfa 7, 8
 2058 001a C3       		ret
 2059              		.cfi_endproc
 2060              	.LFE2240:
 2062              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
 2063              		.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
 2064              		.section	.text._ZNSt12_Vector_baseIdSaIdEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5Ev,com
 2065              		.align 2
 2066              		.weak	_ZNSt12_Vector_baseIdSaIdEEC2Ev
 2068              	_ZNSt12_Vector_baseIdSaIdEEC2Ev:
 2069              	.LFB2242:
 126:/usr/include/c++/7/bits/stl_vector.h ****       : _M_impl() { }
 2070              		.loc 2 126 0
 2071              		.cfi_startproc
 2072 0000 55       		pushq	%rbp
 2073              		.cfi_def_cfa_offset 16
 2074              		.cfi_offset 6, -16
 2075 0001 4889E5   		movq	%rsp, %rbp
 2076              		.cfi_def_cfa_register 6
 2077 0004 4883EC10 		subq	$16, %rsp
 2078 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2079              	.LBB24:
 127:/usr/include/c++/7/bits/stl_vector.h **** 
 2080              		.loc 2 127 0
 2081 000c 488B45F8 		movq	-8(%rbp), %rax
 2082 0010 4889C7   		movq	%rax, %rdi
 2083 0013 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
 2083      00
 2084              	.LBE24:
 2085 0018 90       		nop
 2086 0019 C9       		leave
 2087              		.cfi_def_cfa 7, 8
 2088 001a C3       		ret
 2089              		.cfi_endproc
 2090              	.LFE2242:
 2092              		.weak	_ZNSt12_Vector_baseIdSaIdEEC1Ev
 2093              		.set	_ZNSt12_Vector_baseIdSaIdEEC1Ev,_ZNSt12_Vector_baseIdSaIdEEC2Ev
 2094              		.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,com
 2095              		.align 2
 2096              		.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
 2098              	_ZNSt12_Vector_baseIdSaIdEED2Ev:
 2099              	.LFB2245:
 161:/usr/include/c++/7/bits/stl_vector.h ****       { _M_deallocate(this->_M_impl._M_start, this->_M_impl._M_end_of_storage
 2100              		.loc 2 161 0
 2101              		.cfi_startproc
 2102              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 2103              		.cfi_lsda 0x1b,.LLSDA2245
 2104 0000 55       		pushq	%rbp
 2105              		.cfi_def_cfa_offset 16
 2106              		.cfi_offset 6, -16
 2107 0001 4889E5   		movq	%rsp, %rbp
 2108              		.cfi_def_cfa_register 6
 2109 0004 4883EC10 		subq	$16, %rsp
 2110 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2111              	.LBB25:
 162:/usr/include/c++/7/bits/stl_vector.h **** 		      - this->_M_impl._M_start); }
 2112              		.loc 2 162 0
 2113 000c 488B45F8 		movq	-8(%rbp), %rax
 2114 0010 488B4010 		movq	16(%rax), %rax
 163:/usr/include/c++/7/bits/stl_vector.h **** 
 2115              		.loc 2 163 0
 2116 0014 4889C2   		movq	%rax, %rdx
 2117 0017 488B45F8 		movq	-8(%rbp), %rax
 2118 001b 488B00   		movq	(%rax), %rax
 2119 001e 4829C2   		subq	%rax, %rdx
 2120 0021 4889D0   		movq	%rdx, %rax
 2121 0024 48C1F803 		sarq	$3, %rax
 162:/usr/include/c++/7/bits/stl_vector.h **** 		      - this->_M_impl._M_start); }
 2122              		.loc 2 162 0
 2123 0028 4889C2   		movq	%rax, %rdx
 2124 002b 488B45F8 		movq	-8(%rbp), %rax
 2125 002f 488B08   		movq	(%rax), %rcx
 2126 0032 488B45F8 		movq	-8(%rbp), %rax
 2127 0036 4889CE   		movq	%rcx, %rsi
 2128 0039 4889C7   		movq	%rax, %rdi
 2129 003c E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 2129      00
 163:/usr/include/c++/7/bits/stl_vector.h **** 
 2130              		.loc 2 163 0
 2131 0041 488B45F8 		movq	-8(%rbp), %rax
 2132 0045 4889C7   		movq	%rax, %rdi
 2133 0048 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
 2133      00
 2134              	.LBE25:
 2135 004d 90       		nop
 2136 004e C9       		leave
 2137              		.cfi_def_cfa 7, 8
 2138 004f C3       		ret
 2139              		.cfi_endproc
 2140              	.LFE2245:
 2141              		.section	.gcc_except_table
 2142              	.LLSDA2245:
 2143 0077 FF       		.byte	0xff
 2144 0078 FF       		.byte	0xff
 2145 0079 01       		.byte	0x1
 2146 007a 00       		.uleb128 .LLSDACSE2245-.LLSDACSB2245
 2147              	.LLSDACSB2245:
 2148              	.LLSDACSE2245:
 2149              		.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,com
 2151              		.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
 2152              		.set	_ZNSt12_Vector_baseIdSaIdEED1Ev,_ZNSt12_Vector_baseIdSaIdEED2Ev
 2153              		.section	.text._ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_b
 2154              		.align 2
 2155              		.weak	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2157              	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
 2158              	.LFB2247:
 115:/usr/include/c++/7/bits/stl_vector.h ****       { return *static_cast<_Tp_alloc_type*>(&this->_M_impl); }
 2159              		.loc 2 115 0
 2160              		.cfi_startproc
 2161 0000 55       		pushq	%rbp
 2162              		.cfi_def_cfa_offset 16
 2163              		.cfi_offset 6, -16
 2164 0001 4889E5   		movq	%rsp, %rbp
 2165              		.cfi_def_cfa_register 6
 2166 0004 48897DF8 		movq	%rdi, -8(%rbp)
 116:/usr/include/c++/7/bits/stl_vector.h **** 
 2167              		.loc 2 116 0
 2168 0008 488B45F8 		movq	-8(%rbp), %rax
 2169 000c 5D       		popq	%rbp
 2170              		.cfi_def_cfa 7, 8
 2171 000d C3       		ret
 2172              		.cfi_endproc
 2173              	.LFE2247:
 2175              		.section	.text._ZSt8_DestroyIPddEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPddEvT_S1_RSaIT0_E,c
 2176              		.weak	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 2178              	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E:
 2179              	.LFB2248:
 2180              		.file 4 "/usr/include/c++/7/bits/stl_construct.h"
   1:/usr/include/c++/7/bits/stl_construct.h **** // nonstandard construct and destroy functions -*- C++ -*-
   2:/usr/include/c++/7/bits/stl_construct.h **** 
   3:/usr/include/c++/7/bits/stl_construct.h **** // Copyright (C) 2001-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/stl_construct.h **** //
   5:/usr/include/c++/7/bits/stl_construct.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/stl_construct.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/stl_construct.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/stl_construct.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/stl_construct.h **** // any later version.
  10:/usr/include/c++/7/bits/stl_construct.h **** 
  11:/usr/include/c++/7/bits/stl_construct.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/stl_construct.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/stl_construct.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/stl_construct.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/stl_construct.h **** 
  16:/usr/include/c++/7/bits/stl_construct.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/stl_construct.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/stl_construct.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/stl_construct.h **** 
  20:/usr/include/c++/7/bits/stl_construct.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/stl_construct.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/stl_construct.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/stl_construct.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/stl_construct.h **** 
  25:/usr/include/c++/7/bits/stl_construct.h **** /*
  26:/usr/include/c++/7/bits/stl_construct.h ****  *
  27:/usr/include/c++/7/bits/stl_construct.h ****  * Copyright (c) 1994
  28:/usr/include/c++/7/bits/stl_construct.h ****  * Hewlett-Packard Company
  29:/usr/include/c++/7/bits/stl_construct.h ****  *
  30:/usr/include/c++/7/bits/stl_construct.h ****  * Permission to use, copy, modify, distribute and sell this software
  31:/usr/include/c++/7/bits/stl_construct.h ****  * and its documentation for any purpose is hereby granted without fee,
  32:/usr/include/c++/7/bits/stl_construct.h ****  * provided that the above copyright notice appear in all copies and
  33:/usr/include/c++/7/bits/stl_construct.h ****  * that both that copyright notice and this permission notice appear
  34:/usr/include/c++/7/bits/stl_construct.h ****  * in supporting documentation.  Hewlett-Packard Company makes no
  35:/usr/include/c++/7/bits/stl_construct.h ****  * representations about the suitability of this software for any
  36:/usr/include/c++/7/bits/stl_construct.h ****  * purpose.  It is provided "as is" without express or implied warranty.
  37:/usr/include/c++/7/bits/stl_construct.h ****  *
  38:/usr/include/c++/7/bits/stl_construct.h ****  *
  39:/usr/include/c++/7/bits/stl_construct.h ****  * Copyright (c) 1996,1997
  40:/usr/include/c++/7/bits/stl_construct.h ****  * Silicon Graphics Computer Systems, Inc.
  41:/usr/include/c++/7/bits/stl_construct.h ****  *
  42:/usr/include/c++/7/bits/stl_construct.h ****  * Permission to use, copy, modify, distribute and sell this software
  43:/usr/include/c++/7/bits/stl_construct.h ****  * and its documentation for any purpose is hereby granted without fee,
  44:/usr/include/c++/7/bits/stl_construct.h ****  * provided that the above copyright notice appear in all copies and
  45:/usr/include/c++/7/bits/stl_construct.h ****  * that both that copyright notice and this permission notice appear
  46:/usr/include/c++/7/bits/stl_construct.h ****  * in supporting documentation.  Silicon Graphics makes no
  47:/usr/include/c++/7/bits/stl_construct.h ****  * representations about the suitability of this software for any
  48:/usr/include/c++/7/bits/stl_construct.h ****  * purpose.  It is provided "as is" without express or implied warranty.
  49:/usr/include/c++/7/bits/stl_construct.h ****  */
  50:/usr/include/c++/7/bits/stl_construct.h **** 
  51:/usr/include/c++/7/bits/stl_construct.h **** /** @file bits/stl_construct.h
  52:/usr/include/c++/7/bits/stl_construct.h ****  *  This is an internal header file, included by other library headers.
  53:/usr/include/c++/7/bits/stl_construct.h ****  *  Do not attempt to use it directly. @headername{memory}
  54:/usr/include/c++/7/bits/stl_construct.h ****  */
  55:/usr/include/c++/7/bits/stl_construct.h **** 
  56:/usr/include/c++/7/bits/stl_construct.h **** #ifndef _STL_CONSTRUCT_H
  57:/usr/include/c++/7/bits/stl_construct.h **** #define _STL_CONSTRUCT_H 1
  58:/usr/include/c++/7/bits/stl_construct.h **** 
  59:/usr/include/c++/7/bits/stl_construct.h **** #include <new>
  60:/usr/include/c++/7/bits/stl_construct.h **** #include <bits/move.h>
  61:/usr/include/c++/7/bits/stl_construct.h **** #include <ext/alloc_traits.h>
  62:/usr/include/c++/7/bits/stl_construct.h **** 
  63:/usr/include/c++/7/bits/stl_construct.h **** namespace std _GLIBCXX_VISIBILITY(default)
  64:/usr/include/c++/7/bits/stl_construct.h **** {
  65:/usr/include/c++/7/bits/stl_construct.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  66:/usr/include/c++/7/bits/stl_construct.h **** 
  67:/usr/include/c++/7/bits/stl_construct.h ****   /**
  68:/usr/include/c++/7/bits/stl_construct.h ****    * Constructs an object in existing memory by invoking an allocated
  69:/usr/include/c++/7/bits/stl_construct.h ****    * object's constructor with an initializer.
  70:/usr/include/c++/7/bits/stl_construct.h ****    */
  71:/usr/include/c++/7/bits/stl_construct.h **** #if __cplusplus >= 201103L
  72:/usr/include/c++/7/bits/stl_construct.h ****   template<typename _T1, typename... _Args>
  73:/usr/include/c++/7/bits/stl_construct.h ****     inline void
  74:/usr/include/c++/7/bits/stl_construct.h ****     _Construct(_T1* __p, _Args&&... __args)
  75:/usr/include/c++/7/bits/stl_construct.h ****     { ::new(static_cast<void*>(__p)) _T1(std::forward<_Args>(__args)...); }
  76:/usr/include/c++/7/bits/stl_construct.h **** #else
  77:/usr/include/c++/7/bits/stl_construct.h ****   template<typename _T1, typename _T2>
  78:/usr/include/c++/7/bits/stl_construct.h ****     inline void
  79:/usr/include/c++/7/bits/stl_construct.h ****     _Construct(_T1* __p, const _T2& __value)
  80:/usr/include/c++/7/bits/stl_construct.h ****     {
  81:/usr/include/c++/7/bits/stl_construct.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
  82:/usr/include/c++/7/bits/stl_construct.h ****       // 402. wrong new expression in [some_]allocator::construct
  83:/usr/include/c++/7/bits/stl_construct.h ****       ::new(static_cast<void*>(__p)) _T1(__value);
  84:/usr/include/c++/7/bits/stl_construct.h ****     }
  85:/usr/include/c++/7/bits/stl_construct.h **** #endif
  86:/usr/include/c++/7/bits/stl_construct.h **** 
  87:/usr/include/c++/7/bits/stl_construct.h ****   template<typename _T1>
  88:/usr/include/c++/7/bits/stl_construct.h ****     inline void
  89:/usr/include/c++/7/bits/stl_construct.h ****     _Construct_novalue(_T1* __p)
  90:/usr/include/c++/7/bits/stl_construct.h ****     { ::new(static_cast<void*>(__p)) _T1; }
  91:/usr/include/c++/7/bits/stl_construct.h **** 
  92:/usr/include/c++/7/bits/stl_construct.h ****   /**
  93:/usr/include/c++/7/bits/stl_construct.h ****    * Destroy the object pointed to by a pointer type.
  94:/usr/include/c++/7/bits/stl_construct.h ****    */
  95:/usr/include/c++/7/bits/stl_construct.h ****   template<typename _Tp>
  96:/usr/include/c++/7/bits/stl_construct.h ****     inline void
  97:/usr/include/c++/7/bits/stl_construct.h ****     _Destroy(_Tp* __pointer)
  98:/usr/include/c++/7/bits/stl_construct.h ****     { __pointer->~_Tp(); }
  99:/usr/include/c++/7/bits/stl_construct.h **** 
 100:/usr/include/c++/7/bits/stl_construct.h ****   template<bool>
 101:/usr/include/c++/7/bits/stl_construct.h ****     struct _Destroy_aux
 102:/usr/include/c++/7/bits/stl_construct.h ****     {
 103:/usr/include/c++/7/bits/stl_construct.h ****       template<typename _ForwardIterator>
 104:/usr/include/c++/7/bits/stl_construct.h ****         static void
 105:/usr/include/c++/7/bits/stl_construct.h ****         __destroy(_ForwardIterator __first, _ForwardIterator __last)
 106:/usr/include/c++/7/bits/stl_construct.h **** 	{
 107:/usr/include/c++/7/bits/stl_construct.h **** 	  for (; __first != __last; ++__first)
 108:/usr/include/c++/7/bits/stl_construct.h **** 	    std::_Destroy(std::__addressof(*__first));
 109:/usr/include/c++/7/bits/stl_construct.h **** 	}
 110:/usr/include/c++/7/bits/stl_construct.h ****     };
 111:/usr/include/c++/7/bits/stl_construct.h **** 
 112:/usr/include/c++/7/bits/stl_construct.h ****   template<>
 113:/usr/include/c++/7/bits/stl_construct.h ****     struct _Destroy_aux<true>
 114:/usr/include/c++/7/bits/stl_construct.h ****     {
 115:/usr/include/c++/7/bits/stl_construct.h ****       template<typename _ForwardIterator>
 116:/usr/include/c++/7/bits/stl_construct.h ****         static void
 117:/usr/include/c++/7/bits/stl_construct.h ****         __destroy(_ForwardIterator, _ForwardIterator) { }
 118:/usr/include/c++/7/bits/stl_construct.h ****     };
 119:/usr/include/c++/7/bits/stl_construct.h **** 
 120:/usr/include/c++/7/bits/stl_construct.h ****   /**
 121:/usr/include/c++/7/bits/stl_construct.h ****    * Destroy a range of objects.  If the value_type of the object has
 122:/usr/include/c++/7/bits/stl_construct.h ****    * a trivial destructor, the compiler should optimize all of this
 123:/usr/include/c++/7/bits/stl_construct.h ****    * away, otherwise the objects' destructors must be invoked.
 124:/usr/include/c++/7/bits/stl_construct.h ****    */
 125:/usr/include/c++/7/bits/stl_construct.h ****   template<typename _ForwardIterator>
 126:/usr/include/c++/7/bits/stl_construct.h ****     inline void
 127:/usr/include/c++/7/bits/stl_construct.h ****     _Destroy(_ForwardIterator __first, _ForwardIterator __last)
 128:/usr/include/c++/7/bits/stl_construct.h ****     {
 129:/usr/include/c++/7/bits/stl_construct.h ****       typedef typename iterator_traits<_ForwardIterator>::value_type
 130:/usr/include/c++/7/bits/stl_construct.h ****                        _Value_type;
 131:/usr/include/c++/7/bits/stl_construct.h **** #if __cplusplus >= 201103L
 132:/usr/include/c++/7/bits/stl_construct.h ****       // A deleted destructor is trivial, this ensures we reject such types:
 133:/usr/include/c++/7/bits/stl_construct.h ****       static_assert(is_destructible<_Value_type>::value,
 134:/usr/include/c++/7/bits/stl_construct.h **** 		    "value type is destructible");
 135:/usr/include/c++/7/bits/stl_construct.h **** #endif
 136:/usr/include/c++/7/bits/stl_construct.h ****       std::_Destroy_aux<__has_trivial_destructor(_Value_type)>::
 137:/usr/include/c++/7/bits/stl_construct.h **** 	__destroy(__first, __last);
 138:/usr/include/c++/7/bits/stl_construct.h ****     }
 139:/usr/include/c++/7/bits/stl_construct.h **** 
 140:/usr/include/c++/7/bits/stl_construct.h ****   template<bool>
 141:/usr/include/c++/7/bits/stl_construct.h ****     struct _Destroy_n_aux
 142:/usr/include/c++/7/bits/stl_construct.h ****     {
 143:/usr/include/c++/7/bits/stl_construct.h ****       template<typename _ForwardIterator, typename _Size>
 144:/usr/include/c++/7/bits/stl_construct.h ****         static _ForwardIterator
 145:/usr/include/c++/7/bits/stl_construct.h ****         __destroy_n(_ForwardIterator __first, _Size __count)
 146:/usr/include/c++/7/bits/stl_construct.h **** 	{
 147:/usr/include/c++/7/bits/stl_construct.h **** 	  for (; __count > 0; (void)++__first, --__count)
 148:/usr/include/c++/7/bits/stl_construct.h **** 	    std::_Destroy(std::__addressof(*__first));
 149:/usr/include/c++/7/bits/stl_construct.h **** 	  return __first;
 150:/usr/include/c++/7/bits/stl_construct.h **** 	}
 151:/usr/include/c++/7/bits/stl_construct.h ****     };
 152:/usr/include/c++/7/bits/stl_construct.h **** 
 153:/usr/include/c++/7/bits/stl_construct.h ****   template<>
 154:/usr/include/c++/7/bits/stl_construct.h ****     struct _Destroy_n_aux<true>
 155:/usr/include/c++/7/bits/stl_construct.h ****     {
 156:/usr/include/c++/7/bits/stl_construct.h ****       template<typename _ForwardIterator, typename _Size>
 157:/usr/include/c++/7/bits/stl_construct.h ****         static _ForwardIterator
 158:/usr/include/c++/7/bits/stl_construct.h ****         __destroy_n(_ForwardIterator __first, _Size __count)
 159:/usr/include/c++/7/bits/stl_construct.h **** 	{
 160:/usr/include/c++/7/bits/stl_construct.h **** 	  std::advance(__first, __count);
 161:/usr/include/c++/7/bits/stl_construct.h **** 	  return __first;
 162:/usr/include/c++/7/bits/stl_construct.h **** 	}
 163:/usr/include/c++/7/bits/stl_construct.h ****     };
 164:/usr/include/c++/7/bits/stl_construct.h **** 
 165:/usr/include/c++/7/bits/stl_construct.h ****   /**
 166:/usr/include/c++/7/bits/stl_construct.h ****    * Destroy a range of objects.  If the value_type of the object has
 167:/usr/include/c++/7/bits/stl_construct.h ****    * a trivial destructor, the compiler should optimize all of this
 168:/usr/include/c++/7/bits/stl_construct.h ****    * away, otherwise the objects' destructors must be invoked.
 169:/usr/include/c++/7/bits/stl_construct.h ****    */
 170:/usr/include/c++/7/bits/stl_construct.h ****   template<typename _ForwardIterator, typename _Size>
 171:/usr/include/c++/7/bits/stl_construct.h ****     inline _ForwardIterator
 172:/usr/include/c++/7/bits/stl_construct.h ****     _Destroy_n(_ForwardIterator __first, _Size __count)
 173:/usr/include/c++/7/bits/stl_construct.h ****     {
 174:/usr/include/c++/7/bits/stl_construct.h ****       typedef typename iterator_traits<_ForwardIterator>::value_type
 175:/usr/include/c++/7/bits/stl_construct.h ****                        _Value_type;
 176:/usr/include/c++/7/bits/stl_construct.h **** #if __cplusplus >= 201103L
 177:/usr/include/c++/7/bits/stl_construct.h ****       // A deleted destructor is trivial, this ensures we reject such types:
 178:/usr/include/c++/7/bits/stl_construct.h ****       static_assert(is_destructible<_Value_type>::value,
 179:/usr/include/c++/7/bits/stl_construct.h **** 		    "value type is destructible");
 180:/usr/include/c++/7/bits/stl_construct.h **** #endif
 181:/usr/include/c++/7/bits/stl_construct.h ****       return std::_Destroy_n_aux<__has_trivial_destructor(_Value_type)>::
 182:/usr/include/c++/7/bits/stl_construct.h **** 	__destroy_n(__first, __count);
 183:/usr/include/c++/7/bits/stl_construct.h ****     }
 184:/usr/include/c++/7/bits/stl_construct.h **** 
 185:/usr/include/c++/7/bits/stl_construct.h ****   /**
 186:/usr/include/c++/7/bits/stl_construct.h ****    * Destroy a range of objects using the supplied allocator.  For
 187:/usr/include/c++/7/bits/stl_construct.h ****    * nondefault allocators we do not optimize away invocation of 
 188:/usr/include/c++/7/bits/stl_construct.h ****    * destroy() even if _Tp has a trivial destructor.
 189:/usr/include/c++/7/bits/stl_construct.h ****    */
 190:/usr/include/c++/7/bits/stl_construct.h **** 
 191:/usr/include/c++/7/bits/stl_construct.h ****   template<typename _ForwardIterator, typename _Allocator>
 192:/usr/include/c++/7/bits/stl_construct.h ****     void
 193:/usr/include/c++/7/bits/stl_construct.h ****     _Destroy(_ForwardIterator __first, _ForwardIterator __last,
 194:/usr/include/c++/7/bits/stl_construct.h **** 	     _Allocator& __alloc)
 195:/usr/include/c++/7/bits/stl_construct.h ****     {
 196:/usr/include/c++/7/bits/stl_construct.h ****       typedef __gnu_cxx::__alloc_traits<_Allocator> __traits;
 197:/usr/include/c++/7/bits/stl_construct.h ****       for (; __first != __last; ++__first)
 198:/usr/include/c++/7/bits/stl_construct.h **** 	__traits::destroy(__alloc, std::__addressof(*__first));
 199:/usr/include/c++/7/bits/stl_construct.h ****     }
 200:/usr/include/c++/7/bits/stl_construct.h **** 
 201:/usr/include/c++/7/bits/stl_construct.h ****   template<typename _ForwardIterator, typename _Tp>
 202:/usr/include/c++/7/bits/stl_construct.h ****     inline void
 203:/usr/include/c++/7/bits/stl_construct.h ****     _Destroy(_ForwardIterator __first, _ForwardIterator __last,
 2181              		.loc 4 203 0
 2182              		.cfi_startproc
 2183 0000 55       		pushq	%rbp
 2184              		.cfi_def_cfa_offset 16
 2185              		.cfi_offset 6, -16
 2186 0001 4889E5   		movq	%rsp, %rbp
 2187              		.cfi_def_cfa_register 6
 2188 0004 4883EC20 		subq	$32, %rsp
 2189 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2190 000c 488975F0 		movq	%rsi, -16(%rbp)
 2191 0010 488955E8 		movq	%rdx, -24(%rbp)
 204:/usr/include/c++/7/bits/stl_construct.h **** 	     allocator<_Tp>&)
 205:/usr/include/c++/7/bits/stl_construct.h ****     {
 206:/usr/include/c++/7/bits/stl_construct.h ****       _Destroy(__first, __last);
 2192              		.loc 4 206 0
 2193 0014 488B55F0 		movq	-16(%rbp), %rdx
 2194 0018 488B45F8 		movq	-8(%rbp), %rax
 2195 001c 4889D6   		movq	%rdx, %rsi
 2196 001f 4889C7   		movq	%rax, %rdi
 2197 0022 E8000000 		call	_ZSt8_DestroyIPdEvT_S1_
 2197      00
 207:/usr/include/c++/7/bits/stl_construct.h ****     }
 2198              		.loc 4 207 0
 2199 0027 90       		nop
 2200 0028 C9       		leave
 2201              		.cfi_def_cfa 7, 8
 2202 0029 C3       		ret
 2203              		.cfi_endproc
 2204              	.LFE2248:
 2206              		.section	.rodata
 2207              	.LC28:
 2208 01ae 76656374 		.string	"vector::_M_default_append"
 2208      6F723A3A 
 2208      5F4D5F64 
 2208      65666175 
 2208      6C745F61 
 2209              		.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_
 2210              		.align 2
 2211              		.weak	_ZNSt6vectorIdSaIdEE17_M_default_appendEm
 2213              	_ZNSt6vectorIdSaIdEE17_M_default_appendEm:
 2214              	.LFB2254:
 2215              		.file 5 "/usr/include/c++/7/bits/vector.tcc"
   1:/usr/include/c++/7/bits/vector.tcc **** // Vector implementation (out of line) -*- C++ -*-
   2:/usr/include/c++/7/bits/vector.tcc **** 
   3:/usr/include/c++/7/bits/vector.tcc **** // Copyright (C) 2001-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/vector.tcc **** //
   5:/usr/include/c++/7/bits/vector.tcc **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/vector.tcc **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/vector.tcc **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/vector.tcc **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/vector.tcc **** // any later version.
  10:/usr/include/c++/7/bits/vector.tcc **** 
  11:/usr/include/c++/7/bits/vector.tcc **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/vector.tcc **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/vector.tcc **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/vector.tcc **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/vector.tcc **** 
  16:/usr/include/c++/7/bits/vector.tcc **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/vector.tcc **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/vector.tcc **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/vector.tcc **** 
  20:/usr/include/c++/7/bits/vector.tcc **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/vector.tcc **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/vector.tcc **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/vector.tcc **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/vector.tcc **** 
  25:/usr/include/c++/7/bits/vector.tcc **** /*
  26:/usr/include/c++/7/bits/vector.tcc ****  *
  27:/usr/include/c++/7/bits/vector.tcc ****  * Copyright (c) 1994
  28:/usr/include/c++/7/bits/vector.tcc ****  * Hewlett-Packard Company
  29:/usr/include/c++/7/bits/vector.tcc ****  *
  30:/usr/include/c++/7/bits/vector.tcc ****  * Permission to use, copy, modify, distribute and sell this software
  31:/usr/include/c++/7/bits/vector.tcc ****  * and its documentation for any purpose is hereby granted without fee,
  32:/usr/include/c++/7/bits/vector.tcc ****  * provided that the above copyright notice appear in all copies and
  33:/usr/include/c++/7/bits/vector.tcc ****  * that both that copyright notice and this permission notice appear
  34:/usr/include/c++/7/bits/vector.tcc ****  * in supporting documentation.  Hewlett-Packard Company makes no
  35:/usr/include/c++/7/bits/vector.tcc ****  * representations about the suitability of this software for any
  36:/usr/include/c++/7/bits/vector.tcc ****  * purpose.  It is provided "as is" without express or implied warranty.
  37:/usr/include/c++/7/bits/vector.tcc ****  *
  38:/usr/include/c++/7/bits/vector.tcc ****  *
  39:/usr/include/c++/7/bits/vector.tcc ****  * Copyright (c) 1996
  40:/usr/include/c++/7/bits/vector.tcc ****  * Silicon Graphics Computer Systems, Inc.
  41:/usr/include/c++/7/bits/vector.tcc ****  *
  42:/usr/include/c++/7/bits/vector.tcc ****  * Permission to use, copy, modify, distribute and sell this software
  43:/usr/include/c++/7/bits/vector.tcc ****  * and its documentation for any purpose is hereby granted without fee,
  44:/usr/include/c++/7/bits/vector.tcc ****  * provided that the above copyright notice appear in all copies and
  45:/usr/include/c++/7/bits/vector.tcc ****  * that both that copyright notice and this permission notice appear
  46:/usr/include/c++/7/bits/vector.tcc ****  * in supporting documentation.  Silicon Graphics makes no
  47:/usr/include/c++/7/bits/vector.tcc ****  * representations about the suitability of this  software for any
  48:/usr/include/c++/7/bits/vector.tcc ****  * purpose.  It is provided "as is" without express or implied warranty.
  49:/usr/include/c++/7/bits/vector.tcc ****  */
  50:/usr/include/c++/7/bits/vector.tcc **** 
  51:/usr/include/c++/7/bits/vector.tcc **** /** @file bits/vector.tcc
  52:/usr/include/c++/7/bits/vector.tcc ****  *  This is an internal header file, included by other library headers.
  53:/usr/include/c++/7/bits/vector.tcc ****  *  Do not attempt to use it directly. @headername{vector}
  54:/usr/include/c++/7/bits/vector.tcc ****  */
  55:/usr/include/c++/7/bits/vector.tcc **** 
  56:/usr/include/c++/7/bits/vector.tcc **** #ifndef _VECTOR_TCC
  57:/usr/include/c++/7/bits/vector.tcc **** #define _VECTOR_TCC 1
  58:/usr/include/c++/7/bits/vector.tcc **** 
  59:/usr/include/c++/7/bits/vector.tcc **** namespace std _GLIBCXX_VISIBILITY(default)
  60:/usr/include/c++/7/bits/vector.tcc **** {
  61:/usr/include/c++/7/bits/vector.tcc **** _GLIBCXX_BEGIN_NAMESPACE_CONTAINER
  62:/usr/include/c++/7/bits/vector.tcc **** 
  63:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
  64:/usr/include/c++/7/bits/vector.tcc ****     void
  65:/usr/include/c++/7/bits/vector.tcc ****     vector<_Tp, _Alloc>::
  66:/usr/include/c++/7/bits/vector.tcc ****     reserve(size_type __n)
  67:/usr/include/c++/7/bits/vector.tcc ****     {
  68:/usr/include/c++/7/bits/vector.tcc ****       if (__n > this->max_size())
  69:/usr/include/c++/7/bits/vector.tcc **** 	__throw_length_error(__N("vector::reserve"));
  70:/usr/include/c++/7/bits/vector.tcc ****       if (this->capacity() < __n)
  71:/usr/include/c++/7/bits/vector.tcc **** 	{
  72:/usr/include/c++/7/bits/vector.tcc **** 	  const size_type __old_size = size();
  73:/usr/include/c++/7/bits/vector.tcc **** 	  pointer __tmp = _M_allocate_and_copy(__n,
  74:/usr/include/c++/7/bits/vector.tcc **** 	    _GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(this->_M_impl._M_start),
  75:/usr/include/c++/7/bits/vector.tcc **** 	    _GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(this->_M_impl._M_finish));
  76:/usr/include/c++/7/bits/vector.tcc **** 	  std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
  77:/usr/include/c++/7/bits/vector.tcc **** 			_M_get_Tp_allocator());
  78:/usr/include/c++/7/bits/vector.tcc **** 	  _M_deallocate(this->_M_impl._M_start,
  79:/usr/include/c++/7/bits/vector.tcc **** 			this->_M_impl._M_end_of_storage
  80:/usr/include/c++/7/bits/vector.tcc **** 			- this->_M_impl._M_start);
  81:/usr/include/c++/7/bits/vector.tcc **** 	  this->_M_impl._M_start = __tmp;
  82:/usr/include/c++/7/bits/vector.tcc **** 	  this->_M_impl._M_finish = __tmp + __old_size;
  83:/usr/include/c++/7/bits/vector.tcc **** 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
  84:/usr/include/c++/7/bits/vector.tcc **** 	}
  85:/usr/include/c++/7/bits/vector.tcc ****     }
  86:/usr/include/c++/7/bits/vector.tcc **** 
  87:/usr/include/c++/7/bits/vector.tcc **** #if __cplusplus >= 201103L
  88:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
  89:/usr/include/c++/7/bits/vector.tcc ****     template<typename... _Args>
  90:/usr/include/c++/7/bits/vector.tcc **** #if __cplusplus > 201402L
  91:/usr/include/c++/7/bits/vector.tcc ****       typename vector<_Tp, _Alloc>::reference
  92:/usr/include/c++/7/bits/vector.tcc **** #else
  93:/usr/include/c++/7/bits/vector.tcc ****       void
  94:/usr/include/c++/7/bits/vector.tcc **** #endif
  95:/usr/include/c++/7/bits/vector.tcc ****       vector<_Tp, _Alloc>::
  96:/usr/include/c++/7/bits/vector.tcc ****       emplace_back(_Args&&... __args)
  97:/usr/include/c++/7/bits/vector.tcc ****       {
  98:/usr/include/c++/7/bits/vector.tcc **** 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
  99:/usr/include/c++/7/bits/vector.tcc **** 	  {
 100:/usr/include/c++/7/bits/vector.tcc **** 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
 101:/usr/include/c++/7/bits/vector.tcc **** 				     std::forward<_Args>(__args)...);
 102:/usr/include/c++/7/bits/vector.tcc **** 	    ++this->_M_impl._M_finish;
 103:/usr/include/c++/7/bits/vector.tcc **** 	  }
 104:/usr/include/c++/7/bits/vector.tcc **** 	else
 105:/usr/include/c++/7/bits/vector.tcc **** 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
 106:/usr/include/c++/7/bits/vector.tcc **** #if __cplusplus > 201402L
 107:/usr/include/c++/7/bits/vector.tcc **** 	return back();
 108:/usr/include/c++/7/bits/vector.tcc **** #endif
 109:/usr/include/c++/7/bits/vector.tcc ****       }
 110:/usr/include/c++/7/bits/vector.tcc **** #endif
 111:/usr/include/c++/7/bits/vector.tcc **** 
 112:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 113:/usr/include/c++/7/bits/vector.tcc ****     typename vector<_Tp, _Alloc>::iterator
 114:/usr/include/c++/7/bits/vector.tcc ****     vector<_Tp, _Alloc>::
 115:/usr/include/c++/7/bits/vector.tcc **** #if __cplusplus >= 201103L
 116:/usr/include/c++/7/bits/vector.tcc ****     insert(const_iterator __position, const value_type& __x)
 117:/usr/include/c++/7/bits/vector.tcc **** #else
 118:/usr/include/c++/7/bits/vector.tcc ****     insert(iterator __position, const value_type& __x)
 119:/usr/include/c++/7/bits/vector.tcc **** #endif
 120:/usr/include/c++/7/bits/vector.tcc ****     {
 121:/usr/include/c++/7/bits/vector.tcc ****       const size_type __n = __position - begin();
 122:/usr/include/c++/7/bits/vector.tcc ****       if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
 123:/usr/include/c++/7/bits/vector.tcc **** 	if (__position == end())
 124:/usr/include/c++/7/bits/vector.tcc **** 	  {
 125:/usr/include/c++/7/bits/vector.tcc **** 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
 126:/usr/include/c++/7/bits/vector.tcc **** 				     __x);
 127:/usr/include/c++/7/bits/vector.tcc **** 	    ++this->_M_impl._M_finish;
 128:/usr/include/c++/7/bits/vector.tcc **** 	  }
 129:/usr/include/c++/7/bits/vector.tcc **** 	else
 130:/usr/include/c++/7/bits/vector.tcc **** 	  {
 131:/usr/include/c++/7/bits/vector.tcc **** #if __cplusplus >= 201103L
 132:/usr/include/c++/7/bits/vector.tcc **** 	    const auto __pos = begin() + (__position - cbegin());
 133:/usr/include/c++/7/bits/vector.tcc **** 	    // __x could be an existing element of this vector, so make a
 134:/usr/include/c++/7/bits/vector.tcc **** 	    // copy of it before _M_insert_aux moves elements around.
 135:/usr/include/c++/7/bits/vector.tcc **** 	    _Temporary_value __x_copy(this, __x);
 136:/usr/include/c++/7/bits/vector.tcc **** 	    _M_insert_aux(__pos, std::move(__x_copy._M_val()));
 137:/usr/include/c++/7/bits/vector.tcc **** #else
 138:/usr/include/c++/7/bits/vector.tcc **** 	    _M_insert_aux(__position, __x);
 139:/usr/include/c++/7/bits/vector.tcc **** #endif
 140:/usr/include/c++/7/bits/vector.tcc **** 	  }
 141:/usr/include/c++/7/bits/vector.tcc ****       else
 142:/usr/include/c++/7/bits/vector.tcc **** #if __cplusplus >= 201103L
 143:/usr/include/c++/7/bits/vector.tcc **** 	_M_realloc_insert(begin() + (__position - cbegin()), __x);
 144:/usr/include/c++/7/bits/vector.tcc **** #else
 145:/usr/include/c++/7/bits/vector.tcc **** 	_M_realloc_insert(__position, __x);
 146:/usr/include/c++/7/bits/vector.tcc **** #endif
 147:/usr/include/c++/7/bits/vector.tcc **** 
 148:/usr/include/c++/7/bits/vector.tcc ****       return iterator(this->_M_impl._M_start + __n);
 149:/usr/include/c++/7/bits/vector.tcc ****     }
 150:/usr/include/c++/7/bits/vector.tcc **** 
 151:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 152:/usr/include/c++/7/bits/vector.tcc ****     typename vector<_Tp, _Alloc>::iterator
 153:/usr/include/c++/7/bits/vector.tcc ****     vector<_Tp, _Alloc>::
 154:/usr/include/c++/7/bits/vector.tcc ****     _M_erase(iterator __position)
 155:/usr/include/c++/7/bits/vector.tcc ****     {
 156:/usr/include/c++/7/bits/vector.tcc ****       if (__position + 1 != end())
 157:/usr/include/c++/7/bits/vector.tcc **** 	_GLIBCXX_MOVE3(__position + 1, end(), __position);
 158:/usr/include/c++/7/bits/vector.tcc ****       --this->_M_impl._M_finish;
 159:/usr/include/c++/7/bits/vector.tcc ****       _Alloc_traits::destroy(this->_M_impl, this->_M_impl._M_finish);
 160:/usr/include/c++/7/bits/vector.tcc ****       return __position;
 161:/usr/include/c++/7/bits/vector.tcc ****     }
 162:/usr/include/c++/7/bits/vector.tcc **** 
 163:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 164:/usr/include/c++/7/bits/vector.tcc ****     typename vector<_Tp, _Alloc>::iterator
 165:/usr/include/c++/7/bits/vector.tcc ****     vector<_Tp, _Alloc>::
 166:/usr/include/c++/7/bits/vector.tcc ****     _M_erase(iterator __first, iterator __last)
 167:/usr/include/c++/7/bits/vector.tcc ****     {
 168:/usr/include/c++/7/bits/vector.tcc ****       if (__first != __last)
 169:/usr/include/c++/7/bits/vector.tcc **** 	{
 170:/usr/include/c++/7/bits/vector.tcc **** 	  if (__last != end())
 171:/usr/include/c++/7/bits/vector.tcc **** 	    _GLIBCXX_MOVE3(__last, end(), __first);
 172:/usr/include/c++/7/bits/vector.tcc **** 	  _M_erase_at_end(__first.base() + (end() - __last));
 173:/usr/include/c++/7/bits/vector.tcc **** 	}
 174:/usr/include/c++/7/bits/vector.tcc ****       return __first;
 175:/usr/include/c++/7/bits/vector.tcc ****     }
 176:/usr/include/c++/7/bits/vector.tcc **** 
 177:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 178:/usr/include/c++/7/bits/vector.tcc ****     vector<_Tp, _Alloc>&
 179:/usr/include/c++/7/bits/vector.tcc ****     vector<_Tp, _Alloc>::
 180:/usr/include/c++/7/bits/vector.tcc ****     operator=(const vector<_Tp, _Alloc>& __x)
 181:/usr/include/c++/7/bits/vector.tcc ****     {
 182:/usr/include/c++/7/bits/vector.tcc ****       if (&__x != this)
 183:/usr/include/c++/7/bits/vector.tcc **** 	{
 184:/usr/include/c++/7/bits/vector.tcc **** #if __cplusplus >= 201103L
 185:/usr/include/c++/7/bits/vector.tcc **** 	  if (_Alloc_traits::_S_propagate_on_copy_assign())
 186:/usr/include/c++/7/bits/vector.tcc **** 	    {
 187:/usr/include/c++/7/bits/vector.tcc **** 	      if (!_Alloc_traits::_S_always_equal()
 188:/usr/include/c++/7/bits/vector.tcc **** 	          && _M_get_Tp_allocator() != __x._M_get_Tp_allocator())
 189:/usr/include/c++/7/bits/vector.tcc **** 	        {
 190:/usr/include/c++/7/bits/vector.tcc **** 		  // replacement allocator cannot free existing storage
 191:/usr/include/c++/7/bits/vector.tcc **** 		  this->clear();
 192:/usr/include/c++/7/bits/vector.tcc **** 		  _M_deallocate(this->_M_impl._M_start,
 193:/usr/include/c++/7/bits/vector.tcc **** 				this->_M_impl._M_end_of_storage
 194:/usr/include/c++/7/bits/vector.tcc **** 				- this->_M_impl._M_start);
 195:/usr/include/c++/7/bits/vector.tcc **** 		  this->_M_impl._M_start = nullptr;
 196:/usr/include/c++/7/bits/vector.tcc **** 		  this->_M_impl._M_finish = nullptr;
 197:/usr/include/c++/7/bits/vector.tcc **** 		  this->_M_impl._M_end_of_storage = nullptr;
 198:/usr/include/c++/7/bits/vector.tcc **** 		}
 199:/usr/include/c++/7/bits/vector.tcc **** 	      std::__alloc_on_copy(_M_get_Tp_allocator(),
 200:/usr/include/c++/7/bits/vector.tcc **** 				   __x._M_get_Tp_allocator());
 201:/usr/include/c++/7/bits/vector.tcc **** 	    }
 202:/usr/include/c++/7/bits/vector.tcc **** #endif
 203:/usr/include/c++/7/bits/vector.tcc **** 	  const size_type __xlen = __x.size();
 204:/usr/include/c++/7/bits/vector.tcc **** 	  if (__xlen > capacity())
 205:/usr/include/c++/7/bits/vector.tcc **** 	    {
 206:/usr/include/c++/7/bits/vector.tcc **** 	      pointer __tmp = _M_allocate_and_copy(__xlen, __x.begin(),
 207:/usr/include/c++/7/bits/vector.tcc **** 						   __x.end());
 208:/usr/include/c++/7/bits/vector.tcc **** 	      std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 209:/usr/include/c++/7/bits/vector.tcc **** 			    _M_get_Tp_allocator());
 210:/usr/include/c++/7/bits/vector.tcc **** 	      _M_deallocate(this->_M_impl._M_start,
 211:/usr/include/c++/7/bits/vector.tcc **** 			    this->_M_impl._M_end_of_storage
 212:/usr/include/c++/7/bits/vector.tcc **** 			    - this->_M_impl._M_start);
 213:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_start = __tmp;
 214:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __xlen;
 215:/usr/include/c++/7/bits/vector.tcc **** 	    }
 216:/usr/include/c++/7/bits/vector.tcc **** 	  else if (size() >= __xlen)
 217:/usr/include/c++/7/bits/vector.tcc **** 	    {
 218:/usr/include/c++/7/bits/vector.tcc **** 	      std::_Destroy(std::copy(__x.begin(), __x.end(), begin()),
 219:/usr/include/c++/7/bits/vector.tcc **** 			    end(), _M_get_Tp_allocator());
 220:/usr/include/c++/7/bits/vector.tcc **** 	    }
 221:/usr/include/c++/7/bits/vector.tcc **** 	  else
 222:/usr/include/c++/7/bits/vector.tcc **** 	    {
 223:/usr/include/c++/7/bits/vector.tcc **** 	      std::copy(__x._M_impl._M_start, __x._M_impl._M_start + size(),
 224:/usr/include/c++/7/bits/vector.tcc **** 			this->_M_impl._M_start);
 225:/usr/include/c++/7/bits/vector.tcc **** 	      std::__uninitialized_copy_a(__x._M_impl._M_start + size(),
 226:/usr/include/c++/7/bits/vector.tcc **** 					  __x._M_impl._M_finish,
 227:/usr/include/c++/7/bits/vector.tcc **** 					  this->_M_impl._M_finish,
 228:/usr/include/c++/7/bits/vector.tcc **** 					  _M_get_Tp_allocator());
 229:/usr/include/c++/7/bits/vector.tcc **** 	    }
 230:/usr/include/c++/7/bits/vector.tcc **** 	  this->_M_impl._M_finish = this->_M_impl._M_start + __xlen;
 231:/usr/include/c++/7/bits/vector.tcc **** 	}
 232:/usr/include/c++/7/bits/vector.tcc ****       return *this;
 233:/usr/include/c++/7/bits/vector.tcc ****     }
 234:/usr/include/c++/7/bits/vector.tcc **** 
 235:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 236:/usr/include/c++/7/bits/vector.tcc ****     void
 237:/usr/include/c++/7/bits/vector.tcc ****     vector<_Tp, _Alloc>::
 238:/usr/include/c++/7/bits/vector.tcc ****     _M_fill_assign(size_t __n, const value_type& __val)
 239:/usr/include/c++/7/bits/vector.tcc ****     {
 240:/usr/include/c++/7/bits/vector.tcc ****       if (__n > capacity())
 241:/usr/include/c++/7/bits/vector.tcc **** 	{
 242:/usr/include/c++/7/bits/vector.tcc **** 	  vector __tmp(__n, __val, _M_get_Tp_allocator());
 243:/usr/include/c++/7/bits/vector.tcc **** 	  __tmp._M_impl._M_swap_data(this->_M_impl);
 244:/usr/include/c++/7/bits/vector.tcc **** 	}
 245:/usr/include/c++/7/bits/vector.tcc ****       else if (__n > size())
 246:/usr/include/c++/7/bits/vector.tcc **** 	{
 247:/usr/include/c++/7/bits/vector.tcc **** 	  std::fill(begin(), end(), __val);
 248:/usr/include/c++/7/bits/vector.tcc **** 	  this->_M_impl._M_finish =
 249:/usr/include/c++/7/bits/vector.tcc **** 	    std::__uninitialized_fill_n_a(this->_M_impl._M_finish,
 250:/usr/include/c++/7/bits/vector.tcc **** 					  __n - size(), __val,
 251:/usr/include/c++/7/bits/vector.tcc **** 					  _M_get_Tp_allocator());
 252:/usr/include/c++/7/bits/vector.tcc **** 	}
 253:/usr/include/c++/7/bits/vector.tcc ****       else
 254:/usr/include/c++/7/bits/vector.tcc ****         _M_erase_at_end(std::fill_n(this->_M_impl._M_start, __n, __val));
 255:/usr/include/c++/7/bits/vector.tcc ****     }
 256:/usr/include/c++/7/bits/vector.tcc **** 
 257:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 258:/usr/include/c++/7/bits/vector.tcc ****     template<typename _InputIterator>
 259:/usr/include/c++/7/bits/vector.tcc ****       void
 260:/usr/include/c++/7/bits/vector.tcc ****       vector<_Tp, _Alloc>::
 261:/usr/include/c++/7/bits/vector.tcc ****       _M_assign_aux(_InputIterator __first, _InputIterator __last,
 262:/usr/include/c++/7/bits/vector.tcc **** 		    std::input_iterator_tag)
 263:/usr/include/c++/7/bits/vector.tcc ****       {
 264:/usr/include/c++/7/bits/vector.tcc **** 	pointer __cur(this->_M_impl._M_start);
 265:/usr/include/c++/7/bits/vector.tcc **** 	for (; __first != __last && __cur != this->_M_impl._M_finish;
 266:/usr/include/c++/7/bits/vector.tcc **** 	     ++__cur, ++__first)
 267:/usr/include/c++/7/bits/vector.tcc **** 	  *__cur = *__first;
 268:/usr/include/c++/7/bits/vector.tcc **** 	if (__first == __last)
 269:/usr/include/c++/7/bits/vector.tcc **** 	  _M_erase_at_end(__cur);
 270:/usr/include/c++/7/bits/vector.tcc **** 	else
 271:/usr/include/c++/7/bits/vector.tcc **** 	  _M_range_insert(end(), __first, __last,
 272:/usr/include/c++/7/bits/vector.tcc **** 			  std::__iterator_category(__first));
 273:/usr/include/c++/7/bits/vector.tcc ****       }
 274:/usr/include/c++/7/bits/vector.tcc **** 
 275:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 276:/usr/include/c++/7/bits/vector.tcc ****     template<typename _ForwardIterator>
 277:/usr/include/c++/7/bits/vector.tcc ****       void
 278:/usr/include/c++/7/bits/vector.tcc ****       vector<_Tp, _Alloc>::
 279:/usr/include/c++/7/bits/vector.tcc ****       _M_assign_aux(_ForwardIterator __first, _ForwardIterator __last,
 280:/usr/include/c++/7/bits/vector.tcc **** 		    std::forward_iterator_tag)
 281:/usr/include/c++/7/bits/vector.tcc ****       {
 282:/usr/include/c++/7/bits/vector.tcc **** 	const size_type __len = std::distance(__first, __last);
 283:/usr/include/c++/7/bits/vector.tcc **** 
 284:/usr/include/c++/7/bits/vector.tcc **** 	if (__len > capacity())
 285:/usr/include/c++/7/bits/vector.tcc **** 	  {
 286:/usr/include/c++/7/bits/vector.tcc **** 	    pointer __tmp(_M_allocate_and_copy(__len, __first, __last));
 287:/usr/include/c++/7/bits/vector.tcc **** 	    std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 288:/usr/include/c++/7/bits/vector.tcc **** 			  _M_get_Tp_allocator());
 289:/usr/include/c++/7/bits/vector.tcc **** 	    _M_deallocate(this->_M_impl._M_start,
 290:/usr/include/c++/7/bits/vector.tcc **** 			  this->_M_impl._M_end_of_storage
 291:/usr/include/c++/7/bits/vector.tcc **** 			  - this->_M_impl._M_start);
 292:/usr/include/c++/7/bits/vector.tcc **** 	    this->_M_impl._M_start = __tmp;
 293:/usr/include/c++/7/bits/vector.tcc **** 	    this->_M_impl._M_finish = this->_M_impl._M_start + __len;
 294:/usr/include/c++/7/bits/vector.tcc **** 	    this->_M_impl._M_end_of_storage = this->_M_impl._M_finish;
 295:/usr/include/c++/7/bits/vector.tcc **** 	  }
 296:/usr/include/c++/7/bits/vector.tcc **** 	else if (size() >= __len)
 297:/usr/include/c++/7/bits/vector.tcc **** 	  _M_erase_at_end(std::copy(__first, __last, this->_M_impl._M_start));
 298:/usr/include/c++/7/bits/vector.tcc **** 	else
 299:/usr/include/c++/7/bits/vector.tcc **** 	  {
 300:/usr/include/c++/7/bits/vector.tcc **** 	    _ForwardIterator __mid = __first;
 301:/usr/include/c++/7/bits/vector.tcc **** 	    std::advance(__mid, size());
 302:/usr/include/c++/7/bits/vector.tcc **** 	    std::copy(__first, __mid, this->_M_impl._M_start);
 303:/usr/include/c++/7/bits/vector.tcc **** 	    this->_M_impl._M_finish =
 304:/usr/include/c++/7/bits/vector.tcc **** 	      std::__uninitialized_copy_a(__mid, __last,
 305:/usr/include/c++/7/bits/vector.tcc **** 					  this->_M_impl._M_finish,
 306:/usr/include/c++/7/bits/vector.tcc **** 					  _M_get_Tp_allocator());
 307:/usr/include/c++/7/bits/vector.tcc **** 	  }
 308:/usr/include/c++/7/bits/vector.tcc ****       }
 309:/usr/include/c++/7/bits/vector.tcc **** 
 310:/usr/include/c++/7/bits/vector.tcc **** #if __cplusplus >= 201103L
 311:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 312:/usr/include/c++/7/bits/vector.tcc ****     auto
 313:/usr/include/c++/7/bits/vector.tcc ****     vector<_Tp, _Alloc>::
 314:/usr/include/c++/7/bits/vector.tcc ****     _M_insert_rval(const_iterator __position, value_type&& __v) -> iterator
 315:/usr/include/c++/7/bits/vector.tcc ****     {
 316:/usr/include/c++/7/bits/vector.tcc ****       const auto __n = __position - cbegin();
 317:/usr/include/c++/7/bits/vector.tcc ****       if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
 318:/usr/include/c++/7/bits/vector.tcc **** 	if (__position == cend())
 319:/usr/include/c++/7/bits/vector.tcc **** 	  {
 320:/usr/include/c++/7/bits/vector.tcc **** 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
 321:/usr/include/c++/7/bits/vector.tcc **** 				     std::move(__v));
 322:/usr/include/c++/7/bits/vector.tcc **** 	    ++this->_M_impl._M_finish;
 323:/usr/include/c++/7/bits/vector.tcc **** 	  }
 324:/usr/include/c++/7/bits/vector.tcc **** 	else
 325:/usr/include/c++/7/bits/vector.tcc **** 	  _M_insert_aux(begin() + __n, std::move(__v));
 326:/usr/include/c++/7/bits/vector.tcc ****       else
 327:/usr/include/c++/7/bits/vector.tcc **** 	_M_realloc_insert(begin() + __n, std::move(__v));
 328:/usr/include/c++/7/bits/vector.tcc **** 
 329:/usr/include/c++/7/bits/vector.tcc ****       return iterator(this->_M_impl._M_start + __n);
 330:/usr/include/c++/7/bits/vector.tcc ****     }
 331:/usr/include/c++/7/bits/vector.tcc **** 
 332:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 333:/usr/include/c++/7/bits/vector.tcc ****     template<typename... _Args>
 334:/usr/include/c++/7/bits/vector.tcc ****       auto
 335:/usr/include/c++/7/bits/vector.tcc ****       vector<_Tp, _Alloc>::
 336:/usr/include/c++/7/bits/vector.tcc ****       _M_emplace_aux(const_iterator __position, _Args&&... __args)
 337:/usr/include/c++/7/bits/vector.tcc ****       -> iterator
 338:/usr/include/c++/7/bits/vector.tcc ****       {
 339:/usr/include/c++/7/bits/vector.tcc **** 	const auto __n = __position - cbegin();
 340:/usr/include/c++/7/bits/vector.tcc **** 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
 341:/usr/include/c++/7/bits/vector.tcc **** 	  if (__position == cend())
 342:/usr/include/c++/7/bits/vector.tcc **** 	    {
 343:/usr/include/c++/7/bits/vector.tcc **** 	      _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
 344:/usr/include/c++/7/bits/vector.tcc **** 				       std::forward<_Args>(__args)...);
 345:/usr/include/c++/7/bits/vector.tcc **** 	      ++this->_M_impl._M_finish;
 346:/usr/include/c++/7/bits/vector.tcc **** 	    }
 347:/usr/include/c++/7/bits/vector.tcc **** 	  else
 348:/usr/include/c++/7/bits/vector.tcc **** 	    {
 349:/usr/include/c++/7/bits/vector.tcc **** 	      // We need to construct a temporary because something in __args...
 350:/usr/include/c++/7/bits/vector.tcc **** 	      // could alias one of the elements of the container and so we
 351:/usr/include/c++/7/bits/vector.tcc **** 	      // need to use it before _M_insert_aux moves elements around.
 352:/usr/include/c++/7/bits/vector.tcc **** 	      _Temporary_value __tmp(this, std::forward<_Args>(__args)...);
 353:/usr/include/c++/7/bits/vector.tcc **** 	      _M_insert_aux(begin() + __n, std::move(__tmp._M_val()));
 354:/usr/include/c++/7/bits/vector.tcc **** 	    }
 355:/usr/include/c++/7/bits/vector.tcc **** 	else
 356:/usr/include/c++/7/bits/vector.tcc **** 	  _M_realloc_insert(begin() + __n, std::forward<_Args>(__args)...);
 357:/usr/include/c++/7/bits/vector.tcc **** 
 358:/usr/include/c++/7/bits/vector.tcc **** 	return iterator(this->_M_impl._M_start + __n);
 359:/usr/include/c++/7/bits/vector.tcc ****       }
 360:/usr/include/c++/7/bits/vector.tcc **** 
 361:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 362:/usr/include/c++/7/bits/vector.tcc ****     template<typename _Arg>
 363:/usr/include/c++/7/bits/vector.tcc ****       void
 364:/usr/include/c++/7/bits/vector.tcc ****       vector<_Tp, _Alloc>::
 365:/usr/include/c++/7/bits/vector.tcc ****       _M_insert_aux(iterator __position, _Arg&& __arg)
 366:/usr/include/c++/7/bits/vector.tcc **** #else
 367:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 368:/usr/include/c++/7/bits/vector.tcc ****     void
 369:/usr/include/c++/7/bits/vector.tcc ****     vector<_Tp, _Alloc>::
 370:/usr/include/c++/7/bits/vector.tcc ****     _M_insert_aux(iterator __position, const _Tp& __x)
 371:/usr/include/c++/7/bits/vector.tcc **** #endif
 372:/usr/include/c++/7/bits/vector.tcc ****     {
 373:/usr/include/c++/7/bits/vector.tcc ****       _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
 374:/usr/include/c++/7/bits/vector.tcc **** 			       _GLIBCXX_MOVE(*(this->_M_impl._M_finish
 375:/usr/include/c++/7/bits/vector.tcc **** 					       - 1)));
 376:/usr/include/c++/7/bits/vector.tcc ****       ++this->_M_impl._M_finish;
 377:/usr/include/c++/7/bits/vector.tcc **** #if __cplusplus < 201103L
 378:/usr/include/c++/7/bits/vector.tcc ****       _Tp __x_copy = __x;
 379:/usr/include/c++/7/bits/vector.tcc **** #endif
 380:/usr/include/c++/7/bits/vector.tcc ****       _GLIBCXX_MOVE_BACKWARD3(__position.base(),
 381:/usr/include/c++/7/bits/vector.tcc **** 			      this->_M_impl._M_finish - 2,
 382:/usr/include/c++/7/bits/vector.tcc **** 			      this->_M_impl._M_finish - 1);
 383:/usr/include/c++/7/bits/vector.tcc **** #if __cplusplus < 201103L
 384:/usr/include/c++/7/bits/vector.tcc ****       *__position = __x_copy;
 385:/usr/include/c++/7/bits/vector.tcc **** #else
 386:/usr/include/c++/7/bits/vector.tcc ****       *__position = std::forward<_Arg>(__arg);
 387:/usr/include/c++/7/bits/vector.tcc **** #endif
 388:/usr/include/c++/7/bits/vector.tcc ****     }
 389:/usr/include/c++/7/bits/vector.tcc **** 
 390:/usr/include/c++/7/bits/vector.tcc **** #if __cplusplus >= 201103L
 391:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 392:/usr/include/c++/7/bits/vector.tcc ****     template<typename... _Args>
 393:/usr/include/c++/7/bits/vector.tcc ****       void
 394:/usr/include/c++/7/bits/vector.tcc ****       vector<_Tp, _Alloc>::
 395:/usr/include/c++/7/bits/vector.tcc ****       _M_realloc_insert(iterator __position, _Args&&... __args)
 396:/usr/include/c++/7/bits/vector.tcc **** #else
 397:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 398:/usr/include/c++/7/bits/vector.tcc ****     void
 399:/usr/include/c++/7/bits/vector.tcc ****     vector<_Tp, _Alloc>::
 400:/usr/include/c++/7/bits/vector.tcc ****     _M_realloc_insert(iterator __position, const _Tp& __x)
 401:/usr/include/c++/7/bits/vector.tcc **** #endif
 402:/usr/include/c++/7/bits/vector.tcc ****     {
 403:/usr/include/c++/7/bits/vector.tcc ****       const size_type __len =
 404:/usr/include/c++/7/bits/vector.tcc **** 	_M_check_len(size_type(1), "vector::_M_realloc_insert");
 405:/usr/include/c++/7/bits/vector.tcc ****       const size_type __elems_before = __position - begin();
 406:/usr/include/c++/7/bits/vector.tcc ****       pointer __new_start(this->_M_allocate(__len));
 407:/usr/include/c++/7/bits/vector.tcc ****       pointer __new_finish(__new_start);
 408:/usr/include/c++/7/bits/vector.tcc ****       __try
 409:/usr/include/c++/7/bits/vector.tcc **** 	{
 410:/usr/include/c++/7/bits/vector.tcc **** 	  // The order of the three operations is dictated by the C++11
 411:/usr/include/c++/7/bits/vector.tcc **** 	  // case, where the moves could alter a new element belonging
 412:/usr/include/c++/7/bits/vector.tcc **** 	  // to the existing vector.  This is an issue only for callers
 413:/usr/include/c++/7/bits/vector.tcc **** 	  // taking the element by lvalue ref (see last bullet of C++11
 414:/usr/include/c++/7/bits/vector.tcc **** 	  // [res.on.arguments]).
 415:/usr/include/c++/7/bits/vector.tcc **** 	  _Alloc_traits::construct(this->_M_impl,
 416:/usr/include/c++/7/bits/vector.tcc **** 				   __new_start + __elems_before,
 417:/usr/include/c++/7/bits/vector.tcc **** #if __cplusplus >= 201103L
 418:/usr/include/c++/7/bits/vector.tcc **** 				   std::forward<_Args>(__args)...);
 419:/usr/include/c++/7/bits/vector.tcc **** #else
 420:/usr/include/c++/7/bits/vector.tcc **** 				   __x);
 421:/usr/include/c++/7/bits/vector.tcc **** #endif
 422:/usr/include/c++/7/bits/vector.tcc **** 	  __new_finish = pointer();
 423:/usr/include/c++/7/bits/vector.tcc **** 
 424:/usr/include/c++/7/bits/vector.tcc **** 	  __new_finish
 425:/usr/include/c++/7/bits/vector.tcc **** 	    = std::__uninitialized_move_if_noexcept_a
 426:/usr/include/c++/7/bits/vector.tcc **** 	    (this->_M_impl._M_start, __position.base(),
 427:/usr/include/c++/7/bits/vector.tcc **** 	     __new_start, _M_get_Tp_allocator());
 428:/usr/include/c++/7/bits/vector.tcc **** 
 429:/usr/include/c++/7/bits/vector.tcc **** 	  ++__new_finish;
 430:/usr/include/c++/7/bits/vector.tcc **** 
 431:/usr/include/c++/7/bits/vector.tcc **** 	  __new_finish
 432:/usr/include/c++/7/bits/vector.tcc **** 	    = std::__uninitialized_move_if_noexcept_a
 433:/usr/include/c++/7/bits/vector.tcc **** 	    (__position.base(), this->_M_impl._M_finish,
 434:/usr/include/c++/7/bits/vector.tcc **** 	     __new_finish, _M_get_Tp_allocator());
 435:/usr/include/c++/7/bits/vector.tcc **** 	}
 436:/usr/include/c++/7/bits/vector.tcc ****       __catch(...)
 437:/usr/include/c++/7/bits/vector.tcc **** 	{
 438:/usr/include/c++/7/bits/vector.tcc **** 	  if (!__new_finish)
 439:/usr/include/c++/7/bits/vector.tcc **** 	    _Alloc_traits::destroy(this->_M_impl,
 440:/usr/include/c++/7/bits/vector.tcc **** 				   __new_start + __elems_before);
 441:/usr/include/c++/7/bits/vector.tcc **** 	  else
 442:/usr/include/c++/7/bits/vector.tcc **** 	    std::_Destroy(__new_start, __new_finish, _M_get_Tp_allocator());
 443:/usr/include/c++/7/bits/vector.tcc **** 	  _M_deallocate(__new_start, __len);
 444:/usr/include/c++/7/bits/vector.tcc **** 	  __throw_exception_again;
 445:/usr/include/c++/7/bits/vector.tcc **** 	}
 446:/usr/include/c++/7/bits/vector.tcc ****       std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 447:/usr/include/c++/7/bits/vector.tcc **** 		    _M_get_Tp_allocator());
 448:/usr/include/c++/7/bits/vector.tcc ****       _M_deallocate(this->_M_impl._M_start,
 449:/usr/include/c++/7/bits/vector.tcc **** 		    this->_M_impl._M_end_of_storage
 450:/usr/include/c++/7/bits/vector.tcc **** 		    - this->_M_impl._M_start);
 451:/usr/include/c++/7/bits/vector.tcc ****       this->_M_impl._M_start = __new_start;
 452:/usr/include/c++/7/bits/vector.tcc ****       this->_M_impl._M_finish = __new_finish;
 453:/usr/include/c++/7/bits/vector.tcc ****       this->_M_impl._M_end_of_storage = __new_start + __len;
 454:/usr/include/c++/7/bits/vector.tcc ****     }
 455:/usr/include/c++/7/bits/vector.tcc **** 
 456:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 457:/usr/include/c++/7/bits/vector.tcc ****     void
 458:/usr/include/c++/7/bits/vector.tcc ****     vector<_Tp, _Alloc>::
 459:/usr/include/c++/7/bits/vector.tcc ****     _M_fill_insert(iterator __position, size_type __n, const value_type& __x)
 460:/usr/include/c++/7/bits/vector.tcc ****     {
 461:/usr/include/c++/7/bits/vector.tcc ****       if (__n != 0)
 462:/usr/include/c++/7/bits/vector.tcc **** 	{
 463:/usr/include/c++/7/bits/vector.tcc **** 	  if (size_type(this->_M_impl._M_end_of_storage
 464:/usr/include/c++/7/bits/vector.tcc **** 			- this->_M_impl._M_finish) >= __n)
 465:/usr/include/c++/7/bits/vector.tcc **** 	    {
 466:/usr/include/c++/7/bits/vector.tcc **** #if __cplusplus < 201103L
 467:/usr/include/c++/7/bits/vector.tcc **** 	      value_type __x_copy = __x;
 468:/usr/include/c++/7/bits/vector.tcc **** #else
 469:/usr/include/c++/7/bits/vector.tcc **** 	      _Temporary_value __tmp(this, __x);
 470:/usr/include/c++/7/bits/vector.tcc **** 	      value_type& __x_copy = __tmp._M_val();
 471:/usr/include/c++/7/bits/vector.tcc **** #endif
 472:/usr/include/c++/7/bits/vector.tcc **** 	      const size_type __elems_after = end() - __position;
 473:/usr/include/c++/7/bits/vector.tcc **** 	      pointer __old_finish(this->_M_impl._M_finish);
 474:/usr/include/c++/7/bits/vector.tcc **** 	      if (__elems_after > __n)
 475:/usr/include/c++/7/bits/vector.tcc **** 		{
 476:/usr/include/c++/7/bits/vector.tcc **** 		  std::__uninitialized_move_a(this->_M_impl._M_finish - __n,
 477:/usr/include/c++/7/bits/vector.tcc **** 					      this->_M_impl._M_finish,
 478:/usr/include/c++/7/bits/vector.tcc **** 					      this->_M_impl._M_finish,
 479:/usr/include/c++/7/bits/vector.tcc **** 					      _M_get_Tp_allocator());
 480:/usr/include/c++/7/bits/vector.tcc **** 		  this->_M_impl._M_finish += __n;
 481:/usr/include/c++/7/bits/vector.tcc **** 		  _GLIBCXX_MOVE_BACKWARD3(__position.base(),
 482:/usr/include/c++/7/bits/vector.tcc **** 					  __old_finish - __n, __old_finish);
 483:/usr/include/c++/7/bits/vector.tcc **** 		  std::fill(__position.base(), __position.base() + __n,
 484:/usr/include/c++/7/bits/vector.tcc **** 			    __x_copy);
 485:/usr/include/c++/7/bits/vector.tcc **** 		}
 486:/usr/include/c++/7/bits/vector.tcc **** 	      else
 487:/usr/include/c++/7/bits/vector.tcc **** 		{
 488:/usr/include/c++/7/bits/vector.tcc **** 		  this->_M_impl._M_finish =
 489:/usr/include/c++/7/bits/vector.tcc **** 		    std::__uninitialized_fill_n_a(this->_M_impl._M_finish,
 490:/usr/include/c++/7/bits/vector.tcc **** 						  __n - __elems_after,
 491:/usr/include/c++/7/bits/vector.tcc **** 						  __x_copy,
 492:/usr/include/c++/7/bits/vector.tcc **** 						  _M_get_Tp_allocator());
 493:/usr/include/c++/7/bits/vector.tcc **** 		  std::__uninitialized_move_a(__position.base(), __old_finish,
 494:/usr/include/c++/7/bits/vector.tcc **** 					      this->_M_impl._M_finish,
 495:/usr/include/c++/7/bits/vector.tcc **** 					      _M_get_Tp_allocator());
 496:/usr/include/c++/7/bits/vector.tcc **** 		  this->_M_impl._M_finish += __elems_after;
 497:/usr/include/c++/7/bits/vector.tcc **** 		  std::fill(__position.base(), __old_finish, __x_copy);
 498:/usr/include/c++/7/bits/vector.tcc **** 		}
 499:/usr/include/c++/7/bits/vector.tcc **** 	    }
 500:/usr/include/c++/7/bits/vector.tcc **** 	  else
 501:/usr/include/c++/7/bits/vector.tcc **** 	    {
 502:/usr/include/c++/7/bits/vector.tcc **** 	      const size_type __len =
 503:/usr/include/c++/7/bits/vector.tcc **** 		_M_check_len(__n, "vector::_M_fill_insert");
 504:/usr/include/c++/7/bits/vector.tcc **** 	      const size_type __elems_before = __position - begin();
 505:/usr/include/c++/7/bits/vector.tcc **** 	      pointer __new_start(this->_M_allocate(__len));
 506:/usr/include/c++/7/bits/vector.tcc **** 	      pointer __new_finish(__new_start);
 507:/usr/include/c++/7/bits/vector.tcc **** 	      __try
 508:/usr/include/c++/7/bits/vector.tcc **** 		{
 509:/usr/include/c++/7/bits/vector.tcc **** 		  // See _M_realloc_insert above.
 510:/usr/include/c++/7/bits/vector.tcc **** 		  std::__uninitialized_fill_n_a(__new_start + __elems_before,
 511:/usr/include/c++/7/bits/vector.tcc **** 						__n, __x,
 512:/usr/include/c++/7/bits/vector.tcc **** 						_M_get_Tp_allocator());
 513:/usr/include/c++/7/bits/vector.tcc **** 		  __new_finish = pointer();
 514:/usr/include/c++/7/bits/vector.tcc **** 
 515:/usr/include/c++/7/bits/vector.tcc **** 		  __new_finish
 516:/usr/include/c++/7/bits/vector.tcc **** 		    = std::__uninitialized_move_if_noexcept_a
 517:/usr/include/c++/7/bits/vector.tcc **** 		    (this->_M_impl._M_start, __position.base(),
 518:/usr/include/c++/7/bits/vector.tcc **** 		     __new_start, _M_get_Tp_allocator());
 519:/usr/include/c++/7/bits/vector.tcc **** 
 520:/usr/include/c++/7/bits/vector.tcc **** 		  __new_finish += __n;
 521:/usr/include/c++/7/bits/vector.tcc **** 
 522:/usr/include/c++/7/bits/vector.tcc **** 		  __new_finish
 523:/usr/include/c++/7/bits/vector.tcc **** 		    = std::__uninitialized_move_if_noexcept_a
 524:/usr/include/c++/7/bits/vector.tcc **** 		    (__position.base(), this->_M_impl._M_finish,
 525:/usr/include/c++/7/bits/vector.tcc **** 		     __new_finish, _M_get_Tp_allocator());
 526:/usr/include/c++/7/bits/vector.tcc **** 		}
 527:/usr/include/c++/7/bits/vector.tcc **** 	      __catch(...)
 528:/usr/include/c++/7/bits/vector.tcc **** 		{
 529:/usr/include/c++/7/bits/vector.tcc **** 		  if (!__new_finish)
 530:/usr/include/c++/7/bits/vector.tcc **** 		    std::_Destroy(__new_start + __elems_before,
 531:/usr/include/c++/7/bits/vector.tcc **** 				  __new_start + __elems_before + __n,
 532:/usr/include/c++/7/bits/vector.tcc **** 				  _M_get_Tp_allocator());
 533:/usr/include/c++/7/bits/vector.tcc **** 		  else
 534:/usr/include/c++/7/bits/vector.tcc **** 		    std::_Destroy(__new_start, __new_finish,
 535:/usr/include/c++/7/bits/vector.tcc **** 				  _M_get_Tp_allocator());
 536:/usr/include/c++/7/bits/vector.tcc **** 		  _M_deallocate(__new_start, __len);
 537:/usr/include/c++/7/bits/vector.tcc **** 		  __throw_exception_again;
 538:/usr/include/c++/7/bits/vector.tcc **** 		}
 539:/usr/include/c++/7/bits/vector.tcc **** 	      std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 540:/usr/include/c++/7/bits/vector.tcc **** 			    _M_get_Tp_allocator());
 541:/usr/include/c++/7/bits/vector.tcc **** 	      _M_deallocate(this->_M_impl._M_start,
 542:/usr/include/c++/7/bits/vector.tcc **** 			    this->_M_impl._M_end_of_storage
 543:/usr/include/c++/7/bits/vector.tcc **** 			    - this->_M_impl._M_start);
 544:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_start = __new_start;
 545:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_finish = __new_finish;
 546:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_end_of_storage = __new_start + __len;
 547:/usr/include/c++/7/bits/vector.tcc **** 	    }
 548:/usr/include/c++/7/bits/vector.tcc **** 	}
 549:/usr/include/c++/7/bits/vector.tcc ****     }
 550:/usr/include/c++/7/bits/vector.tcc **** 
 551:/usr/include/c++/7/bits/vector.tcc **** #if __cplusplus >= 201103L
 552:/usr/include/c++/7/bits/vector.tcc ****   template<typename _Tp, typename _Alloc>
 553:/usr/include/c++/7/bits/vector.tcc ****     void
 554:/usr/include/c++/7/bits/vector.tcc ****     vector<_Tp, _Alloc>::
 2216              		.loc 5 554 0
 2217              		.cfi_startproc
 2218              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 2219              		.cfi_lsda 0x1b,.LLSDA2254
 2220 0000 55       		pushq	%rbp
 2221              		.cfi_def_cfa_offset 16
 2222              		.cfi_offset 6, -16
 2223 0001 4889E5   		movq	%rsp, %rbp
 2224              		.cfi_def_cfa_register 6
 2225 0004 53       		pushq	%rbx
 2226 0005 4883EC38 		subq	$56, %rsp
 2227              		.cfi_offset 3, -24
 2228 0009 48897DC8 		movq	%rdi, -56(%rbp)
 2229 000d 488975C0 		movq	%rsi, -64(%rbp)
 2230              	.LBB26:
 555:/usr/include/c++/7/bits/vector.tcc ****     _M_default_append(size_type __n)
 556:/usr/include/c++/7/bits/vector.tcc ****     {
 557:/usr/include/c++/7/bits/vector.tcc ****       if (__n != 0)
 2231              		.loc 5 557 0
 2232 0011 48837DC0 		cmpq	$0, -64(%rbp)
 2232      00
 2233 0016 0F84E801 		je	.L114
 2233      0000
 2234              	.LBB27:
 2235              	.LBB28:
 558:/usr/include/c++/7/bits/vector.tcc **** 	{
 559:/usr/include/c++/7/bits/vector.tcc **** 	  if (size_type(this->_M_impl._M_end_of_storage
 2236              		.loc 5 559 0
 2237 001c 488B45C8 		movq	-56(%rbp), %rax
 2238 0020 488B4010 		movq	16(%rax), %rax
 560:/usr/include/c++/7/bits/vector.tcc **** 			- this->_M_impl._M_finish) >= __n)
 2239              		.loc 5 560 0
 2240 0024 4889C2   		movq	%rax, %rdx
 2241 0027 488B45C8 		movq	-56(%rbp), %rax
 2242 002b 488B4008 		movq	8(%rax), %rax
 2243 002f 4829C2   		subq	%rax, %rdx
 2244 0032 4889D0   		movq	%rdx, %rax
 2245 0035 48C1F803 		sarq	$3, %rax
 559:/usr/include/c++/7/bits/vector.tcc **** 			- this->_M_impl._M_finish) >= __n)
 2246              		.loc 5 559 0
 2247 0039 483945C0 		cmpq	%rax, -64(%rbp)
 2248 003d 7736     		ja	.L108
 561:/usr/include/c++/7/bits/vector.tcc **** 	    {
 562:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_finish =
 563:/usr/include/c++/7/bits/vector.tcc **** 		std::__uninitialized_default_n_a(this->_M_impl._M_finish,
 564:/usr/include/c++/7/bits/vector.tcc **** 						 __n, _M_get_Tp_allocator());
 2249              		.loc 5 564 0
 2250 003f 488B45C8 		movq	-56(%rbp), %rax
 2251 0043 4889C7   		movq	%rax, %rdi
 2252 0046 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2252      00
 2253 004b 4889C2   		movq	%rax, %rdx
 563:/usr/include/c++/7/bits/vector.tcc **** 						 __n, _M_get_Tp_allocator());
 2254              		.loc 5 563 0
 2255 004e 488B45C8 		movq	-56(%rbp), %rax
 2256 0052 488B4008 		movq	8(%rax), %rax
 2257 0056 488B4DC0 		movq	-64(%rbp), %rcx
 2258 005a 4889CE   		movq	%rcx, %rsi
 2259 005d 4889C7   		movq	%rax, %rdi
 2260              	.LEHB24:
 2261 0060 E8000000 		call	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
 2261      00
 2262 0065 4889C2   		movq	%rax, %rdx
 562:/usr/include/c++/7/bits/vector.tcc **** 		std::__uninitialized_default_n_a(this->_M_impl._M_finish,
 2263              		.loc 5 562 0
 2264 0068 488B45C8 		movq	-56(%rbp), %rax
 2265 006c 48895008 		movq	%rdx, 8(%rax)
 2266              	.LBE28:
 2267              	.LBE27:
 2268              	.LBE26:
 565:/usr/include/c++/7/bits/vector.tcc **** 	    }
 566:/usr/include/c++/7/bits/vector.tcc **** 	  else
 567:/usr/include/c++/7/bits/vector.tcc **** 	    {
 568:/usr/include/c++/7/bits/vector.tcc **** 	      const size_type __len =
 569:/usr/include/c++/7/bits/vector.tcc **** 		_M_check_len(__n, "vector::_M_default_append");
 570:/usr/include/c++/7/bits/vector.tcc **** 	      const size_type __old_size = this->size();
 571:/usr/include/c++/7/bits/vector.tcc **** 	      pointer __new_start(this->_M_allocate(__len));
 572:/usr/include/c++/7/bits/vector.tcc **** 	      pointer __new_finish(__new_start);
 573:/usr/include/c++/7/bits/vector.tcc **** 	      __try
 574:/usr/include/c++/7/bits/vector.tcc **** 		{
 575:/usr/include/c++/7/bits/vector.tcc **** 		  __new_finish
 576:/usr/include/c++/7/bits/vector.tcc **** 		    = std::__uninitialized_move_if_noexcept_a
 577:/usr/include/c++/7/bits/vector.tcc **** 		    (this->_M_impl._M_start, this->_M_impl._M_finish,
 578:/usr/include/c++/7/bits/vector.tcc **** 		     __new_start, _M_get_Tp_allocator());
 579:/usr/include/c++/7/bits/vector.tcc **** 		  __new_finish =
 580:/usr/include/c++/7/bits/vector.tcc **** 		    std::__uninitialized_default_n_a(__new_finish, __n,
 581:/usr/include/c++/7/bits/vector.tcc **** 						     _M_get_Tp_allocator());
 582:/usr/include/c++/7/bits/vector.tcc **** 		}
 583:/usr/include/c++/7/bits/vector.tcc **** 	      __catch(...)
 584:/usr/include/c++/7/bits/vector.tcc **** 		{
 585:/usr/include/c++/7/bits/vector.tcc **** 		  std::_Destroy(__new_start, __new_finish,
 586:/usr/include/c++/7/bits/vector.tcc **** 				_M_get_Tp_allocator());
 587:/usr/include/c++/7/bits/vector.tcc **** 		  _M_deallocate(__new_start, __len);
 588:/usr/include/c++/7/bits/vector.tcc **** 		  __throw_exception_again;
 589:/usr/include/c++/7/bits/vector.tcc **** 		}
 590:/usr/include/c++/7/bits/vector.tcc **** 	      std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 591:/usr/include/c++/7/bits/vector.tcc **** 			    _M_get_Tp_allocator());
 592:/usr/include/c++/7/bits/vector.tcc **** 	      _M_deallocate(this->_M_impl._M_start,
 593:/usr/include/c++/7/bits/vector.tcc **** 			    this->_M_impl._M_end_of_storage
 594:/usr/include/c++/7/bits/vector.tcc **** 			    - this->_M_impl._M_start);
 595:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_start = __new_start;
 596:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_finish = __new_finish;
 597:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_end_of_storage = __new_start + __len;
 598:/usr/include/c++/7/bits/vector.tcc **** 	    }
 599:/usr/include/c++/7/bits/vector.tcc **** 	}
 600:/usr/include/c++/7/bits/vector.tcc ****     }
 2269              		.loc 5 600 0
 2270 0070 E98F0100 		jmp	.L114
 2270      00
 2271              	.L108:
 2272              	.LBB35:
 2273              	.LBB33:
 2274              	.LBB31:
 2275              	.LBB29:
 568:/usr/include/c++/7/bits/vector.tcc **** 		_M_check_len(__n, "vector::_M_default_append");
 2276              		.loc 5 568 0
 2277 0075 488B4DC0 		movq	-64(%rbp), %rcx
 2278 0079 488B45C8 		movq	-56(%rbp), %rax
 2279 007d 488D1500 		leaq	.LC28(%rip), %rdx
 2279      000000
 2280 0084 4889CE   		movq	%rcx, %rsi
 2281 0087 4889C7   		movq	%rax, %rdi
 2282 008a E8000000 		call	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
 2282      00
 2283 008f 488945D8 		movq	%rax, -40(%rbp)
 570:/usr/include/c++/7/bits/vector.tcc **** 	      pointer __new_start(this->_M_allocate(__len));
 2284              		.loc 5 570 0
 2285 0093 488B45C8 		movq	-56(%rbp), %rax
 2286 0097 4889C7   		movq	%rax, %rdi
 2287 009a E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2287      00
 2288 009f 488945E0 		movq	%rax, -32(%rbp)
 571:/usr/include/c++/7/bits/vector.tcc **** 	      pointer __new_finish(__new_start);
 2289              		.loc 5 571 0
 2290 00a3 488B45C8 		movq	-56(%rbp), %rax
 2291 00a7 488B55D8 		movq	-40(%rbp), %rdx
 2292 00ab 4889D6   		movq	%rdx, %rsi
 2293 00ae 4889C7   		movq	%rax, %rdi
 2294 00b1 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
 2294      00
 2295              	.LEHE24:
 2296 00b6 488945E8 		movq	%rax, -24(%rbp)
 572:/usr/include/c++/7/bits/vector.tcc **** 	      __try
 2297              		.loc 5 572 0
 2298 00ba 488B45E8 		movq	-24(%rbp), %rax
 2299 00be 488945D0 		movq	%rax, -48(%rbp)
 578:/usr/include/c++/7/bits/vector.tcc **** 		  __new_finish =
 2300              		.loc 5 578 0
 2301 00c2 488B45C8 		movq	-56(%rbp), %rax
 2302 00c6 4889C7   		movq	%rax, %rdi
 2303 00c9 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2303      00
 2304 00ce 4889C1   		movq	%rax, %rcx
 577:/usr/include/c++/7/bits/vector.tcc **** 		     __new_start, _M_get_Tp_allocator());
 2305              		.loc 5 577 0
 2306 00d1 488B45C8 		movq	-56(%rbp), %rax
 2307 00d5 488B7008 		movq	8(%rax), %rsi
 2308 00d9 488B45C8 		movq	-56(%rbp), %rax
 2309 00dd 488B00   		movq	(%rax), %rax
 575:/usr/include/c++/7/bits/vector.tcc **** 		    = std::__uninitialized_move_if_noexcept_a
 2310              		.loc 5 575 0
 2311 00e0 488B55E8 		movq	-24(%rbp), %rdx
 2312 00e4 4889C7   		movq	%rax, %rdi
 2313              	.LEHB25:
 2314 00e7 E8000000 		call	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_
 2314      00
 2315 00ec 488945D0 		movq	%rax, -48(%rbp)
 581:/usr/include/c++/7/bits/vector.tcc **** 		}
 2316              		.loc 5 581 0
 2317 00f0 488B45C8 		movq	-56(%rbp), %rax
 2318 00f4 4889C7   		movq	%rax, %rdi
 2319 00f7 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2319      00
 2320 00fc 4889C2   		movq	%rax, %rdx
 579:/usr/include/c++/7/bits/vector.tcc **** 		    std::__uninitialized_default_n_a(__new_finish, __n,
 2321              		.loc 5 579 0
 2322 00ff 488B4DC0 		movq	-64(%rbp), %rcx
 2323 0103 488B45D0 		movq	-48(%rbp), %rax
 2324 0107 4889CE   		movq	%rcx, %rsi
 2325 010a 4889C7   		movq	%rax, %rdi
 2326 010d E8000000 		call	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
 2326      00
 2327              	.LEHE25:
 579:/usr/include/c++/7/bits/vector.tcc **** 		    std::__uninitialized_default_n_a(__new_finish, __n,
 2328              		.loc 5 579 0 is_stmt 0 discriminator 1
 2329 0112 488945D0 		movq	%rax, -48(%rbp)
 591:/usr/include/c++/7/bits/vector.tcc **** 	      _M_deallocate(this->_M_impl._M_start,
 2330              		.loc 5 591 0 is_stmt 1 discriminator 1
 2331 0116 488B45C8 		movq	-56(%rbp), %rax
 2332 011a 4889C7   		movq	%rax, %rdi
 2333 011d E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2333      00
 2334 0122 4889C2   		movq	%rax, %rdx
 590:/usr/include/c++/7/bits/vector.tcc **** 			    _M_get_Tp_allocator());
 2335              		.loc 5 590 0 discriminator 1
 2336 0125 488B45C8 		movq	-56(%rbp), %rax
 2337 0129 488B4808 		movq	8(%rax), %rcx
 2338 012d 488B45C8 		movq	-56(%rbp), %rax
 2339 0131 488B00   		movq	(%rax), %rax
 2340 0134 4889CE   		movq	%rcx, %rsi
 2341 0137 4889C7   		movq	%rax, %rdi
 2342              	.LEHB26:
 2343 013a E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 2343      00
 592:/usr/include/c++/7/bits/vector.tcc **** 			    this->_M_impl._M_end_of_storage
 2344              		.loc 5 592 0 discriminator 1
 2345 013f 488B45C8 		movq	-56(%rbp), %rax
 593:/usr/include/c++/7/bits/vector.tcc **** 			    - this->_M_impl._M_start);
 2346              		.loc 5 593 0 discriminator 1
 2347 0143 488B55C8 		movq	-56(%rbp), %rdx
 2348 0147 488B5210 		movq	16(%rdx), %rdx
 594:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_start = __new_start;
 2349              		.loc 5 594 0 discriminator 1
 2350 014b 4889D1   		movq	%rdx, %rcx
 2351 014e 488B55C8 		movq	-56(%rbp), %rdx
 2352 0152 488B12   		movq	(%rdx), %rdx
 2353 0155 4829D1   		subq	%rdx, %rcx
 2354 0158 4889CA   		movq	%rcx, %rdx
 2355 015b 48C1FA03 		sarq	$3, %rdx
 592:/usr/include/c++/7/bits/vector.tcc **** 			    this->_M_impl._M_end_of_storage
 2356              		.loc 5 592 0 discriminator 1
 2357 015f 4889D6   		movq	%rdx, %rsi
 2358 0162 488B55C8 		movq	-56(%rbp), %rdx
 2359 0166 488B0A   		movq	(%rdx), %rcx
 2360 0169 4889F2   		movq	%rsi, %rdx
 2361 016c 4889CE   		movq	%rcx, %rsi
 2362 016f 4889C7   		movq	%rax, %rdi
 2363 0172 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 2363      00
 2364              	.LEHE26:
 595:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_finish = __new_finish;
 2365              		.loc 5 595 0 discriminator 1
 2366 0177 488B45C8 		movq	-56(%rbp), %rax
 2367 017b 488B55E8 		movq	-24(%rbp), %rdx
 2368 017f 488910   		movq	%rdx, (%rax)
 596:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_end_of_storage = __new_start + __len;
 2369              		.loc 5 596 0 discriminator 1
 2370 0182 488B45C8 		movq	-56(%rbp), %rax
 2371 0186 488B55D0 		movq	-48(%rbp), %rdx
 2372 018a 48895008 		movq	%rdx, 8(%rax)
 597:/usr/include/c++/7/bits/vector.tcc **** 	    }
 2373              		.loc 5 597 0 discriminator 1
 2374 018e 488B45D8 		movq	-40(%rbp), %rax
 2375 0192 488D14C5 		leaq	0(,%rax,8), %rdx
 2375      00000000 
 2376 019a 488B45E8 		movq	-24(%rbp), %rax
 2377 019e 4801C2   		addq	%rax, %rdx
 2378 01a1 488B45C8 		movq	-56(%rbp), %rax
 2379 01a5 48895010 		movq	%rdx, 16(%rax)
 2380              	.LBE29:
 2381              	.LBE31:
 2382              	.LBE33:
 2383              	.LBE35:
 2384              		.loc 5 600 0 discriminator 1
 2385 01a9 EB59     		jmp	.L114
 2386              	.L112:
 2387              	.LBB36:
 2388              	.LBB34:
 2389              	.LBB32:
 2390              	.LBB30:
 583:/usr/include/c++/7/bits/vector.tcc **** 		{
 2391              		.loc 5 583 0
 2392 01ab 4889C7   		movq	%rax, %rdi
 2393 01ae E8000000 		call	__cxa_begin_catch@PLT
 2393      00
 586:/usr/include/c++/7/bits/vector.tcc **** 		  _M_deallocate(__new_start, __len);
 2394              		.loc 5 586 0
 2395 01b3 488B45C8 		movq	-56(%rbp), %rax
 2396 01b7 4889C7   		movq	%rax, %rdi
 2397 01ba E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2397      00
 2398 01bf 4889C2   		movq	%rax, %rdx
 585:/usr/include/c++/7/bits/vector.tcc **** 				_M_get_Tp_allocator());
 2399              		.loc 5 585 0
 2400 01c2 488B4DD0 		movq	-48(%rbp), %rcx
 2401 01c6 488B45E8 		movq	-24(%rbp), %rax
 2402 01ca 4889CE   		movq	%rcx, %rsi
 2403 01cd 4889C7   		movq	%rax, %rdi
 2404              	.LEHB27:
 2405 01d0 E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 2405      00
 587:/usr/include/c++/7/bits/vector.tcc **** 		  __throw_exception_again;
 2406              		.loc 5 587 0
 2407 01d5 488B45C8 		movq	-56(%rbp), %rax
 2408 01d9 488B55D8 		movq	-40(%rbp), %rdx
 2409 01dd 488B4DE8 		movq	-24(%rbp), %rcx
 2410 01e1 4889CE   		movq	%rcx, %rsi
 2411 01e4 4889C7   		movq	%rax, %rdi
 2412 01e7 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 2412      00
 588:/usr/include/c++/7/bits/vector.tcc **** 		}
 2413              		.loc 5 588 0
 2414 01ec E8000000 		call	__cxa_rethrow@PLT
 2414      00
 2415              	.LEHE27:
 2416              	.L113:
 2417 01f1 4889C3   		movq	%rax, %rbx
 583:/usr/include/c++/7/bits/vector.tcc **** 		{
 2418              		.loc 5 583 0
 2419 01f4 E8000000 		call	__cxa_end_catch@PLT
 2419      00
 2420 01f9 4889D8   		movq	%rbx, %rax
 2421 01fc 4889C7   		movq	%rax, %rdi
 2422              	.LEHB28:
 2423 01ff E8000000 		call	_Unwind_Resume@PLT
 2423      00
 2424              	.LEHE28:
 2425              	.L114:
 2426              	.LBE30:
 2427              	.LBE32:
 2428              	.LBE34:
 2429              	.LBE36:
 2430              		.loc 5 600 0
 2431 0204 90       		nop
 2432 0205 4883C438 		addq	$56, %rsp
 2433 0209 5B       		popq	%rbx
 2434 020a 5D       		popq	%rbp
 2435              		.cfi_def_cfa 7, 8
 2436 020b C3       		ret
 2437              		.cfi_endproc
 2438              	.LFE2254:
 2439              		.section	.gcc_except_table
 2440 007b 00       		.align 4
 2441              	.LLSDA2254:
 2442 007c FF       		.byte	0xff
 2443 007d 9B       		.byte	0x9b
 2444 007e 25       		.uleb128 .LLSDATT2254-.LLSDATTD2254
 2445              	.LLSDATTD2254:
 2446 007f 01       		.byte	0x1
 2447 0080 1A       		.uleb128 .LLSDACSE2254-.LLSDACSB2254
 2448              	.LLSDACSB2254:
 2449 0081 60       		.uleb128 .LEHB24-.LFB2254
 2450 0082 56       		.uleb128 .LEHE24-.LEHB24
 2451 0083 00       		.uleb128 0
 2452 0084 00       		.uleb128 0
 2453 0085 E701     		.uleb128 .LEHB25-.LFB2254
 2454 0087 2B       		.uleb128 .LEHE25-.LEHB25
 2455 0088 AB03     		.uleb128 .L112-.LFB2254
 2456 008a 01       		.uleb128 0x1
 2457 008b BA02     		.uleb128 .LEHB26-.LFB2254
 2458 008d 3D       		.uleb128 .LEHE26-.LEHB26
 2459 008e 00       		.uleb128 0
 2460 008f 00       		.uleb128 0
 2461 0090 D003     		.uleb128 .LEHB27-.LFB2254
 2462 0092 21       		.uleb128 .LEHE27-.LEHB27
 2463 0093 F103     		.uleb128 .L113-.LFB2254
 2464 0095 00       		.uleb128 0
 2465 0096 FF03     		.uleb128 .LEHB28-.LFB2254
 2466 0098 05       		.uleb128 .LEHE28-.LEHB28
 2467 0099 00       		.uleb128 0
 2468 009a 00       		.uleb128 0
 2469              	.LLSDACSE2254:
 2470 009b 01       		.byte	0x1
 2471 009c 00       		.byte	0
 2472 009d 000000   		.align 4
 2473 00a0 00000000 		.long	0
 2474              	
 2475              	.LLSDATT2254:
 2476              		.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_
 2478              		.section	.text._ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd,"axG",@progbits,_ZNSt6vectorIdSaIdEE15_M_e
 2479              		.align 2
 2480              		.weak	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd
 2482              	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd:
 2483              	.LFB2255:
 818:/usr/include/c++/7/bits/stl_vector.h **** 
 819:/usr/include/c++/7/bits/stl_vector.h ****     protected:
 820:/usr/include/c++/7/bits/stl_vector.h ****       /// Safety check used only from at().
 821:/usr/include/c++/7/bits/stl_vector.h ****       void
 822:/usr/include/c++/7/bits/stl_vector.h ****       _M_range_check(size_type __n) const
 823:/usr/include/c++/7/bits/stl_vector.h ****       {
 824:/usr/include/c++/7/bits/stl_vector.h **** 	if (__n >= this->size())
 825:/usr/include/c++/7/bits/stl_vector.h **** 	  __throw_out_of_range_fmt(__N("vector::_M_range_check: __n "
 826:/usr/include/c++/7/bits/stl_vector.h **** 				       "(which is %zu) >= this->size() "
 827:/usr/include/c++/7/bits/stl_vector.h **** 				       "(which is %zu)"),
 828:/usr/include/c++/7/bits/stl_vector.h **** 				   __n, this->size());
 829:/usr/include/c++/7/bits/stl_vector.h ****       }
 830:/usr/include/c++/7/bits/stl_vector.h **** 
 831:/usr/include/c++/7/bits/stl_vector.h ****     public:
 832:/usr/include/c++/7/bits/stl_vector.h ****       /**
 833:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Provides access to the data contained in the %vector.
 834:/usr/include/c++/7/bits/stl_vector.h ****        *  @param __n The index of the element for which data should be
 835:/usr/include/c++/7/bits/stl_vector.h ****        *  accessed.
 836:/usr/include/c++/7/bits/stl_vector.h ****        *  @return  Read/write reference to data.
 837:/usr/include/c++/7/bits/stl_vector.h ****        *  @throw  std::out_of_range  If @a __n is an invalid index.
 838:/usr/include/c++/7/bits/stl_vector.h ****        *
 839:/usr/include/c++/7/bits/stl_vector.h ****        *  This function provides for safer data access.  The parameter
 840:/usr/include/c++/7/bits/stl_vector.h ****        *  is first checked that it is in the range of the vector.  The
 841:/usr/include/c++/7/bits/stl_vector.h ****        *  function throws out_of_range if the check fails.
 842:/usr/include/c++/7/bits/stl_vector.h ****        */
 843:/usr/include/c++/7/bits/stl_vector.h ****       reference
 844:/usr/include/c++/7/bits/stl_vector.h ****       at(size_type __n)
 845:/usr/include/c++/7/bits/stl_vector.h ****       {
 846:/usr/include/c++/7/bits/stl_vector.h **** 	_M_range_check(__n);
 847:/usr/include/c++/7/bits/stl_vector.h **** 	return (*this)[__n];
 848:/usr/include/c++/7/bits/stl_vector.h ****       }
 849:/usr/include/c++/7/bits/stl_vector.h **** 
 850:/usr/include/c++/7/bits/stl_vector.h ****       /**
 851:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Provides access to the data contained in the %vector.
 852:/usr/include/c++/7/bits/stl_vector.h ****        *  @param __n The index of the element for which data should be
 853:/usr/include/c++/7/bits/stl_vector.h ****        *  accessed.
 854:/usr/include/c++/7/bits/stl_vector.h ****        *  @return  Read-only (constant) reference to data.
 855:/usr/include/c++/7/bits/stl_vector.h ****        *  @throw  std::out_of_range  If @a __n is an invalid index.
 856:/usr/include/c++/7/bits/stl_vector.h ****        *
 857:/usr/include/c++/7/bits/stl_vector.h ****        *  This function provides for safer data access.  The parameter
 858:/usr/include/c++/7/bits/stl_vector.h ****        *  is first checked that it is in the range of the vector.  The
 859:/usr/include/c++/7/bits/stl_vector.h ****        *  function throws out_of_range if the check fails.
 860:/usr/include/c++/7/bits/stl_vector.h ****        */
 861:/usr/include/c++/7/bits/stl_vector.h ****       const_reference
 862:/usr/include/c++/7/bits/stl_vector.h ****       at(size_type __n) const
 863:/usr/include/c++/7/bits/stl_vector.h ****       {
 864:/usr/include/c++/7/bits/stl_vector.h **** 	_M_range_check(__n);
 865:/usr/include/c++/7/bits/stl_vector.h **** 	return (*this)[__n];
 866:/usr/include/c++/7/bits/stl_vector.h ****       }
 867:/usr/include/c++/7/bits/stl_vector.h **** 
 868:/usr/include/c++/7/bits/stl_vector.h ****       /**
 869:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read/write reference to the data at the first
 870:/usr/include/c++/7/bits/stl_vector.h ****        *  element of the %vector.
 871:/usr/include/c++/7/bits/stl_vector.h ****        */
 872:/usr/include/c++/7/bits/stl_vector.h ****       reference
 873:/usr/include/c++/7/bits/stl_vector.h ****       front() _GLIBCXX_NOEXCEPT
 874:/usr/include/c++/7/bits/stl_vector.h ****       {
 875:/usr/include/c++/7/bits/stl_vector.h **** 	__glibcxx_requires_nonempty();
 876:/usr/include/c++/7/bits/stl_vector.h **** 	return *begin();
 877:/usr/include/c++/7/bits/stl_vector.h ****       }
 878:/usr/include/c++/7/bits/stl_vector.h **** 
 879:/usr/include/c++/7/bits/stl_vector.h ****       /**
 880:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read-only (constant) reference to the data at the first
 881:/usr/include/c++/7/bits/stl_vector.h ****        *  element of the %vector.
 882:/usr/include/c++/7/bits/stl_vector.h ****        */
 883:/usr/include/c++/7/bits/stl_vector.h ****       const_reference
 884:/usr/include/c++/7/bits/stl_vector.h ****       front() const _GLIBCXX_NOEXCEPT
 885:/usr/include/c++/7/bits/stl_vector.h ****       {
 886:/usr/include/c++/7/bits/stl_vector.h **** 	__glibcxx_requires_nonempty();
 887:/usr/include/c++/7/bits/stl_vector.h **** 	return *begin();
 888:/usr/include/c++/7/bits/stl_vector.h ****       }
 889:/usr/include/c++/7/bits/stl_vector.h **** 
 890:/usr/include/c++/7/bits/stl_vector.h ****       /**
 891:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read/write reference to the data at the last
 892:/usr/include/c++/7/bits/stl_vector.h ****        *  element of the %vector.
 893:/usr/include/c++/7/bits/stl_vector.h ****        */
 894:/usr/include/c++/7/bits/stl_vector.h ****       reference
 895:/usr/include/c++/7/bits/stl_vector.h ****       back() _GLIBCXX_NOEXCEPT
 896:/usr/include/c++/7/bits/stl_vector.h ****       {
 897:/usr/include/c++/7/bits/stl_vector.h **** 	__glibcxx_requires_nonempty();
 898:/usr/include/c++/7/bits/stl_vector.h **** 	return *(end() - 1);
 899:/usr/include/c++/7/bits/stl_vector.h ****       }
 900:/usr/include/c++/7/bits/stl_vector.h **** 
 901:/usr/include/c++/7/bits/stl_vector.h ****       /**
 902:/usr/include/c++/7/bits/stl_vector.h ****        *  Returns a read-only (constant) reference to the data at the
 903:/usr/include/c++/7/bits/stl_vector.h ****        *  last element of the %vector.
 904:/usr/include/c++/7/bits/stl_vector.h ****        */
 905:/usr/include/c++/7/bits/stl_vector.h ****       const_reference
 906:/usr/include/c++/7/bits/stl_vector.h ****       back() const _GLIBCXX_NOEXCEPT
 907:/usr/include/c++/7/bits/stl_vector.h ****       {
 908:/usr/include/c++/7/bits/stl_vector.h **** 	__glibcxx_requires_nonempty();
 909:/usr/include/c++/7/bits/stl_vector.h **** 	return *(end() - 1);
 910:/usr/include/c++/7/bits/stl_vector.h ****       }
 911:/usr/include/c++/7/bits/stl_vector.h **** 
 912:/usr/include/c++/7/bits/stl_vector.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
 913:/usr/include/c++/7/bits/stl_vector.h ****       // DR 464. Suggestion for new member functions in standard containers.
 914:/usr/include/c++/7/bits/stl_vector.h ****       // data access
 915:/usr/include/c++/7/bits/stl_vector.h ****       /**
 916:/usr/include/c++/7/bits/stl_vector.h ****        *   Returns a pointer such that [data(), data() + size()) is a valid
 917:/usr/include/c++/7/bits/stl_vector.h ****        *   range.  For a non-empty %vector, data() == &front().
 918:/usr/include/c++/7/bits/stl_vector.h ****        */
 919:/usr/include/c++/7/bits/stl_vector.h ****       _Tp*
 920:/usr/include/c++/7/bits/stl_vector.h ****       data() _GLIBCXX_NOEXCEPT
 921:/usr/include/c++/7/bits/stl_vector.h ****       { return _M_data_ptr(this->_M_impl._M_start); }
 922:/usr/include/c++/7/bits/stl_vector.h **** 
 923:/usr/include/c++/7/bits/stl_vector.h ****       const _Tp*
 924:/usr/include/c++/7/bits/stl_vector.h ****       data() const _GLIBCXX_NOEXCEPT
 925:/usr/include/c++/7/bits/stl_vector.h ****       { return _M_data_ptr(this->_M_impl._M_start); }
 926:/usr/include/c++/7/bits/stl_vector.h **** 
 927:/usr/include/c++/7/bits/stl_vector.h ****       // [23.2.4.3] modifiers
 928:/usr/include/c++/7/bits/stl_vector.h ****       /**
 929:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Add data to the end of the %vector.
 930:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __x  Data to be added.
 931:/usr/include/c++/7/bits/stl_vector.h ****        *
 932:/usr/include/c++/7/bits/stl_vector.h ****        *  This is a typical stack operation.  The function creates an
 933:/usr/include/c++/7/bits/stl_vector.h ****        *  element at the end of the %vector and assigns the given data
 934:/usr/include/c++/7/bits/stl_vector.h ****        *  to it.  Due to the nature of a %vector this operation can be
 935:/usr/include/c++/7/bits/stl_vector.h ****        *  done in constant time if the %vector has preallocated space
 936:/usr/include/c++/7/bits/stl_vector.h ****        *  available.
 937:/usr/include/c++/7/bits/stl_vector.h ****        */
 938:/usr/include/c++/7/bits/stl_vector.h ****       void
 939:/usr/include/c++/7/bits/stl_vector.h ****       push_back(const value_type& __x)
 940:/usr/include/c++/7/bits/stl_vector.h ****       {
 941:/usr/include/c++/7/bits/stl_vector.h **** 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
 942:/usr/include/c++/7/bits/stl_vector.h **** 	  {
 943:/usr/include/c++/7/bits/stl_vector.h **** 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
 944:/usr/include/c++/7/bits/stl_vector.h **** 				     __x);
 945:/usr/include/c++/7/bits/stl_vector.h **** 	    ++this->_M_impl._M_finish;
 946:/usr/include/c++/7/bits/stl_vector.h **** 	  }
 947:/usr/include/c++/7/bits/stl_vector.h **** 	else
 948:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_realloc_insert(end(), __x);
 949:/usr/include/c++/7/bits/stl_vector.h ****       }
 950:/usr/include/c++/7/bits/stl_vector.h **** 
 951:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 952:/usr/include/c++/7/bits/stl_vector.h ****       void
 953:/usr/include/c++/7/bits/stl_vector.h ****       push_back(value_type&& __x)
 954:/usr/include/c++/7/bits/stl_vector.h ****       { emplace_back(std::move(__x)); }
 955:/usr/include/c++/7/bits/stl_vector.h **** 
 956:/usr/include/c++/7/bits/stl_vector.h ****       template<typename... _Args>
 957:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus > 201402L
 958:/usr/include/c++/7/bits/stl_vector.h **** 	reference
 959:/usr/include/c++/7/bits/stl_vector.h **** #else
 960:/usr/include/c++/7/bits/stl_vector.h **** 	void
 961:/usr/include/c++/7/bits/stl_vector.h **** #endif
 962:/usr/include/c++/7/bits/stl_vector.h **** 	emplace_back(_Args&&... __args);
 963:/usr/include/c++/7/bits/stl_vector.h **** #endif
 964:/usr/include/c++/7/bits/stl_vector.h **** 
 965:/usr/include/c++/7/bits/stl_vector.h ****       /**
 966:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Removes last element.
 967:/usr/include/c++/7/bits/stl_vector.h ****        *
 968:/usr/include/c++/7/bits/stl_vector.h ****        *  This is a typical stack operation. It shrinks the %vector by one.
 969:/usr/include/c++/7/bits/stl_vector.h ****        *
 970:/usr/include/c++/7/bits/stl_vector.h ****        *  Note that no data is returned, and if the last element's
 971:/usr/include/c++/7/bits/stl_vector.h ****        *  data is needed, it should be retrieved before pop_back() is
 972:/usr/include/c++/7/bits/stl_vector.h ****        *  called.
 973:/usr/include/c++/7/bits/stl_vector.h ****        */
 974:/usr/include/c++/7/bits/stl_vector.h ****       void
 975:/usr/include/c++/7/bits/stl_vector.h ****       pop_back() _GLIBCXX_NOEXCEPT
 976:/usr/include/c++/7/bits/stl_vector.h ****       {
 977:/usr/include/c++/7/bits/stl_vector.h **** 	__glibcxx_requires_nonempty();
 978:/usr/include/c++/7/bits/stl_vector.h **** 	--this->_M_impl._M_finish;
 979:/usr/include/c++/7/bits/stl_vector.h **** 	_Alloc_traits::destroy(this->_M_impl, this->_M_impl._M_finish);
 980:/usr/include/c++/7/bits/stl_vector.h ****       }
 981:/usr/include/c++/7/bits/stl_vector.h **** 
 982:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 983:/usr/include/c++/7/bits/stl_vector.h ****       /**
 984:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Inserts an object in %vector before specified iterator.
 985:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __position  A const_iterator into the %vector.
 986:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __args  Arguments.
 987:/usr/include/c++/7/bits/stl_vector.h ****        *  @return  An iterator that points to the inserted data.
 988:/usr/include/c++/7/bits/stl_vector.h ****        *
 989:/usr/include/c++/7/bits/stl_vector.h ****        *  This function will insert an object of type T constructed
 990:/usr/include/c++/7/bits/stl_vector.h ****        *  with T(std::forward<Args>(args)...) before the specified location.
 991:/usr/include/c++/7/bits/stl_vector.h ****        *  Note that this kind of operation could be expensive for a %vector
 992:/usr/include/c++/7/bits/stl_vector.h ****        *  and if it is frequently used the user should consider using
 993:/usr/include/c++/7/bits/stl_vector.h ****        *  std::list.
 994:/usr/include/c++/7/bits/stl_vector.h ****        */
 995:/usr/include/c++/7/bits/stl_vector.h ****       template<typename... _Args>
 996:/usr/include/c++/7/bits/stl_vector.h **** 	iterator
 997:/usr/include/c++/7/bits/stl_vector.h **** 	emplace(const_iterator __position, _Args&&... __args)
 998:/usr/include/c++/7/bits/stl_vector.h **** 	{ return _M_emplace_aux(__position, std::forward<_Args>(__args)...); }
 999:/usr/include/c++/7/bits/stl_vector.h **** 
1000:/usr/include/c++/7/bits/stl_vector.h ****       /**
1001:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Inserts given value into %vector before specified iterator.
1002:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __position  A const_iterator into the %vector.
1003:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __x  Data to be inserted.
1004:/usr/include/c++/7/bits/stl_vector.h ****        *  @return  An iterator that points to the inserted data.
1005:/usr/include/c++/7/bits/stl_vector.h ****        *
1006:/usr/include/c++/7/bits/stl_vector.h ****        *  This function will insert a copy of the given value before
1007:/usr/include/c++/7/bits/stl_vector.h ****        *  the specified location.  Note that this kind of operation
1008:/usr/include/c++/7/bits/stl_vector.h ****        *  could be expensive for a %vector and if it is frequently
1009:/usr/include/c++/7/bits/stl_vector.h ****        *  used the user should consider using std::list.
1010:/usr/include/c++/7/bits/stl_vector.h ****        */
1011:/usr/include/c++/7/bits/stl_vector.h ****       iterator
1012:/usr/include/c++/7/bits/stl_vector.h ****       insert(const_iterator __position, const value_type& __x);
1013:/usr/include/c++/7/bits/stl_vector.h **** #else
1014:/usr/include/c++/7/bits/stl_vector.h ****       /**
1015:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Inserts given value into %vector before specified iterator.
1016:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __position  An iterator into the %vector.
1017:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __x  Data to be inserted.
1018:/usr/include/c++/7/bits/stl_vector.h ****        *  @return  An iterator that points to the inserted data.
1019:/usr/include/c++/7/bits/stl_vector.h ****        *
1020:/usr/include/c++/7/bits/stl_vector.h ****        *  This function will insert a copy of the given value before
1021:/usr/include/c++/7/bits/stl_vector.h ****        *  the specified location.  Note that this kind of operation
1022:/usr/include/c++/7/bits/stl_vector.h ****        *  could be expensive for a %vector and if it is frequently
1023:/usr/include/c++/7/bits/stl_vector.h ****        *  used the user should consider using std::list.
1024:/usr/include/c++/7/bits/stl_vector.h ****        */
1025:/usr/include/c++/7/bits/stl_vector.h ****       iterator
1026:/usr/include/c++/7/bits/stl_vector.h ****       insert(iterator __position, const value_type& __x);
1027:/usr/include/c++/7/bits/stl_vector.h **** #endif
1028:/usr/include/c++/7/bits/stl_vector.h **** 
1029:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
1030:/usr/include/c++/7/bits/stl_vector.h ****       /**
1031:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Inserts given rvalue into %vector before specified iterator.
1032:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __position  A const_iterator into the %vector.
1033:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __x  Data to be inserted.
1034:/usr/include/c++/7/bits/stl_vector.h ****        *  @return  An iterator that points to the inserted data.
1035:/usr/include/c++/7/bits/stl_vector.h ****        *
1036:/usr/include/c++/7/bits/stl_vector.h ****        *  This function will insert a copy of the given rvalue before
1037:/usr/include/c++/7/bits/stl_vector.h ****        *  the specified location.  Note that this kind of operation
1038:/usr/include/c++/7/bits/stl_vector.h ****        *  could be expensive for a %vector and if it is frequently
1039:/usr/include/c++/7/bits/stl_vector.h ****        *  used the user should consider using std::list.
1040:/usr/include/c++/7/bits/stl_vector.h ****        */
1041:/usr/include/c++/7/bits/stl_vector.h ****       iterator
1042:/usr/include/c++/7/bits/stl_vector.h ****       insert(const_iterator __position, value_type&& __x)
1043:/usr/include/c++/7/bits/stl_vector.h ****       { return _M_insert_rval(__position, std::move(__x)); }
1044:/usr/include/c++/7/bits/stl_vector.h **** 
1045:/usr/include/c++/7/bits/stl_vector.h ****       /**
1046:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Inserts an initializer_list into the %vector.
1047:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __position  An iterator into the %vector.
1048:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __l  An initializer_list.
1049:/usr/include/c++/7/bits/stl_vector.h ****        *
1050:/usr/include/c++/7/bits/stl_vector.h ****        *  This function will insert copies of the data in the
1051:/usr/include/c++/7/bits/stl_vector.h ****        *  initializer_list @a l into the %vector before the location
1052:/usr/include/c++/7/bits/stl_vector.h ****        *  specified by @a position.
1053:/usr/include/c++/7/bits/stl_vector.h ****        *
1054:/usr/include/c++/7/bits/stl_vector.h ****        *  Note that this kind of operation could be expensive for a
1055:/usr/include/c++/7/bits/stl_vector.h ****        *  %vector and if it is frequently used the user should
1056:/usr/include/c++/7/bits/stl_vector.h ****        *  consider using std::list.
1057:/usr/include/c++/7/bits/stl_vector.h ****        */
1058:/usr/include/c++/7/bits/stl_vector.h ****       iterator
1059:/usr/include/c++/7/bits/stl_vector.h ****       insert(const_iterator __position, initializer_list<value_type> __l)
1060:/usr/include/c++/7/bits/stl_vector.h ****       {
1061:/usr/include/c++/7/bits/stl_vector.h **** 	auto __offset = __position - cbegin();
1062:/usr/include/c++/7/bits/stl_vector.h **** 	_M_range_insert(begin() + __offset, __l.begin(), __l.end(),
1063:/usr/include/c++/7/bits/stl_vector.h **** 			std::random_access_iterator_tag());
1064:/usr/include/c++/7/bits/stl_vector.h **** 	return begin() + __offset;
1065:/usr/include/c++/7/bits/stl_vector.h ****       }
1066:/usr/include/c++/7/bits/stl_vector.h **** #endif
1067:/usr/include/c++/7/bits/stl_vector.h **** 
1068:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
1069:/usr/include/c++/7/bits/stl_vector.h ****       /**
1070:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Inserts a number of copies of given data into the %vector.
1071:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __position  A const_iterator into the %vector.
1072:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __n  Number of elements to be inserted.
1073:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __x  Data to be inserted.
1074:/usr/include/c++/7/bits/stl_vector.h ****        *  @return  An iterator that points to the inserted data.
1075:/usr/include/c++/7/bits/stl_vector.h ****        *
1076:/usr/include/c++/7/bits/stl_vector.h ****        *  This function will insert a specified number of copies of
1077:/usr/include/c++/7/bits/stl_vector.h ****        *  the given data before the location specified by @a position.
1078:/usr/include/c++/7/bits/stl_vector.h ****        *
1079:/usr/include/c++/7/bits/stl_vector.h ****        *  Note that this kind of operation could be expensive for a
1080:/usr/include/c++/7/bits/stl_vector.h ****        *  %vector and if it is frequently used the user should
1081:/usr/include/c++/7/bits/stl_vector.h ****        *  consider using std::list.
1082:/usr/include/c++/7/bits/stl_vector.h ****        */
1083:/usr/include/c++/7/bits/stl_vector.h ****       iterator
1084:/usr/include/c++/7/bits/stl_vector.h ****       insert(const_iterator __position, size_type __n, const value_type& __x)
1085:/usr/include/c++/7/bits/stl_vector.h ****       {
1086:/usr/include/c++/7/bits/stl_vector.h **** 	difference_type __offset = __position - cbegin();
1087:/usr/include/c++/7/bits/stl_vector.h **** 	_M_fill_insert(begin() + __offset, __n, __x);
1088:/usr/include/c++/7/bits/stl_vector.h **** 	return begin() + __offset;
1089:/usr/include/c++/7/bits/stl_vector.h ****       }
1090:/usr/include/c++/7/bits/stl_vector.h **** #else
1091:/usr/include/c++/7/bits/stl_vector.h ****       /**
1092:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Inserts a number of copies of given data into the %vector.
1093:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __position  An iterator into the %vector.
1094:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __n  Number of elements to be inserted.
1095:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __x  Data to be inserted.
1096:/usr/include/c++/7/bits/stl_vector.h ****        *
1097:/usr/include/c++/7/bits/stl_vector.h ****        *  This function will insert a specified number of copies of
1098:/usr/include/c++/7/bits/stl_vector.h ****        *  the given data before the location specified by @a position.
1099:/usr/include/c++/7/bits/stl_vector.h ****        *
1100:/usr/include/c++/7/bits/stl_vector.h ****        *  Note that this kind of operation could be expensive for a
1101:/usr/include/c++/7/bits/stl_vector.h ****        *  %vector and if it is frequently used the user should
1102:/usr/include/c++/7/bits/stl_vector.h ****        *  consider using std::list.
1103:/usr/include/c++/7/bits/stl_vector.h ****        */
1104:/usr/include/c++/7/bits/stl_vector.h ****       void
1105:/usr/include/c++/7/bits/stl_vector.h ****       insert(iterator __position, size_type __n, const value_type& __x)
1106:/usr/include/c++/7/bits/stl_vector.h ****       { _M_fill_insert(__position, __n, __x); }
1107:/usr/include/c++/7/bits/stl_vector.h **** #endif
1108:/usr/include/c++/7/bits/stl_vector.h **** 
1109:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
1110:/usr/include/c++/7/bits/stl_vector.h ****       /**
1111:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Inserts a range into the %vector.
1112:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __position  A const_iterator into the %vector.
1113:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __first  An input iterator.
1114:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __last   An input iterator.
1115:/usr/include/c++/7/bits/stl_vector.h ****        *  @return  An iterator that points to the inserted data.
1116:/usr/include/c++/7/bits/stl_vector.h ****        *
1117:/usr/include/c++/7/bits/stl_vector.h ****        *  This function will insert copies of the data in the range
1118:/usr/include/c++/7/bits/stl_vector.h ****        *  [__first,__last) into the %vector before the location specified
1119:/usr/include/c++/7/bits/stl_vector.h ****        *  by @a pos.
1120:/usr/include/c++/7/bits/stl_vector.h ****        *
1121:/usr/include/c++/7/bits/stl_vector.h ****        *  Note that this kind of operation could be expensive for a
1122:/usr/include/c++/7/bits/stl_vector.h ****        *  %vector and if it is frequently used the user should
1123:/usr/include/c++/7/bits/stl_vector.h ****        *  consider using std::list.
1124:/usr/include/c++/7/bits/stl_vector.h ****        */
1125:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _InputIterator,
1126:/usr/include/c++/7/bits/stl_vector.h **** 	       typename = std::_RequireInputIter<_InputIterator>>
1127:/usr/include/c++/7/bits/stl_vector.h **** 	iterator
1128:/usr/include/c++/7/bits/stl_vector.h **** 	insert(const_iterator __position, _InputIterator __first,
1129:/usr/include/c++/7/bits/stl_vector.h **** 	       _InputIterator __last)
1130:/usr/include/c++/7/bits/stl_vector.h **** 	{
1131:/usr/include/c++/7/bits/stl_vector.h **** 	  difference_type __offset = __position - cbegin();
1132:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_insert_dispatch(begin() + __offset,
1133:/usr/include/c++/7/bits/stl_vector.h **** 			     __first, __last, __false_type());
1134:/usr/include/c++/7/bits/stl_vector.h **** 	  return begin() + __offset;
1135:/usr/include/c++/7/bits/stl_vector.h **** 	}
1136:/usr/include/c++/7/bits/stl_vector.h **** #else
1137:/usr/include/c++/7/bits/stl_vector.h ****       /**
1138:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Inserts a range into the %vector.
1139:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __position  An iterator into the %vector.
1140:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __first  An input iterator.
1141:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __last   An input iterator.
1142:/usr/include/c++/7/bits/stl_vector.h ****        *
1143:/usr/include/c++/7/bits/stl_vector.h ****        *  This function will insert copies of the data in the range
1144:/usr/include/c++/7/bits/stl_vector.h ****        *  [__first,__last) into the %vector before the location specified
1145:/usr/include/c++/7/bits/stl_vector.h ****        *  by @a pos.
1146:/usr/include/c++/7/bits/stl_vector.h ****        *
1147:/usr/include/c++/7/bits/stl_vector.h ****        *  Note that this kind of operation could be expensive for a
1148:/usr/include/c++/7/bits/stl_vector.h ****        *  %vector and if it is frequently used the user should
1149:/usr/include/c++/7/bits/stl_vector.h ****        *  consider using std::list.
1150:/usr/include/c++/7/bits/stl_vector.h ****        */
1151:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _InputIterator>
1152:/usr/include/c++/7/bits/stl_vector.h **** 	void
1153:/usr/include/c++/7/bits/stl_vector.h **** 	insert(iterator __position, _InputIterator __first,
1154:/usr/include/c++/7/bits/stl_vector.h **** 	       _InputIterator __last)
1155:/usr/include/c++/7/bits/stl_vector.h **** 	{
1156:/usr/include/c++/7/bits/stl_vector.h **** 	  // Check whether it's an integral type.  If so, it's not an iterator.
1157:/usr/include/c++/7/bits/stl_vector.h **** 	  typedef typename std::__is_integer<_InputIterator>::__type _Integral;
1158:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_insert_dispatch(__position, __first, __last, _Integral());
1159:/usr/include/c++/7/bits/stl_vector.h **** 	}
1160:/usr/include/c++/7/bits/stl_vector.h **** #endif
1161:/usr/include/c++/7/bits/stl_vector.h **** 
1162:/usr/include/c++/7/bits/stl_vector.h ****       /**
1163:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Remove element at given position.
1164:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __position  Iterator pointing to element to be erased.
1165:/usr/include/c++/7/bits/stl_vector.h ****        *  @return  An iterator pointing to the next element (or end()).
1166:/usr/include/c++/7/bits/stl_vector.h ****        *
1167:/usr/include/c++/7/bits/stl_vector.h ****        *  This function will erase the element at the given position and thus
1168:/usr/include/c++/7/bits/stl_vector.h ****        *  shorten the %vector by one.
1169:/usr/include/c++/7/bits/stl_vector.h ****        *
1170:/usr/include/c++/7/bits/stl_vector.h ****        *  Note This operation could be expensive and if it is
1171:/usr/include/c++/7/bits/stl_vector.h ****        *  frequently used the user should consider using std::list.
1172:/usr/include/c++/7/bits/stl_vector.h ****        *  The user is also cautioned that this function only erases
1173:/usr/include/c++/7/bits/stl_vector.h ****        *  the element, and that if the element is itself a pointer,
1174:/usr/include/c++/7/bits/stl_vector.h ****        *  the pointed-to memory is not touched in any way.  Managing
1175:/usr/include/c++/7/bits/stl_vector.h ****        *  the pointer is the user's responsibility.
1176:/usr/include/c++/7/bits/stl_vector.h ****        */
1177:/usr/include/c++/7/bits/stl_vector.h ****       iterator
1178:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
1179:/usr/include/c++/7/bits/stl_vector.h ****       erase(const_iterator __position)
1180:/usr/include/c++/7/bits/stl_vector.h ****       { return _M_erase(begin() + (__position - cbegin())); }
1181:/usr/include/c++/7/bits/stl_vector.h **** #else
1182:/usr/include/c++/7/bits/stl_vector.h ****       erase(iterator __position)
1183:/usr/include/c++/7/bits/stl_vector.h ****       { return _M_erase(__position); }
1184:/usr/include/c++/7/bits/stl_vector.h **** #endif
1185:/usr/include/c++/7/bits/stl_vector.h **** 
1186:/usr/include/c++/7/bits/stl_vector.h ****       /**
1187:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Remove a range of elements.
1188:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __first  Iterator pointing to the first element to be erased.
1189:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __last  Iterator pointing to one past the last element to be
1190:/usr/include/c++/7/bits/stl_vector.h ****        *                  erased.
1191:/usr/include/c++/7/bits/stl_vector.h ****        *  @return  An iterator pointing to the element pointed to by @a __last
1192:/usr/include/c++/7/bits/stl_vector.h ****        *           prior to erasing (or end()).
1193:/usr/include/c++/7/bits/stl_vector.h ****        *
1194:/usr/include/c++/7/bits/stl_vector.h ****        *  This function will erase the elements in the range
1195:/usr/include/c++/7/bits/stl_vector.h ****        *  [__first,__last) and shorten the %vector accordingly.
1196:/usr/include/c++/7/bits/stl_vector.h ****        *
1197:/usr/include/c++/7/bits/stl_vector.h ****        *  Note This operation could be expensive and if it is
1198:/usr/include/c++/7/bits/stl_vector.h ****        *  frequently used the user should consider using std::list.
1199:/usr/include/c++/7/bits/stl_vector.h ****        *  The user is also cautioned that this function only erases
1200:/usr/include/c++/7/bits/stl_vector.h ****        *  the elements, and that if the elements themselves are
1201:/usr/include/c++/7/bits/stl_vector.h ****        *  pointers, the pointed-to memory is not touched in any way.
1202:/usr/include/c++/7/bits/stl_vector.h ****        *  Managing the pointer is the user's responsibility.
1203:/usr/include/c++/7/bits/stl_vector.h ****        */
1204:/usr/include/c++/7/bits/stl_vector.h ****       iterator
1205:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
1206:/usr/include/c++/7/bits/stl_vector.h ****       erase(const_iterator __first, const_iterator __last)
1207:/usr/include/c++/7/bits/stl_vector.h ****       {
1208:/usr/include/c++/7/bits/stl_vector.h **** 	const auto __beg = begin();
1209:/usr/include/c++/7/bits/stl_vector.h **** 	const auto __cbeg = cbegin();
1210:/usr/include/c++/7/bits/stl_vector.h **** 	return _M_erase(__beg + (__first - __cbeg), __beg + (__last - __cbeg));
1211:/usr/include/c++/7/bits/stl_vector.h ****       }
1212:/usr/include/c++/7/bits/stl_vector.h **** #else
1213:/usr/include/c++/7/bits/stl_vector.h ****       erase(iterator __first, iterator __last)
1214:/usr/include/c++/7/bits/stl_vector.h ****       { return _M_erase(__first, __last); }
1215:/usr/include/c++/7/bits/stl_vector.h **** #endif
1216:/usr/include/c++/7/bits/stl_vector.h **** 
1217:/usr/include/c++/7/bits/stl_vector.h ****       /**
1218:/usr/include/c++/7/bits/stl_vector.h ****        *  @brief  Swaps data with another %vector.
1219:/usr/include/c++/7/bits/stl_vector.h ****        *  @param  __x  A %vector of the same element and allocator types.
1220:/usr/include/c++/7/bits/stl_vector.h ****        *
1221:/usr/include/c++/7/bits/stl_vector.h ****        *  This exchanges the elements between two vectors in constant time.
1222:/usr/include/c++/7/bits/stl_vector.h ****        *  (Three pointers, so it should be quite fast.)
1223:/usr/include/c++/7/bits/stl_vector.h ****        *  Note that the global std::swap() function is specialized such that
1224:/usr/include/c++/7/bits/stl_vector.h ****        *  std::swap(v1,v2) will feed to this function.
1225:/usr/include/c++/7/bits/stl_vector.h ****        *
1226:/usr/include/c++/7/bits/stl_vector.h ****        *  Whether the allocators are swapped depends on the allocator traits.
1227:/usr/include/c++/7/bits/stl_vector.h ****        */
1228:/usr/include/c++/7/bits/stl_vector.h ****       void
1229:/usr/include/c++/7/bits/stl_vector.h ****       swap(vector& __x) _GLIBCXX_NOEXCEPT
1230:/usr/include/c++/7/bits/stl_vector.h ****       {
1231:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
1232:/usr/include/c++/7/bits/stl_vector.h **** 	__glibcxx_assert(_Alloc_traits::propagate_on_container_swap::value
1233:/usr/include/c++/7/bits/stl_vector.h **** 			 || _M_get_Tp_allocator() == __x._M_get_Tp_allocator());
1234:/usr/include/c++/7/bits/stl_vector.h **** #endif
1235:/usr/include/c++/7/bits/stl_vector.h **** 	this->_M_impl._M_swap_data(__x._M_impl);
1236:/usr/include/c++/7/bits/stl_vector.h **** 	_Alloc_traits::_S_on_swap(_M_get_Tp_allocator(),
1237:/usr/include/c++/7/bits/stl_vector.h **** 				  __x._M_get_Tp_allocator());
1238:/usr/include/c++/7/bits/stl_vector.h ****       }
1239:/usr/include/c++/7/bits/stl_vector.h **** 
1240:/usr/include/c++/7/bits/stl_vector.h ****       /**
1241:/usr/include/c++/7/bits/stl_vector.h ****        *  Erases all the elements.  Note that this function only erases the
1242:/usr/include/c++/7/bits/stl_vector.h ****        *  elements, and that if the elements themselves are pointers, the
1243:/usr/include/c++/7/bits/stl_vector.h ****        *  pointed-to memory is not touched in any way.  Managing the pointer is
1244:/usr/include/c++/7/bits/stl_vector.h ****        *  the user's responsibility.
1245:/usr/include/c++/7/bits/stl_vector.h ****        */
1246:/usr/include/c++/7/bits/stl_vector.h ****       void
1247:/usr/include/c++/7/bits/stl_vector.h ****       clear() _GLIBCXX_NOEXCEPT
1248:/usr/include/c++/7/bits/stl_vector.h ****       { _M_erase_at_end(this->_M_impl._M_start); }
1249:/usr/include/c++/7/bits/stl_vector.h **** 
1250:/usr/include/c++/7/bits/stl_vector.h ****     protected:
1251:/usr/include/c++/7/bits/stl_vector.h ****       /**
1252:/usr/include/c++/7/bits/stl_vector.h ****        *  Memory expansion handler.  Uses the member allocation function to
1253:/usr/include/c++/7/bits/stl_vector.h ****        *  obtain @a n bytes of memory, and then copies [first,last) into it.
1254:/usr/include/c++/7/bits/stl_vector.h ****        */
1255:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _ForwardIterator>
1256:/usr/include/c++/7/bits/stl_vector.h **** 	pointer
1257:/usr/include/c++/7/bits/stl_vector.h **** 	_M_allocate_and_copy(size_type __n,
1258:/usr/include/c++/7/bits/stl_vector.h **** 			     _ForwardIterator __first, _ForwardIterator __last)
1259:/usr/include/c++/7/bits/stl_vector.h **** 	{
1260:/usr/include/c++/7/bits/stl_vector.h **** 	  pointer __result = this->_M_allocate(__n);
1261:/usr/include/c++/7/bits/stl_vector.h **** 	  __try
1262:/usr/include/c++/7/bits/stl_vector.h **** 	    {
1263:/usr/include/c++/7/bits/stl_vector.h **** 	      std::__uninitialized_copy_a(__first, __last, __result,
1264:/usr/include/c++/7/bits/stl_vector.h **** 					  _M_get_Tp_allocator());
1265:/usr/include/c++/7/bits/stl_vector.h **** 	      return __result;
1266:/usr/include/c++/7/bits/stl_vector.h **** 	    }
1267:/usr/include/c++/7/bits/stl_vector.h **** 	  __catch(...)
1268:/usr/include/c++/7/bits/stl_vector.h **** 	    {
1269:/usr/include/c++/7/bits/stl_vector.h **** 	      _M_deallocate(__result, __n);
1270:/usr/include/c++/7/bits/stl_vector.h **** 	      __throw_exception_again;
1271:/usr/include/c++/7/bits/stl_vector.h **** 	    }
1272:/usr/include/c++/7/bits/stl_vector.h **** 	}
1273:/usr/include/c++/7/bits/stl_vector.h **** 
1274:/usr/include/c++/7/bits/stl_vector.h **** 
1275:/usr/include/c++/7/bits/stl_vector.h ****       // Internal constructor functions follow.
1276:/usr/include/c++/7/bits/stl_vector.h **** 
1277:/usr/include/c++/7/bits/stl_vector.h ****       // Called by the range constructor to implement [23.1.1]/9
1278:/usr/include/c++/7/bits/stl_vector.h **** 
1279:/usr/include/c++/7/bits/stl_vector.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
1280:/usr/include/c++/7/bits/stl_vector.h ****       // 438. Ambiguity in the "do the right thing" clause
1281:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _Integer>
1282:/usr/include/c++/7/bits/stl_vector.h **** 	void
1283:/usr/include/c++/7/bits/stl_vector.h **** 	_M_initialize_dispatch(_Integer __n, _Integer __value, __true_type)
1284:/usr/include/c++/7/bits/stl_vector.h **** 	{
1285:/usr/include/c++/7/bits/stl_vector.h **** 	  this->_M_impl._M_start = _M_allocate(static_cast<size_type>(__n));
1286:/usr/include/c++/7/bits/stl_vector.h **** 	  this->_M_impl._M_end_of_storage =
1287:/usr/include/c++/7/bits/stl_vector.h **** 	    this->_M_impl._M_start + static_cast<size_type>(__n);
1288:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_fill_initialize(static_cast<size_type>(__n), __value);
1289:/usr/include/c++/7/bits/stl_vector.h **** 	}
1290:/usr/include/c++/7/bits/stl_vector.h **** 
1291:/usr/include/c++/7/bits/stl_vector.h ****       // Called by the range constructor to implement [23.1.1]/9
1292:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _InputIterator>
1293:/usr/include/c++/7/bits/stl_vector.h **** 	void
1294:/usr/include/c++/7/bits/stl_vector.h **** 	_M_initialize_dispatch(_InputIterator __first, _InputIterator __last,
1295:/usr/include/c++/7/bits/stl_vector.h **** 			       __false_type)
1296:/usr/include/c++/7/bits/stl_vector.h **** 	{
1297:/usr/include/c++/7/bits/stl_vector.h **** 	  typedef typename std::iterator_traits<_InputIterator>::
1298:/usr/include/c++/7/bits/stl_vector.h **** 	    iterator_category _IterCategory;
1299:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_range_initialize(__first, __last, _IterCategory());
1300:/usr/include/c++/7/bits/stl_vector.h **** 	}
1301:/usr/include/c++/7/bits/stl_vector.h **** 
1302:/usr/include/c++/7/bits/stl_vector.h ****       // Called by the second initialize_dispatch above
1303:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _InputIterator>
1304:/usr/include/c++/7/bits/stl_vector.h **** 	void
1305:/usr/include/c++/7/bits/stl_vector.h **** 	_M_range_initialize(_InputIterator __first,
1306:/usr/include/c++/7/bits/stl_vector.h **** 			    _InputIterator __last, std::input_iterator_tag)
1307:/usr/include/c++/7/bits/stl_vector.h **** 	{
1308:/usr/include/c++/7/bits/stl_vector.h **** 	  for (; __first != __last; ++__first)
1309:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
1310:/usr/include/c++/7/bits/stl_vector.h **** 	    emplace_back(*__first);
1311:/usr/include/c++/7/bits/stl_vector.h **** #else
1312:/usr/include/c++/7/bits/stl_vector.h **** 	    push_back(*__first);
1313:/usr/include/c++/7/bits/stl_vector.h **** #endif
1314:/usr/include/c++/7/bits/stl_vector.h **** 	}
1315:/usr/include/c++/7/bits/stl_vector.h **** 
1316:/usr/include/c++/7/bits/stl_vector.h ****       // Called by the second initialize_dispatch above
1317:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _ForwardIterator>
1318:/usr/include/c++/7/bits/stl_vector.h **** 	void
1319:/usr/include/c++/7/bits/stl_vector.h **** 	_M_range_initialize(_ForwardIterator __first,
1320:/usr/include/c++/7/bits/stl_vector.h **** 			    _ForwardIterator __last, std::forward_iterator_tag)
1321:/usr/include/c++/7/bits/stl_vector.h **** 	{
1322:/usr/include/c++/7/bits/stl_vector.h **** 	  const size_type __n = std::distance(__first, __last);
1323:/usr/include/c++/7/bits/stl_vector.h **** 	  this->_M_impl._M_start = this->_M_allocate(__n);
1324:/usr/include/c++/7/bits/stl_vector.h **** 	  this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
1325:/usr/include/c++/7/bits/stl_vector.h **** 	  this->_M_impl._M_finish =
1326:/usr/include/c++/7/bits/stl_vector.h **** 	    std::__uninitialized_copy_a(__first, __last,
1327:/usr/include/c++/7/bits/stl_vector.h **** 					this->_M_impl._M_start,
1328:/usr/include/c++/7/bits/stl_vector.h **** 					_M_get_Tp_allocator());
1329:/usr/include/c++/7/bits/stl_vector.h **** 	}
1330:/usr/include/c++/7/bits/stl_vector.h **** 
1331:/usr/include/c++/7/bits/stl_vector.h ****       // Called by the first initialize_dispatch above and by the
1332:/usr/include/c++/7/bits/stl_vector.h ****       // vector(n,value,a) constructor.
1333:/usr/include/c++/7/bits/stl_vector.h ****       void
1334:/usr/include/c++/7/bits/stl_vector.h ****       _M_fill_initialize(size_type __n, const value_type& __value)
1335:/usr/include/c++/7/bits/stl_vector.h ****       {
1336:/usr/include/c++/7/bits/stl_vector.h **** 	this->_M_impl._M_finish =
1337:/usr/include/c++/7/bits/stl_vector.h **** 	  std::__uninitialized_fill_n_a(this->_M_impl._M_start, __n, __value,
1338:/usr/include/c++/7/bits/stl_vector.h **** 					_M_get_Tp_allocator());
1339:/usr/include/c++/7/bits/stl_vector.h ****       }
1340:/usr/include/c++/7/bits/stl_vector.h **** 
1341:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
1342:/usr/include/c++/7/bits/stl_vector.h ****       // Called by the vector(n) constructor.
1343:/usr/include/c++/7/bits/stl_vector.h ****       void
1344:/usr/include/c++/7/bits/stl_vector.h ****       _M_default_initialize(size_type __n)
1345:/usr/include/c++/7/bits/stl_vector.h ****       {
1346:/usr/include/c++/7/bits/stl_vector.h **** 	this->_M_impl._M_finish =
1347:/usr/include/c++/7/bits/stl_vector.h **** 	  std::__uninitialized_default_n_a(this->_M_impl._M_start, __n,
1348:/usr/include/c++/7/bits/stl_vector.h **** 					   _M_get_Tp_allocator());
1349:/usr/include/c++/7/bits/stl_vector.h ****       }
1350:/usr/include/c++/7/bits/stl_vector.h **** #endif
1351:/usr/include/c++/7/bits/stl_vector.h **** 
1352:/usr/include/c++/7/bits/stl_vector.h ****       // Internal assign functions follow.  The *_aux functions do the actual
1353:/usr/include/c++/7/bits/stl_vector.h ****       // assignment work for the range versions.
1354:/usr/include/c++/7/bits/stl_vector.h **** 
1355:/usr/include/c++/7/bits/stl_vector.h ****       // Called by the range assign to implement [23.1.1]/9
1356:/usr/include/c++/7/bits/stl_vector.h **** 
1357:/usr/include/c++/7/bits/stl_vector.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
1358:/usr/include/c++/7/bits/stl_vector.h ****       // 438. Ambiguity in the "do the right thing" clause
1359:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _Integer>
1360:/usr/include/c++/7/bits/stl_vector.h **** 	void
1361:/usr/include/c++/7/bits/stl_vector.h **** 	_M_assign_dispatch(_Integer __n, _Integer __val, __true_type)
1362:/usr/include/c++/7/bits/stl_vector.h **** 	{ _M_fill_assign(__n, __val); }
1363:/usr/include/c++/7/bits/stl_vector.h **** 
1364:/usr/include/c++/7/bits/stl_vector.h ****       // Called by the range assign to implement [23.1.1]/9
1365:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _InputIterator>
1366:/usr/include/c++/7/bits/stl_vector.h **** 	void
1367:/usr/include/c++/7/bits/stl_vector.h **** 	_M_assign_dispatch(_InputIterator __first, _InputIterator __last,
1368:/usr/include/c++/7/bits/stl_vector.h **** 			   __false_type)
1369:/usr/include/c++/7/bits/stl_vector.h **** 	{ _M_assign_aux(__first, __last, std::__iterator_category(__first)); }
1370:/usr/include/c++/7/bits/stl_vector.h **** 
1371:/usr/include/c++/7/bits/stl_vector.h ****       // Called by the second assign_dispatch above
1372:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _InputIterator>
1373:/usr/include/c++/7/bits/stl_vector.h **** 	void
1374:/usr/include/c++/7/bits/stl_vector.h **** 	_M_assign_aux(_InputIterator __first, _InputIterator __last,
1375:/usr/include/c++/7/bits/stl_vector.h **** 		      std::input_iterator_tag);
1376:/usr/include/c++/7/bits/stl_vector.h **** 
1377:/usr/include/c++/7/bits/stl_vector.h ****       // Called by the second assign_dispatch above
1378:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _ForwardIterator>
1379:/usr/include/c++/7/bits/stl_vector.h **** 	void
1380:/usr/include/c++/7/bits/stl_vector.h **** 	_M_assign_aux(_ForwardIterator __first, _ForwardIterator __last,
1381:/usr/include/c++/7/bits/stl_vector.h **** 		      std::forward_iterator_tag);
1382:/usr/include/c++/7/bits/stl_vector.h **** 
1383:/usr/include/c++/7/bits/stl_vector.h ****       // Called by assign(n,t), and the range assign when it turns out
1384:/usr/include/c++/7/bits/stl_vector.h ****       // to be the same thing.
1385:/usr/include/c++/7/bits/stl_vector.h ****       void
1386:/usr/include/c++/7/bits/stl_vector.h ****       _M_fill_assign(size_type __n, const value_type& __val);
1387:/usr/include/c++/7/bits/stl_vector.h **** 
1388:/usr/include/c++/7/bits/stl_vector.h ****       // Internal insert functions follow.
1389:/usr/include/c++/7/bits/stl_vector.h **** 
1390:/usr/include/c++/7/bits/stl_vector.h ****       // Called by the range insert to implement [23.1.1]/9
1391:/usr/include/c++/7/bits/stl_vector.h **** 
1392:/usr/include/c++/7/bits/stl_vector.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
1393:/usr/include/c++/7/bits/stl_vector.h ****       // 438. Ambiguity in the "do the right thing" clause
1394:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _Integer>
1395:/usr/include/c++/7/bits/stl_vector.h **** 	void
1396:/usr/include/c++/7/bits/stl_vector.h **** 	_M_insert_dispatch(iterator __pos, _Integer __n, _Integer __val,
1397:/usr/include/c++/7/bits/stl_vector.h **** 			   __true_type)
1398:/usr/include/c++/7/bits/stl_vector.h **** 	{ _M_fill_insert(__pos, __n, __val); }
1399:/usr/include/c++/7/bits/stl_vector.h **** 
1400:/usr/include/c++/7/bits/stl_vector.h ****       // Called by the range insert to implement [23.1.1]/9
1401:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _InputIterator>
1402:/usr/include/c++/7/bits/stl_vector.h **** 	void
1403:/usr/include/c++/7/bits/stl_vector.h **** 	_M_insert_dispatch(iterator __pos, _InputIterator __first,
1404:/usr/include/c++/7/bits/stl_vector.h **** 			   _InputIterator __last, __false_type)
1405:/usr/include/c++/7/bits/stl_vector.h **** 	{
1406:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_range_insert(__pos, __first, __last,
1407:/usr/include/c++/7/bits/stl_vector.h **** 			  std::__iterator_category(__first));
1408:/usr/include/c++/7/bits/stl_vector.h **** 	}
1409:/usr/include/c++/7/bits/stl_vector.h **** 
1410:/usr/include/c++/7/bits/stl_vector.h ****       // Called by the second insert_dispatch above
1411:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _InputIterator>
1412:/usr/include/c++/7/bits/stl_vector.h **** 	void
1413:/usr/include/c++/7/bits/stl_vector.h **** 	_M_range_insert(iterator __pos, _InputIterator __first,
1414:/usr/include/c++/7/bits/stl_vector.h **** 			_InputIterator __last, std::input_iterator_tag);
1415:/usr/include/c++/7/bits/stl_vector.h **** 
1416:/usr/include/c++/7/bits/stl_vector.h ****       // Called by the second insert_dispatch above
1417:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _ForwardIterator>
1418:/usr/include/c++/7/bits/stl_vector.h **** 	void
1419:/usr/include/c++/7/bits/stl_vector.h **** 	_M_range_insert(iterator __pos, _ForwardIterator __first,
1420:/usr/include/c++/7/bits/stl_vector.h **** 			_ForwardIterator __last, std::forward_iterator_tag);
1421:/usr/include/c++/7/bits/stl_vector.h **** 
1422:/usr/include/c++/7/bits/stl_vector.h ****       // Called by insert(p,n,x), and the range insert when it turns out to be
1423:/usr/include/c++/7/bits/stl_vector.h ****       // the same thing.
1424:/usr/include/c++/7/bits/stl_vector.h ****       void
1425:/usr/include/c++/7/bits/stl_vector.h ****       _M_fill_insert(iterator __pos, size_type __n, const value_type& __x);
1426:/usr/include/c++/7/bits/stl_vector.h **** 
1427:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
1428:/usr/include/c++/7/bits/stl_vector.h ****       // Called by resize(n).
1429:/usr/include/c++/7/bits/stl_vector.h ****       void
1430:/usr/include/c++/7/bits/stl_vector.h ****       _M_default_append(size_type __n);
1431:/usr/include/c++/7/bits/stl_vector.h **** 
1432:/usr/include/c++/7/bits/stl_vector.h ****       bool
1433:/usr/include/c++/7/bits/stl_vector.h ****       _M_shrink_to_fit();
1434:/usr/include/c++/7/bits/stl_vector.h **** #endif
1435:/usr/include/c++/7/bits/stl_vector.h **** 
1436:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus < 201103L
1437:/usr/include/c++/7/bits/stl_vector.h ****       // Called by insert(p,x)
1438:/usr/include/c++/7/bits/stl_vector.h ****       void
1439:/usr/include/c++/7/bits/stl_vector.h ****       _M_insert_aux(iterator __position, const value_type& __x);
1440:/usr/include/c++/7/bits/stl_vector.h **** 
1441:/usr/include/c++/7/bits/stl_vector.h ****       void
1442:/usr/include/c++/7/bits/stl_vector.h ****       _M_realloc_insert(iterator __position, const value_type& __x);
1443:/usr/include/c++/7/bits/stl_vector.h **** #else
1444:/usr/include/c++/7/bits/stl_vector.h ****       // A value_type object constructed with _Alloc_traits::construct()
1445:/usr/include/c++/7/bits/stl_vector.h ****       // and destroyed with _Alloc_traits::destroy().
1446:/usr/include/c++/7/bits/stl_vector.h ****       struct _Temporary_value
1447:/usr/include/c++/7/bits/stl_vector.h ****       {
1448:/usr/include/c++/7/bits/stl_vector.h **** 	template<typename... _Args>
1449:/usr/include/c++/7/bits/stl_vector.h **** 	  explicit
1450:/usr/include/c++/7/bits/stl_vector.h **** 	  _Temporary_value(vector* __vec, _Args&&... __args) : _M_this(__vec)
1451:/usr/include/c++/7/bits/stl_vector.h **** 	  {
1452:/usr/include/c++/7/bits/stl_vector.h **** 	    _Alloc_traits::construct(_M_this->_M_impl, _M_ptr(),
1453:/usr/include/c++/7/bits/stl_vector.h **** 				     std::forward<_Args>(__args)...);
1454:/usr/include/c++/7/bits/stl_vector.h **** 	  }
1455:/usr/include/c++/7/bits/stl_vector.h **** 
1456:/usr/include/c++/7/bits/stl_vector.h **** 	~_Temporary_value()
1457:/usr/include/c++/7/bits/stl_vector.h **** 	{ _Alloc_traits::destroy(_M_this->_M_impl, _M_ptr()); }
1458:/usr/include/c++/7/bits/stl_vector.h **** 
1459:/usr/include/c++/7/bits/stl_vector.h **** 	value_type&
1460:/usr/include/c++/7/bits/stl_vector.h **** 	_M_val() { return *reinterpret_cast<_Tp*>(&__buf); }
1461:/usr/include/c++/7/bits/stl_vector.h **** 
1462:/usr/include/c++/7/bits/stl_vector.h ****       private:
1463:/usr/include/c++/7/bits/stl_vector.h **** 	pointer
1464:/usr/include/c++/7/bits/stl_vector.h **** 	_M_ptr() { return pointer_traits<pointer>::pointer_to(_M_val()); }
1465:/usr/include/c++/7/bits/stl_vector.h **** 
1466:/usr/include/c++/7/bits/stl_vector.h **** 	vector* _M_this;
1467:/usr/include/c++/7/bits/stl_vector.h **** 	typename aligned_storage<sizeof(_Tp), alignof(_Tp)>::type __buf;
1468:/usr/include/c++/7/bits/stl_vector.h ****       };
1469:/usr/include/c++/7/bits/stl_vector.h **** 
1470:/usr/include/c++/7/bits/stl_vector.h ****       // Called by insert(p,x) and other functions when insertion needs to
1471:/usr/include/c++/7/bits/stl_vector.h ****       // reallocate or move existing elements. _Arg is either _Tp& or _Tp.
1472:/usr/include/c++/7/bits/stl_vector.h ****       template<typename _Arg>
1473:/usr/include/c++/7/bits/stl_vector.h **** 	void
1474:/usr/include/c++/7/bits/stl_vector.h **** 	_M_insert_aux(iterator __position, _Arg&& __arg);
1475:/usr/include/c++/7/bits/stl_vector.h **** 
1476:/usr/include/c++/7/bits/stl_vector.h ****       template<typename... _Args>
1477:/usr/include/c++/7/bits/stl_vector.h **** 	void
1478:/usr/include/c++/7/bits/stl_vector.h **** 	_M_realloc_insert(iterator __position, _Args&&... __args);
1479:/usr/include/c++/7/bits/stl_vector.h **** 
1480:/usr/include/c++/7/bits/stl_vector.h ****       // Either move-construct at the end, or forward to _M_insert_aux.
1481:/usr/include/c++/7/bits/stl_vector.h ****       iterator
1482:/usr/include/c++/7/bits/stl_vector.h ****       _M_insert_rval(const_iterator __position, value_type&& __v);
1483:/usr/include/c++/7/bits/stl_vector.h **** 
1484:/usr/include/c++/7/bits/stl_vector.h ****       // Try to emplace at the end, otherwise forward to _M_insert_aux.
1485:/usr/include/c++/7/bits/stl_vector.h ****       template<typename... _Args>
1486:/usr/include/c++/7/bits/stl_vector.h **** 	iterator
1487:/usr/include/c++/7/bits/stl_vector.h **** 	_M_emplace_aux(const_iterator __position, _Args&&... __args);
1488:/usr/include/c++/7/bits/stl_vector.h **** 
1489:/usr/include/c++/7/bits/stl_vector.h ****       // Emplacing an rvalue of the correct type can use _M_insert_rval.
1490:/usr/include/c++/7/bits/stl_vector.h ****       iterator
1491:/usr/include/c++/7/bits/stl_vector.h ****       _M_emplace_aux(const_iterator __position, value_type&& __v)
1492:/usr/include/c++/7/bits/stl_vector.h ****       { return _M_insert_rval(__position, std::move(__v)); }
1493:/usr/include/c++/7/bits/stl_vector.h **** #endif
1494:/usr/include/c++/7/bits/stl_vector.h **** 
1495:/usr/include/c++/7/bits/stl_vector.h ****       // Called by _M_fill_insert, _M_insert_aux etc.
1496:/usr/include/c++/7/bits/stl_vector.h ****       size_type
1497:/usr/include/c++/7/bits/stl_vector.h ****       _M_check_len(size_type __n, const char* __s) const
1498:/usr/include/c++/7/bits/stl_vector.h ****       {
1499:/usr/include/c++/7/bits/stl_vector.h **** 	if (max_size() - size() < __n)
1500:/usr/include/c++/7/bits/stl_vector.h **** 	  __throw_length_error(__N(__s));
1501:/usr/include/c++/7/bits/stl_vector.h **** 
1502:/usr/include/c++/7/bits/stl_vector.h **** 	const size_type __len = size() + std::max(size(), __n);
1503:/usr/include/c++/7/bits/stl_vector.h **** 	return (__len < size() || __len > max_size()) ? max_size() : __len;
1504:/usr/include/c++/7/bits/stl_vector.h ****       }
1505:/usr/include/c++/7/bits/stl_vector.h **** 
1506:/usr/include/c++/7/bits/stl_vector.h ****       // Internal erase functions follow.
1507:/usr/include/c++/7/bits/stl_vector.h **** 
1508:/usr/include/c++/7/bits/stl_vector.h ****       // Called by erase(q1,q2), clear(), resize(), _M_fill_assign,
1509:/usr/include/c++/7/bits/stl_vector.h ****       // _M_assign_aux.
1510:/usr/include/c++/7/bits/stl_vector.h ****       void
1511:/usr/include/c++/7/bits/stl_vector.h ****       _M_erase_at_end(pointer __pos) _GLIBCXX_NOEXCEPT
 2484              		.loc 2 1511 0
 2485              		.cfi_startproc
 2486              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 2487              		.cfi_lsda 0x1b,.LLSDA2255
 2488 0000 55       		pushq	%rbp
 2489              		.cfi_def_cfa_offset 16
 2490              		.cfi_offset 6, -16
 2491 0001 4889E5   		movq	%rsp, %rbp
 2492              		.cfi_def_cfa_register 6
 2493 0004 4883EC10 		subq	$16, %rsp
 2494 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2495 000c 488975F0 		movq	%rsi, -16(%rbp)
1512:/usr/include/c++/7/bits/stl_vector.h ****       {
1513:/usr/include/c++/7/bits/stl_vector.h **** 	std::_Destroy(__pos, this->_M_impl._M_finish, _M_get_Tp_allocator());
 2496              		.loc 2 1513 0
 2497 0010 488B45F8 		movq	-8(%rbp), %rax
 2498 0014 4889C7   		movq	%rax, %rdi
 2499 0017 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2499      00
 2500 001c 4889C2   		movq	%rax, %rdx
 2501 001f 488B45F8 		movq	-8(%rbp), %rax
 2502 0023 488B4808 		movq	8(%rax), %rcx
 2503 0027 488B45F0 		movq	-16(%rbp), %rax
 2504 002b 4889CE   		movq	%rcx, %rsi
 2505 002e 4889C7   		movq	%rax, %rdi
 2506 0031 E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 2506      00
1514:/usr/include/c++/7/bits/stl_vector.h **** 	this->_M_impl._M_finish = __pos;
 2507              		.loc 2 1514 0
 2508 0036 488B45F8 		movq	-8(%rbp), %rax
 2509 003a 488B55F0 		movq	-16(%rbp), %rdx
 2510 003e 48895008 		movq	%rdx, 8(%rax)
1515:/usr/include/c++/7/bits/stl_vector.h ****       }
 2511              		.loc 2 1515 0
 2512 0042 90       		nop
 2513 0043 C9       		leave
 2514              		.cfi_def_cfa 7, 8
 2515 0044 C3       		ret
 2516              		.cfi_endproc
 2517              	.LFE2255:
 2518              		.section	.gcc_except_table
 2519              	.LLSDA2255:
 2520 00a4 FF       		.byte	0xff
 2521 00a5 FF       		.byte	0xff
 2522 00a6 01       		.byte	0x1
 2523 00a7 00       		.uleb128 .LLSDACSE2255-.LLSDACSB2255
 2524              	.LLSDACSB2255:
 2525              	.LLSDACSE2255:
 2526              		.section	.text._ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd,"axG",@progbits,_ZNSt6vectorIdSaIdEE15_M_e
 2528              		.section	.text._ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_,"axG",@progbits,_ZN9_
 2529              		.align 2
 2530              		.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
 2532              	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_:
 2533              	.LFB2266:
 779:/usr/include/c++/7/bits/stl_iterator.h ****       : _M_current(__i) { }
 2534              		.loc 3 779 0
 2535              		.cfi_startproc
 2536 0000 55       		pushq	%rbp
 2537              		.cfi_def_cfa_offset 16
 2538              		.cfi_offset 6, -16
 2539 0001 4889E5   		movq	%rsp, %rbp
 2540              		.cfi_def_cfa_register 6
 2541 0004 48897DF8 		movq	%rdi, -8(%rbp)
 2542 0008 488975F0 		movq	%rsi, -16(%rbp)
 2543              	.LBB37:
 780:/usr/include/c++/7/bits/stl_iterator.h **** 
 2544              		.loc 3 780 0
 2545 000c 488B45F0 		movq	-16(%rbp), %rax
 2546 0010 488B10   		movq	(%rax), %rdx
 2547 0013 488B45F8 		movq	-8(%rbp), %rax
 2548 0017 488910   		movq	%rdx, (%rax)
 2549              	.LBE37:
 2550 001a 90       		nop
 2551 001b 5D       		popq	%rbp
 2552              		.cfi_def_cfa 7, 8
 2553 001c C3       		ret
 2554              		.cfi_endproc
 2555              	.LFE2266:
 2557              		.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
 2558              		.set	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iterato
 2559              		.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv,"axG",@progbits,_ZNK9
 2560              		.align 2
 2561              		.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
 2563              	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv:
 2564              	.LFB2268:
 844:/usr/include/c++/7/bits/stl_iterator.h ****       { return _M_current; }
 2565              		.loc 3 844 0
 2566              		.cfi_startproc
 2567 0000 55       		pushq	%rbp
 2568              		.cfi_def_cfa_offset 16
 2569              		.cfi_offset 6, -16
 2570 0001 4889E5   		movq	%rsp, %rbp
 2571              		.cfi_def_cfa_register 6
 2572 0004 48897DF8 		movq	%rdi, -8(%rbp)
 845:/usr/include/c++/7/bits/stl_iterator.h ****     };
 2573              		.loc 3 845 0
 2574 0008 488B45F8 		movq	-8(%rbp), %rax
 2575 000c 5D       		popq	%rbp
 2576              		.cfi_def_cfa 7, 8
 2577 000d C3       		ret
 2578              		.cfi_endproc
 2579              	.LFE2268:
 2581              		.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseId
 2582              		.align 2
 2583              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
 2585              	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev:
 2586              	.LFB2296:
  88:/usr/include/c++/7/bits/stl_vector.h **** 	: _Tp_alloc_type(), _M_start(), _M_finish(), _M_end_of_storage()
 2587              		.loc 2 88 0
 2588              		.cfi_startproc
 2589 0000 55       		pushq	%rbp
 2590              		.cfi_def_cfa_offset 16
 2591              		.cfi_offset 6, -16
 2592 0001 4889E5   		movq	%rsp, %rbp
 2593              		.cfi_def_cfa_register 6
 2594 0004 4883EC10 		subq	$16, %rsp
 2595 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2596              	.LBB38:
  89:/usr/include/c++/7/bits/stl_vector.h **** 	{ }
 2597              		.loc 2 89 0
 2598 000c 488B45F8 		movq	-8(%rbp), %rax
 2599 0010 4889C7   		movq	%rax, %rdi
 2600 0013 E8000000 		call	_ZNSaIdEC2Ev
 2600      00
 2601 0018 488B45F8 		movq	-8(%rbp), %rax
 2602 001c 48C70000 		movq	$0, (%rax)
 2602      000000
 2603 0023 488B45F8 		movq	-8(%rbp), %rax
 2604 0027 48C74008 		movq	$0, 8(%rax)
 2604      00000000 
 2605 002f 488B45F8 		movq	-8(%rbp), %rax
 2606 0033 48C74010 		movq	$0, 16(%rax)
 2606      00000000 
 2607              	.LBE38:
  90:/usr/include/c++/7/bits/stl_vector.h **** 
 2608              		.loc 2 90 0
 2609 003b 90       		nop
 2610 003c C9       		leave
 2611              		.cfi_def_cfa 7, 8
 2612 003d C3       		ret
 2613              		.cfi_endproc
 2614              	.LFE2296:
 2616              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
 2617              		.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
 2618              		.section	.text._ZNSaIdED2Ev,"axG",@progbits,_ZNSaIdED5Ev,comdat
 2619              		.align 2
 2620              		.weak	_ZNSaIdED2Ev
 2622              	_ZNSaIdED2Ev:
 2623              	.LFB2299:
 2624              		.file 6 "/usr/include/c++/7/bits/allocator.h"
   1:/usr/include/c++/7/bits/allocator.h **** // Allocators -*- C++ -*-
   2:/usr/include/c++/7/bits/allocator.h **** 
   3:/usr/include/c++/7/bits/allocator.h **** // Copyright (C) 2001-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/allocator.h **** //
   5:/usr/include/c++/7/bits/allocator.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/allocator.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/allocator.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/allocator.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/allocator.h **** // any later version.
  10:/usr/include/c++/7/bits/allocator.h **** 
  11:/usr/include/c++/7/bits/allocator.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/allocator.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/allocator.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/allocator.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/allocator.h **** 
  16:/usr/include/c++/7/bits/allocator.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/allocator.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/allocator.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/allocator.h **** 
  20:/usr/include/c++/7/bits/allocator.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/allocator.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/allocator.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/allocator.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/allocator.h **** 
  25:/usr/include/c++/7/bits/allocator.h **** /*
  26:/usr/include/c++/7/bits/allocator.h ****  * Copyright (c) 1996-1997
  27:/usr/include/c++/7/bits/allocator.h ****  * Silicon Graphics Computer Systems, Inc.
  28:/usr/include/c++/7/bits/allocator.h ****  *
  29:/usr/include/c++/7/bits/allocator.h ****  * Permission to use, copy, modify, distribute and sell this software
  30:/usr/include/c++/7/bits/allocator.h ****  * and its documentation for any purpose is hereby granted without fee,
  31:/usr/include/c++/7/bits/allocator.h ****  * provided that the above copyright notice appear in all copies and
  32:/usr/include/c++/7/bits/allocator.h ****  * that both that copyright notice and this permission notice appear
  33:/usr/include/c++/7/bits/allocator.h ****  * in supporting documentation.  Silicon Graphics makes no
  34:/usr/include/c++/7/bits/allocator.h ****  * representations about the suitability of this software for any
  35:/usr/include/c++/7/bits/allocator.h ****  * purpose.  It is provided "as is" without express or implied warranty.
  36:/usr/include/c++/7/bits/allocator.h ****  */
  37:/usr/include/c++/7/bits/allocator.h **** 
  38:/usr/include/c++/7/bits/allocator.h **** /** @file bits/allocator.h
  39:/usr/include/c++/7/bits/allocator.h ****  *  This is an internal header file, included by other library headers.
  40:/usr/include/c++/7/bits/allocator.h ****  *  Do not attempt to use it directly. @headername{memory}
  41:/usr/include/c++/7/bits/allocator.h ****  */
  42:/usr/include/c++/7/bits/allocator.h **** 
  43:/usr/include/c++/7/bits/allocator.h **** #ifndef _ALLOCATOR_H
  44:/usr/include/c++/7/bits/allocator.h **** #define _ALLOCATOR_H 1
  45:/usr/include/c++/7/bits/allocator.h **** 
  46:/usr/include/c++/7/bits/allocator.h **** #include <bits/c++allocator.h> // Define the base class to std::allocator.
  47:/usr/include/c++/7/bits/allocator.h **** #include <bits/memoryfwd.h>
  48:/usr/include/c++/7/bits/allocator.h **** #if __cplusplus >= 201103L
  49:/usr/include/c++/7/bits/allocator.h **** #include <type_traits>
  50:/usr/include/c++/7/bits/allocator.h **** #endif
  51:/usr/include/c++/7/bits/allocator.h **** 
  52:/usr/include/c++/7/bits/allocator.h **** #define __cpp_lib_incomplete_container_elements 201505
  53:/usr/include/c++/7/bits/allocator.h **** #if __cplusplus >= 201103L
  54:/usr/include/c++/7/bits/allocator.h **** # define __cpp_lib_allocator_is_always_equal 201411
  55:/usr/include/c++/7/bits/allocator.h **** #endif
  56:/usr/include/c++/7/bits/allocator.h **** 
  57:/usr/include/c++/7/bits/allocator.h **** namespace std _GLIBCXX_VISIBILITY(default)
  58:/usr/include/c++/7/bits/allocator.h **** {
  59:/usr/include/c++/7/bits/allocator.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  60:/usr/include/c++/7/bits/allocator.h **** 
  61:/usr/include/c++/7/bits/allocator.h ****   /**
  62:/usr/include/c++/7/bits/allocator.h ****    *  @addtogroup allocators
  63:/usr/include/c++/7/bits/allocator.h ****    *  @{
  64:/usr/include/c++/7/bits/allocator.h ****    */
  65:/usr/include/c++/7/bits/allocator.h **** 
  66:/usr/include/c++/7/bits/allocator.h ****   /// allocator<void> specialization.
  67:/usr/include/c++/7/bits/allocator.h ****   template<>
  68:/usr/include/c++/7/bits/allocator.h ****     class allocator<void>
  69:/usr/include/c++/7/bits/allocator.h ****     {
  70:/usr/include/c++/7/bits/allocator.h ****     public:
  71:/usr/include/c++/7/bits/allocator.h ****       typedef size_t      size_type;
  72:/usr/include/c++/7/bits/allocator.h ****       typedef ptrdiff_t   difference_type;
  73:/usr/include/c++/7/bits/allocator.h ****       typedef void*       pointer;
  74:/usr/include/c++/7/bits/allocator.h ****       typedef const void* const_pointer;
  75:/usr/include/c++/7/bits/allocator.h ****       typedef void        value_type;
  76:/usr/include/c++/7/bits/allocator.h **** 
  77:/usr/include/c++/7/bits/allocator.h ****       template<typename _Tp1>
  78:/usr/include/c++/7/bits/allocator.h **** 	struct rebind
  79:/usr/include/c++/7/bits/allocator.h **** 	{ typedef allocator<_Tp1> other; };
  80:/usr/include/c++/7/bits/allocator.h **** 
  81:/usr/include/c++/7/bits/allocator.h **** #if __cplusplus >= 201103L
  82:/usr/include/c++/7/bits/allocator.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
  83:/usr/include/c++/7/bits/allocator.h ****       // 2103. std::allocator propagate_on_container_move_assignment
  84:/usr/include/c++/7/bits/allocator.h ****       typedef true_type propagate_on_container_move_assignment;
  85:/usr/include/c++/7/bits/allocator.h **** 
  86:/usr/include/c++/7/bits/allocator.h ****       typedef true_type is_always_equal;
  87:/usr/include/c++/7/bits/allocator.h **** 
  88:/usr/include/c++/7/bits/allocator.h ****       template<typename _Up, typename... _Args>
  89:/usr/include/c++/7/bits/allocator.h **** 	void
  90:/usr/include/c++/7/bits/allocator.h **** 	construct(_Up* __p, _Args&&... __args)
  91:/usr/include/c++/7/bits/allocator.h **** 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
  92:/usr/include/c++/7/bits/allocator.h **** 
  93:/usr/include/c++/7/bits/allocator.h ****       template<typename _Up>
  94:/usr/include/c++/7/bits/allocator.h **** 	void
  95:/usr/include/c++/7/bits/allocator.h **** 	destroy(_Up* __p) { __p->~_Up(); }
  96:/usr/include/c++/7/bits/allocator.h **** #endif
  97:/usr/include/c++/7/bits/allocator.h ****     };
  98:/usr/include/c++/7/bits/allocator.h **** 
  99:/usr/include/c++/7/bits/allocator.h ****   /**
 100:/usr/include/c++/7/bits/allocator.h ****    * @brief  The @a standard allocator, as per [20.4].
 101:/usr/include/c++/7/bits/allocator.h ****    *
 102:/usr/include/c++/7/bits/allocator.h ****    *  See https://gcc.gnu.org/onlinedocs/libstdc++/manual/memory.html#std.util.memory.allocator
 103:/usr/include/c++/7/bits/allocator.h ****    *  for further details.
 104:/usr/include/c++/7/bits/allocator.h ****    *
 105:/usr/include/c++/7/bits/allocator.h ****    *  @tparam  _Tp  Type of allocated object.
 106:/usr/include/c++/7/bits/allocator.h ****    */
 107:/usr/include/c++/7/bits/allocator.h ****   template<typename _Tp>
 108:/usr/include/c++/7/bits/allocator.h ****     class allocator: public __allocator_base<_Tp>
 109:/usr/include/c++/7/bits/allocator.h ****     {
 110:/usr/include/c++/7/bits/allocator.h ****    public:
 111:/usr/include/c++/7/bits/allocator.h ****       typedef size_t     size_type;
 112:/usr/include/c++/7/bits/allocator.h ****       typedef ptrdiff_t  difference_type;
 113:/usr/include/c++/7/bits/allocator.h ****       typedef _Tp*       pointer;
 114:/usr/include/c++/7/bits/allocator.h ****       typedef const _Tp* const_pointer;
 115:/usr/include/c++/7/bits/allocator.h ****       typedef _Tp&       reference;
 116:/usr/include/c++/7/bits/allocator.h ****       typedef const _Tp& const_reference;
 117:/usr/include/c++/7/bits/allocator.h ****       typedef _Tp        value_type;
 118:/usr/include/c++/7/bits/allocator.h **** 
 119:/usr/include/c++/7/bits/allocator.h ****       template<typename _Tp1>
 120:/usr/include/c++/7/bits/allocator.h **** 	struct rebind
 121:/usr/include/c++/7/bits/allocator.h **** 	{ typedef allocator<_Tp1> other; };
 122:/usr/include/c++/7/bits/allocator.h **** 
 123:/usr/include/c++/7/bits/allocator.h **** #if __cplusplus >= 201103L
 124:/usr/include/c++/7/bits/allocator.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
 125:/usr/include/c++/7/bits/allocator.h ****       // 2103. std::allocator propagate_on_container_move_assignment
 126:/usr/include/c++/7/bits/allocator.h ****       typedef true_type propagate_on_container_move_assignment;
 127:/usr/include/c++/7/bits/allocator.h **** 
 128:/usr/include/c++/7/bits/allocator.h ****       typedef true_type is_always_equal;
 129:/usr/include/c++/7/bits/allocator.h **** #endif
 130:/usr/include/c++/7/bits/allocator.h **** 
 131:/usr/include/c++/7/bits/allocator.h ****       allocator() throw() { }
 132:/usr/include/c++/7/bits/allocator.h **** 
 133:/usr/include/c++/7/bits/allocator.h ****       allocator(const allocator& __a) throw()
 134:/usr/include/c++/7/bits/allocator.h ****       : __allocator_base<_Tp>(__a) { }
 135:/usr/include/c++/7/bits/allocator.h **** 
 136:/usr/include/c++/7/bits/allocator.h ****       template<typename _Tp1>
 137:/usr/include/c++/7/bits/allocator.h **** 	allocator(const allocator<_Tp1>&) throw() { }
 138:/usr/include/c++/7/bits/allocator.h **** 
 139:/usr/include/c++/7/bits/allocator.h ****       ~allocator() throw() { }
 2625              		.loc 6 139 0
 2626              		.cfi_startproc
 2627 0000 55       		pushq	%rbp
 2628              		.cfi_def_cfa_offset 16
 2629              		.cfi_offset 6, -16
 2630 0001 4889E5   		movq	%rsp, %rbp
 2631              		.cfi_def_cfa_register 6
 2632 0004 4883EC10 		subq	$16, %rsp
 2633 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2634              	.LBB39:
 2635              		.loc 6 139 0
 2636 000c 488B45F8 		movq	-8(%rbp), %rax
 2637 0010 4889C7   		movq	%rax, %rdi
 2638 0013 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdED2Ev
 2638      00
 2639              	.LBE39:
 2640 0018 90       		nop
 2641 0019 C9       		leave
 2642              		.cfi_def_cfa 7, 8
 2643 001a C3       		ret
 2644              		.cfi_endproc
 2645              	.LFE2299:
 2647              		.weak	_ZNSaIdED1Ev
 2648              		.set	_ZNSaIdED1Ev,_ZNSaIdED2Ev
 2649              		.section	.text._ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,"axG",@progbits,_ZNSt12_Vector_baseI
 2650              		.align 2
 2651              		.weak	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 2653              	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm:
 2654              	.LFB2301:
 176:/usr/include/c++/7/bits/stl_vector.h ****       {
 2655              		.loc 2 176 0
 2656              		.cfi_startproc
 2657 0000 55       		pushq	%rbp
 2658              		.cfi_def_cfa_offset 16
 2659              		.cfi_offset 6, -16
 2660 0001 4889E5   		movq	%rsp, %rbp
 2661              		.cfi_def_cfa_register 6
 2662 0004 4883EC20 		subq	$32, %rsp
 2663 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2664 000c 488975F0 		movq	%rsi, -16(%rbp)
 2665 0010 488955E8 		movq	%rdx, -24(%rbp)
 179:/usr/include/c++/7/bits/stl_vector.h **** 	  _Tr::deallocate(_M_impl, __p, __n);
 2666              		.loc 2 179 0
 2667 0014 48837DF0 		cmpq	$0, -16(%rbp)
 2667      00
 2668 0019 7417     		je	.L123
 180:/usr/include/c++/7/bits/stl_vector.h ****       }
 2669              		.loc 2 180 0
 2670 001b 488B45F8 		movq	-8(%rbp), %rax
 2671 001f 488B55E8 		movq	-24(%rbp), %rdx
 2672 0023 488B4DF0 		movq	-16(%rbp), %rcx
 2673 0027 4889CE   		movq	%rcx, %rsi
 2674 002a 4889C7   		movq	%rax, %rdi
 2675 002d E8000000 		call	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
 2675      00
 2676              	.L123:
 181:/usr/include/c++/7/bits/stl_vector.h **** 
 2677              		.loc 2 181 0
 2678 0032 90       		nop
 2679 0033 C9       		leave
 2680              		.cfi_def_cfa 7, 8
 2681 0034 C3       		ret
 2682              		.cfi_endproc
 2683              	.LFE2301:
 2685              		.section	.text._ZSt8_DestroyIPdEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPdEvT_S1_,comdat
 2686              		.weak	_ZSt8_DestroyIPdEvT_S1_
 2688              	_ZSt8_DestroyIPdEvT_S1_:
 2689              	.LFB2302:
 127:/usr/include/c++/7/bits/stl_construct.h ****     {
 2690              		.loc 4 127 0
 2691              		.cfi_startproc
 2692 0000 55       		pushq	%rbp
 2693              		.cfi_def_cfa_offset 16
 2694              		.cfi_offset 6, -16
 2695 0001 4889E5   		movq	%rsp, %rbp
 2696              		.cfi_def_cfa_register 6
 2697 0004 4883EC10 		subq	$16, %rsp
 2698 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2699 000c 488975F0 		movq	%rsi, -16(%rbp)
 137:/usr/include/c++/7/bits/stl_construct.h ****     }
 2700              		.loc 4 137 0
 2701 0010 488B55F0 		movq	-16(%rbp), %rdx
 2702 0014 488B45F8 		movq	-8(%rbp), %rax
 2703 0018 4889D6   		movq	%rdx, %rsi
 2704 001b 4889C7   		movq	%rax, %rdi
 2705 001e E8000000 		call	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
 2705      00
 138:/usr/include/c++/7/bits/stl_construct.h **** 
 2706              		.loc 4 138 0
 2707 0023 90       		nop
 2708 0024 C9       		leave
 2709              		.cfi_def_cfa 7, 8
 2710 0025 C3       		ret
 2711              		.cfi_endproc
 2712              	.LFE2302:
 2714              		.section	.text._ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uni
 2715              		.weak	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
 2717              	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E:
 2718              	.LFB2306:
 2719              		.file 7 "/usr/include/c++/7/bits/stl_uninitialized.h"
   1:/usr/include/c++/7/bits/stl_uninitialized.h **** // Raw memory manipulators -*- C++ -*-
   2:/usr/include/c++/7/bits/stl_uninitialized.h **** 
   3:/usr/include/c++/7/bits/stl_uninitialized.h **** // Copyright (C) 2001-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/stl_uninitialized.h **** //
   5:/usr/include/c++/7/bits/stl_uninitialized.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/stl_uninitialized.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/stl_uninitialized.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/stl_uninitialized.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/stl_uninitialized.h **** // any later version.
  10:/usr/include/c++/7/bits/stl_uninitialized.h **** 
  11:/usr/include/c++/7/bits/stl_uninitialized.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/stl_uninitialized.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/stl_uninitialized.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/stl_uninitialized.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/stl_uninitialized.h **** 
  16:/usr/include/c++/7/bits/stl_uninitialized.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/stl_uninitialized.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/stl_uninitialized.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/stl_uninitialized.h **** 
  20:/usr/include/c++/7/bits/stl_uninitialized.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/stl_uninitialized.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/stl_uninitialized.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/stl_uninitialized.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/stl_uninitialized.h **** 
  25:/usr/include/c++/7/bits/stl_uninitialized.h **** /*
  26:/usr/include/c++/7/bits/stl_uninitialized.h ****  *
  27:/usr/include/c++/7/bits/stl_uninitialized.h ****  * Copyright (c) 1994
  28:/usr/include/c++/7/bits/stl_uninitialized.h ****  * Hewlett-Packard Company
  29:/usr/include/c++/7/bits/stl_uninitialized.h ****  *
  30:/usr/include/c++/7/bits/stl_uninitialized.h ****  * Permission to use, copy, modify, distribute and sell this software
  31:/usr/include/c++/7/bits/stl_uninitialized.h ****  * and its documentation for any purpose is hereby granted without fee,
  32:/usr/include/c++/7/bits/stl_uninitialized.h ****  * provided that the above copyright notice appear in all copies and
  33:/usr/include/c++/7/bits/stl_uninitialized.h ****  * that both that copyright notice and this permission notice appear
  34:/usr/include/c++/7/bits/stl_uninitialized.h ****  * in supporting documentation.  Hewlett-Packard Company makes no
  35:/usr/include/c++/7/bits/stl_uninitialized.h ****  * representations about the suitability of this software for any
  36:/usr/include/c++/7/bits/stl_uninitialized.h ****  * purpose.  It is provided "as is" without express or implied warranty.
  37:/usr/include/c++/7/bits/stl_uninitialized.h ****  *
  38:/usr/include/c++/7/bits/stl_uninitialized.h ****  *
  39:/usr/include/c++/7/bits/stl_uninitialized.h ****  * Copyright (c) 1996,1997
  40:/usr/include/c++/7/bits/stl_uninitialized.h ****  * Silicon Graphics Computer Systems, Inc.
  41:/usr/include/c++/7/bits/stl_uninitialized.h ****  *
  42:/usr/include/c++/7/bits/stl_uninitialized.h ****  * Permission to use, copy, modify, distribute and sell this software
  43:/usr/include/c++/7/bits/stl_uninitialized.h ****  * and its documentation for any purpose is hereby granted without fee,
  44:/usr/include/c++/7/bits/stl_uninitialized.h ****  * provided that the above copyright notice appear in all copies and
  45:/usr/include/c++/7/bits/stl_uninitialized.h ****  * that both that copyright notice and this permission notice appear
  46:/usr/include/c++/7/bits/stl_uninitialized.h ****  * in supporting documentation.  Silicon Graphics makes no
  47:/usr/include/c++/7/bits/stl_uninitialized.h ****  * representations about the suitability of this software for any
  48:/usr/include/c++/7/bits/stl_uninitialized.h ****  * purpose.  It is provided "as is" without express or implied warranty.
  49:/usr/include/c++/7/bits/stl_uninitialized.h ****  */
  50:/usr/include/c++/7/bits/stl_uninitialized.h **** 
  51:/usr/include/c++/7/bits/stl_uninitialized.h **** /** @file bits/stl_uninitialized.h
  52:/usr/include/c++/7/bits/stl_uninitialized.h ****  *  This is an internal header file, included by other library headers.
  53:/usr/include/c++/7/bits/stl_uninitialized.h ****  *  Do not attempt to use it directly. @headername{memory}
  54:/usr/include/c++/7/bits/stl_uninitialized.h ****  */
  55:/usr/include/c++/7/bits/stl_uninitialized.h **** 
  56:/usr/include/c++/7/bits/stl_uninitialized.h **** #ifndef _STL_UNINITIALIZED_H
  57:/usr/include/c++/7/bits/stl_uninitialized.h **** #define _STL_UNINITIALIZED_H 1
  58:/usr/include/c++/7/bits/stl_uninitialized.h **** 
  59:/usr/include/c++/7/bits/stl_uninitialized.h **** #if __cplusplus > 201402L
  60:/usr/include/c++/7/bits/stl_uninitialized.h **** #include <utility>
  61:/usr/include/c++/7/bits/stl_uninitialized.h **** #endif
  62:/usr/include/c++/7/bits/stl_uninitialized.h **** 
  63:/usr/include/c++/7/bits/stl_uninitialized.h **** #if __cplusplus >= 201103L
  64:/usr/include/c++/7/bits/stl_uninitialized.h **** #include <type_traits>
  65:/usr/include/c++/7/bits/stl_uninitialized.h **** #endif
  66:/usr/include/c++/7/bits/stl_uninitialized.h **** 
  67:/usr/include/c++/7/bits/stl_uninitialized.h **** namespace std _GLIBCXX_VISIBILITY(default)
  68:/usr/include/c++/7/bits/stl_uninitialized.h **** {
  69:/usr/include/c++/7/bits/stl_uninitialized.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  70:/usr/include/c++/7/bits/stl_uninitialized.h **** 
  71:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<bool _TrivialValueTypes>
  72:/usr/include/c++/7/bits/stl_uninitialized.h ****     struct __uninitialized_copy
  73:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
  74:/usr/include/c++/7/bits/stl_uninitialized.h ****       template<typename _InputIterator, typename _ForwardIterator>
  75:/usr/include/c++/7/bits/stl_uninitialized.h ****         static _ForwardIterator
  76:/usr/include/c++/7/bits/stl_uninitialized.h ****         __uninit_copy(_InputIterator __first, _InputIterator __last,
  77:/usr/include/c++/7/bits/stl_uninitialized.h **** 		      _ForwardIterator __result)
  78:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
  79:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  _ForwardIterator __cur = __result;
  80:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __try
  81:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    {
  82:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      for (; __first != __last; ++__first, (void)++__cur)
  83:/usr/include/c++/7/bits/stl_uninitialized.h **** 		std::_Construct(std::__addressof(*__cur), *__first);
  84:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      return __cur;
  85:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    }
  86:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __catch(...)
  87:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    {
  88:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      std::_Destroy(__result, __cur);
  89:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      __throw_exception_again;
  90:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    }
  91:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
  92:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
  93:/usr/include/c++/7/bits/stl_uninitialized.h **** 
  94:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<>
  95:/usr/include/c++/7/bits/stl_uninitialized.h ****     struct __uninitialized_copy<true>
  96:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
  97:/usr/include/c++/7/bits/stl_uninitialized.h ****       template<typename _InputIterator, typename _ForwardIterator>
  98:/usr/include/c++/7/bits/stl_uninitialized.h ****         static _ForwardIterator
  99:/usr/include/c++/7/bits/stl_uninitialized.h ****         __uninit_copy(_InputIterator __first, _InputIterator __last,
 100:/usr/include/c++/7/bits/stl_uninitialized.h **** 		      _ForwardIterator __result)
 101:/usr/include/c++/7/bits/stl_uninitialized.h ****         { return std::copy(__first, __last, __result); }
 102:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 103:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 104:/usr/include/c++/7/bits/stl_uninitialized.h ****   /**
 105:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @brief Copies the range [first,last) into result.
 106:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @param  __first  An input iterator.
 107:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @param  __last   An input iterator.
 108:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @param  __result An output iterator.
 109:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @return   __result + (__first - __last)
 110:/usr/include/c++/7/bits/stl_uninitialized.h ****    *
 111:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  Like copy(), but does not require an initialized output range.
 112:/usr/include/c++/7/bits/stl_uninitialized.h ****   */
 113:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _InputIterator, typename _ForwardIterator>
 114:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline _ForwardIterator
 115:/usr/include/c++/7/bits/stl_uninitialized.h ****     uninitialized_copy(_InputIterator __first, _InputIterator __last,
 116:/usr/include/c++/7/bits/stl_uninitialized.h **** 		       _ForwardIterator __result)
 117:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 118:/usr/include/c++/7/bits/stl_uninitialized.h ****       typedef typename iterator_traits<_InputIterator>::value_type
 119:/usr/include/c++/7/bits/stl_uninitialized.h **** 	_ValueType1;
 120:/usr/include/c++/7/bits/stl_uninitialized.h ****       typedef typename iterator_traits<_ForwardIterator>::value_type
 121:/usr/include/c++/7/bits/stl_uninitialized.h **** 	_ValueType2;
 122:/usr/include/c++/7/bits/stl_uninitialized.h **** #if __cplusplus < 201103L
 123:/usr/include/c++/7/bits/stl_uninitialized.h ****       const bool __assignable = true;
 124:/usr/include/c++/7/bits/stl_uninitialized.h **** #else
 125:/usr/include/c++/7/bits/stl_uninitialized.h ****       // trivial types can have deleted assignment
 126:/usr/include/c++/7/bits/stl_uninitialized.h ****       typedef typename iterator_traits<_InputIterator>::reference _RefType1;
 127:/usr/include/c++/7/bits/stl_uninitialized.h ****       typedef typename iterator_traits<_ForwardIterator>::reference _RefType2;
 128:/usr/include/c++/7/bits/stl_uninitialized.h ****       const bool __assignable = is_assignable<_RefType2, _RefType1>::value;
 129:/usr/include/c++/7/bits/stl_uninitialized.h **** #endif
 130:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 131:/usr/include/c++/7/bits/stl_uninitialized.h ****       return std::__uninitialized_copy<__is_trivial(_ValueType1)
 132:/usr/include/c++/7/bits/stl_uninitialized.h **** 				       && __is_trivial(_ValueType2)
 133:/usr/include/c++/7/bits/stl_uninitialized.h **** 				       && __assignable>::
 134:/usr/include/c++/7/bits/stl_uninitialized.h **** 	__uninit_copy(__first, __last, __result);
 135:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 136:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 137:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 138:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<bool _TrivialValueType>
 139:/usr/include/c++/7/bits/stl_uninitialized.h ****     struct __uninitialized_fill
 140:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 141:/usr/include/c++/7/bits/stl_uninitialized.h ****       template<typename _ForwardIterator, typename _Tp>
 142:/usr/include/c++/7/bits/stl_uninitialized.h ****         static void
 143:/usr/include/c++/7/bits/stl_uninitialized.h ****         __uninit_fill(_ForwardIterator __first, _ForwardIterator __last,
 144:/usr/include/c++/7/bits/stl_uninitialized.h **** 		      const _Tp& __x)
 145:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
 146:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  _ForwardIterator __cur = __first;
 147:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __try
 148:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    {
 149:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      for (; __cur != __last; ++__cur)
 150:/usr/include/c++/7/bits/stl_uninitialized.h **** 		std::_Construct(std::__addressof(*__cur), __x);
 151:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    }
 152:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __catch(...)
 153:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    {
 154:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      std::_Destroy(__first, __cur);
 155:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      __throw_exception_again;
 156:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    }
 157:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 158:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 159:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 160:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<>
 161:/usr/include/c++/7/bits/stl_uninitialized.h ****     struct __uninitialized_fill<true>
 162:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 163:/usr/include/c++/7/bits/stl_uninitialized.h ****       template<typename _ForwardIterator, typename _Tp>
 164:/usr/include/c++/7/bits/stl_uninitialized.h ****         static void
 165:/usr/include/c++/7/bits/stl_uninitialized.h ****         __uninit_fill(_ForwardIterator __first, _ForwardIterator __last,
 166:/usr/include/c++/7/bits/stl_uninitialized.h **** 		      const _Tp& __x)
 167:/usr/include/c++/7/bits/stl_uninitialized.h ****         { std::fill(__first, __last, __x); }
 168:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 169:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 170:/usr/include/c++/7/bits/stl_uninitialized.h ****   /**
 171:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @brief Copies the value x into the range [first,last).
 172:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @param  __first  An input iterator.
 173:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @param  __last   An input iterator.
 174:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @param  __x      The source value.
 175:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @return   Nothing.
 176:/usr/include/c++/7/bits/stl_uninitialized.h ****    *
 177:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  Like fill(), but does not require an initialized output range.
 178:/usr/include/c++/7/bits/stl_uninitialized.h ****   */
 179:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _ForwardIterator, typename _Tp>
 180:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline void
 181:/usr/include/c++/7/bits/stl_uninitialized.h ****     uninitialized_fill(_ForwardIterator __first, _ForwardIterator __last,
 182:/usr/include/c++/7/bits/stl_uninitialized.h **** 		       const _Tp& __x)
 183:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 184:/usr/include/c++/7/bits/stl_uninitialized.h ****       typedef typename iterator_traits<_ForwardIterator>::value_type
 185:/usr/include/c++/7/bits/stl_uninitialized.h **** 	_ValueType;
 186:/usr/include/c++/7/bits/stl_uninitialized.h **** #if __cplusplus < 201103L
 187:/usr/include/c++/7/bits/stl_uninitialized.h ****       const bool __assignable = true;
 188:/usr/include/c++/7/bits/stl_uninitialized.h **** #else
 189:/usr/include/c++/7/bits/stl_uninitialized.h ****       // trivial types can have deleted assignment
 190:/usr/include/c++/7/bits/stl_uninitialized.h ****       const bool __assignable = is_copy_assignable<_ValueType>::value;
 191:/usr/include/c++/7/bits/stl_uninitialized.h **** #endif
 192:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 193:/usr/include/c++/7/bits/stl_uninitialized.h ****       std::__uninitialized_fill<__is_trivial(_ValueType) && __assignable>::
 194:/usr/include/c++/7/bits/stl_uninitialized.h **** 	__uninit_fill(__first, __last, __x);
 195:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 196:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 197:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 198:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<bool _TrivialValueType>
 199:/usr/include/c++/7/bits/stl_uninitialized.h ****     struct __uninitialized_fill_n
 200:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 201:/usr/include/c++/7/bits/stl_uninitialized.h ****       template<typename _ForwardIterator, typename _Size, typename _Tp>
 202:/usr/include/c++/7/bits/stl_uninitialized.h ****         static _ForwardIterator
 203:/usr/include/c++/7/bits/stl_uninitialized.h ****         __uninit_fill_n(_ForwardIterator __first, _Size __n,
 204:/usr/include/c++/7/bits/stl_uninitialized.h **** 			const _Tp& __x)
 205:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
 206:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  _ForwardIterator __cur = __first;
 207:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __try
 208:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    {
 209:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      for (; __n > 0; --__n, ++__cur)
 210:/usr/include/c++/7/bits/stl_uninitialized.h **** 		std::_Construct(std::__addressof(*__cur), __x);
 211:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      return __cur;
 212:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    }
 213:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __catch(...)
 214:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    {
 215:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      std::_Destroy(__first, __cur);
 216:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      __throw_exception_again;
 217:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    }
 218:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 219:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 220:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 221:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<>
 222:/usr/include/c++/7/bits/stl_uninitialized.h ****     struct __uninitialized_fill_n<true>
 223:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 224:/usr/include/c++/7/bits/stl_uninitialized.h ****       template<typename _ForwardIterator, typename _Size, typename _Tp>
 225:/usr/include/c++/7/bits/stl_uninitialized.h ****         static _ForwardIterator
 226:/usr/include/c++/7/bits/stl_uninitialized.h ****         __uninit_fill_n(_ForwardIterator __first, _Size __n,
 227:/usr/include/c++/7/bits/stl_uninitialized.h **** 			const _Tp& __x)
 228:/usr/include/c++/7/bits/stl_uninitialized.h ****         { return std::fill_n(__first, __n, __x); }
 229:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 230:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 231:/usr/include/c++/7/bits/stl_uninitialized.h ****    // _GLIBCXX_RESOLVE_LIB_DEFECTS
 232:/usr/include/c++/7/bits/stl_uninitialized.h ****    // DR 1339. uninitialized_fill_n should return the end of its range
 233:/usr/include/c++/7/bits/stl_uninitialized.h ****   /**
 234:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @brief Copies the value x into the range [first,first+n).
 235:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @param  __first  An input iterator.
 236:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @param  __n      The number of copies to make.
 237:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @param  __x      The source value.
 238:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  @return   Nothing.
 239:/usr/include/c++/7/bits/stl_uninitialized.h ****    *
 240:/usr/include/c++/7/bits/stl_uninitialized.h ****    *  Like fill_n(), but does not require an initialized output range.
 241:/usr/include/c++/7/bits/stl_uninitialized.h ****   */
 242:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _ForwardIterator, typename _Size, typename _Tp>
 243:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline _ForwardIterator
 244:/usr/include/c++/7/bits/stl_uninitialized.h ****     uninitialized_fill_n(_ForwardIterator __first, _Size __n, const _Tp& __x)
 245:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 246:/usr/include/c++/7/bits/stl_uninitialized.h ****       typedef typename iterator_traits<_ForwardIterator>::value_type
 247:/usr/include/c++/7/bits/stl_uninitialized.h **** 	_ValueType;
 248:/usr/include/c++/7/bits/stl_uninitialized.h **** #if __cplusplus < 201103L
 249:/usr/include/c++/7/bits/stl_uninitialized.h ****       const bool __assignable = true;
 250:/usr/include/c++/7/bits/stl_uninitialized.h **** #else
 251:/usr/include/c++/7/bits/stl_uninitialized.h ****       // trivial types can have deleted assignment
 252:/usr/include/c++/7/bits/stl_uninitialized.h ****       const bool __assignable = is_copy_assignable<_ValueType>::value;
 253:/usr/include/c++/7/bits/stl_uninitialized.h **** #endif
 254:/usr/include/c++/7/bits/stl_uninitialized.h ****       return __uninitialized_fill_n<__is_trivial(_ValueType) && __assignable>::
 255:/usr/include/c++/7/bits/stl_uninitialized.h **** 	__uninit_fill_n(__first, __n, __x);
 256:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 257:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 258:/usr/include/c++/7/bits/stl_uninitialized.h ****   // Extensions: versions of uninitialized_copy, uninitialized_fill,
 259:/usr/include/c++/7/bits/stl_uninitialized.h ****   //  and uninitialized_fill_n that take an allocator parameter.
 260:/usr/include/c++/7/bits/stl_uninitialized.h ****   //  We dispatch back to the standard versions when we're given the
 261:/usr/include/c++/7/bits/stl_uninitialized.h ****   //  default allocator.  For nondefault allocators we do not use 
 262:/usr/include/c++/7/bits/stl_uninitialized.h ****   //  any of the POD optimizations.
 263:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 264:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _InputIterator, typename _ForwardIterator,
 265:/usr/include/c++/7/bits/stl_uninitialized.h **** 	   typename _Allocator>
 266:/usr/include/c++/7/bits/stl_uninitialized.h ****     _ForwardIterator
 267:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_copy_a(_InputIterator __first, _InputIterator __last,
 268:/usr/include/c++/7/bits/stl_uninitialized.h **** 			   _ForwardIterator __result, _Allocator& __alloc)
 269:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 270:/usr/include/c++/7/bits/stl_uninitialized.h ****       _ForwardIterator __cur = __result;
 271:/usr/include/c++/7/bits/stl_uninitialized.h ****       __try
 272:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 273:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  typedef __gnu_cxx::__alloc_traits<_Allocator> __traits;
 274:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  for (; __first != __last; ++__first, (void)++__cur)
 275:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    __traits::construct(__alloc, std::__addressof(*__cur), *__first);
 276:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  return __cur;
 277:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 278:/usr/include/c++/7/bits/stl_uninitialized.h ****       __catch(...)
 279:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 280:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  std::_Destroy(__result, __cur, __alloc);
 281:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __throw_exception_again;
 282:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 283:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 284:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 285:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _InputIterator, typename _ForwardIterator, typename _Tp>
 286:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline _ForwardIterator
 287:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_copy_a(_InputIterator __first, _InputIterator __last,
 288:/usr/include/c++/7/bits/stl_uninitialized.h **** 			   _ForwardIterator __result, allocator<_Tp>&)
 289:/usr/include/c++/7/bits/stl_uninitialized.h ****     { return std::uninitialized_copy(__first, __last, __result); }
 290:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 291:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _InputIterator, typename _ForwardIterator,
 292:/usr/include/c++/7/bits/stl_uninitialized.h **** 	   typename _Allocator>
 293:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline _ForwardIterator
 294:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_move_a(_InputIterator __first, _InputIterator __last,
 295:/usr/include/c++/7/bits/stl_uninitialized.h **** 			   _ForwardIterator __result, _Allocator& __alloc)
 296:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 297:/usr/include/c++/7/bits/stl_uninitialized.h ****       return std::__uninitialized_copy_a(_GLIBCXX_MAKE_MOVE_ITERATOR(__first),
 298:/usr/include/c++/7/bits/stl_uninitialized.h **** 					 _GLIBCXX_MAKE_MOVE_ITERATOR(__last),
 299:/usr/include/c++/7/bits/stl_uninitialized.h **** 					 __result, __alloc);
 300:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 301:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 302:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _InputIterator, typename _ForwardIterator,
 303:/usr/include/c++/7/bits/stl_uninitialized.h **** 	   typename _Allocator>
 304:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline _ForwardIterator
 305:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_move_if_noexcept_a(_InputIterator __first,
 306:/usr/include/c++/7/bits/stl_uninitialized.h **** 				       _InputIterator __last,
 307:/usr/include/c++/7/bits/stl_uninitialized.h **** 				       _ForwardIterator __result,
 308:/usr/include/c++/7/bits/stl_uninitialized.h **** 				       _Allocator& __alloc)
 309:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 310:/usr/include/c++/7/bits/stl_uninitialized.h ****       return std::__uninitialized_copy_a
 311:/usr/include/c++/7/bits/stl_uninitialized.h **** 	(_GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__first),
 312:/usr/include/c++/7/bits/stl_uninitialized.h **** 	 _GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__last), __result, __alloc);
 313:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 314:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 315:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _ForwardIterator, typename _Tp, typename _Allocator>
 316:/usr/include/c++/7/bits/stl_uninitialized.h ****     void
 317:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_fill_a(_ForwardIterator __first, _ForwardIterator __last,
 318:/usr/include/c++/7/bits/stl_uninitialized.h **** 			   const _Tp& __x, _Allocator& __alloc)
 319:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 320:/usr/include/c++/7/bits/stl_uninitialized.h ****       _ForwardIterator __cur = __first;
 321:/usr/include/c++/7/bits/stl_uninitialized.h ****       __try
 322:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 323:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  typedef __gnu_cxx::__alloc_traits<_Allocator> __traits;
 324:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  for (; __cur != __last; ++__cur)
 325:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    __traits::construct(__alloc, std::__addressof(*__cur), __x);
 326:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 327:/usr/include/c++/7/bits/stl_uninitialized.h ****       __catch(...)
 328:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 329:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  std::_Destroy(__first, __cur, __alloc);
 330:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __throw_exception_again;
 331:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 332:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 333:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 334:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _ForwardIterator, typename _Tp, typename _Tp2>
 335:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline void
 336:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_fill_a(_ForwardIterator __first, _ForwardIterator __last,
 337:/usr/include/c++/7/bits/stl_uninitialized.h **** 			   const _Tp& __x, allocator<_Tp2>&)
 338:/usr/include/c++/7/bits/stl_uninitialized.h ****     { std::uninitialized_fill(__first, __last, __x); }
 339:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 340:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _ForwardIterator, typename _Size, typename _Tp,
 341:/usr/include/c++/7/bits/stl_uninitialized.h **** 	   typename _Allocator>
 342:/usr/include/c++/7/bits/stl_uninitialized.h ****     _ForwardIterator
 343:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_fill_n_a(_ForwardIterator __first, _Size __n, 
 344:/usr/include/c++/7/bits/stl_uninitialized.h **** 			     const _Tp& __x, _Allocator& __alloc)
 345:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 346:/usr/include/c++/7/bits/stl_uninitialized.h ****       _ForwardIterator __cur = __first;
 347:/usr/include/c++/7/bits/stl_uninitialized.h ****       __try
 348:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 349:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  typedef __gnu_cxx::__alloc_traits<_Allocator> __traits;
 350:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  for (; __n > 0; --__n, ++__cur)
 351:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    __traits::construct(__alloc, std::__addressof(*__cur), __x);
 352:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  return __cur;
 353:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 354:/usr/include/c++/7/bits/stl_uninitialized.h ****       __catch(...)
 355:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 356:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  std::_Destroy(__first, __cur, __alloc);
 357:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __throw_exception_again;
 358:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 359:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 360:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 361:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _ForwardIterator, typename _Size, typename _Tp,
 362:/usr/include/c++/7/bits/stl_uninitialized.h **** 	   typename _Tp2>
 363:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline _ForwardIterator
 364:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_fill_n_a(_ForwardIterator __first, _Size __n, 
 365:/usr/include/c++/7/bits/stl_uninitialized.h **** 			     const _Tp& __x, allocator<_Tp2>&)
 366:/usr/include/c++/7/bits/stl_uninitialized.h ****     { return std::uninitialized_fill_n(__first, __n, __x); }
 367:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 368:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 369:/usr/include/c++/7/bits/stl_uninitialized.h ****   // Extensions: __uninitialized_copy_move, __uninitialized_move_copy,
 370:/usr/include/c++/7/bits/stl_uninitialized.h ****   // __uninitialized_fill_move, __uninitialized_move_fill.
 371:/usr/include/c++/7/bits/stl_uninitialized.h ****   // All of these algorithms take a user-supplied allocator, which is used
 372:/usr/include/c++/7/bits/stl_uninitialized.h ****   // for construction and destruction.
 373:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 374:/usr/include/c++/7/bits/stl_uninitialized.h ****   // __uninitialized_copy_move
 375:/usr/include/c++/7/bits/stl_uninitialized.h ****   // Copies [first1, last1) into [result, result + (last1 - first1)), and
 376:/usr/include/c++/7/bits/stl_uninitialized.h ****   //  move [first2, last2) into
 377:/usr/include/c++/7/bits/stl_uninitialized.h ****   //  [result, result + (last1 - first1) + (last2 - first2)).
 378:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _InputIterator1, typename _InputIterator2,
 379:/usr/include/c++/7/bits/stl_uninitialized.h **** 	   typename _ForwardIterator, typename _Allocator>
 380:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline _ForwardIterator
 381:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_copy_move(_InputIterator1 __first1,
 382:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _InputIterator1 __last1,
 383:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _InputIterator2 __first2,
 384:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _InputIterator2 __last2,
 385:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _ForwardIterator __result,
 386:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _Allocator& __alloc)
 387:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 388:/usr/include/c++/7/bits/stl_uninitialized.h ****       _ForwardIterator __mid = std::__uninitialized_copy_a(__first1, __last1,
 389:/usr/include/c++/7/bits/stl_uninitialized.h **** 							   __result,
 390:/usr/include/c++/7/bits/stl_uninitialized.h **** 							   __alloc);
 391:/usr/include/c++/7/bits/stl_uninitialized.h ****       __try
 392:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 393:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  return std::__uninitialized_move_a(__first2, __last2, __mid, __alloc);
 394:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 395:/usr/include/c++/7/bits/stl_uninitialized.h ****       __catch(...)
 396:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 397:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  std::_Destroy(__result, __mid, __alloc);
 398:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __throw_exception_again;
 399:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 400:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 401:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 402:/usr/include/c++/7/bits/stl_uninitialized.h ****   // __uninitialized_move_copy
 403:/usr/include/c++/7/bits/stl_uninitialized.h ****   // Moves [first1, last1) into [result, result + (last1 - first1)), and
 404:/usr/include/c++/7/bits/stl_uninitialized.h ****   //  copies [first2, last2) into
 405:/usr/include/c++/7/bits/stl_uninitialized.h ****   //  [result, result + (last1 - first1) + (last2 - first2)).
 406:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _InputIterator1, typename _InputIterator2,
 407:/usr/include/c++/7/bits/stl_uninitialized.h **** 	   typename _ForwardIterator, typename _Allocator>
 408:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline _ForwardIterator
 409:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_move_copy(_InputIterator1 __first1,
 410:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _InputIterator1 __last1,
 411:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _InputIterator2 __first2,
 412:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _InputIterator2 __last2,
 413:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _ForwardIterator __result,
 414:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _Allocator& __alloc)
 415:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 416:/usr/include/c++/7/bits/stl_uninitialized.h ****       _ForwardIterator __mid = std::__uninitialized_move_a(__first1, __last1,
 417:/usr/include/c++/7/bits/stl_uninitialized.h **** 							   __result,
 418:/usr/include/c++/7/bits/stl_uninitialized.h **** 							   __alloc);
 419:/usr/include/c++/7/bits/stl_uninitialized.h ****       __try
 420:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 421:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  return std::__uninitialized_copy_a(__first2, __last2, __mid, __alloc);
 422:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 423:/usr/include/c++/7/bits/stl_uninitialized.h ****       __catch(...)
 424:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 425:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  std::_Destroy(__result, __mid, __alloc);
 426:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __throw_exception_again;
 427:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 428:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 429:/usr/include/c++/7/bits/stl_uninitialized.h ****   
 430:/usr/include/c++/7/bits/stl_uninitialized.h ****   // __uninitialized_fill_move
 431:/usr/include/c++/7/bits/stl_uninitialized.h ****   // Fills [result, mid) with x, and moves [first, last) into
 432:/usr/include/c++/7/bits/stl_uninitialized.h ****   //  [mid, mid + (last - first)).
 433:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _ForwardIterator, typename _Tp, typename _InputIterator,
 434:/usr/include/c++/7/bits/stl_uninitialized.h **** 	   typename _Allocator>
 435:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline _ForwardIterator
 436:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_fill_move(_ForwardIterator __result, _ForwardIterator __mid,
 437:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      const _Tp& __x, _InputIterator __first,
 438:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _InputIterator __last, _Allocator& __alloc)
 439:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 440:/usr/include/c++/7/bits/stl_uninitialized.h ****       std::__uninitialized_fill_a(__result, __mid, __x, __alloc);
 441:/usr/include/c++/7/bits/stl_uninitialized.h ****       __try
 442:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 443:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  return std::__uninitialized_move_a(__first, __last, __mid, __alloc);
 444:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 445:/usr/include/c++/7/bits/stl_uninitialized.h ****       __catch(...)
 446:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 447:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  std::_Destroy(__result, __mid, __alloc);
 448:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __throw_exception_again;
 449:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 450:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 451:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 452:/usr/include/c++/7/bits/stl_uninitialized.h ****   // __uninitialized_move_fill
 453:/usr/include/c++/7/bits/stl_uninitialized.h ****   // Moves [first1, last1) into [first2, first2 + (last1 - first1)), and
 454:/usr/include/c++/7/bits/stl_uninitialized.h ****   //  fills [first2 + (last1 - first1), last2) with x.
 455:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _InputIterator, typename _ForwardIterator, typename _Tp,
 456:/usr/include/c++/7/bits/stl_uninitialized.h **** 	   typename _Allocator>
 457:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline void
 458:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_move_fill(_InputIterator __first1, _InputIterator __last1,
 459:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _ForwardIterator __first2,
 460:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _ForwardIterator __last2, const _Tp& __x,
 461:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _Allocator& __alloc)
 462:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 463:/usr/include/c++/7/bits/stl_uninitialized.h ****       _ForwardIterator __mid2 = std::__uninitialized_move_a(__first1, __last1,
 464:/usr/include/c++/7/bits/stl_uninitialized.h **** 							    __first2,
 465:/usr/include/c++/7/bits/stl_uninitialized.h **** 							    __alloc);
 466:/usr/include/c++/7/bits/stl_uninitialized.h ****       __try
 467:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 468:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  std::__uninitialized_fill_a(__mid2, __last2, __x, __alloc);
 469:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 470:/usr/include/c++/7/bits/stl_uninitialized.h ****       __catch(...)
 471:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 472:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  std::_Destroy(__first2, __mid2, __alloc);
 473:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __throw_exception_again;
 474:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 475:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 476:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 477:/usr/include/c++/7/bits/stl_uninitialized.h **** #if __cplusplus >= 201103L
 478:/usr/include/c++/7/bits/stl_uninitialized.h ****   // Extensions: __uninitialized_default, __uninitialized_default_n,
 479:/usr/include/c++/7/bits/stl_uninitialized.h ****   // __uninitialized_default_a, __uninitialized_default_n_a.
 480:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 481:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<bool _TrivialValueType>
 482:/usr/include/c++/7/bits/stl_uninitialized.h ****     struct __uninitialized_default_1
 483:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 484:/usr/include/c++/7/bits/stl_uninitialized.h ****       template<typename _ForwardIterator>
 485:/usr/include/c++/7/bits/stl_uninitialized.h ****         static void
 486:/usr/include/c++/7/bits/stl_uninitialized.h ****         __uninit_default(_ForwardIterator __first, _ForwardIterator __last)
 487:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
 488:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  _ForwardIterator __cur = __first;
 489:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __try
 490:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    {
 491:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      for (; __cur != __last; ++__cur)
 492:/usr/include/c++/7/bits/stl_uninitialized.h **** 		std::_Construct(std::__addressof(*__cur));
 493:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    }
 494:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __catch(...)
 495:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    {
 496:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      std::_Destroy(__first, __cur);
 497:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      __throw_exception_again;
 498:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    }
 499:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 500:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 501:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 502:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<>
 503:/usr/include/c++/7/bits/stl_uninitialized.h ****     struct __uninitialized_default_1<true>
 504:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 505:/usr/include/c++/7/bits/stl_uninitialized.h ****       template<typename _ForwardIterator>
 506:/usr/include/c++/7/bits/stl_uninitialized.h ****         static void
 507:/usr/include/c++/7/bits/stl_uninitialized.h ****         __uninit_default(_ForwardIterator __first, _ForwardIterator __last)
 508:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
 509:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  typedef typename iterator_traits<_ForwardIterator>::value_type
 510:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    _ValueType;
 511:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 512:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  std::fill(__first, __last, _ValueType());
 513:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 514:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 515:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 516:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<bool _TrivialValueType>
 517:/usr/include/c++/7/bits/stl_uninitialized.h ****     struct __uninitialized_default_n_1
 518:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 519:/usr/include/c++/7/bits/stl_uninitialized.h ****       template<typename _ForwardIterator, typename _Size>
 520:/usr/include/c++/7/bits/stl_uninitialized.h ****         static _ForwardIterator
 521:/usr/include/c++/7/bits/stl_uninitialized.h ****         __uninit_default_n(_ForwardIterator __first, _Size __n)
 522:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
 523:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  _ForwardIterator __cur = __first;
 524:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __try
 525:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    {
 526:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      for (; __n > 0; --__n, ++__cur)
 527:/usr/include/c++/7/bits/stl_uninitialized.h **** 		std::_Construct(std::__addressof(*__cur));
 528:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      return __cur;
 529:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    }
 530:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __catch(...)
 531:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    {
 532:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      std::_Destroy(__first, __cur);
 533:/usr/include/c++/7/bits/stl_uninitialized.h **** 	      __throw_exception_again;
 534:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    }
 535:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 536:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 537:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 538:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<>
 539:/usr/include/c++/7/bits/stl_uninitialized.h ****     struct __uninitialized_default_n_1<true>
 540:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 541:/usr/include/c++/7/bits/stl_uninitialized.h ****       template<typename _ForwardIterator, typename _Size>
 542:/usr/include/c++/7/bits/stl_uninitialized.h ****         static _ForwardIterator
 543:/usr/include/c++/7/bits/stl_uninitialized.h ****         __uninit_default_n(_ForwardIterator __first, _Size __n)
 544:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
 545:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  typedef typename iterator_traits<_ForwardIterator>::value_type
 546:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    _ValueType;
 547:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 548:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  return std::fill_n(__first, __n, _ValueType());
 549:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 550:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 551:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 552:/usr/include/c++/7/bits/stl_uninitialized.h ****   // __uninitialized_default
 553:/usr/include/c++/7/bits/stl_uninitialized.h ****   // Fills [first, last) with std::distance(first, last) default
 554:/usr/include/c++/7/bits/stl_uninitialized.h ****   // constructed value_types(s).
 555:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _ForwardIterator>
 556:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline void
 557:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_default(_ForwardIterator __first,
 558:/usr/include/c++/7/bits/stl_uninitialized.h **** 			    _ForwardIterator __last)
 559:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 560:/usr/include/c++/7/bits/stl_uninitialized.h ****       typedef typename iterator_traits<_ForwardIterator>::value_type
 561:/usr/include/c++/7/bits/stl_uninitialized.h **** 	_ValueType;
 562:/usr/include/c++/7/bits/stl_uninitialized.h ****       // trivial types can have deleted assignment
 563:/usr/include/c++/7/bits/stl_uninitialized.h ****       const bool __assignable = is_copy_assignable<_ValueType>::value;
 564:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 565:/usr/include/c++/7/bits/stl_uninitialized.h ****       std::__uninitialized_default_1<__is_trivial(_ValueType)
 566:/usr/include/c++/7/bits/stl_uninitialized.h **** 				     && __assignable>::
 567:/usr/include/c++/7/bits/stl_uninitialized.h **** 	__uninit_default(__first, __last);
 568:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 569:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 570:/usr/include/c++/7/bits/stl_uninitialized.h ****   // __uninitialized_default_n
 571:/usr/include/c++/7/bits/stl_uninitialized.h ****   // Fills [first, first + n) with n default constructed value_type(s).
 572:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _ForwardIterator, typename _Size>
 573:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline _ForwardIterator
 574:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_default_n(_ForwardIterator __first, _Size __n)
 575:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 576:/usr/include/c++/7/bits/stl_uninitialized.h ****       typedef typename iterator_traits<_ForwardIterator>::value_type
 577:/usr/include/c++/7/bits/stl_uninitialized.h **** 	_ValueType;
 578:/usr/include/c++/7/bits/stl_uninitialized.h ****       // trivial types can have deleted assignment
 579:/usr/include/c++/7/bits/stl_uninitialized.h ****       const bool __assignable = is_copy_assignable<_ValueType>::value;
 580:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 581:/usr/include/c++/7/bits/stl_uninitialized.h ****       return __uninitialized_default_n_1<__is_trivial(_ValueType)
 582:/usr/include/c++/7/bits/stl_uninitialized.h **** 				       && __assignable>::
 583:/usr/include/c++/7/bits/stl_uninitialized.h **** 	__uninit_default_n(__first, __n);
 584:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 585:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 586:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 587:/usr/include/c++/7/bits/stl_uninitialized.h ****   // __uninitialized_default_a
 588:/usr/include/c++/7/bits/stl_uninitialized.h ****   // Fills [first, last) with std::distance(first, last) default
 589:/usr/include/c++/7/bits/stl_uninitialized.h ****   // constructed value_types(s), constructed with the allocator alloc.
 590:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _ForwardIterator, typename _Allocator>
 591:/usr/include/c++/7/bits/stl_uninitialized.h ****     void
 592:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_default_a(_ForwardIterator __first,
 593:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _ForwardIterator __last,
 594:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _Allocator& __alloc)
 595:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 596:/usr/include/c++/7/bits/stl_uninitialized.h ****       _ForwardIterator __cur = __first;
 597:/usr/include/c++/7/bits/stl_uninitialized.h ****       __try
 598:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 599:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  typedef __gnu_cxx::__alloc_traits<_Allocator> __traits;
 600:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  for (; __cur != __last; ++__cur)
 601:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    __traits::construct(__alloc, std::__addressof(*__cur));
 602:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 603:/usr/include/c++/7/bits/stl_uninitialized.h ****       __catch(...)
 604:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 605:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  std::_Destroy(__first, __cur, __alloc);
 606:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __throw_exception_again;
 607:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 608:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 609:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 610:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _ForwardIterator, typename _Tp>
 611:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline void
 612:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_default_a(_ForwardIterator __first,
 613:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      _ForwardIterator __last,
 614:/usr/include/c++/7/bits/stl_uninitialized.h **** 			      allocator<_Tp>&)
 615:/usr/include/c++/7/bits/stl_uninitialized.h ****     { std::__uninitialized_default(__first, __last); }
 616:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 617:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 618:/usr/include/c++/7/bits/stl_uninitialized.h ****   // __uninitialized_default_n_a
 619:/usr/include/c++/7/bits/stl_uninitialized.h ****   // Fills [first, first + n) with n default constructed value_types(s),
 620:/usr/include/c++/7/bits/stl_uninitialized.h ****   // constructed with the allocator alloc.
 621:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _ForwardIterator, typename _Size, typename _Allocator>
 622:/usr/include/c++/7/bits/stl_uninitialized.h ****     _ForwardIterator
 623:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_default_n_a(_ForwardIterator __first, _Size __n, 
 624:/usr/include/c++/7/bits/stl_uninitialized.h **** 				_Allocator& __alloc)
 625:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 626:/usr/include/c++/7/bits/stl_uninitialized.h ****       _ForwardIterator __cur = __first;
 627:/usr/include/c++/7/bits/stl_uninitialized.h ****       __try
 628:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 629:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  typedef __gnu_cxx::__alloc_traits<_Allocator> __traits;
 630:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  for (; __n > 0; --__n, ++__cur)
 631:/usr/include/c++/7/bits/stl_uninitialized.h **** 	    __traits::construct(__alloc, std::__addressof(*__cur));
 632:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  return __cur;
 633:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 634:/usr/include/c++/7/bits/stl_uninitialized.h ****       __catch(...)
 635:/usr/include/c++/7/bits/stl_uninitialized.h **** 	{
 636:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  std::_Destroy(__first, __cur, __alloc);
 637:/usr/include/c++/7/bits/stl_uninitialized.h **** 	  __throw_exception_again;
 638:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 639:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 640:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 641:/usr/include/c++/7/bits/stl_uninitialized.h ****   template<typename _ForwardIterator, typename _Size, typename _Tp>
 642:/usr/include/c++/7/bits/stl_uninitialized.h ****     inline _ForwardIterator
 643:/usr/include/c++/7/bits/stl_uninitialized.h ****     __uninitialized_default_n_a(_ForwardIterator __first, _Size __n, 
 2720              		.loc 7 643 0
 2721              		.cfi_startproc
 2722 0000 55       		pushq	%rbp
 2723              		.cfi_def_cfa_offset 16
 2724              		.cfi_offset 6, -16
 2725 0001 4889E5   		movq	%rsp, %rbp
 2726              		.cfi_def_cfa_register 6
 2727 0004 4883EC20 		subq	$32, %rsp
 2728 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2729 000c 488975F0 		movq	%rsi, -16(%rbp)
 2730 0010 488955E8 		movq	%rdx, -24(%rbp)
 644:/usr/include/c++/7/bits/stl_uninitialized.h **** 				allocator<_Tp>&)
 645:/usr/include/c++/7/bits/stl_uninitialized.h ****     { return std::__uninitialized_default_n(__first, __n); }
 2731              		.loc 7 645 0
 2732 0014 488B55F0 		movq	-16(%rbp), %rdx
 2733 0018 488B45F8 		movq	-8(%rbp), %rax
 2734 001c 4889D6   		movq	%rdx, %rsi
 2735 001f 4889C7   		movq	%rax, %rdi
 2736 0022 E8000000 		call	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
 2736      00
 2737 0027 C9       		leave
 2738              		.cfi_def_cfa 7, 8
 2739 0028 C3       		ret
 2740              		.cfi_endproc
 2741              	.LFE2306:
 2743              		.section	.text._ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIdSaIdEE12_M_
 2744              		.align 2
 2745              		.weak	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
 2747              	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc:
 2748              	.LFB2307:
1497:/usr/include/c++/7/bits/stl_vector.h ****       {
 2749              		.loc 2 1497 0
 2750              		.cfi_startproc
 2751 0000 55       		pushq	%rbp
 2752              		.cfi_def_cfa_offset 16
 2753              		.cfi_offset 6, -16
 2754 0001 4889E5   		movq	%rsp, %rbp
 2755              		.cfi_def_cfa_register 6
 2756 0004 53       		pushq	%rbx
 2757 0005 4883EC48 		subq	$72, %rsp
 2758              		.cfi_offset 3, -24
 2759 0009 48897DC8 		movq	%rdi, -56(%rbp)
 2760 000d 488975C0 		movq	%rsi, -64(%rbp)
 2761 0011 488955B8 		movq	%rdx, -72(%rbp)
1497:/usr/include/c++/7/bits/stl_vector.h ****       {
 2762              		.loc 2 1497 0
 2763 0015 64488B04 		movq	%fs:40, %rax
 2763      25280000 
 2763      00
 2764 001e 488945E8 		movq	%rax, -24(%rbp)
 2765 0022 31C0     		xorl	%eax, %eax
1499:/usr/include/c++/7/bits/stl_vector.h **** 	  __throw_length_error(__N(__s));
 2766              		.loc 2 1499 0
 2767 0024 488B45C8 		movq	-56(%rbp), %rax
 2768 0028 4889C7   		movq	%rax, %rdi
 2769 002b E8000000 		call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 2769      00
 2770 0030 4889C3   		movq	%rax, %rbx
 2771 0033 488B45C8 		movq	-56(%rbp), %rax
 2772 0037 4889C7   		movq	%rax, %rdi
 2773 003a E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2773      00
 2774 003f 4829C3   		subq	%rax, %rbx
 2775 0042 4889DA   		movq	%rbx, %rdx
 2776 0045 488B45C0 		movq	-64(%rbp), %rax
 2777 0049 4839C2   		cmpq	%rax, %rdx
 2778 004c 0F92C0   		setb	%al
 2779 004f 84C0     		testb	%al, %al
 2780 0051 740C     		je	.L128
1500:/usr/include/c++/7/bits/stl_vector.h **** 
 2781              		.loc 2 1500 0
 2782 0053 488B45B8 		movq	-72(%rbp), %rax
 2783 0057 4889C7   		movq	%rax, %rdi
 2784 005a E8000000 		call	_ZSt20__throw_length_errorPKc@PLT
 2784      00
 2785              	.L128:
1502:/usr/include/c++/7/bits/stl_vector.h **** 	return (__len < size() || __len > max_size()) ? max_size() : __len;
 2786              		.loc 2 1502 0
 2787 005f 488B45C8 		movq	-56(%rbp), %rax
 2788 0063 4889C7   		movq	%rax, %rdi
 2789 0066 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2789      00
 2790 006b 4889C3   		movq	%rax, %rbx
 2791 006e 488B45C8 		movq	-56(%rbp), %rax
 2792 0072 4889C7   		movq	%rax, %rdi
 2793 0075 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2793      00
 2794 007a 488945D8 		movq	%rax, -40(%rbp)
 2795 007e 488D55C0 		leaq	-64(%rbp), %rdx
 2796 0082 488D45D8 		leaq	-40(%rbp), %rax
 2797 0086 4889D6   		movq	%rdx, %rsi
 2798 0089 4889C7   		movq	%rax, %rdi
 2799 008c E8000000 		call	_ZSt3maxImERKT_S2_S2_
 2799      00
 2800 0091 488B00   		movq	(%rax), %rax
 2801 0094 4801D8   		addq	%rbx, %rax
 2802 0097 488945E0 		movq	%rax, -32(%rbp)
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2803              		.loc 2 1503 0
 2804 009b 488B45C8 		movq	-56(%rbp), %rax
 2805 009f 4889C7   		movq	%rax, %rdi
 2806 00a2 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2806      00
 2807 00a7 483945E0 		cmpq	%rax, -32(%rbp)
 2808 00ab 7212     		jb	.L129
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2809              		.loc 2 1503 0 is_stmt 0 discriminator 2
 2810 00ad 488B45C8 		movq	-56(%rbp), %rax
 2811 00b1 4889C7   		movq	%rax, %rdi
 2812 00b4 E8000000 		call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 2812      00
 2813 00b9 483945E0 		cmpq	%rax, -32(%rbp)
 2814 00bd 760E     		jbe	.L130
 2815              	.L129:
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2816              		.loc 2 1503 0 discriminator 3
 2817 00bf 488B45C8 		movq	-56(%rbp), %rax
 2818 00c3 4889C7   		movq	%rax, %rdi
 2819 00c6 E8000000 		call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 2819      00
 2820 00cb EB04     		jmp	.L131
 2821              	.L130:
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2822              		.loc 2 1503 0 discriminator 4
 2823 00cd 488B45E0 		movq	-32(%rbp), %rax
 2824              	.L131:
1504:/usr/include/c++/7/bits/stl_vector.h **** 
 2825              		.loc 2 1504 0 is_stmt 1 discriminator 6
 2826 00d1 488B4DE8 		movq	-24(%rbp), %rcx
 2827 00d5 6448330C 		xorq	%fs:40, %rcx
 2827      25280000 
 2827      00
 2828 00de 7405     		je	.L133
1504:/usr/include/c++/7/bits/stl_vector.h **** 
 2829              		.loc 2 1504 0 is_stmt 0
 2830 00e0 E8000000 		call	__stack_chk_fail@PLT
 2830      00
 2831              	.L133:
 2832 00e5 4883C448 		addq	$72, %rsp
 2833 00e9 5B       		popq	%rbx
 2834 00ea 5D       		popq	%rbp
 2835              		.cfi_def_cfa 7, 8
 2836 00eb C3       		ret
 2837              		.cfi_endproc
 2838              	.LFE2307:
 2840              		.section	.text._ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaI
 2841              		.align 2
 2842              		.weak	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
 2844              	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm:
 2845              	.LFB2308:
 169:/usr/include/c++/7/bits/stl_vector.h ****       {
 2846              		.loc 2 169 0 is_stmt 1
 2847              		.cfi_startproc
 2848 0000 55       		pushq	%rbp
 2849              		.cfi_def_cfa_offset 16
 2850              		.cfi_offset 6, -16
 2851 0001 4889E5   		movq	%rsp, %rbp
 2852              		.cfi_def_cfa_register 6
 2853 0004 4883EC10 		subq	$16, %rsp
 2854 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2855 000c 488975F0 		movq	%rsi, -16(%rbp)
 172:/usr/include/c++/7/bits/stl_vector.h ****       }
 2856              		.loc 2 172 0
 2857 0010 48837DF0 		cmpq	$0, -16(%rbp)
 2857      00
 2858 0015 7415     		je	.L135
 172:/usr/include/c++/7/bits/stl_vector.h ****       }
 2859              		.loc 2 172 0 is_stmt 0 discriminator 1
 2860 0017 488B45F8 		movq	-8(%rbp), %rax
 2861 001b 488B55F0 		movq	-16(%rbp), %rdx
 2862 001f 4889D6   		movq	%rdx, %rsi
 2863 0022 4889C7   		movq	%rax, %rdi
 2864 0025 E8000000 		call	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
 2864      00
 2865 002a EB05     		jmp	.L137
 2866              	.L135:
 172:/usr/include/c++/7/bits/stl_vector.h ****       }
 2867              		.loc 2 172 0 discriminator 2
 2868 002c B8000000 		movl	$0, %eax
 2868      00
 2869              	.L137:
 173:/usr/include/c++/7/bits/stl_vector.h **** 
 2870              		.loc 2 173 0 is_stmt 1 discriminator 5
 2871 0031 C9       		leave
 2872              		.cfi_def_cfa 7, 8
 2873 0032 C3       		ret
 2874              		.cfi_endproc
 2875              	.LFE2308:
 2877              		.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_,"axG",@progbits
 2878              		.weak	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_
 2880              	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_:
 2881              	.LFB2309:
 305:/usr/include/c++/7/bits/stl_uninitialized.h **** 				       _InputIterator __last,
 2882              		.loc 7 305 0
 2883              		.cfi_startproc
 2884 0000 55       		pushq	%rbp
 2885              		.cfi_def_cfa_offset 16
 2886              		.cfi_offset 6, -16
 2887 0001 4889E5   		movq	%rsp, %rbp
 2888              		.cfi_def_cfa_register 6
 2889 0004 53       		pushq	%rbx
 2890 0005 4883EC28 		subq	$40, %rsp
 2891              		.cfi_offset 3, -24
 2892 0009 48897DE8 		movq	%rdi, -24(%rbp)
 2893 000d 488975E0 		movq	%rsi, -32(%rbp)
 2894 0011 488955D8 		movq	%rdx, -40(%rbp)
 2895 0015 48894DD0 		movq	%rcx, -48(%rbp)
 311:/usr/include/c++/7/bits/stl_uninitialized.h **** 	 _GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__last), __result, __alloc);
 2896              		.loc 7 311 0
 2897 0019 488B45E0 		movq	-32(%rbp), %rax
 2898 001d 4889C7   		movq	%rax, %rdi
 2899 0020 E8000000 		call	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_
 2899      00
 2900 0025 4889C3   		movq	%rax, %rbx
 2901 0028 488B45E8 		movq	-24(%rbp), %rax
 2902 002c 4889C7   		movq	%rax, %rdi
 2903 002f E8000000 		call	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_
 2903      00
 2904 0034 4889C7   		movq	%rax, %rdi
 312:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 2905              		.loc 7 312 0
 2906 0037 488B55D0 		movq	-48(%rbp), %rdx
 2907 003b 488B45D8 		movq	-40(%rbp), %rax
 2908 003f 4889D1   		movq	%rdx, %rcx
 2909 0042 4889C2   		movq	%rax, %rdx
 2910 0045 4889DE   		movq	%rbx, %rsi
 2911 0048 E8000000 		call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E
 2911      00
 313:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 2912              		.loc 7 313 0
 2913 004d 4883C428 		addq	$40, %rsp
 2914 0051 5B       		popq	%rbx
 2915 0052 5D       		popq	%rbp
 2916              		.cfi_def_cfa 7, 8
 2917 0053 C3       		ret
 2918              		.cfi_endproc
 2919              	.LFE2309:
 2921              		.section	.text._ZNSaIdEC2Ev,"axG",@progbits,_ZNSaIdEC5Ev,comdat
 2922              		.align 2
 2923              		.weak	_ZNSaIdEC2Ev
 2925              	_ZNSaIdEC2Ev:
 2926              	.LFB2345:
 131:/usr/include/c++/7/bits/allocator.h **** 
 2927              		.loc 6 131 0
 2928              		.cfi_startproc
 2929 0000 55       		pushq	%rbp
 2930              		.cfi_def_cfa_offset 16
 2931              		.cfi_offset 6, -16
 2932 0001 4889E5   		movq	%rsp, %rbp
 2933              		.cfi_def_cfa_register 6
 2934 0004 4883EC10 		subq	$16, %rsp
 2935 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2936              	.LBB40:
 131:/usr/include/c++/7/bits/allocator.h **** 
 2937              		.loc 6 131 0
 2938 000c 488B45F8 		movq	-8(%rbp), %rax
 2939 0010 4889C7   		movq	%rax, %rdi
 2940 0013 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
 2940      00
 2941              	.LBE40:
 2942 0018 90       		nop
 2943 0019 C9       		leave
 2944              		.cfi_def_cfa 7, 8
 2945 001a C3       		ret
 2946              		.cfi_endproc
 2947              	.LFE2345:
 2949              		.weak	_ZNSaIdEC1Ev
 2950              		.set	_ZNSaIdEC1Ev,_ZNSaIdEC2Ev
 2951              		.section	.text._ZN9__gnu_cxx13new_allocatorIdED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE
 2952              		.align 2
 2953              		.weak	_ZN9__gnu_cxx13new_allocatorIdED2Ev
 2955              	_ZN9__gnu_cxx13new_allocatorIdED2Ev:
 2956              	.LFB2348:
 2957              		.file 8 "/usr/include/c++/7/ext/new_allocator.h"
   1:/usr/include/c++/7/ext/new_allocator.h **** // Allocator that wraps operator new -*- C++ -*-
   2:/usr/include/c++/7/ext/new_allocator.h **** 
   3:/usr/include/c++/7/ext/new_allocator.h **** // Copyright (C) 2001-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/ext/new_allocator.h **** //
   5:/usr/include/c++/7/ext/new_allocator.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/ext/new_allocator.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/ext/new_allocator.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/ext/new_allocator.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/ext/new_allocator.h **** // any later version.
  10:/usr/include/c++/7/ext/new_allocator.h **** 
  11:/usr/include/c++/7/ext/new_allocator.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/ext/new_allocator.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/ext/new_allocator.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/ext/new_allocator.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/ext/new_allocator.h **** 
  16:/usr/include/c++/7/ext/new_allocator.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/ext/new_allocator.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/ext/new_allocator.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/ext/new_allocator.h **** 
  20:/usr/include/c++/7/ext/new_allocator.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/ext/new_allocator.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/ext/new_allocator.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/ext/new_allocator.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/ext/new_allocator.h **** 
  25:/usr/include/c++/7/ext/new_allocator.h **** /** @file ext/new_allocator.h
  26:/usr/include/c++/7/ext/new_allocator.h ****  *  This file is a GNU extension to the Standard C++ Library.
  27:/usr/include/c++/7/ext/new_allocator.h ****  */
  28:/usr/include/c++/7/ext/new_allocator.h **** 
  29:/usr/include/c++/7/ext/new_allocator.h **** #ifndef _NEW_ALLOCATOR_H
  30:/usr/include/c++/7/ext/new_allocator.h **** #define _NEW_ALLOCATOR_H 1
  31:/usr/include/c++/7/ext/new_allocator.h **** 
  32:/usr/include/c++/7/ext/new_allocator.h **** #include <bits/c++config.h>
  33:/usr/include/c++/7/ext/new_allocator.h **** #include <new>
  34:/usr/include/c++/7/ext/new_allocator.h **** #include <bits/functexcept.h>
  35:/usr/include/c++/7/ext/new_allocator.h **** #include <bits/move.h>
  36:/usr/include/c++/7/ext/new_allocator.h **** #if __cplusplus >= 201103L
  37:/usr/include/c++/7/ext/new_allocator.h **** #include <type_traits>
  38:/usr/include/c++/7/ext/new_allocator.h **** #endif
  39:/usr/include/c++/7/ext/new_allocator.h **** 
  40:/usr/include/c++/7/ext/new_allocator.h **** namespace __gnu_cxx _GLIBCXX_VISIBILITY(default)
  41:/usr/include/c++/7/ext/new_allocator.h **** {
  42:/usr/include/c++/7/ext/new_allocator.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  43:/usr/include/c++/7/ext/new_allocator.h **** 
  44:/usr/include/c++/7/ext/new_allocator.h ****   using std::size_t;
  45:/usr/include/c++/7/ext/new_allocator.h ****   using std::ptrdiff_t;
  46:/usr/include/c++/7/ext/new_allocator.h **** 
  47:/usr/include/c++/7/ext/new_allocator.h ****   /**
  48:/usr/include/c++/7/ext/new_allocator.h ****    *  @brief  An allocator that uses global new, as per [20.4].
  49:/usr/include/c++/7/ext/new_allocator.h ****    *  @ingroup allocators
  50:/usr/include/c++/7/ext/new_allocator.h ****    *
  51:/usr/include/c++/7/ext/new_allocator.h ****    *  This is precisely the allocator defined in the C++ Standard.
  52:/usr/include/c++/7/ext/new_allocator.h ****    *    - all allocation calls operator new
  53:/usr/include/c++/7/ext/new_allocator.h ****    *    - all deallocation calls operator delete
  54:/usr/include/c++/7/ext/new_allocator.h ****    *
  55:/usr/include/c++/7/ext/new_allocator.h ****    *  @tparam  _Tp  Type of allocated object.
  56:/usr/include/c++/7/ext/new_allocator.h ****    */
  57:/usr/include/c++/7/ext/new_allocator.h ****   template<typename _Tp>
  58:/usr/include/c++/7/ext/new_allocator.h ****     class new_allocator
  59:/usr/include/c++/7/ext/new_allocator.h ****     {
  60:/usr/include/c++/7/ext/new_allocator.h ****     public:
  61:/usr/include/c++/7/ext/new_allocator.h ****       typedef size_t     size_type;
  62:/usr/include/c++/7/ext/new_allocator.h ****       typedef ptrdiff_t  difference_type;
  63:/usr/include/c++/7/ext/new_allocator.h ****       typedef _Tp*       pointer;
  64:/usr/include/c++/7/ext/new_allocator.h ****       typedef const _Tp* const_pointer;
  65:/usr/include/c++/7/ext/new_allocator.h ****       typedef _Tp&       reference;
  66:/usr/include/c++/7/ext/new_allocator.h ****       typedef const _Tp& const_reference;
  67:/usr/include/c++/7/ext/new_allocator.h ****       typedef _Tp        value_type;
  68:/usr/include/c++/7/ext/new_allocator.h **** 
  69:/usr/include/c++/7/ext/new_allocator.h ****       template<typename _Tp1>
  70:/usr/include/c++/7/ext/new_allocator.h **** 	struct rebind
  71:/usr/include/c++/7/ext/new_allocator.h **** 	{ typedef new_allocator<_Tp1> other; };
  72:/usr/include/c++/7/ext/new_allocator.h **** 
  73:/usr/include/c++/7/ext/new_allocator.h **** #if __cplusplus >= 201103L
  74:/usr/include/c++/7/ext/new_allocator.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
  75:/usr/include/c++/7/ext/new_allocator.h ****       // 2103. propagate_on_container_move_assignment
  76:/usr/include/c++/7/ext/new_allocator.h ****       typedef std::true_type propagate_on_container_move_assignment;
  77:/usr/include/c++/7/ext/new_allocator.h **** #endif
  78:/usr/include/c++/7/ext/new_allocator.h **** 
  79:/usr/include/c++/7/ext/new_allocator.h ****       new_allocator() _GLIBCXX_USE_NOEXCEPT { }
  80:/usr/include/c++/7/ext/new_allocator.h **** 
  81:/usr/include/c++/7/ext/new_allocator.h ****       new_allocator(const new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
  82:/usr/include/c++/7/ext/new_allocator.h **** 
  83:/usr/include/c++/7/ext/new_allocator.h ****       template<typename _Tp1>
  84:/usr/include/c++/7/ext/new_allocator.h **** 	new_allocator(const new_allocator<_Tp1>&) _GLIBCXX_USE_NOEXCEPT { }
  85:/usr/include/c++/7/ext/new_allocator.h **** 
  86:/usr/include/c++/7/ext/new_allocator.h ****       ~new_allocator() _GLIBCXX_USE_NOEXCEPT { }
 2958              		.loc 8 86 0
 2959              		.cfi_startproc
 2960 0000 55       		pushq	%rbp
 2961              		.cfi_def_cfa_offset 16
 2962              		.cfi_offset 6, -16
 2963 0001 4889E5   		movq	%rsp, %rbp
 2964              		.cfi_def_cfa_register 6
 2965 0004 48897DF8 		movq	%rdi, -8(%rbp)
 2966              		.loc 8 86 0
 2967 0008 90       		nop
 2968 0009 5D       		popq	%rbp
 2969              		.cfi_def_cfa 7, 8
 2970 000a C3       		ret
 2971              		.cfi_endproc
 2972              	.LFE2348:
 2974              		.weak	_ZN9__gnu_cxx13new_allocatorIdED1Ev
 2975              		.set	_ZN9__gnu_cxx13new_allocatorIdED1Ev,_ZN9__gnu_cxx13new_allocatorIdED2Ev
 2976              		.section	.text._ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,"axG",@progbits,_ZNSt16allocator
 2977              		.weak	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
 2979              	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm:
 2980              	.LFB2350:
 2981              		.file 9 "/usr/include/c++/7/bits/alloc_traits.h"
   1:/usr/include/c++/7/bits/alloc_traits.h **** // Allocator traits -*- C++ -*-
   2:/usr/include/c++/7/bits/alloc_traits.h **** 
   3:/usr/include/c++/7/bits/alloc_traits.h **** // Copyright (C) 2011-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/alloc_traits.h **** //
   5:/usr/include/c++/7/bits/alloc_traits.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/alloc_traits.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/alloc_traits.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/alloc_traits.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/alloc_traits.h **** // any later version.
  10:/usr/include/c++/7/bits/alloc_traits.h **** 
  11:/usr/include/c++/7/bits/alloc_traits.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/alloc_traits.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/alloc_traits.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/alloc_traits.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/alloc_traits.h **** 
  16:/usr/include/c++/7/bits/alloc_traits.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/alloc_traits.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/alloc_traits.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/alloc_traits.h **** 
  20:/usr/include/c++/7/bits/alloc_traits.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/alloc_traits.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/alloc_traits.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/alloc_traits.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/alloc_traits.h **** 
  25:/usr/include/c++/7/bits/alloc_traits.h **** /** @file bits/alloc_traits.h
  26:/usr/include/c++/7/bits/alloc_traits.h ****  *  This is an internal header file, included by other library headers.
  27:/usr/include/c++/7/bits/alloc_traits.h ****  *  Do not attempt to use it directly. @headername{memory}
  28:/usr/include/c++/7/bits/alloc_traits.h ****  */
  29:/usr/include/c++/7/bits/alloc_traits.h **** 
  30:/usr/include/c++/7/bits/alloc_traits.h **** #ifndef _ALLOC_TRAITS_H
  31:/usr/include/c++/7/bits/alloc_traits.h **** #define _ALLOC_TRAITS_H 1
  32:/usr/include/c++/7/bits/alloc_traits.h **** 
  33:/usr/include/c++/7/bits/alloc_traits.h **** #if __cplusplus >= 201103L
  34:/usr/include/c++/7/bits/alloc_traits.h **** 
  35:/usr/include/c++/7/bits/alloc_traits.h **** #include <bits/memoryfwd.h>
  36:/usr/include/c++/7/bits/alloc_traits.h **** #include <bits/ptr_traits.h>
  37:/usr/include/c++/7/bits/alloc_traits.h **** #include <ext/numeric_traits.h>
  38:/usr/include/c++/7/bits/alloc_traits.h **** 
  39:/usr/include/c++/7/bits/alloc_traits.h **** #define __cpp_lib_allocator_traits_is_always_equal 201411
  40:/usr/include/c++/7/bits/alloc_traits.h **** 
  41:/usr/include/c++/7/bits/alloc_traits.h **** namespace std _GLIBCXX_VISIBILITY(default)
  42:/usr/include/c++/7/bits/alloc_traits.h **** {
  43:/usr/include/c++/7/bits/alloc_traits.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  44:/usr/include/c++/7/bits/alloc_traits.h **** 
  45:/usr/include/c++/7/bits/alloc_traits.h ****   struct __allocator_traits_base
  46:/usr/include/c++/7/bits/alloc_traits.h ****   {
  47:/usr/include/c++/7/bits/alloc_traits.h ****     template<typename _Tp, typename _Up, typename = void>
  48:/usr/include/c++/7/bits/alloc_traits.h ****       struct __rebind : __replace_first_arg<_Tp, _Up> { };
  49:/usr/include/c++/7/bits/alloc_traits.h **** 
  50:/usr/include/c++/7/bits/alloc_traits.h ****     template<typename _Tp, typename _Up>
  51:/usr/include/c++/7/bits/alloc_traits.h ****       struct __rebind<_Tp, _Up,
  52:/usr/include/c++/7/bits/alloc_traits.h **** 		      __void_t<typename _Tp::template rebind<_Up>::other>>
  53:/usr/include/c++/7/bits/alloc_traits.h ****       { using type = typename _Tp::template rebind<_Up>::other; };
  54:/usr/include/c++/7/bits/alloc_traits.h **** 
  55:/usr/include/c++/7/bits/alloc_traits.h ****   protected:
  56:/usr/include/c++/7/bits/alloc_traits.h ****     template<typename _Tp>
  57:/usr/include/c++/7/bits/alloc_traits.h ****       using __pointer = typename _Tp::pointer;
  58:/usr/include/c++/7/bits/alloc_traits.h ****     template<typename _Tp>
  59:/usr/include/c++/7/bits/alloc_traits.h ****       using __c_pointer = typename _Tp::const_pointer;
  60:/usr/include/c++/7/bits/alloc_traits.h ****     template<typename _Tp>
  61:/usr/include/c++/7/bits/alloc_traits.h ****       using __v_pointer = typename _Tp::void_pointer;
  62:/usr/include/c++/7/bits/alloc_traits.h ****     template<typename _Tp>
  63:/usr/include/c++/7/bits/alloc_traits.h ****       using __cv_pointer = typename _Tp::const_void_pointer;
  64:/usr/include/c++/7/bits/alloc_traits.h ****     template<typename _Tp>
  65:/usr/include/c++/7/bits/alloc_traits.h ****       using __pocca = typename _Tp::propagate_on_container_copy_assignment;
  66:/usr/include/c++/7/bits/alloc_traits.h ****     template<typename _Tp>
  67:/usr/include/c++/7/bits/alloc_traits.h ****       using __pocma = typename _Tp::propagate_on_container_move_assignment;
  68:/usr/include/c++/7/bits/alloc_traits.h ****     template<typename _Tp>
  69:/usr/include/c++/7/bits/alloc_traits.h ****       using __pocs = typename _Tp::propagate_on_container_swap;
  70:/usr/include/c++/7/bits/alloc_traits.h ****     template<typename _Tp>
  71:/usr/include/c++/7/bits/alloc_traits.h ****       using __equal = typename _Tp::is_always_equal;
  72:/usr/include/c++/7/bits/alloc_traits.h ****   };
  73:/usr/include/c++/7/bits/alloc_traits.h **** 
  74:/usr/include/c++/7/bits/alloc_traits.h ****   template<typename _Alloc, typename _Up>
  75:/usr/include/c++/7/bits/alloc_traits.h ****     using __alloc_rebind
  76:/usr/include/c++/7/bits/alloc_traits.h ****       = typename __allocator_traits_base::template __rebind<_Alloc, _Up>::type;
  77:/usr/include/c++/7/bits/alloc_traits.h **** 
  78:/usr/include/c++/7/bits/alloc_traits.h ****   /**
  79:/usr/include/c++/7/bits/alloc_traits.h ****    * @brief  Uniform interface to all allocator types.
  80:/usr/include/c++/7/bits/alloc_traits.h ****    * @ingroup allocators
  81:/usr/include/c++/7/bits/alloc_traits.h ****   */
  82:/usr/include/c++/7/bits/alloc_traits.h ****   template<typename _Alloc>
  83:/usr/include/c++/7/bits/alloc_traits.h ****     struct allocator_traits : __allocator_traits_base
  84:/usr/include/c++/7/bits/alloc_traits.h ****     {
  85:/usr/include/c++/7/bits/alloc_traits.h ****       /// The allocator type
  86:/usr/include/c++/7/bits/alloc_traits.h ****       typedef _Alloc allocator_type;
  87:/usr/include/c++/7/bits/alloc_traits.h ****       /// The allocated type
  88:/usr/include/c++/7/bits/alloc_traits.h ****       typedef typename _Alloc::value_type value_type;
  89:/usr/include/c++/7/bits/alloc_traits.h **** 
  90:/usr/include/c++/7/bits/alloc_traits.h ****       /**
  91:/usr/include/c++/7/bits/alloc_traits.h ****        * @brief   The allocator's pointer type.
  92:/usr/include/c++/7/bits/alloc_traits.h ****        *
  93:/usr/include/c++/7/bits/alloc_traits.h ****        * @c Alloc::pointer if that type exists, otherwise @c value_type*
  94:/usr/include/c++/7/bits/alloc_traits.h ****       */
  95:/usr/include/c++/7/bits/alloc_traits.h ****       using pointer = __detected_or_t<value_type*, __pointer, _Alloc>;
  96:/usr/include/c++/7/bits/alloc_traits.h **** 
  97:/usr/include/c++/7/bits/alloc_traits.h ****     private:
  98:/usr/include/c++/7/bits/alloc_traits.h ****       // Select _Func<_Alloc> or pointer_traits<pointer>::rebind<_Tp>
  99:/usr/include/c++/7/bits/alloc_traits.h ****       template<template<typename> class _Func, typename _Tp, typename = void>
 100:/usr/include/c++/7/bits/alloc_traits.h **** 	struct _Ptr
 101:/usr/include/c++/7/bits/alloc_traits.h **** 	{
 102:/usr/include/c++/7/bits/alloc_traits.h **** 	  using type = typename pointer_traits<pointer>::template rebind<_Tp>;
 103:/usr/include/c++/7/bits/alloc_traits.h **** 	};
 104:/usr/include/c++/7/bits/alloc_traits.h **** 
 105:/usr/include/c++/7/bits/alloc_traits.h ****       template<template<typename> class _Func, typename _Tp>
 106:/usr/include/c++/7/bits/alloc_traits.h **** 	struct _Ptr<_Func, _Tp, __void_t<_Func<_Alloc>>>
 107:/usr/include/c++/7/bits/alloc_traits.h **** 	{
 108:/usr/include/c++/7/bits/alloc_traits.h **** 	  using type = _Func<_Alloc>;
 109:/usr/include/c++/7/bits/alloc_traits.h **** 	};
 110:/usr/include/c++/7/bits/alloc_traits.h **** 
 111:/usr/include/c++/7/bits/alloc_traits.h ****       // Select _A2::difference_type or pointer_traits<_Ptr>::difference_type
 112:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _A2, typename _PtrT, typename = void>
 113:/usr/include/c++/7/bits/alloc_traits.h **** 	struct _Diff
 114:/usr/include/c++/7/bits/alloc_traits.h **** 	{ using type = typename pointer_traits<_PtrT>::difference_type; };
 115:/usr/include/c++/7/bits/alloc_traits.h **** 
 116:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _A2, typename _PtrT>
 117:/usr/include/c++/7/bits/alloc_traits.h **** 	struct _Diff<_A2, _PtrT, __void_t<typename _A2::difference_type>>
 118:/usr/include/c++/7/bits/alloc_traits.h **** 	{ using type = typename _A2::difference_type; };
 119:/usr/include/c++/7/bits/alloc_traits.h **** 
 120:/usr/include/c++/7/bits/alloc_traits.h ****       // Select _A2::size_type or make_unsigned<_DiffT>::type
 121:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _A2, typename _DiffT, typename = void>
 122:/usr/include/c++/7/bits/alloc_traits.h **** 	struct _Size : make_unsigned<_DiffT> { };
 123:/usr/include/c++/7/bits/alloc_traits.h **** 
 124:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _A2, typename _DiffT>
 125:/usr/include/c++/7/bits/alloc_traits.h **** 	struct _Size<_A2, _DiffT, __void_t<typename _A2::size_type>>
 126:/usr/include/c++/7/bits/alloc_traits.h **** 	{ using type = typename _A2::size_type; };
 127:/usr/include/c++/7/bits/alloc_traits.h **** 
 128:/usr/include/c++/7/bits/alloc_traits.h ****     public:
 129:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 130:/usr/include/c++/7/bits/alloc_traits.h ****        * @brief   The allocator's const pointer type.
 131:/usr/include/c++/7/bits/alloc_traits.h ****        *
 132:/usr/include/c++/7/bits/alloc_traits.h ****        * @c Alloc::const_pointer if that type exists, otherwise
 133:/usr/include/c++/7/bits/alloc_traits.h ****        * <tt> pointer_traits<pointer>::rebind<const value_type> </tt>
 134:/usr/include/c++/7/bits/alloc_traits.h ****       */
 135:/usr/include/c++/7/bits/alloc_traits.h ****       using const_pointer = typename _Ptr<__c_pointer, const value_type>::type;
 136:/usr/include/c++/7/bits/alloc_traits.h **** 
 137:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 138:/usr/include/c++/7/bits/alloc_traits.h ****        * @brief   The allocator's void pointer type.
 139:/usr/include/c++/7/bits/alloc_traits.h ****        *
 140:/usr/include/c++/7/bits/alloc_traits.h ****        * @c Alloc::void_pointer if that type exists, otherwise
 141:/usr/include/c++/7/bits/alloc_traits.h ****        * <tt> pointer_traits<pointer>::rebind<void> </tt>
 142:/usr/include/c++/7/bits/alloc_traits.h ****       */
 143:/usr/include/c++/7/bits/alloc_traits.h ****       using void_pointer = typename _Ptr<__v_pointer, void>::type;
 144:/usr/include/c++/7/bits/alloc_traits.h **** 
 145:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 146:/usr/include/c++/7/bits/alloc_traits.h ****        * @brief   The allocator's const void pointer type.
 147:/usr/include/c++/7/bits/alloc_traits.h ****        *
 148:/usr/include/c++/7/bits/alloc_traits.h ****        * @c Alloc::const_void_pointer if that type exists, otherwise
 149:/usr/include/c++/7/bits/alloc_traits.h ****        * <tt> pointer_traits<pointer>::rebind<const void> </tt>
 150:/usr/include/c++/7/bits/alloc_traits.h ****       */
 151:/usr/include/c++/7/bits/alloc_traits.h ****       using const_void_pointer = typename _Ptr<__cv_pointer, const void>::type;
 152:/usr/include/c++/7/bits/alloc_traits.h **** 
 153:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 154:/usr/include/c++/7/bits/alloc_traits.h ****        * @brief   The allocator's difference type
 155:/usr/include/c++/7/bits/alloc_traits.h ****        *
 156:/usr/include/c++/7/bits/alloc_traits.h ****        * @c Alloc::difference_type if that type exists, otherwise
 157:/usr/include/c++/7/bits/alloc_traits.h ****        * <tt> pointer_traits<pointer>::difference_type </tt>
 158:/usr/include/c++/7/bits/alloc_traits.h ****       */
 159:/usr/include/c++/7/bits/alloc_traits.h ****       using difference_type = typename _Diff<_Alloc, pointer>::type;
 160:/usr/include/c++/7/bits/alloc_traits.h **** 
 161:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 162:/usr/include/c++/7/bits/alloc_traits.h ****        * @brief   The allocator's size type
 163:/usr/include/c++/7/bits/alloc_traits.h ****        *
 164:/usr/include/c++/7/bits/alloc_traits.h ****        * @c Alloc::size_type if that type exists, otherwise
 165:/usr/include/c++/7/bits/alloc_traits.h ****        * <tt> make_unsigned<difference_type>::type </tt>
 166:/usr/include/c++/7/bits/alloc_traits.h ****       */
 167:/usr/include/c++/7/bits/alloc_traits.h ****       using size_type = typename _Size<_Alloc, difference_type>::type;
 168:/usr/include/c++/7/bits/alloc_traits.h **** 
 169:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 170:/usr/include/c++/7/bits/alloc_traits.h ****        * @brief   How the allocator is propagated on copy assignment
 171:/usr/include/c++/7/bits/alloc_traits.h ****        *
 172:/usr/include/c++/7/bits/alloc_traits.h ****        * @c Alloc::propagate_on_container_copy_assignment if that type exists,
 173:/usr/include/c++/7/bits/alloc_traits.h ****        * otherwise @c false_type
 174:/usr/include/c++/7/bits/alloc_traits.h ****       */
 175:/usr/include/c++/7/bits/alloc_traits.h ****       using propagate_on_container_copy_assignment
 176:/usr/include/c++/7/bits/alloc_traits.h **** 	= __detected_or_t<false_type, __pocca, _Alloc>;
 177:/usr/include/c++/7/bits/alloc_traits.h **** 
 178:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 179:/usr/include/c++/7/bits/alloc_traits.h ****        * @brief   How the allocator is propagated on move assignment
 180:/usr/include/c++/7/bits/alloc_traits.h ****        *
 181:/usr/include/c++/7/bits/alloc_traits.h ****        * @c Alloc::propagate_on_container_move_assignment if that type exists,
 182:/usr/include/c++/7/bits/alloc_traits.h ****        * otherwise @c false_type
 183:/usr/include/c++/7/bits/alloc_traits.h ****       */
 184:/usr/include/c++/7/bits/alloc_traits.h ****       using propagate_on_container_move_assignment
 185:/usr/include/c++/7/bits/alloc_traits.h **** 	= __detected_or_t<false_type, __pocma, _Alloc>;
 186:/usr/include/c++/7/bits/alloc_traits.h **** 
 187:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 188:/usr/include/c++/7/bits/alloc_traits.h ****        * @brief   How the allocator is propagated on swap
 189:/usr/include/c++/7/bits/alloc_traits.h ****        *
 190:/usr/include/c++/7/bits/alloc_traits.h ****        * @c Alloc::propagate_on_container_swap if that type exists,
 191:/usr/include/c++/7/bits/alloc_traits.h ****        * otherwise @c false_type
 192:/usr/include/c++/7/bits/alloc_traits.h ****       */
 193:/usr/include/c++/7/bits/alloc_traits.h ****       using propagate_on_container_swap
 194:/usr/include/c++/7/bits/alloc_traits.h **** 	= __detected_or_t<false_type, __pocs, _Alloc>;
 195:/usr/include/c++/7/bits/alloc_traits.h **** 
 196:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 197:/usr/include/c++/7/bits/alloc_traits.h ****        * @brief   Whether all instances of the allocator type compare equal.
 198:/usr/include/c++/7/bits/alloc_traits.h ****        *
 199:/usr/include/c++/7/bits/alloc_traits.h ****        * @c Alloc::is_always_equal if that type exists,
 200:/usr/include/c++/7/bits/alloc_traits.h ****        * otherwise @c is_empty<Alloc>::type
 201:/usr/include/c++/7/bits/alloc_traits.h ****       */
 202:/usr/include/c++/7/bits/alloc_traits.h ****       using is_always_equal
 203:/usr/include/c++/7/bits/alloc_traits.h **** 	= __detected_or_t<typename is_empty<_Alloc>::type, __equal, _Alloc>;
 204:/usr/include/c++/7/bits/alloc_traits.h **** 
 205:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Tp>
 206:/usr/include/c++/7/bits/alloc_traits.h **** 	using rebind_alloc = __alloc_rebind<_Alloc, _Tp>;
 207:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Tp>
 208:/usr/include/c++/7/bits/alloc_traits.h **** 	using rebind_traits = allocator_traits<rebind_alloc<_Tp>>;
 209:/usr/include/c++/7/bits/alloc_traits.h **** 
 210:/usr/include/c++/7/bits/alloc_traits.h ****     private:
 211:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Alloc2>
 212:/usr/include/c++/7/bits/alloc_traits.h **** 	static auto
 213:/usr/include/c++/7/bits/alloc_traits.h **** 	_S_allocate(_Alloc2& __a, size_type __n, const_void_pointer __hint, int)
 214:/usr/include/c++/7/bits/alloc_traits.h **** 	-> decltype(__a.allocate(__n, __hint))
 215:/usr/include/c++/7/bits/alloc_traits.h **** 	{ return __a.allocate(__n, __hint); }
 216:/usr/include/c++/7/bits/alloc_traits.h **** 
 217:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Alloc2>
 218:/usr/include/c++/7/bits/alloc_traits.h **** 	static pointer
 219:/usr/include/c++/7/bits/alloc_traits.h **** 	_S_allocate(_Alloc2& __a, size_type __n, const_void_pointer, ...)
 220:/usr/include/c++/7/bits/alloc_traits.h **** 	{ return __a.allocate(__n); }
 221:/usr/include/c++/7/bits/alloc_traits.h **** 
 222:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Tp, typename... _Args>
 223:/usr/include/c++/7/bits/alloc_traits.h **** 	struct __construct_helper
 224:/usr/include/c++/7/bits/alloc_traits.h **** 	{
 225:/usr/include/c++/7/bits/alloc_traits.h **** 	  template<typename _Alloc2,
 226:/usr/include/c++/7/bits/alloc_traits.h **** 	    typename = decltype(std::declval<_Alloc2*>()->construct(
 227:/usr/include/c++/7/bits/alloc_traits.h **** 		  std::declval<_Tp*>(), std::declval<_Args>()...))>
 228:/usr/include/c++/7/bits/alloc_traits.h **** 	    static true_type __test(int);
 229:/usr/include/c++/7/bits/alloc_traits.h **** 
 230:/usr/include/c++/7/bits/alloc_traits.h **** 	  template<typename>
 231:/usr/include/c++/7/bits/alloc_traits.h **** 	    static false_type __test(...);
 232:/usr/include/c++/7/bits/alloc_traits.h **** 
 233:/usr/include/c++/7/bits/alloc_traits.h **** 	  using type = decltype(__test<_Alloc>(0));
 234:/usr/include/c++/7/bits/alloc_traits.h **** 	};
 235:/usr/include/c++/7/bits/alloc_traits.h **** 
 236:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Tp, typename... _Args>
 237:/usr/include/c++/7/bits/alloc_traits.h **** 	using __has_construct
 238:/usr/include/c++/7/bits/alloc_traits.h **** 	  = typename __construct_helper<_Tp, _Args...>::type;
 239:/usr/include/c++/7/bits/alloc_traits.h **** 
 240:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Tp, typename... _Args>
 241:/usr/include/c++/7/bits/alloc_traits.h **** 	static _Require<__has_construct<_Tp, _Args...>>
 242:/usr/include/c++/7/bits/alloc_traits.h **** 	_S_construct(_Alloc& __a, _Tp* __p, _Args&&... __args)
 243:/usr/include/c++/7/bits/alloc_traits.h **** 	{ __a.construct(__p, std::forward<_Args>(__args)...); }
 244:/usr/include/c++/7/bits/alloc_traits.h **** 
 245:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Tp, typename... _Args>
 246:/usr/include/c++/7/bits/alloc_traits.h **** 	static
 247:/usr/include/c++/7/bits/alloc_traits.h **** 	_Require<__and_<__not_<__has_construct<_Tp, _Args...>>,
 248:/usr/include/c++/7/bits/alloc_traits.h **** 			       is_constructible<_Tp, _Args...>>>
 249:/usr/include/c++/7/bits/alloc_traits.h **** 	_S_construct(_Alloc&, _Tp* __p, _Args&&... __args)
 250:/usr/include/c++/7/bits/alloc_traits.h **** 	{ ::new((void*)__p) _Tp(std::forward<_Args>(__args)...); }
 251:/usr/include/c++/7/bits/alloc_traits.h **** 
 252:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Alloc2, typename _Tp>
 253:/usr/include/c++/7/bits/alloc_traits.h **** 	static auto
 254:/usr/include/c++/7/bits/alloc_traits.h **** 	_S_destroy(_Alloc2& __a, _Tp* __p, int)
 255:/usr/include/c++/7/bits/alloc_traits.h **** 	-> decltype(__a.destroy(__p))
 256:/usr/include/c++/7/bits/alloc_traits.h **** 	{ __a.destroy(__p); }
 257:/usr/include/c++/7/bits/alloc_traits.h **** 
 258:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Alloc2, typename _Tp>
 259:/usr/include/c++/7/bits/alloc_traits.h **** 	static void
 260:/usr/include/c++/7/bits/alloc_traits.h **** 	_S_destroy(_Alloc2&, _Tp* __p, ...)
 261:/usr/include/c++/7/bits/alloc_traits.h **** 	{ __p->~_Tp(); }
 262:/usr/include/c++/7/bits/alloc_traits.h **** 
 263:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Alloc2>
 264:/usr/include/c++/7/bits/alloc_traits.h **** 	static auto
 265:/usr/include/c++/7/bits/alloc_traits.h **** 	_S_max_size(_Alloc2& __a, int)
 266:/usr/include/c++/7/bits/alloc_traits.h **** 	-> decltype(__a.max_size())
 267:/usr/include/c++/7/bits/alloc_traits.h **** 	{ return __a.max_size(); }
 268:/usr/include/c++/7/bits/alloc_traits.h **** 
 269:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Alloc2>
 270:/usr/include/c++/7/bits/alloc_traits.h **** 	static size_type
 271:/usr/include/c++/7/bits/alloc_traits.h **** 	_S_max_size(_Alloc2&, ...)
 272:/usr/include/c++/7/bits/alloc_traits.h **** 	{
 273:/usr/include/c++/7/bits/alloc_traits.h **** 	  // _GLIBCXX_RESOLVE_LIB_DEFECTS
 274:/usr/include/c++/7/bits/alloc_traits.h **** 	  // 2466. allocator_traits::max_size() default behavior is incorrect
 275:/usr/include/c++/7/bits/alloc_traits.h **** 	  return __gnu_cxx::__numeric_traits<size_type>::__max
 276:/usr/include/c++/7/bits/alloc_traits.h **** 	    / sizeof(value_type);
 277:/usr/include/c++/7/bits/alloc_traits.h **** 	}
 278:/usr/include/c++/7/bits/alloc_traits.h **** 
 279:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Alloc2>
 280:/usr/include/c++/7/bits/alloc_traits.h **** 	static auto
 281:/usr/include/c++/7/bits/alloc_traits.h **** 	_S_select(_Alloc2& __a, int)
 282:/usr/include/c++/7/bits/alloc_traits.h **** 	-> decltype(__a.select_on_container_copy_construction())
 283:/usr/include/c++/7/bits/alloc_traits.h **** 	{ return __a.select_on_container_copy_construction(); }
 284:/usr/include/c++/7/bits/alloc_traits.h **** 
 285:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Alloc2>
 286:/usr/include/c++/7/bits/alloc_traits.h **** 	static _Alloc2
 287:/usr/include/c++/7/bits/alloc_traits.h **** 	_S_select(_Alloc2& __a, ...)
 288:/usr/include/c++/7/bits/alloc_traits.h **** 	{ return __a; }
 289:/usr/include/c++/7/bits/alloc_traits.h **** 
 290:/usr/include/c++/7/bits/alloc_traits.h ****     public:
 291:/usr/include/c++/7/bits/alloc_traits.h **** 
 292:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 293:/usr/include/c++/7/bits/alloc_traits.h ****        *  @brief  Allocate memory.
 294:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __a  An allocator.
 295:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __n  The number of objects to allocate space for.
 296:/usr/include/c++/7/bits/alloc_traits.h ****        *
 297:/usr/include/c++/7/bits/alloc_traits.h ****        *  Calls @c a.allocate(n)
 298:/usr/include/c++/7/bits/alloc_traits.h ****       */
 299:/usr/include/c++/7/bits/alloc_traits.h ****       static pointer
 300:/usr/include/c++/7/bits/alloc_traits.h ****       allocate(_Alloc& __a, size_type __n)
 301:/usr/include/c++/7/bits/alloc_traits.h ****       { return __a.allocate(__n); }
 302:/usr/include/c++/7/bits/alloc_traits.h **** 
 303:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 304:/usr/include/c++/7/bits/alloc_traits.h ****        *  @brief  Allocate memory.
 305:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __a  An allocator.
 306:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __n  The number of objects to allocate space for.
 307:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __hint Aid to locality.
 308:/usr/include/c++/7/bits/alloc_traits.h ****        *  @return Memory of suitable size and alignment for @a n objects
 309:/usr/include/c++/7/bits/alloc_traits.h ****        *          of type @c value_type
 310:/usr/include/c++/7/bits/alloc_traits.h ****        *
 311:/usr/include/c++/7/bits/alloc_traits.h ****        *  Returns <tt> a.allocate(n, hint) </tt> if that expression is
 312:/usr/include/c++/7/bits/alloc_traits.h ****        *  well-formed, otherwise returns @c a.allocate(n)
 313:/usr/include/c++/7/bits/alloc_traits.h ****       */
 314:/usr/include/c++/7/bits/alloc_traits.h ****       static pointer
 315:/usr/include/c++/7/bits/alloc_traits.h ****       allocate(_Alloc& __a, size_type __n, const_void_pointer __hint)
 316:/usr/include/c++/7/bits/alloc_traits.h ****       { return _S_allocate(__a, __n, __hint, 0); }
 317:/usr/include/c++/7/bits/alloc_traits.h **** 
 318:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 319:/usr/include/c++/7/bits/alloc_traits.h ****        *  @brief  Deallocate memory.
 320:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __a  An allocator.
 321:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __p  Pointer to the memory to deallocate.
 322:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __n  The number of objects space was allocated for.
 323:/usr/include/c++/7/bits/alloc_traits.h ****        *
 324:/usr/include/c++/7/bits/alloc_traits.h ****        *  Calls <tt> a.deallocate(p, n) </tt>
 325:/usr/include/c++/7/bits/alloc_traits.h ****       */
 326:/usr/include/c++/7/bits/alloc_traits.h ****       static void
 327:/usr/include/c++/7/bits/alloc_traits.h ****       deallocate(_Alloc& __a, pointer __p, size_type __n)
 328:/usr/include/c++/7/bits/alloc_traits.h ****       { __a.deallocate(__p, __n); }
 329:/usr/include/c++/7/bits/alloc_traits.h **** 
 330:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 331:/usr/include/c++/7/bits/alloc_traits.h ****        *  @brief  Construct an object of type @a _Tp
 332:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __a  An allocator.
 333:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __p  Pointer to memory of suitable size and alignment for Tp
 334:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __args Constructor arguments.
 335:/usr/include/c++/7/bits/alloc_traits.h ****        *
 336:/usr/include/c++/7/bits/alloc_traits.h ****        *  Calls <tt> __a.construct(__p, std::forward<Args>(__args)...) </tt>
 337:/usr/include/c++/7/bits/alloc_traits.h ****        *  if that expression is well-formed, otherwise uses placement-new
 338:/usr/include/c++/7/bits/alloc_traits.h ****        *  to construct an object of type @a _Tp at location @a __p from the
 339:/usr/include/c++/7/bits/alloc_traits.h ****        *  arguments @a __args...
 340:/usr/include/c++/7/bits/alloc_traits.h ****       */
 341:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Tp, typename... _Args>
 342:/usr/include/c++/7/bits/alloc_traits.h **** 	static auto construct(_Alloc& __a, _Tp* __p, _Args&&... __args)
 343:/usr/include/c++/7/bits/alloc_traits.h **** 	-> decltype(_S_construct(__a, __p, std::forward<_Args>(__args)...))
 344:/usr/include/c++/7/bits/alloc_traits.h **** 	{ _S_construct(__a, __p, std::forward<_Args>(__args)...); }
 345:/usr/include/c++/7/bits/alloc_traits.h **** 
 346:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 347:/usr/include/c++/7/bits/alloc_traits.h ****        *  @brief  Destroy an object of type @a _Tp
 348:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __a  An allocator.
 349:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __p  Pointer to the object to destroy
 350:/usr/include/c++/7/bits/alloc_traits.h ****        *
 351:/usr/include/c++/7/bits/alloc_traits.h ****        *  Calls @c __a.destroy(__p) if that expression is well-formed,
 352:/usr/include/c++/7/bits/alloc_traits.h ****        *  otherwise calls @c __p->~_Tp()
 353:/usr/include/c++/7/bits/alloc_traits.h ****       */
 354:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Tp>
 355:/usr/include/c++/7/bits/alloc_traits.h **** 	static void destroy(_Alloc& __a, _Tp* __p)
 356:/usr/include/c++/7/bits/alloc_traits.h **** 	{ _S_destroy(__a, __p, 0); }
 357:/usr/include/c++/7/bits/alloc_traits.h **** 
 358:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 359:/usr/include/c++/7/bits/alloc_traits.h ****        *  @brief  The maximum supported allocation size
 360:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __a  An allocator.
 361:/usr/include/c++/7/bits/alloc_traits.h ****        *  @return @c __a.max_size() or @c numeric_limits<size_type>::max()
 362:/usr/include/c++/7/bits/alloc_traits.h ****        *
 363:/usr/include/c++/7/bits/alloc_traits.h ****        *  Returns @c __a.max_size() if that expression is well-formed,
 364:/usr/include/c++/7/bits/alloc_traits.h ****        *  otherwise returns @c numeric_limits<size_type>::max()
 365:/usr/include/c++/7/bits/alloc_traits.h ****       */
 366:/usr/include/c++/7/bits/alloc_traits.h ****       static size_type max_size(const _Alloc& __a) noexcept
 367:/usr/include/c++/7/bits/alloc_traits.h ****       { return _S_max_size(__a, 0); }
 368:/usr/include/c++/7/bits/alloc_traits.h **** 
 369:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 370:/usr/include/c++/7/bits/alloc_traits.h ****        *  @brief  Obtain an allocator to use when copying a container.
 371:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __rhs  An allocator.
 372:/usr/include/c++/7/bits/alloc_traits.h ****        *  @return @c __rhs.select_on_container_copy_construction() or @a __rhs
 373:/usr/include/c++/7/bits/alloc_traits.h ****        *
 374:/usr/include/c++/7/bits/alloc_traits.h ****        *  Returns @c __rhs.select_on_container_copy_construction() if that
 375:/usr/include/c++/7/bits/alloc_traits.h ****        *  expression is well-formed, otherwise returns @a __rhs
 376:/usr/include/c++/7/bits/alloc_traits.h ****       */
 377:/usr/include/c++/7/bits/alloc_traits.h ****       static _Alloc
 378:/usr/include/c++/7/bits/alloc_traits.h ****       select_on_container_copy_construction(const _Alloc& __rhs)
 379:/usr/include/c++/7/bits/alloc_traits.h ****       { return _S_select(__rhs, 0); }
 380:/usr/include/c++/7/bits/alloc_traits.h ****     };
 381:/usr/include/c++/7/bits/alloc_traits.h **** 
 382:/usr/include/c++/7/bits/alloc_traits.h ****   /// Partial specialization for std::allocator.
 383:/usr/include/c++/7/bits/alloc_traits.h ****   template<typename _Tp>
 384:/usr/include/c++/7/bits/alloc_traits.h ****     struct allocator_traits<allocator<_Tp>>
 385:/usr/include/c++/7/bits/alloc_traits.h ****     {
 386:/usr/include/c++/7/bits/alloc_traits.h ****       /// The allocator type
 387:/usr/include/c++/7/bits/alloc_traits.h ****       using allocator_type = allocator<_Tp>;
 388:/usr/include/c++/7/bits/alloc_traits.h ****       /// The allocated type
 389:/usr/include/c++/7/bits/alloc_traits.h ****       using value_type = _Tp;
 390:/usr/include/c++/7/bits/alloc_traits.h **** 
 391:/usr/include/c++/7/bits/alloc_traits.h ****       /// The allocator's pointer type.
 392:/usr/include/c++/7/bits/alloc_traits.h ****       using pointer = _Tp*;
 393:/usr/include/c++/7/bits/alloc_traits.h **** 
 394:/usr/include/c++/7/bits/alloc_traits.h ****       /// The allocator's const pointer type.
 395:/usr/include/c++/7/bits/alloc_traits.h ****       using const_pointer = const _Tp*;
 396:/usr/include/c++/7/bits/alloc_traits.h **** 
 397:/usr/include/c++/7/bits/alloc_traits.h ****       /// The allocator's void pointer type.
 398:/usr/include/c++/7/bits/alloc_traits.h ****       using void_pointer = void*;
 399:/usr/include/c++/7/bits/alloc_traits.h **** 
 400:/usr/include/c++/7/bits/alloc_traits.h ****       /// The allocator's const void pointer type.
 401:/usr/include/c++/7/bits/alloc_traits.h ****       using const_void_pointer = const void*;
 402:/usr/include/c++/7/bits/alloc_traits.h **** 
 403:/usr/include/c++/7/bits/alloc_traits.h ****       /// The allocator's difference type
 404:/usr/include/c++/7/bits/alloc_traits.h ****       using difference_type = std::ptrdiff_t;
 405:/usr/include/c++/7/bits/alloc_traits.h **** 
 406:/usr/include/c++/7/bits/alloc_traits.h ****       /// The allocator's size type
 407:/usr/include/c++/7/bits/alloc_traits.h ****       using size_type = std::size_t;
 408:/usr/include/c++/7/bits/alloc_traits.h **** 
 409:/usr/include/c++/7/bits/alloc_traits.h ****       /// How the allocator is propagated on copy assignment
 410:/usr/include/c++/7/bits/alloc_traits.h ****       using propagate_on_container_copy_assignment = false_type;
 411:/usr/include/c++/7/bits/alloc_traits.h **** 
 412:/usr/include/c++/7/bits/alloc_traits.h ****       /// How the allocator is propagated on move assignment
 413:/usr/include/c++/7/bits/alloc_traits.h ****       using propagate_on_container_move_assignment = true_type;
 414:/usr/include/c++/7/bits/alloc_traits.h **** 
 415:/usr/include/c++/7/bits/alloc_traits.h ****       /// How the allocator is propagated on swap
 416:/usr/include/c++/7/bits/alloc_traits.h ****       using propagate_on_container_swap = false_type;
 417:/usr/include/c++/7/bits/alloc_traits.h **** 
 418:/usr/include/c++/7/bits/alloc_traits.h ****       /// Whether all instances of the allocator type compare equal.
 419:/usr/include/c++/7/bits/alloc_traits.h ****       using is_always_equal = true_type;
 420:/usr/include/c++/7/bits/alloc_traits.h **** 
 421:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Up>
 422:/usr/include/c++/7/bits/alloc_traits.h **** 	using rebind_alloc = allocator<_Up>;
 423:/usr/include/c++/7/bits/alloc_traits.h **** 
 424:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Up>
 425:/usr/include/c++/7/bits/alloc_traits.h **** 	using rebind_traits = allocator_traits<allocator<_Up>>;
 426:/usr/include/c++/7/bits/alloc_traits.h **** 
 427:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 428:/usr/include/c++/7/bits/alloc_traits.h ****        *  @brief  Allocate memory.
 429:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __a  An allocator.
 430:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __n  The number of objects to allocate space for.
 431:/usr/include/c++/7/bits/alloc_traits.h ****        *
 432:/usr/include/c++/7/bits/alloc_traits.h ****        *  Calls @c a.allocate(n)
 433:/usr/include/c++/7/bits/alloc_traits.h ****       */
 434:/usr/include/c++/7/bits/alloc_traits.h ****       static pointer
 435:/usr/include/c++/7/bits/alloc_traits.h ****       allocate(allocator_type& __a, size_type __n)
 436:/usr/include/c++/7/bits/alloc_traits.h ****       { return __a.allocate(__n); }
 437:/usr/include/c++/7/bits/alloc_traits.h **** 
 438:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 439:/usr/include/c++/7/bits/alloc_traits.h ****        *  @brief  Allocate memory.
 440:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __a  An allocator.
 441:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __n  The number of objects to allocate space for.
 442:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __hint Aid to locality.
 443:/usr/include/c++/7/bits/alloc_traits.h ****        *  @return Memory of suitable size and alignment for @a n objects
 444:/usr/include/c++/7/bits/alloc_traits.h ****        *          of type @c value_type
 445:/usr/include/c++/7/bits/alloc_traits.h ****        *
 446:/usr/include/c++/7/bits/alloc_traits.h ****        *  Returns <tt> a.allocate(n, hint) </tt>
 447:/usr/include/c++/7/bits/alloc_traits.h ****       */
 448:/usr/include/c++/7/bits/alloc_traits.h ****       static pointer
 449:/usr/include/c++/7/bits/alloc_traits.h ****       allocate(allocator_type& __a, size_type __n, const_void_pointer __hint)
 450:/usr/include/c++/7/bits/alloc_traits.h ****       { return __a.allocate(__n, __hint); }
 451:/usr/include/c++/7/bits/alloc_traits.h **** 
 452:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 453:/usr/include/c++/7/bits/alloc_traits.h ****        *  @brief  Deallocate memory.
 454:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __a  An allocator.
 455:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __p  Pointer to the memory to deallocate.
 456:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __n  The number of objects space was allocated for.
 457:/usr/include/c++/7/bits/alloc_traits.h ****        *
 458:/usr/include/c++/7/bits/alloc_traits.h ****        *  Calls <tt> a.deallocate(p, n) </tt>
 459:/usr/include/c++/7/bits/alloc_traits.h ****       */
 460:/usr/include/c++/7/bits/alloc_traits.h ****       static void
 461:/usr/include/c++/7/bits/alloc_traits.h ****       deallocate(allocator_type& __a, pointer __p, size_type __n)
 2982              		.loc 9 461 0
 2983              		.cfi_startproc
 2984 0000 55       		pushq	%rbp
 2985              		.cfi_def_cfa_offset 16
 2986              		.cfi_offset 6, -16
 2987 0001 4889E5   		movq	%rsp, %rbp
 2988              		.cfi_def_cfa_register 6
 2989 0004 4883EC20 		subq	$32, %rsp
 2990 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2991 000c 488975F0 		movq	%rsi, -16(%rbp)
 2992 0010 488955E8 		movq	%rdx, -24(%rbp)
 462:/usr/include/c++/7/bits/alloc_traits.h ****       { __a.deallocate(__p, __n); }
 2993              		.loc 9 462 0
 2994 0014 488B55E8 		movq	-24(%rbp), %rdx
 2995 0018 488B4DF0 		movq	-16(%rbp), %rcx
 2996 001c 488B45F8 		movq	-8(%rbp), %rax
 2997 0020 4889CE   		movq	%rcx, %rsi
 2998 0023 4889C7   		movq	%rax, %rdi
 2999 0026 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
 2999      00
 3000 002b 90       		nop
 3001 002c C9       		leave
 3002              		.cfi_def_cfa 7, 8
 3003 002d C3       		ret
 3004              		.cfi_endproc
 3005              	.LFE2350:
 3007              		.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxI
 3008              		.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
 3010              	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_:
 3011              	.LFB2351:
 117:/usr/include/c++/7/bits/stl_construct.h ****     };
 3012              		.loc 4 117 0
 3013              		.cfi_startproc
 3014 0000 55       		pushq	%rbp
 3015              		.cfi_def_cfa_offset 16
 3016              		.cfi_offset 6, -16
 3017 0001 4889E5   		movq	%rsp, %rbp
 3018              		.cfi_def_cfa_register 6
 3019 0004 48897DF8 		movq	%rdi, -8(%rbp)
 3020 0008 488975F0 		movq	%rsi, -16(%rbp)
 117:/usr/include/c++/7/bits/stl_construct.h ****     };
 3021              		.loc 4 117 0
 3022 000c 90       		nop
 3023 000d 5D       		popq	%rbp
 3024              		.cfi_def_cfa 7, 8
 3025 000e C3       		ret
 3026              		.cfi_endproc
 3027              	.LFE2351:
 3029              		.section	.text._ZSt25__uninitialized_default_nIPdmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_
 3030              		.weak	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
 3032              	_ZSt25__uninitialized_default_nIPdmET_S1_T0_:
 3033              	.LFB2353:
 574:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 3034              		.loc 7 574 0
 3035              		.cfi_startproc
 3036 0000 55       		pushq	%rbp
 3037              		.cfi_def_cfa_offset 16
 3038              		.cfi_offset 6, -16
 3039 0001 4889E5   		movq	%rsp, %rbp
 3040              		.cfi_def_cfa_register 6
 3041 0004 4883EC20 		subq	$32, %rsp
 3042 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3043 000c 488975E0 		movq	%rsi, -32(%rbp)
 579:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 3044              		.loc 7 579 0
 3045 0010 C645FF01 		movb	$1, -1(%rbp)
 583:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 3046              		.loc 7 583 0
 3047 0014 488B55E0 		movq	-32(%rbp), %rdx
 3048 0018 488B45E8 		movq	-24(%rbp), %rax
 3049 001c 4889D6   		movq	%rdx, %rsi
 3050 001f 4889C7   		movq	%rax, %rdi
 3051 0022 E8000000 		call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
 3051      00
 584:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 3052              		.loc 7 584 0
 3053 0027 C9       		leave
 3054              		.cfi_def_cfa 7, 8
 3055 0028 C3       		ret
 3056              		.cfi_endproc
 3057              	.LFE2353:
 3059              		.section	.text._ZNKSt6vectorIdSaIdEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE8max_sizeEv,c
 3060              		.align 2
 3061              		.weak	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 3063              	_ZNKSt6vectorIdSaIdEE8max_sizeEv:
 3064              	.LFB2354:
 675:/usr/include/c++/7/bits/stl_vector.h ****       { return _Alloc_traits::max_size(_M_get_Tp_allocator()); }
 3065              		.loc 2 675 0
 3066              		.cfi_startproc
 3067 0000 55       		pushq	%rbp
 3068              		.cfi_def_cfa_offset 16
 3069              		.cfi_offset 6, -16
 3070 0001 4889E5   		movq	%rsp, %rbp
 3071              		.cfi_def_cfa_register 6
 3072 0004 4883EC10 		subq	$16, %rsp
 3073 0008 48897DF8 		movq	%rdi, -8(%rbp)
 676:/usr/include/c++/7/bits/stl_vector.h **** 
 3074              		.loc 2 676 0
 3075 000c 488B45F8 		movq	-8(%rbp), %rax
 3076 0010 4889C7   		movq	%rax, %rdi
 3077 0013 E8000000 		call	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 3077      00
 3078 0018 4889C7   		movq	%rax, %rdi
 3079 001b E8000000 		call	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
 3079      00
 3080 0020 C9       		leave
 3081              		.cfi_def_cfa 7, 8
 3082 0021 C3       		ret
 3083              		.cfi_endproc
 3084              	.LFE2354:
 3086              		.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
 3087              		.weak	_ZSt3maxImERKT_S2_S2_
 3089              	_ZSt3maxImERKT_S2_S2_:
 3090              	.LFB2355:
 3091              		.file 10 "/usr/include/c++/7/bits/stl_algobase.h"
   1:/usr/include/c++/7/bits/stl_algobase.h **** // Core algorithmic facilities -*- C++ -*-
   2:/usr/include/c++/7/bits/stl_algobase.h **** 
   3:/usr/include/c++/7/bits/stl_algobase.h **** // Copyright (C) 2001-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/stl_algobase.h **** //
   5:/usr/include/c++/7/bits/stl_algobase.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/stl_algobase.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/stl_algobase.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/stl_algobase.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/stl_algobase.h **** // any later version.
  10:/usr/include/c++/7/bits/stl_algobase.h **** 
  11:/usr/include/c++/7/bits/stl_algobase.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/stl_algobase.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/stl_algobase.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/stl_algobase.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/stl_algobase.h **** 
  16:/usr/include/c++/7/bits/stl_algobase.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/stl_algobase.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/stl_algobase.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/stl_algobase.h **** 
  20:/usr/include/c++/7/bits/stl_algobase.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/stl_algobase.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/stl_algobase.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/stl_algobase.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/stl_algobase.h **** 
  25:/usr/include/c++/7/bits/stl_algobase.h **** /*
  26:/usr/include/c++/7/bits/stl_algobase.h ****  *
  27:/usr/include/c++/7/bits/stl_algobase.h ****  * Copyright (c) 1994
  28:/usr/include/c++/7/bits/stl_algobase.h ****  * Hewlett-Packard Company
  29:/usr/include/c++/7/bits/stl_algobase.h ****  *
  30:/usr/include/c++/7/bits/stl_algobase.h ****  * Permission to use, copy, modify, distribute and sell this software
  31:/usr/include/c++/7/bits/stl_algobase.h ****  * and its documentation for any purpose is hereby granted without fee,
  32:/usr/include/c++/7/bits/stl_algobase.h ****  * provided that the above copyright notice appear in all copies and
  33:/usr/include/c++/7/bits/stl_algobase.h ****  * that both that copyright notice and this permission notice appear
  34:/usr/include/c++/7/bits/stl_algobase.h ****  * in supporting documentation.  Hewlett-Packard Company makes no
  35:/usr/include/c++/7/bits/stl_algobase.h ****  * representations about the suitability of this software for any
  36:/usr/include/c++/7/bits/stl_algobase.h ****  * purpose.  It is provided "as is" without express or implied warranty.
  37:/usr/include/c++/7/bits/stl_algobase.h ****  *
  38:/usr/include/c++/7/bits/stl_algobase.h ****  *
  39:/usr/include/c++/7/bits/stl_algobase.h ****  * Copyright (c) 1996-1998
  40:/usr/include/c++/7/bits/stl_algobase.h ****  * Silicon Graphics Computer Systems, Inc.
  41:/usr/include/c++/7/bits/stl_algobase.h ****  *
  42:/usr/include/c++/7/bits/stl_algobase.h ****  * Permission to use, copy, modify, distribute and sell this software
  43:/usr/include/c++/7/bits/stl_algobase.h ****  * and its documentation for any purpose is hereby granted without fee,
  44:/usr/include/c++/7/bits/stl_algobase.h ****  * provided that the above copyright notice appear in all copies and
  45:/usr/include/c++/7/bits/stl_algobase.h ****  * that both that copyright notice and this permission notice appear
  46:/usr/include/c++/7/bits/stl_algobase.h ****  * in supporting documentation.  Silicon Graphics makes no
  47:/usr/include/c++/7/bits/stl_algobase.h ****  * representations about the suitability of this software for any
  48:/usr/include/c++/7/bits/stl_algobase.h ****  * purpose.  It is provided "as is" without express or implied warranty.
  49:/usr/include/c++/7/bits/stl_algobase.h ****  */
  50:/usr/include/c++/7/bits/stl_algobase.h **** 
  51:/usr/include/c++/7/bits/stl_algobase.h **** /** @file bits/stl_algobase.h
  52:/usr/include/c++/7/bits/stl_algobase.h ****  *  This is an internal header file, included by other library headers.
  53:/usr/include/c++/7/bits/stl_algobase.h ****  *  Do not attempt to use it directly. @headername{algorithm}
  54:/usr/include/c++/7/bits/stl_algobase.h ****  */
  55:/usr/include/c++/7/bits/stl_algobase.h **** 
  56:/usr/include/c++/7/bits/stl_algobase.h **** #ifndef _STL_ALGOBASE_H
  57:/usr/include/c++/7/bits/stl_algobase.h **** #define _STL_ALGOBASE_H 1
  58:/usr/include/c++/7/bits/stl_algobase.h **** 
  59:/usr/include/c++/7/bits/stl_algobase.h **** #include <bits/c++config.h>
  60:/usr/include/c++/7/bits/stl_algobase.h **** #include <bits/functexcept.h>
  61:/usr/include/c++/7/bits/stl_algobase.h **** #include <bits/cpp_type_traits.h>
  62:/usr/include/c++/7/bits/stl_algobase.h **** #include <ext/type_traits.h>
  63:/usr/include/c++/7/bits/stl_algobase.h **** #include <ext/numeric_traits.h>
  64:/usr/include/c++/7/bits/stl_algobase.h **** #include <bits/stl_pair.h>
  65:/usr/include/c++/7/bits/stl_algobase.h **** #include <bits/stl_iterator_base_types.h>
  66:/usr/include/c++/7/bits/stl_algobase.h **** #include <bits/stl_iterator_base_funcs.h>
  67:/usr/include/c++/7/bits/stl_algobase.h **** #include <bits/stl_iterator.h>
  68:/usr/include/c++/7/bits/stl_algobase.h **** #include <bits/concept_check.h>
  69:/usr/include/c++/7/bits/stl_algobase.h **** #include <debug/debug.h>
  70:/usr/include/c++/7/bits/stl_algobase.h **** #include <bits/move.h> // For std::swap and _GLIBCXX_MOVE
  71:/usr/include/c++/7/bits/stl_algobase.h **** #include <bits/predefined_ops.h>
  72:/usr/include/c++/7/bits/stl_algobase.h **** 
  73:/usr/include/c++/7/bits/stl_algobase.h **** namespace std _GLIBCXX_VISIBILITY(default)
  74:/usr/include/c++/7/bits/stl_algobase.h **** {
  75:/usr/include/c++/7/bits/stl_algobase.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  76:/usr/include/c++/7/bits/stl_algobase.h **** 
  77:/usr/include/c++/7/bits/stl_algobase.h **** #if __cplusplus < 201103L
  78:/usr/include/c++/7/bits/stl_algobase.h ****   // See http://gcc.gnu.org/ml/libstdc++/2004-08/msg00167.html: in a
  79:/usr/include/c++/7/bits/stl_algobase.h ****   // nutshell, we are partially implementing the resolution of DR 187,
  80:/usr/include/c++/7/bits/stl_algobase.h ****   // when it's safe, i.e., the value_types are equal.
  81:/usr/include/c++/7/bits/stl_algobase.h ****   template<bool _BoolType>
  82:/usr/include/c++/7/bits/stl_algobase.h ****     struct __iter_swap
  83:/usr/include/c++/7/bits/stl_algobase.h ****     {
  84:/usr/include/c++/7/bits/stl_algobase.h ****       template<typename _ForwardIterator1, typename _ForwardIterator2>
  85:/usr/include/c++/7/bits/stl_algobase.h ****         static void
  86:/usr/include/c++/7/bits/stl_algobase.h ****         iter_swap(_ForwardIterator1 __a, _ForwardIterator2 __b)
  87:/usr/include/c++/7/bits/stl_algobase.h ****         {
  88:/usr/include/c++/7/bits/stl_algobase.h ****           typedef typename iterator_traits<_ForwardIterator1>::value_type
  89:/usr/include/c++/7/bits/stl_algobase.h ****             _ValueType1;
  90:/usr/include/c++/7/bits/stl_algobase.h ****           _ValueType1 __tmp = _GLIBCXX_MOVE(*__a);
  91:/usr/include/c++/7/bits/stl_algobase.h ****           *__a = _GLIBCXX_MOVE(*__b);
  92:/usr/include/c++/7/bits/stl_algobase.h ****           *__b = _GLIBCXX_MOVE(__tmp);
  93:/usr/include/c++/7/bits/stl_algobase.h **** 	}
  94:/usr/include/c++/7/bits/stl_algobase.h ****     };
  95:/usr/include/c++/7/bits/stl_algobase.h **** 
  96:/usr/include/c++/7/bits/stl_algobase.h ****   template<>
  97:/usr/include/c++/7/bits/stl_algobase.h ****     struct __iter_swap<true>
  98:/usr/include/c++/7/bits/stl_algobase.h ****     {
  99:/usr/include/c++/7/bits/stl_algobase.h ****       template<typename _ForwardIterator1, typename _ForwardIterator2>
 100:/usr/include/c++/7/bits/stl_algobase.h ****         static void 
 101:/usr/include/c++/7/bits/stl_algobase.h ****         iter_swap(_ForwardIterator1 __a, _ForwardIterator2 __b)
 102:/usr/include/c++/7/bits/stl_algobase.h ****         {
 103:/usr/include/c++/7/bits/stl_algobase.h ****           swap(*__a, *__b);
 104:/usr/include/c++/7/bits/stl_algobase.h ****         }
 105:/usr/include/c++/7/bits/stl_algobase.h ****     };
 106:/usr/include/c++/7/bits/stl_algobase.h **** #endif
 107:/usr/include/c++/7/bits/stl_algobase.h **** 
 108:/usr/include/c++/7/bits/stl_algobase.h ****   /**
 109:/usr/include/c++/7/bits/stl_algobase.h ****    *  @brief Swaps the contents of two iterators.
 110:/usr/include/c++/7/bits/stl_algobase.h ****    *  @ingroup mutating_algorithms
 111:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __a  An iterator.
 112:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __b  Another iterator.
 113:/usr/include/c++/7/bits/stl_algobase.h ****    *  @return   Nothing.
 114:/usr/include/c++/7/bits/stl_algobase.h ****    *
 115:/usr/include/c++/7/bits/stl_algobase.h ****    *  This function swaps the values pointed to by two iterators, not the
 116:/usr/include/c++/7/bits/stl_algobase.h ****    *  iterators themselves.
 117:/usr/include/c++/7/bits/stl_algobase.h ****   */
 118:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _ForwardIterator1, typename _ForwardIterator2>
 119:/usr/include/c++/7/bits/stl_algobase.h ****     inline void
 120:/usr/include/c++/7/bits/stl_algobase.h ****     iter_swap(_ForwardIterator1 __a, _ForwardIterator2 __b)
 121:/usr/include/c++/7/bits/stl_algobase.h ****     {
 122:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 123:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_Mutable_ForwardIteratorConcept<
 124:/usr/include/c++/7/bits/stl_algobase.h **** 				  _ForwardIterator1>)
 125:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_Mutable_ForwardIteratorConcept<
 126:/usr/include/c++/7/bits/stl_algobase.h **** 				  _ForwardIterator2>)
 127:/usr/include/c++/7/bits/stl_algobase.h **** 
 128:/usr/include/c++/7/bits/stl_algobase.h **** #if __cplusplus < 201103L
 129:/usr/include/c++/7/bits/stl_algobase.h ****       typedef typename iterator_traits<_ForwardIterator1>::value_type
 130:/usr/include/c++/7/bits/stl_algobase.h **** 	_ValueType1;
 131:/usr/include/c++/7/bits/stl_algobase.h ****       typedef typename iterator_traits<_ForwardIterator2>::value_type
 132:/usr/include/c++/7/bits/stl_algobase.h **** 	_ValueType2;
 133:/usr/include/c++/7/bits/stl_algobase.h **** 
 134:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_ConvertibleConcept<_ValueType1,
 135:/usr/include/c++/7/bits/stl_algobase.h **** 				  _ValueType2>)
 136:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_ConvertibleConcept<_ValueType2,
 137:/usr/include/c++/7/bits/stl_algobase.h **** 				  _ValueType1>)
 138:/usr/include/c++/7/bits/stl_algobase.h **** 
 139:/usr/include/c++/7/bits/stl_algobase.h ****       typedef typename iterator_traits<_ForwardIterator1>::reference
 140:/usr/include/c++/7/bits/stl_algobase.h **** 	_ReferenceType1;
 141:/usr/include/c++/7/bits/stl_algobase.h ****       typedef typename iterator_traits<_ForwardIterator2>::reference
 142:/usr/include/c++/7/bits/stl_algobase.h **** 	_ReferenceType2;
 143:/usr/include/c++/7/bits/stl_algobase.h ****       std::__iter_swap<__are_same<_ValueType1, _ValueType2>::__value
 144:/usr/include/c++/7/bits/stl_algobase.h **** 	&& __are_same<_ValueType1&, _ReferenceType1>::__value
 145:/usr/include/c++/7/bits/stl_algobase.h **** 	&& __are_same<_ValueType2&, _ReferenceType2>::__value>::
 146:/usr/include/c++/7/bits/stl_algobase.h **** 	iter_swap(__a, __b);
 147:/usr/include/c++/7/bits/stl_algobase.h **** #else
 148:/usr/include/c++/7/bits/stl_algobase.h ****       swap(*__a, *__b);
 149:/usr/include/c++/7/bits/stl_algobase.h **** #endif
 150:/usr/include/c++/7/bits/stl_algobase.h ****     }
 151:/usr/include/c++/7/bits/stl_algobase.h **** 
 152:/usr/include/c++/7/bits/stl_algobase.h ****   /**
 153:/usr/include/c++/7/bits/stl_algobase.h ****    *  @brief Swap the elements of two sequences.
 154:/usr/include/c++/7/bits/stl_algobase.h ****    *  @ingroup mutating_algorithms
 155:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __first1  A forward iterator.
 156:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __last1   A forward iterator.
 157:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __first2  A forward iterator.
 158:/usr/include/c++/7/bits/stl_algobase.h ****    *  @return   An iterator equal to @p first2+(last1-first1).
 159:/usr/include/c++/7/bits/stl_algobase.h ****    *
 160:/usr/include/c++/7/bits/stl_algobase.h ****    *  Swaps each element in the range @p [first1,last1) with the
 161:/usr/include/c++/7/bits/stl_algobase.h ****    *  corresponding element in the range @p [first2,(last1-first1)).
 162:/usr/include/c++/7/bits/stl_algobase.h ****    *  The ranges must not overlap.
 163:/usr/include/c++/7/bits/stl_algobase.h ****   */
 164:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _ForwardIterator1, typename _ForwardIterator2>
 165:/usr/include/c++/7/bits/stl_algobase.h ****     _ForwardIterator2
 166:/usr/include/c++/7/bits/stl_algobase.h ****     swap_ranges(_ForwardIterator1 __first1, _ForwardIterator1 __last1,
 167:/usr/include/c++/7/bits/stl_algobase.h **** 		_ForwardIterator2 __first2)
 168:/usr/include/c++/7/bits/stl_algobase.h ****     {
 169:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 170:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_Mutable_ForwardIteratorConcept<
 171:/usr/include/c++/7/bits/stl_algobase.h **** 				  _ForwardIterator1>)
 172:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_Mutable_ForwardIteratorConcept<
 173:/usr/include/c++/7/bits/stl_algobase.h **** 				  _ForwardIterator2>)
 174:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_requires_valid_range(__first1, __last1);
 175:/usr/include/c++/7/bits/stl_algobase.h **** 
 176:/usr/include/c++/7/bits/stl_algobase.h ****       for (; __first1 != __last1; ++__first1, (void)++__first2)
 177:/usr/include/c++/7/bits/stl_algobase.h **** 	std::iter_swap(__first1, __first2);
 178:/usr/include/c++/7/bits/stl_algobase.h ****       return __first2;
 179:/usr/include/c++/7/bits/stl_algobase.h ****     }
 180:/usr/include/c++/7/bits/stl_algobase.h **** 
 181:/usr/include/c++/7/bits/stl_algobase.h ****   /**
 182:/usr/include/c++/7/bits/stl_algobase.h ****    *  @brief This does what you think it does.
 183:/usr/include/c++/7/bits/stl_algobase.h ****    *  @ingroup sorting_algorithms
 184:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __a  A thing of arbitrary type.
 185:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __b  Another thing of arbitrary type.
 186:/usr/include/c++/7/bits/stl_algobase.h ****    *  @return   The lesser of the parameters.
 187:/usr/include/c++/7/bits/stl_algobase.h ****    *
 188:/usr/include/c++/7/bits/stl_algobase.h ****    *  This is the simple classic generic implementation.  It will work on
 189:/usr/include/c++/7/bits/stl_algobase.h ****    *  temporary expressions, since they are only evaluated once, unlike a
 190:/usr/include/c++/7/bits/stl_algobase.h ****    *  preprocessor macro.
 191:/usr/include/c++/7/bits/stl_algobase.h ****   */
 192:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _Tp>
 193:/usr/include/c++/7/bits/stl_algobase.h ****     _GLIBCXX14_CONSTEXPR
 194:/usr/include/c++/7/bits/stl_algobase.h ****     inline const _Tp&
 195:/usr/include/c++/7/bits/stl_algobase.h ****     min(const _Tp& __a, const _Tp& __b)
 196:/usr/include/c++/7/bits/stl_algobase.h ****     {
 197:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 198:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_LessThanComparableConcept<_Tp>)
 199:/usr/include/c++/7/bits/stl_algobase.h ****       //return __b < __a ? __b : __a;
 200:/usr/include/c++/7/bits/stl_algobase.h ****       if (__b < __a)
 201:/usr/include/c++/7/bits/stl_algobase.h **** 	return __b;
 202:/usr/include/c++/7/bits/stl_algobase.h ****       return __a;
 203:/usr/include/c++/7/bits/stl_algobase.h ****     }
 204:/usr/include/c++/7/bits/stl_algobase.h **** 
 205:/usr/include/c++/7/bits/stl_algobase.h ****   /**
 206:/usr/include/c++/7/bits/stl_algobase.h ****    *  @brief This does what you think it does.
 207:/usr/include/c++/7/bits/stl_algobase.h ****    *  @ingroup sorting_algorithms
 208:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __a  A thing of arbitrary type.
 209:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __b  Another thing of arbitrary type.
 210:/usr/include/c++/7/bits/stl_algobase.h ****    *  @return   The greater of the parameters.
 211:/usr/include/c++/7/bits/stl_algobase.h ****    *
 212:/usr/include/c++/7/bits/stl_algobase.h ****    *  This is the simple classic generic implementation.  It will work on
 213:/usr/include/c++/7/bits/stl_algobase.h ****    *  temporary expressions, since they are only evaluated once, unlike a
 214:/usr/include/c++/7/bits/stl_algobase.h ****    *  preprocessor macro.
 215:/usr/include/c++/7/bits/stl_algobase.h ****   */
 216:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _Tp>
 217:/usr/include/c++/7/bits/stl_algobase.h ****     _GLIBCXX14_CONSTEXPR
 218:/usr/include/c++/7/bits/stl_algobase.h ****     inline const _Tp&
 219:/usr/include/c++/7/bits/stl_algobase.h ****     max(const _Tp& __a, const _Tp& __b)
 3092              		.loc 10 219 0
 3093              		.cfi_startproc
 3094 0000 55       		pushq	%rbp
 3095              		.cfi_def_cfa_offset 16
 3096              		.cfi_offset 6, -16
 3097 0001 4889E5   		movq	%rsp, %rbp
 3098              		.cfi_def_cfa_register 6
 3099 0004 48897DF8 		movq	%rdi, -8(%rbp)
 3100 0008 488975F0 		movq	%rsi, -16(%rbp)
 220:/usr/include/c++/7/bits/stl_algobase.h ****     {
 221:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 222:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_LessThanComparableConcept<_Tp>)
 223:/usr/include/c++/7/bits/stl_algobase.h ****       //return  __a < __b ? __b : __a;
 224:/usr/include/c++/7/bits/stl_algobase.h ****       if (__a < __b)
 3101              		.loc 10 224 0
 3102 000c 488B45F8 		movq	-8(%rbp), %rax
 3103 0010 488B10   		movq	(%rax), %rdx
 3104 0013 488B45F0 		movq	-16(%rbp), %rax
 3105 0017 488B00   		movq	(%rax), %rax
 3106 001a 4839C2   		cmpq	%rax, %rdx
 3107 001d 7306     		jnb	.L149
 225:/usr/include/c++/7/bits/stl_algobase.h **** 	return __b;
 3108              		.loc 10 225 0
 3109 001f 488B45F0 		movq	-16(%rbp), %rax
 3110 0023 EB04     		jmp	.L150
 3111              	.L149:
 226:/usr/include/c++/7/bits/stl_algobase.h ****       return __a;
 3112              		.loc 10 226 0
 3113 0025 488B45F8 		movq	-8(%rbp), %rax
 3114              	.L150:
 227:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3115              		.loc 10 227 0
 3116 0029 5D       		popq	%rbp
 3117              		.cfi_def_cfa 7, 8
 3118 002a C3       		ret
 3119              		.cfi_endproc
 3120              	.LFE2355:
 3122              		.section	.text._ZNSt16allocator_traitsISaIdEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_trai
 3123              		.weak	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
 3125              	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m:
 3126              	.LFB2356:
 435:/usr/include/c++/7/bits/alloc_traits.h ****       { return __a.allocate(__n); }
 3127              		.loc 9 435 0
 3128              		.cfi_startproc
 3129 0000 55       		pushq	%rbp
 3130              		.cfi_def_cfa_offset 16
 3131              		.cfi_offset 6, -16
 3132 0001 4889E5   		movq	%rsp, %rbp
 3133              		.cfi_def_cfa_register 6
 3134 0004 4883EC10 		subq	$16, %rsp
 3135 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3136 000c 488975F0 		movq	%rsi, -16(%rbp)
 436:/usr/include/c++/7/bits/alloc_traits.h **** 
 3137              		.loc 9 436 0
 3138 0010 488B4DF0 		movq	-16(%rbp), %rcx
 3139 0014 488B45F8 		movq	-8(%rbp), %rax
 3140 0018 BA000000 		movl	$0, %edx
 3140      00
 3141 001d 4889CE   		movq	%rcx, %rsi
 3142 0020 4889C7   		movq	%rax, %rdi
 3143 0023 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
 3143      00
 3144 0028 C9       		leave
 3145              		.cfi_def_cfa 7, 8
 3146 0029 C3       		ret
 3147              		.cfi_endproc
 3148              	.LFE2356:
 3150              		.section	.text._ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_,"axG",@progbit
 3151              		.weak	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_
 3153              	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_:
 3154              	.LFB2357:
 884:/usr/include/c++/7/bits/stl_iterator.h **** 
 885:/usr/include/c++/7/bits/stl_iterator.h ****   // Random access iterator requirements
 886:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR, typename _Container>
 887:/usr/include/c++/7/bits/stl_iterator.h ****     inline bool
 888:/usr/include/c++/7/bits/stl_iterator.h ****     operator<(const __normal_iterator<_IteratorL, _Container>& __lhs,
 889:/usr/include/c++/7/bits/stl_iterator.h **** 	      const __normal_iterator<_IteratorR, _Container>& __rhs)
 890:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 891:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() < __rhs.base(); }
 892:/usr/include/c++/7/bits/stl_iterator.h **** 
 893:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator, typename _Container>
 894:/usr/include/c++/7/bits/stl_iterator.h ****     inline bool
 895:/usr/include/c++/7/bits/stl_iterator.h ****     operator<(const __normal_iterator<_Iterator, _Container>& __lhs,
 896:/usr/include/c++/7/bits/stl_iterator.h **** 	      const __normal_iterator<_Iterator, _Container>& __rhs)
 897:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 898:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() < __rhs.base(); }
 899:/usr/include/c++/7/bits/stl_iterator.h **** 
 900:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR, typename _Container>
 901:/usr/include/c++/7/bits/stl_iterator.h ****     inline bool
 902:/usr/include/c++/7/bits/stl_iterator.h ****     operator>(const __normal_iterator<_IteratorL, _Container>& __lhs,
 903:/usr/include/c++/7/bits/stl_iterator.h **** 	      const __normal_iterator<_IteratorR, _Container>& __rhs)
 904:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 905:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() > __rhs.base(); }
 906:/usr/include/c++/7/bits/stl_iterator.h **** 
 907:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator, typename _Container>
 908:/usr/include/c++/7/bits/stl_iterator.h ****     inline bool
 909:/usr/include/c++/7/bits/stl_iterator.h ****     operator>(const __normal_iterator<_Iterator, _Container>& __lhs,
 910:/usr/include/c++/7/bits/stl_iterator.h **** 	      const __normal_iterator<_Iterator, _Container>& __rhs)
 911:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 912:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() > __rhs.base(); }
 913:/usr/include/c++/7/bits/stl_iterator.h **** 
 914:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR, typename _Container>
 915:/usr/include/c++/7/bits/stl_iterator.h ****     inline bool
 916:/usr/include/c++/7/bits/stl_iterator.h ****     operator<=(const __normal_iterator<_IteratorL, _Container>& __lhs,
 917:/usr/include/c++/7/bits/stl_iterator.h **** 	       const __normal_iterator<_IteratorR, _Container>& __rhs)
 918:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 919:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() <= __rhs.base(); }
 920:/usr/include/c++/7/bits/stl_iterator.h **** 
 921:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator, typename _Container>
 922:/usr/include/c++/7/bits/stl_iterator.h ****     inline bool
 923:/usr/include/c++/7/bits/stl_iterator.h ****     operator<=(const __normal_iterator<_Iterator, _Container>& __lhs,
 924:/usr/include/c++/7/bits/stl_iterator.h **** 	       const __normal_iterator<_Iterator, _Container>& __rhs)
 925:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 926:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() <= __rhs.base(); }
 927:/usr/include/c++/7/bits/stl_iterator.h **** 
 928:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR, typename _Container>
 929:/usr/include/c++/7/bits/stl_iterator.h ****     inline bool
 930:/usr/include/c++/7/bits/stl_iterator.h ****     operator>=(const __normal_iterator<_IteratorL, _Container>& __lhs,
 931:/usr/include/c++/7/bits/stl_iterator.h **** 	       const __normal_iterator<_IteratorR, _Container>& __rhs)
 932:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 933:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() >= __rhs.base(); }
 934:/usr/include/c++/7/bits/stl_iterator.h **** 
 935:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator, typename _Container>
 936:/usr/include/c++/7/bits/stl_iterator.h ****     inline bool
 937:/usr/include/c++/7/bits/stl_iterator.h ****     operator>=(const __normal_iterator<_Iterator, _Container>& __lhs,
 938:/usr/include/c++/7/bits/stl_iterator.h **** 	       const __normal_iterator<_Iterator, _Container>& __rhs)
 939:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 940:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() >= __rhs.base(); }
 941:/usr/include/c++/7/bits/stl_iterator.h **** 
 942:/usr/include/c++/7/bits/stl_iterator.h ****   // _GLIBCXX_RESOLVE_LIB_DEFECTS
 943:/usr/include/c++/7/bits/stl_iterator.h ****   // According to the resolution of DR179 not only the various comparison
 944:/usr/include/c++/7/bits/stl_iterator.h ****   // operators but also operator- must accept mixed iterator/const_iterator
 945:/usr/include/c++/7/bits/stl_iterator.h ****   // parameters.
 946:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR, typename _Container>
 947:/usr/include/c++/7/bits/stl_iterator.h **** #if __cplusplus >= 201103L
 948:/usr/include/c++/7/bits/stl_iterator.h ****     // DR 685.
 949:/usr/include/c++/7/bits/stl_iterator.h ****     inline auto
 950:/usr/include/c++/7/bits/stl_iterator.h ****     operator-(const __normal_iterator<_IteratorL, _Container>& __lhs,
 951:/usr/include/c++/7/bits/stl_iterator.h **** 	      const __normal_iterator<_IteratorR, _Container>& __rhs) noexcept
 952:/usr/include/c++/7/bits/stl_iterator.h ****     -> decltype(__lhs.base() - __rhs.base())
 953:/usr/include/c++/7/bits/stl_iterator.h **** #else
 954:/usr/include/c++/7/bits/stl_iterator.h ****     inline typename __normal_iterator<_IteratorL, _Container>::difference_type
 955:/usr/include/c++/7/bits/stl_iterator.h ****     operator-(const __normal_iterator<_IteratorL, _Container>& __lhs,
 956:/usr/include/c++/7/bits/stl_iterator.h **** 	      const __normal_iterator<_IteratorR, _Container>& __rhs)
 957:/usr/include/c++/7/bits/stl_iterator.h **** #endif
 958:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() - __rhs.base(); }
 959:/usr/include/c++/7/bits/stl_iterator.h **** 
 960:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator, typename _Container>
 961:/usr/include/c++/7/bits/stl_iterator.h ****     inline typename __normal_iterator<_Iterator, _Container>::difference_type
 962:/usr/include/c++/7/bits/stl_iterator.h ****     operator-(const __normal_iterator<_Iterator, _Container>& __lhs,
 963:/usr/include/c++/7/bits/stl_iterator.h **** 	      const __normal_iterator<_Iterator, _Container>& __rhs)
 964:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 965:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() - __rhs.base(); }
 966:/usr/include/c++/7/bits/stl_iterator.h **** 
 967:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator, typename _Container>
 968:/usr/include/c++/7/bits/stl_iterator.h ****     inline __normal_iterator<_Iterator, _Container>
 969:/usr/include/c++/7/bits/stl_iterator.h ****     operator+(typename __normal_iterator<_Iterator, _Container>::difference_type
 970:/usr/include/c++/7/bits/stl_iterator.h **** 	      __n, const __normal_iterator<_Iterator, _Container>& __i)
 971:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 972:/usr/include/c++/7/bits/stl_iterator.h ****     { return __normal_iterator<_Iterator, _Container>(__i.base() + __n); }
 973:/usr/include/c++/7/bits/stl_iterator.h **** 
 974:/usr/include/c++/7/bits/stl_iterator.h **** _GLIBCXX_END_NAMESPACE_VERSION
 975:/usr/include/c++/7/bits/stl_iterator.h **** } // namespace
 976:/usr/include/c++/7/bits/stl_iterator.h **** 
 977:/usr/include/c++/7/bits/stl_iterator.h **** namespace std _GLIBCXX_VISIBILITY(default)
 978:/usr/include/c++/7/bits/stl_iterator.h **** {
 979:/usr/include/c++/7/bits/stl_iterator.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
 980:/usr/include/c++/7/bits/stl_iterator.h **** 
 981:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator, typename _Container>
 982:/usr/include/c++/7/bits/stl_iterator.h ****     _Iterator
 983:/usr/include/c++/7/bits/stl_iterator.h ****     __niter_base(__gnu_cxx::__normal_iterator<_Iterator, _Container> __it)
 984:/usr/include/c++/7/bits/stl_iterator.h ****     { return __it.base(); }
 985:/usr/include/c++/7/bits/stl_iterator.h **** 
 986:/usr/include/c++/7/bits/stl_iterator.h **** _GLIBCXX_END_NAMESPACE_VERSION
 987:/usr/include/c++/7/bits/stl_iterator.h **** } // namespace
 988:/usr/include/c++/7/bits/stl_iterator.h **** 
 989:/usr/include/c++/7/bits/stl_iterator.h **** #if __cplusplus >= 201103L
 990:/usr/include/c++/7/bits/stl_iterator.h **** 
 991:/usr/include/c++/7/bits/stl_iterator.h **** namespace std _GLIBCXX_VISIBILITY(default)
 992:/usr/include/c++/7/bits/stl_iterator.h **** {
 993:/usr/include/c++/7/bits/stl_iterator.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
 994:/usr/include/c++/7/bits/stl_iterator.h **** 
 995:/usr/include/c++/7/bits/stl_iterator.h ****   /**
 996:/usr/include/c++/7/bits/stl_iterator.h ****    * @addtogroup iterators
 997:/usr/include/c++/7/bits/stl_iterator.h ****    * @{
 998:/usr/include/c++/7/bits/stl_iterator.h ****    */
 999:/usr/include/c++/7/bits/stl_iterator.h **** 
1000:/usr/include/c++/7/bits/stl_iterator.h ****   // 24.4.3  Move iterators
1001:/usr/include/c++/7/bits/stl_iterator.h ****   /**
1002:/usr/include/c++/7/bits/stl_iterator.h ****    *  Class template move_iterator is an iterator adapter with the same
1003:/usr/include/c++/7/bits/stl_iterator.h ****    *  behavior as the underlying iterator except that its dereference
1004:/usr/include/c++/7/bits/stl_iterator.h ****    *  operator implicitly converts the value returned by the underlying
1005:/usr/include/c++/7/bits/stl_iterator.h ****    *  iterator's dereference operator to an rvalue reference.  Some
1006:/usr/include/c++/7/bits/stl_iterator.h ****    *  generic algorithms can be called with move iterators to replace
1007:/usr/include/c++/7/bits/stl_iterator.h ****    *  copying with moving.
1008:/usr/include/c++/7/bits/stl_iterator.h ****    */
1009:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
1010:/usr/include/c++/7/bits/stl_iterator.h ****     class move_iterator
1011:/usr/include/c++/7/bits/stl_iterator.h ****     {
1012:/usr/include/c++/7/bits/stl_iterator.h ****     protected:
1013:/usr/include/c++/7/bits/stl_iterator.h ****       _Iterator _M_current;
1014:/usr/include/c++/7/bits/stl_iterator.h **** 
1015:/usr/include/c++/7/bits/stl_iterator.h ****       typedef iterator_traits<_Iterator>		__traits_type;
1016:/usr/include/c++/7/bits/stl_iterator.h ****       typedef typename __traits_type::reference		__base_ref;
1017:/usr/include/c++/7/bits/stl_iterator.h **** 
1018:/usr/include/c++/7/bits/stl_iterator.h ****     public:
1019:/usr/include/c++/7/bits/stl_iterator.h ****       typedef _Iterator					iterator_type;
1020:/usr/include/c++/7/bits/stl_iterator.h ****       typedef typename __traits_type::iterator_category iterator_category;
1021:/usr/include/c++/7/bits/stl_iterator.h ****       typedef typename __traits_type::value_type  	value_type;
1022:/usr/include/c++/7/bits/stl_iterator.h ****       typedef typename __traits_type::difference_type	difference_type;
1023:/usr/include/c++/7/bits/stl_iterator.h ****       // NB: DR 680.
1024:/usr/include/c++/7/bits/stl_iterator.h ****       typedef _Iterator					pointer;
1025:/usr/include/c++/7/bits/stl_iterator.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
1026:/usr/include/c++/7/bits/stl_iterator.h ****       // 2106. move_iterator wrapping iterators returning prvalues
1027:/usr/include/c++/7/bits/stl_iterator.h ****       typedef typename conditional<is_reference<__base_ref>::value,
1028:/usr/include/c++/7/bits/stl_iterator.h **** 			 typename remove_reference<__base_ref>::type&&,
1029:/usr/include/c++/7/bits/stl_iterator.h **** 			 __base_ref>::type		reference;
1030:/usr/include/c++/7/bits/stl_iterator.h **** 
1031:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR
1032:/usr/include/c++/7/bits/stl_iterator.h ****       move_iterator()
1033:/usr/include/c++/7/bits/stl_iterator.h ****       : _M_current() { }
1034:/usr/include/c++/7/bits/stl_iterator.h **** 
1035:/usr/include/c++/7/bits/stl_iterator.h ****       explicit _GLIBCXX17_CONSTEXPR
1036:/usr/include/c++/7/bits/stl_iterator.h ****       move_iterator(iterator_type __i)
1037:/usr/include/c++/7/bits/stl_iterator.h ****       : _M_current(__i) { }
1038:/usr/include/c++/7/bits/stl_iterator.h **** 
1039:/usr/include/c++/7/bits/stl_iterator.h ****       template<typename _Iter>
1040:/usr/include/c++/7/bits/stl_iterator.h **** 	_GLIBCXX17_CONSTEXPR
1041:/usr/include/c++/7/bits/stl_iterator.h **** 	move_iterator(const move_iterator<_Iter>& __i)
1042:/usr/include/c++/7/bits/stl_iterator.h **** 	: _M_current(__i.base()) { }
1043:/usr/include/c++/7/bits/stl_iterator.h **** 
1044:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR iterator_type
1045:/usr/include/c++/7/bits/stl_iterator.h ****       base() const
1046:/usr/include/c++/7/bits/stl_iterator.h ****       { return _M_current; }
1047:/usr/include/c++/7/bits/stl_iterator.h **** 
1048:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR reference
1049:/usr/include/c++/7/bits/stl_iterator.h ****       operator*() const
1050:/usr/include/c++/7/bits/stl_iterator.h ****       { return static_cast<reference>(*_M_current); }
1051:/usr/include/c++/7/bits/stl_iterator.h **** 
1052:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR pointer
1053:/usr/include/c++/7/bits/stl_iterator.h ****       operator->() const
1054:/usr/include/c++/7/bits/stl_iterator.h ****       { return _M_current; }
1055:/usr/include/c++/7/bits/stl_iterator.h **** 
1056:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR move_iterator&
1057:/usr/include/c++/7/bits/stl_iterator.h ****       operator++()
1058:/usr/include/c++/7/bits/stl_iterator.h ****       {
1059:/usr/include/c++/7/bits/stl_iterator.h **** 	++_M_current;
1060:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
1061:/usr/include/c++/7/bits/stl_iterator.h ****       }
1062:/usr/include/c++/7/bits/stl_iterator.h **** 
1063:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR move_iterator
1064:/usr/include/c++/7/bits/stl_iterator.h ****       operator++(int)
1065:/usr/include/c++/7/bits/stl_iterator.h ****       {
1066:/usr/include/c++/7/bits/stl_iterator.h **** 	move_iterator __tmp = *this;
1067:/usr/include/c++/7/bits/stl_iterator.h **** 	++_M_current;
1068:/usr/include/c++/7/bits/stl_iterator.h **** 	return __tmp;
1069:/usr/include/c++/7/bits/stl_iterator.h ****       }
1070:/usr/include/c++/7/bits/stl_iterator.h **** 
1071:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR move_iterator&
1072:/usr/include/c++/7/bits/stl_iterator.h ****       operator--()
1073:/usr/include/c++/7/bits/stl_iterator.h ****       {
1074:/usr/include/c++/7/bits/stl_iterator.h **** 	--_M_current;
1075:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
1076:/usr/include/c++/7/bits/stl_iterator.h ****       }
1077:/usr/include/c++/7/bits/stl_iterator.h **** 
1078:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR move_iterator
1079:/usr/include/c++/7/bits/stl_iterator.h ****       operator--(int)
1080:/usr/include/c++/7/bits/stl_iterator.h ****       {
1081:/usr/include/c++/7/bits/stl_iterator.h **** 	move_iterator __tmp = *this;
1082:/usr/include/c++/7/bits/stl_iterator.h **** 	--_M_current;
1083:/usr/include/c++/7/bits/stl_iterator.h **** 	return __tmp;
1084:/usr/include/c++/7/bits/stl_iterator.h ****       }
1085:/usr/include/c++/7/bits/stl_iterator.h **** 
1086:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR move_iterator
1087:/usr/include/c++/7/bits/stl_iterator.h ****       operator+(difference_type __n) const
1088:/usr/include/c++/7/bits/stl_iterator.h ****       { return move_iterator(_M_current + __n); }
1089:/usr/include/c++/7/bits/stl_iterator.h **** 
1090:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR move_iterator&
1091:/usr/include/c++/7/bits/stl_iterator.h ****       operator+=(difference_type __n)
1092:/usr/include/c++/7/bits/stl_iterator.h ****       {
1093:/usr/include/c++/7/bits/stl_iterator.h **** 	_M_current += __n;
1094:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
1095:/usr/include/c++/7/bits/stl_iterator.h ****       }
1096:/usr/include/c++/7/bits/stl_iterator.h **** 
1097:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR move_iterator
1098:/usr/include/c++/7/bits/stl_iterator.h ****       operator-(difference_type __n) const
1099:/usr/include/c++/7/bits/stl_iterator.h ****       { return move_iterator(_M_current - __n); }
1100:/usr/include/c++/7/bits/stl_iterator.h ****     
1101:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR move_iterator&
1102:/usr/include/c++/7/bits/stl_iterator.h ****       operator-=(difference_type __n)
1103:/usr/include/c++/7/bits/stl_iterator.h ****       { 
1104:/usr/include/c++/7/bits/stl_iterator.h **** 	_M_current -= __n;
1105:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
1106:/usr/include/c++/7/bits/stl_iterator.h ****       }
1107:/usr/include/c++/7/bits/stl_iterator.h **** 
1108:/usr/include/c++/7/bits/stl_iterator.h ****       _GLIBCXX17_CONSTEXPR reference
1109:/usr/include/c++/7/bits/stl_iterator.h ****       operator[](difference_type __n) const
1110:/usr/include/c++/7/bits/stl_iterator.h ****       { return std::move(_M_current[__n]); }
1111:/usr/include/c++/7/bits/stl_iterator.h ****     };
1112:/usr/include/c++/7/bits/stl_iterator.h **** 
1113:/usr/include/c++/7/bits/stl_iterator.h ****   // Note: See __normal_iterator operators note from Gaby to understand
1114:/usr/include/c++/7/bits/stl_iterator.h ****   // why there are always 2 versions for most of the move_iterator
1115:/usr/include/c++/7/bits/stl_iterator.h ****   // operators.
1116:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
1117:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
1118:/usr/include/c++/7/bits/stl_iterator.h ****     operator==(const move_iterator<_IteratorL>& __x,
1119:/usr/include/c++/7/bits/stl_iterator.h **** 	       const move_iterator<_IteratorR>& __y)
1120:/usr/include/c++/7/bits/stl_iterator.h ****     { return __x.base() == __y.base(); }
1121:/usr/include/c++/7/bits/stl_iterator.h **** 
1122:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
1123:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
1124:/usr/include/c++/7/bits/stl_iterator.h ****     operator==(const move_iterator<_Iterator>& __x,
1125:/usr/include/c++/7/bits/stl_iterator.h **** 	       const move_iterator<_Iterator>& __y)
1126:/usr/include/c++/7/bits/stl_iterator.h ****     { return __x.base() == __y.base(); }
1127:/usr/include/c++/7/bits/stl_iterator.h **** 
1128:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
1129:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
1130:/usr/include/c++/7/bits/stl_iterator.h ****     operator!=(const move_iterator<_IteratorL>& __x,
1131:/usr/include/c++/7/bits/stl_iterator.h **** 	       const move_iterator<_IteratorR>& __y)
1132:/usr/include/c++/7/bits/stl_iterator.h ****     { return !(__x == __y); }
1133:/usr/include/c++/7/bits/stl_iterator.h **** 
1134:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
1135:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
1136:/usr/include/c++/7/bits/stl_iterator.h ****     operator!=(const move_iterator<_Iterator>& __x,
1137:/usr/include/c++/7/bits/stl_iterator.h **** 	       const move_iterator<_Iterator>& __y)
1138:/usr/include/c++/7/bits/stl_iterator.h ****     { return !(__x == __y); }
1139:/usr/include/c++/7/bits/stl_iterator.h **** 
1140:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
1141:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
1142:/usr/include/c++/7/bits/stl_iterator.h ****     operator<(const move_iterator<_IteratorL>& __x,
1143:/usr/include/c++/7/bits/stl_iterator.h **** 	      const move_iterator<_IteratorR>& __y)
1144:/usr/include/c++/7/bits/stl_iterator.h ****     { return __x.base() < __y.base(); }
1145:/usr/include/c++/7/bits/stl_iterator.h **** 
1146:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
1147:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
1148:/usr/include/c++/7/bits/stl_iterator.h ****     operator<(const move_iterator<_Iterator>& __x,
1149:/usr/include/c++/7/bits/stl_iterator.h **** 	      const move_iterator<_Iterator>& __y)
1150:/usr/include/c++/7/bits/stl_iterator.h ****     { return __x.base() < __y.base(); }
1151:/usr/include/c++/7/bits/stl_iterator.h **** 
1152:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
1153:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
1154:/usr/include/c++/7/bits/stl_iterator.h ****     operator<=(const move_iterator<_IteratorL>& __x,
1155:/usr/include/c++/7/bits/stl_iterator.h **** 	       const move_iterator<_IteratorR>& __y)
1156:/usr/include/c++/7/bits/stl_iterator.h ****     { return !(__y < __x); }
1157:/usr/include/c++/7/bits/stl_iterator.h **** 
1158:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
1159:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
1160:/usr/include/c++/7/bits/stl_iterator.h ****     operator<=(const move_iterator<_Iterator>& __x,
1161:/usr/include/c++/7/bits/stl_iterator.h **** 	       const move_iterator<_Iterator>& __y)
1162:/usr/include/c++/7/bits/stl_iterator.h ****     { return !(__y < __x); }
1163:/usr/include/c++/7/bits/stl_iterator.h **** 
1164:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
1165:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
1166:/usr/include/c++/7/bits/stl_iterator.h ****     operator>(const move_iterator<_IteratorL>& __x,
1167:/usr/include/c++/7/bits/stl_iterator.h **** 	      const move_iterator<_IteratorR>& __y)
1168:/usr/include/c++/7/bits/stl_iterator.h ****     { return __y < __x; }
1169:/usr/include/c++/7/bits/stl_iterator.h **** 
1170:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
1171:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
1172:/usr/include/c++/7/bits/stl_iterator.h ****     operator>(const move_iterator<_Iterator>& __x,
1173:/usr/include/c++/7/bits/stl_iterator.h **** 	      const move_iterator<_Iterator>& __y)
1174:/usr/include/c++/7/bits/stl_iterator.h ****     { return __y < __x; }
1175:/usr/include/c++/7/bits/stl_iterator.h **** 
1176:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
1177:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
1178:/usr/include/c++/7/bits/stl_iterator.h ****     operator>=(const move_iterator<_IteratorL>& __x,
1179:/usr/include/c++/7/bits/stl_iterator.h **** 	       const move_iterator<_IteratorR>& __y)
1180:/usr/include/c++/7/bits/stl_iterator.h ****     { return !(__x < __y); }
1181:/usr/include/c++/7/bits/stl_iterator.h **** 
1182:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
1183:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR bool
1184:/usr/include/c++/7/bits/stl_iterator.h ****     operator>=(const move_iterator<_Iterator>& __x,
1185:/usr/include/c++/7/bits/stl_iterator.h **** 	       const move_iterator<_Iterator>& __y)
1186:/usr/include/c++/7/bits/stl_iterator.h ****     { return !(__x < __y); }
1187:/usr/include/c++/7/bits/stl_iterator.h **** 
1188:/usr/include/c++/7/bits/stl_iterator.h ****   // DR 685.
1189:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _IteratorL, typename _IteratorR>
1190:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR auto
1191:/usr/include/c++/7/bits/stl_iterator.h ****     operator-(const move_iterator<_IteratorL>& __x,
1192:/usr/include/c++/7/bits/stl_iterator.h **** 	      const move_iterator<_IteratorR>& __y)
1193:/usr/include/c++/7/bits/stl_iterator.h ****     -> decltype(__x.base() - __y.base())
1194:/usr/include/c++/7/bits/stl_iterator.h ****     { return __x.base() - __y.base(); }
1195:/usr/include/c++/7/bits/stl_iterator.h **** 
1196:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
1197:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR move_iterator<_Iterator>
1198:/usr/include/c++/7/bits/stl_iterator.h ****     operator+(typename move_iterator<_Iterator>::difference_type __n,
1199:/usr/include/c++/7/bits/stl_iterator.h **** 	      const move_iterator<_Iterator>& __x)
1200:/usr/include/c++/7/bits/stl_iterator.h ****     { return __x + __n; }
1201:/usr/include/c++/7/bits/stl_iterator.h **** 
1202:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
1203:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR move_iterator<_Iterator>
1204:/usr/include/c++/7/bits/stl_iterator.h ****     make_move_iterator(_Iterator __i)
1205:/usr/include/c++/7/bits/stl_iterator.h ****     { return move_iterator<_Iterator>(__i); }
1206:/usr/include/c++/7/bits/stl_iterator.h **** 
1207:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator, typename _ReturnType
1208:/usr/include/c++/7/bits/stl_iterator.h ****     = typename conditional<__move_if_noexcept_cond
1209:/usr/include/c++/7/bits/stl_iterator.h ****       <typename iterator_traits<_Iterator>::value_type>::value,
1210:/usr/include/c++/7/bits/stl_iterator.h ****                 _Iterator, move_iterator<_Iterator>>::type>
1211:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR _ReturnType
1212:/usr/include/c++/7/bits/stl_iterator.h ****     __make_move_if_noexcept_iterator(_Iterator __i)
1213:/usr/include/c++/7/bits/stl_iterator.h ****     { return _ReturnType(__i); }
1214:/usr/include/c++/7/bits/stl_iterator.h **** 
1215:/usr/include/c++/7/bits/stl_iterator.h ****   // Overload for pointers that matches std::move_if_noexcept more closely,
1216:/usr/include/c++/7/bits/stl_iterator.h ****   // returning a constant iterator when we don't want to move.
1217:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Tp, typename _ReturnType
1218:/usr/include/c++/7/bits/stl_iterator.h ****     = typename conditional<__move_if_noexcept_cond<_Tp>::value,
1219:/usr/include/c++/7/bits/stl_iterator.h **** 			   const _Tp*, move_iterator<_Tp*>>::type>
1220:/usr/include/c++/7/bits/stl_iterator.h ****     inline _GLIBCXX17_CONSTEXPR _ReturnType
1221:/usr/include/c++/7/bits/stl_iterator.h ****     __make_move_if_noexcept_iterator(_Tp* __i)
 3155              		.loc 3 1221 0
 3156              		.cfi_startproc
 3157 0000 55       		pushq	%rbp
 3158              		.cfi_def_cfa_offset 16
 3159              		.cfi_offset 6, -16
 3160 0001 4889E5   		movq	%rsp, %rbp
 3161              		.cfi_def_cfa_register 6
 3162 0004 4883EC20 		subq	$32, %rsp
 3163 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3164              		.loc 3 1221 0
 3165 000c 64488B04 		movq	%fs:40, %rax
 3165      25280000 
 3165      00
 3166 0015 488945F8 		movq	%rax, -8(%rbp)
 3167 0019 31C0     		xorl	%eax, %eax
1222:/usr/include/c++/7/bits/stl_iterator.h ****     { return _ReturnType(__i); }
 3168              		.loc 3 1222 0
 3169 001b 488B55E8 		movq	-24(%rbp), %rdx
 3170 001f 488D45F0 		leaq	-16(%rbp), %rax
 3171 0023 4889D6   		movq	%rdx, %rsi
 3172 0026 4889C7   		movq	%rax, %rdi
 3173 0029 E8000000 		call	_ZNSt13move_iteratorIPdEC1ES0_
 3173      00
 3174 002e 488B45F0 		movq	-16(%rbp), %rax
 3175 0032 488B4DF8 		movq	-8(%rbp), %rcx
 3176 0036 6448330C 		xorq	%fs:40, %rcx
 3176      25280000 
 3176      00
 3177 003f 7405     		je	.L155
 3178 0041 E8000000 		call	__stack_chk_fail@PLT
 3178      00
 3179              	.L155:
 3180 0046 C9       		leave
 3181              		.cfi_def_cfa 7, 8
 3182 0047 C3       		ret
 3183              		.cfi_endproc
 3184              	.LFE2357:
 3186              		.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E,"axG",@p
 3187              		.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E
 3189              	_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E:
 3190              	.LFB2358:
 287:/usr/include/c++/7/bits/stl_uninitialized.h **** 			   _ForwardIterator __result, allocator<_Tp>&)
 3191              		.loc 7 287 0
 3192              		.cfi_startproc
 3193 0000 55       		pushq	%rbp
 3194              		.cfi_def_cfa_offset 16
 3195              		.cfi_offset 6, -16
 3196 0001 4889E5   		movq	%rsp, %rbp
 3197              		.cfi_def_cfa_register 6
 3198 0004 4883EC20 		subq	$32, %rsp
 3199 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3200 000c 488975F0 		movq	%rsi, -16(%rbp)
 3201 0010 488955E8 		movq	%rdx, -24(%rbp)
 3202 0014 48894DE0 		movq	%rcx, -32(%rbp)
 289:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 3203              		.loc 7 289 0
 3204 0018 488B55E8 		movq	-24(%rbp), %rdx
 3205 001c 488B4DF0 		movq	-16(%rbp), %rcx
 3206 0020 488B45F8 		movq	-8(%rbp), %rax
 3207 0024 4889CE   		movq	%rcx, %rsi
 3208 0027 4889C7   		movq	%rax, %rdi
 3209 002a E8000000 		call	_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 3209      00
 3210 002f C9       		leave
 3211              		.cfi_def_cfa 7, 8
 3212 0030 C3       		ret
 3213              		.cfi_endproc
 3214              	.LFE2358:
 3216              		.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE
 3217              		.align 2
 3218              		.weak	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
 3220              	_ZN9__gnu_cxx13new_allocatorIdEC2Ev:
 3221              	.LFB2393:
  79:/usr/include/c++/7/ext/new_allocator.h **** 
 3222              		.loc 8 79 0
 3223              		.cfi_startproc
 3224 0000 55       		pushq	%rbp
 3225              		.cfi_def_cfa_offset 16
 3226              		.cfi_offset 6, -16
 3227 0001 4889E5   		movq	%rsp, %rbp
 3228              		.cfi_def_cfa_register 6
 3229 0004 48897DF8 		movq	%rdi, -8(%rbp)
  79:/usr/include/c++/7/ext/new_allocator.h **** 
 3230              		.loc 8 79 0
 3231 0008 90       		nop
 3232 0009 5D       		popq	%rbp
 3233              		.cfi_def_cfa 7, 8
 3234 000a C3       		ret
 3235              		.cfi_endproc
 3236              	.LFE2393:
 3238              		.weak	_ZN9__gnu_cxx13new_allocatorIdEC1Ev
 3239              		.set	_ZN9__gnu_cxx13new_allocatorIdEC1Ev,_ZN9__gnu_cxx13new_allocatorIdEC2Ev
 3240              		.section	.text._ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,"axG",@progbits,_ZN9__gnu_cxx13new_
 3241              		.align 2
 3242              		.weak	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
 3244              	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm:
 3245              	.LFB2395:
  87:/usr/include/c++/7/ext/new_allocator.h **** 
  88:/usr/include/c++/7/ext/new_allocator.h ****       pointer
  89:/usr/include/c++/7/ext/new_allocator.h ****       address(reference __x) const _GLIBCXX_NOEXCEPT
  90:/usr/include/c++/7/ext/new_allocator.h ****       { return std::__addressof(__x); }
  91:/usr/include/c++/7/ext/new_allocator.h **** 
  92:/usr/include/c++/7/ext/new_allocator.h ****       const_pointer
  93:/usr/include/c++/7/ext/new_allocator.h ****       address(const_reference __x) const _GLIBCXX_NOEXCEPT
  94:/usr/include/c++/7/ext/new_allocator.h ****       { return std::__addressof(__x); }
  95:/usr/include/c++/7/ext/new_allocator.h **** 
  96:/usr/include/c++/7/ext/new_allocator.h ****       // NB: __n is permitted to be 0.  The C++ standard says nothing
  97:/usr/include/c++/7/ext/new_allocator.h ****       // about what the return value is when __n == 0.
  98:/usr/include/c++/7/ext/new_allocator.h ****       pointer
  99:/usr/include/c++/7/ext/new_allocator.h ****       allocate(size_type __n, const void* = static_cast<const void*>(0))
 100:/usr/include/c++/7/ext/new_allocator.h ****       {
 101:/usr/include/c++/7/ext/new_allocator.h **** 	if (__n > this->max_size())
 102:/usr/include/c++/7/ext/new_allocator.h **** 	  std::__throw_bad_alloc();
 103:/usr/include/c++/7/ext/new_allocator.h **** 
 104:/usr/include/c++/7/ext/new_allocator.h **** #if __cpp_aligned_new
 105:/usr/include/c++/7/ext/new_allocator.h **** 	if (alignof(_Tp) > __STDCPP_DEFAULT_NEW_ALIGNMENT__)
 106:/usr/include/c++/7/ext/new_allocator.h **** 	  {
 107:/usr/include/c++/7/ext/new_allocator.h **** 	    std::align_val_t __al = std::align_val_t(alignof(_Tp));
 108:/usr/include/c++/7/ext/new_allocator.h **** 	    return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp), __al));
 109:/usr/include/c++/7/ext/new_allocator.h **** 	  }
 110:/usr/include/c++/7/ext/new_allocator.h **** #endif
 111:/usr/include/c++/7/ext/new_allocator.h **** 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
 112:/usr/include/c++/7/ext/new_allocator.h ****       }
 113:/usr/include/c++/7/ext/new_allocator.h **** 
 114:/usr/include/c++/7/ext/new_allocator.h ****       // __p is not permitted to be a null pointer.
 115:/usr/include/c++/7/ext/new_allocator.h ****       void
 116:/usr/include/c++/7/ext/new_allocator.h ****       deallocate(pointer __p, size_type)
 3246              		.loc 8 116 0
 3247              		.cfi_startproc
 3248 0000 55       		pushq	%rbp
 3249              		.cfi_def_cfa_offset 16
 3250              		.cfi_offset 6, -16
 3251 0001 4889E5   		movq	%rsp, %rbp
 3252              		.cfi_def_cfa_register 6
 3253 0004 4883EC20 		subq	$32, %rsp
 3254 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3255 000c 488975F0 		movq	%rsi, -16(%rbp)
 3256 0010 488955E8 		movq	%rdx, -24(%rbp)
 117:/usr/include/c++/7/ext/new_allocator.h ****       {
 118:/usr/include/c++/7/ext/new_allocator.h **** #if __cpp_aligned_new
 119:/usr/include/c++/7/ext/new_allocator.h **** 	if (alignof(_Tp) > __STDCPP_DEFAULT_NEW_ALIGNMENT__)
 120:/usr/include/c++/7/ext/new_allocator.h **** 	  {
 121:/usr/include/c++/7/ext/new_allocator.h **** 	    ::operator delete(__p, std::align_val_t(alignof(_Tp)));
 122:/usr/include/c++/7/ext/new_allocator.h **** 	    return;
 123:/usr/include/c++/7/ext/new_allocator.h **** 	  }
 124:/usr/include/c++/7/ext/new_allocator.h **** #endif
 125:/usr/include/c++/7/ext/new_allocator.h **** 	::operator delete(__p);
 3257              		.loc 8 125 0
 3258 0014 488B45F0 		movq	-16(%rbp), %rax
 3259 0018 4889C7   		movq	%rax, %rdi
 3260 001b E8000000 		call	_ZdlPv@PLT
 3260      00
 126:/usr/include/c++/7/ext/new_allocator.h ****       }
 3261              		.loc 8 126 0
 3262 0020 90       		nop
 3263 0021 C9       		leave
 3264              		.cfi_def_cfa 7, 8
 3265 0022 C3       		ret
 3266              		.cfi_endproc
 3267              	.LFE2395:
 3269              		.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_,"axG",@p
 3270              		.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
 3272              	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_:
 3273              	.LFB2400:
 543:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
 3274              		.loc 7 543 0
 3275              		.cfi_startproc
 3276 0000 55       		pushq	%rbp
 3277              		.cfi_def_cfa_offset 16
 3278              		.cfi_offset 6, -16
 3279 0001 4889E5   		movq	%rsp, %rbp
 3280              		.cfi_def_cfa_register 6
 3281 0004 4883EC20 		subq	$32, %rsp
 3282 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3283 000c 488975E0 		movq	%rsi, -32(%rbp)
 543:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
 3284              		.loc 7 543 0
 3285 0010 64488B04 		movq	%fs:40, %rax
 3285      25280000 
 3285      00
 3286 0019 488945F8 		movq	%rax, -8(%rbp)
 3287 001d 31C0     		xorl	%eax, %eax
 548:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 3288              		.loc 7 548 0
 3289 001f 660FEFC0 		pxor	%xmm0, %xmm0
 3290 0023 F20F1145 		movsd	%xmm0, -16(%rbp)
 3290      F0
 3291 0028 488D55F0 		leaq	-16(%rbp), %rdx
 3292 002c 488B4DE0 		movq	-32(%rbp), %rcx
 3293 0030 488B45E8 		movq	-24(%rbp), %rax
 3294 0034 4889CE   		movq	%rcx, %rsi
 3295 0037 4889C7   		movq	%rax, %rdi
 3296 003a E8000000 		call	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
 3296      00
 549:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 3297              		.loc 7 549 0
 3298 003f 488B4DF8 		movq	-8(%rbp), %rcx
 3299 0043 6448330C 		xorq	%fs:40, %rcx
 3299      25280000 
 3299      00
 3300 004c 7405     		je	.L162
 3301 004e E8000000 		call	__stack_chk_fail@PLT
 3301      00
 3302              	.L162:
 3303 0053 C9       		leave
 3304              		.cfi_def_cfa 7, 8
 3305 0054 C3       		ret
 3306              		.cfi_endproc
 3307              	.LFE2400:
 3309              		.section	.text._ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_trai
 3310              		.weak	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
 3312              	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_:
 3313              	.LFB2401:
 463:/usr/include/c++/7/bits/alloc_traits.h **** 
 464:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 465:/usr/include/c++/7/bits/alloc_traits.h ****        *  @brief  Construct an object of type @a _Up
 466:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __a  An allocator.
 467:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __p  Pointer to memory of suitable size and alignment for Tp
 468:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __args Constructor arguments.
 469:/usr/include/c++/7/bits/alloc_traits.h ****        *
 470:/usr/include/c++/7/bits/alloc_traits.h ****        *  Calls <tt> __a.construct(__p, std::forward<Args>(__args)...) </tt>
 471:/usr/include/c++/7/bits/alloc_traits.h ****       */
 472:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Up, typename... _Args>
 473:/usr/include/c++/7/bits/alloc_traits.h **** 	static void
 474:/usr/include/c++/7/bits/alloc_traits.h **** 	construct(allocator_type& __a, _Up* __p, _Args&&... __args)
 475:/usr/include/c++/7/bits/alloc_traits.h **** 	{ __a.construct(__p, std::forward<_Args>(__args)...); }
 476:/usr/include/c++/7/bits/alloc_traits.h **** 
 477:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 478:/usr/include/c++/7/bits/alloc_traits.h ****        *  @brief  Destroy an object of type @a _Up
 479:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __a  An allocator.
 480:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __p  Pointer to the object to destroy
 481:/usr/include/c++/7/bits/alloc_traits.h ****        *
 482:/usr/include/c++/7/bits/alloc_traits.h ****        *  Calls @c __a.destroy(__p).
 483:/usr/include/c++/7/bits/alloc_traits.h ****       */
 484:/usr/include/c++/7/bits/alloc_traits.h ****       template<typename _Up>
 485:/usr/include/c++/7/bits/alloc_traits.h **** 	static void
 486:/usr/include/c++/7/bits/alloc_traits.h **** 	destroy(allocator_type& __a, _Up* __p)
 487:/usr/include/c++/7/bits/alloc_traits.h **** 	{ __a.destroy(__p); }
 488:/usr/include/c++/7/bits/alloc_traits.h **** 
 489:/usr/include/c++/7/bits/alloc_traits.h ****       /**
 490:/usr/include/c++/7/bits/alloc_traits.h ****        *  @brief  The maximum supported allocation size
 491:/usr/include/c++/7/bits/alloc_traits.h ****        *  @param  __a  An allocator.
 492:/usr/include/c++/7/bits/alloc_traits.h ****        *  @return @c __a.max_size()
 493:/usr/include/c++/7/bits/alloc_traits.h ****       */
 494:/usr/include/c++/7/bits/alloc_traits.h ****       static size_type
 495:/usr/include/c++/7/bits/alloc_traits.h ****       max_size(const allocator_type& __a) noexcept
 3314              		.loc 9 495 0
 3315              		.cfi_startproc
 3316 0000 55       		pushq	%rbp
 3317              		.cfi_def_cfa_offset 16
 3318              		.cfi_offset 6, -16
 3319 0001 4889E5   		movq	%rsp, %rbp
 3320              		.cfi_def_cfa_register 6
 3321 0004 4883EC10 		subq	$16, %rsp
 3322 0008 48897DF8 		movq	%rdi, -8(%rbp)
 496:/usr/include/c++/7/bits/alloc_traits.h ****       { return __a.max_size(); }
 3323              		.loc 9 496 0
 3324 000c 488B45F8 		movq	-8(%rbp), %rax
 3325 0010 4889C7   		movq	%rax, %rdi
 3326 0013 E8000000 		call	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
 3326      00
 3327 0018 C9       		leave
 3328              		.cfi_def_cfa 7, 8
 3329 0019 C3       		ret
 3330              		.cfi_endproc
 3331              	.LFE2401:
 3333              		.section	.text._ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector
 3334              		.align 2
 3335              		.weak	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 3337              	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
 3338              	.LFB2402:
 119:/usr/include/c++/7/bits/stl_vector.h ****       { return *static_cast<const _Tp_alloc_type*>(&this->_M_impl); }
 3339              		.loc 2 119 0
 3340              		.cfi_startproc
 3341 0000 55       		pushq	%rbp
 3342              		.cfi_def_cfa_offset 16
 3343              		.cfi_offset 6, -16
 3344 0001 4889E5   		movq	%rsp, %rbp
 3345              		.cfi_def_cfa_register 6
 3346 0004 48897DF8 		movq	%rdi, -8(%rbp)
 120:/usr/include/c++/7/bits/stl_vector.h **** 
 3347              		.loc 2 120 0
 3348 0008 488B45F8 		movq	-8(%rbp), %rax
 3349 000c 5D       		popq	%rbp
 3350              		.cfi_def_cfa 7, 8
 3351 000d C3       		ret
 3352              		.cfi_endproc
 3353              	.LFE2402:
 3355              		.section	.text._ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_al
 3356              		.align 2
 3357              		.weak	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
 3359              	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv:
 3360              	.LFB2403:
  99:/usr/include/c++/7/ext/new_allocator.h ****       {
 3361              		.loc 8 99 0
 3362              		.cfi_startproc
 3363 0000 55       		pushq	%rbp
 3364              		.cfi_def_cfa_offset 16
 3365              		.cfi_offset 6, -16
 3366 0001 4889E5   		movq	%rsp, %rbp
 3367              		.cfi_def_cfa_register 6
 3368 0004 4883EC20 		subq	$32, %rsp
 3369 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3370 000c 488975F0 		movq	%rsi, -16(%rbp)
 3371 0010 488955E8 		movq	%rdx, -24(%rbp)
 101:/usr/include/c++/7/ext/new_allocator.h **** 	  std::__throw_bad_alloc();
 3372              		.loc 8 101 0
 3373 0014 488B45F8 		movq	-8(%rbp), %rax
 3374 0018 4889C7   		movq	%rax, %rdi
 3375 001b E8000000 		call	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
 3375      00
 3376 0020 483945F0 		cmpq	%rax, -16(%rbp)
 3377 0024 0F97C0   		seta	%al
 3378 0027 84C0     		testb	%al, %al
 3379 0029 7405     		je	.L168
 102:/usr/include/c++/7/ext/new_allocator.h **** 
 3380              		.loc 8 102 0
 3381 002b E8000000 		call	_ZSt17__throw_bad_allocv@PLT
 3381      00
 3382              	.L168:
 111:/usr/include/c++/7/ext/new_allocator.h ****       }
 3383              		.loc 8 111 0
 3384 0030 488B45F0 		movq	-16(%rbp), %rax
 3385 0034 48C1E003 		salq	$3, %rax
 3386 0038 4889C7   		movq	%rax, %rdi
 3387 003b E8000000 		call	_Znwm@PLT
 3387      00
 112:/usr/include/c++/7/ext/new_allocator.h **** 
 3388              		.loc 8 112 0
 3389 0040 C9       		leave
 3390              		.cfi_def_cfa 7, 8
 3391 0041 C3       		ret
 3392              		.cfi_endproc
 3393              	.LFE2403:
 3395              		.section	.text._ZNSt13move_iteratorIPdEC2ES0_,"axG",@progbits,_ZNSt13move_iteratorIPdEC5ES0_,comda
 3396              		.align 2
 3397              		.weak	_ZNSt13move_iteratorIPdEC2ES0_
 3399              	_ZNSt13move_iteratorIPdEC2ES0_:
 3400              	.LFB2405:
1036:/usr/include/c++/7/bits/stl_iterator.h ****       : _M_current(__i) { }
 3401              		.loc 3 1036 0
 3402              		.cfi_startproc
 3403 0000 55       		pushq	%rbp
 3404              		.cfi_def_cfa_offset 16
 3405              		.cfi_offset 6, -16
 3406 0001 4889E5   		movq	%rsp, %rbp
 3407              		.cfi_def_cfa_register 6
 3408 0004 48897DF8 		movq	%rdi, -8(%rbp)
 3409 0008 488975F0 		movq	%rsi, -16(%rbp)
 3410              	.LBB41:
1037:/usr/include/c++/7/bits/stl_iterator.h **** 
 3411              		.loc 3 1037 0
 3412 000c 488B45F8 		movq	-8(%rbp), %rax
 3413 0010 488B55F0 		movq	-16(%rbp), %rdx
 3414 0014 488910   		movq	%rdx, (%rax)
 3415              	.LBE41:
 3416 0017 90       		nop
 3417 0018 5D       		popq	%rbp
 3418              		.cfi_def_cfa 7, 8
 3419 0019 C3       		ret
 3420              		.cfi_endproc
 3421              	.LFE2405:
 3423              		.weak	_ZNSt13move_iteratorIPdEC1ES0_
 3424              		.set	_ZNSt13move_iteratorIPdEC1ES0_,_ZNSt13move_iteratorIPdEC2ES0_
 3425              		.section	.text._ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt1
 3426              		.weak	_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 3428              	_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_:
 3429              	.LFB2407:
 115:/usr/include/c++/7/bits/stl_uninitialized.h **** 		       _ForwardIterator __result)
 3430              		.loc 7 115 0
 3431              		.cfi_startproc
 3432 0000 55       		pushq	%rbp
 3433              		.cfi_def_cfa_offset 16
 3434              		.cfi_offset 6, -16
 3435 0001 4889E5   		movq	%rsp, %rbp
 3436              		.cfi_def_cfa_register 6
 3437 0004 4883EC30 		subq	$48, %rsp
 3438 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3439 000c 488975E0 		movq	%rsi, -32(%rbp)
 3440 0010 488955D8 		movq	%rdx, -40(%rbp)
 128:/usr/include/c++/7/bits/stl_uninitialized.h **** #endif
 3441              		.loc 7 128 0
 3442 0014 C645FF01 		movb	$1, -1(%rbp)
 134:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 3443              		.loc 7 134 0
 3444 0018 488B55D8 		movq	-40(%rbp), %rdx
 3445 001c 488B4DE0 		movq	-32(%rbp), %rcx
 3446 0020 488B45E8 		movq	-24(%rbp), %rax
 3447 0024 4889CE   		movq	%rcx, %rsi
 3448 0027 4889C7   		movq	%rax, %rdi
 3449 002a E8000000 		call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_
 3449      00
 135:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 3450              		.loc 7 135 0
 3451 002f C9       		leave
 3452              		.cfi_def_cfa 7, 8
 3453 0030 C3       		ret
 3454              		.cfi_endproc
 3455              	.LFE2407:
 3457              		.section	.text._ZSt6fill_nIPdmdET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPdmdET_S1_T0_RKT1_,comda
 3458              		.weak	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
 3460              	_ZSt6fill_nIPdmdET_S1_T0_RKT1_:
 3461              	.LFB2429:
 228:/usr/include/c++/7/bits/stl_algobase.h **** 
 229:/usr/include/c++/7/bits/stl_algobase.h ****   /**
 230:/usr/include/c++/7/bits/stl_algobase.h ****    *  @brief This does what you think it does.
 231:/usr/include/c++/7/bits/stl_algobase.h ****    *  @ingroup sorting_algorithms
 232:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __a  A thing of arbitrary type.
 233:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __b  Another thing of arbitrary type.
 234:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __comp  A @link comparison_functors comparison functor@endlink.
 235:/usr/include/c++/7/bits/stl_algobase.h ****    *  @return   The lesser of the parameters.
 236:/usr/include/c++/7/bits/stl_algobase.h ****    *
 237:/usr/include/c++/7/bits/stl_algobase.h ****    *  This will work on temporary expressions, since they are only evaluated
 238:/usr/include/c++/7/bits/stl_algobase.h ****    *  once, unlike a preprocessor macro.
 239:/usr/include/c++/7/bits/stl_algobase.h ****   */
 240:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _Tp, typename _Compare>
 241:/usr/include/c++/7/bits/stl_algobase.h ****     _GLIBCXX14_CONSTEXPR
 242:/usr/include/c++/7/bits/stl_algobase.h ****     inline const _Tp&
 243:/usr/include/c++/7/bits/stl_algobase.h ****     min(const _Tp& __a, const _Tp& __b, _Compare __comp)
 244:/usr/include/c++/7/bits/stl_algobase.h ****     {
 245:/usr/include/c++/7/bits/stl_algobase.h ****       //return __comp(__b, __a) ? __b : __a;
 246:/usr/include/c++/7/bits/stl_algobase.h ****       if (__comp(__b, __a))
 247:/usr/include/c++/7/bits/stl_algobase.h **** 	return __b;
 248:/usr/include/c++/7/bits/stl_algobase.h ****       return __a;
 249:/usr/include/c++/7/bits/stl_algobase.h ****     }
 250:/usr/include/c++/7/bits/stl_algobase.h **** 
 251:/usr/include/c++/7/bits/stl_algobase.h ****   /**
 252:/usr/include/c++/7/bits/stl_algobase.h ****    *  @brief This does what you think it does.
 253:/usr/include/c++/7/bits/stl_algobase.h ****    *  @ingroup sorting_algorithms
 254:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __a  A thing of arbitrary type.
 255:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __b  Another thing of arbitrary type.
 256:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __comp  A @link comparison_functors comparison functor@endlink.
 257:/usr/include/c++/7/bits/stl_algobase.h ****    *  @return   The greater of the parameters.
 258:/usr/include/c++/7/bits/stl_algobase.h ****    *
 259:/usr/include/c++/7/bits/stl_algobase.h ****    *  This will work on temporary expressions, since they are only evaluated
 260:/usr/include/c++/7/bits/stl_algobase.h ****    *  once, unlike a preprocessor macro.
 261:/usr/include/c++/7/bits/stl_algobase.h ****   */
 262:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _Tp, typename _Compare>
 263:/usr/include/c++/7/bits/stl_algobase.h ****     _GLIBCXX14_CONSTEXPR
 264:/usr/include/c++/7/bits/stl_algobase.h ****     inline const _Tp&
 265:/usr/include/c++/7/bits/stl_algobase.h ****     max(const _Tp& __a, const _Tp& __b, _Compare __comp)
 266:/usr/include/c++/7/bits/stl_algobase.h ****     {
 267:/usr/include/c++/7/bits/stl_algobase.h ****       //return __comp(__a, __b) ? __b : __a;
 268:/usr/include/c++/7/bits/stl_algobase.h ****       if (__comp(__a, __b))
 269:/usr/include/c++/7/bits/stl_algobase.h **** 	return __b;
 270:/usr/include/c++/7/bits/stl_algobase.h ****       return __a;
 271:/usr/include/c++/7/bits/stl_algobase.h ****     }
 272:/usr/include/c++/7/bits/stl_algobase.h **** 
 273:/usr/include/c++/7/bits/stl_algobase.h ****   // Fallback implementation of the function in bits/stl_iterator.h used to
 274:/usr/include/c++/7/bits/stl_algobase.h ****   // remove the __normal_iterator wrapper. See copy, fill, ...
 275:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _Iterator>
 276:/usr/include/c++/7/bits/stl_algobase.h ****     inline _Iterator
 277:/usr/include/c++/7/bits/stl_algobase.h ****     __niter_base(_Iterator __it)
 278:/usr/include/c++/7/bits/stl_algobase.h ****     { return __it; }
 279:/usr/include/c++/7/bits/stl_algobase.h **** 
 280:/usr/include/c++/7/bits/stl_algobase.h ****   // All of these auxiliary structs serve two purposes.  (1) Replace
 281:/usr/include/c++/7/bits/stl_algobase.h ****   // calls to copy with memmove whenever possible.  (Memmove, not memcpy,
 282:/usr/include/c++/7/bits/stl_algobase.h ****   // because the input and output ranges are permitted to overlap.)
 283:/usr/include/c++/7/bits/stl_algobase.h ****   // (2) If we're using random access iterators, then write the loop as
 284:/usr/include/c++/7/bits/stl_algobase.h ****   // a for loop with an explicit count.
 285:/usr/include/c++/7/bits/stl_algobase.h **** 
 286:/usr/include/c++/7/bits/stl_algobase.h ****   template<bool, bool, typename>
 287:/usr/include/c++/7/bits/stl_algobase.h ****     struct __copy_move
 288:/usr/include/c++/7/bits/stl_algobase.h ****     {
 289:/usr/include/c++/7/bits/stl_algobase.h ****       template<typename _II, typename _OI>
 290:/usr/include/c++/7/bits/stl_algobase.h ****         static _OI
 291:/usr/include/c++/7/bits/stl_algobase.h ****         __copy_m(_II __first, _II __last, _OI __result)
 292:/usr/include/c++/7/bits/stl_algobase.h ****         {
 293:/usr/include/c++/7/bits/stl_algobase.h **** 	  for (; __first != __last; ++__result, (void)++__first)
 294:/usr/include/c++/7/bits/stl_algobase.h **** 	    *__result = *__first;
 295:/usr/include/c++/7/bits/stl_algobase.h **** 	  return __result;
 296:/usr/include/c++/7/bits/stl_algobase.h **** 	}
 297:/usr/include/c++/7/bits/stl_algobase.h ****     };
 298:/usr/include/c++/7/bits/stl_algobase.h **** 
 299:/usr/include/c++/7/bits/stl_algobase.h **** #if __cplusplus >= 201103L
 300:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _Category>
 301:/usr/include/c++/7/bits/stl_algobase.h ****     struct __copy_move<true, false, _Category>
 302:/usr/include/c++/7/bits/stl_algobase.h ****     {
 303:/usr/include/c++/7/bits/stl_algobase.h ****       template<typename _II, typename _OI>
 304:/usr/include/c++/7/bits/stl_algobase.h ****         static _OI
 305:/usr/include/c++/7/bits/stl_algobase.h ****         __copy_m(_II __first, _II __last, _OI __result)
 306:/usr/include/c++/7/bits/stl_algobase.h ****         {
 307:/usr/include/c++/7/bits/stl_algobase.h **** 	  for (; __first != __last; ++__result, (void)++__first)
 308:/usr/include/c++/7/bits/stl_algobase.h **** 	    *__result = std::move(*__first);
 309:/usr/include/c++/7/bits/stl_algobase.h **** 	  return __result;
 310:/usr/include/c++/7/bits/stl_algobase.h **** 	}
 311:/usr/include/c++/7/bits/stl_algobase.h ****     };
 312:/usr/include/c++/7/bits/stl_algobase.h **** #endif
 313:/usr/include/c++/7/bits/stl_algobase.h **** 
 314:/usr/include/c++/7/bits/stl_algobase.h ****   template<>
 315:/usr/include/c++/7/bits/stl_algobase.h ****     struct __copy_move<false, false, random_access_iterator_tag>
 316:/usr/include/c++/7/bits/stl_algobase.h ****     {
 317:/usr/include/c++/7/bits/stl_algobase.h ****       template<typename _II, typename _OI>
 318:/usr/include/c++/7/bits/stl_algobase.h ****         static _OI
 319:/usr/include/c++/7/bits/stl_algobase.h ****         __copy_m(_II __first, _II __last, _OI __result)
 320:/usr/include/c++/7/bits/stl_algobase.h ****         { 
 321:/usr/include/c++/7/bits/stl_algobase.h **** 	  typedef typename iterator_traits<_II>::difference_type _Distance;
 322:/usr/include/c++/7/bits/stl_algobase.h **** 	  for(_Distance __n = __last - __first; __n > 0; --__n)
 323:/usr/include/c++/7/bits/stl_algobase.h **** 	    {
 324:/usr/include/c++/7/bits/stl_algobase.h **** 	      *__result = *__first;
 325:/usr/include/c++/7/bits/stl_algobase.h **** 	      ++__first;
 326:/usr/include/c++/7/bits/stl_algobase.h **** 	      ++__result;
 327:/usr/include/c++/7/bits/stl_algobase.h **** 	    }
 328:/usr/include/c++/7/bits/stl_algobase.h **** 	  return __result;
 329:/usr/include/c++/7/bits/stl_algobase.h **** 	}
 330:/usr/include/c++/7/bits/stl_algobase.h ****     };
 331:/usr/include/c++/7/bits/stl_algobase.h **** 
 332:/usr/include/c++/7/bits/stl_algobase.h **** #if __cplusplus >= 201103L
 333:/usr/include/c++/7/bits/stl_algobase.h ****   template<>
 334:/usr/include/c++/7/bits/stl_algobase.h ****     struct __copy_move<true, false, random_access_iterator_tag>
 335:/usr/include/c++/7/bits/stl_algobase.h ****     {
 336:/usr/include/c++/7/bits/stl_algobase.h ****       template<typename _II, typename _OI>
 337:/usr/include/c++/7/bits/stl_algobase.h ****         static _OI
 338:/usr/include/c++/7/bits/stl_algobase.h ****         __copy_m(_II __first, _II __last, _OI __result)
 339:/usr/include/c++/7/bits/stl_algobase.h ****         { 
 340:/usr/include/c++/7/bits/stl_algobase.h **** 	  typedef typename iterator_traits<_II>::difference_type _Distance;
 341:/usr/include/c++/7/bits/stl_algobase.h **** 	  for(_Distance __n = __last - __first; __n > 0; --__n)
 342:/usr/include/c++/7/bits/stl_algobase.h **** 	    {
 343:/usr/include/c++/7/bits/stl_algobase.h **** 	      *__result = std::move(*__first);
 344:/usr/include/c++/7/bits/stl_algobase.h **** 	      ++__first;
 345:/usr/include/c++/7/bits/stl_algobase.h **** 	      ++__result;
 346:/usr/include/c++/7/bits/stl_algobase.h **** 	    }
 347:/usr/include/c++/7/bits/stl_algobase.h **** 	  return __result;
 348:/usr/include/c++/7/bits/stl_algobase.h **** 	}
 349:/usr/include/c++/7/bits/stl_algobase.h ****     };
 350:/usr/include/c++/7/bits/stl_algobase.h **** #endif
 351:/usr/include/c++/7/bits/stl_algobase.h **** 
 352:/usr/include/c++/7/bits/stl_algobase.h ****   template<bool _IsMove>
 353:/usr/include/c++/7/bits/stl_algobase.h ****     struct __copy_move<_IsMove, true, random_access_iterator_tag>
 354:/usr/include/c++/7/bits/stl_algobase.h ****     {
 355:/usr/include/c++/7/bits/stl_algobase.h ****       template<typename _Tp>
 356:/usr/include/c++/7/bits/stl_algobase.h ****         static _Tp*
 357:/usr/include/c++/7/bits/stl_algobase.h ****         __copy_m(const _Tp* __first, const _Tp* __last, _Tp* __result)
 358:/usr/include/c++/7/bits/stl_algobase.h ****         {
 359:/usr/include/c++/7/bits/stl_algobase.h **** #if __cplusplus >= 201103L
 360:/usr/include/c++/7/bits/stl_algobase.h **** 	  using __assignable = conditional<_IsMove,
 361:/usr/include/c++/7/bits/stl_algobase.h **** 					   is_move_assignable<_Tp>,
 362:/usr/include/c++/7/bits/stl_algobase.h **** 					   is_copy_assignable<_Tp>>;
 363:/usr/include/c++/7/bits/stl_algobase.h **** 	  // trivial types can have deleted assignment
 364:/usr/include/c++/7/bits/stl_algobase.h **** 	  static_assert( __assignable::type::value, "type is not assignable" );
 365:/usr/include/c++/7/bits/stl_algobase.h **** #endif
 366:/usr/include/c++/7/bits/stl_algobase.h **** 	  const ptrdiff_t _Num = __last - __first;
 367:/usr/include/c++/7/bits/stl_algobase.h **** 	  if (_Num)
 368:/usr/include/c++/7/bits/stl_algobase.h **** 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
 369:/usr/include/c++/7/bits/stl_algobase.h **** 	  return __result + _Num;
 370:/usr/include/c++/7/bits/stl_algobase.h **** 	}
 371:/usr/include/c++/7/bits/stl_algobase.h ****     };
 372:/usr/include/c++/7/bits/stl_algobase.h **** 
 373:/usr/include/c++/7/bits/stl_algobase.h ****   template<bool _IsMove, typename _II, typename _OI>
 374:/usr/include/c++/7/bits/stl_algobase.h ****     inline _OI
 375:/usr/include/c++/7/bits/stl_algobase.h ****     __copy_move_a(_II __first, _II __last, _OI __result)
 376:/usr/include/c++/7/bits/stl_algobase.h ****     {
 377:/usr/include/c++/7/bits/stl_algobase.h ****       typedef typename iterator_traits<_II>::value_type _ValueTypeI;
 378:/usr/include/c++/7/bits/stl_algobase.h ****       typedef typename iterator_traits<_OI>::value_type _ValueTypeO;
 379:/usr/include/c++/7/bits/stl_algobase.h ****       typedef typename iterator_traits<_II>::iterator_category _Category;
 380:/usr/include/c++/7/bits/stl_algobase.h ****       const bool __simple = (__is_trivial(_ValueTypeI)
 381:/usr/include/c++/7/bits/stl_algobase.h **** 	                     && __is_pointer<_II>::__value
 382:/usr/include/c++/7/bits/stl_algobase.h **** 	                     && __is_pointer<_OI>::__value
 383:/usr/include/c++/7/bits/stl_algobase.h **** 			     && __are_same<_ValueTypeI, _ValueTypeO>::__value);
 384:/usr/include/c++/7/bits/stl_algobase.h **** 
 385:/usr/include/c++/7/bits/stl_algobase.h ****       return std::__copy_move<_IsMove, __simple,
 386:/usr/include/c++/7/bits/stl_algobase.h **** 	                      _Category>::__copy_m(__first, __last, __result);
 387:/usr/include/c++/7/bits/stl_algobase.h ****     }
 388:/usr/include/c++/7/bits/stl_algobase.h **** 
 389:/usr/include/c++/7/bits/stl_algobase.h ****   // Helpers for streambuf iterators (either istream or ostream).
 390:/usr/include/c++/7/bits/stl_algobase.h ****   // NB: avoid including <iosfwd>, relatively large.
 391:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _CharT>
 392:/usr/include/c++/7/bits/stl_algobase.h ****     struct char_traits;
 393:/usr/include/c++/7/bits/stl_algobase.h **** 
 394:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _CharT, typename _Traits>
 395:/usr/include/c++/7/bits/stl_algobase.h ****     class istreambuf_iterator;
 396:/usr/include/c++/7/bits/stl_algobase.h **** 
 397:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _CharT, typename _Traits>
 398:/usr/include/c++/7/bits/stl_algobase.h ****     class ostreambuf_iterator;
 399:/usr/include/c++/7/bits/stl_algobase.h **** 
 400:/usr/include/c++/7/bits/stl_algobase.h ****   template<bool _IsMove, typename _CharT>
 401:/usr/include/c++/7/bits/stl_algobase.h ****     typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value, 
 402:/usr/include/c++/7/bits/stl_algobase.h **** 	     ostreambuf_iterator<_CharT, char_traits<_CharT> > >::__type
 403:/usr/include/c++/7/bits/stl_algobase.h ****     __copy_move_a2(_CharT*, _CharT*,
 404:/usr/include/c++/7/bits/stl_algobase.h **** 		   ostreambuf_iterator<_CharT, char_traits<_CharT> >);
 405:/usr/include/c++/7/bits/stl_algobase.h **** 
 406:/usr/include/c++/7/bits/stl_algobase.h ****   template<bool _IsMove, typename _CharT>
 407:/usr/include/c++/7/bits/stl_algobase.h ****     typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value, 
 408:/usr/include/c++/7/bits/stl_algobase.h **** 	     ostreambuf_iterator<_CharT, char_traits<_CharT> > >::__type
 409:/usr/include/c++/7/bits/stl_algobase.h ****     __copy_move_a2(const _CharT*, const _CharT*,
 410:/usr/include/c++/7/bits/stl_algobase.h **** 		   ostreambuf_iterator<_CharT, char_traits<_CharT> >);
 411:/usr/include/c++/7/bits/stl_algobase.h **** 
 412:/usr/include/c++/7/bits/stl_algobase.h ****   template<bool _IsMove, typename _CharT>
 413:/usr/include/c++/7/bits/stl_algobase.h ****     typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value,
 414:/usr/include/c++/7/bits/stl_algobase.h **** 				    _CharT*>::__type
 415:/usr/include/c++/7/bits/stl_algobase.h ****     __copy_move_a2(istreambuf_iterator<_CharT, char_traits<_CharT> >,
 416:/usr/include/c++/7/bits/stl_algobase.h **** 		   istreambuf_iterator<_CharT, char_traits<_CharT> >, _CharT*);
 417:/usr/include/c++/7/bits/stl_algobase.h **** 
 418:/usr/include/c++/7/bits/stl_algobase.h ****   template<bool _IsMove, typename _II, typename _OI>
 419:/usr/include/c++/7/bits/stl_algobase.h ****     inline _OI
 420:/usr/include/c++/7/bits/stl_algobase.h ****     __copy_move_a2(_II __first, _II __last, _OI __result)
 421:/usr/include/c++/7/bits/stl_algobase.h ****     {
 422:/usr/include/c++/7/bits/stl_algobase.h ****       return _OI(std::__copy_move_a<_IsMove>(std::__niter_base(__first),
 423:/usr/include/c++/7/bits/stl_algobase.h **** 					     std::__niter_base(__last),
 424:/usr/include/c++/7/bits/stl_algobase.h **** 					     std::__niter_base(__result)));
 425:/usr/include/c++/7/bits/stl_algobase.h ****     }
 426:/usr/include/c++/7/bits/stl_algobase.h **** 
 427:/usr/include/c++/7/bits/stl_algobase.h ****   /**
 428:/usr/include/c++/7/bits/stl_algobase.h ****    *  @brief Copies the range [first,last) into result.
 429:/usr/include/c++/7/bits/stl_algobase.h ****    *  @ingroup mutating_algorithms
 430:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __first  An input iterator.
 431:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __last   An input iterator.
 432:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __result An output iterator.
 433:/usr/include/c++/7/bits/stl_algobase.h ****    *  @return   result + (first - last)
 434:/usr/include/c++/7/bits/stl_algobase.h ****    *
 435:/usr/include/c++/7/bits/stl_algobase.h ****    *  This inline function will boil down to a call to @c memmove whenever
 436:/usr/include/c++/7/bits/stl_algobase.h ****    *  possible.  Failing that, if random access iterators are passed, then the
 437:/usr/include/c++/7/bits/stl_algobase.h ****    *  loop count will be known (and therefore a candidate for compiler
 438:/usr/include/c++/7/bits/stl_algobase.h ****    *  optimizations such as unrolling).  Result may not be contained within
 439:/usr/include/c++/7/bits/stl_algobase.h ****    *  [first,last); the copy_backward function should be used instead.
 440:/usr/include/c++/7/bits/stl_algobase.h ****    *
 441:/usr/include/c++/7/bits/stl_algobase.h ****    *  Note that the end of the output range is permitted to be contained
 442:/usr/include/c++/7/bits/stl_algobase.h ****    *  within [first,last).
 443:/usr/include/c++/7/bits/stl_algobase.h ****   */
 444:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _II, typename _OI>
 445:/usr/include/c++/7/bits/stl_algobase.h ****     inline _OI
 446:/usr/include/c++/7/bits/stl_algobase.h ****     copy(_II __first, _II __last, _OI __result)
 447:/usr/include/c++/7/bits/stl_algobase.h ****     {
 448:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 449:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_InputIteratorConcept<_II>)
 450:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_OutputIteratorConcept<_OI,
 451:/usr/include/c++/7/bits/stl_algobase.h **** 	    typename iterator_traits<_II>::value_type>)
 452:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_requires_valid_range(__first, __last);
 453:/usr/include/c++/7/bits/stl_algobase.h **** 
 454:/usr/include/c++/7/bits/stl_algobase.h ****       return (std::__copy_move_a2<__is_move_iterator<_II>::__value>
 455:/usr/include/c++/7/bits/stl_algobase.h **** 	      (std::__miter_base(__first), std::__miter_base(__last),
 456:/usr/include/c++/7/bits/stl_algobase.h **** 	       __result));
 457:/usr/include/c++/7/bits/stl_algobase.h ****     }
 458:/usr/include/c++/7/bits/stl_algobase.h **** 
 459:/usr/include/c++/7/bits/stl_algobase.h **** #if __cplusplus >= 201103L
 460:/usr/include/c++/7/bits/stl_algobase.h ****   /**
 461:/usr/include/c++/7/bits/stl_algobase.h ****    *  @brief Moves the range [first,last) into result.
 462:/usr/include/c++/7/bits/stl_algobase.h ****    *  @ingroup mutating_algorithms
 463:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __first  An input iterator.
 464:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __last   An input iterator.
 465:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __result An output iterator.
 466:/usr/include/c++/7/bits/stl_algobase.h ****    *  @return   result + (first - last)
 467:/usr/include/c++/7/bits/stl_algobase.h ****    *
 468:/usr/include/c++/7/bits/stl_algobase.h ****    *  This inline function will boil down to a call to @c memmove whenever
 469:/usr/include/c++/7/bits/stl_algobase.h ****    *  possible.  Failing that, if random access iterators are passed, then the
 470:/usr/include/c++/7/bits/stl_algobase.h ****    *  loop count will be known (and therefore a candidate for compiler
 471:/usr/include/c++/7/bits/stl_algobase.h ****    *  optimizations such as unrolling).  Result may not be contained within
 472:/usr/include/c++/7/bits/stl_algobase.h ****    *  [first,last); the move_backward function should be used instead.
 473:/usr/include/c++/7/bits/stl_algobase.h ****    *
 474:/usr/include/c++/7/bits/stl_algobase.h ****    *  Note that the end of the output range is permitted to be contained
 475:/usr/include/c++/7/bits/stl_algobase.h ****    *  within [first,last).
 476:/usr/include/c++/7/bits/stl_algobase.h ****   */
 477:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _II, typename _OI>
 478:/usr/include/c++/7/bits/stl_algobase.h ****     inline _OI
 479:/usr/include/c++/7/bits/stl_algobase.h ****     move(_II __first, _II __last, _OI __result)
 480:/usr/include/c++/7/bits/stl_algobase.h ****     {
 481:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 482:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_InputIteratorConcept<_II>)
 483:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_OutputIteratorConcept<_OI,
 484:/usr/include/c++/7/bits/stl_algobase.h **** 	    typename iterator_traits<_II>::value_type>)
 485:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_requires_valid_range(__first, __last);
 486:/usr/include/c++/7/bits/stl_algobase.h **** 
 487:/usr/include/c++/7/bits/stl_algobase.h ****       return std::__copy_move_a2<true>(std::__miter_base(__first),
 488:/usr/include/c++/7/bits/stl_algobase.h **** 				       std::__miter_base(__last), __result);
 489:/usr/include/c++/7/bits/stl_algobase.h ****     }
 490:/usr/include/c++/7/bits/stl_algobase.h **** 
 491:/usr/include/c++/7/bits/stl_algobase.h **** #define _GLIBCXX_MOVE3(_Tp, _Up, _Vp) std::move(_Tp, _Up, _Vp)
 492:/usr/include/c++/7/bits/stl_algobase.h **** #else
 493:/usr/include/c++/7/bits/stl_algobase.h **** #define _GLIBCXX_MOVE3(_Tp, _Up, _Vp) std::copy(_Tp, _Up, _Vp)
 494:/usr/include/c++/7/bits/stl_algobase.h **** #endif
 495:/usr/include/c++/7/bits/stl_algobase.h **** 
 496:/usr/include/c++/7/bits/stl_algobase.h ****   template<bool, bool, typename>
 497:/usr/include/c++/7/bits/stl_algobase.h ****     struct __copy_move_backward
 498:/usr/include/c++/7/bits/stl_algobase.h ****     {
 499:/usr/include/c++/7/bits/stl_algobase.h ****       template<typename _BI1, typename _BI2>
 500:/usr/include/c++/7/bits/stl_algobase.h ****         static _BI2
 501:/usr/include/c++/7/bits/stl_algobase.h ****         __copy_move_b(_BI1 __first, _BI1 __last, _BI2 __result)
 502:/usr/include/c++/7/bits/stl_algobase.h ****         {
 503:/usr/include/c++/7/bits/stl_algobase.h **** 	  while (__first != __last)
 504:/usr/include/c++/7/bits/stl_algobase.h **** 	    *--__result = *--__last;
 505:/usr/include/c++/7/bits/stl_algobase.h **** 	  return __result;
 506:/usr/include/c++/7/bits/stl_algobase.h **** 	}
 507:/usr/include/c++/7/bits/stl_algobase.h ****     };
 508:/usr/include/c++/7/bits/stl_algobase.h **** 
 509:/usr/include/c++/7/bits/stl_algobase.h **** #if __cplusplus >= 201103L
 510:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _Category>
 511:/usr/include/c++/7/bits/stl_algobase.h ****     struct __copy_move_backward<true, false, _Category>
 512:/usr/include/c++/7/bits/stl_algobase.h ****     {
 513:/usr/include/c++/7/bits/stl_algobase.h ****       template<typename _BI1, typename _BI2>
 514:/usr/include/c++/7/bits/stl_algobase.h ****         static _BI2
 515:/usr/include/c++/7/bits/stl_algobase.h ****         __copy_move_b(_BI1 __first, _BI1 __last, _BI2 __result)
 516:/usr/include/c++/7/bits/stl_algobase.h ****         {
 517:/usr/include/c++/7/bits/stl_algobase.h **** 	  while (__first != __last)
 518:/usr/include/c++/7/bits/stl_algobase.h **** 	    *--__result = std::move(*--__last);
 519:/usr/include/c++/7/bits/stl_algobase.h **** 	  return __result;
 520:/usr/include/c++/7/bits/stl_algobase.h **** 	}
 521:/usr/include/c++/7/bits/stl_algobase.h ****     };
 522:/usr/include/c++/7/bits/stl_algobase.h **** #endif
 523:/usr/include/c++/7/bits/stl_algobase.h **** 
 524:/usr/include/c++/7/bits/stl_algobase.h ****   template<>
 525:/usr/include/c++/7/bits/stl_algobase.h ****     struct __copy_move_backward<false, false, random_access_iterator_tag>
 526:/usr/include/c++/7/bits/stl_algobase.h ****     {
 527:/usr/include/c++/7/bits/stl_algobase.h ****       template<typename _BI1, typename _BI2>
 528:/usr/include/c++/7/bits/stl_algobase.h ****         static _BI2
 529:/usr/include/c++/7/bits/stl_algobase.h ****         __copy_move_b(_BI1 __first, _BI1 __last, _BI2 __result)
 530:/usr/include/c++/7/bits/stl_algobase.h ****         {
 531:/usr/include/c++/7/bits/stl_algobase.h **** 	  typename iterator_traits<_BI1>::difference_type __n;
 532:/usr/include/c++/7/bits/stl_algobase.h **** 	  for (__n = __last - __first; __n > 0; --__n)
 533:/usr/include/c++/7/bits/stl_algobase.h **** 	    *--__result = *--__last;
 534:/usr/include/c++/7/bits/stl_algobase.h **** 	  return __result;
 535:/usr/include/c++/7/bits/stl_algobase.h **** 	}
 536:/usr/include/c++/7/bits/stl_algobase.h ****     };
 537:/usr/include/c++/7/bits/stl_algobase.h **** 
 538:/usr/include/c++/7/bits/stl_algobase.h **** #if __cplusplus >= 201103L
 539:/usr/include/c++/7/bits/stl_algobase.h ****   template<>
 540:/usr/include/c++/7/bits/stl_algobase.h ****     struct __copy_move_backward<true, false, random_access_iterator_tag>
 541:/usr/include/c++/7/bits/stl_algobase.h ****     {
 542:/usr/include/c++/7/bits/stl_algobase.h ****       template<typename _BI1, typename _BI2>
 543:/usr/include/c++/7/bits/stl_algobase.h ****         static _BI2
 544:/usr/include/c++/7/bits/stl_algobase.h ****         __copy_move_b(_BI1 __first, _BI1 __last, _BI2 __result)
 545:/usr/include/c++/7/bits/stl_algobase.h ****         {
 546:/usr/include/c++/7/bits/stl_algobase.h **** 	  typename iterator_traits<_BI1>::difference_type __n;
 547:/usr/include/c++/7/bits/stl_algobase.h **** 	  for (__n = __last - __first; __n > 0; --__n)
 548:/usr/include/c++/7/bits/stl_algobase.h **** 	    *--__result = std::move(*--__last);
 549:/usr/include/c++/7/bits/stl_algobase.h **** 	  return __result;
 550:/usr/include/c++/7/bits/stl_algobase.h **** 	}
 551:/usr/include/c++/7/bits/stl_algobase.h ****     };
 552:/usr/include/c++/7/bits/stl_algobase.h **** #endif
 553:/usr/include/c++/7/bits/stl_algobase.h **** 
 554:/usr/include/c++/7/bits/stl_algobase.h ****   template<bool _IsMove>
 555:/usr/include/c++/7/bits/stl_algobase.h ****     struct __copy_move_backward<_IsMove, true, random_access_iterator_tag>
 556:/usr/include/c++/7/bits/stl_algobase.h ****     {
 557:/usr/include/c++/7/bits/stl_algobase.h ****       template<typename _Tp>
 558:/usr/include/c++/7/bits/stl_algobase.h ****         static _Tp*
 559:/usr/include/c++/7/bits/stl_algobase.h ****         __copy_move_b(const _Tp* __first, const _Tp* __last, _Tp* __result)
 560:/usr/include/c++/7/bits/stl_algobase.h ****         {
 561:/usr/include/c++/7/bits/stl_algobase.h **** #if __cplusplus >= 201103L
 562:/usr/include/c++/7/bits/stl_algobase.h **** 	  using __assignable = conditional<_IsMove,
 563:/usr/include/c++/7/bits/stl_algobase.h **** 					   is_move_assignable<_Tp>,
 564:/usr/include/c++/7/bits/stl_algobase.h **** 					   is_copy_assignable<_Tp>>;
 565:/usr/include/c++/7/bits/stl_algobase.h **** 	  // trivial types can have deleted assignment
 566:/usr/include/c++/7/bits/stl_algobase.h **** 	  static_assert( __assignable::type::value, "type is not assignable" );
 567:/usr/include/c++/7/bits/stl_algobase.h **** #endif
 568:/usr/include/c++/7/bits/stl_algobase.h **** 	  const ptrdiff_t _Num = __last - __first;
 569:/usr/include/c++/7/bits/stl_algobase.h **** 	  if (_Num)
 570:/usr/include/c++/7/bits/stl_algobase.h **** 	    __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
 571:/usr/include/c++/7/bits/stl_algobase.h **** 	  return __result - _Num;
 572:/usr/include/c++/7/bits/stl_algobase.h **** 	}
 573:/usr/include/c++/7/bits/stl_algobase.h ****     };
 574:/usr/include/c++/7/bits/stl_algobase.h **** 
 575:/usr/include/c++/7/bits/stl_algobase.h ****   template<bool _IsMove, typename _BI1, typename _BI2>
 576:/usr/include/c++/7/bits/stl_algobase.h ****     inline _BI2
 577:/usr/include/c++/7/bits/stl_algobase.h ****     __copy_move_backward_a(_BI1 __first, _BI1 __last, _BI2 __result)
 578:/usr/include/c++/7/bits/stl_algobase.h ****     {
 579:/usr/include/c++/7/bits/stl_algobase.h ****       typedef typename iterator_traits<_BI1>::value_type _ValueType1;
 580:/usr/include/c++/7/bits/stl_algobase.h ****       typedef typename iterator_traits<_BI2>::value_type _ValueType2;
 581:/usr/include/c++/7/bits/stl_algobase.h ****       typedef typename iterator_traits<_BI1>::iterator_category _Category;
 582:/usr/include/c++/7/bits/stl_algobase.h ****       const bool __simple = (__is_trivial(_ValueType1)
 583:/usr/include/c++/7/bits/stl_algobase.h **** 	                     && __is_pointer<_BI1>::__value
 584:/usr/include/c++/7/bits/stl_algobase.h **** 	                     && __is_pointer<_BI2>::__value
 585:/usr/include/c++/7/bits/stl_algobase.h **** 			     && __are_same<_ValueType1, _ValueType2>::__value);
 586:/usr/include/c++/7/bits/stl_algobase.h **** 
 587:/usr/include/c++/7/bits/stl_algobase.h ****       return std::__copy_move_backward<_IsMove, __simple,
 588:/usr/include/c++/7/bits/stl_algobase.h **** 	                               _Category>::__copy_move_b(__first,
 589:/usr/include/c++/7/bits/stl_algobase.h **** 								 __last,
 590:/usr/include/c++/7/bits/stl_algobase.h **** 								 __result);
 591:/usr/include/c++/7/bits/stl_algobase.h ****     }
 592:/usr/include/c++/7/bits/stl_algobase.h **** 
 593:/usr/include/c++/7/bits/stl_algobase.h ****   template<bool _IsMove, typename _BI1, typename _BI2>
 594:/usr/include/c++/7/bits/stl_algobase.h ****     inline _BI2
 595:/usr/include/c++/7/bits/stl_algobase.h ****     __copy_move_backward_a2(_BI1 __first, _BI1 __last, _BI2 __result)
 596:/usr/include/c++/7/bits/stl_algobase.h ****     {
 597:/usr/include/c++/7/bits/stl_algobase.h ****       return _BI2(std::__copy_move_backward_a<_IsMove>
 598:/usr/include/c++/7/bits/stl_algobase.h **** 		  (std::__niter_base(__first), std::__niter_base(__last),
 599:/usr/include/c++/7/bits/stl_algobase.h **** 		   std::__niter_base(__result)));
 600:/usr/include/c++/7/bits/stl_algobase.h ****     }
 601:/usr/include/c++/7/bits/stl_algobase.h **** 
 602:/usr/include/c++/7/bits/stl_algobase.h ****   /**
 603:/usr/include/c++/7/bits/stl_algobase.h ****    *  @brief Copies the range [first,last) into result.
 604:/usr/include/c++/7/bits/stl_algobase.h ****    *  @ingroup mutating_algorithms
 605:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __first  A bidirectional iterator.
 606:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __last   A bidirectional iterator.
 607:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __result A bidirectional iterator.
 608:/usr/include/c++/7/bits/stl_algobase.h ****    *  @return   result - (first - last)
 609:/usr/include/c++/7/bits/stl_algobase.h ****    *
 610:/usr/include/c++/7/bits/stl_algobase.h ****    *  The function has the same effect as copy, but starts at the end of the
 611:/usr/include/c++/7/bits/stl_algobase.h ****    *  range and works its way to the start, returning the start of the result.
 612:/usr/include/c++/7/bits/stl_algobase.h ****    *  This inline function will boil down to a call to @c memmove whenever
 613:/usr/include/c++/7/bits/stl_algobase.h ****    *  possible.  Failing that, if random access iterators are passed, then the
 614:/usr/include/c++/7/bits/stl_algobase.h ****    *  loop count will be known (and therefore a candidate for compiler
 615:/usr/include/c++/7/bits/stl_algobase.h ****    *  optimizations such as unrolling).
 616:/usr/include/c++/7/bits/stl_algobase.h ****    *
 617:/usr/include/c++/7/bits/stl_algobase.h ****    *  Result may not be in the range (first,last].  Use copy instead.  Note
 618:/usr/include/c++/7/bits/stl_algobase.h ****    *  that the start of the output range may overlap [first,last).
 619:/usr/include/c++/7/bits/stl_algobase.h ****   */
 620:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _BI1, typename _BI2>
 621:/usr/include/c++/7/bits/stl_algobase.h ****     inline _BI2
 622:/usr/include/c++/7/bits/stl_algobase.h ****     copy_backward(_BI1 __first, _BI1 __last, _BI2 __result)
 623:/usr/include/c++/7/bits/stl_algobase.h ****     {
 624:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 625:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_BidirectionalIteratorConcept<_BI1>)
 626:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_Mutable_BidirectionalIteratorConcept<_BI2>)
 627:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_ConvertibleConcept<
 628:/usr/include/c++/7/bits/stl_algobase.h **** 	    typename iterator_traits<_BI1>::value_type,
 629:/usr/include/c++/7/bits/stl_algobase.h **** 	    typename iterator_traits<_BI2>::value_type>)
 630:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_requires_valid_range(__first, __last);
 631:/usr/include/c++/7/bits/stl_algobase.h **** 
 632:/usr/include/c++/7/bits/stl_algobase.h ****       return (std::__copy_move_backward_a2<__is_move_iterator<_BI1>::__value>
 633:/usr/include/c++/7/bits/stl_algobase.h **** 	      (std::__miter_base(__first), std::__miter_base(__last),
 634:/usr/include/c++/7/bits/stl_algobase.h **** 	       __result));
 635:/usr/include/c++/7/bits/stl_algobase.h ****     }
 636:/usr/include/c++/7/bits/stl_algobase.h **** 
 637:/usr/include/c++/7/bits/stl_algobase.h **** #if __cplusplus >= 201103L
 638:/usr/include/c++/7/bits/stl_algobase.h ****   /**
 639:/usr/include/c++/7/bits/stl_algobase.h ****    *  @brief Moves the range [first,last) into result.
 640:/usr/include/c++/7/bits/stl_algobase.h ****    *  @ingroup mutating_algorithms
 641:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __first  A bidirectional iterator.
 642:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __last   A bidirectional iterator.
 643:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __result A bidirectional iterator.
 644:/usr/include/c++/7/bits/stl_algobase.h ****    *  @return   result - (first - last)
 645:/usr/include/c++/7/bits/stl_algobase.h ****    *
 646:/usr/include/c++/7/bits/stl_algobase.h ****    *  The function has the same effect as move, but starts at the end of the
 647:/usr/include/c++/7/bits/stl_algobase.h ****    *  range and works its way to the start, returning the start of the result.
 648:/usr/include/c++/7/bits/stl_algobase.h ****    *  This inline function will boil down to a call to @c memmove whenever
 649:/usr/include/c++/7/bits/stl_algobase.h ****    *  possible.  Failing that, if random access iterators are passed, then the
 650:/usr/include/c++/7/bits/stl_algobase.h ****    *  loop count will be known (and therefore a candidate for compiler
 651:/usr/include/c++/7/bits/stl_algobase.h ****    *  optimizations such as unrolling).
 652:/usr/include/c++/7/bits/stl_algobase.h ****    *
 653:/usr/include/c++/7/bits/stl_algobase.h ****    *  Result may not be in the range (first,last].  Use move instead.  Note
 654:/usr/include/c++/7/bits/stl_algobase.h ****    *  that the start of the output range may overlap [first,last).
 655:/usr/include/c++/7/bits/stl_algobase.h ****   */
 656:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _BI1, typename _BI2>
 657:/usr/include/c++/7/bits/stl_algobase.h ****     inline _BI2
 658:/usr/include/c++/7/bits/stl_algobase.h ****     move_backward(_BI1 __first, _BI1 __last, _BI2 __result)
 659:/usr/include/c++/7/bits/stl_algobase.h ****     {
 660:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 661:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_BidirectionalIteratorConcept<_BI1>)
 662:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_Mutable_BidirectionalIteratorConcept<_BI2>)
 663:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_ConvertibleConcept<
 664:/usr/include/c++/7/bits/stl_algobase.h **** 	    typename iterator_traits<_BI1>::value_type,
 665:/usr/include/c++/7/bits/stl_algobase.h **** 	    typename iterator_traits<_BI2>::value_type>)
 666:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_requires_valid_range(__first, __last);
 667:/usr/include/c++/7/bits/stl_algobase.h **** 
 668:/usr/include/c++/7/bits/stl_algobase.h ****       return std::__copy_move_backward_a2<true>(std::__miter_base(__first),
 669:/usr/include/c++/7/bits/stl_algobase.h **** 						std::__miter_base(__last),
 670:/usr/include/c++/7/bits/stl_algobase.h **** 						__result);
 671:/usr/include/c++/7/bits/stl_algobase.h ****     }
 672:/usr/include/c++/7/bits/stl_algobase.h **** 
 673:/usr/include/c++/7/bits/stl_algobase.h **** #define _GLIBCXX_MOVE_BACKWARD3(_Tp, _Up, _Vp) std::move_backward(_Tp, _Up, _Vp)
 674:/usr/include/c++/7/bits/stl_algobase.h **** #else
 675:/usr/include/c++/7/bits/stl_algobase.h **** #define _GLIBCXX_MOVE_BACKWARD3(_Tp, _Up, _Vp) std::copy_backward(_Tp, _Up, _Vp)
 676:/usr/include/c++/7/bits/stl_algobase.h **** #endif
 677:/usr/include/c++/7/bits/stl_algobase.h **** 
 678:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _ForwardIterator, typename _Tp>
 679:/usr/include/c++/7/bits/stl_algobase.h ****     inline typename
 680:/usr/include/c++/7/bits/stl_algobase.h ****     __gnu_cxx::__enable_if<!__is_scalar<_Tp>::__value, void>::__type
 681:/usr/include/c++/7/bits/stl_algobase.h ****     __fill_a(_ForwardIterator __first, _ForwardIterator __last,
 682:/usr/include/c++/7/bits/stl_algobase.h ****  	     const _Tp& __value)
 683:/usr/include/c++/7/bits/stl_algobase.h ****     {
 684:/usr/include/c++/7/bits/stl_algobase.h ****       for (; __first != __last; ++__first)
 685:/usr/include/c++/7/bits/stl_algobase.h **** 	*__first = __value;
 686:/usr/include/c++/7/bits/stl_algobase.h ****     }
 687:/usr/include/c++/7/bits/stl_algobase.h ****     
 688:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _ForwardIterator, typename _Tp>
 689:/usr/include/c++/7/bits/stl_algobase.h ****     inline typename
 690:/usr/include/c++/7/bits/stl_algobase.h ****     __gnu_cxx::__enable_if<__is_scalar<_Tp>::__value, void>::__type
 691:/usr/include/c++/7/bits/stl_algobase.h ****     __fill_a(_ForwardIterator __first, _ForwardIterator __last,
 692:/usr/include/c++/7/bits/stl_algobase.h **** 	     const _Tp& __value)
 693:/usr/include/c++/7/bits/stl_algobase.h ****     {
 694:/usr/include/c++/7/bits/stl_algobase.h ****       const _Tp __tmp = __value;
 695:/usr/include/c++/7/bits/stl_algobase.h ****       for (; __first != __last; ++__first)
 696:/usr/include/c++/7/bits/stl_algobase.h **** 	*__first = __tmp;
 697:/usr/include/c++/7/bits/stl_algobase.h ****     }
 698:/usr/include/c++/7/bits/stl_algobase.h **** 
 699:/usr/include/c++/7/bits/stl_algobase.h ****   // Specialization: for char types we can use memset.
 700:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _Tp>
 701:/usr/include/c++/7/bits/stl_algobase.h ****     inline typename
 702:/usr/include/c++/7/bits/stl_algobase.h ****     __gnu_cxx::__enable_if<__is_byte<_Tp>::__value, void>::__type
 703:/usr/include/c++/7/bits/stl_algobase.h ****     __fill_a(_Tp* __first, _Tp* __last, const _Tp& __c)
 704:/usr/include/c++/7/bits/stl_algobase.h ****     {
 705:/usr/include/c++/7/bits/stl_algobase.h ****       const _Tp __tmp = __c;
 706:/usr/include/c++/7/bits/stl_algobase.h ****       if (const size_t __len = __last - __first)
 707:/usr/include/c++/7/bits/stl_algobase.h **** 	__builtin_memset(__first, static_cast<unsigned char>(__tmp), __len);
 708:/usr/include/c++/7/bits/stl_algobase.h ****     }
 709:/usr/include/c++/7/bits/stl_algobase.h **** 
 710:/usr/include/c++/7/bits/stl_algobase.h ****   /**
 711:/usr/include/c++/7/bits/stl_algobase.h ****    *  @brief Fills the range [first,last) with copies of value.
 712:/usr/include/c++/7/bits/stl_algobase.h ****    *  @ingroup mutating_algorithms
 713:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __first  A forward iterator.
 714:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __last   A forward iterator.
 715:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __value  A reference-to-const of arbitrary type.
 716:/usr/include/c++/7/bits/stl_algobase.h ****    *  @return   Nothing.
 717:/usr/include/c++/7/bits/stl_algobase.h ****    *
 718:/usr/include/c++/7/bits/stl_algobase.h ****    *  This function fills a range with copies of the same value.  For char
 719:/usr/include/c++/7/bits/stl_algobase.h ****    *  types filling contiguous areas of memory, this becomes an inline call
 720:/usr/include/c++/7/bits/stl_algobase.h ****    *  to @c memset or @c wmemset.
 721:/usr/include/c++/7/bits/stl_algobase.h ****   */
 722:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _ForwardIterator, typename _Tp>
 723:/usr/include/c++/7/bits/stl_algobase.h ****     inline void
 724:/usr/include/c++/7/bits/stl_algobase.h ****     fill(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value)
 725:/usr/include/c++/7/bits/stl_algobase.h ****     {
 726:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 727:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_Mutable_ForwardIteratorConcept<
 728:/usr/include/c++/7/bits/stl_algobase.h **** 				  _ForwardIterator>)
 729:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_requires_valid_range(__first, __last);
 730:/usr/include/c++/7/bits/stl_algobase.h **** 
 731:/usr/include/c++/7/bits/stl_algobase.h ****       std::__fill_a(std::__niter_base(__first), std::__niter_base(__last),
 732:/usr/include/c++/7/bits/stl_algobase.h **** 		    __value);
 733:/usr/include/c++/7/bits/stl_algobase.h ****     }
 734:/usr/include/c++/7/bits/stl_algobase.h **** 
 735:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _OutputIterator, typename _Size, typename _Tp>
 736:/usr/include/c++/7/bits/stl_algobase.h ****     inline typename
 737:/usr/include/c++/7/bits/stl_algobase.h ****     __gnu_cxx::__enable_if<!__is_scalar<_Tp>::__value, _OutputIterator>::__type
 738:/usr/include/c++/7/bits/stl_algobase.h ****     __fill_n_a(_OutputIterator __first, _Size __n, const _Tp& __value)
 739:/usr/include/c++/7/bits/stl_algobase.h ****     {
 740:/usr/include/c++/7/bits/stl_algobase.h ****       for (__decltype(__n + 0) __niter = __n;
 741:/usr/include/c++/7/bits/stl_algobase.h **** 	   __niter > 0; --__niter, ++__first)
 742:/usr/include/c++/7/bits/stl_algobase.h **** 	*__first = __value;
 743:/usr/include/c++/7/bits/stl_algobase.h ****       return __first;
 744:/usr/include/c++/7/bits/stl_algobase.h ****     }
 745:/usr/include/c++/7/bits/stl_algobase.h **** 
 746:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _OutputIterator, typename _Size, typename _Tp>
 747:/usr/include/c++/7/bits/stl_algobase.h ****     inline typename
 748:/usr/include/c++/7/bits/stl_algobase.h ****     __gnu_cxx::__enable_if<__is_scalar<_Tp>::__value, _OutputIterator>::__type
 749:/usr/include/c++/7/bits/stl_algobase.h ****     __fill_n_a(_OutputIterator __first, _Size __n, const _Tp& __value)
 750:/usr/include/c++/7/bits/stl_algobase.h ****     {
 751:/usr/include/c++/7/bits/stl_algobase.h ****       const _Tp __tmp = __value;
 752:/usr/include/c++/7/bits/stl_algobase.h ****       for (__decltype(__n + 0) __niter = __n;
 753:/usr/include/c++/7/bits/stl_algobase.h **** 	   __niter > 0; --__niter, ++__first)
 754:/usr/include/c++/7/bits/stl_algobase.h **** 	*__first = __tmp;
 755:/usr/include/c++/7/bits/stl_algobase.h ****       return __first;
 756:/usr/include/c++/7/bits/stl_algobase.h ****     }
 757:/usr/include/c++/7/bits/stl_algobase.h **** 
 758:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _Size, typename _Tp>
 759:/usr/include/c++/7/bits/stl_algobase.h ****     inline typename
 760:/usr/include/c++/7/bits/stl_algobase.h ****     __gnu_cxx::__enable_if<__is_byte<_Tp>::__value, _Tp*>::__type
 761:/usr/include/c++/7/bits/stl_algobase.h ****     __fill_n_a(_Tp* __first, _Size __n, const _Tp& __c)
 762:/usr/include/c++/7/bits/stl_algobase.h ****     {
 763:/usr/include/c++/7/bits/stl_algobase.h ****       std::__fill_a(__first, __first + __n, __c);
 764:/usr/include/c++/7/bits/stl_algobase.h ****       return __first + __n;
 765:/usr/include/c++/7/bits/stl_algobase.h ****     }
 766:/usr/include/c++/7/bits/stl_algobase.h **** 
 767:/usr/include/c++/7/bits/stl_algobase.h ****   /**
 768:/usr/include/c++/7/bits/stl_algobase.h ****    *  @brief Fills the range [first,first+n) with copies of value.
 769:/usr/include/c++/7/bits/stl_algobase.h ****    *  @ingroup mutating_algorithms
 770:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __first  An output iterator.
 771:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __n      The count of copies to perform.
 772:/usr/include/c++/7/bits/stl_algobase.h ****    *  @param  __value  A reference-to-const of arbitrary type.
 773:/usr/include/c++/7/bits/stl_algobase.h ****    *  @return   The iterator at first+n.
 774:/usr/include/c++/7/bits/stl_algobase.h ****    *
 775:/usr/include/c++/7/bits/stl_algobase.h ****    *  This function fills a range with copies of the same value.  For char
 776:/usr/include/c++/7/bits/stl_algobase.h ****    *  types filling contiguous areas of memory, this becomes an inline call
 777:/usr/include/c++/7/bits/stl_algobase.h ****    *  to @c memset or @ wmemset.
 778:/usr/include/c++/7/bits/stl_algobase.h ****    *
 779:/usr/include/c++/7/bits/stl_algobase.h ****    *  _GLIBCXX_RESOLVE_LIB_DEFECTS
 780:/usr/include/c++/7/bits/stl_algobase.h ****    *  DR 865. More algorithms that throw away information
 781:/usr/include/c++/7/bits/stl_algobase.h ****   */
 782:/usr/include/c++/7/bits/stl_algobase.h ****   template<typename _OI, typename _Size, typename _Tp>
 783:/usr/include/c++/7/bits/stl_algobase.h ****     inline _OI
 784:/usr/include/c++/7/bits/stl_algobase.h ****     fill_n(_OI __first, _Size __n, const _Tp& __value)
 3462              		.loc 10 784 0
 3463              		.cfi_startproc
 3464 0000 55       		pushq	%rbp
 3465              		.cfi_def_cfa_offset 16
 3466              		.cfi_offset 6, -16
 3467 0001 4889E5   		movq	%rsp, %rbp
 3468              		.cfi_def_cfa_register 6
 3469 0004 4883EC20 		subq	$32, %rsp
 3470 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3471 000c 488975F0 		movq	%rsi, -16(%rbp)
 3472 0010 488955E8 		movq	%rdx, -24(%rbp)
 785:/usr/include/c++/7/bits/stl_algobase.h ****     {
 786:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 787:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_OutputIteratorConcept<_OI, _Tp>)
 788:/usr/include/c++/7/bits/stl_algobase.h **** 
 789:/usr/include/c++/7/bits/stl_algobase.h ****       return _OI(std::__fill_n_a(std::__niter_base(__first), __n, __value));
 3473              		.loc 10 789 0
 3474 0014 488B45F8 		movq	-8(%rbp), %rax
 3475 0018 4889C7   		movq	%rax, %rdi
 3476 001b E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 3476      00
 3477 0020 4889C1   		movq	%rax, %rcx
 3478 0023 488B55E8 		movq	-24(%rbp), %rdx
 3479 0027 488B45F0 		movq	-16(%rbp), %rax
 3480 002b 4889C6   		movq	%rax, %rsi
 3481 002e 4889CF   		movq	%rcx, %rdi
 3482 0031 E8000000 		call	_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_
 3482      00
 790:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3483              		.loc 10 790 0
 3484 0036 C9       		leave
 3485              		.cfi_def_cfa 7, 8
 3486 0037 C3       		ret
 3487              		.cfi_endproc
 3488              	.LFE2429:
 3490              		.section	.text._ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_all
 3491              		.align 2
 3492              		.weak	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
 3494              	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv:
 3495              	.LFB2430:
 127:/usr/include/c++/7/ext/new_allocator.h **** 
 128:/usr/include/c++/7/ext/new_allocator.h ****       size_type
 129:/usr/include/c++/7/ext/new_allocator.h ****       max_size() const _GLIBCXX_USE_NOEXCEPT
 3496              		.loc 8 129 0
 3497              		.cfi_startproc
 3498 0000 55       		pushq	%rbp
 3499              		.cfi_def_cfa_offset 16
 3500              		.cfi_offset 6, -16
 3501 0001 4889E5   		movq	%rsp, %rbp
 3502              		.cfi_def_cfa_register 6
 3503 0004 48897DF8 		movq	%rdi, -8(%rbp)
 130:/usr/include/c++/7/ext/new_allocator.h ****       { return size_t(-1) / sizeof(_Tp); }
 3504              		.loc 8 130 0
 3505 0008 48B8FFFF 		movabsq	$2305843009213693951, %rax
 3505      FFFFFFFF 
 3505      FF1F
 3506 0012 5D       		popq	%rbp
 3507              		.cfi_def_cfa 7, 8
 3508 0013 C3       		ret
 3509              		.cfi_endproc
 3510              	.LFE2430:
 3512              		.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_
 3513              		.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_
 3515              	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_:
 3516              	.LFB2431:
  99:/usr/include/c++/7/bits/stl_uninitialized.h **** 		      _ForwardIterator __result)
 3517              		.loc 7 99 0
 3518              		.cfi_startproc
 3519 0000 55       		pushq	%rbp
 3520              		.cfi_def_cfa_offset 16
 3521              		.cfi_offset 6, -16
 3522 0001 4889E5   		movq	%rsp, %rbp
 3523              		.cfi_def_cfa_register 6
 3524 0004 4883EC20 		subq	$32, %rsp
 3525 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3526 000c 488975F0 		movq	%rsi, -16(%rbp)
 3527 0010 488955E8 		movq	%rdx, -24(%rbp)
 101:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 3528              		.loc 7 101 0
 3529 0014 488B55E8 		movq	-24(%rbp), %rdx
 3530 0018 488B4DF0 		movq	-16(%rbp), %rcx
 3531 001c 488B45F8 		movq	-8(%rbp), %rax
 3532 0020 4889CE   		movq	%rcx, %rsi
 3533 0023 4889C7   		movq	%rax, %rdi
 3534 0026 E8000000 		call	_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 3534      00
 3535 002b C9       		leave
 3536              		.cfi_def_cfa 7, 8
 3537 002c C3       		ret
 3538              		.cfi_endproc
 3539              	.LFE2431:
 3541              		.section	.text._ZSt12__niter_baseIPdET_S1_,"axG",@progbits,_ZSt12__niter_baseIPdET_S1_,comdat
 3542              		.weak	_ZSt12__niter_baseIPdET_S1_
 3544              	_ZSt12__niter_baseIPdET_S1_:
 3545              	.LFB2439:
 277:/usr/include/c++/7/bits/stl_algobase.h ****     { return __it; }
 3546              		.loc 10 277 0
 3547              		.cfi_startproc
 3548 0000 55       		pushq	%rbp
 3549              		.cfi_def_cfa_offset 16
 3550              		.cfi_offset 6, -16
 3551 0001 4889E5   		movq	%rsp, %rbp
 3552              		.cfi_def_cfa_register 6
 3553 0004 48897DF8 		movq	%rdi, -8(%rbp)
 278:/usr/include/c++/7/bits/stl_algobase.h **** 
 3554              		.loc 10 278 0
 3555 0008 488B45F8 		movq	-8(%rbp), %rax
 3556 000c 5D       		popq	%rbp
 3557              		.cfi_def_cfa 7, 8
 3558 000d C3       		ret
 3559              		.cfi_endproc
 3560              	.LFE2439:
 3562              		.section	.text._ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6
 3563              		.weak	_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6
 3565              	_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS
 3566              	.LFB2440:
 749:/usr/include/c++/7/bits/stl_algobase.h ****     {
 3567              		.loc 10 749 0
 3568              		.cfi_startproc
 3569 0000 55       		pushq	%rbp
 3570              		.cfi_def_cfa_offset 16
 3571              		.cfi_offset 6, -16
 3572 0001 4889E5   		movq	%rsp, %rbp
 3573              		.cfi_def_cfa_register 6
 3574 0004 48897DE8 		movq	%rdi, -24(%rbp)
 3575 0008 488975E0 		movq	%rsi, -32(%rbp)
 3576 000c 488955D8 		movq	%rdx, -40(%rbp)
 751:/usr/include/c++/7/bits/stl_algobase.h ****       for (__decltype(__n + 0) __niter = __n;
 3577              		.loc 10 751 0
 3578 0010 488B45D8 		movq	-40(%rbp), %rax
 3579 0014 F20F1000 		movsd	(%rax), %xmm0
 3580 0018 F20F1145 		movsd	%xmm0, -8(%rbp)
 3580      F8
 3581              	.LBB42:
 752:/usr/include/c++/7/bits/stl_algobase.h **** 	   __niter > 0; --__niter, ++__first)
 3582              		.loc 10 752 0
 3583 001d 488B45E0 		movq	-32(%rbp), %rax
 3584 0021 488945F0 		movq	%rax, -16(%rbp)
 3585              	.L183:
 753:/usr/include/c++/7/bits/stl_algobase.h **** 	*__first = __tmp;
 3586              		.loc 10 753 0
 3587 0025 48837DF0 		cmpq	$0, -16(%rbp)
 3587      00
 3588 002a 7419     		je	.L182
 754:/usr/include/c++/7/bits/stl_algobase.h ****       return __first;
 3589              		.loc 10 754 0
 3590 002c 488B45E8 		movq	-24(%rbp), %rax
 3591 0030 F20F1045 		movsd	-8(%rbp), %xmm0
 3591      F8
 3592 0035 F20F1100 		movsd	%xmm0, (%rax)
 752:/usr/include/c++/7/bits/stl_algobase.h **** 	   __niter > 0; --__niter, ++__first)
 3593              		.loc 10 752 0
 3594 0039 48836DF0 		subq	$1, -16(%rbp)
 3594      01
 3595 003e 488345E8 		addq	$8, -24(%rbp)
 3595      08
 3596 0043 EBE0     		jmp	.L183
 3597              	.L182:
 3598              	.LBE42:
 755:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3599              		.loc 10 755 0
 3600 0045 488B45E8 		movq	-24(%rbp), %rax
 756:/usr/include/c++/7/bits/stl_algobase.h **** 
 3601              		.loc 10 756 0
 3602 0049 5D       		popq	%rbp
 3603              		.cfi_def_cfa 7, 8
 3604 004a C3       		ret
 3605              		.cfi_endproc
 3606              	.LFE2440:
 3608              		.section	.text._ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt4copyISt13move_i
 3609              		.weak	_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 3611              	_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_:
 3612              	.LFB2441:
 446:/usr/include/c++/7/bits/stl_algobase.h ****     {
 3613              		.loc 10 446 0
 3614              		.cfi_startproc
 3615 0000 55       		pushq	%rbp
 3616              		.cfi_def_cfa_offset 16
 3617              		.cfi_offset 6, -16
 3618 0001 4889E5   		movq	%rsp, %rbp
 3619              		.cfi_def_cfa_register 6
 3620 0004 53       		pushq	%rbx
 3621 0005 4883EC28 		subq	$40, %rsp
 3622              		.cfi_offset 3, -24
 3623 0009 48897DE8 		movq	%rdi, -24(%rbp)
 3624 000d 488975E0 		movq	%rsi, -32(%rbp)
 3625 0011 488955D8 		movq	%rdx, -40(%rbp)
 455:/usr/include/c++/7/bits/stl_algobase.h **** 	       __result));
 3626              		.loc 10 455 0
 3627 0015 488B45E0 		movq	-32(%rbp), %rax
 3628 0019 4889C7   		movq	%rax, %rdi
 3629 001c E8000000 		call	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
 3629      00
 3630 0021 4889C3   		movq	%rax, %rbx
 3631 0024 488B45E8 		movq	-24(%rbp), %rax
 3632 0028 4889C7   		movq	%rax, %rdi
 3633 002b E8000000 		call	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
 3633      00
 3634 0030 4889C1   		movq	%rax, %rcx
 456:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3635              		.loc 10 456 0
 3636 0033 488B45D8 		movq	-40(%rbp), %rax
 3637 0037 4889C2   		movq	%rax, %rdx
 3638 003a 4889DE   		movq	%rbx, %rsi
 3639 003d 4889CF   		movq	%rcx, %rdi
 3640 0040 E8000000 		call	_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_
 3640      00
 457:/usr/include/c++/7/bits/stl_algobase.h **** 
 3641              		.loc 10 457 0
 3642 0045 4883C428 		addq	$40, %rsp
 3643 0049 5B       		popq	%rbx
 3644 004a 5D       		popq	%rbp
 3645              		.cfi_def_cfa 7, 8
 3646 004b C3       		ret
 3647              		.cfi_endproc
 3648              	.LFE2441:
 3650              		.section	.text._ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"axG",
 3651              		.weak	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
 3653              	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
 3654              	.LFB2444:
1223:/usr/include/c++/7/bits/stl_iterator.h **** 
1224:/usr/include/c++/7/bits/stl_iterator.h ****   // @} group iterators
1225:/usr/include/c++/7/bits/stl_iterator.h **** 
1226:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
1227:/usr/include/c++/7/bits/stl_iterator.h ****     auto
1228:/usr/include/c++/7/bits/stl_iterator.h ****     __niter_base(move_iterator<_Iterator> __it)
1229:/usr/include/c++/7/bits/stl_iterator.h ****     -> decltype(make_move_iterator(__niter_base(__it.base())))
1230:/usr/include/c++/7/bits/stl_iterator.h ****     { return make_move_iterator(__niter_base(__it.base())); }
1231:/usr/include/c++/7/bits/stl_iterator.h **** 
1232:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
1233:/usr/include/c++/7/bits/stl_iterator.h ****     struct __is_move_iterator<move_iterator<_Iterator> >
1234:/usr/include/c++/7/bits/stl_iterator.h ****     {
1235:/usr/include/c++/7/bits/stl_iterator.h ****       enum { __value = 1 };
1236:/usr/include/c++/7/bits/stl_iterator.h ****       typedef __true_type __type;
1237:/usr/include/c++/7/bits/stl_iterator.h ****     };
1238:/usr/include/c++/7/bits/stl_iterator.h **** 
1239:/usr/include/c++/7/bits/stl_iterator.h ****   template<typename _Iterator>
1240:/usr/include/c++/7/bits/stl_iterator.h ****     auto
1241:/usr/include/c++/7/bits/stl_iterator.h ****     __miter_base(move_iterator<_Iterator> __it)
 3655              		.loc 3 1241 0
 3656              		.cfi_startproc
 3657 0000 55       		pushq	%rbp
 3658              		.cfi_def_cfa_offset 16
 3659              		.cfi_offset 6, -16
 3660 0001 4889E5   		movq	%rsp, %rbp
 3661              		.cfi_def_cfa_register 6
 3662 0004 4883EC10 		subq	$16, %rsp
 3663 0008 48897DF8 		movq	%rdi, -8(%rbp)
1242:/usr/include/c++/7/bits/stl_iterator.h ****     -> decltype(__miter_base(__it.base()))
1243:/usr/include/c++/7/bits/stl_iterator.h ****     { return __miter_base(__it.base()); }
 3664              		.loc 3 1243 0
 3665 000c 488D45F8 		leaq	-8(%rbp), %rax
 3666 0010 4889C7   		movq	%rax, %rdi
 3667 0013 E8000000 		call	_ZNKSt13move_iteratorIPdE4baseEv
 3667      00
 3668 0018 4889C7   		movq	%rax, %rdi
 3669 001b E8000000 		call	_ZSt12__miter_baseIPdET_S1_
 3669      00
 3670 0020 C9       		leave
 3671              		.cfi_def_cfa 7, 8
 3672 0021 C3       		ret
 3673              		.cfi_endproc
 3674              	.LFE2444:
 3676              		.section	.text._ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb
 3677              		.weak	_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_
 3679              	_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_:
 3680              	.LFB2445:
 420:/usr/include/c++/7/bits/stl_algobase.h ****     {
 3681              		.loc 10 420 0
 3682              		.cfi_startproc
 3683 0000 55       		pushq	%rbp
 3684              		.cfi_def_cfa_offset 16
 3685              		.cfi_offset 6, -16
 3686 0001 4889E5   		movq	%rsp, %rbp
 3687              		.cfi_def_cfa_register 6
 3688 0004 4154     		pushq	%r12
 3689 0006 53       		pushq	%rbx
 3690 0007 4883EC20 		subq	$32, %rsp
 3691              		.cfi_offset 12, -24
 3692              		.cfi_offset 3, -32
 3693 000b 48897DE8 		movq	%rdi, -24(%rbp)
 3694 000f 488975E0 		movq	%rsi, -32(%rbp)
 3695 0013 488955D8 		movq	%rdx, -40(%rbp)
 422:/usr/include/c++/7/bits/stl_algobase.h **** 					     std::__niter_base(__last),
 3696              		.loc 10 422 0
 3697 0017 488B45D8 		movq	-40(%rbp), %rax
 3698 001b 4889C7   		movq	%rax, %rdi
 3699 001e E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 3699      00
 3700 0023 4989C4   		movq	%rax, %r12
 3701 0026 488B45E0 		movq	-32(%rbp), %rax
 3702 002a 4889C7   		movq	%rax, %rdi
 3703 002d E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 3703      00
 3704 0032 4889C3   		movq	%rax, %rbx
 3705 0035 488B45E8 		movq	-24(%rbp), %rax
 3706 0039 4889C7   		movq	%rax, %rdi
 3707 003c E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 3707      00
 424:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3708              		.loc 10 424 0
 3709 0041 4C89E2   		movq	%r12, %rdx
 3710 0044 4889DE   		movq	%rbx, %rsi
 3711 0047 4889C7   		movq	%rax, %rdi
 3712 004a E8000000 		call	_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_
 3712      00
 425:/usr/include/c++/7/bits/stl_algobase.h **** 
 3713              		.loc 10 425 0
 3714 004f 4883C420 		addq	$32, %rsp
 3715 0053 5B       		popq	%rbx
 3716 0054 415C     		popq	%r12
 3717 0056 5D       		popq	%rbp
 3718              		.cfi_def_cfa 7, 8
 3719 0057 C3       		ret
 3720              		.cfi_endproc
 3721              	.LFE2445:
 3723              		.section	.text._ZNKSt13move_iteratorIPdE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIPdE4baseEv,c
 3724              		.align 2
 3725              		.weak	_ZNKSt13move_iteratorIPdE4baseEv
 3727              	_ZNKSt13move_iteratorIPdE4baseEv:
 3728              	.LFB2446:
1045:/usr/include/c++/7/bits/stl_iterator.h ****       { return _M_current; }
 3729              		.loc 3 1045 0
 3730              		.cfi_startproc
 3731 0000 55       		pushq	%rbp
 3732              		.cfi_def_cfa_offset 16
 3733              		.cfi_offset 6, -16
 3734 0001 4889E5   		movq	%rsp, %rbp
 3735              		.cfi_def_cfa_register 6
 3736 0004 48897DF8 		movq	%rdi, -8(%rbp)
1046:/usr/include/c++/7/bits/stl_iterator.h **** 
 3737              		.loc 3 1046 0
 3738 0008 488B45F8 		movq	-8(%rbp), %rax
 3739 000c 488B00   		movq	(%rax), %rax
 3740 000f 5D       		popq	%rbp
 3741              		.cfi_def_cfa 7, 8
 3742 0010 C3       		ret
 3743              		.cfi_endproc
 3744              	.LFE2446:
 3746              		.section	.text._ZSt12__miter_baseIPdET_S1_,"axG",@progbits,_ZSt12__miter_baseIPdET_S1_,comdat
 3747              		.weak	_ZSt12__miter_baseIPdET_S1_
 3749              	_ZSt12__miter_baseIPdET_S1_:
 3750              	.LFB2447:
 3751              		.file 11 "/usr/include/c++/7/bits/cpp_type_traits.h"
   1:/usr/include/c++/7/bits/cpp_type_traits.h **** // The  -*- C++ -*- type traits classes for internal use in libstdc++
   2:/usr/include/c++/7/bits/cpp_type_traits.h **** 
   3:/usr/include/c++/7/bits/cpp_type_traits.h **** // Copyright (C) 2000-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/cpp_type_traits.h **** //
   5:/usr/include/c++/7/bits/cpp_type_traits.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/cpp_type_traits.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/cpp_type_traits.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/cpp_type_traits.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/cpp_type_traits.h **** // any later version.
  10:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  11:/usr/include/c++/7/bits/cpp_type_traits.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/cpp_type_traits.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/cpp_type_traits.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/cpp_type_traits.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  16:/usr/include/c++/7/bits/cpp_type_traits.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/cpp_type_traits.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/cpp_type_traits.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  20:/usr/include/c++/7/bits/cpp_type_traits.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/cpp_type_traits.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/cpp_type_traits.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/cpp_type_traits.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  25:/usr/include/c++/7/bits/cpp_type_traits.h **** /** @file bits/cpp_type_traits.h
  26:/usr/include/c++/7/bits/cpp_type_traits.h ****  *  This is an internal header file, included by other library headers.
  27:/usr/include/c++/7/bits/cpp_type_traits.h ****  *  Do not attempt to use it directly. @headername{ext/type_traits}
  28:/usr/include/c++/7/bits/cpp_type_traits.h ****  */
  29:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  30:/usr/include/c++/7/bits/cpp_type_traits.h **** // Written by Gabriel Dos Reis <dosreis@cmla.ens-cachan.fr>
  31:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  32:/usr/include/c++/7/bits/cpp_type_traits.h **** #ifndef _CPP_TYPE_TRAITS_H
  33:/usr/include/c++/7/bits/cpp_type_traits.h **** #define _CPP_TYPE_TRAITS_H 1
  34:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  35:/usr/include/c++/7/bits/cpp_type_traits.h **** #pragma GCC system_header
  36:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  37:/usr/include/c++/7/bits/cpp_type_traits.h **** #include <bits/c++config.h>
  38:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  39:/usr/include/c++/7/bits/cpp_type_traits.h **** //
  40:/usr/include/c++/7/bits/cpp_type_traits.h **** // This file provides some compile-time information about various types.
  41:/usr/include/c++/7/bits/cpp_type_traits.h **** // These representations were designed, on purpose, to be constant-expressions
  42:/usr/include/c++/7/bits/cpp_type_traits.h **** // and not types as found in <bits/type_traits.h>.  In particular, they
  43:/usr/include/c++/7/bits/cpp_type_traits.h **** // can be used in control structures and the optimizer hopefully will do
  44:/usr/include/c++/7/bits/cpp_type_traits.h **** // the obvious thing.
  45:/usr/include/c++/7/bits/cpp_type_traits.h **** //
  46:/usr/include/c++/7/bits/cpp_type_traits.h **** // Why integral expressions, and not functions nor types?
  47:/usr/include/c++/7/bits/cpp_type_traits.h **** // Firstly, these compile-time entities are used as template-arguments
  48:/usr/include/c++/7/bits/cpp_type_traits.h **** // so function return values won't work:  We need compile-time entities.
  49:/usr/include/c++/7/bits/cpp_type_traits.h **** // We're left with types and constant  integral expressions.
  50:/usr/include/c++/7/bits/cpp_type_traits.h **** // Secondly, from the point of view of ease of use, type-based compile-time
  51:/usr/include/c++/7/bits/cpp_type_traits.h **** // information is -not- *that* convenient.  On has to write lots of
  52:/usr/include/c++/7/bits/cpp_type_traits.h **** // overloaded functions and to hope that the compiler will select the right
  53:/usr/include/c++/7/bits/cpp_type_traits.h **** // one. As a net effect, the overall structure isn't very clear at first
  54:/usr/include/c++/7/bits/cpp_type_traits.h **** // glance.
  55:/usr/include/c++/7/bits/cpp_type_traits.h **** // Thirdly, partial ordering and overload resolution (of function templates)
  56:/usr/include/c++/7/bits/cpp_type_traits.h **** // is highly costly in terms of compiler-resource.  It is a Good Thing to
  57:/usr/include/c++/7/bits/cpp_type_traits.h **** // keep these resource consumption as least as possible.
  58:/usr/include/c++/7/bits/cpp_type_traits.h **** //
  59:/usr/include/c++/7/bits/cpp_type_traits.h **** // See valarray_array.h for a case use.
  60:/usr/include/c++/7/bits/cpp_type_traits.h **** //
  61:/usr/include/c++/7/bits/cpp_type_traits.h **** // -- Gaby (dosreis@cmla.ens-cachan.fr) 2000-03-06.
  62:/usr/include/c++/7/bits/cpp_type_traits.h **** //
  63:/usr/include/c++/7/bits/cpp_type_traits.h **** // Update 2005: types are also provided and <bits/type_traits.h> has been
  64:/usr/include/c++/7/bits/cpp_type_traits.h **** // removed.
  65:/usr/include/c++/7/bits/cpp_type_traits.h **** //
  66:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  67:/usr/include/c++/7/bits/cpp_type_traits.h **** extern "C++" {
  68:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  69:/usr/include/c++/7/bits/cpp_type_traits.h **** namespace std _GLIBCXX_VISIBILITY(default)
  70:/usr/include/c++/7/bits/cpp_type_traits.h **** {
  71:/usr/include/c++/7/bits/cpp_type_traits.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  72:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  73:/usr/include/c++/7/bits/cpp_type_traits.h ****   struct __true_type { };
  74:/usr/include/c++/7/bits/cpp_type_traits.h ****   struct __false_type { };
  75:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  76:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<bool>
  77:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __truth_type
  78:/usr/include/c++/7/bits/cpp_type_traits.h ****     { typedef __false_type __type; };
  79:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  80:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
  81:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __truth_type<true>
  82:/usr/include/c++/7/bits/cpp_type_traits.h ****     { typedef __true_type __type; };
  83:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  84:/usr/include/c++/7/bits/cpp_type_traits.h ****   // N.B. The conversions to bool are needed due to the issue
  85:/usr/include/c++/7/bits/cpp_type_traits.h ****   // explained in c++/19404.
  86:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<class _Sp, class _Tp>
  87:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __traitor
  88:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
  89:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = bool(_Sp::__value) || bool(_Tp::__value) };
  90:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef typename __truth_type<__value>::__type __type;
  91:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
  92:/usr/include/c++/7/bits/cpp_type_traits.h **** 
  93:/usr/include/c++/7/bits/cpp_type_traits.h ****   // Compare for equality of types.
  94:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<typename, typename>
  95:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __are_same
  96:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
  97:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 0 };
  98:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __false_type __type;
  99:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 100:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 101:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<typename _Tp>
 102:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __are_same<_Tp, _Tp>
 103:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 104:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 105:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 106:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 107:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 108:/usr/include/c++/7/bits/cpp_type_traits.h ****   // Holds if the template-argument is a void type.
 109:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<typename _Tp>
 110:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_void
 111:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 112:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 0 };
 113:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __false_type __type;
 114:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 115:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 116:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 117:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_void<void>
 118:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 119:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 120:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 121:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 122:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 123:/usr/include/c++/7/bits/cpp_type_traits.h ****   //
 124:/usr/include/c++/7/bits/cpp_type_traits.h ****   // Integer types
 125:/usr/include/c++/7/bits/cpp_type_traits.h ****   //
 126:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<typename _Tp>
 127:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer
 128:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 129:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 0 };
 130:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __false_type __type;
 131:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 132:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 133:/usr/include/c++/7/bits/cpp_type_traits.h ****   // Thirteen specializations (yes there are eleven standard integer
 134:/usr/include/c++/7/bits/cpp_type_traits.h ****   // types; <em>long long</em> and <em>unsigned long long</em> are
 135:/usr/include/c++/7/bits/cpp_type_traits.h ****   // supported as extensions).  Up to four target-specific __int<N>
 136:/usr/include/c++/7/bits/cpp_type_traits.h ****   // types are supported as well.
 137:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 138:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<bool>
 139:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 140:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 141:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 142:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 143:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 144:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 145:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<char>
 146:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 147:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 148:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 149:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 150:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 151:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 152:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<signed char>
 153:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 154:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 155:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 156:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 157:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 158:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 159:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<unsigned char>
 160:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 161:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 162:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 163:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 164:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 165:/usr/include/c++/7/bits/cpp_type_traits.h **** # ifdef _GLIBCXX_USE_WCHAR_T
 166:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 167:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<wchar_t>
 168:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 169:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 170:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 171:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 172:/usr/include/c++/7/bits/cpp_type_traits.h **** # endif
 173:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 174:/usr/include/c++/7/bits/cpp_type_traits.h **** #if __cplusplus >= 201103L
 175:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 176:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<char16_t>
 177:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 178:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 179:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 180:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 181:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 182:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 183:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<char32_t>
 184:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 185:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 186:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 187:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 188:/usr/include/c++/7/bits/cpp_type_traits.h **** #endif
 189:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 190:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 191:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<short>
 192:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 193:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 194:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 195:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 196:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 197:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 198:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<unsigned short>
 199:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 200:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 201:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 202:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 203:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 204:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 205:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<int>
 206:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 207:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 208:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 209:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 210:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 211:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 212:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<unsigned int>
 213:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 214:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 215:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 216:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 217:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 218:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 219:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<long>
 220:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 221:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 222:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 223:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 224:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 225:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 226:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<unsigned long>
 227:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 228:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 229:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 230:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 231:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 232:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 233:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<long long>
 234:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 235:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 236:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 237:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 238:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 239:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 240:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<unsigned long long>
 241:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 242:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 243:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 244:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 245:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 246:/usr/include/c++/7/bits/cpp_type_traits.h **** #define __INT_N(TYPE) 			\
 247:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>				\
 248:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<TYPE>		\
 249:/usr/include/c++/7/bits/cpp_type_traits.h ****     {					\
 250:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };		\
 251:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;	\
 252:/usr/include/c++/7/bits/cpp_type_traits.h ****     };					\
 253:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>				\
 254:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_integer<unsigned TYPE>	\
 255:/usr/include/c++/7/bits/cpp_type_traits.h ****     {					\
 256:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };		\
 257:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;	\
 258:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 259:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 260:/usr/include/c++/7/bits/cpp_type_traits.h **** #ifdef __GLIBCXX_TYPE_INT_N_0
 261:/usr/include/c++/7/bits/cpp_type_traits.h **** __INT_N(__GLIBCXX_TYPE_INT_N_0)
 262:/usr/include/c++/7/bits/cpp_type_traits.h **** #endif
 263:/usr/include/c++/7/bits/cpp_type_traits.h **** #ifdef __GLIBCXX_TYPE_INT_N_1
 264:/usr/include/c++/7/bits/cpp_type_traits.h **** __INT_N(__GLIBCXX_TYPE_INT_N_1)
 265:/usr/include/c++/7/bits/cpp_type_traits.h **** #endif
 266:/usr/include/c++/7/bits/cpp_type_traits.h **** #ifdef __GLIBCXX_TYPE_INT_N_2
 267:/usr/include/c++/7/bits/cpp_type_traits.h **** __INT_N(__GLIBCXX_TYPE_INT_N_2)
 268:/usr/include/c++/7/bits/cpp_type_traits.h **** #endif
 269:/usr/include/c++/7/bits/cpp_type_traits.h **** #ifdef __GLIBCXX_TYPE_INT_N_3
 270:/usr/include/c++/7/bits/cpp_type_traits.h **** __INT_N(__GLIBCXX_TYPE_INT_N_3)
 271:/usr/include/c++/7/bits/cpp_type_traits.h **** #endif
 272:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 273:/usr/include/c++/7/bits/cpp_type_traits.h **** #undef __INT_N
 274:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 275:/usr/include/c++/7/bits/cpp_type_traits.h ****   //
 276:/usr/include/c++/7/bits/cpp_type_traits.h ****   // Floating point types
 277:/usr/include/c++/7/bits/cpp_type_traits.h ****   //
 278:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<typename _Tp>
 279:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_floating
 280:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 281:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 0 };
 282:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __false_type __type;
 283:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 284:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 285:/usr/include/c++/7/bits/cpp_type_traits.h ****   // three specializations (float, double and 'long double')
 286:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 287:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_floating<float>
 288:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 289:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 290:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 291:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 292:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 293:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 294:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_floating<double>
 295:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 296:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 297:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 298:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 299:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 300:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 301:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_floating<long double>
 302:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 303:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 304:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 305:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 306:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 307:/usr/include/c++/7/bits/cpp_type_traits.h ****   //
 308:/usr/include/c++/7/bits/cpp_type_traits.h ****   // Pointer types
 309:/usr/include/c++/7/bits/cpp_type_traits.h ****   //
 310:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<typename _Tp>
 311:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_pointer
 312:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 313:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 0 };
 314:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __false_type __type;
 315:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 316:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 317:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<typename _Tp>
 318:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_pointer<_Tp*>
 319:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 320:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 321:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 322:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 323:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 324:/usr/include/c++/7/bits/cpp_type_traits.h ****   //
 325:/usr/include/c++/7/bits/cpp_type_traits.h ****   // An arithmetic type is an integer type or a floating point type
 326:/usr/include/c++/7/bits/cpp_type_traits.h ****   //
 327:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<typename _Tp>
 328:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_arithmetic
 329:/usr/include/c++/7/bits/cpp_type_traits.h ****     : public __traitor<__is_integer<_Tp>, __is_floating<_Tp> >
 330:/usr/include/c++/7/bits/cpp_type_traits.h ****     { };
 331:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 332:/usr/include/c++/7/bits/cpp_type_traits.h ****   //
 333:/usr/include/c++/7/bits/cpp_type_traits.h ****   // A scalar type is an arithmetic type or a pointer type
 334:/usr/include/c++/7/bits/cpp_type_traits.h ****   // 
 335:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<typename _Tp>
 336:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_scalar
 337:/usr/include/c++/7/bits/cpp_type_traits.h ****     : public __traitor<__is_arithmetic<_Tp>, __is_pointer<_Tp> >
 338:/usr/include/c++/7/bits/cpp_type_traits.h ****     { };
 339:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 340:/usr/include/c++/7/bits/cpp_type_traits.h ****   //
 341:/usr/include/c++/7/bits/cpp_type_traits.h ****   // For use in std::copy and std::find overloads for streambuf iterators.
 342:/usr/include/c++/7/bits/cpp_type_traits.h ****   //
 343:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<typename _Tp>
 344:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_char
 345:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 346:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 0 };
 347:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __false_type __type;
 348:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 349:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 350:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 351:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_char<char>
 352:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 353:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 354:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 355:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 356:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 357:/usr/include/c++/7/bits/cpp_type_traits.h **** #ifdef _GLIBCXX_USE_WCHAR_T
 358:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 359:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_char<wchar_t>
 360:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 361:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 362:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 363:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 364:/usr/include/c++/7/bits/cpp_type_traits.h **** #endif
 365:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 366:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<typename _Tp>
 367:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_byte
 368:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 369:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 0 };
 370:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __false_type __type;
 371:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 372:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 373:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 374:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_byte<char>
 375:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 376:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 377:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 378:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 379:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 380:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 381:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_byte<signed char>
 382:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 383:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 384:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 385:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 386:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 387:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<>
 388:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_byte<unsigned char>
 389:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 390:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 1 };
 391:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __true_type __type;
 392:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 393:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 394:/usr/include/c++/7/bits/cpp_type_traits.h ****   //
 395:/usr/include/c++/7/bits/cpp_type_traits.h ****   // Move iterator type
 396:/usr/include/c++/7/bits/cpp_type_traits.h ****   //
 397:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<typename _Tp>
 398:/usr/include/c++/7/bits/cpp_type_traits.h ****     struct __is_move_iterator
 399:/usr/include/c++/7/bits/cpp_type_traits.h ****     {
 400:/usr/include/c++/7/bits/cpp_type_traits.h ****       enum { __value = 0 };
 401:/usr/include/c++/7/bits/cpp_type_traits.h ****       typedef __false_type __type;
 402:/usr/include/c++/7/bits/cpp_type_traits.h ****     };
 403:/usr/include/c++/7/bits/cpp_type_traits.h **** 
 404:/usr/include/c++/7/bits/cpp_type_traits.h ****   // Fallback implementation of the function in bits/stl_iterator.h used to
 405:/usr/include/c++/7/bits/cpp_type_traits.h ****   // remove the move_iterator wrapper.
 406:/usr/include/c++/7/bits/cpp_type_traits.h ****   template<typename _Iterator>
 407:/usr/include/c++/7/bits/cpp_type_traits.h ****     inline _Iterator
 408:/usr/include/c++/7/bits/cpp_type_traits.h ****     __miter_base(_Iterator __it)
 3752              		.loc 11 408 0
 3753              		.cfi_startproc
 3754 0000 55       		pushq	%rbp
 3755              		.cfi_def_cfa_offset 16
 3756              		.cfi_offset 6, -16
 3757 0001 4889E5   		movq	%rsp, %rbp
 3758              		.cfi_def_cfa_register 6
 3759 0004 48897DF8 		movq	%rdi, -8(%rbp)
 409:/usr/include/c++/7/bits/cpp_type_traits.h ****     { return __it; }
 3760              		.loc 11 409 0
 3761 0008 488B45F8 		movq	-8(%rbp), %rax
 3762 000c 5D       		popq	%rbp
 3763              		.cfi_def_cfa 7, 8
 3764 000d C3       		ret
 3765              		.cfi_endproc
 3766              	.LFE2447:
 3768              		.section	.text._ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb1E
 3769              		.weak	_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_
 3771              	_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_:
 3772              	.LFB2448:
 375:/usr/include/c++/7/bits/stl_algobase.h ****     {
 3773              		.loc 10 375 0
 3774              		.cfi_startproc
 3775 0000 55       		pushq	%rbp
 3776              		.cfi_def_cfa_offset 16
 3777              		.cfi_offset 6, -16
 3778 0001 4889E5   		movq	%rsp, %rbp
 3779              		.cfi_def_cfa_register 6
 3780 0004 4883EC30 		subq	$48, %rsp
 3781 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3782 000c 488975E0 		movq	%rsi, -32(%rbp)
 3783 0010 488955D8 		movq	%rdx, -40(%rbp)
 380:/usr/include/c++/7/bits/stl_algobase.h **** 	                     && __is_pointer<_II>::__value
 3784              		.loc 10 380 0
 3785 0014 C645FF01 		movb	$1, -1(%rbp)
 386:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3786              		.loc 10 386 0
 3787 0018 488B55D8 		movq	-40(%rbp), %rdx
 3788 001c 488B4DE0 		movq	-32(%rbp), %rcx
 3789 0020 488B45E8 		movq	-24(%rbp), %rax
 3790 0024 4889CE   		movq	%rcx, %rsi
 3791 0027 4889C7   		movq	%rax, %rdi
 3792 002a E8000000 		call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
 3792      00
 387:/usr/include/c++/7/bits/stl_algobase.h **** 
 3793              		.loc 10 387 0
 3794 002f C9       		leave
 3795              		.cfi_def_cfa 7, 8
 3796 0030 C3       		ret
 3797              		.cfi_endproc
 3798              	.LFE2448:
 3800              		.section	.text._ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S
 3801              		.weak	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
 3803              	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_:
 3804              	.LFB2449:
 357:/usr/include/c++/7/bits/stl_algobase.h ****         {
 3805              		.loc 10 357 0
 3806              		.cfi_startproc
 3807 0000 55       		pushq	%rbp
 3808              		.cfi_def_cfa_offset 16
 3809              		.cfi_offset 6, -16
 3810 0001 4889E5   		movq	%rsp, %rbp
 3811              		.cfi_def_cfa_register 6
 3812 0004 4883EC30 		subq	$48, %rsp
 3813 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3814 000c 488975E0 		movq	%rsi, -32(%rbp)
 3815 0010 488955D8 		movq	%rdx, -40(%rbp)
 366:/usr/include/c++/7/bits/stl_algobase.h **** 	  if (_Num)
 3816              		.loc 10 366 0
 3817 0014 488B55E0 		movq	-32(%rbp), %rdx
 3818 0018 488B45E8 		movq	-24(%rbp), %rax
 3819 001c 4829C2   		subq	%rax, %rdx
 3820 001f 4889D0   		movq	%rdx, %rax
 3821 0022 48C1F803 		sarq	$3, %rax
 3822 0026 488945F8 		movq	%rax, -8(%rbp)
 367:/usr/include/c++/7/bits/stl_algobase.h **** 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
 3823              		.loc 10 367 0
 3824 002a 48837DF8 		cmpq	$0, -8(%rbp)
 3824      00
 3825 002f 741F     		je	.L198
 368:/usr/include/c++/7/bits/stl_algobase.h **** 	  return __result + _Num;
 3826              		.loc 10 368 0
 3827 0031 488B45F8 		movq	-8(%rbp), %rax
 3828 0035 488D14C5 		leaq	0(,%rax,8), %rdx
 3828      00000000 
 3829 003d 488B4DE8 		movq	-24(%rbp), %rcx
 3830 0041 488B45D8 		movq	-40(%rbp), %rax
 3831 0045 4889CE   		movq	%rcx, %rsi
 3832 0048 4889C7   		movq	%rax, %rdi
 3833 004b E8000000 		call	memmove@PLT
 3833      00
 3834              	.L198:
 369:/usr/include/c++/7/bits/stl_algobase.h **** 	}
 3835              		.loc 10 369 0
 3836 0050 488B45F8 		movq	-8(%rbp), %rax
 3837 0054 488D14C5 		leaq	0(,%rax,8), %rdx
 3837      00000000 
 3838 005c 488B45D8 		movq	-40(%rbp), %rax
 3839 0060 4801D0   		addq	%rdx, %rax
 370:/usr/include/c++/7/bits/stl_algobase.h ****     };
 3840              		.loc 10 370 0
 3841 0063 C9       		leave
 3842              		.cfi_def_cfa 7, 8
 3843 0064 C3       		ret
 3844              		.cfi_endproc
 3845              	.LFE2449:
 3847              		.text
 3849              	_Z41__static_initialization_and_destruction_0ii:
 3850              	.LFB2450:
 3851              		.loc 1 225 0
 3852              		.cfi_startproc
 3853 0bdb 55       		pushq	%rbp
 3854              		.cfi_def_cfa_offset 16
 3855              		.cfi_offset 6, -16
 3856 0bdc 4889E5   		movq	%rsp, %rbp
 3857              		.cfi_def_cfa_register 6
 3858 0bdf 4883EC10 		subq	$16, %rsp
 3859 0be3 897DFC   		movl	%edi, -4(%rbp)
 3860 0be6 8975F8   		movl	%esi, -8(%rbp)
 3861              		.loc 1 225 0
 3862 0be9 837DFC01 		cmpl	$1, -4(%rbp)
 3863 0bed 7532     		jne	.L202
 3864              		.loc 1 225 0 is_stmt 0 discriminator 1
 3865 0bef 817DF8FF 		cmpl	$65535, -8(%rbp)
 3865      FF0000
 3866 0bf6 7529     		jne	.L202
 3867              		.file 12 "/usr/include/c++/7/iostream"
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
 3868              		.loc 12 74 0 is_stmt 1
 3869 0bf8 488D3D00 		leaq	_ZStL8__ioinit(%rip), %rdi
 3869      000000
 3870 0bff E8000000 		call	_ZNSt8ios_base4InitC1Ev@PLT
 3870      00
 3871 0c04 488D1500 		leaq	__dso_handle(%rip), %rdx
 3871      000000
 3872 0c0b 488D3500 		leaq	_ZStL8__ioinit(%rip), %rsi
 3872      000000
 3873 0c12 488B0500 		movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
 3873      000000
 3874 0c19 4889C7   		movq	%rax, %rdi
 3875 0c1c E8000000 		call	__cxa_atexit@PLT
 3875      00
 3876              	.L202:
 3877              		.loc 1 225 0
 3878 0c21 90       		nop
 3879 0c22 C9       		leave
 3880              		.cfi_def_cfa 7, 8
 3881 0c23 C3       		ret
 3882              		.cfi_endproc
 3883              	.LFE2450:
 3886              	_GLOBAL__sub_I__ZN9RowVectorC2EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
 3887              	.LFB2451:
 3888              		.loc 1 225 0
 3889              		.cfi_startproc
 3890 0c24 55       		pushq	%rbp
 3891              		.cfi_def_cfa_offset 16
 3892              		.cfi_offset 6, -16
 3893 0c25 4889E5   		movq	%rsp, %rbp
 3894              		.cfi_def_cfa_register 6
 3895              		.loc 1 225 0
 3896 0c28 BEFFFF00 		movl	$65535, %esi
 3896      00
 3897 0c2d BF010000 		movl	$1, %edi
 3897      00
 3898 0c32 E8A4FFFF 		call	_Z41__static_initialization_and_destruction_0ii
 3898      FF
 3899 0c37 5D       		popq	%rbp
 3900              		.cfi_def_cfa 7, 8
 3901 0c38 C3       		ret
 3902              		.cfi_endproc
 3903              	.LFE2451:
 3905              		.section	.init_array,"aw"
 3906              		.align 8
 3907 0000 00000000 		.quad	_GLOBAL__sub_I__ZN9RowVectorC2EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 3907      00000000 
 3908              		.section	.rodata
 3909 01c8 00000000 		.align 32
 3909      00000000 
 3909      00000000 
 3909      00000000 
 3909      00000000 
 3912              	_ZZN9RowVectormlERKS_E19__PRETTY_FUNCTION__:
 3913 01e0 636F6E73 		.string	"const double RowVector::operator*(const RowVector&)"
 3913      7420646F 
 3913      75626C65 
 3913      20526F77 
 3913      56656374 
 3914 0214 00000000 		.align 32
 3914      00000000 
 3914      00000000 
 3917              	_ZZN9RowVectorplERKS_E19__PRETTY_FUNCTION__:
 3918 0220 526F7756 		.string	"RowVector RowVector::operator+(const RowVector&)"
 3918      6563746F 
 3918      7220526F 
 3918      77566563 
 3918      746F723A 
 3919 0251 00000000 		.align 8
 3919      000000
 3920              	.LC13:
 3921 0258 00000000 		.long	0
 3922 025c 0000F03F 		.long	1072693248
 3923              		.align 8
 3924              	.LC14:
 3925 0260 00000000 		.long	0
 3926 0264 00000040 		.long	1073741824
 3927              		.align 8
 3928              	.LC19:
 3929 0268 00000000 		.long	0
 3930 026c 0000E03F 		.long	1071644672
 3931              		.align 8
 3932              	.LC23:
 3933 0270 00000000 		.long	0
 3934 0274 0000F0BF 		.long	-1074790400
 3935              		.text
 3936              	.Letext0:
 3937              		.file 13 "/usr/include/c++/7/bits/basic_string.h"
 3938              		.file 14 "/usr/include/c++/7/bits/basic_string.tcc"
 3939              		.file 15 "/usr/include/c++/7/bits/stringfwd.h"
 3940              		.file 16 "/usr/include/c++/7/cstdint"
 3941              		.file 17 "/usr/include/c++/7/new"
 3942              		.file 18 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
 3943              		.file 19 "/usr/include/c++/7/bits/exception_ptr.h"
 3944              		.file 20 "/usr/include/c++/7/type_traits"
 3945              		.file 21 "/usr/include/c++/7/cwchar"
 3946              		.file 22 "/usr/include/c++/7/bits/stl_pair.h"
 3947              		.file 23 "/usr/include/c++/7/bits/stl_iterator_base_types.h"
 3948              		.file 24 "/usr/include/c++/7/debug/debug.h"
 3949              		.file 25 "/usr/include/c++/7/bits/char_traits.h"
 3950              		.file 26 "/usr/include/c++/7/clocale"
 3951              		.file 27 "/usr/include/c++/7/cstdlib"
 3952              		.file 28 "/usr/include/c++/7/cstdio"
 3953              		.file 29 "/usr/include/c++/7/initializer_list"
 3954              		.file 30 "/usr/include/c++/7/system_error"
 3955              		.file 31 "/usr/include/c++/7/bits/ios_base.h"
 3956              		.file 32 "/usr/include/c++/7/cwctype"
 3957              		.file 33 "/usr/include/c++/7/iosfwd"
 3958              		.file 34 "/usr/include/c++/7/bits/stl_iterator_base_funcs.h"
 3959              		.file 35 "/usr/include/c++/7/bits/move.h"
 3960              		.file 36 "/usr/include/c++/7/bits/predefined_ops.h"
 3961              		.file 37 "/usr/include/c++/7/ext/numeric_traits.h"
 3962              		.file 38 "/usr/include/c++/7/ext/alloc_traits.h"
 3963              		.file 39 "/usr/include/c++/7/ext/type_traits.h"
 3964              		.file 40 "/usr/include/x86_64-linux-gnu/bits/types.h"
 3965              		.file 41 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
 3966              		.file 42 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
 3967              		.file 43 "/usr/include/stdint.h"
 3968              		.file 44 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
 3969              		.file 45 "<built-in>"
 3970              		.file 46 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
 3971              		.file 47 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
 3972              		.file 48 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
 3973              		.file 49 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
 3974              		.file 50 "/usr/include/x86_64-linux-gnu/bits/libio.h"
 3975              		.file 51 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
 3976              		.file 52 "/usr/include/wchar.h"
 3977              		.file 53 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
 3978              		.file 54 "/usr/include/locale.h"
 3979              		.file 55 "/usr/include/time.h"
 3980              		.file 56 "/usr/include/x86_64-linux-gnu/c++/7/bits/atomic_word.h"
 3981              		.file 57 "/usr/include/stdlib.h"
 3982              		.file 58 "/usr/include/x86_64-linux-gnu/bits/_G_config.h"
 3983              		.file 59 "/usr/include/stdio.h"
 3984              		.file 60 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
 3985              		.file 61 "/usr/include/errno.h"
 3986              		.file 62 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
 3987              		.file 63 "/usr/include/wctype.h"
 23624              		.align 8
 23627              	DW.ref.__gxx_personality_v0:
 23628 0000 00000000 		.quad	__gxx_personality_v0
 23628      00000000 
 23629              		.hidden	__dso_handle
 23630              		.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
 23631              		.section	.note.GNU-stack,"",@progbits
