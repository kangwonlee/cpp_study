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
 237              		.text
 238              		.align 2
 239              		.globl	_ZN9RowVectorC2EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 241              	_ZN9RowVectorC2EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
 242              	.LFB1848:
  47:cpp_vector_double_practice.cpp **** 
  48:cpp_vector_double_practice.cpp ****         RowVector(const RowVector & other);
  49:cpp_vector_double_practice.cpp **** 
  50:cpp_vector_double_practice.cpp ****         double & operator [] (const uint32_t i);
  51:cpp_vector_double_practice.cpp **** 
  52:cpp_vector_double_practice.cpp ****         const std::string get_name();
  53:cpp_vector_double_practice.cpp **** 
  54:cpp_vector_double_practice.cpp ****         RowVector operator + (const RowVector & other);
  55:cpp_vector_double_practice.cpp **** 
  56:cpp_vector_double_practice.cpp ****         RowVector operator * (const double a);
  57:cpp_vector_double_practice.cpp **** 
  58:cpp_vector_double_practice.cpp ****         const double operator * (const RowVector & other);
  59:cpp_vector_double_practice.cpp **** 
  60:cpp_vector_double_practice.cpp ****         void show();
  61:cpp_vector_double_practice.cpp **** };
  62:cpp_vector_double_practice.cpp **** 
  63:cpp_vector_double_practice.cpp **** 
  64:cpp_vector_double_practice.cpp **** RowVector::RowVector(const uint32_t n, const double *values, std::string new_name){
 243              		.loc 1 64 0
 244              		.cfi_startproc
 245              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 246              		.cfi_lsda 0x1b,.LLSDA1848
 247 0000 55       		pushq	%rbp
 248              		.cfi_def_cfa_offset 16
 249              		.cfi_offset 6, -16
 250 0001 4889E5   		movq	%rsp, %rbp
 251              		.cfi_def_cfa_register 6
 252 0004 53       		pushq	%rbx
 253 0005 4883EC38 		subq	$56, %rsp
 254              		.cfi_offset 3, -24
 255 0009 48897DD8 		movq	%rdi, -40(%rbp)
 256 000d 8975D4   		movl	%esi, -44(%rbp)
 257 0010 488955C8 		movq	%rdx, -56(%rbp)
 258 0014 48894DC0 		movq	%rcx, -64(%rbp)
 259              	.LBB5:
 260              		.loc 1 64 0
 261 0018 488B45D8 		movq	-40(%rbp), %rax
 262 001c 4889C7   		movq	%rax, %rdi
 263 001f E8000000 		call	_ZNSt6vectorIdSaIdEEC1Ev
 263      00
 264 0024 488B45D8 		movq	-40(%rbp), %rax
 265 0028 4883C018 		addq	$24, %rax
 266 002c 4889C7   		movq	%rax, %rdi
 267 002f E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
 267      00
 268              	.LBB6:
  65:cpp_vector_double_practice.cpp **** #ifdef LOG
  66:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' 
 269              		.loc 1 66 0
 270 0034 BE5B0000 		movl	$91, %esi
 270      00
 271 0039 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 271      000000
 272              	.LEHB4:
 273 0040 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 273      00
 274 0045 4889C2   		movq	%rax, %rdx
 275 0048 488B45D8 		movq	-40(%rbp), %rax
 276 004c 4889C6   		movq	%rax, %rsi
 277 004f 4889D7   		movq	%rdx, %rdi
 278 0052 E8000000 		call	_ZNSolsEPKv@PLT
 278      00
  67:cpp_vector_double_practice.cpp ****     << "RowVector(" << n << ", " << values << ", " << new_name << ")\n";
 279              		.loc 1 67 0 discriminator 1
 280 0057 BE5D0000 		movl	$93, %esi
 280      00
 281 005c 4889C7   		movq	%rax, %rdi
 282 005f E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 282      00
 283              		.loc 1 67 0 is_stmt 0 discriminator 2
 284 0064 488D3500 		leaq	.LC1(%rip), %rsi
 284      000000
 285 006b 4889C7   		movq	%rax, %rdi
 286 006e E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 286      00
 287              		.loc 1 67 0 discriminator 1
 288 0073 4889C2   		movq	%rax, %rdx
 289 0076 8B45D4   		movl	-44(%rbp), %eax
 290 0079 89C6     		movl	%eax, %esi
 291 007b 4889D7   		movq	%rdx, %rdi
 292 007e E8000000 		call	_ZNSolsEj@PLT
 292      00
 293              		.loc 1 67 0 discriminator 2
 294 0083 488D3500 		leaq	.LC2(%rip), %rsi
 294      000000
 295 008a 4889C7   		movq	%rax, %rdi
 296 008d E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 296      00
 297              		.loc 1 67 0 discriminator 3
 298 0092 4889C2   		movq	%rax, %rdx
 299 0095 488B45C8 		movq	-56(%rbp), %rax
 300 0099 4889C6   		movq	%rax, %rsi
 301 009c 4889D7   		movq	%rdx, %rdi
 302 009f E8000000 		call	_ZNSolsEPKv@PLT
 302      00
 303              		.loc 1 67 0 discriminator 4
 304 00a4 488D3500 		leaq	.LC2(%rip), %rsi
 304      000000
 305 00ab 4889C7   		movq	%rax, %rdi
 306 00ae E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 306      00
 307              		.loc 1 67 0 discriminator 5
 308 00b3 4889C2   		movq	%rax, %rdx
 309 00b6 488B45C0 		movq	-64(%rbp), %rax
 310 00ba 4889C6   		movq	%rax, %rsi
 311 00bd 4889D7   		movq	%rdx, %rdi
 312 00c0 E8000000 		call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5
 312      00
 313              		.loc 1 67 0 discriminator 6
 314 00c5 488D3500 		leaq	.LC3(%rip), %rsi
 314      000000
 315 00cc 4889C7   		movq	%rax, %rdi
 316 00cf E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 316      00
  68:cpp_vector_double_practice.cpp **** #endif
  69:cpp_vector_double_practice.cpp ****     columns.resize(n);
 317              		.loc 1 69 0 is_stmt 1
 318 00d4 488B45D8 		movq	-40(%rbp), %rax
 319 00d8 8B55D4   		movl	-44(%rbp), %edx
 320 00db 4889D6   		movq	%rdx, %rsi
 321 00de 4889C7   		movq	%rax, %rdi
 322 00e1 E8000000 		call	_ZNSt6vectorIdSaIdEE6resizeEm
 322      00
 323              	.LBB7:
  70:cpp_vector_double_practice.cpp **** 
  71:cpp_vector_double_practice.cpp ****     // If initial values available, copy
  72:cpp_vector_double_practice.cpp ****     if (values){
 324              		.loc 1 72 0
 325 00e6 48837DC8 		cmpq	$0, -56(%rbp)
 325      00
 326 00eb 7456     		je	.L10
 327              	.LBB8:
 328              	.LBB9:
  73:cpp_vector_double_practice.cpp ****         for (uint32_t i = 0; columns.size() > i; ++i){
 329              		.loc 1 73 0
 330 00ed C745E800 		movl	$0, -24(%rbp)
 330      000000
 331              	.L12:
 332              		.loc 1 73 0 is_stmt 0 discriminator 3
 333 00f4 488B45D8 		movq	-40(%rbp), %rax
 334 00f8 4889C7   		movq	%rax, %rdi
 335 00fb E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 335      00
 336 0100 4889C2   		movq	%rax, %rdx
 337 0103 8B45E8   		movl	-24(%rbp), %eax
 338 0106 4839C2   		cmpq	%rax, %rdx
 339 0109 0F97C0   		seta	%al
 340 010c 84C0     		testb	%al, %al
 341 010e 7476     		je	.L13
  74:cpp_vector_double_practice.cpp ****             columns[i] = values[i];
 342              		.loc 1 74 0 is_stmt 1 discriminator 2
 343 0110 8B45E8   		movl	-24(%rbp), %eax
 344 0113 488D14C5 		leaq	0(,%rax,8), %rdx
 344      00000000 
 345 011b 488B45C8 		movq	-56(%rbp), %rax
 346 011f 488D1C02 		leaq	(%rdx,%rax), %rbx
 347 0123 8B55E8   		movl	-24(%rbp), %edx
 348 0126 488B45D8 		movq	-40(%rbp), %rax
 349 012a 4889D6   		movq	%rdx, %rsi
 350 012d 4889C7   		movq	%rax, %rdi
 351 0130 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 351      00
 352 0135 F20F1003 		movsd	(%rbx), %xmm0
 353 0139 F20F1100 		movsd	%xmm0, (%rax)
  73:cpp_vector_double_practice.cpp ****         for (uint32_t i = 0; columns.size() > i; ++i){
 354              		.loc 1 73 0 discriminator 2
 355 013d 8345E801 		addl	$1, -24(%rbp)
 356 0141 EBB1     		jmp	.L12
 357              	.L10:
 358              	.LBE9:
 359              	.LBE8:
 360              	.LBB10:
 361              	.LBB11:
  75:cpp_vector_double_practice.cpp ****         }
  76:cpp_vector_double_practice.cpp ****     }
  77:cpp_vector_double_practice.cpp ****     // If no initial values, set all values zero
  78:cpp_vector_double_practice.cpp ****     else{
  79:cpp_vector_double_practice.cpp ****         for (uint32_t i = 0; columns.size() > i; ++i){
 362              		.loc 1 79 0
 363 0143 C745EC00 		movl	$0, -20(%rbp)
 363      000000
 364              	.L14:
 365              		.loc 1 79 0 is_stmt 0 discriminator 3
 366 014a 488B45D8 		movq	-40(%rbp), %rax
 367 014e 4889C7   		movq	%rax, %rdi
 368 0151 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 368      00
 369 0156 4889C2   		movq	%rax, %rdx
 370 0159 8B45EC   		movl	-20(%rbp), %eax
 371 015c 4839C2   		cmpq	%rax, %rdx
 372 015f 0F97C0   		seta	%al
 373 0162 84C0     		testb	%al, %al
 374 0164 7420     		je	.L13
  80:cpp_vector_double_practice.cpp ****             columns[i] = 0.0;
 375              		.loc 1 80 0 is_stmt 1 discriminator 2
 376 0166 8B55EC   		movl	-20(%rbp), %edx
 377 0169 488B45D8 		movq	-40(%rbp), %rax
 378 016d 4889D6   		movq	%rdx, %rsi
 379 0170 4889C7   		movq	%rax, %rdi
 380 0173 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 380      00
 381 0178 660FEFC0 		pxor	%xmm0, %xmm0
 382 017c F20F1100 		movsd	%xmm0, (%rax)
  79:cpp_vector_double_practice.cpp ****             columns[i] = 0.0;
 383              		.loc 1 79 0 discriminator 2
 384 0180 8345EC01 		addl	$1, -20(%rbp)
 385 0184 EBC4     		jmp	.L14
 386              	.L13:
 387              	.LBE11:
 388              	.LBE10:
 389              	.LBE7:
  81:cpp_vector_double_practice.cpp ****         }
  82:cpp_vector_double_practice.cpp ****     }
  83:cpp_vector_double_practice.cpp **** 
  84:cpp_vector_double_practice.cpp ****     name = new_name;
 390              		.loc 1 84 0
 391 0186 488B45D8 		movq	-40(%rbp), %rax
 392 018a 488D5018 		leaq	24(%rax), %rdx
 393 018e 488B45C0 		movq	-64(%rbp), %rax
 394 0192 4889C6   		movq	%rax, %rsi
 395 0195 4889D7   		movq	%rdx, %rdi
 396 0198 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
 396      00
 397              	.LEHE4:
 398              	.LBE6:
 399              	.LBE5:
  85:cpp_vector_double_practice.cpp **** }
 400              		.loc 1 85 0
 401 019d EB2A     		jmp	.L17
 402              	.L16:
 403 019f 4889C3   		movq	%rax, %rbx
 404              	.LBB12:
  64:cpp_vector_double_practice.cpp **** #ifdef LOG
 405              		.loc 1 64 0
 406 01a2 488B45D8 		movq	-40(%rbp), %rax
 407 01a6 4883C018 		addq	$24, %rax
 408 01aa 4889C7   		movq	%rax, %rdi
 409 01ad E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 409      00
 410 01b2 488B45D8 		movq	-40(%rbp), %rax
 411 01b6 4889C7   		movq	%rax, %rdi
 412 01b9 E8000000 		call	_ZNSt6vectorIdSaIdEED1Ev
 412      00
 413 01be 4889D8   		movq	%rbx, %rax
 414 01c1 4889C7   		movq	%rax, %rdi
 415              	.LEHB5:
 416 01c4 E8000000 		call	_Unwind_Resume@PLT
 416      00
 417              	.LEHE5:
 418              	.L17:
 419              	.LBE12:
 420              		.loc 1 85 0
 421 01c9 4883C438 		addq	$56, %rsp
 422 01cd 5B       		popq	%rbx
 423 01ce 5D       		popq	%rbp
 424              		.cfi_def_cfa 7, 8
 425 01cf C3       		ret
 426              		.cfi_endproc
 427              	.LFE1848:
 428              		.section	.gcc_except_table,"a",@progbits
 429              	.LLSDA1848:
 430 0000 FF       		.byte	0xff
 431 0001 FF       		.byte	0xff
 432 0002 01       		.byte	0x1
 433 0003 0B       		.uleb128 .LLSDACSE1848-.LLSDACSB1848
 434              	.LLSDACSB1848:
 435 0004 40       		.uleb128 .LEHB4-.LFB1848
 436 0005 DD02     		.uleb128 .LEHE4-.LEHB4
 437 0007 9F03     		.uleb128 .L16-.LFB1848
 438 0009 00       		.uleb128 0
 439 000a C403     		.uleb128 .LEHB5-.LFB1848
 440 000c 05       		.uleb128 .LEHE5-.LEHB5
 441 000d 00       		.uleb128 0
 442 000e 00       		.uleb128 0
 443              	.LLSDACSE1848:
 444              		.text
 446              		.globl	_ZN9RowVectorC1EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 447              		.set	_ZN9RowVectorC1EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,_ZN9RowVectorC2EjPKd
 448              		.section	.rodata
 449              	.LC5:
 450 0020 3200     		.string	"2"
 451              		.text
 452              		.align 2
 453              		.globl	_ZN9RowVectorC2ERKS_
 455              	_ZN9RowVectorC2ERKS_:
 456              	.LFB1851:
  86:cpp_vector_double_practice.cpp **** 
  87:cpp_vector_double_practice.cpp **** 
  88:cpp_vector_double_practice.cpp **** RowVector::RowVector(const RowVector & other){
 457              		.loc 1 88 0
 458              		.cfi_startproc
 459              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 460              		.cfi_lsda 0x1b,.LLSDA1851
 461 01d0 55       		pushq	%rbp
 462              		.cfi_def_cfa_offset 16
 463              		.cfi_offset 6, -16
 464 01d1 4889E5   		movq	%rsp, %rbp
 465              		.cfi_def_cfa_register 6
 466 01d4 53       		pushq	%rbx
 467 01d5 4883EC28 		subq	$40, %rsp
 468              		.cfi_offset 3, -24
 469 01d9 48897DD8 		movq	%rdi, -40(%rbp)
 470 01dd 488975D0 		movq	%rsi, -48(%rbp)
 471              	.LBB13:
 472              		.loc 1 88 0
 473 01e1 488B45D8 		movq	-40(%rbp), %rax
 474 01e5 4889C7   		movq	%rax, %rdi
 475 01e8 E8000000 		call	_ZNSt6vectorIdSaIdEEC1Ev
 475      00
 476 01ed 488B45D8 		movq	-40(%rbp), %rax
 477 01f1 4883C018 		addq	$24, %rax
 478 01f5 4889C7   		movq	%rax, %rdi
 479 01f8 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
 479      00
 480              	.LBB14:
  89:cpp_vector_double_practice.cpp **** #ifdef LOG
  90:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "RowVector(" << & other << ")\n";
 481              		.loc 1 90 0
 482 01fd BE5B0000 		movl	$91, %esi
 482      00
 483 0202 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 483      000000
 484              	.LEHB6:
 485 0209 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 485      00
 486 020e 4889C2   		movq	%rax, %rdx
 487 0211 488B45D8 		movq	-40(%rbp), %rax
 488 0215 4889C6   		movq	%rax, %rsi
 489 0218 4889D7   		movq	%rdx, %rdi
 490 021b E8000000 		call	_ZNSolsEPKv@PLT
 490      00
 491              		.loc 1 90 0 is_stmt 0 discriminator 1
 492 0220 BE5D0000 		movl	$93, %esi
 492      00
 493 0225 4889C7   		movq	%rax, %rdi
 494 0228 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 494      00
 495              		.loc 1 90 0 discriminator 2
 496 022d 488D3500 		leaq	.LC1(%rip), %rsi
 496      000000
 497 0234 4889C7   		movq	%rax, %rdi
 498 0237 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 498      00
 499              		.loc 1 90 0 discriminator 3
 500 023c 4889C2   		movq	%rax, %rdx
 501 023f 488B45D0 		movq	-48(%rbp), %rax
 502 0243 4889C6   		movq	%rax, %rsi
 503 0246 4889D7   		movq	%rdx, %rdi
 504 0249 E8000000 		call	_ZNSolsEPKv@PLT
 504      00
 505              		.loc 1 90 0 discriminator 4
 506 024e 488D3500 		leaq	.LC3(%rip), %rsi
 506      000000
 507 0255 4889C7   		movq	%rax, %rdi
 508 0258 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 508      00
  91:cpp_vector_double_practice.cpp **** #endif
  92:cpp_vector_double_practice.cpp ****     // https://codereview.stackexchange.com/questions/149669/c-operator-overloading-for-matrix-oper
  93:cpp_vector_double_practice.cpp ****     // http://www.cplusplus.com/reference/vector/vector/resize/
  94:cpp_vector_double_practice.cpp ****     columns.resize(other.columns.size());
 509              		.loc 1 94 0 is_stmt 1
 510 025d 488B5DD8 		movq	-40(%rbp), %rbx
 511 0261 488B45D0 		movq	-48(%rbp), %rax
 512 0265 4889C7   		movq	%rax, %rdi
 513 0268 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 513      00
 514 026d 4889C6   		movq	%rax, %rsi
 515 0270 4889DF   		movq	%rbx, %rdi
 516 0273 E8000000 		call	_ZNSt6vectorIdSaIdEE6resizeEm
 516      00
 517              	.LBB15:
  95:cpp_vector_double_practice.cpp ****     for(uint32_t i=0; columns.size() > i; ++i){
 518              		.loc 1 95 0
 519 0278 C745EC00 		movl	$0, -20(%rbp)
 519      000000
 520              	.L20:
 521              		.loc 1 95 0 is_stmt 0 discriminator 3
 522 027f 488B45D8 		movq	-40(%rbp), %rax
 523 0283 4889C7   		movq	%rax, %rdi
 524 0286 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 524      00
 525 028b 4889C2   		movq	%rax, %rdx
 526 028e 8B45EC   		movl	-20(%rbp), %eax
 527 0291 4839C2   		cmpq	%rax, %rdx
 528 0294 0F97C0   		seta	%al
 529 0297 84C0     		testb	%al, %al
 530 0299 7435     		je	.L19
  96:cpp_vector_double_practice.cpp ****         columns[i] = other.columns[i];
 531              		.loc 1 96 0 is_stmt 1 discriminator 2
 532 029b 8B55EC   		movl	-20(%rbp), %edx
 533 029e 488B45D0 		movq	-48(%rbp), %rax
 534 02a2 4889D6   		movq	%rdx, %rsi
 535 02a5 4889C7   		movq	%rax, %rdi
 536 02a8 E8000000 		call	_ZNKSt6vectorIdSaIdEEixEm
 536      00
 537 02ad 4889C3   		movq	%rax, %rbx
 538 02b0 8B55EC   		movl	-20(%rbp), %edx
 539 02b3 488B45D8 		movq	-40(%rbp), %rax
 540 02b7 4889D6   		movq	%rdx, %rsi
 541 02ba 4889C7   		movq	%rax, %rdi
 542 02bd E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 542      00
 543 02c2 F20F1003 		movsd	(%rbx), %xmm0
 544 02c6 F20F1100 		movsd	%xmm0, (%rax)
  95:cpp_vector_double_practice.cpp ****     for(uint32_t i=0; columns.size() > i; ++i){
 545              		.loc 1 95 0 discriminator 2
 546 02ca 8345EC01 		addl	$1, -20(%rbp)
 547 02ce EBAF     		jmp	.L20
 548              	.L19:
 549              	.LBE15:
  97:cpp_vector_double_practice.cpp ****     }
  98:cpp_vector_double_practice.cpp **** 
  99:cpp_vector_double_practice.cpp ****     // Copy name of the other one
 100:cpp_vector_double_practice.cpp ****     name = other.name;
 550              		.loc 1 100 0
 551 02d0 488B45D0 		movq	-48(%rbp), %rax
 552 02d4 488D5018 		leaq	24(%rax), %rdx
 553 02d8 488B45D8 		movq	-40(%rbp), %rax
 554 02dc 4883C018 		addq	$24, %rax
 555 02e0 4889D6   		movq	%rdx, %rsi
 556 02e3 4889C7   		movq	%rax, %rdi
 557 02e6 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
 557      00
 101:cpp_vector_double_practice.cpp ****     // Then append
 102:cpp_vector_double_practice.cpp ****     name.append("2");
 558              		.loc 1 102 0
 559 02eb 488B45D8 		movq	-40(%rbp), %rax
 560 02ef 4883C018 		addq	$24, %rax
 561 02f3 488D3500 		leaq	.LC5(%rip), %rsi
 561      000000
 562 02fa 4889C7   		movq	%rax, %rdi
 563 02fd E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@PLT
 563      00
 564              	.LEHE6:
 565              	.LBE14:
 566              	.LBE13:
 103:cpp_vector_double_practice.cpp **** }
 567              		.loc 1 103 0
 568 0302 EB2A     		jmp	.L23
 569              	.L22:
 570 0304 4889C3   		movq	%rax, %rbx
 571              	.LBB16:
  88:cpp_vector_double_practice.cpp **** #ifdef LOG
 572              		.loc 1 88 0
 573 0307 488B45D8 		movq	-40(%rbp), %rax
 574 030b 4883C018 		addq	$24, %rax
 575 030f 4889C7   		movq	%rax, %rdi
 576 0312 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 576      00
 577 0317 488B45D8 		movq	-40(%rbp), %rax
 578 031b 4889C7   		movq	%rax, %rdi
 579 031e E8000000 		call	_ZNSt6vectorIdSaIdEED1Ev
 579      00
 580 0323 4889D8   		movq	%rbx, %rax
 581 0326 4889C7   		movq	%rax, %rdi
 582              	.LEHB7:
 583 0329 E8000000 		call	_Unwind_Resume@PLT
 583      00
 584              	.LEHE7:
 585              	.L23:
 586              	.LBE16:
 587              		.loc 1 103 0
 588 032e 4883C428 		addq	$40, %rsp
 589 0332 5B       		popq	%rbx
 590 0333 5D       		popq	%rbp
 591              		.cfi_def_cfa 7, 8
 592 0334 C3       		ret
 593              		.cfi_endproc
 594              	.LFE1851:
 595              		.section	.gcc_except_table
 596              	.LLSDA1851:
 597 000f FF       		.byte	0xff
 598 0010 FF       		.byte	0xff
 599 0011 01       		.byte	0x1
 600 0012 0B       		.uleb128 .LLSDACSE1851-.LLSDACSB1851
 601              	.LLSDACSB1851:
 602 0013 39       		.uleb128 .LEHB6-.LFB1851
 603 0014 F901     		.uleb128 .LEHE6-.LEHB6
 604 0016 B402     		.uleb128 .L22-.LFB1851
 605 0018 00       		.uleb128 0
 606 0019 D902     		.uleb128 .LEHB7-.LFB1851
 607 001b 05       		.uleb128 .LEHE7-.LEHB7
 608 001c 00       		.uleb128 0
 609 001d 00       		.uleb128 0
 610              	.LLSDACSE1851:
 611              		.text
 613              		.globl	_ZN9RowVectorC1ERKS_
 614              		.set	_ZN9RowVectorC1ERKS_,_ZN9RowVectorC2ERKS_
 615              		.section	.rodata
 616              	.LC6:
 617 0022 646F7562 		.string	"double & operator [] ("
 617      6C652026 
 617      206F7065 
 617      7261746F 
 617      72205B5D 
 618              		.text
 619 0335 90       		.align 2
 620              		.globl	_ZN9RowVectorixEj
 622              	_ZN9RowVectorixEj:
 623              	.LFB1853:
 104:cpp_vector_double_practice.cpp **** 
 105:cpp_vector_double_practice.cpp **** 
 106:cpp_vector_double_practice.cpp **** double & RowVector::operator [] (const uint32_t i){
 624              		.loc 1 106 0
 625              		.cfi_startproc
 626 0336 55       		pushq	%rbp
 627              		.cfi_def_cfa_offset 16
 628              		.cfi_offset 6, -16
 629 0337 4889E5   		movq	%rsp, %rbp
 630              		.cfi_def_cfa_register 6
 631 033a 4883EC10 		subq	$16, %rsp
 632 033e 48897DF8 		movq	%rdi, -8(%rbp)
 633 0342 8975F4   		movl	%esi, -12(%rbp)
 107:cpp_vector_double_practice.cpp **** #ifdef LOG
 108:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "double & operator [] (" << i << ")\n";
 634              		.loc 1 108 0
 635 0345 BE5B0000 		movl	$91, %esi
 635      00
 636 034a 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 636      000000
 637 0351 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 637      00
 638 0356 4889C2   		movq	%rax, %rdx
 639 0359 488B45F8 		movq	-8(%rbp), %rax
 640 035d 4889C6   		movq	%rax, %rsi
 641 0360 4889D7   		movq	%rdx, %rdi
 642 0363 E8000000 		call	_ZNSolsEPKv@PLT
 642      00
 643 0368 BE5D0000 		movl	$93, %esi
 643      00
 644 036d 4889C7   		movq	%rax, %rdi
 645 0370 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 645      00
 646 0375 488D3500 		leaq	.LC6(%rip), %rsi
 646      000000
 647 037c 4889C7   		movq	%rax, %rdi
 648 037f E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 648      00
 649 0384 4889C2   		movq	%rax, %rdx
 650 0387 8B45F4   		movl	-12(%rbp), %eax
 651 038a 89C6     		movl	%eax, %esi
 652 038c 4889D7   		movq	%rdx, %rdi
 653 038f E8000000 		call	_ZNSolsEj@PLT
 653      00
 654 0394 488D3500 		leaq	.LC3(%rip), %rsi
 654      000000
 655 039b 4889C7   		movq	%rax, %rdi
 656 039e E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 656      00
 109:cpp_vector_double_practice.cpp **** #endif
 110:cpp_vector_double_practice.cpp ****     // Return reference; otherwise, unable to assign
 111:cpp_vector_double_practice.cpp ****     return columns[i];
 657              		.loc 1 111 0
 658 03a3 8B55F4   		movl	-12(%rbp), %edx
 659 03a6 488B45F8 		movq	-8(%rbp), %rax
 660 03aa 4889D6   		movq	%rdx, %rsi
 661 03ad 4889C7   		movq	%rax, %rdi
 662 03b0 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 662      00
 112:cpp_vector_double_practice.cpp **** }
 663              		.loc 1 112 0
 664 03b5 C9       		leave
 665              		.cfi_def_cfa 7, 8
 666 03b6 C3       		ret
 667              		.cfi_endproc
 668              	.LFE1853:
 670              		.section	.rodata
 671              	.LC7:
 672 0039 766F6964 		.string	"void show()\n"
 672      2073686F 
 672      7728290A 
 672      00
 673              		.text
 674 03b7 90       		.align 2
 675              		.globl	_ZN9RowVector8get_nameB5cxx11Ev
 677              	_ZN9RowVector8get_nameB5cxx11Ev:
 678              	.LFB1854:
 113:cpp_vector_double_practice.cpp **** 
 114:cpp_vector_double_practice.cpp **** 
 115:cpp_vector_double_practice.cpp **** const std::string RowVector::get_name(){
 679              		.loc 1 115 0
 680              		.cfi_startproc
 681 03b8 55       		pushq	%rbp
 682              		.cfi_def_cfa_offset 16
 683              		.cfi_offset 6, -16
 684 03b9 4889E5   		movq	%rsp, %rbp
 685              		.cfi_def_cfa_register 6
 686 03bc 4883EC10 		subq	$16, %rsp
 687 03c0 48897DF8 		movq	%rdi, -8(%rbp)
 688 03c4 488975F0 		movq	%rsi, -16(%rbp)
 116:cpp_vector_double_practice.cpp **** #ifdef LOG
 117:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "void show()\n";
 689              		.loc 1 117 0
 690 03c8 BE5B0000 		movl	$91, %esi
 690      00
 691 03cd 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 691      000000
 692 03d4 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 692      00
 693 03d9 4889C2   		movq	%rax, %rdx
 694 03dc 488B45F0 		movq	-16(%rbp), %rax
 695 03e0 4889C6   		movq	%rax, %rsi
 696 03e3 4889D7   		movq	%rdx, %rdi
 697 03e6 E8000000 		call	_ZNSolsEPKv@PLT
 697      00
 698 03eb BE5D0000 		movl	$93, %esi
 698      00
 699 03f0 4889C7   		movq	%rax, %rdi
 700 03f3 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 700      00
 701 03f8 488D3500 		leaq	.LC7(%rip), %rsi
 701      000000
 702 03ff 4889C7   		movq	%rax, %rdi
 703 0402 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 703      00
 118:cpp_vector_double_practice.cpp **** #endif
 119:cpp_vector_double_practice.cpp ****     // Return constant; to prevent change
 120:cpp_vector_double_practice.cpp ****     return name;
 704              		.loc 1 120 0
 705 0407 488B45F0 		movq	-16(%rbp), %rax
 706 040b 488D5018 		leaq	24(%rax), %rdx
 707 040f 488B45F8 		movq	-8(%rbp), %rax
 708 0413 4889D6   		movq	%rdx, %rsi
 709 0416 4889C7   		movq	%rax, %rdi
 710 0419 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
 710      00
 121:cpp_vector_double_practice.cpp **** }
 711              		.loc 1 121 0
 712 041e 488B45F8 		movq	-8(%rbp), %rax
 713 0422 C9       		leave
 714              		.cfi_def_cfa 7, 8
 715 0423 C3       		ret
 716              		.cfi_endproc
 717              	.LFE1854:
 719              		.section	.rodata
 720              	.LC8:
 721 0046 526F7756 		.string	"RowVector operator + ("
 721      6563746F 
 721      72206F70 
 721      65726174 
 721      6F72202B 
 722 005d 000000   		.align 8
 723              	.LC9:
 724 0060 6370705F 		.string	"cpp_vector_double_practice.cpp"
 724      76656374 
 724      6F725F64 
 724      6F75626C 
 724      655F7072 
 725 007f 00       		.align 8
 726              	.LC10:
 727 0080 636F6C75 		.string	"columns.size() == other.columns.size()"
 727      6D6E732E 
 727      73697A65 
 727      2829203D 
 727      3D206F74 
 728              		.text
 729              		.align 2
 730              		.globl	_ZN9RowVectorplERKS_
 732              	_ZN9RowVectorplERKS_:
 733              	.LFB1855:
 122:cpp_vector_double_practice.cpp **** 
 123:cpp_vector_double_practice.cpp **** 
 124:cpp_vector_double_practice.cpp **** RowVector RowVector::operator + (const RowVector & other){
 734              		.loc 1 124 0
 735              		.cfi_startproc
 736              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 737              		.cfi_lsda 0x1b,.LLSDA1855
 738 0424 55       		pushq	%rbp
 739              		.cfi_def_cfa_offset 16
 740              		.cfi_offset 6, -16
 741 0425 4889E5   		movq	%rsp, %rbp
 742              		.cfi_def_cfa_register 6
 743 0428 53       		pushq	%rbx
 744 0429 4883EC38 		subq	$56, %rsp
 745              		.cfi_offset 3, -24
 746 042d 48897DD8 		movq	%rdi, -40(%rbp)
 747 0431 488975D0 		movq	%rsi, -48(%rbp)
 748 0435 488955C8 		movq	%rdx, -56(%rbp)
 749              		.loc 1 124 0
 750 0439 64488B04 		movq	%fs:40, %rax
 750      25280000 
 750      00
 751 0442 488945E8 		movq	%rax, -24(%rbp)
 752 0446 31C0     		xorl	%eax, %eax
 125:cpp_vector_double_practice.cpp **** #ifdef LOG
 126:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "RowVector operator + (" << & other << ")\n";
 753              		.loc 1 126 0
 754 0448 BE5B0000 		movl	$91, %esi
 754      00
 755 044d 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 755      000000
 756              	.LEHB8:
 757 0454 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 757      00
 758 0459 4889C2   		movq	%rax, %rdx
 759 045c 488B45D0 		movq	-48(%rbp), %rax
 760 0460 4889C6   		movq	%rax, %rsi
 761 0463 4889D7   		movq	%rdx, %rdi
 762 0466 E8000000 		call	_ZNSolsEPKv@PLT
 762      00
 763 046b BE5D0000 		movl	$93, %esi
 763      00
 764 0470 4889C7   		movq	%rax, %rdi
 765 0473 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 765      00
 766 0478 488D3500 		leaq	.LC8(%rip), %rsi
 766      000000
 767 047f 4889C7   		movq	%rax, %rdi
 768 0482 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 768      00
 769 0487 4889C2   		movq	%rax, %rdx
 770 048a 488B45C8 		movq	-56(%rbp), %rax
 771 048e 4889C6   		movq	%rax, %rsi
 772 0491 4889D7   		movq	%rdx, %rdi
 773 0494 E8000000 		call	_ZNSolsEPKv@PLT
 773      00
 774 0499 488D3500 		leaq	.LC3(%rip), %rsi
 774      000000
 775 04a0 4889C7   		movq	%rax, %rdi
 776 04a3 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 776      00
 127:cpp_vector_double_practice.cpp **** #endif
 128:cpp_vector_double_practice.cpp ****     // Check size
 129:cpp_vector_double_practice.cpp ****     assert(columns.size() == other.columns.size());
 777              		.loc 1 129 0
 778 04a8 488B45D0 		movq	-48(%rbp), %rax
 779 04ac 4889C7   		movq	%rax, %rdi
 780 04af E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 780      00
 781 04b4 4889C3   		movq	%rax, %rbx
 782 04b7 488B45C8 		movq	-56(%rbp), %rax
 783 04bb 4889C7   		movq	%rax, %rdi
 784 04be E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 784      00
 785 04c3 4839C3   		cmpq	%rax, %rbx
 786 04c6 741F     		je	.L29
 787              		.loc 1 129 0 is_stmt 0 discriminator 1
 788 04c8 488D0D00 		leaq	_ZZN9RowVectorplERKS_E19__PRETTY_FUNCTION__(%rip), %rcx
 788      000000
 789 04cf BA810000 		movl	$129, %edx
 789      00
 790 04d4 488D3500 		leaq	.LC9(%rip), %rsi
 790      000000
 791 04db 488D3D00 		leaq	.LC10(%rip), %rdi
 791      000000
 792 04e2 E8000000 		call	__assert_fail@PLT
 792      00
 793              	.L29:
 130:cpp_vector_double_practice.cpp **** 
 131:cpp_vector_double_practice.cpp ****     // Make a new vector to return
 132:cpp_vector_double_practice.cpp ****     RowVector temp(other);
 794              		.loc 1 132 0 is_stmt 1
 795 04e7 488B55C8 		movq	-56(%rbp), %rdx
 796 04eb 488B45D8 		movq	-40(%rbp), %rax
 797 04ef 4889D6   		movq	%rdx, %rsi
 798 04f2 4889C7   		movq	%rax, %rdi
 799 04f5 E8000000 		call	_ZN9RowVectorC1ERKS_
 799      00
 800              	.LEHE8:
 801              	.LBB17:
 133:cpp_vector_double_practice.cpp **** 
 134:cpp_vector_double_practice.cpp ****     // Element loop
 135:cpp_vector_double_practice.cpp ****     for (uint32_t i=0; columns.size() > i; ++i){
 802              		.loc 1 135 0
 803 04fa C745E400 		movl	$0, -28(%rbp)
 803      000000
 804              	.L31:
 805              		.loc 1 135 0 is_stmt 0 discriminator 2
 806 0501 488B45D0 		movq	-48(%rbp), %rax
 807 0505 4889C7   		movq	%rax, %rdi
 808 0508 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 808      00
 809 050d 4889C2   		movq	%rax, %rdx
 810 0510 8B45E4   		movl	-28(%rbp), %eax
 811 0513 4839C2   		cmpq	%rax, %rdx
 812 0516 0F97C0   		seta	%al
 813 0519 84C0     		testb	%al, %al
 814 051b 7459     		je	.L36
 136:cpp_vector_double_practice.cpp ****         temp[i] += columns[i];
 815              		.loc 1 136 0 is_stmt 1
 816 051d 8B55E4   		movl	-28(%rbp), %edx
 817 0520 488B45D0 		movq	-48(%rbp), %rax
 818 0524 4889D6   		movq	%rdx, %rsi
 819 0527 4889C7   		movq	%rax, %rdi
 820 052a E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 820      00
 821 052f F20F1008 		movsd	(%rax), %xmm1
 822 0533 F20F114D 		movsd	%xmm1, -64(%rbp)
 822      C0
 823 0538 8B55E4   		movl	-28(%rbp), %edx
 824 053b 488B45D8 		movq	-40(%rbp), %rax
 825 053f 89D6     		movl	%edx, %esi
 826 0541 4889C7   		movq	%rax, %rdi
 827              	.LEHB9:
 828 0544 E8000000 		call	_ZN9RowVectorixEj
 828      00
 829              	.LEHE9:
 830              		.loc 1 136 0 is_stmt 0 discriminator 1
 831 0549 F20F1000 		movsd	(%rax), %xmm0
 832 054d F20F5845 		addsd	-64(%rbp), %xmm0
 832      C0
 833 0552 F20F1100 		movsd	%xmm0, (%rax)
 135:cpp_vector_double_practice.cpp ****         temp[i] += columns[i];
 834              		.loc 1 135 0 is_stmt 1 discriminator 1
 835 0556 8345E401 		addl	$1, -28(%rbp)
 836 055a EBA5     		jmp	.L31
 837              	.L35:
 838 055c 4889C3   		movq	%rax, %rbx
 839              	.LBE17:
 840 055f 488B45D8 		movq	-40(%rbp), %rax
 841 0563 4889C7   		movq	%rax, %rdi
 842 0566 E8000000 		call	_ZN9RowVectorD1Ev
 842      00
 843 056b 4889D8   		movq	%rbx, %rax
 844 056e 4889C7   		movq	%rax, %rdi
 845              	.LEHB10:
 846 0571 E8000000 		call	_Unwind_Resume@PLT
 846      00
 847              	.LEHE10:
 848              	.L36:
 137:cpp_vector_double_practice.cpp ****     }
 138:cpp_vector_double_practice.cpp **** 
 139:cpp_vector_double_practice.cpp ****     // Returning a temporary image
 140:cpp_vector_double_practice.cpp ****     return temp;
 849              		.loc 1 140 0
 850 0576 90       		nop
 141:cpp_vector_double_practice.cpp **** }
 851              		.loc 1 141 0
 852 0577 488B45D8 		movq	-40(%rbp), %rax
 853 057b 488B4DE8 		movq	-24(%rbp), %rcx
 854 057f 6448330C 		xorq	%fs:40, %rcx
 854      25280000 
 854      00
 855 0588 7405     		je	.L34
 856 058a E8000000 		call	__stack_chk_fail@PLT
 856      00
 857              	.L34:
 858 058f 4883C438 		addq	$56, %rsp
 859 0593 5B       		popq	%rbx
 860 0594 5D       		popq	%rbp
 861              		.cfi_def_cfa 7, 8
 862 0595 C3       		ret
 863              		.cfi_endproc
 864              	.LFE1855:
 865              		.section	.gcc_except_table
 866              	.LLSDA1855:
 867 001e FF       		.byte	0xff
 868 001f FF       		.byte	0xff
 869 0020 01       		.byte	0x1
 870 0021 10       		.uleb128 .LLSDACSE1855-.LLSDACSB1855
 871              	.LLSDACSB1855:
 872 0022 30       		.uleb128 .LEHB8-.LFB1855
 873 0023 A601     		.uleb128 .LEHE8-.LEHB8
 874 0025 00       		.uleb128 0
 875 0026 00       		.uleb128 0
 876 0027 A002     		.uleb128 .LEHB9-.LFB1855
 877 0029 05       		.uleb128 .LEHE9-.LEHB9
 878 002a B802     		.uleb128 .L35-.LFB1855
 879 002c 00       		.uleb128 0
 880 002d CD02     		.uleb128 .LEHB10-.LFB1855
 881 002f 05       		.uleb128 .LEHE10-.LEHB10
 882 0030 00       		.uleb128 0
 883 0031 00       		.uleb128 0
 884              	.LLSDACSE1855:
 885              		.text
 887              		.section	.rodata
 888              	.LC11:
 889 00a7 526F7756 		.string	"RowVector operator * ("
 889      6563746F 
 889      72206F70 
 889      65726174 
 889      6F72202A 
 890              		.text
 891              		.align 2
 892              		.globl	_ZN9RowVectormlEd
 894              	_ZN9RowVectormlEd:
 895              	.LFB1856:
 142:cpp_vector_double_practice.cpp **** 
 143:cpp_vector_double_practice.cpp **** 
 144:cpp_vector_double_practice.cpp **** RowVector RowVector::operator * (const double a){
 896              		.loc 1 144 0
 897              		.cfi_startproc
 898 0596 55       		pushq	%rbp
 899              		.cfi_def_cfa_offset 16
 900              		.cfi_offset 6, -16
 901 0597 4889E5   		movq	%rsp, %rbp
 902              		.cfi_def_cfa_register 6
 903 059a 4883EC50 		subq	$80, %rsp
 904 059e 48897DC8 		movq	%rdi, -56(%rbp)
 905 05a2 488975C0 		movq	%rsi, -64(%rbp)
 906 05a6 F20F1145 		movsd	%xmm0, -72(%rbp)
 906      B8
 907              		.loc 1 144 0
 908 05ab 64488B04 		movq	%fs:40, %rax
 908      25280000 
 908      00
 909 05b4 488945F8 		movq	%rax, -8(%rbp)
 910 05b8 31C0     		xorl	%eax, %eax
 145:cpp_vector_double_practice.cpp **** #ifdef LOG
 146:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "RowVector operator * (" << a << ")\n";
 911              		.loc 1 146 0
 912 05ba BE5B0000 		movl	$91, %esi
 912      00
 913 05bf 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 913      000000
 914 05c6 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 914      00
 915 05cb 4889C2   		movq	%rax, %rdx
 916 05ce 488B45C0 		movq	-64(%rbp), %rax
 917 05d2 4889C6   		movq	%rax, %rsi
 918 05d5 4889D7   		movq	%rdx, %rdi
 919 05d8 E8000000 		call	_ZNSolsEPKv@PLT
 919      00
 920 05dd BE5D0000 		movl	$93, %esi
 920      00
 921 05e2 4889C7   		movq	%rax, %rdi
 922 05e5 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 922      00
 923 05ea 488D3500 		leaq	.LC11(%rip), %rsi
 923      000000
 924 05f1 4889C7   		movq	%rax, %rdi
 925 05f4 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 925      00
 926 05f9 4889C2   		movq	%rax, %rdx
 927 05fc 488B45B8 		movq	-72(%rbp), %rax
 928 0600 488945B0 		movq	%rax, -80(%rbp)
 929 0604 F20F1045 		movsd	-80(%rbp), %xmm0
 929      B0
 930 0609 4889D7   		movq	%rdx, %rdi
 931 060c E8000000 		call	_ZNSolsEd@PLT
 931      00
 932 0611 488D3500 		leaq	.LC3(%rip), %rsi
 932      000000
 933 0618 4889C7   		movq	%rax, %rdi
 934 061b E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 934      00
 147:cpp_vector_double_practice.cpp **** #endif
 148:cpp_vector_double_practice.cpp **** 
 149:cpp_vector_double_practice.cpp ****     // Make a new vector to return
 150:cpp_vector_double_practice.cpp ****     RowVector temp(*this);
 935              		.loc 1 150 0
 936 0620 488B55C0 		movq	-64(%rbp), %rdx
 937 0624 488B45C8 		movq	-56(%rbp), %rax
 938 0628 4889D6   		movq	%rdx, %rsi
 939 062b 4889C7   		movq	%rax, %rdi
 940 062e E8000000 		call	_ZN9RowVectorC1ERKS_
 940      00
 941              	.LBB18:
 151:cpp_vector_double_practice.cpp **** 
 152:cpp_vector_double_practice.cpp ****     // Element loop in `for each` style
 153:cpp_vector_double_practice.cpp ****     // c++ 11 or later
 154:cpp_vector_double_practice.cpp ****     for (auto & element : temp.columns){
 942              		.loc 1 154 0
 943 0633 488B45C8 		movq	-56(%rbp), %rax
 944 0637 488945E8 		movq	%rax, -24(%rbp)
 945 063b 488B45E8 		movq	-24(%rbp), %rax
 946 063f 4889C7   		movq	%rax, %rdi
 947 0642 E8000000 		call	_ZNSt6vectorIdSaIdEE5beginEv
 947      00
 948 0647 488945D8 		movq	%rax, -40(%rbp)
 949 064b 488B45E8 		movq	-24(%rbp), %rax
 950 064f 4889C7   		movq	%rax, %rdi
 951 0652 E8000000 		call	_ZNSt6vectorIdSaIdEE3endEv
 951      00
 952 0657 488945E0 		movq	%rax, -32(%rbp)
 953              	.L39:
 954              		.loc 1 154 0 is_stmt 0 discriminator 3
 955 065b 488D55E0 		leaq	-32(%rbp), %rdx
 956 065f 488D45D8 		leaq	-40(%rbp), %rax
 957 0663 4889D6   		movq	%rdx, %rsi
 958 0666 4889C7   		movq	%rax, %rdi
 959 0669 E8000000 		call	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
 959      00
 960 066e 84C0     		testb	%al, %al
 961 0670 7433     		je	.L42
 962              		.loc 1 154 0 discriminator 2
 963 0672 488D45D8 		leaq	-40(%rbp), %rax
 964 0676 4889C7   		movq	%rax, %rdi
 965 0679 E8000000 		call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
 965      00
 966 067e 488945F0 		movq	%rax, -16(%rbp)
 155:cpp_vector_double_practice.cpp ****         element *= a;
 967              		.loc 1 155 0 is_stmt 1 discriminator 2
 968 0682 488B45F0 		movq	-16(%rbp), %rax
 969 0686 F20F1000 		movsd	(%rax), %xmm0
 970 068a F20F5945 		mulsd	-72(%rbp), %xmm0
 970      B8
 971 068f 488B45F0 		movq	-16(%rbp), %rax
 972 0693 F20F1100 		movsd	%xmm0, (%rax)
 154:cpp_vector_double_practice.cpp ****         element *= a;
 973              		.loc 1 154 0 discriminator 2
 974 0697 488D45D8 		leaq	-40(%rbp), %rax
 975 069b 4889C7   		movq	%rax, %rdi
 976 069e E8000000 		call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
 976      00
 977 06a3 EBB6     		jmp	.L39
 978              	.L42:
 979              	.LBE18:
 156:cpp_vector_double_practice.cpp ****     }
 157:cpp_vector_double_practice.cpp **** 
 158:cpp_vector_double_practice.cpp ****     // Returning a temporary image
 159:cpp_vector_double_practice.cpp ****     return temp;
 980              		.loc 1 159 0
 981 06a5 90       		nop
 160:cpp_vector_double_practice.cpp **** }
 982              		.loc 1 160 0
 983 06a6 488B45C8 		movq	-56(%rbp), %rax
 984 06aa 488B4DF8 		movq	-8(%rbp), %rcx
 985 06ae 6448330C 		xorq	%fs:40, %rcx
 985      25280000 
 985      00
 986 06b7 7405     		je	.L41
 987 06b9 E8000000 		call	__stack_chk_fail@PLT
 987      00
 988              	.L41:
 989 06be C9       		leave
 990              		.cfi_def_cfa 7, 8
 991 06bf C3       		ret
 992              		.cfi_endproc
 993              	.LFE1856:
 995              		.align 2
 996              		.globl	_ZN9RowVectormlERKS_
 998              	_ZN9RowVectormlERKS_:
 999              	.LFB1857:
 161:cpp_vector_double_practice.cpp **** 
 162:cpp_vector_double_practice.cpp **** 
 163:cpp_vector_double_practice.cpp **** const double RowVector::operator * (const RowVector & other){
 1000              		.loc 1 163 0
 1001              		.cfi_startproc
 1002 06c0 55       		pushq	%rbp
 1003              		.cfi_def_cfa_offset 16
 1004              		.cfi_offset 6, -16
 1005 06c1 4889E5   		movq	%rsp, %rbp
 1006              		.cfi_def_cfa_register 6
 1007 06c4 53       		pushq	%rbx
 1008 06c5 4883EC38 		subq	$56, %rsp
 1009              		.cfi_offset 3, -24
 1010 06c9 48897DD8 		movq	%rdi, -40(%rbp)
 1011 06cd 488975D0 		movq	%rsi, -48(%rbp)
 164:cpp_vector_double_practice.cpp **** #ifdef LOG
 165:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "RowVector operator * (" << & other << ")\n";
 1012              		.loc 1 165 0
 1013 06d1 BE5B0000 		movl	$91, %esi
 1013      00
 1014 06d6 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1014      000000
 1015 06dd E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1015      00
 1016 06e2 4889C2   		movq	%rax, %rdx
 1017 06e5 488B45D8 		movq	-40(%rbp), %rax
 1018 06e9 4889C6   		movq	%rax, %rsi
 1019 06ec 4889D7   		movq	%rdx, %rdi
 1020 06ef E8000000 		call	_ZNSolsEPKv@PLT
 1020      00
 1021 06f4 BE5D0000 		movl	$93, %esi
 1021      00
 1022 06f9 4889C7   		movq	%rax, %rdi
 1023 06fc E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1023      00
 1024 0701 488D3500 		leaq	.LC11(%rip), %rsi
 1024      000000
 1025 0708 4889C7   		movq	%rax, %rdi
 1026 070b E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1026      00
 1027 0710 4889C2   		movq	%rax, %rdx
 1028 0713 488B45D0 		movq	-48(%rbp), %rax
 1029 0717 4889C6   		movq	%rax, %rsi
 1030 071a 4889D7   		movq	%rdx, %rdi
 1031 071d E8000000 		call	_ZNSolsEPKv@PLT
 1031      00
 1032 0722 488D3500 		leaq	.LC3(%rip), %rsi
 1032      000000
 1033 0729 4889C7   		movq	%rax, %rdi
 1034 072c E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1034      00
 166:cpp_vector_double_practice.cpp **** #endif
 167:cpp_vector_double_practice.cpp **** 
 168:cpp_vector_double_practice.cpp ****     // Check size
 169:cpp_vector_double_practice.cpp ****     assert(columns.size() == other.columns.size());
 1035              		.loc 1 169 0
 1036 0731 488B45D8 		movq	-40(%rbp), %rax
 1037 0735 4889C7   		movq	%rax, %rdi
 1038 0738 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1038      00
 1039 073d 4889C3   		movq	%rax, %rbx
 1040 0740 488B45D0 		movq	-48(%rbp), %rax
 1041 0744 4889C7   		movq	%rax, %rdi
 1042 0747 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1042      00
 1043 074c 4839C3   		cmpq	%rax, %rbx
 1044 074f 741F     		je	.L44
 1045              		.loc 1 169 0 is_stmt 0 discriminator 1
 1046 0751 488D0D00 		leaq	_ZZN9RowVectormlERKS_E19__PRETTY_FUNCTION__(%rip), %rcx
 1046      000000
 1047 0758 BAA90000 		movl	$169, %edx
 1047      00
 1048 075d 488D3500 		leaq	.LC9(%rip), %rsi
 1048      000000
 1049 0764 488D3D00 		leaq	.LC10(%rip), %rdi
 1049      000000
 1050 076b E8000000 		call	__assert_fail@PLT
 1050      00
 1051              	.L44:
 170:cpp_vector_double_practice.cpp **** 
 171:cpp_vector_double_practice.cpp ****     double dot_product = 0.0;
 1052              		.loc 1 171 0 is_stmt 1
 1053 0770 660FEFC0 		pxor	%xmm0, %xmm0
 1054 0774 F20F1145 		movsd	%xmm0, -24(%rbp)
 1054      E8
 1055              	.LBB19:
 172:cpp_vector_double_practice.cpp **** 
 173:cpp_vector_double_practice.cpp ****     // Element loop
 174:cpp_vector_double_practice.cpp ****     for (uint32_t i = 0; columns.size() > i; ++i){
 1056              		.loc 1 174 0
 1057 0779 C745E400 		movl	$0, -28(%rbp)
 1057      000000
 1058              	.L46:
 1059              		.loc 1 174 0 is_stmt 0 discriminator 3
 1060 0780 488B45D8 		movq	-40(%rbp), %rax
 1061 0784 4889C7   		movq	%rax, %rdi
 1062 0787 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1062      00
 1063 078c 4889C2   		movq	%rax, %rdx
 1064 078f 8B45E4   		movl	-28(%rbp), %eax
 1065 0792 4839C2   		cmpq	%rax, %rdx
 1066 0795 0F97C0   		seta	%al
 1067 0798 84C0     		testb	%al, %al
 1068 079a 744A     		je	.L45
 175:cpp_vector_double_practice.cpp ****         dot_product += columns[i] * other.columns[i];
 1069              		.loc 1 175 0 is_stmt 1 discriminator 2
 1070 079c 8B55E4   		movl	-28(%rbp), %edx
 1071 079f 488B45D8 		movq	-40(%rbp), %rax
 1072 07a3 4889D6   		movq	%rdx, %rsi
 1073 07a6 4889C7   		movq	%rax, %rdi
 1074 07a9 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 1074      00
 1075 07ae F20F1010 		movsd	(%rax), %xmm2
 1076 07b2 F20F1155 		movsd	%xmm2, -56(%rbp)
 1076      C8
 1077 07b7 8B55E4   		movl	-28(%rbp), %edx
 1078 07ba 488B45D0 		movq	-48(%rbp), %rax
 1079 07be 4889D6   		movq	%rdx, %rsi
 1080 07c1 4889C7   		movq	%rax, %rdi
 1081 07c4 E8000000 		call	_ZNKSt6vectorIdSaIdEEixEm
 1081      00
 1082 07c9 F20F1000 		movsd	(%rax), %xmm0
 1083 07cd F20F5945 		mulsd	-56(%rbp), %xmm0
 1083      C8
 1084 07d2 F20F104D 		movsd	-24(%rbp), %xmm1
 1084      E8
 1085 07d7 F20F58C1 		addsd	%xmm1, %xmm0
 1086 07db F20F1145 		movsd	%xmm0, -24(%rbp)
 1086      E8
 174:cpp_vector_double_practice.cpp ****         dot_product += columns[i] * other.columns[i];
 1087              		.loc 1 174 0 discriminator 2
 1088 07e0 8345E401 		addl	$1, -28(%rbp)
 1089 07e4 EB9A     		jmp	.L46
 1090              	.L45:
 1091              	.LBE19:
 176:cpp_vector_double_practice.cpp ****     }
 177:cpp_vector_double_practice.cpp **** 
 178:cpp_vector_double_practice.cpp ****     // Returning a temporary image
 179:cpp_vector_double_practice.cpp ****     return dot_product;
 1092              		.loc 1 179 0
 1093 07e6 F20F1045 		movsd	-24(%rbp), %xmm0
 1093      E8
 180:cpp_vector_double_practice.cpp **** }
 1094              		.loc 1 180 0
 1095 07eb 4883C438 		addq	$56, %rsp
 1096 07ef 5B       		popq	%rbx
 1097 07f0 5D       		popq	%rbp
 1098              		.cfi_def_cfa 7, 8
 1099 07f1 C3       		ret
 1100              		.cfi_endproc
 1101              	.LFE1857:
 1103              		.section	.rodata
 1104              	.LC12:
 1105 00be 5D203D20 		.string	"] = "
 1105      00
 1106              		.text
 1107              		.align 2
 1108              		.globl	_ZN9RowVector4showEv
 1110              	_ZN9RowVector4showEv:
 1111              	.LFB1858:
 181:cpp_vector_double_practice.cpp **** 
 182:cpp_vector_double_practice.cpp **** 
 183:cpp_vector_double_practice.cpp **** void RowVector::show(){
 1112              		.loc 1 183 0
 1113              		.cfi_startproc
 1114 07f2 55       		pushq	%rbp
 1115              		.cfi_def_cfa_offset 16
 1116              		.cfi_offset 6, -16
 1117 07f3 4889E5   		movq	%rsp, %rbp
 1118              		.cfi_def_cfa_register 6
 1119 07f6 53       		pushq	%rbx
 1120 07f7 4883EC28 		subq	$40, %rsp
 1121              		.cfi_offset 3, -24
 1122 07fb 48897DD8 		movq	%rdi, -40(%rbp)
 184:cpp_vector_double_practice.cpp **** #ifdef LOG
 185:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "void show()\n";
 1123              		.loc 1 185 0
 1124 07ff BE5B0000 		movl	$91, %esi
 1124      00
 1125 0804 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1125      000000
 1126 080b E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1126      00
 1127 0810 4889C2   		movq	%rax, %rdx
 1128 0813 488B45D8 		movq	-40(%rbp), %rax
 1129 0817 4889C6   		movq	%rax, %rsi
 1130 081a 4889D7   		movq	%rdx, %rdi
 1131 081d E8000000 		call	_ZNSolsEPKv@PLT
 1131      00
 1132 0822 BE5D0000 		movl	$93, %esi
 1132      00
 1133 0827 4889C7   		movq	%rax, %rdi
 1134 082a E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1134      00
 1135 082f 488D3500 		leaq	.LC7(%rip), %rsi
 1135      000000
 1136 0836 4889C7   		movq	%rax, %rdi
 1137 0839 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1137      00
 1138              	.LBB20:
 186:cpp_vector_double_practice.cpp **** #endif
 187:cpp_vector_double_practice.cpp ****     for (uint32_t i=0; columns.size()> i; ++i){
 1139              		.loc 1 187 0
 1140 083e C745EC00 		movl	$0, -20(%rbp)
 1140      000000
 1141              	.L50:
 1142              		.loc 1 187 0 is_stmt 0 discriminator 3
 1143 0845 488B45D8 		movq	-40(%rbp), %rax
 1144 0849 4889C7   		movq	%rax, %rdi
 1145 084c E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1145      00
 1146 0851 4889C2   		movq	%rax, %rdx
 1147 0854 8B45EC   		movl	-20(%rbp), %eax
 1148 0857 4839C2   		cmpq	%rax, %rdx
 1149 085a 0F97C0   		seta	%al
 1150 085d 84C0     		testb	%al, %al
 1151 085f 0F848200 		je	.L51
 1151      0000
 188:cpp_vector_double_practice.cpp ****         std::cout << name << '[' << i << "] = " << columns[i] << '\n';
 1152              		.loc 1 188 0 is_stmt 1 discriminator 2
 1153 0865 488B45D8 		movq	-40(%rbp), %rax
 1154 0869 4883C018 		addq	$24, %rax
 1155 086d 4889C6   		movq	%rax, %rsi
 1156 0870 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1156      000000
 1157 0877 E8000000 		call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5
 1157      00
 1158 087c BE5B0000 		movl	$91, %esi
 1158      00
 1159 0881 4889C7   		movq	%rax, %rdi
 1160 0884 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1160      00
 1161 0889 4889C2   		movq	%rax, %rdx
 1162 088c 8B45EC   		movl	-20(%rbp), %eax
 1163 088f 89C6     		movl	%eax, %esi
 1164 0891 4889D7   		movq	%rdx, %rdi
 1165 0894 E8000000 		call	_ZNSolsEj@PLT
 1165      00
 1166 0899 488D3500 		leaq	.LC12(%rip), %rsi
 1166      000000
 1167 08a0 4889C7   		movq	%rax, %rdi
 1168 08a3 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1168      00
 1169 08a8 4889C3   		movq	%rax, %rbx
 1170 08ab 8B55EC   		movl	-20(%rbp), %edx
 1171 08ae 488B45D8 		movq	-40(%rbp), %rax
 1172 08b2 4889D6   		movq	%rdx, %rsi
 1173 08b5 4889C7   		movq	%rax, %rdi
 1174 08b8 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 1174      00
 1175 08bd 488B00   		movq	(%rax), %rax
 1176 08c0 488945D0 		movq	%rax, -48(%rbp)
 1177 08c4 F20F1045 		movsd	-48(%rbp), %xmm0
 1177      D0
 1178 08c9 4889DF   		movq	%rbx, %rdi
 1179 08cc E8000000 		call	_ZNSolsEd@PLT
 1179      00
 1180 08d1 BE0A0000 		movl	$10, %esi
 1180      00
 1181 08d6 4889C7   		movq	%rax, %rdi
 1182 08d9 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1182      00
 187:cpp_vector_double_practice.cpp ****         std::cout << name << '[' << i << "] = " << columns[i] << '\n';
 1183              		.loc 1 187 0 discriminator 2
 1184 08de 8345EC01 		addl	$1, -20(%rbp)
 1185 08e2 E95EFFFF 		jmp	.L50
 1185      FF
 1186              	.L51:
 1187              	.LBE20:
 189:cpp_vector_double_practice.cpp ****     }
 190:cpp_vector_double_practice.cpp **** }
 1188              		.loc 1 190 0
 1189 08e7 90       		nop
 1190 08e8 4883C428 		addq	$40, %rsp
 1191 08ec 5B       		popq	%rbx
 1192 08ed 5D       		popq	%rbp
 1193              		.cfi_def_cfa 7, 8
 1194 08ee C3       		ret
 1195              		.cfi_endproc
 1196              	.LFE1858:
 1198              		.section	.rodata
 1199 00c3 00000000 		.align 8
 1199      00
 1200              	.LC15:
 1201 00c8 526F7756 		.string	"RowVector row (2u, s, \"row\");\n"
 1201      6563746F 
 1201      7220726F 
 1201      77202832 
 1201      752C2073 
 1202              	.LC16:
 1203 00e7 726F7700 		.string	"row"
 1204              	.LC17:
 1205 00eb 526F7756 		.string	"RowVector another_row (row);\n"
 1205      6563746F 
 1205      7220616E 
 1205      6F746865 
 1205      725F726F 
 1206              	.LC18:
 1207 0109 616E6F74 		.string	"another_row[1] += 0.5;\n"
 1207      6865725F 
 1207      726F775B 
 1207      315D202B 
 1207      3D20302E 
 1208 0121 00000000 		.align 8
 1208      000000
 1209              	.LC20:
 1210 0128 526F7756 		.string	"RowVector row_plus_another(row + another_row);\n"
 1210      6563746F 
 1210      7220726F 
 1210      775F706C 
 1210      75735F61 
 1211              	.LC21:
 1212 0158 526F7756 		.string	"RowVector zeros(3);\n"
 1212      6563746F 
 1212      72207A65 
 1212      726F7328 
 1212      33293B0A 
 1213              	.LC22:
 1214 016d 7A65726F 		.string	"zeros"
 1214      7300
 1215              	.LC24:
 1216 0173 6F727468 		.string	"ortho"
 1216      6F00
 1217              	.LC25:
 1218 0179 646F7562 		.string	"double dot = row * ortho;\n"
 1218      6C652064 
 1218      6F74203D 
 1218      20726F77 
 1218      202A206F 
 1219              	.LC26:
 1220 0194 646F7420 		.string	"dot  = "
 1220      203D2000 
 1221              	.LC27:
 1222 019c 646F7420 		.string	"dot = row * row;\n"
 1222      3D20726F 
 1222      77202A20 
 1222      726F773B 
 1222      0A00
 1223              		.text
 1224              		.globl	main
 1226              	main:
 1227              	.LFB1859:
 191:cpp_vector_double_practice.cpp **** 
 192:cpp_vector_double_practice.cpp **** 
 193:cpp_vector_double_practice.cpp **** int32_t main(int32_t argn, char *argv[]){
 1228              		.loc 1 193 0
 1229              		.cfi_startproc
 1230              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 1231              		.cfi_lsda 0x1b,.LLSDA1859
 1232 08ef 55       		pushq	%rbp
 1233              		.cfi_def_cfa_offset 16
 1234              		.cfi_offset 6, -16
 1235 08f0 4889E5   		movq	%rsp, %rbp
 1236              		.cfi_def_cfa_register 6
 1237 08f3 53       		pushq	%rbx
 1238 08f4 4881ECB8 		subq	$440, %rsp
 1238      010000
 1239              		.cfi_offset 3, -24
 1240 08fb 89BD5CFE 		movl	%edi, -420(%rbp)
 1240      FFFF
 1241 0901 4889B550 		movq	%rsi, -432(%rbp)
 1241      FEFFFF
 1242              		.loc 1 193 0
 1243 0908 64488B04 		movq	%fs:40, %rax
 1243      25280000 
 1243      00
 1244 0911 488945E8 		movq	%rax, -24(%rbp)
 1245 0915 31C0     		xorl	%eax, %eax
 194:cpp_vector_double_practice.cpp **** 	double s[] = {1.0, 2.0};
 1246              		.loc 1 194 0
 1247 0917 F20F1005 		movsd	.LC13(%rip), %xmm0
 1247      00000000 
 1248 091f F20F1185 		movsd	%xmm0, -400(%rbp)
 1248      70FEFFFF 
 1249 0927 F20F1005 		movsd	.LC14(%rip), %xmm0
 1249      00000000 
 1250 092f F20F1185 		movsd	%xmm0, -392(%rbp)
 1250      78FEFFFF 
 195:cpp_vector_double_practice.cpp **** 
 196:cpp_vector_double_practice.cpp ****     std::cout << "RowVector row (2u, s, \"row\");\n";
 1251              		.loc 1 196 0
 1252 0937 488D3500 		leaq	.LC15(%rip), %rsi
 1252      000000
 1253 093e 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1253      000000
 1254              	.LEHB11:
 1255 0945 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1255      00
 1256              	.LEHE11:
 197:cpp_vector_double_practice.cpp **** 	RowVector row (2u, s, "row");
 1257              		.loc 1 197 0
 1258 094a 488D8567 		leaq	-409(%rbp), %rax
 1258      FEFFFF
 1259 0951 4889C7   		movq	%rax, %rdi
 1260 0954 E8000000 		call	_ZNSaIcEC1Ev@PLT
 1260      00
 1261 0959 488D9567 		leaq	-409(%rbp), %rdx
 1261      FEFFFF
 1262 0960 488D45B0 		leaq	-80(%rbp), %rax
 1263 0964 488D3500 		leaq	.LC16(%rip), %rsi
 1263      000000
 1264 096b 4889C7   		movq	%rax, %rdi
 1265              	.LEHB12:
 1266 096e E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
 1266      00
 1267              	.LEHE12:
 1268              		.loc 1 197 0 is_stmt 0 discriminator 1
 1269 0973 488D4DB0 		leaq	-80(%rbp), %rcx
 1270 0977 488D9570 		leaq	-400(%rbp), %rdx
 1270      FEFFFF
 1271 097e 488D85B0 		leaq	-336(%rbp), %rax
 1271      FEFFFF
 1272 0985 BE020000 		movl	$2, %esi
 1272      00
 1273 098a 4889C7   		movq	%rax, %rdi
 1274              	.LEHB13:
 1275 098d E8000000 		call	_ZN9RowVectorC1EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 1275      00
 1276              	.LEHE13:
 1277 0992 488D45B0 		leaq	-80(%rbp), %rax
 1278 0996 4889C7   		movq	%rax, %rdi
 1279 0999 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1279      00
 1280 099e 488D8567 		leaq	-409(%rbp), %rax
 1280      FEFFFF
 1281 09a5 4889C7   		movq	%rax, %rdi
 1282 09a8 E8000000 		call	_ZNSaIcED1Ev@PLT
 1282      00
 198:cpp_vector_double_practice.cpp **** 
 199:cpp_vector_double_practice.cpp ****     row.show();
 1283              		.loc 1 199 0 is_stmt 1
 1284 09ad 488D85B0 		leaq	-336(%rbp), %rax
 1284      FEFFFF
 1285 09b4 4889C7   		movq	%rax, %rdi
 1286              	.LEHB14:
 1287 09b7 E8000000 		call	_ZN9RowVector4showEv
 1287      00
 200:cpp_vector_double_practice.cpp **** 
 201:cpp_vector_double_practice.cpp ****     std::cout << "RowVector another_row (row);\n";
 1288              		.loc 1 201 0
 1289 09bc 488D3500 		leaq	.LC17(%rip), %rsi
 1289      000000
 1290 09c3 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1290      000000
 1291 09ca E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1291      00
 202:cpp_vector_double_practice.cpp **** 	RowVector another_row (row);
 1292              		.loc 1 202 0
 1293 09cf 488D95B0 		leaq	-336(%rbp), %rdx
 1293      FEFFFF
 1294 09d6 488D85F0 		leaq	-272(%rbp), %rax
 1294      FEFFFF
 1295 09dd 4889D6   		movq	%rdx, %rsi
 1296 09e0 4889C7   		movq	%rax, %rdi
 1297 09e3 E8000000 		call	_ZN9RowVectorC1ERKS_
 1297      00
 1298              	.LEHE14:
 203:cpp_vector_double_practice.cpp ****     row.show();
 1299              		.loc 1 203 0
 1300 09e8 488D85B0 		leaq	-336(%rbp), %rax
 1300      FEFFFF
 1301 09ef 4889C7   		movq	%rax, %rdi
 1302              	.LEHB15:
 1303 09f2 E8000000 		call	_ZN9RowVector4showEv
 1303      00
 204:cpp_vector_double_practice.cpp ****     another_row.show();
 1304              		.loc 1 204 0
 1305 09f7 488D85F0 		leaq	-272(%rbp), %rax
 1305      FEFFFF
 1306 09fe 4889C7   		movq	%rax, %rdi
 1307 0a01 E8000000 		call	_ZN9RowVector4showEv
 1307      00
 205:cpp_vector_double_practice.cpp **** 
 206:cpp_vector_double_practice.cpp ****     std::cout << "another_row[1] += 0.5;\n";
 1308              		.loc 1 206 0
 1309 0a06 488D3500 		leaq	.LC18(%rip), %rsi
 1309      000000
 1310 0a0d 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1310      000000
 1311 0a14 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1311      00
 207:cpp_vector_double_practice.cpp ****     another_row[1] += 0.5;
 1312              		.loc 1 207 0
 1313 0a19 488D85F0 		leaq	-272(%rbp), %rax
 1313      FEFFFF
 1314 0a20 BE010000 		movl	$1, %esi
 1314      00
 1315 0a25 4889C7   		movq	%rax, %rdi
 1316 0a28 E8000000 		call	_ZN9RowVectorixEj
 1316      00
 1317 0a2d F20F1008 		movsd	(%rax), %xmm1
 1318 0a31 F20F1005 		movsd	.LC19(%rip), %xmm0
 1318      00000000 
 1319 0a39 F20F58C1 		addsd	%xmm1, %xmm0
 1320 0a3d F20F1100 		movsd	%xmm0, (%rax)
 208:cpp_vector_double_practice.cpp ****     row.show();
 1321              		.loc 1 208 0
 1322 0a41 488D85B0 		leaq	-336(%rbp), %rax
 1322      FEFFFF
 1323 0a48 4889C7   		movq	%rax, %rdi
 1324 0a4b E8000000 		call	_ZN9RowVector4showEv
 1324      00
 209:cpp_vector_double_practice.cpp ****     another_row.show();
 1325              		.loc 1 209 0
 1326 0a50 488D85F0 		leaq	-272(%rbp), %rax
 1326      FEFFFF
 1327 0a57 4889C7   		movq	%rax, %rdi
 1328 0a5a E8000000 		call	_ZN9RowVector4showEv
 1328      00
 210:cpp_vector_double_practice.cpp **** 
 211:cpp_vector_double_practice.cpp ****     std::cout << "RowVector row_plus_another(row + another_row);\n";
 1329              		.loc 1 211 0
 1330 0a5f 488D3500 		leaq	.LC20(%rip), %rsi
 1330      000000
 1331 0a66 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1331      000000
 1332 0a6d E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1332      00
 212:cpp_vector_double_practice.cpp ****     RowVector row_plus_another(row + another_row);
 1333              		.loc 1 212 0
 1334 0a72 488D8530 		leaq	-208(%rbp), %rax
 1334      FFFFFF
 1335 0a79 488D95F0 		leaq	-272(%rbp), %rdx
 1335      FEFFFF
 1336 0a80 488D8DB0 		leaq	-336(%rbp), %rcx
 1336      FEFFFF
 1337 0a87 4889CE   		movq	%rcx, %rsi
 1338 0a8a 4889C7   		movq	%rax, %rdi
 1339 0a8d E8000000 		call	_ZN9RowVectorplERKS_
 1339      00
 1340              	.LEHE15:
 213:cpp_vector_double_practice.cpp ****     row.show();
 1341              		.loc 1 213 0
 1342 0a92 488D85B0 		leaq	-336(%rbp), %rax
 1342      FEFFFF
 1343 0a99 4889C7   		movq	%rax, %rdi
 1344              	.LEHB16:
 1345 0a9c E8000000 		call	_ZN9RowVector4showEv
 1345      00
 214:cpp_vector_double_practice.cpp ****     another_row.show();
 1346              		.loc 1 214 0
 1347 0aa1 488D85F0 		leaq	-272(%rbp), %rax
 1347      FEFFFF
 1348 0aa8 4889C7   		movq	%rax, %rdi
 1349 0aab E8000000 		call	_ZN9RowVector4showEv
 1349      00
 215:cpp_vector_double_practice.cpp ****     row_plus_another.show();
 1350              		.loc 1 215 0
 1351 0ab0 488D8530 		leaq	-208(%rbp), %rax
 1351      FFFFFF
 1352 0ab7 4889C7   		movq	%rax, %rdi
 1353 0aba E8000000 		call	_ZN9RowVector4showEv
 1353      00
 216:cpp_vector_double_practice.cpp **** 
 217:cpp_vector_double_practice.cpp ****     std::cout << "RowVector zeros(3);\n";
 1354              		.loc 1 217 0
 1355 0abf 488D3500 		leaq	.LC21(%rip), %rsi
 1355      000000
 1356 0ac6 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1356      000000
 1357 0acd E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1357      00
 1358              	.LEHE16:
 218:cpp_vector_double_practice.cpp **** 	RowVector zeros(3u, "zeros");
 1359              		.loc 1 218 0
 1360 0ad2 488D8567 		leaq	-409(%rbp), %rax
 1360      FEFFFF
 1361 0ad9 4889C7   		movq	%rax, %rdi
 1362 0adc E8000000 		call	_ZNSaIcEC1Ev@PLT
 1362      00
 1363 0ae1 488D9567 		leaq	-409(%rbp), %rdx
 1363      FEFFFF
 1364 0ae8 488D45B0 		leaq	-80(%rbp), %rax
 1365 0aec 488D3500 		leaq	.LC22(%rip), %rsi
 1365      000000
 1366 0af3 4889C7   		movq	%rax, %rdi
 1367              	.LEHB17:
 1368 0af6 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
 1368      00
 1369              	.LEHE17:
 1370              		.loc 1 218 0 is_stmt 0 discriminator 1
 1371 0afb 488D55B0 		leaq	-80(%rbp), %rdx
 1372 0aff 488D8570 		leaq	-144(%rbp), %rax
 1372      FFFFFF
 1373 0b06 BE030000 		movl	$3, %esi
 1373      00
 1374 0b0b 4889C7   		movq	%rax, %rdi
 1375              	.LEHB18:
 1376 0b0e E8000000 		call	_ZN9RowVectorC1EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 1376      00
 1377              	.LEHE18:
 1378 0b13 488D45B0 		leaq	-80(%rbp), %rax
 1379 0b17 4889C7   		movq	%rax, %rdi
 1380 0b1a E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1380      00
 1381 0b1f 488D8567 		leaq	-409(%rbp), %rax
 1381      FEFFFF
 1382 0b26 4889C7   		movq	%rax, %rdi
 1383 0b29 E8000000 		call	_ZNSaIcED1Ev@PLT
 1383      00
 219:cpp_vector_double_practice.cpp ****     row.show();
 1384              		.loc 1 219 0 is_stmt 1
 1385 0b2e 488D85B0 		leaq	-336(%rbp), %rax
 1385      FEFFFF
 1386 0b35 4889C7   		movq	%rax, %rdi
 1387              	.LEHB19:
 1388 0b38 E8000000 		call	_ZN9RowVector4showEv
 1388      00
 220:cpp_vector_double_practice.cpp ****     another_row.show();
 1389              		.loc 1 220 0
 1390 0b3d 488D85F0 		leaq	-272(%rbp), %rax
 1390      FEFFFF
 1391 0b44 4889C7   		movq	%rax, %rdi
 1392 0b47 E8000000 		call	_ZN9RowVector4showEv
 1392      00
 221:cpp_vector_double_practice.cpp ****     row_plus_another.show();
 1393              		.loc 1 221 0
 1394 0b4c 488D8530 		leaq	-208(%rbp), %rax
 1394      FFFFFF
 1395 0b53 4889C7   		movq	%rax, %rdi
 1396 0b56 E8000000 		call	_ZN9RowVector4showEv
 1396      00
 222:cpp_vector_double_practice.cpp ****     zeros.show();
 1397              		.loc 1 222 0
 1398 0b5b 488D8570 		leaq	-144(%rbp), %rax
 1398      FFFFFF
 1399 0b62 4889C7   		movq	%rax, %rdi
 1400 0b65 E8000000 		call	_ZN9RowVector4showEv
 1400      00
 1401              	.LEHE19:
 223:cpp_vector_double_practice.cpp **** 
 224:cpp_vector_double_practice.cpp ****     double t[] = {2.0, -1.0};
 1402              		.loc 1 224 0
 1403 0b6a F20F1005 		movsd	.LC14(%rip), %xmm0
 1403      00000000 
 1404 0b72 F20F1185 		movsd	%xmm0, -384(%rbp)
 1404      80FEFFFF 
 1405 0b7a F20F1005 		movsd	.LC23(%rip), %xmm0
 1405      00000000 
 1406 0b82 F20F1185 		movsd	%xmm0, -376(%rbp)
 1406      88FEFFFF 
 225:cpp_vector_double_practice.cpp **** 	RowVector ortho (2u, t, "ortho");
 1407              		.loc 1 225 0
 1408 0b8a 488D8567 		leaq	-409(%rbp), %rax
 1408      FEFFFF
 1409 0b91 4889C7   		movq	%rax, %rdi
 1410 0b94 E8000000 		call	_ZNSaIcEC1Ev@PLT
 1410      00
 1411 0b99 488D9567 		leaq	-409(%rbp), %rdx
 1411      FEFFFF
 1412 0ba0 488D8590 		leaq	-368(%rbp), %rax
 1412      FEFFFF
 1413 0ba7 488D3500 		leaq	.LC24(%rip), %rsi
 1413      000000
 1414 0bae 4889C7   		movq	%rax, %rdi
 1415              	.LEHB20:
 1416 0bb1 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
 1416      00
 1417              	.LEHE20:
 1418              		.loc 1 225 0 is_stmt 0 discriminator 1
 1419 0bb6 488D8D90 		leaq	-368(%rbp), %rcx
 1419      FEFFFF
 1420 0bbd 488D9580 		leaq	-384(%rbp), %rdx
 1420      FEFFFF
 1421 0bc4 488D45B0 		leaq	-80(%rbp), %rax
 1422 0bc8 BE020000 		movl	$2, %esi
 1422      00
 1423 0bcd 4889C7   		movq	%rax, %rdi
 1424              	.LEHB21:
 1425 0bd0 E8000000 		call	_ZN9RowVectorC1EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 1425      00
 1426              	.LEHE21:
 1427 0bd5 488D8590 		leaq	-368(%rbp), %rax
 1427      FEFFFF
 1428 0bdc 4889C7   		movq	%rax, %rdi
 1429 0bdf E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1429      00
 1430 0be4 488D8567 		leaq	-409(%rbp), %rax
 1430      FEFFFF
 1431 0beb 4889C7   		movq	%rax, %rdi
 1432 0bee E8000000 		call	_ZNSaIcED1Ev@PLT
 1432      00
 226:cpp_vector_double_practice.cpp ****     double dot = row * ortho;
 1433              		.loc 1 226 0 is_stmt 1
 1434 0bf3 488D55B0 		leaq	-80(%rbp), %rdx
 1435 0bf7 488D85B0 		leaq	-336(%rbp), %rax
 1435      FEFFFF
 1436 0bfe 4889D6   		movq	%rdx, %rsi
 1437 0c01 4889C7   		movq	%rax, %rdi
 1438              	.LEHB22:
 1439 0c04 E8000000 		call	_ZN9RowVectormlERKS_
 1439      00
 1440 0c09 66480F7E 		movq	%xmm0, %rax
 1440      C0
 1441 0c0e 48898568 		movq	%rax, -408(%rbp)
 1441      FEFFFF
 227:cpp_vector_double_practice.cpp ****     std::cout << "double dot = row * ortho;\n";
 1442              		.loc 1 227 0
 1443 0c15 488D3500 		leaq	.LC25(%rip), %rsi
 1443      000000
 1444 0c1c 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1444      000000
 1445 0c23 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1445      00
 228:cpp_vector_double_practice.cpp ****     std::cout << "dot  = " << dot << '\n';
 1446              		.loc 1 228 0
 1447 0c28 488D3500 		leaq	.LC26(%rip), %rsi
 1447      000000
 1448 0c2f 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1448      000000
 1449 0c36 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1449      00
 1450 0c3b 4889C2   		movq	%rax, %rdx
 1451 0c3e 488B8568 		movq	-408(%rbp), %rax
 1451      FEFFFF
 1452 0c45 48898548 		movq	%rax, -440(%rbp)
 1452      FEFFFF
 1453 0c4c F20F1085 		movsd	-440(%rbp), %xmm0
 1453      48FEFFFF 
 1454 0c54 4889D7   		movq	%rdx, %rdi
 1455 0c57 E8000000 		call	_ZNSolsEd@PLT
 1455      00
 1456              		.loc 1 228 0 is_stmt 0 discriminator 1
 1457 0c5c BE0A0000 		movl	$10, %esi
 1457      00
 1458 0c61 4889C7   		movq	%rax, %rdi
 1459 0c64 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1459      00
 229:cpp_vector_double_practice.cpp **** 
 230:cpp_vector_double_practice.cpp ****     std::cout << "dot = row * row;\n";
 1460              		.loc 1 230 0 is_stmt 1
 1461 0c69 488D3500 		leaq	.LC27(%rip), %rsi
 1461      000000
 1462 0c70 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1462      000000
 1463 0c77 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1463      00
 231:cpp_vector_double_practice.cpp ****     dot = row * row;
 1464              		.loc 1 231 0
 1465 0c7c 488D95B0 		leaq	-336(%rbp), %rdx
 1465      FEFFFF
 1466 0c83 488D85B0 		leaq	-336(%rbp), %rax
 1466      FEFFFF
 1467 0c8a 4889D6   		movq	%rdx, %rsi
 1468 0c8d 4889C7   		movq	%rax, %rdi
 1469 0c90 E8000000 		call	_ZN9RowVectormlERKS_
 1469      00
 1470 0c95 66480F7E 		movq	%xmm0, %rax
 1470      C0
 1471 0c9a 48898568 		movq	%rax, -408(%rbp)
 1471      FEFFFF
 232:cpp_vector_double_practice.cpp ****     std::cout << "dot  = " << dot << '\n';
 1472              		.loc 1 232 0
 1473 0ca1 488D3500 		leaq	.LC26(%rip), %rsi
 1473      000000
 1474 0ca8 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1474      000000
 1475 0caf E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1475      00
 1476              		.loc 1 232 0 is_stmt 0 discriminator 1
 1477 0cb4 4889C2   		movq	%rax, %rdx
 1478 0cb7 488B8568 		movq	-408(%rbp), %rax
 1478      FEFFFF
 1479 0cbe 48898548 		movq	%rax, -440(%rbp)
 1479      FEFFFF
 1480 0cc5 F20F1085 		movsd	-440(%rbp), %xmm0
 1480      48FEFFFF 
 1481 0ccd 4889D7   		movq	%rdx, %rdi
 1482 0cd0 E8000000 		call	_ZNSolsEd@PLT
 1482      00
 1483 0cd5 BE0A0000 		movl	$10, %esi
 1483      00
 1484 0cda 4889C7   		movq	%rax, %rdi
 1485 0cdd E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1485      00
 1486              	.LEHE22:
 225:cpp_vector_double_practice.cpp ****     double dot = row * ortho;
 1487              		.loc 1 225 0 is_stmt 1
 1488 0ce2 488D45B0 		leaq	-80(%rbp), %rax
 1489 0ce6 4889C7   		movq	%rax, %rdi
 1490 0ce9 E8000000 		call	_ZN9RowVectorD1Ev
 1490      00
 218:cpp_vector_double_practice.cpp ****     row.show();
 1491              		.loc 1 218 0
 1492 0cee 488D8570 		leaq	-144(%rbp), %rax
 1492      FFFFFF
 1493 0cf5 4889C7   		movq	%rax, %rdi
 1494 0cf8 E8000000 		call	_ZN9RowVectorD1Ev
 1494      00
 212:cpp_vector_double_practice.cpp ****     row.show();
 1495              		.loc 1 212 0
 1496 0cfd 488D8530 		leaq	-208(%rbp), %rax
 1496      FFFFFF
 1497 0d04 4889C7   		movq	%rax, %rdi
 1498 0d07 E8000000 		call	_ZN9RowVectorD1Ev
 1498      00
 202:cpp_vector_double_practice.cpp ****     row.show();
 1499              		.loc 1 202 0
 1500 0d0c 488D85F0 		leaq	-272(%rbp), %rax
 1500      FEFFFF
 1501 0d13 4889C7   		movq	%rax, %rdi
 1502 0d16 E8000000 		call	_ZN9RowVectorD1Ev
 1502      00
 197:cpp_vector_double_practice.cpp **** 
 1503              		.loc 1 197 0
 1504 0d1b 488D85B0 		leaq	-336(%rbp), %rax
 1504      FEFFFF
 1505 0d22 4889C7   		movq	%rax, %rdi
 1506 0d25 E8000000 		call	_ZN9RowVectorD1Ev
 1506      00
 233:cpp_vector_double_practice.cpp **** 
 234:cpp_vector_double_practice.cpp **** }
 1507              		.loc 1 234 0
 1508 0d2a B8000000 		movl	$0, %eax
 1508      00
 1509 0d2f 488B4DE8 		movq	-24(%rbp), %rcx
 1510 0d33 6448330C 		xorq	%fs:40, %rcx
 1510      25280000 
 1510      00
 1511 0d3c 0F84EF00 		je	.L65
 1511      0000
 1512 0d42 E9E50000 		jmp	.L77
 1512      00
 1513              	.L67:
 1514 0d47 4889C3   		movq	%rax, %rbx
 1515 0d4a 488D45B0 		leaq	-80(%rbp), %rax
 1516 0d4e 4889C7   		movq	%rax, %rdi
 1517 0d51 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1517      00
 1518 0d56 EB03     		jmp	.L55
 1519              	.L66:
 1520 0d58 4889C3   		movq	%rax, %rbx
 1521              	.L55:
 1522 0d5b 488D8567 		leaq	-409(%rbp), %rax
 1522      FEFFFF
 1523 0d62 4889C7   		movq	%rax, %rdi
 1524 0d65 E8000000 		call	_ZNSaIcED1Ev@PLT
 1524      00
 1525 0d6a 4889D8   		movq	%rbx, %rax
 1526 0d6d 4889C7   		movq	%rax, %rdi
 1527              	.LEHB23:
 1528 0d70 E8000000 		call	_Unwind_Resume@PLT
 1528      00
 1529              	.L72:
 1530 0d75 4889C3   		movq	%rax, %rbx
 1531 0d78 488D45B0 		leaq	-80(%rbp), %rax
 1532 0d7c 4889C7   		movq	%rax, %rdi
 1533 0d7f E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1533      00
 1534 0d84 EB03     		jmp	.L57
 1535              	.L71:
 1536 0d86 4889C3   		movq	%rax, %rbx
 1537              	.L57:
 1538 0d89 488D8567 		leaq	-409(%rbp), %rax
 1538      FEFFFF
 1539 0d90 4889C7   		movq	%rax, %rdi
 1540 0d93 E8000000 		call	_ZNSaIcED1Ev@PLT
 1540      00
 1541 0d98 EB50     		jmp	.L58
 1542              	.L75:
 1543 0d9a 4889C3   		movq	%rax, %rbx
 1544 0d9d 488D8590 		leaq	-368(%rbp), %rax
 1544      FEFFFF
 1545 0da4 4889C7   		movq	%rax, %rdi
 1546 0da7 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1546      00
 1547 0dac EB03     		jmp	.L60
 1548              	.L74:
 1549 0dae 4889C3   		movq	%rax, %rbx
 1550              	.L60:
 1551 0db1 488D8567 		leaq	-409(%rbp), %rax
 1551      FEFFFF
 1552 0db8 4889C7   		movq	%rax, %rdi
 1553 0dbb E8000000 		call	_ZNSaIcED1Ev@PLT
 1553      00
 1554 0dc0 EB14     		jmp	.L61
 1555              	.L76:
 1556 0dc2 4889C3   		movq	%rax, %rbx
 225:cpp_vector_double_practice.cpp ****     double dot = row * ortho;
 1557              		.loc 1 225 0
 1558 0dc5 488D45B0 		leaq	-80(%rbp), %rax
 1559 0dc9 4889C7   		movq	%rax, %rdi
 1560 0dcc E8000000 		call	_ZN9RowVectorD1Ev
 1560      00
 1561 0dd1 EB03     		jmp	.L61
 1562              	.L73:
 1563 0dd3 4889C3   		movq	%rax, %rbx
 1564              	.L61:
 218:cpp_vector_double_practice.cpp ****     row.show();
 1565              		.loc 1 218 0
 1566 0dd6 488D8570 		leaq	-144(%rbp), %rax
 1566      FFFFFF
 1567 0ddd 4889C7   		movq	%rax, %rdi
 1568 0de0 E8000000 		call	_ZN9RowVectorD1Ev
 1568      00
 1569 0de5 EB03     		jmp	.L58
 1570              	.L70:
 1571 0de7 4889C3   		movq	%rax, %rbx
 1572              	.L58:
 212:cpp_vector_double_practice.cpp ****     row.show();
 1573              		.loc 1 212 0
 1574 0dea 488D8530 		leaq	-208(%rbp), %rax
 1574      FFFFFF
 1575 0df1 4889C7   		movq	%rax, %rdi
 1576 0df4 E8000000 		call	_ZN9RowVectorD1Ev
 1576      00
 1577 0df9 EB03     		jmp	.L63
 1578              	.L69:
 1579 0dfb 4889C3   		movq	%rax, %rbx
 1580              	.L63:
 202:cpp_vector_double_practice.cpp ****     row.show();
 1581              		.loc 1 202 0
 1582 0dfe 488D85F0 		leaq	-272(%rbp), %rax
 1582      FEFFFF
 1583 0e05 4889C7   		movq	%rax, %rdi
 1584 0e08 E8000000 		call	_ZN9RowVectorD1Ev
 1584      00
 1585 0e0d EB03     		jmp	.L64
 1586              	.L68:
 1587 0e0f 4889C3   		movq	%rax, %rbx
 1588              	.L64:
 197:cpp_vector_double_practice.cpp **** 
 1589              		.loc 1 197 0
 1590 0e12 488D85B0 		leaq	-336(%rbp), %rax
 1590      FEFFFF
 1591 0e19 4889C7   		movq	%rax, %rdi
 1592 0e1c E8000000 		call	_ZN9RowVectorD1Ev
 1592      00
 1593 0e21 4889D8   		movq	%rbx, %rax
 1594 0e24 4889C7   		movq	%rax, %rdi
 1595 0e27 E8000000 		call	_Unwind_Resume@PLT
 1595      00
 1596              	.LEHE23:
 1597              	.L77:
 1598              		.loc 1 234 0
 1599 0e2c E8000000 		call	__stack_chk_fail@PLT
 1599      00
 1600              	.L65:
 1601 0e31 4881C4B8 		addq	$440, %rsp
 1601      010000
 1602 0e38 5B       		popq	%rbx
 1603 0e39 5D       		popq	%rbp
 1604              		.cfi_def_cfa 7, 8
 1605 0e3a C3       		ret
 1606              		.cfi_endproc
 1607              	.LFE1859:
 1608              		.section	.gcc_except_table
 1609              	.LLSDA1859:
 1610 0032 FF       		.byte	0xff
 1611 0033 FF       		.byte	0xff
 1612 0034 01       		.byte	0x1
 1613 0035 4D       		.uleb128 .LLSDACSE1859-.LLSDACSB1859
 1614              	.LLSDACSB1859:
 1615 0036 56       		.uleb128 .LEHB11-.LFB1859
 1616 0037 05       		.uleb128 .LEHE11-.LEHB11
 1617 0038 00       		.uleb128 0
 1618 0039 00       		.uleb128 0
 1619 003a 7F       		.uleb128 .LEHB12-.LFB1859
 1620 003b 05       		.uleb128 .LEHE12-.LEHB12
 1621 003c E908     		.uleb128 .L66-.LFB1859
 1622 003e 00       		.uleb128 0
 1623 003f 9E01     		.uleb128 .LEHB13-.LFB1859
 1624 0041 05       		.uleb128 .LEHE13-.LEHB13
 1625 0042 D808     		.uleb128 .L67-.LFB1859
 1626 0044 00       		.uleb128 0
 1627 0045 C801     		.uleb128 .LEHB14-.LFB1859
 1628 0047 31       		.uleb128 .LEHE14-.LEHB14
 1629 0048 A00A     		.uleb128 .L68-.LFB1859
 1630 004a 00       		.uleb128 0
 1631 004b 8302     		.uleb128 .LEHB15-.LFB1859
 1632 004d A001     		.uleb128 .LEHE15-.LEHB15
 1633 004f 8C0A     		.uleb128 .L69-.LFB1859
 1634 0051 00       		.uleb128 0
 1635 0052 AD03     		.uleb128 .LEHB16-.LFB1859
 1636 0054 36       		.uleb128 .LEHE16-.LEHB16
 1637 0055 F809     		.uleb128 .L70-.LFB1859
 1638 0057 00       		.uleb128 0
 1639 0058 8704     		.uleb128 .LEHB17-.LFB1859
 1640 005a 05       		.uleb128 .LEHE17-.LEHB17
 1641 005b 9709     		.uleb128 .L71-.LFB1859
 1642 005d 00       		.uleb128 0
 1643 005e 9F04     		.uleb128 .LEHB18-.LFB1859
 1644 0060 05       		.uleb128 .LEHE18-.LEHB18
 1645 0061 8609     		.uleb128 .L72-.LFB1859
 1646 0063 00       		.uleb128 0
 1647 0064 C904     		.uleb128 .LEHB19-.LFB1859
 1648 0066 32       		.uleb128 .LEHE19-.LEHB19
 1649 0067 E409     		.uleb128 .L73-.LFB1859
 1650 0069 00       		.uleb128 0
 1651 006a C205     		.uleb128 .LEHB20-.LFB1859
 1652 006c 05       		.uleb128 .LEHE20-.LEHB20
 1653 006d BF09     		.uleb128 .L74-.LFB1859
 1654 006f 00       		.uleb128 0
 1655 0070 E105     		.uleb128 .LEHB21-.LFB1859
 1656 0072 05       		.uleb128 .LEHE21-.LEHB21
 1657 0073 AB09     		.uleb128 .L75-.LFB1859
 1658 0075 00       		.uleb128 0
 1659 0076 9506     		.uleb128 .LEHB22-.LFB1859
 1660 0078 DE01     		.uleb128 .LEHE22-.LEHB22
 1661 007a D309     		.uleb128 .L76-.LFB1859
 1662 007c 00       		.uleb128 0
 1663 007d 8109     		.uleb128 .LEHB23-.LFB1859
 1664 007f BC01     		.uleb128 .LEHE23-.LEHB23
 1665 0081 00       		.uleb128 0
 1666 0082 00       		.uleb128 0
 1667              	.LLSDACSE1859:
 1668              		.text
 1670              		.section	.text._ZNSt6vectorIdSaIdEEC2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5Ev,comdat
 1671              		.align 2
 1672              		.weak	_ZNSt6vectorIdSaIdEEC2Ev
 1674              	_ZNSt6vectorIdSaIdEEC2Ev:
 1675              	.LFB2098:
 1676              		.file 2 "/usr/include/c++/7/bits/stl_vector.h"
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
 1677              		.loc 2 259 0
 1678              		.cfi_startproc
 1679              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 1680              		.cfi_lsda 0x1b,.LLSDA2098
 1681 0000 55       		pushq	%rbp
 1682              		.cfi_def_cfa_offset 16
 1683              		.cfi_offset 6, -16
 1684 0001 4889E5   		movq	%rsp, %rbp
 1685              		.cfi_def_cfa_register 6
 1686 0004 4883EC10 		subq	$16, %rsp
 1687 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1688              	.LBB21:
 260:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 261:/usr/include/c++/7/bits/stl_vector.h ****       noexcept(is_nothrow_default_constructible<_Alloc>::value)
 262:/usr/include/c++/7/bits/stl_vector.h **** #endif
 263:/usr/include/c++/7/bits/stl_vector.h ****       : _Base() { }
 1689              		.loc 2 263 0
 1690 000c 488B45F8 		movq	-8(%rbp), %rax
 1691 0010 4889C7   		movq	%rax, %rdi
 1692 0013 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEEC2Ev
 1692      00
 1693              	.LBE21:
 1694 0018 90       		nop
 1695 0019 C9       		leave
 1696              		.cfi_def_cfa 7, 8
 1697 001a C3       		ret
 1698              		.cfi_endproc
 1699              	.LFE2098:
 1700              		.section	.gcc_except_table
 1701              	.LLSDA2098:
 1702 0083 FF       		.byte	0xff
 1703 0084 FF       		.byte	0xff
 1704 0085 01       		.byte	0x1
 1705 0086 00       		.uleb128 .LLSDACSE2098-.LLSDACSB2098
 1706              	.LLSDACSB2098:
 1707              	.LLSDACSE2098:
 1708              		.section	.text._ZNSt6vectorIdSaIdEEC2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5Ev,comdat
 1710              		.weak	_ZNSt6vectorIdSaIdEEC1Ev
 1711              		.set	_ZNSt6vectorIdSaIdEEC1Ev,_ZNSt6vectorIdSaIdEEC2Ev
 1712              		.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
 1713              		.align 2
 1714              		.weak	_ZNSt6vectorIdSaIdEED2Ev
 1716              	_ZNSt6vectorIdSaIdEED2Ev:
 1717              	.LFB2101:
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
 1718              		.loc 2 433 0
 1719              		.cfi_startproc
 1720              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 1721              		.cfi_lsda 0x1b,.LLSDA2101
 1722 0000 55       		pushq	%rbp
 1723              		.cfi_def_cfa_offset 16
 1724              		.cfi_offset 6, -16
 1725 0001 4889E5   		movq	%rsp, %rbp
 1726              		.cfi_def_cfa_register 6
 1727 0004 4883EC10 		subq	$16, %rsp
 1728 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1729              	.LBB22:
 434:/usr/include/c++/7/bits/stl_vector.h ****       { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 435:/usr/include/c++/7/bits/stl_vector.h **** 		      _M_get_Tp_allocator()); }
 1730              		.loc 2 435 0
 1731 000c 488B45F8 		movq	-8(%rbp), %rax
 1732 0010 4889C7   		movq	%rax, %rdi
 1733 0013 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 1733      00
 1734 0018 4889C2   		movq	%rax, %rdx
 434:/usr/include/c++/7/bits/stl_vector.h ****       { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 1735              		.loc 2 434 0
 1736 001b 488B45F8 		movq	-8(%rbp), %rax
 1737 001f 488B4808 		movq	8(%rax), %rcx
 1738 0023 488B45F8 		movq	-8(%rbp), %rax
 1739 0027 488B00   		movq	(%rax), %rax
 1740 002a 4889CE   		movq	%rcx, %rsi
 1741 002d 4889C7   		movq	%rax, %rdi
 1742 0030 E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 1742      00
 1743              		.loc 2 435 0
 1744 0035 488B45F8 		movq	-8(%rbp), %rax
 1745 0039 4889C7   		movq	%rax, %rdi
 1746 003c E8000000 		call	_ZNSt12_Vector_baseIdSaIdEED2Ev
 1746      00
 1747              	.LBE22:
 1748 0041 90       		nop
 1749 0042 C9       		leave
 1750              		.cfi_def_cfa 7, 8
 1751 0043 C3       		ret
 1752              		.cfi_endproc
 1753              	.LFE2101:
 1754              		.section	.gcc_except_table
 1755              	.LLSDA2101:
 1756 0087 FF       		.byte	0xff
 1757 0088 FF       		.byte	0xff
 1758 0089 01       		.byte	0x1
 1759 008a 00       		.uleb128 .LLSDACSE2101-.LLSDACSB2101
 1760              	.LLSDACSB2101:
 1761              	.LLSDACSE2101:
 1762              		.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
 1764              		.weak	_ZNSt6vectorIdSaIdEED1Ev
 1765              		.set	_ZNSt6vectorIdSaIdEED1Ev,_ZNSt6vectorIdSaIdEED2Ev
 1766              		.section	.text._ZNSt6vectorIdSaIdEE6resizeEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE6resizeEm,comdat
 1767              		.align 2
 1768              		.weak	_ZNSt6vectorIdSaIdEE6resizeEm
 1770              	_ZNSt6vectorIdSaIdEE6resizeEm:
 1771              	.LFB2115:
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
 1772              		.loc 2 689 0
 1773              		.cfi_startproc
 1774 0000 55       		pushq	%rbp
 1775              		.cfi_def_cfa_offset 16
 1776              		.cfi_offset 6, -16
 1777 0001 4889E5   		movq	%rsp, %rbp
 1778              		.cfi_def_cfa_register 6
 1779 0004 4883EC10 		subq	$16, %rsp
 1780 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1781 000c 488975F0 		movq	%rsi, -16(%rbp)
 690:/usr/include/c++/7/bits/stl_vector.h ****       {
 691:/usr/include/c++/7/bits/stl_vector.h **** 	if (__new_size > size())
 1782              		.loc 2 691 0
 1783 0010 488B45F8 		movq	-8(%rbp), %rax
 1784 0014 4889C7   		movq	%rax, %rdi
 1785 0017 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1785      00
 1786 001c 483945F0 		cmpq	%rax, -16(%rbp)
 1787 0020 0F97C0   		seta	%al
 1788 0023 84C0     		testb	%al, %al
 1789 0025 742A     		je	.L81
 692:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_default_append(__new_size - size());
 1790              		.loc 2 692 0
 1791 0027 488B45F8 		movq	-8(%rbp), %rax
 1792 002b 4889C7   		movq	%rax, %rdi
 1793 002e E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1793      00
 1794 0033 4889C2   		movq	%rax, %rdx
 1795 0036 488B45F0 		movq	-16(%rbp), %rax
 1796 003a 4829D0   		subq	%rdx, %rax
 1797 003d 4889C2   		movq	%rax, %rdx
 1798 0040 488B45F8 		movq	-8(%rbp), %rax
 1799 0044 4889D6   		movq	%rdx, %rsi
 1800 0047 4889C7   		movq	%rax, %rdi
 1801 004a E8000000 		call	_ZNSt6vectorIdSaIdEE17_M_default_appendEm
 1801      00
 693:/usr/include/c++/7/bits/stl_vector.h **** 	else if (__new_size < size())
 694:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
 695:/usr/include/c++/7/bits/stl_vector.h ****       }
 1802              		.loc 2 695 0
 1803 004f EB38     		jmp	.L83
 1804              	.L81:
 693:/usr/include/c++/7/bits/stl_vector.h **** 	else if (__new_size < size())
 1805              		.loc 2 693 0
 1806 0051 488B45F8 		movq	-8(%rbp), %rax
 1807 0055 4889C7   		movq	%rax, %rdi
 1808 0058 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1808      00
 1809 005d 483945F0 		cmpq	%rax, -16(%rbp)
 1810 0061 0F92C0   		setb	%al
 1811 0064 84C0     		testb	%al, %al
 1812 0066 7421     		je	.L83
 694:/usr/include/c++/7/bits/stl_vector.h ****       }
 1813              		.loc 2 694 0
 1814 0068 488B45F8 		movq	-8(%rbp), %rax
 1815 006c 488B00   		movq	(%rax), %rax
 1816 006f 488B55F0 		movq	-16(%rbp), %rdx
 1817 0073 48C1E203 		salq	$3, %rdx
 1818 0077 4801C2   		addq	%rax, %rdx
 1819 007a 488B45F8 		movq	-8(%rbp), %rax
 1820 007e 4889D6   		movq	%rdx, %rsi
 1821 0081 4889C7   		movq	%rax, %rdi
 1822 0084 E8000000 		call	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd
 1822      00
 1823              	.L83:
 1824              		.loc 2 695 0
 1825 0089 90       		nop
 1826 008a C9       		leave
 1827              		.cfi_def_cfa 7, 8
 1828 008b C3       		ret
 1829              		.cfi_endproc
 1830              	.LFE2115:
 1832              		.section	.text._ZNKSt6vectorIdSaIdEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE4sizeEv,comdat
 1833              		.align 2
 1834              		.weak	_ZNKSt6vectorIdSaIdEE4sizeEv
 1836              	_ZNKSt6vectorIdSaIdEE4sizeEv:
 1837              	.LFB2116:
 670:/usr/include/c++/7/bits/stl_vector.h ****       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
 1838              		.loc 2 670 0
 1839              		.cfi_startproc
 1840 0000 55       		pushq	%rbp
 1841              		.cfi_def_cfa_offset 16
 1842              		.cfi_offset 6, -16
 1843 0001 4889E5   		movq	%rsp, %rbp
 1844              		.cfi_def_cfa_register 6
 1845 0004 48897DF8 		movq	%rdi, -8(%rbp)
 671:/usr/include/c++/7/bits/stl_vector.h **** 
 1846              		.loc 2 671 0
 1847 0008 488B45F8 		movq	-8(%rbp), %rax
 1848 000c 488B4008 		movq	8(%rax), %rax
 1849 0010 4889C2   		movq	%rax, %rdx
 1850 0013 488B45F8 		movq	-8(%rbp), %rax
 1851 0017 488B00   		movq	(%rax), %rax
 1852 001a 4829C2   		subq	%rax, %rdx
 1853 001d 4889D0   		movq	%rdx, %rax
 1854 0020 48C1F803 		sarq	$3, %rax
 1855 0024 5D       		popq	%rbp
 1856              		.cfi_def_cfa 7, 8
 1857 0025 C3       		ret
 1858              		.cfi_endproc
 1859              	.LFE2116:
 1861              		.section	.text._ZNSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNSt6vectorIdSaIdEEixEm,comdat
 1862              		.align 2
 1863              		.weak	_ZNSt6vectorIdSaIdEEixEm
 1865              	_ZNSt6vectorIdSaIdEEixEm:
 1866              	.LFB2117:
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
 1867              		.loc 2 795 0
 1868              		.cfi_startproc
 1869 0000 55       		pushq	%rbp
 1870              		.cfi_def_cfa_offset 16
 1871              		.cfi_offset 6, -16
 1872 0001 4889E5   		movq	%rsp, %rbp
 1873              		.cfi_def_cfa_register 6
 1874 0004 48897DF8 		movq	%rdi, -8(%rbp)
 1875 0008 488975F0 		movq	%rsi, -16(%rbp)
 796:/usr/include/c++/7/bits/stl_vector.h ****       {
 797:/usr/include/c++/7/bits/stl_vector.h **** 	__glibcxx_requires_subscript(__n);
 798:/usr/include/c++/7/bits/stl_vector.h **** 	return *(this->_M_impl._M_start + __n);
 1876              		.loc 2 798 0
 1877 000c 488B45F8 		movq	-8(%rbp), %rax
 1878 0010 488B00   		movq	(%rax), %rax
 1879 0013 488B55F0 		movq	-16(%rbp), %rdx
 1880 0017 48C1E203 		salq	$3, %rdx
 1881 001b 4801D0   		addq	%rdx, %rax
 799:/usr/include/c++/7/bits/stl_vector.h ****       }
 1882              		.loc 2 799 0
 1883 001e 5D       		popq	%rbp
 1884              		.cfi_def_cfa 7, 8
 1885 001f C3       		ret
 1886              		.cfi_endproc
 1887              	.LFE2117:
 1889              		.section	.text._ZNKSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNKSt6vectorIdSaIdEEixEm,comdat
 1890              		.align 2
 1891              		.weak	_ZNKSt6vectorIdSaIdEEixEm
 1893              	_ZNKSt6vectorIdSaIdEEixEm:
 1894              	.LFB2121:
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
 1895              		.loc 2 813 0
 1896              		.cfi_startproc
 1897 0000 55       		pushq	%rbp
 1898              		.cfi_def_cfa_offset 16
 1899              		.cfi_offset 6, -16
 1900 0001 4889E5   		movq	%rsp, %rbp
 1901              		.cfi_def_cfa_register 6
 1902 0004 48897DF8 		movq	%rdi, -8(%rbp)
 1903 0008 488975F0 		movq	%rsi, -16(%rbp)
 814:/usr/include/c++/7/bits/stl_vector.h ****       {
 815:/usr/include/c++/7/bits/stl_vector.h **** 	__glibcxx_requires_subscript(__n);
 816:/usr/include/c++/7/bits/stl_vector.h **** 	return *(this->_M_impl._M_start + __n);
 1904              		.loc 2 816 0
 1905 000c 488B45F8 		movq	-8(%rbp), %rax
 1906 0010 488B00   		movq	(%rax), %rax
 1907 0013 488B55F0 		movq	-16(%rbp), %rdx
 1908 0017 48C1E203 		salq	$3, %rdx
 1909 001b 4801D0   		addq	%rdx, %rax
 817:/usr/include/c++/7/bits/stl_vector.h ****       }
 1910              		.loc 2 817 0
 1911 001e 5D       		popq	%rbp
 1912              		.cfi_def_cfa 7, 8
 1913 001f C3       		ret
 1914              		.cfi_endproc
 1915              	.LFE2121:
 1917              		.section	.text._ZNSt6vectorIdSaIdEE5beginEv,"axG",@progbits,_ZNSt6vectorIdSaIdEE5beginEv,comdat
 1918              		.align 2
 1919              		.weak	_ZNSt6vectorIdSaIdEE5beginEv
 1921              	_ZNSt6vectorIdSaIdEE5beginEv:
 1922              	.LFB2124:
 563:/usr/include/c++/7/bits/stl_vector.h ****       { return iterator(this->_M_impl._M_start); }
 1923              		.loc 2 563 0
 1924              		.cfi_startproc
 1925 0000 55       		pushq	%rbp
 1926              		.cfi_def_cfa_offset 16
 1927              		.cfi_offset 6, -16
 1928 0001 4889E5   		movq	%rsp, %rbp
 1929              		.cfi_def_cfa_register 6
 1930 0004 4883EC20 		subq	$32, %rsp
 1931 0008 48897DE8 		movq	%rdi, -24(%rbp)
 563:/usr/include/c++/7/bits/stl_vector.h ****       { return iterator(this->_M_impl._M_start); }
 1932              		.loc 2 563 0
 1933 000c 64488B04 		movq	%fs:40, %rax
 1933      25280000 
 1933      00
 1934 0015 488945F8 		movq	%rax, -8(%rbp)
 1935 0019 31C0     		xorl	%eax, %eax
 564:/usr/include/c++/7/bits/stl_vector.h **** 
 1936              		.loc 2 564 0
 1937 001b 488B55E8 		movq	-24(%rbp), %rdx
 1938 001f 488D45F0 		leaq	-16(%rbp), %rax
 1939 0023 4889D6   		movq	%rdx, %rsi
 1940 0026 4889C7   		movq	%rax, %rdi
 1941 0029 E8000000 		call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
 1941      00
 1942 002e 488B45F0 		movq	-16(%rbp), %rax
 1943 0032 488B4DF8 		movq	-8(%rbp), %rcx
 1944 0036 6448330C 		xorq	%fs:40, %rcx
 1944      25280000 
 1944      00
 1945 003f 7405     		je	.L92
 1946 0041 E8000000 		call	__stack_chk_fail@PLT
 1946      00
 1947              	.L92:
 1948 0046 C9       		leave
 1949              		.cfi_def_cfa 7, 8
 1950 0047 C3       		ret
 1951              		.cfi_endproc
 1952              	.LFE2124:
 1954              		.section	.text._ZNSt6vectorIdSaIdEE3endEv,"axG",@progbits,_ZNSt6vectorIdSaIdEE3endEv,comdat
 1955              		.align 2
 1956              		.weak	_ZNSt6vectorIdSaIdEE3endEv
 1958              	_ZNSt6vectorIdSaIdEE3endEv:
 1959              	.LFB2125:
 581:/usr/include/c++/7/bits/stl_vector.h ****       { return iterator(this->_M_impl._M_finish); }
 1960              		.loc 2 581 0
 1961              		.cfi_startproc
 1962 0000 55       		pushq	%rbp
 1963              		.cfi_def_cfa_offset 16
 1964              		.cfi_offset 6, -16
 1965 0001 4889E5   		movq	%rsp, %rbp
 1966              		.cfi_def_cfa_register 6
 1967 0004 4883EC20 		subq	$32, %rsp
 1968 0008 48897DE8 		movq	%rdi, -24(%rbp)
 581:/usr/include/c++/7/bits/stl_vector.h ****       { return iterator(this->_M_impl._M_finish); }
 1969              		.loc 2 581 0
 1970 000c 64488B04 		movq	%fs:40, %rax
 1970      25280000 
 1970      00
 1971 0015 488945F8 		movq	%rax, -8(%rbp)
 1972 0019 31C0     		xorl	%eax, %eax
 582:/usr/include/c++/7/bits/stl_vector.h **** 
 1973              		.loc 2 582 0
 1974 001b 488B45E8 		movq	-24(%rbp), %rax
 1975 001f 488D5008 		leaq	8(%rax), %rdx
 1976 0023 488D45F0 		leaq	-16(%rbp), %rax
 1977 0027 4889D6   		movq	%rdx, %rsi
 1978 002a 4889C7   		movq	%rax, %rdi
 1979 002d E8000000 		call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
 1979      00
 1980 0032 488B45F0 		movq	-16(%rbp), %rax
 1981 0036 488B4DF8 		movq	-8(%rbp), %rcx
 1982 003a 6448330C 		xorq	%fs:40, %rcx
 1982      25280000 
 1982      00
 1983 0043 7405     		je	.L95
 1984 0045 E8000000 		call	__stack_chk_fail@PLT
 1984      00
 1985              	.L95:
 1986 004a C9       		leave
 1987              		.cfi_def_cfa 7, 8
 1988 004b C3       		ret
 1989              		.cfi_endproc
 1990              	.LFE2125:
 1992              		.section	.text._ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@pr
 1993              		.weak	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
 1995              	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
 1996              	.LFB2126:
 1997              		.file 3 "/usr/include/c++/7/bits/stl_iterator.h"
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
 1998              		.loc 3 880 0
 1999              		.cfi_startproc
 2000 0000 55       		pushq	%rbp
 2001              		.cfi_def_cfa_offset 16
 2002              		.cfi_offset 6, -16
 2003 0001 4889E5   		movq	%rsp, %rbp
 2004              		.cfi_def_cfa_register 6
 2005 0004 53       		pushq	%rbx
 2006 0005 4883EC18 		subq	$24, %rsp
 2007              		.cfi_offset 3, -24
 2008 0009 48897DE8 		movq	%rdi, -24(%rbp)
 2009 000d 488975E0 		movq	%rsi, -32(%rbp)
 881:/usr/include/c++/7/bits/stl_iterator.h **** 	       const __normal_iterator<_Iterator, _Container>& __rhs)
 882:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 883:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() != __rhs.base(); }
 2010              		.loc 3 883 0
 2011 0011 488B45E8 		movq	-24(%rbp), %rax
 2012 0015 4889C7   		movq	%rax, %rdi
 2013 0018 E8000000 		call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
 2013      00
 2014 001d 488B18   		movq	(%rax), %rbx
 2015 0020 488B45E0 		movq	-32(%rbp), %rax
 2016 0024 4889C7   		movq	%rax, %rdi
 2017 0027 E8000000 		call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
 2017      00
 2018 002c 488B00   		movq	(%rax), %rax
 2019 002f 4839C3   		cmpq	%rax, %rbx
 2020 0032 0F95C0   		setne	%al
 2021 0035 4883C418 		addq	$24, %rsp
 2022 0039 5B       		popq	%rbx
 2023 003a 5D       		popq	%rbp
 2024              		.cfi_def_cfa 7, 8
 2025 003b C3       		ret
 2026              		.cfi_endproc
 2027              	.LFE2126:
 2029              		.section	.text._ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv,"axG",@progbits,_ZN9__gnu
 2030              		.align 2
 2031              		.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
 2033              	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv:
 2034              	.LFB2127:
 800:/usr/include/c++/7/bits/stl_iterator.h ****       {
 2035              		.loc 3 800 0
 2036              		.cfi_startproc
 2037 0000 55       		pushq	%rbp
 2038              		.cfi_def_cfa_offset 16
 2039              		.cfi_offset 6, -16
 2040 0001 4889E5   		movq	%rsp, %rbp
 2041              		.cfi_def_cfa_register 6
 2042 0004 48897DF8 		movq	%rdi, -8(%rbp)
 802:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 2043              		.loc 3 802 0
 2044 0008 488B45F8 		movq	-8(%rbp), %rax
 2045 000c 488B00   		movq	(%rax), %rax
 2046 000f 488D5008 		leaq	8(%rax), %rdx
 2047 0013 488B45F8 		movq	-8(%rbp), %rax
 2048 0017 488910   		movq	%rdx, (%rax)
 803:/usr/include/c++/7/bits/stl_iterator.h ****       }
 2049              		.loc 3 803 0
 2050 001a 488B45F8 		movq	-8(%rbp), %rax
 804:/usr/include/c++/7/bits/stl_iterator.h **** 
 2051              		.loc 3 804 0
 2052 001e 5D       		popq	%rbp
 2053              		.cfi_def_cfa 7, 8
 2054 001f C3       		ret
 2055              		.cfi_endproc
 2056              	.LFE2127:
 2058              		.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv,"axG",@progbits,_ZNK9__g
 2059              		.align 2
 2060              		.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
 2062              	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv:
 2063              	.LFB2128:
 792:/usr/include/c++/7/bits/stl_iterator.h ****       { return *_M_current; }
 2064              		.loc 3 792 0
 2065              		.cfi_startproc
 2066 0000 55       		pushq	%rbp
 2067              		.cfi_def_cfa_offset 16
 2068              		.cfi_offset 6, -16
 2069 0001 4889E5   		movq	%rsp, %rbp
 2070              		.cfi_def_cfa_register 6
 2071 0004 48897DF8 		movq	%rdi, -8(%rbp)
 793:/usr/include/c++/7/bits/stl_iterator.h **** 
 2072              		.loc 3 793 0
 2073 0008 488B45F8 		movq	-8(%rbp), %rax
 2074 000c 488B00   		movq	(%rax), %rax
 2075 000f 5D       		popq	%rbp
 2076              		.cfi_def_cfa 7, 8
 2077 0010 C3       		ret
 2078              		.cfi_endproc
 2079              	.LFE2128:
 2081              		.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseId
 2082              		.align 2
 2083              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
 2085              	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev:
 2086              	.LFB2240:
  81:/usr/include/c++/7/bits/stl_vector.h ****       : public _Tp_alloc_type
 2087              		.loc 2 81 0
 2088              		.cfi_startproc
 2089 0000 55       		pushq	%rbp
 2090              		.cfi_def_cfa_offset 16
 2091              		.cfi_offset 6, -16
 2092 0001 4889E5   		movq	%rsp, %rbp
 2093              		.cfi_def_cfa_register 6
 2094 0004 4883EC10 		subq	$16, %rsp
 2095 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2096              	.LBB23:
  81:/usr/include/c++/7/bits/stl_vector.h ****       : public _Tp_alloc_type
 2097              		.loc 2 81 0
 2098 000c 488B45F8 		movq	-8(%rbp), %rax
 2099 0010 4889C7   		movq	%rax, %rdi
 2100 0013 E8000000 		call	_ZNSaIdED2Ev
 2100      00
 2101              	.LBE23:
 2102 0018 90       		nop
 2103 0019 C9       		leave
 2104              		.cfi_def_cfa 7, 8
 2105 001a C3       		ret
 2106              		.cfi_endproc
 2107              	.LFE2240:
 2109              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
 2110              		.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
 2111              		.section	.text._ZNSt12_Vector_baseIdSaIdEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5Ev,com
 2112              		.align 2
 2113              		.weak	_ZNSt12_Vector_baseIdSaIdEEC2Ev
 2115              	_ZNSt12_Vector_baseIdSaIdEEC2Ev:
 2116              	.LFB2242:
 126:/usr/include/c++/7/bits/stl_vector.h ****       : _M_impl() { }
 2117              		.loc 2 126 0
 2118              		.cfi_startproc
 2119 0000 55       		pushq	%rbp
 2120              		.cfi_def_cfa_offset 16
 2121              		.cfi_offset 6, -16
 2122 0001 4889E5   		movq	%rsp, %rbp
 2123              		.cfi_def_cfa_register 6
 2124 0004 4883EC10 		subq	$16, %rsp
 2125 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2126              	.LBB24:
 127:/usr/include/c++/7/bits/stl_vector.h **** 
 2127              		.loc 2 127 0
 2128 000c 488B45F8 		movq	-8(%rbp), %rax
 2129 0010 4889C7   		movq	%rax, %rdi
 2130 0013 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
 2130      00
 2131              	.LBE24:
 2132 0018 90       		nop
 2133 0019 C9       		leave
 2134              		.cfi_def_cfa 7, 8
 2135 001a C3       		ret
 2136              		.cfi_endproc
 2137              	.LFE2242:
 2139              		.weak	_ZNSt12_Vector_baseIdSaIdEEC1Ev
 2140              		.set	_ZNSt12_Vector_baseIdSaIdEEC1Ev,_ZNSt12_Vector_baseIdSaIdEEC2Ev
 2141              		.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,com
 2142              		.align 2
 2143              		.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
 2145              	_ZNSt12_Vector_baseIdSaIdEED2Ev:
 2146              	.LFB2245:
 161:/usr/include/c++/7/bits/stl_vector.h ****       { _M_deallocate(this->_M_impl._M_start, this->_M_impl._M_end_of_storage
 2147              		.loc 2 161 0
 2148              		.cfi_startproc
 2149              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 2150              		.cfi_lsda 0x1b,.LLSDA2245
 2151 0000 55       		pushq	%rbp
 2152              		.cfi_def_cfa_offset 16
 2153              		.cfi_offset 6, -16
 2154 0001 4889E5   		movq	%rsp, %rbp
 2155              		.cfi_def_cfa_register 6
 2156 0004 4883EC10 		subq	$16, %rsp
 2157 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2158              	.LBB25:
 162:/usr/include/c++/7/bits/stl_vector.h **** 		      - this->_M_impl._M_start); }
 2159              		.loc 2 162 0
 2160 000c 488B45F8 		movq	-8(%rbp), %rax
 2161 0010 488B4010 		movq	16(%rax), %rax
 163:/usr/include/c++/7/bits/stl_vector.h **** 
 2162              		.loc 2 163 0
 2163 0014 4889C2   		movq	%rax, %rdx
 2164 0017 488B45F8 		movq	-8(%rbp), %rax
 2165 001b 488B00   		movq	(%rax), %rax
 2166 001e 4829C2   		subq	%rax, %rdx
 2167 0021 4889D0   		movq	%rdx, %rax
 2168 0024 48C1F803 		sarq	$3, %rax
 162:/usr/include/c++/7/bits/stl_vector.h **** 		      - this->_M_impl._M_start); }
 2169              		.loc 2 162 0
 2170 0028 4889C2   		movq	%rax, %rdx
 2171 002b 488B45F8 		movq	-8(%rbp), %rax
 2172 002f 488B08   		movq	(%rax), %rcx
 2173 0032 488B45F8 		movq	-8(%rbp), %rax
 2174 0036 4889CE   		movq	%rcx, %rsi
 2175 0039 4889C7   		movq	%rax, %rdi
 2176 003c E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 2176      00
 163:/usr/include/c++/7/bits/stl_vector.h **** 
 2177              		.loc 2 163 0
 2178 0041 488B45F8 		movq	-8(%rbp), %rax
 2179 0045 4889C7   		movq	%rax, %rdi
 2180 0048 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
 2180      00
 2181              	.LBE25:
 2182 004d 90       		nop
 2183 004e C9       		leave
 2184              		.cfi_def_cfa 7, 8
 2185 004f C3       		ret
 2186              		.cfi_endproc
 2187              	.LFE2245:
 2188              		.section	.gcc_except_table
 2189              	.LLSDA2245:
 2190 008b FF       		.byte	0xff
 2191 008c FF       		.byte	0xff
 2192 008d 01       		.byte	0x1
 2193 008e 00       		.uleb128 .LLSDACSE2245-.LLSDACSB2245
 2194              	.LLSDACSB2245:
 2195              	.LLSDACSE2245:
 2196              		.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,com
 2198              		.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
 2199              		.set	_ZNSt12_Vector_baseIdSaIdEED1Ev,_ZNSt12_Vector_baseIdSaIdEED2Ev
 2200              		.section	.text._ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_b
 2201              		.align 2
 2202              		.weak	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2204              	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
 2205              	.LFB2247:
 115:/usr/include/c++/7/bits/stl_vector.h ****       { return *static_cast<_Tp_alloc_type*>(&this->_M_impl); }
 2206              		.loc 2 115 0
 2207              		.cfi_startproc
 2208 0000 55       		pushq	%rbp
 2209              		.cfi_def_cfa_offset 16
 2210              		.cfi_offset 6, -16
 2211 0001 4889E5   		movq	%rsp, %rbp
 2212              		.cfi_def_cfa_register 6
 2213 0004 48897DF8 		movq	%rdi, -8(%rbp)
 116:/usr/include/c++/7/bits/stl_vector.h **** 
 2214              		.loc 2 116 0
 2215 0008 488B45F8 		movq	-8(%rbp), %rax
 2216 000c 5D       		popq	%rbp
 2217              		.cfi_def_cfa 7, 8
 2218 000d C3       		ret
 2219              		.cfi_endproc
 2220              	.LFE2247:
 2222              		.section	.text._ZSt8_DestroyIPddEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPddEvT_S1_RSaIT0_E,c
 2223              		.weak	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 2225              	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E:
 2226              	.LFB2248:
 2227              		.file 4 "/usr/include/c++/7/bits/stl_construct.h"
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
 2228              		.loc 4 203 0
 2229              		.cfi_startproc
 2230 0000 55       		pushq	%rbp
 2231              		.cfi_def_cfa_offset 16
 2232              		.cfi_offset 6, -16
 2233 0001 4889E5   		movq	%rsp, %rbp
 2234              		.cfi_def_cfa_register 6
 2235 0004 4883EC20 		subq	$32, %rsp
 2236 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2237 000c 488975F0 		movq	%rsi, -16(%rbp)
 2238 0010 488955E8 		movq	%rdx, -24(%rbp)
 204:/usr/include/c++/7/bits/stl_construct.h **** 	     allocator<_Tp>&)
 205:/usr/include/c++/7/bits/stl_construct.h ****     {
 206:/usr/include/c++/7/bits/stl_construct.h ****       _Destroy(__first, __last);
 2239              		.loc 4 206 0
 2240 0014 488B55F0 		movq	-16(%rbp), %rdx
 2241 0018 488B45F8 		movq	-8(%rbp), %rax
 2242 001c 4889D6   		movq	%rdx, %rsi
 2243 001f 4889C7   		movq	%rax, %rdi
 2244 0022 E8000000 		call	_ZSt8_DestroyIPdEvT_S1_
 2244      00
 207:/usr/include/c++/7/bits/stl_construct.h ****     }
 2245              		.loc 4 207 0
 2246 0027 90       		nop
 2247 0028 C9       		leave
 2248              		.cfi_def_cfa 7, 8
 2249 0029 C3       		ret
 2250              		.cfi_endproc
 2251              	.LFE2248:
 2253              		.section	.rodata
 2254              	.LC28:
 2255 01ae 76656374 		.string	"vector::_M_default_append"
 2255      6F723A3A 
 2255      5F4D5F64 
 2255      65666175 
 2255      6C745F61 
 2256              		.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_
 2257              		.align 2
 2258              		.weak	_ZNSt6vectorIdSaIdEE17_M_default_appendEm
 2260              	_ZNSt6vectorIdSaIdEE17_M_default_appendEm:
 2261              	.LFB2254:
 2262              		.file 5 "/usr/include/c++/7/bits/vector.tcc"
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
 2263              		.loc 5 554 0
 2264              		.cfi_startproc
 2265              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 2266              		.cfi_lsda 0x1b,.LLSDA2254
 2267 0000 55       		pushq	%rbp
 2268              		.cfi_def_cfa_offset 16
 2269              		.cfi_offset 6, -16
 2270 0001 4889E5   		movq	%rsp, %rbp
 2271              		.cfi_def_cfa_register 6
 2272 0004 53       		pushq	%rbx
 2273 0005 4883EC38 		subq	$56, %rsp
 2274              		.cfi_offset 3, -24
 2275 0009 48897DC8 		movq	%rdi, -56(%rbp)
 2276 000d 488975C0 		movq	%rsi, -64(%rbp)
 2277              	.LBB26:
 555:/usr/include/c++/7/bits/vector.tcc ****     _M_default_append(size_type __n)
 556:/usr/include/c++/7/bits/vector.tcc ****     {
 557:/usr/include/c++/7/bits/vector.tcc ****       if (__n != 0)
 2278              		.loc 5 557 0
 2279 0011 48837DC0 		cmpq	$0, -64(%rbp)
 2279      00
 2280 0016 0F84E801 		je	.L116
 2280      0000
 2281              	.LBB27:
 2282              	.LBB28:
 558:/usr/include/c++/7/bits/vector.tcc **** 	{
 559:/usr/include/c++/7/bits/vector.tcc **** 	  if (size_type(this->_M_impl._M_end_of_storage
 2283              		.loc 5 559 0
 2284 001c 488B45C8 		movq	-56(%rbp), %rax
 2285 0020 488B4010 		movq	16(%rax), %rax
 560:/usr/include/c++/7/bits/vector.tcc **** 			- this->_M_impl._M_finish) >= __n)
 2286              		.loc 5 560 0
 2287 0024 4889C2   		movq	%rax, %rdx
 2288 0027 488B45C8 		movq	-56(%rbp), %rax
 2289 002b 488B4008 		movq	8(%rax), %rax
 2290 002f 4829C2   		subq	%rax, %rdx
 2291 0032 4889D0   		movq	%rdx, %rax
 2292 0035 48C1F803 		sarq	$3, %rax
 559:/usr/include/c++/7/bits/vector.tcc **** 			- this->_M_impl._M_finish) >= __n)
 2293              		.loc 5 559 0
 2294 0039 483945C0 		cmpq	%rax, -64(%rbp)
 2295 003d 7736     		ja	.L110
 561:/usr/include/c++/7/bits/vector.tcc **** 	    {
 562:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_finish =
 563:/usr/include/c++/7/bits/vector.tcc **** 		std::__uninitialized_default_n_a(this->_M_impl._M_finish,
 564:/usr/include/c++/7/bits/vector.tcc **** 						 __n, _M_get_Tp_allocator());
 2296              		.loc 5 564 0
 2297 003f 488B45C8 		movq	-56(%rbp), %rax
 2298 0043 4889C7   		movq	%rax, %rdi
 2299 0046 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2299      00
 2300 004b 4889C2   		movq	%rax, %rdx
 563:/usr/include/c++/7/bits/vector.tcc **** 						 __n, _M_get_Tp_allocator());
 2301              		.loc 5 563 0
 2302 004e 488B45C8 		movq	-56(%rbp), %rax
 2303 0052 488B4008 		movq	8(%rax), %rax
 2304 0056 488B4DC0 		movq	-64(%rbp), %rcx
 2305 005a 4889CE   		movq	%rcx, %rsi
 2306 005d 4889C7   		movq	%rax, %rdi
 2307              	.LEHB24:
 2308 0060 E8000000 		call	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
 2308      00
 2309 0065 4889C2   		movq	%rax, %rdx
 562:/usr/include/c++/7/bits/vector.tcc **** 		std::__uninitialized_default_n_a(this->_M_impl._M_finish,
 2310              		.loc 5 562 0
 2311 0068 488B45C8 		movq	-56(%rbp), %rax
 2312 006c 48895008 		movq	%rdx, 8(%rax)
 2313              	.LBE28:
 2314              	.LBE27:
 2315              	.LBE26:
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
 2316              		.loc 5 600 0
 2317 0070 E98F0100 		jmp	.L116
 2317      00
 2318              	.L110:
 2319              	.LBB35:
 2320              	.LBB33:
 2321              	.LBB31:
 2322              	.LBB29:
 568:/usr/include/c++/7/bits/vector.tcc **** 		_M_check_len(__n, "vector::_M_default_append");
 2323              		.loc 5 568 0
 2324 0075 488B4DC0 		movq	-64(%rbp), %rcx
 2325 0079 488B45C8 		movq	-56(%rbp), %rax
 2326 007d 488D1500 		leaq	.LC28(%rip), %rdx
 2326      000000
 2327 0084 4889CE   		movq	%rcx, %rsi
 2328 0087 4889C7   		movq	%rax, %rdi
 2329 008a E8000000 		call	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
 2329      00
 2330 008f 488945D8 		movq	%rax, -40(%rbp)
 570:/usr/include/c++/7/bits/vector.tcc **** 	      pointer __new_start(this->_M_allocate(__len));
 2331              		.loc 5 570 0
 2332 0093 488B45C8 		movq	-56(%rbp), %rax
 2333 0097 4889C7   		movq	%rax, %rdi
 2334 009a E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2334      00
 2335 009f 488945E0 		movq	%rax, -32(%rbp)
 571:/usr/include/c++/7/bits/vector.tcc **** 	      pointer __new_finish(__new_start);
 2336              		.loc 5 571 0
 2337 00a3 488B45C8 		movq	-56(%rbp), %rax
 2338 00a7 488B55D8 		movq	-40(%rbp), %rdx
 2339 00ab 4889D6   		movq	%rdx, %rsi
 2340 00ae 4889C7   		movq	%rax, %rdi
 2341 00b1 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
 2341      00
 2342              	.LEHE24:
 2343 00b6 488945E8 		movq	%rax, -24(%rbp)
 572:/usr/include/c++/7/bits/vector.tcc **** 	      __try
 2344              		.loc 5 572 0
 2345 00ba 488B45E8 		movq	-24(%rbp), %rax
 2346 00be 488945D0 		movq	%rax, -48(%rbp)
 578:/usr/include/c++/7/bits/vector.tcc **** 		  __new_finish =
 2347              		.loc 5 578 0
 2348 00c2 488B45C8 		movq	-56(%rbp), %rax
 2349 00c6 4889C7   		movq	%rax, %rdi
 2350 00c9 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2350      00
 2351 00ce 4889C1   		movq	%rax, %rcx
 577:/usr/include/c++/7/bits/vector.tcc **** 		     __new_start, _M_get_Tp_allocator());
 2352              		.loc 5 577 0
 2353 00d1 488B45C8 		movq	-56(%rbp), %rax
 2354 00d5 488B7008 		movq	8(%rax), %rsi
 2355 00d9 488B45C8 		movq	-56(%rbp), %rax
 2356 00dd 488B00   		movq	(%rax), %rax
 575:/usr/include/c++/7/bits/vector.tcc **** 		    = std::__uninitialized_move_if_noexcept_a
 2357              		.loc 5 575 0
 2358 00e0 488B55E8 		movq	-24(%rbp), %rdx
 2359 00e4 4889C7   		movq	%rax, %rdi
 2360              	.LEHB25:
 2361 00e7 E8000000 		call	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_
 2361      00
 2362 00ec 488945D0 		movq	%rax, -48(%rbp)
 581:/usr/include/c++/7/bits/vector.tcc **** 		}
 2363              		.loc 5 581 0
 2364 00f0 488B45C8 		movq	-56(%rbp), %rax
 2365 00f4 4889C7   		movq	%rax, %rdi
 2366 00f7 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2366      00
 2367 00fc 4889C2   		movq	%rax, %rdx
 579:/usr/include/c++/7/bits/vector.tcc **** 		    std::__uninitialized_default_n_a(__new_finish, __n,
 2368              		.loc 5 579 0
 2369 00ff 488B4DC0 		movq	-64(%rbp), %rcx
 2370 0103 488B45D0 		movq	-48(%rbp), %rax
 2371 0107 4889CE   		movq	%rcx, %rsi
 2372 010a 4889C7   		movq	%rax, %rdi
 2373 010d E8000000 		call	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
 2373      00
 2374              	.LEHE25:
 579:/usr/include/c++/7/bits/vector.tcc **** 		    std::__uninitialized_default_n_a(__new_finish, __n,
 2375              		.loc 5 579 0 is_stmt 0 discriminator 1
 2376 0112 488945D0 		movq	%rax, -48(%rbp)
 591:/usr/include/c++/7/bits/vector.tcc **** 	      _M_deallocate(this->_M_impl._M_start,
 2377              		.loc 5 591 0 is_stmt 1 discriminator 1
 2378 0116 488B45C8 		movq	-56(%rbp), %rax
 2379 011a 4889C7   		movq	%rax, %rdi
 2380 011d E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2380      00
 2381 0122 4889C2   		movq	%rax, %rdx
 590:/usr/include/c++/7/bits/vector.tcc **** 			    _M_get_Tp_allocator());
 2382              		.loc 5 590 0 discriminator 1
 2383 0125 488B45C8 		movq	-56(%rbp), %rax
 2384 0129 488B4808 		movq	8(%rax), %rcx
 2385 012d 488B45C8 		movq	-56(%rbp), %rax
 2386 0131 488B00   		movq	(%rax), %rax
 2387 0134 4889CE   		movq	%rcx, %rsi
 2388 0137 4889C7   		movq	%rax, %rdi
 2389              	.LEHB26:
 2390 013a E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 2390      00
 592:/usr/include/c++/7/bits/vector.tcc **** 			    this->_M_impl._M_end_of_storage
 2391              		.loc 5 592 0 discriminator 1
 2392 013f 488B45C8 		movq	-56(%rbp), %rax
 593:/usr/include/c++/7/bits/vector.tcc **** 			    - this->_M_impl._M_start);
 2393              		.loc 5 593 0 discriminator 1
 2394 0143 488B55C8 		movq	-56(%rbp), %rdx
 2395 0147 488B5210 		movq	16(%rdx), %rdx
 594:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_start = __new_start;
 2396              		.loc 5 594 0 discriminator 1
 2397 014b 4889D1   		movq	%rdx, %rcx
 2398 014e 488B55C8 		movq	-56(%rbp), %rdx
 2399 0152 488B12   		movq	(%rdx), %rdx
 2400 0155 4829D1   		subq	%rdx, %rcx
 2401 0158 4889CA   		movq	%rcx, %rdx
 2402 015b 48C1FA03 		sarq	$3, %rdx
 592:/usr/include/c++/7/bits/vector.tcc **** 			    this->_M_impl._M_end_of_storage
 2403              		.loc 5 592 0 discriminator 1
 2404 015f 4889D6   		movq	%rdx, %rsi
 2405 0162 488B55C8 		movq	-56(%rbp), %rdx
 2406 0166 488B0A   		movq	(%rdx), %rcx
 2407 0169 4889F2   		movq	%rsi, %rdx
 2408 016c 4889CE   		movq	%rcx, %rsi
 2409 016f 4889C7   		movq	%rax, %rdi
 2410 0172 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 2410      00
 2411              	.LEHE26:
 595:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_finish = __new_finish;
 2412              		.loc 5 595 0 discriminator 1
 2413 0177 488B45C8 		movq	-56(%rbp), %rax
 2414 017b 488B55E8 		movq	-24(%rbp), %rdx
 2415 017f 488910   		movq	%rdx, (%rax)
 596:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_end_of_storage = __new_start + __len;
 2416              		.loc 5 596 0 discriminator 1
 2417 0182 488B45C8 		movq	-56(%rbp), %rax
 2418 0186 488B55D0 		movq	-48(%rbp), %rdx
 2419 018a 48895008 		movq	%rdx, 8(%rax)
 597:/usr/include/c++/7/bits/vector.tcc **** 	    }
 2420              		.loc 5 597 0 discriminator 1
 2421 018e 488B45D8 		movq	-40(%rbp), %rax
 2422 0192 488D14C5 		leaq	0(,%rax,8), %rdx
 2422      00000000 
 2423 019a 488B45E8 		movq	-24(%rbp), %rax
 2424 019e 4801C2   		addq	%rax, %rdx
 2425 01a1 488B45C8 		movq	-56(%rbp), %rax
 2426 01a5 48895010 		movq	%rdx, 16(%rax)
 2427              	.LBE29:
 2428              	.LBE31:
 2429              	.LBE33:
 2430              	.LBE35:
 2431              		.loc 5 600 0 discriminator 1
 2432 01a9 EB59     		jmp	.L116
 2433              	.L114:
 2434              	.LBB36:
 2435              	.LBB34:
 2436              	.LBB32:
 2437              	.LBB30:
 583:/usr/include/c++/7/bits/vector.tcc **** 		{
 2438              		.loc 5 583 0
 2439 01ab 4889C7   		movq	%rax, %rdi
 2440 01ae E8000000 		call	__cxa_begin_catch@PLT
 2440      00
 586:/usr/include/c++/7/bits/vector.tcc **** 		  _M_deallocate(__new_start, __len);
 2441              		.loc 5 586 0
 2442 01b3 488B45C8 		movq	-56(%rbp), %rax
 2443 01b7 4889C7   		movq	%rax, %rdi
 2444 01ba E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2444      00
 2445 01bf 4889C2   		movq	%rax, %rdx
 585:/usr/include/c++/7/bits/vector.tcc **** 				_M_get_Tp_allocator());
 2446              		.loc 5 585 0
 2447 01c2 488B4DD0 		movq	-48(%rbp), %rcx
 2448 01c6 488B45E8 		movq	-24(%rbp), %rax
 2449 01ca 4889CE   		movq	%rcx, %rsi
 2450 01cd 4889C7   		movq	%rax, %rdi
 2451              	.LEHB27:
 2452 01d0 E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 2452      00
 587:/usr/include/c++/7/bits/vector.tcc **** 		  __throw_exception_again;
 2453              		.loc 5 587 0
 2454 01d5 488B45C8 		movq	-56(%rbp), %rax
 2455 01d9 488B55D8 		movq	-40(%rbp), %rdx
 2456 01dd 488B4DE8 		movq	-24(%rbp), %rcx
 2457 01e1 4889CE   		movq	%rcx, %rsi
 2458 01e4 4889C7   		movq	%rax, %rdi
 2459 01e7 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 2459      00
 588:/usr/include/c++/7/bits/vector.tcc **** 		}
 2460              		.loc 5 588 0
 2461 01ec E8000000 		call	__cxa_rethrow@PLT
 2461      00
 2462              	.LEHE27:
 2463              	.L115:
 2464 01f1 4889C3   		movq	%rax, %rbx
 583:/usr/include/c++/7/bits/vector.tcc **** 		{
 2465              		.loc 5 583 0
 2466 01f4 E8000000 		call	__cxa_end_catch@PLT
 2466      00
 2467 01f9 4889D8   		movq	%rbx, %rax
 2468 01fc 4889C7   		movq	%rax, %rdi
 2469              	.LEHB28:
 2470 01ff E8000000 		call	_Unwind_Resume@PLT
 2470      00
 2471              	.LEHE28:
 2472              	.L116:
 2473              	.LBE30:
 2474              	.LBE32:
 2475              	.LBE34:
 2476              	.LBE36:
 2477              		.loc 5 600 0
 2478 0204 90       		nop
 2479 0205 4883C438 		addq	$56, %rsp
 2480 0209 5B       		popq	%rbx
 2481 020a 5D       		popq	%rbp
 2482              		.cfi_def_cfa 7, 8
 2483 020b C3       		ret
 2484              		.cfi_endproc
 2485              	.LFE2254:
 2486              		.section	.gcc_except_table
 2487 008f 00       		.align 4
 2488              	.LLSDA2254:
 2489 0090 FF       		.byte	0xff
 2490 0091 9B       		.byte	0x9b
 2491 0092 25       		.uleb128 .LLSDATT2254-.LLSDATTD2254
 2492              	.LLSDATTD2254:
 2493 0093 01       		.byte	0x1
 2494 0094 1A       		.uleb128 .LLSDACSE2254-.LLSDACSB2254
 2495              	.LLSDACSB2254:
 2496 0095 60       		.uleb128 .LEHB24-.LFB2254
 2497 0096 56       		.uleb128 .LEHE24-.LEHB24
 2498 0097 00       		.uleb128 0
 2499 0098 00       		.uleb128 0
 2500 0099 E701     		.uleb128 .LEHB25-.LFB2254
 2501 009b 2B       		.uleb128 .LEHE25-.LEHB25
 2502 009c AB03     		.uleb128 .L114-.LFB2254
 2503 009e 01       		.uleb128 0x1
 2504 009f BA02     		.uleb128 .LEHB26-.LFB2254
 2505 00a1 3D       		.uleb128 .LEHE26-.LEHB26
 2506 00a2 00       		.uleb128 0
 2507 00a3 00       		.uleb128 0
 2508 00a4 D003     		.uleb128 .LEHB27-.LFB2254
 2509 00a6 21       		.uleb128 .LEHE27-.LEHB27
 2510 00a7 F103     		.uleb128 .L115-.LFB2254
 2511 00a9 00       		.uleb128 0
 2512 00aa FF03     		.uleb128 .LEHB28-.LFB2254
 2513 00ac 05       		.uleb128 .LEHE28-.LEHB28
 2514 00ad 00       		.uleb128 0
 2515 00ae 00       		.uleb128 0
 2516              	.LLSDACSE2254:
 2517 00af 01       		.byte	0x1
 2518 00b0 00       		.byte	0
 2519 00b1 000000   		.align 4
 2520 00b4 00000000 		.long	0
 2521              	
 2522              	.LLSDATT2254:
 2523              		.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_
 2525              		.section	.text._ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd,"axG",@progbits,_ZNSt6vectorIdSaIdEE15_M_e
 2526              		.align 2
 2527              		.weak	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd
 2529              	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd:
 2530              	.LFB2255:
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
 2531              		.loc 2 1511 0
 2532              		.cfi_startproc
 2533              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 2534              		.cfi_lsda 0x1b,.LLSDA2255
 2535 0000 55       		pushq	%rbp
 2536              		.cfi_def_cfa_offset 16
 2537              		.cfi_offset 6, -16
 2538 0001 4889E5   		movq	%rsp, %rbp
 2539              		.cfi_def_cfa_register 6
 2540 0004 4883EC10 		subq	$16, %rsp
 2541 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2542 000c 488975F0 		movq	%rsi, -16(%rbp)
1512:/usr/include/c++/7/bits/stl_vector.h ****       {
1513:/usr/include/c++/7/bits/stl_vector.h **** 	std::_Destroy(__pos, this->_M_impl._M_finish, _M_get_Tp_allocator());
 2543              		.loc 2 1513 0
 2544 0010 488B45F8 		movq	-8(%rbp), %rax
 2545 0014 4889C7   		movq	%rax, %rdi
 2546 0017 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2546      00
 2547 001c 4889C2   		movq	%rax, %rdx
 2548 001f 488B45F8 		movq	-8(%rbp), %rax
 2549 0023 488B4808 		movq	8(%rax), %rcx
 2550 0027 488B45F0 		movq	-16(%rbp), %rax
 2551 002b 4889CE   		movq	%rcx, %rsi
 2552 002e 4889C7   		movq	%rax, %rdi
 2553 0031 E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 2553      00
1514:/usr/include/c++/7/bits/stl_vector.h **** 	this->_M_impl._M_finish = __pos;
 2554              		.loc 2 1514 0
 2555 0036 488B45F8 		movq	-8(%rbp), %rax
 2556 003a 488B55F0 		movq	-16(%rbp), %rdx
 2557 003e 48895008 		movq	%rdx, 8(%rax)
1515:/usr/include/c++/7/bits/stl_vector.h ****       }
 2558              		.loc 2 1515 0
 2559 0042 90       		nop
 2560 0043 C9       		leave
 2561              		.cfi_def_cfa 7, 8
 2562 0044 C3       		ret
 2563              		.cfi_endproc
 2564              	.LFE2255:
 2565              		.section	.gcc_except_table
 2566              	.LLSDA2255:
 2567 00b8 FF       		.byte	0xff
 2568 00b9 FF       		.byte	0xff
 2569 00ba 01       		.byte	0x1
 2570 00bb 00       		.uleb128 .LLSDACSE2255-.LLSDACSB2255
 2571              	.LLSDACSB2255:
 2572              	.LLSDACSE2255:
 2573              		.section	.text._ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd,"axG",@progbits,_ZNSt6vectorIdSaIdEE15_M_e
 2575              		.section	.text._ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_,"axG",@progbits,_ZN9_
 2576              		.align 2
 2577              		.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
 2579              	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_:
 2580              	.LFB2266:
 779:/usr/include/c++/7/bits/stl_iterator.h ****       : _M_current(__i) { }
 2581              		.loc 3 779 0
 2582              		.cfi_startproc
 2583 0000 55       		pushq	%rbp
 2584              		.cfi_def_cfa_offset 16
 2585              		.cfi_offset 6, -16
 2586 0001 4889E5   		movq	%rsp, %rbp
 2587              		.cfi_def_cfa_register 6
 2588 0004 48897DF8 		movq	%rdi, -8(%rbp)
 2589 0008 488975F0 		movq	%rsi, -16(%rbp)
 2590              	.LBB37:
 780:/usr/include/c++/7/bits/stl_iterator.h **** 
 2591              		.loc 3 780 0
 2592 000c 488B45F0 		movq	-16(%rbp), %rax
 2593 0010 488B10   		movq	(%rax), %rdx
 2594 0013 488B45F8 		movq	-8(%rbp), %rax
 2595 0017 488910   		movq	%rdx, (%rax)
 2596              	.LBE37:
 2597 001a 90       		nop
 2598 001b 5D       		popq	%rbp
 2599              		.cfi_def_cfa 7, 8
 2600 001c C3       		ret
 2601              		.cfi_endproc
 2602              	.LFE2266:
 2604              		.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
 2605              		.set	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iterato
 2606              		.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv,"axG",@progbits,_ZNK9
 2607              		.align 2
 2608              		.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
 2610              	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv:
 2611              	.LFB2268:
 844:/usr/include/c++/7/bits/stl_iterator.h ****       { return _M_current; }
 2612              		.loc 3 844 0
 2613              		.cfi_startproc
 2614 0000 55       		pushq	%rbp
 2615              		.cfi_def_cfa_offset 16
 2616              		.cfi_offset 6, -16
 2617 0001 4889E5   		movq	%rsp, %rbp
 2618              		.cfi_def_cfa_register 6
 2619 0004 48897DF8 		movq	%rdi, -8(%rbp)
 845:/usr/include/c++/7/bits/stl_iterator.h ****     };
 2620              		.loc 3 845 0
 2621 0008 488B45F8 		movq	-8(%rbp), %rax
 2622 000c 5D       		popq	%rbp
 2623              		.cfi_def_cfa 7, 8
 2624 000d C3       		ret
 2625              		.cfi_endproc
 2626              	.LFE2268:
 2628              		.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseId
 2629              		.align 2
 2630              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
 2632              	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev:
 2633              	.LFB2296:
  88:/usr/include/c++/7/bits/stl_vector.h **** 	: _Tp_alloc_type(), _M_start(), _M_finish(), _M_end_of_storage()
 2634              		.loc 2 88 0
 2635              		.cfi_startproc
 2636 0000 55       		pushq	%rbp
 2637              		.cfi_def_cfa_offset 16
 2638              		.cfi_offset 6, -16
 2639 0001 4889E5   		movq	%rsp, %rbp
 2640              		.cfi_def_cfa_register 6
 2641 0004 4883EC10 		subq	$16, %rsp
 2642 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2643              	.LBB38:
  89:/usr/include/c++/7/bits/stl_vector.h **** 	{ }
 2644              		.loc 2 89 0
 2645 000c 488B45F8 		movq	-8(%rbp), %rax
 2646 0010 4889C7   		movq	%rax, %rdi
 2647 0013 E8000000 		call	_ZNSaIdEC2Ev
 2647      00
 2648 0018 488B45F8 		movq	-8(%rbp), %rax
 2649 001c 48C70000 		movq	$0, (%rax)
 2649      000000
 2650 0023 488B45F8 		movq	-8(%rbp), %rax
 2651 0027 48C74008 		movq	$0, 8(%rax)
 2651      00000000 
 2652 002f 488B45F8 		movq	-8(%rbp), %rax
 2653 0033 48C74010 		movq	$0, 16(%rax)
 2653      00000000 
 2654              	.LBE38:
  90:/usr/include/c++/7/bits/stl_vector.h **** 
 2655              		.loc 2 90 0
 2656 003b 90       		nop
 2657 003c C9       		leave
 2658              		.cfi_def_cfa 7, 8
 2659 003d C3       		ret
 2660              		.cfi_endproc
 2661              	.LFE2296:
 2663              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
 2664              		.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
 2665              		.section	.text._ZNSaIdED2Ev,"axG",@progbits,_ZNSaIdED5Ev,comdat
 2666              		.align 2
 2667              		.weak	_ZNSaIdED2Ev
 2669              	_ZNSaIdED2Ev:
 2670              	.LFB2299:
 2671              		.file 6 "/usr/include/c++/7/bits/allocator.h"
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
 2672              		.loc 6 139 0
 2673              		.cfi_startproc
 2674 0000 55       		pushq	%rbp
 2675              		.cfi_def_cfa_offset 16
 2676              		.cfi_offset 6, -16
 2677 0001 4889E5   		movq	%rsp, %rbp
 2678              		.cfi_def_cfa_register 6
 2679 0004 4883EC10 		subq	$16, %rsp
 2680 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2681              	.LBB39:
 2682              		.loc 6 139 0
 2683 000c 488B45F8 		movq	-8(%rbp), %rax
 2684 0010 4889C7   		movq	%rax, %rdi
 2685 0013 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdED2Ev
 2685      00
 2686              	.LBE39:
 2687 0018 90       		nop
 2688 0019 C9       		leave
 2689              		.cfi_def_cfa 7, 8
 2690 001a C3       		ret
 2691              		.cfi_endproc
 2692              	.LFE2299:
 2694              		.weak	_ZNSaIdED1Ev
 2695              		.set	_ZNSaIdED1Ev,_ZNSaIdED2Ev
 2696              		.section	.text._ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,"axG",@progbits,_ZNSt12_Vector_baseI
 2697              		.align 2
 2698              		.weak	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 2700              	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm:
 2701              	.LFB2301:
 176:/usr/include/c++/7/bits/stl_vector.h ****       {
 2702              		.loc 2 176 0
 2703              		.cfi_startproc
 2704 0000 55       		pushq	%rbp
 2705              		.cfi_def_cfa_offset 16
 2706              		.cfi_offset 6, -16
 2707 0001 4889E5   		movq	%rsp, %rbp
 2708              		.cfi_def_cfa_register 6
 2709 0004 4883EC20 		subq	$32, %rsp
 2710 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2711 000c 488975F0 		movq	%rsi, -16(%rbp)
 2712 0010 488955E8 		movq	%rdx, -24(%rbp)
 179:/usr/include/c++/7/bits/stl_vector.h **** 	  _Tr::deallocate(_M_impl, __p, __n);
 2713              		.loc 2 179 0
 2714 0014 48837DF0 		cmpq	$0, -16(%rbp)
 2714      00
 2715 0019 7417     		je	.L125
 180:/usr/include/c++/7/bits/stl_vector.h ****       }
 2716              		.loc 2 180 0
 2717 001b 488B45F8 		movq	-8(%rbp), %rax
 2718 001f 488B55E8 		movq	-24(%rbp), %rdx
 2719 0023 488B4DF0 		movq	-16(%rbp), %rcx
 2720 0027 4889CE   		movq	%rcx, %rsi
 2721 002a 4889C7   		movq	%rax, %rdi
 2722 002d E8000000 		call	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
 2722      00
 2723              	.L125:
 181:/usr/include/c++/7/bits/stl_vector.h **** 
 2724              		.loc 2 181 0
 2725 0032 90       		nop
 2726 0033 C9       		leave
 2727              		.cfi_def_cfa 7, 8
 2728 0034 C3       		ret
 2729              		.cfi_endproc
 2730              	.LFE2301:
 2732              		.section	.text._ZSt8_DestroyIPdEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPdEvT_S1_,comdat
 2733              		.weak	_ZSt8_DestroyIPdEvT_S1_
 2735              	_ZSt8_DestroyIPdEvT_S1_:
 2736              	.LFB2302:
 127:/usr/include/c++/7/bits/stl_construct.h ****     {
 2737              		.loc 4 127 0
 2738              		.cfi_startproc
 2739 0000 55       		pushq	%rbp
 2740              		.cfi_def_cfa_offset 16
 2741              		.cfi_offset 6, -16
 2742 0001 4889E5   		movq	%rsp, %rbp
 2743              		.cfi_def_cfa_register 6
 2744 0004 4883EC10 		subq	$16, %rsp
 2745 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2746 000c 488975F0 		movq	%rsi, -16(%rbp)
 137:/usr/include/c++/7/bits/stl_construct.h ****     }
 2747              		.loc 4 137 0
 2748 0010 488B55F0 		movq	-16(%rbp), %rdx
 2749 0014 488B45F8 		movq	-8(%rbp), %rax
 2750 0018 4889D6   		movq	%rdx, %rsi
 2751 001b 4889C7   		movq	%rax, %rdi
 2752 001e E8000000 		call	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
 2752      00
 138:/usr/include/c++/7/bits/stl_construct.h **** 
 2753              		.loc 4 138 0
 2754 0023 90       		nop
 2755 0024 C9       		leave
 2756              		.cfi_def_cfa 7, 8
 2757 0025 C3       		ret
 2758              		.cfi_endproc
 2759              	.LFE2302:
 2761              		.section	.text._ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uni
 2762              		.weak	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
 2764              	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E:
 2765              	.LFB2306:
 2766              		.file 7 "/usr/include/c++/7/bits/stl_uninitialized.h"
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
 2767              		.loc 7 643 0
 2768              		.cfi_startproc
 2769 0000 55       		pushq	%rbp
 2770              		.cfi_def_cfa_offset 16
 2771              		.cfi_offset 6, -16
 2772 0001 4889E5   		movq	%rsp, %rbp
 2773              		.cfi_def_cfa_register 6
 2774 0004 4883EC20 		subq	$32, %rsp
 2775 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2776 000c 488975F0 		movq	%rsi, -16(%rbp)
 2777 0010 488955E8 		movq	%rdx, -24(%rbp)
 644:/usr/include/c++/7/bits/stl_uninitialized.h **** 				allocator<_Tp>&)
 645:/usr/include/c++/7/bits/stl_uninitialized.h ****     { return std::__uninitialized_default_n(__first, __n); }
 2778              		.loc 7 645 0
 2779 0014 488B55F0 		movq	-16(%rbp), %rdx
 2780 0018 488B45F8 		movq	-8(%rbp), %rax
 2781 001c 4889D6   		movq	%rdx, %rsi
 2782 001f 4889C7   		movq	%rax, %rdi
 2783 0022 E8000000 		call	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
 2783      00
 2784 0027 C9       		leave
 2785              		.cfi_def_cfa 7, 8
 2786 0028 C3       		ret
 2787              		.cfi_endproc
 2788              	.LFE2306:
 2790              		.section	.text._ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIdSaIdEE12_M_
 2791              		.align 2
 2792              		.weak	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
 2794              	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc:
 2795              	.LFB2307:
1497:/usr/include/c++/7/bits/stl_vector.h ****       {
 2796              		.loc 2 1497 0
 2797              		.cfi_startproc
 2798 0000 55       		pushq	%rbp
 2799              		.cfi_def_cfa_offset 16
 2800              		.cfi_offset 6, -16
 2801 0001 4889E5   		movq	%rsp, %rbp
 2802              		.cfi_def_cfa_register 6
 2803 0004 53       		pushq	%rbx
 2804 0005 4883EC48 		subq	$72, %rsp
 2805              		.cfi_offset 3, -24
 2806 0009 48897DC8 		movq	%rdi, -56(%rbp)
 2807 000d 488975C0 		movq	%rsi, -64(%rbp)
 2808 0011 488955B8 		movq	%rdx, -72(%rbp)
1497:/usr/include/c++/7/bits/stl_vector.h ****       {
 2809              		.loc 2 1497 0
 2810 0015 64488B04 		movq	%fs:40, %rax
 2810      25280000 
 2810      00
 2811 001e 488945E8 		movq	%rax, -24(%rbp)
 2812 0022 31C0     		xorl	%eax, %eax
1499:/usr/include/c++/7/bits/stl_vector.h **** 	  __throw_length_error(__N(__s));
 2813              		.loc 2 1499 0
 2814 0024 488B45C8 		movq	-56(%rbp), %rax
 2815 0028 4889C7   		movq	%rax, %rdi
 2816 002b E8000000 		call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 2816      00
 2817 0030 4889C3   		movq	%rax, %rbx
 2818 0033 488B45C8 		movq	-56(%rbp), %rax
 2819 0037 4889C7   		movq	%rax, %rdi
 2820 003a E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2820      00
 2821 003f 4829C3   		subq	%rax, %rbx
 2822 0042 4889DA   		movq	%rbx, %rdx
 2823 0045 488B45C0 		movq	-64(%rbp), %rax
 2824 0049 4839C2   		cmpq	%rax, %rdx
 2825 004c 0F92C0   		setb	%al
 2826 004f 84C0     		testb	%al, %al
 2827 0051 740C     		je	.L130
1500:/usr/include/c++/7/bits/stl_vector.h **** 
 2828              		.loc 2 1500 0
 2829 0053 488B45B8 		movq	-72(%rbp), %rax
 2830 0057 4889C7   		movq	%rax, %rdi
 2831 005a E8000000 		call	_ZSt20__throw_length_errorPKc@PLT
 2831      00
 2832              	.L130:
1502:/usr/include/c++/7/bits/stl_vector.h **** 	return (__len < size() || __len > max_size()) ? max_size() : __len;
 2833              		.loc 2 1502 0
 2834 005f 488B45C8 		movq	-56(%rbp), %rax
 2835 0063 4889C7   		movq	%rax, %rdi
 2836 0066 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2836      00
 2837 006b 4889C3   		movq	%rax, %rbx
 2838 006e 488B45C8 		movq	-56(%rbp), %rax
 2839 0072 4889C7   		movq	%rax, %rdi
 2840 0075 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2840      00
 2841 007a 488945D8 		movq	%rax, -40(%rbp)
 2842 007e 488D55C0 		leaq	-64(%rbp), %rdx
 2843 0082 488D45D8 		leaq	-40(%rbp), %rax
 2844 0086 4889D6   		movq	%rdx, %rsi
 2845 0089 4889C7   		movq	%rax, %rdi
 2846 008c E8000000 		call	_ZSt3maxImERKT_S2_S2_
 2846      00
 2847 0091 488B00   		movq	(%rax), %rax
 2848 0094 4801D8   		addq	%rbx, %rax
 2849 0097 488945E0 		movq	%rax, -32(%rbp)
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2850              		.loc 2 1503 0
 2851 009b 488B45C8 		movq	-56(%rbp), %rax
 2852 009f 4889C7   		movq	%rax, %rdi
 2853 00a2 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2853      00
 2854 00a7 483945E0 		cmpq	%rax, -32(%rbp)
 2855 00ab 7212     		jb	.L131
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2856              		.loc 2 1503 0 is_stmt 0 discriminator 2
 2857 00ad 488B45C8 		movq	-56(%rbp), %rax
 2858 00b1 4889C7   		movq	%rax, %rdi
 2859 00b4 E8000000 		call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 2859      00
 2860 00b9 483945E0 		cmpq	%rax, -32(%rbp)
 2861 00bd 760E     		jbe	.L132
 2862              	.L131:
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2863              		.loc 2 1503 0 discriminator 3
 2864 00bf 488B45C8 		movq	-56(%rbp), %rax
 2865 00c3 4889C7   		movq	%rax, %rdi
 2866 00c6 E8000000 		call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 2866      00
 2867 00cb EB04     		jmp	.L133
 2868              	.L132:
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2869              		.loc 2 1503 0 discriminator 4
 2870 00cd 488B45E0 		movq	-32(%rbp), %rax
 2871              	.L133:
1504:/usr/include/c++/7/bits/stl_vector.h **** 
 2872              		.loc 2 1504 0 is_stmt 1 discriminator 6
 2873 00d1 488B4DE8 		movq	-24(%rbp), %rcx
 2874 00d5 6448330C 		xorq	%fs:40, %rcx
 2874      25280000 
 2874      00
 2875 00de 7405     		je	.L135
1504:/usr/include/c++/7/bits/stl_vector.h **** 
 2876              		.loc 2 1504 0 is_stmt 0
 2877 00e0 E8000000 		call	__stack_chk_fail@PLT
 2877      00
 2878              	.L135:
 2879 00e5 4883C448 		addq	$72, %rsp
 2880 00e9 5B       		popq	%rbx
 2881 00ea 5D       		popq	%rbp
 2882              		.cfi_def_cfa 7, 8
 2883 00eb C3       		ret
 2884              		.cfi_endproc
 2885              	.LFE2307:
 2887              		.section	.text._ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaI
 2888              		.align 2
 2889              		.weak	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
 2891              	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm:
 2892              	.LFB2308:
 169:/usr/include/c++/7/bits/stl_vector.h ****       {
 2893              		.loc 2 169 0 is_stmt 1
 2894              		.cfi_startproc
 2895 0000 55       		pushq	%rbp
 2896              		.cfi_def_cfa_offset 16
 2897              		.cfi_offset 6, -16
 2898 0001 4889E5   		movq	%rsp, %rbp
 2899              		.cfi_def_cfa_register 6
 2900 0004 4883EC10 		subq	$16, %rsp
 2901 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2902 000c 488975F0 		movq	%rsi, -16(%rbp)
 172:/usr/include/c++/7/bits/stl_vector.h ****       }
 2903              		.loc 2 172 0
 2904 0010 48837DF0 		cmpq	$0, -16(%rbp)
 2904      00
 2905 0015 7415     		je	.L137
 172:/usr/include/c++/7/bits/stl_vector.h ****       }
 2906              		.loc 2 172 0 is_stmt 0 discriminator 1
 2907 0017 488B45F8 		movq	-8(%rbp), %rax
 2908 001b 488B55F0 		movq	-16(%rbp), %rdx
 2909 001f 4889D6   		movq	%rdx, %rsi
 2910 0022 4889C7   		movq	%rax, %rdi
 2911 0025 E8000000 		call	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
 2911      00
 2912 002a EB05     		jmp	.L139
 2913              	.L137:
 172:/usr/include/c++/7/bits/stl_vector.h ****       }
 2914              		.loc 2 172 0 discriminator 2
 2915 002c B8000000 		movl	$0, %eax
 2915      00
 2916              	.L139:
 173:/usr/include/c++/7/bits/stl_vector.h **** 
 2917              		.loc 2 173 0 is_stmt 1 discriminator 5
 2918 0031 C9       		leave
 2919              		.cfi_def_cfa 7, 8
 2920 0032 C3       		ret
 2921              		.cfi_endproc
 2922              	.LFE2308:
 2924              		.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_,"axG",@progbits
 2925              		.weak	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_
 2927              	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_:
 2928              	.LFB2309:
 305:/usr/include/c++/7/bits/stl_uninitialized.h **** 				       _InputIterator __last,
 2929              		.loc 7 305 0
 2930              		.cfi_startproc
 2931 0000 55       		pushq	%rbp
 2932              		.cfi_def_cfa_offset 16
 2933              		.cfi_offset 6, -16
 2934 0001 4889E5   		movq	%rsp, %rbp
 2935              		.cfi_def_cfa_register 6
 2936 0004 53       		pushq	%rbx
 2937 0005 4883EC28 		subq	$40, %rsp
 2938              		.cfi_offset 3, -24
 2939 0009 48897DE8 		movq	%rdi, -24(%rbp)
 2940 000d 488975E0 		movq	%rsi, -32(%rbp)
 2941 0011 488955D8 		movq	%rdx, -40(%rbp)
 2942 0015 48894DD0 		movq	%rcx, -48(%rbp)
 311:/usr/include/c++/7/bits/stl_uninitialized.h **** 	 _GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__last), __result, __alloc);
 2943              		.loc 7 311 0
 2944 0019 488B45E0 		movq	-32(%rbp), %rax
 2945 001d 4889C7   		movq	%rax, %rdi
 2946 0020 E8000000 		call	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_
 2946      00
 2947 0025 4889C3   		movq	%rax, %rbx
 2948 0028 488B45E8 		movq	-24(%rbp), %rax
 2949 002c 4889C7   		movq	%rax, %rdi
 2950 002f E8000000 		call	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_
 2950      00
 2951 0034 4889C7   		movq	%rax, %rdi
 312:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 2952              		.loc 7 312 0
 2953 0037 488B55D0 		movq	-48(%rbp), %rdx
 2954 003b 488B45D8 		movq	-40(%rbp), %rax
 2955 003f 4889D1   		movq	%rdx, %rcx
 2956 0042 4889C2   		movq	%rax, %rdx
 2957 0045 4889DE   		movq	%rbx, %rsi
 2958 0048 E8000000 		call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E
 2958      00
 313:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 2959              		.loc 7 313 0
 2960 004d 4883C428 		addq	$40, %rsp
 2961 0051 5B       		popq	%rbx
 2962 0052 5D       		popq	%rbp
 2963              		.cfi_def_cfa 7, 8
 2964 0053 C3       		ret
 2965              		.cfi_endproc
 2966              	.LFE2309:
 2968              		.section	.text._ZNSaIdEC2Ev,"axG",@progbits,_ZNSaIdEC5Ev,comdat
 2969              		.align 2
 2970              		.weak	_ZNSaIdEC2Ev
 2972              	_ZNSaIdEC2Ev:
 2973              	.LFB2345:
 131:/usr/include/c++/7/bits/allocator.h **** 
 2974              		.loc 6 131 0
 2975              		.cfi_startproc
 2976 0000 55       		pushq	%rbp
 2977              		.cfi_def_cfa_offset 16
 2978              		.cfi_offset 6, -16
 2979 0001 4889E5   		movq	%rsp, %rbp
 2980              		.cfi_def_cfa_register 6
 2981 0004 4883EC10 		subq	$16, %rsp
 2982 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2983              	.LBB40:
 131:/usr/include/c++/7/bits/allocator.h **** 
 2984              		.loc 6 131 0
 2985 000c 488B45F8 		movq	-8(%rbp), %rax
 2986 0010 4889C7   		movq	%rax, %rdi
 2987 0013 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
 2987      00
 2988              	.LBE40:
 2989 0018 90       		nop
 2990 0019 C9       		leave
 2991              		.cfi_def_cfa 7, 8
 2992 001a C3       		ret
 2993              		.cfi_endproc
 2994              	.LFE2345:
 2996              		.weak	_ZNSaIdEC1Ev
 2997              		.set	_ZNSaIdEC1Ev,_ZNSaIdEC2Ev
 2998              		.section	.text._ZN9__gnu_cxx13new_allocatorIdED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE
 2999              		.align 2
 3000              		.weak	_ZN9__gnu_cxx13new_allocatorIdED2Ev
 3002              	_ZN9__gnu_cxx13new_allocatorIdED2Ev:
 3003              	.LFB2348:
 3004              		.file 8 "/usr/include/c++/7/ext/new_allocator.h"
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
 3005              		.loc 8 86 0
 3006              		.cfi_startproc
 3007 0000 55       		pushq	%rbp
 3008              		.cfi_def_cfa_offset 16
 3009              		.cfi_offset 6, -16
 3010 0001 4889E5   		movq	%rsp, %rbp
 3011              		.cfi_def_cfa_register 6
 3012 0004 48897DF8 		movq	%rdi, -8(%rbp)
 3013              		.loc 8 86 0
 3014 0008 90       		nop
 3015 0009 5D       		popq	%rbp
 3016              		.cfi_def_cfa 7, 8
 3017 000a C3       		ret
 3018              		.cfi_endproc
 3019              	.LFE2348:
 3021              		.weak	_ZN9__gnu_cxx13new_allocatorIdED1Ev
 3022              		.set	_ZN9__gnu_cxx13new_allocatorIdED1Ev,_ZN9__gnu_cxx13new_allocatorIdED2Ev
 3023              		.section	.text._ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,"axG",@progbits,_ZNSt16allocator
 3024              		.weak	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
 3026              	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm:
 3027              	.LFB2350:
 3028              		.file 9 "/usr/include/c++/7/bits/alloc_traits.h"
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
 3029              		.loc 9 461 0
 3030              		.cfi_startproc
 3031 0000 55       		pushq	%rbp
 3032              		.cfi_def_cfa_offset 16
 3033              		.cfi_offset 6, -16
 3034 0001 4889E5   		movq	%rsp, %rbp
 3035              		.cfi_def_cfa_register 6
 3036 0004 4883EC20 		subq	$32, %rsp
 3037 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3038 000c 488975F0 		movq	%rsi, -16(%rbp)
 3039 0010 488955E8 		movq	%rdx, -24(%rbp)
 462:/usr/include/c++/7/bits/alloc_traits.h ****       { __a.deallocate(__p, __n); }
 3040              		.loc 9 462 0
 3041 0014 488B55E8 		movq	-24(%rbp), %rdx
 3042 0018 488B4DF0 		movq	-16(%rbp), %rcx
 3043 001c 488B45F8 		movq	-8(%rbp), %rax
 3044 0020 4889CE   		movq	%rcx, %rsi
 3045 0023 4889C7   		movq	%rax, %rdi
 3046 0026 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
 3046      00
 3047 002b 90       		nop
 3048 002c C9       		leave
 3049              		.cfi_def_cfa 7, 8
 3050 002d C3       		ret
 3051              		.cfi_endproc
 3052              	.LFE2350:
 3054              		.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxI
 3055              		.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
 3057              	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_:
 3058              	.LFB2351:
 117:/usr/include/c++/7/bits/stl_construct.h ****     };
 3059              		.loc 4 117 0
 3060              		.cfi_startproc
 3061 0000 55       		pushq	%rbp
 3062              		.cfi_def_cfa_offset 16
 3063              		.cfi_offset 6, -16
 3064 0001 4889E5   		movq	%rsp, %rbp
 3065              		.cfi_def_cfa_register 6
 3066 0004 48897DF8 		movq	%rdi, -8(%rbp)
 3067 0008 488975F0 		movq	%rsi, -16(%rbp)
 117:/usr/include/c++/7/bits/stl_construct.h ****     };
 3068              		.loc 4 117 0
 3069 000c 90       		nop
 3070 000d 5D       		popq	%rbp
 3071              		.cfi_def_cfa 7, 8
 3072 000e C3       		ret
 3073              		.cfi_endproc
 3074              	.LFE2351:
 3076              		.section	.text._ZSt25__uninitialized_default_nIPdmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_
 3077              		.weak	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
 3079              	_ZSt25__uninitialized_default_nIPdmET_S1_T0_:
 3080              	.LFB2353:
 574:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 3081              		.loc 7 574 0
 3082              		.cfi_startproc
 3083 0000 55       		pushq	%rbp
 3084              		.cfi_def_cfa_offset 16
 3085              		.cfi_offset 6, -16
 3086 0001 4889E5   		movq	%rsp, %rbp
 3087              		.cfi_def_cfa_register 6
 3088 0004 4883EC20 		subq	$32, %rsp
 3089 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3090 000c 488975E0 		movq	%rsi, -32(%rbp)
 579:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 3091              		.loc 7 579 0
 3092 0010 C645FF01 		movb	$1, -1(%rbp)
 583:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 3093              		.loc 7 583 0
 3094 0014 488B55E0 		movq	-32(%rbp), %rdx
 3095 0018 488B45E8 		movq	-24(%rbp), %rax
 3096 001c 4889D6   		movq	%rdx, %rsi
 3097 001f 4889C7   		movq	%rax, %rdi
 3098 0022 E8000000 		call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
 3098      00
 584:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 3099              		.loc 7 584 0
 3100 0027 C9       		leave
 3101              		.cfi_def_cfa 7, 8
 3102 0028 C3       		ret
 3103              		.cfi_endproc
 3104              	.LFE2353:
 3106              		.section	.text._ZNKSt6vectorIdSaIdEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE8max_sizeEv,c
 3107              		.align 2
 3108              		.weak	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 3110              	_ZNKSt6vectorIdSaIdEE8max_sizeEv:
 3111              	.LFB2354:
 675:/usr/include/c++/7/bits/stl_vector.h ****       { return _Alloc_traits::max_size(_M_get_Tp_allocator()); }
 3112              		.loc 2 675 0
 3113              		.cfi_startproc
 3114 0000 55       		pushq	%rbp
 3115              		.cfi_def_cfa_offset 16
 3116              		.cfi_offset 6, -16
 3117 0001 4889E5   		movq	%rsp, %rbp
 3118              		.cfi_def_cfa_register 6
 3119 0004 4883EC10 		subq	$16, %rsp
 3120 0008 48897DF8 		movq	%rdi, -8(%rbp)
 676:/usr/include/c++/7/bits/stl_vector.h **** 
 3121              		.loc 2 676 0
 3122 000c 488B45F8 		movq	-8(%rbp), %rax
 3123 0010 4889C7   		movq	%rax, %rdi
 3124 0013 E8000000 		call	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 3124      00
 3125 0018 4889C7   		movq	%rax, %rdi
 3126 001b E8000000 		call	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
 3126      00
 3127 0020 C9       		leave
 3128              		.cfi_def_cfa 7, 8
 3129 0021 C3       		ret
 3130              		.cfi_endproc
 3131              	.LFE2354:
 3133              		.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
 3134              		.weak	_ZSt3maxImERKT_S2_S2_
 3136              	_ZSt3maxImERKT_S2_S2_:
 3137              	.LFB2355:
 3138              		.file 10 "/usr/include/c++/7/bits/stl_algobase.h"
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
 3139              		.loc 10 219 0
 3140              		.cfi_startproc
 3141 0000 55       		pushq	%rbp
 3142              		.cfi_def_cfa_offset 16
 3143              		.cfi_offset 6, -16
 3144 0001 4889E5   		movq	%rsp, %rbp
 3145              		.cfi_def_cfa_register 6
 3146 0004 48897DF8 		movq	%rdi, -8(%rbp)
 3147 0008 488975F0 		movq	%rsi, -16(%rbp)
 220:/usr/include/c++/7/bits/stl_algobase.h ****     {
 221:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 222:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_LessThanComparableConcept<_Tp>)
 223:/usr/include/c++/7/bits/stl_algobase.h ****       //return  __a < __b ? __b : __a;
 224:/usr/include/c++/7/bits/stl_algobase.h ****       if (__a < __b)
 3148              		.loc 10 224 0
 3149 000c 488B45F8 		movq	-8(%rbp), %rax
 3150 0010 488B10   		movq	(%rax), %rdx
 3151 0013 488B45F0 		movq	-16(%rbp), %rax
 3152 0017 488B00   		movq	(%rax), %rax
 3153 001a 4839C2   		cmpq	%rax, %rdx
 3154 001d 7306     		jnb	.L151
 225:/usr/include/c++/7/bits/stl_algobase.h **** 	return __b;
 3155              		.loc 10 225 0
 3156 001f 488B45F0 		movq	-16(%rbp), %rax
 3157 0023 EB04     		jmp	.L152
 3158              	.L151:
 226:/usr/include/c++/7/bits/stl_algobase.h ****       return __a;
 3159              		.loc 10 226 0
 3160 0025 488B45F8 		movq	-8(%rbp), %rax
 3161              	.L152:
 227:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3162              		.loc 10 227 0
 3163 0029 5D       		popq	%rbp
 3164              		.cfi_def_cfa 7, 8
 3165 002a C3       		ret
 3166              		.cfi_endproc
 3167              	.LFE2355:
 3169              		.section	.text._ZNSt16allocator_traitsISaIdEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_trai
 3170              		.weak	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
 3172              	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m:
 3173              	.LFB2356:
 435:/usr/include/c++/7/bits/alloc_traits.h ****       { return __a.allocate(__n); }
 3174              		.loc 9 435 0
 3175              		.cfi_startproc
 3176 0000 55       		pushq	%rbp
 3177              		.cfi_def_cfa_offset 16
 3178              		.cfi_offset 6, -16
 3179 0001 4889E5   		movq	%rsp, %rbp
 3180              		.cfi_def_cfa_register 6
 3181 0004 4883EC10 		subq	$16, %rsp
 3182 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3183 000c 488975F0 		movq	%rsi, -16(%rbp)
 436:/usr/include/c++/7/bits/alloc_traits.h **** 
 3184              		.loc 9 436 0
 3185 0010 488B4DF0 		movq	-16(%rbp), %rcx
 3186 0014 488B45F8 		movq	-8(%rbp), %rax
 3187 0018 BA000000 		movl	$0, %edx
 3187      00
 3188 001d 4889CE   		movq	%rcx, %rsi
 3189 0020 4889C7   		movq	%rax, %rdi
 3190 0023 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
 3190      00
 3191 0028 C9       		leave
 3192              		.cfi_def_cfa 7, 8
 3193 0029 C3       		ret
 3194              		.cfi_endproc
 3195              	.LFE2356:
 3197              		.section	.text._ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_,"axG",@progbit
 3198              		.weak	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_
 3200              	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_:
 3201              	.LFB2357:
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
 3202              		.loc 3 1221 0
 3203              		.cfi_startproc
 3204 0000 55       		pushq	%rbp
 3205              		.cfi_def_cfa_offset 16
 3206              		.cfi_offset 6, -16
 3207 0001 4889E5   		movq	%rsp, %rbp
 3208              		.cfi_def_cfa_register 6
 3209 0004 4883EC20 		subq	$32, %rsp
 3210 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3211              		.loc 3 1221 0
 3212 000c 64488B04 		movq	%fs:40, %rax
 3212      25280000 
 3212      00
 3213 0015 488945F8 		movq	%rax, -8(%rbp)
 3214 0019 31C0     		xorl	%eax, %eax
1222:/usr/include/c++/7/bits/stl_iterator.h ****     { return _ReturnType(__i); }
 3215              		.loc 3 1222 0
 3216 001b 488B55E8 		movq	-24(%rbp), %rdx
 3217 001f 488D45F0 		leaq	-16(%rbp), %rax
 3218 0023 4889D6   		movq	%rdx, %rsi
 3219 0026 4889C7   		movq	%rax, %rdi
 3220 0029 E8000000 		call	_ZNSt13move_iteratorIPdEC1ES0_
 3220      00
 3221 002e 488B45F0 		movq	-16(%rbp), %rax
 3222 0032 488B4DF8 		movq	-8(%rbp), %rcx
 3223 0036 6448330C 		xorq	%fs:40, %rcx
 3223      25280000 
 3223      00
 3224 003f 7405     		je	.L157
 3225 0041 E8000000 		call	__stack_chk_fail@PLT
 3225      00
 3226              	.L157:
 3227 0046 C9       		leave
 3228              		.cfi_def_cfa 7, 8
 3229 0047 C3       		ret
 3230              		.cfi_endproc
 3231              	.LFE2357:
 3233              		.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E,"axG",@p
 3234              		.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E
 3236              	_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E:
 3237              	.LFB2358:
 287:/usr/include/c++/7/bits/stl_uninitialized.h **** 			   _ForwardIterator __result, allocator<_Tp>&)
 3238              		.loc 7 287 0
 3239              		.cfi_startproc
 3240 0000 55       		pushq	%rbp
 3241              		.cfi_def_cfa_offset 16
 3242              		.cfi_offset 6, -16
 3243 0001 4889E5   		movq	%rsp, %rbp
 3244              		.cfi_def_cfa_register 6
 3245 0004 4883EC20 		subq	$32, %rsp
 3246 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3247 000c 488975F0 		movq	%rsi, -16(%rbp)
 3248 0010 488955E8 		movq	%rdx, -24(%rbp)
 3249 0014 48894DE0 		movq	%rcx, -32(%rbp)
 289:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 3250              		.loc 7 289 0
 3251 0018 488B55E8 		movq	-24(%rbp), %rdx
 3252 001c 488B4DF0 		movq	-16(%rbp), %rcx
 3253 0020 488B45F8 		movq	-8(%rbp), %rax
 3254 0024 4889CE   		movq	%rcx, %rsi
 3255 0027 4889C7   		movq	%rax, %rdi
 3256 002a E8000000 		call	_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 3256      00
 3257 002f C9       		leave
 3258              		.cfi_def_cfa 7, 8
 3259 0030 C3       		ret
 3260              		.cfi_endproc
 3261              	.LFE2358:
 3263              		.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE
 3264              		.align 2
 3265              		.weak	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
 3267              	_ZN9__gnu_cxx13new_allocatorIdEC2Ev:
 3268              	.LFB2393:
  79:/usr/include/c++/7/ext/new_allocator.h **** 
 3269              		.loc 8 79 0
 3270              		.cfi_startproc
 3271 0000 55       		pushq	%rbp
 3272              		.cfi_def_cfa_offset 16
 3273              		.cfi_offset 6, -16
 3274 0001 4889E5   		movq	%rsp, %rbp
 3275              		.cfi_def_cfa_register 6
 3276 0004 48897DF8 		movq	%rdi, -8(%rbp)
  79:/usr/include/c++/7/ext/new_allocator.h **** 
 3277              		.loc 8 79 0
 3278 0008 90       		nop
 3279 0009 5D       		popq	%rbp
 3280              		.cfi_def_cfa 7, 8
 3281 000a C3       		ret
 3282              		.cfi_endproc
 3283              	.LFE2393:
 3285              		.weak	_ZN9__gnu_cxx13new_allocatorIdEC1Ev
 3286              		.set	_ZN9__gnu_cxx13new_allocatorIdEC1Ev,_ZN9__gnu_cxx13new_allocatorIdEC2Ev
 3287              		.section	.text._ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,"axG",@progbits,_ZN9__gnu_cxx13new_
 3288              		.align 2
 3289              		.weak	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
 3291              	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm:
 3292              	.LFB2395:
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
 3293              		.loc 8 116 0
 3294              		.cfi_startproc
 3295 0000 55       		pushq	%rbp
 3296              		.cfi_def_cfa_offset 16
 3297              		.cfi_offset 6, -16
 3298 0001 4889E5   		movq	%rsp, %rbp
 3299              		.cfi_def_cfa_register 6
 3300 0004 4883EC20 		subq	$32, %rsp
 3301 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3302 000c 488975F0 		movq	%rsi, -16(%rbp)
 3303 0010 488955E8 		movq	%rdx, -24(%rbp)
 117:/usr/include/c++/7/ext/new_allocator.h ****       {
 118:/usr/include/c++/7/ext/new_allocator.h **** #if __cpp_aligned_new
 119:/usr/include/c++/7/ext/new_allocator.h **** 	if (alignof(_Tp) > __STDCPP_DEFAULT_NEW_ALIGNMENT__)
 120:/usr/include/c++/7/ext/new_allocator.h **** 	  {
 121:/usr/include/c++/7/ext/new_allocator.h **** 	    ::operator delete(__p, std::align_val_t(alignof(_Tp)));
 122:/usr/include/c++/7/ext/new_allocator.h **** 	    return;
 123:/usr/include/c++/7/ext/new_allocator.h **** 	  }
 124:/usr/include/c++/7/ext/new_allocator.h **** #endif
 125:/usr/include/c++/7/ext/new_allocator.h **** 	::operator delete(__p);
 3304              		.loc 8 125 0
 3305 0014 488B45F0 		movq	-16(%rbp), %rax
 3306 0018 4889C7   		movq	%rax, %rdi
 3307 001b E8000000 		call	_ZdlPv@PLT
 3307      00
 126:/usr/include/c++/7/ext/new_allocator.h ****       }
 3308              		.loc 8 126 0
 3309 0020 90       		nop
 3310 0021 C9       		leave
 3311              		.cfi_def_cfa 7, 8
 3312 0022 C3       		ret
 3313              		.cfi_endproc
 3314              	.LFE2395:
 3316              		.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_,"axG",@p
 3317              		.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
 3319              	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_:
 3320              	.LFB2400:
 543:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
 3321              		.loc 7 543 0
 3322              		.cfi_startproc
 3323 0000 55       		pushq	%rbp
 3324              		.cfi_def_cfa_offset 16
 3325              		.cfi_offset 6, -16
 3326 0001 4889E5   		movq	%rsp, %rbp
 3327              		.cfi_def_cfa_register 6
 3328 0004 4883EC20 		subq	$32, %rsp
 3329 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3330 000c 488975E0 		movq	%rsi, -32(%rbp)
 543:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
 3331              		.loc 7 543 0
 3332 0010 64488B04 		movq	%fs:40, %rax
 3332      25280000 
 3332      00
 3333 0019 488945F8 		movq	%rax, -8(%rbp)
 3334 001d 31C0     		xorl	%eax, %eax
 548:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 3335              		.loc 7 548 0
 3336 001f 660FEFC0 		pxor	%xmm0, %xmm0
 3337 0023 F20F1145 		movsd	%xmm0, -16(%rbp)
 3337      F0
 3338 0028 488D55F0 		leaq	-16(%rbp), %rdx
 3339 002c 488B4DE0 		movq	-32(%rbp), %rcx
 3340 0030 488B45E8 		movq	-24(%rbp), %rax
 3341 0034 4889CE   		movq	%rcx, %rsi
 3342 0037 4889C7   		movq	%rax, %rdi
 3343 003a E8000000 		call	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
 3343      00
 549:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 3344              		.loc 7 549 0
 3345 003f 488B4DF8 		movq	-8(%rbp), %rcx
 3346 0043 6448330C 		xorq	%fs:40, %rcx
 3346      25280000 
 3346      00
 3347 004c 7405     		je	.L164
 3348 004e E8000000 		call	__stack_chk_fail@PLT
 3348      00
 3349              	.L164:
 3350 0053 C9       		leave
 3351              		.cfi_def_cfa 7, 8
 3352 0054 C3       		ret
 3353              		.cfi_endproc
 3354              	.LFE2400:
 3356              		.section	.text._ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_trai
 3357              		.weak	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
 3359              	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_:
 3360              	.LFB2401:
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
 3361              		.loc 9 495 0
 3362              		.cfi_startproc
 3363 0000 55       		pushq	%rbp
 3364              		.cfi_def_cfa_offset 16
 3365              		.cfi_offset 6, -16
 3366 0001 4889E5   		movq	%rsp, %rbp
 3367              		.cfi_def_cfa_register 6
 3368 0004 4883EC10 		subq	$16, %rsp
 3369 0008 48897DF8 		movq	%rdi, -8(%rbp)
 496:/usr/include/c++/7/bits/alloc_traits.h ****       { return __a.max_size(); }
 3370              		.loc 9 496 0
 3371 000c 488B45F8 		movq	-8(%rbp), %rax
 3372 0010 4889C7   		movq	%rax, %rdi
 3373 0013 E8000000 		call	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
 3373      00
 3374 0018 C9       		leave
 3375              		.cfi_def_cfa 7, 8
 3376 0019 C3       		ret
 3377              		.cfi_endproc
 3378              	.LFE2401:
 3380              		.section	.text._ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector
 3381              		.align 2
 3382              		.weak	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 3384              	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
 3385              	.LFB2402:
 119:/usr/include/c++/7/bits/stl_vector.h ****       { return *static_cast<const _Tp_alloc_type*>(&this->_M_impl); }
 3386              		.loc 2 119 0
 3387              		.cfi_startproc
 3388 0000 55       		pushq	%rbp
 3389              		.cfi_def_cfa_offset 16
 3390              		.cfi_offset 6, -16
 3391 0001 4889E5   		movq	%rsp, %rbp
 3392              		.cfi_def_cfa_register 6
 3393 0004 48897DF8 		movq	%rdi, -8(%rbp)
 120:/usr/include/c++/7/bits/stl_vector.h **** 
 3394              		.loc 2 120 0
 3395 0008 488B45F8 		movq	-8(%rbp), %rax
 3396 000c 5D       		popq	%rbp
 3397              		.cfi_def_cfa 7, 8
 3398 000d C3       		ret
 3399              		.cfi_endproc
 3400              	.LFE2402:
 3402              		.section	.text._ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_al
 3403              		.align 2
 3404              		.weak	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
 3406              	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv:
 3407              	.LFB2403:
  99:/usr/include/c++/7/ext/new_allocator.h ****       {
 3408              		.loc 8 99 0
 3409              		.cfi_startproc
 3410 0000 55       		pushq	%rbp
 3411              		.cfi_def_cfa_offset 16
 3412              		.cfi_offset 6, -16
 3413 0001 4889E5   		movq	%rsp, %rbp
 3414              		.cfi_def_cfa_register 6
 3415 0004 4883EC20 		subq	$32, %rsp
 3416 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3417 000c 488975F0 		movq	%rsi, -16(%rbp)
 3418 0010 488955E8 		movq	%rdx, -24(%rbp)
 101:/usr/include/c++/7/ext/new_allocator.h **** 	  std::__throw_bad_alloc();
 3419              		.loc 8 101 0
 3420 0014 488B45F8 		movq	-8(%rbp), %rax
 3421 0018 4889C7   		movq	%rax, %rdi
 3422 001b E8000000 		call	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
 3422      00
 3423 0020 483945F0 		cmpq	%rax, -16(%rbp)
 3424 0024 0F97C0   		seta	%al
 3425 0027 84C0     		testb	%al, %al
 3426 0029 7405     		je	.L170
 102:/usr/include/c++/7/ext/new_allocator.h **** 
 3427              		.loc 8 102 0
 3428 002b E8000000 		call	_ZSt17__throw_bad_allocv@PLT
 3428      00
 3429              	.L170:
 111:/usr/include/c++/7/ext/new_allocator.h ****       }
 3430              		.loc 8 111 0
 3431 0030 488B45F0 		movq	-16(%rbp), %rax
 3432 0034 48C1E003 		salq	$3, %rax
 3433 0038 4889C7   		movq	%rax, %rdi
 3434 003b E8000000 		call	_Znwm@PLT
 3434      00
 112:/usr/include/c++/7/ext/new_allocator.h **** 
 3435              		.loc 8 112 0
 3436 0040 C9       		leave
 3437              		.cfi_def_cfa 7, 8
 3438 0041 C3       		ret
 3439              		.cfi_endproc
 3440              	.LFE2403:
 3442              		.section	.text._ZNSt13move_iteratorIPdEC2ES0_,"axG",@progbits,_ZNSt13move_iteratorIPdEC5ES0_,comda
 3443              		.align 2
 3444              		.weak	_ZNSt13move_iteratorIPdEC2ES0_
 3446              	_ZNSt13move_iteratorIPdEC2ES0_:
 3447              	.LFB2405:
1036:/usr/include/c++/7/bits/stl_iterator.h ****       : _M_current(__i) { }
 3448              		.loc 3 1036 0
 3449              		.cfi_startproc
 3450 0000 55       		pushq	%rbp
 3451              		.cfi_def_cfa_offset 16
 3452              		.cfi_offset 6, -16
 3453 0001 4889E5   		movq	%rsp, %rbp
 3454              		.cfi_def_cfa_register 6
 3455 0004 48897DF8 		movq	%rdi, -8(%rbp)
 3456 0008 488975F0 		movq	%rsi, -16(%rbp)
 3457              	.LBB41:
1037:/usr/include/c++/7/bits/stl_iterator.h **** 
 3458              		.loc 3 1037 0
 3459 000c 488B45F8 		movq	-8(%rbp), %rax
 3460 0010 488B55F0 		movq	-16(%rbp), %rdx
 3461 0014 488910   		movq	%rdx, (%rax)
 3462              	.LBE41:
 3463 0017 90       		nop
 3464 0018 5D       		popq	%rbp
 3465              		.cfi_def_cfa 7, 8
 3466 0019 C3       		ret
 3467              		.cfi_endproc
 3468              	.LFE2405:
 3470              		.weak	_ZNSt13move_iteratorIPdEC1ES0_
 3471              		.set	_ZNSt13move_iteratorIPdEC1ES0_,_ZNSt13move_iteratorIPdEC2ES0_
 3472              		.section	.text._ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt1
 3473              		.weak	_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 3475              	_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_:
 3476              	.LFB2407:
 115:/usr/include/c++/7/bits/stl_uninitialized.h **** 		       _ForwardIterator __result)
 3477              		.loc 7 115 0
 3478              		.cfi_startproc
 3479 0000 55       		pushq	%rbp
 3480              		.cfi_def_cfa_offset 16
 3481              		.cfi_offset 6, -16
 3482 0001 4889E5   		movq	%rsp, %rbp
 3483              		.cfi_def_cfa_register 6
 3484 0004 4883EC30 		subq	$48, %rsp
 3485 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3486 000c 488975E0 		movq	%rsi, -32(%rbp)
 3487 0010 488955D8 		movq	%rdx, -40(%rbp)
 128:/usr/include/c++/7/bits/stl_uninitialized.h **** #endif
 3488              		.loc 7 128 0
 3489 0014 C645FF01 		movb	$1, -1(%rbp)
 134:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 3490              		.loc 7 134 0
 3491 0018 488B55D8 		movq	-40(%rbp), %rdx
 3492 001c 488B4DE0 		movq	-32(%rbp), %rcx
 3493 0020 488B45E8 		movq	-24(%rbp), %rax
 3494 0024 4889CE   		movq	%rcx, %rsi
 3495 0027 4889C7   		movq	%rax, %rdi
 3496 002a E8000000 		call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_
 3496      00
 135:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 3497              		.loc 7 135 0
 3498 002f C9       		leave
 3499              		.cfi_def_cfa 7, 8
 3500 0030 C3       		ret
 3501              		.cfi_endproc
 3502              	.LFE2407:
 3504              		.section	.text._ZSt6fill_nIPdmdET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPdmdET_S1_T0_RKT1_,comda
 3505              		.weak	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
 3507              	_ZSt6fill_nIPdmdET_S1_T0_RKT1_:
 3508              	.LFB2429:
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
 3509              		.loc 10 784 0
 3510              		.cfi_startproc
 3511 0000 55       		pushq	%rbp
 3512              		.cfi_def_cfa_offset 16
 3513              		.cfi_offset 6, -16
 3514 0001 4889E5   		movq	%rsp, %rbp
 3515              		.cfi_def_cfa_register 6
 3516 0004 4883EC20 		subq	$32, %rsp
 3517 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3518 000c 488975F0 		movq	%rsi, -16(%rbp)
 3519 0010 488955E8 		movq	%rdx, -24(%rbp)
 785:/usr/include/c++/7/bits/stl_algobase.h ****     {
 786:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 787:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_OutputIteratorConcept<_OI, _Tp>)
 788:/usr/include/c++/7/bits/stl_algobase.h **** 
 789:/usr/include/c++/7/bits/stl_algobase.h ****       return _OI(std::__fill_n_a(std::__niter_base(__first), __n, __value));
 3520              		.loc 10 789 0
 3521 0014 488B45F8 		movq	-8(%rbp), %rax
 3522 0018 4889C7   		movq	%rax, %rdi
 3523 001b E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 3523      00
 3524 0020 4889C1   		movq	%rax, %rcx
 3525 0023 488B55E8 		movq	-24(%rbp), %rdx
 3526 0027 488B45F0 		movq	-16(%rbp), %rax
 3527 002b 4889C6   		movq	%rax, %rsi
 3528 002e 4889CF   		movq	%rcx, %rdi
 3529 0031 E8000000 		call	_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_
 3529      00
 790:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3530              		.loc 10 790 0
 3531 0036 C9       		leave
 3532              		.cfi_def_cfa 7, 8
 3533 0037 C3       		ret
 3534              		.cfi_endproc
 3535              	.LFE2429:
 3537              		.section	.text._ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_all
 3538              		.align 2
 3539              		.weak	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
 3541              	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv:
 3542              	.LFB2430:
 127:/usr/include/c++/7/ext/new_allocator.h **** 
 128:/usr/include/c++/7/ext/new_allocator.h ****       size_type
 129:/usr/include/c++/7/ext/new_allocator.h ****       max_size() const _GLIBCXX_USE_NOEXCEPT
 3543              		.loc 8 129 0
 3544              		.cfi_startproc
 3545 0000 55       		pushq	%rbp
 3546              		.cfi_def_cfa_offset 16
 3547              		.cfi_offset 6, -16
 3548 0001 4889E5   		movq	%rsp, %rbp
 3549              		.cfi_def_cfa_register 6
 3550 0004 48897DF8 		movq	%rdi, -8(%rbp)
 130:/usr/include/c++/7/ext/new_allocator.h ****       { return size_t(-1) / sizeof(_Tp); }
 3551              		.loc 8 130 0
 3552 0008 48B8FFFF 		movabsq	$2305843009213693951, %rax
 3552      FFFFFFFF 
 3552      FF1F
 3553 0012 5D       		popq	%rbp
 3554              		.cfi_def_cfa 7, 8
 3555 0013 C3       		ret
 3556              		.cfi_endproc
 3557              	.LFE2430:
 3559              		.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_
 3560              		.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_
 3562              	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_:
 3563              	.LFB2431:
  99:/usr/include/c++/7/bits/stl_uninitialized.h **** 		      _ForwardIterator __result)
 3564              		.loc 7 99 0
 3565              		.cfi_startproc
 3566 0000 55       		pushq	%rbp
 3567              		.cfi_def_cfa_offset 16
 3568              		.cfi_offset 6, -16
 3569 0001 4889E5   		movq	%rsp, %rbp
 3570              		.cfi_def_cfa_register 6
 3571 0004 4883EC20 		subq	$32, %rsp
 3572 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3573 000c 488975F0 		movq	%rsi, -16(%rbp)
 3574 0010 488955E8 		movq	%rdx, -24(%rbp)
 101:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 3575              		.loc 7 101 0
 3576 0014 488B55E8 		movq	-24(%rbp), %rdx
 3577 0018 488B4DF0 		movq	-16(%rbp), %rcx
 3578 001c 488B45F8 		movq	-8(%rbp), %rax
 3579 0020 4889CE   		movq	%rcx, %rsi
 3580 0023 4889C7   		movq	%rax, %rdi
 3581 0026 E8000000 		call	_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 3581      00
 3582 002b C9       		leave
 3583              		.cfi_def_cfa 7, 8
 3584 002c C3       		ret
 3585              		.cfi_endproc
 3586              	.LFE2431:
 3588              		.section	.text._ZSt12__niter_baseIPdET_S1_,"axG",@progbits,_ZSt12__niter_baseIPdET_S1_,comdat
 3589              		.weak	_ZSt12__niter_baseIPdET_S1_
 3591              	_ZSt12__niter_baseIPdET_S1_:
 3592              	.LFB2439:
 277:/usr/include/c++/7/bits/stl_algobase.h ****     { return __it; }
 3593              		.loc 10 277 0
 3594              		.cfi_startproc
 3595 0000 55       		pushq	%rbp
 3596              		.cfi_def_cfa_offset 16
 3597              		.cfi_offset 6, -16
 3598 0001 4889E5   		movq	%rsp, %rbp
 3599              		.cfi_def_cfa_register 6
 3600 0004 48897DF8 		movq	%rdi, -8(%rbp)
 278:/usr/include/c++/7/bits/stl_algobase.h **** 
 3601              		.loc 10 278 0
 3602 0008 488B45F8 		movq	-8(%rbp), %rax
 3603 000c 5D       		popq	%rbp
 3604              		.cfi_def_cfa 7, 8
 3605 000d C3       		ret
 3606              		.cfi_endproc
 3607              	.LFE2439:
 3609              		.section	.text._ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6
 3610              		.weak	_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6
 3612              	_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS
 3613              	.LFB2440:
 749:/usr/include/c++/7/bits/stl_algobase.h ****     {
 3614              		.loc 10 749 0
 3615              		.cfi_startproc
 3616 0000 55       		pushq	%rbp
 3617              		.cfi_def_cfa_offset 16
 3618              		.cfi_offset 6, -16
 3619 0001 4889E5   		movq	%rsp, %rbp
 3620              		.cfi_def_cfa_register 6
 3621 0004 48897DE8 		movq	%rdi, -24(%rbp)
 3622 0008 488975E0 		movq	%rsi, -32(%rbp)
 3623 000c 488955D8 		movq	%rdx, -40(%rbp)
 751:/usr/include/c++/7/bits/stl_algobase.h ****       for (__decltype(__n + 0) __niter = __n;
 3624              		.loc 10 751 0
 3625 0010 488B45D8 		movq	-40(%rbp), %rax
 3626 0014 F20F1000 		movsd	(%rax), %xmm0
 3627 0018 F20F1145 		movsd	%xmm0, -8(%rbp)
 3627      F8
 3628              	.LBB42:
 752:/usr/include/c++/7/bits/stl_algobase.h **** 	   __niter > 0; --__niter, ++__first)
 3629              		.loc 10 752 0
 3630 001d 488B45E0 		movq	-32(%rbp), %rax
 3631 0021 488945F0 		movq	%rax, -16(%rbp)
 3632              	.L185:
 753:/usr/include/c++/7/bits/stl_algobase.h **** 	*__first = __tmp;
 3633              		.loc 10 753 0
 3634 0025 48837DF0 		cmpq	$0, -16(%rbp)
 3634      00
 3635 002a 7419     		je	.L184
 754:/usr/include/c++/7/bits/stl_algobase.h ****       return __first;
 3636              		.loc 10 754 0
 3637 002c 488B45E8 		movq	-24(%rbp), %rax
 3638 0030 F20F1045 		movsd	-8(%rbp), %xmm0
 3638      F8
 3639 0035 F20F1100 		movsd	%xmm0, (%rax)
 752:/usr/include/c++/7/bits/stl_algobase.h **** 	   __niter > 0; --__niter, ++__first)
 3640              		.loc 10 752 0
 3641 0039 48836DF0 		subq	$1, -16(%rbp)
 3641      01
 3642 003e 488345E8 		addq	$8, -24(%rbp)
 3642      08
 3643 0043 EBE0     		jmp	.L185
 3644              	.L184:
 3645              	.LBE42:
 755:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3646              		.loc 10 755 0
 3647 0045 488B45E8 		movq	-24(%rbp), %rax
 756:/usr/include/c++/7/bits/stl_algobase.h **** 
 3648              		.loc 10 756 0
 3649 0049 5D       		popq	%rbp
 3650              		.cfi_def_cfa 7, 8
 3651 004a C3       		ret
 3652              		.cfi_endproc
 3653              	.LFE2440:
 3655              		.section	.text._ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt4copyISt13move_i
 3656              		.weak	_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 3658              	_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_:
 3659              	.LFB2441:
 446:/usr/include/c++/7/bits/stl_algobase.h ****     {
 3660              		.loc 10 446 0
 3661              		.cfi_startproc
 3662 0000 55       		pushq	%rbp
 3663              		.cfi_def_cfa_offset 16
 3664              		.cfi_offset 6, -16
 3665 0001 4889E5   		movq	%rsp, %rbp
 3666              		.cfi_def_cfa_register 6
 3667 0004 53       		pushq	%rbx
 3668 0005 4883EC28 		subq	$40, %rsp
 3669              		.cfi_offset 3, -24
 3670 0009 48897DE8 		movq	%rdi, -24(%rbp)
 3671 000d 488975E0 		movq	%rsi, -32(%rbp)
 3672 0011 488955D8 		movq	%rdx, -40(%rbp)
 455:/usr/include/c++/7/bits/stl_algobase.h **** 	       __result));
 3673              		.loc 10 455 0
 3674 0015 488B45E0 		movq	-32(%rbp), %rax
 3675 0019 4889C7   		movq	%rax, %rdi
 3676 001c E8000000 		call	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
 3676      00
 3677 0021 4889C3   		movq	%rax, %rbx
 3678 0024 488B45E8 		movq	-24(%rbp), %rax
 3679 0028 4889C7   		movq	%rax, %rdi
 3680 002b E8000000 		call	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
 3680      00
 3681 0030 4889C1   		movq	%rax, %rcx
 456:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3682              		.loc 10 456 0
 3683 0033 488B45D8 		movq	-40(%rbp), %rax
 3684 0037 4889C2   		movq	%rax, %rdx
 3685 003a 4889DE   		movq	%rbx, %rsi
 3686 003d 4889CF   		movq	%rcx, %rdi
 3687 0040 E8000000 		call	_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_
 3687      00
 457:/usr/include/c++/7/bits/stl_algobase.h **** 
 3688              		.loc 10 457 0
 3689 0045 4883C428 		addq	$40, %rsp
 3690 0049 5B       		popq	%rbx
 3691 004a 5D       		popq	%rbp
 3692              		.cfi_def_cfa 7, 8
 3693 004b C3       		ret
 3694              		.cfi_endproc
 3695              	.LFE2441:
 3697              		.section	.text._ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"axG",
 3698              		.weak	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
 3700              	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
 3701              	.LFB2444:
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
 3702              		.loc 3 1241 0
 3703              		.cfi_startproc
 3704 0000 55       		pushq	%rbp
 3705              		.cfi_def_cfa_offset 16
 3706              		.cfi_offset 6, -16
 3707 0001 4889E5   		movq	%rsp, %rbp
 3708              		.cfi_def_cfa_register 6
 3709 0004 4883EC10 		subq	$16, %rsp
 3710 0008 48897DF8 		movq	%rdi, -8(%rbp)
1242:/usr/include/c++/7/bits/stl_iterator.h ****     -> decltype(__miter_base(__it.base()))
1243:/usr/include/c++/7/bits/stl_iterator.h ****     { return __miter_base(__it.base()); }
 3711              		.loc 3 1243 0
 3712 000c 488D45F8 		leaq	-8(%rbp), %rax
 3713 0010 4889C7   		movq	%rax, %rdi
 3714 0013 E8000000 		call	_ZNKSt13move_iteratorIPdE4baseEv
 3714      00
 3715 0018 4889C7   		movq	%rax, %rdi
 3716 001b E8000000 		call	_ZSt12__miter_baseIPdET_S1_
 3716      00
 3717 0020 C9       		leave
 3718              		.cfi_def_cfa 7, 8
 3719 0021 C3       		ret
 3720              		.cfi_endproc
 3721              	.LFE2444:
 3723              		.section	.text._ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb
 3724              		.weak	_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_
 3726              	_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_:
 3727              	.LFB2445:
 420:/usr/include/c++/7/bits/stl_algobase.h ****     {
 3728              		.loc 10 420 0
 3729              		.cfi_startproc
 3730 0000 55       		pushq	%rbp
 3731              		.cfi_def_cfa_offset 16
 3732              		.cfi_offset 6, -16
 3733 0001 4889E5   		movq	%rsp, %rbp
 3734              		.cfi_def_cfa_register 6
 3735 0004 4154     		pushq	%r12
 3736 0006 53       		pushq	%rbx
 3737 0007 4883EC20 		subq	$32, %rsp
 3738              		.cfi_offset 12, -24
 3739              		.cfi_offset 3, -32
 3740 000b 48897DE8 		movq	%rdi, -24(%rbp)
 3741 000f 488975E0 		movq	%rsi, -32(%rbp)
 3742 0013 488955D8 		movq	%rdx, -40(%rbp)
 422:/usr/include/c++/7/bits/stl_algobase.h **** 					     std::__niter_base(__last),
 3743              		.loc 10 422 0
 3744 0017 488B45D8 		movq	-40(%rbp), %rax
 3745 001b 4889C7   		movq	%rax, %rdi
 3746 001e E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 3746      00
 3747 0023 4989C4   		movq	%rax, %r12
 3748 0026 488B45E0 		movq	-32(%rbp), %rax
 3749 002a 4889C7   		movq	%rax, %rdi
 3750 002d E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 3750      00
 3751 0032 4889C3   		movq	%rax, %rbx
 3752 0035 488B45E8 		movq	-24(%rbp), %rax
 3753 0039 4889C7   		movq	%rax, %rdi
 3754 003c E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 3754      00
 424:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3755              		.loc 10 424 0
 3756 0041 4C89E2   		movq	%r12, %rdx
 3757 0044 4889DE   		movq	%rbx, %rsi
 3758 0047 4889C7   		movq	%rax, %rdi
 3759 004a E8000000 		call	_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_
 3759      00
 425:/usr/include/c++/7/bits/stl_algobase.h **** 
 3760              		.loc 10 425 0
 3761 004f 4883C420 		addq	$32, %rsp
 3762 0053 5B       		popq	%rbx
 3763 0054 415C     		popq	%r12
 3764 0056 5D       		popq	%rbp
 3765              		.cfi_def_cfa 7, 8
 3766 0057 C3       		ret
 3767              		.cfi_endproc
 3768              	.LFE2445:
 3770              		.section	.text._ZNKSt13move_iteratorIPdE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIPdE4baseEv,c
 3771              		.align 2
 3772              		.weak	_ZNKSt13move_iteratorIPdE4baseEv
 3774              	_ZNKSt13move_iteratorIPdE4baseEv:
 3775              	.LFB2446:
1045:/usr/include/c++/7/bits/stl_iterator.h ****       { return _M_current; }
 3776              		.loc 3 1045 0
 3777              		.cfi_startproc
 3778 0000 55       		pushq	%rbp
 3779              		.cfi_def_cfa_offset 16
 3780              		.cfi_offset 6, -16
 3781 0001 4889E5   		movq	%rsp, %rbp
 3782              		.cfi_def_cfa_register 6
 3783 0004 48897DF8 		movq	%rdi, -8(%rbp)
1046:/usr/include/c++/7/bits/stl_iterator.h **** 
 3784              		.loc 3 1046 0
 3785 0008 488B45F8 		movq	-8(%rbp), %rax
 3786 000c 488B00   		movq	(%rax), %rax
 3787 000f 5D       		popq	%rbp
 3788              		.cfi_def_cfa 7, 8
 3789 0010 C3       		ret
 3790              		.cfi_endproc
 3791              	.LFE2446:
 3793              		.section	.text._ZSt12__miter_baseIPdET_S1_,"axG",@progbits,_ZSt12__miter_baseIPdET_S1_,comdat
 3794              		.weak	_ZSt12__miter_baseIPdET_S1_
 3796              	_ZSt12__miter_baseIPdET_S1_:
 3797              	.LFB2447:
 3798              		.file 11 "/usr/include/c++/7/bits/cpp_type_traits.h"
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
 3799              		.loc 11 408 0
 3800              		.cfi_startproc
 3801 0000 55       		pushq	%rbp
 3802              		.cfi_def_cfa_offset 16
 3803              		.cfi_offset 6, -16
 3804 0001 4889E5   		movq	%rsp, %rbp
 3805              		.cfi_def_cfa_register 6
 3806 0004 48897DF8 		movq	%rdi, -8(%rbp)
 409:/usr/include/c++/7/bits/cpp_type_traits.h ****     { return __it; }
 3807              		.loc 11 409 0
 3808 0008 488B45F8 		movq	-8(%rbp), %rax
 3809 000c 5D       		popq	%rbp
 3810              		.cfi_def_cfa 7, 8
 3811 000d C3       		ret
 3812              		.cfi_endproc
 3813              	.LFE2447:
 3815              		.section	.text._ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb1E
 3816              		.weak	_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_
 3818              	_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_:
 3819              	.LFB2448:
 375:/usr/include/c++/7/bits/stl_algobase.h ****     {
 3820              		.loc 10 375 0
 3821              		.cfi_startproc
 3822 0000 55       		pushq	%rbp
 3823              		.cfi_def_cfa_offset 16
 3824              		.cfi_offset 6, -16
 3825 0001 4889E5   		movq	%rsp, %rbp
 3826              		.cfi_def_cfa_register 6
 3827 0004 4883EC30 		subq	$48, %rsp
 3828 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3829 000c 488975E0 		movq	%rsi, -32(%rbp)
 3830 0010 488955D8 		movq	%rdx, -40(%rbp)
 380:/usr/include/c++/7/bits/stl_algobase.h **** 	                     && __is_pointer<_II>::__value
 3831              		.loc 10 380 0
 3832 0014 C645FF01 		movb	$1, -1(%rbp)
 386:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3833              		.loc 10 386 0
 3834 0018 488B55D8 		movq	-40(%rbp), %rdx
 3835 001c 488B4DE0 		movq	-32(%rbp), %rcx
 3836 0020 488B45E8 		movq	-24(%rbp), %rax
 3837 0024 4889CE   		movq	%rcx, %rsi
 3838 0027 4889C7   		movq	%rax, %rdi
 3839 002a E8000000 		call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
 3839      00
 387:/usr/include/c++/7/bits/stl_algobase.h **** 
 3840              		.loc 10 387 0
 3841 002f C9       		leave
 3842              		.cfi_def_cfa 7, 8
 3843 0030 C3       		ret
 3844              		.cfi_endproc
 3845              	.LFE2448:
 3847              		.section	.text._ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S
 3848              		.weak	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
 3850              	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_:
 3851              	.LFB2449:
 357:/usr/include/c++/7/bits/stl_algobase.h ****         {
 3852              		.loc 10 357 0
 3853              		.cfi_startproc
 3854 0000 55       		pushq	%rbp
 3855              		.cfi_def_cfa_offset 16
 3856              		.cfi_offset 6, -16
 3857 0001 4889E5   		movq	%rsp, %rbp
 3858              		.cfi_def_cfa_register 6
 3859 0004 4883EC30 		subq	$48, %rsp
 3860 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3861 000c 488975E0 		movq	%rsi, -32(%rbp)
 3862 0010 488955D8 		movq	%rdx, -40(%rbp)
 366:/usr/include/c++/7/bits/stl_algobase.h **** 	  if (_Num)
 3863              		.loc 10 366 0
 3864 0014 488B55E0 		movq	-32(%rbp), %rdx
 3865 0018 488B45E8 		movq	-24(%rbp), %rax
 3866 001c 4829C2   		subq	%rax, %rdx
 3867 001f 4889D0   		movq	%rdx, %rax
 3868 0022 48C1F803 		sarq	$3, %rax
 3869 0026 488945F8 		movq	%rax, -8(%rbp)
 367:/usr/include/c++/7/bits/stl_algobase.h **** 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
 3870              		.loc 10 367 0
 3871 002a 48837DF8 		cmpq	$0, -8(%rbp)
 3871      00
 3872 002f 741F     		je	.L200
 368:/usr/include/c++/7/bits/stl_algobase.h **** 	  return __result + _Num;
 3873              		.loc 10 368 0
 3874 0031 488B45F8 		movq	-8(%rbp), %rax
 3875 0035 488D14C5 		leaq	0(,%rax,8), %rdx
 3875      00000000 
 3876 003d 488B4DE8 		movq	-24(%rbp), %rcx
 3877 0041 488B45D8 		movq	-40(%rbp), %rax
 3878 0045 4889CE   		movq	%rcx, %rsi
 3879 0048 4889C7   		movq	%rax, %rdi
 3880 004b E8000000 		call	memmove@PLT
 3880      00
 3881              	.L200:
 369:/usr/include/c++/7/bits/stl_algobase.h **** 	}
 3882              		.loc 10 369 0
 3883 0050 488B45F8 		movq	-8(%rbp), %rax
 3884 0054 488D14C5 		leaq	0(,%rax,8), %rdx
 3884      00000000 
 3885 005c 488B45D8 		movq	-40(%rbp), %rax
 3886 0060 4801D0   		addq	%rdx, %rax
 370:/usr/include/c++/7/bits/stl_algobase.h ****     };
 3887              		.loc 10 370 0
 3888 0063 C9       		leave
 3889              		.cfi_def_cfa 7, 8
 3890 0064 C3       		ret
 3891              		.cfi_endproc
 3892              	.LFE2449:
 3894              		.text
 3896              	_Z41__static_initialization_and_destruction_0ii:
 3897              	.LFB2450:
 3898              		.loc 1 234 0
 3899              		.cfi_startproc
 3900 0e3b 55       		pushq	%rbp
 3901              		.cfi_def_cfa_offset 16
 3902              		.cfi_offset 6, -16
 3903 0e3c 4889E5   		movq	%rsp, %rbp
 3904              		.cfi_def_cfa_register 6
 3905 0e3f 4883EC10 		subq	$16, %rsp
 3906 0e43 897DFC   		movl	%edi, -4(%rbp)
 3907 0e46 8975F8   		movl	%esi, -8(%rbp)
 3908              		.loc 1 234 0
 3909 0e49 837DFC01 		cmpl	$1, -4(%rbp)
 3910 0e4d 7532     		jne	.L204
 3911              		.loc 1 234 0 is_stmt 0 discriminator 1
 3912 0e4f 817DF8FF 		cmpl	$65535, -8(%rbp)
 3912      FF0000
 3913 0e56 7529     		jne	.L204
 3914              		.file 12 "/usr/include/c++/7/iostream"
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
 3915              		.loc 12 74 0 is_stmt 1
 3916 0e58 488D3D00 		leaq	_ZStL8__ioinit(%rip), %rdi
 3916      000000
 3917 0e5f E8000000 		call	_ZNSt8ios_base4InitC1Ev@PLT
 3917      00
 3918 0e64 488D1500 		leaq	__dso_handle(%rip), %rdx
 3918      000000
 3919 0e6b 488D3500 		leaq	_ZStL8__ioinit(%rip), %rsi
 3919      000000
 3920 0e72 488B0500 		movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
 3920      000000
 3921 0e79 4889C7   		movq	%rax, %rdi
 3922 0e7c E8000000 		call	__cxa_atexit@PLT
 3922      00
 3923              	.L204:
 3924              		.loc 1 234 0
 3925 0e81 90       		nop
 3926 0e82 C9       		leave
 3927              		.cfi_def_cfa 7, 8
 3928 0e83 C3       		ret
 3929              		.cfi_endproc
 3930              	.LFE2450:
 3933              	_GLOBAL__sub_I__ZN9RowVectorC2EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
 3934              	.LFB2451:
 3935              		.loc 1 234 0
 3936              		.cfi_startproc
 3937 0e84 55       		pushq	%rbp
 3938              		.cfi_def_cfa_offset 16
 3939              		.cfi_offset 6, -16
 3940 0e85 4889E5   		movq	%rsp, %rbp
 3941              		.cfi_def_cfa_register 6
 3942              		.loc 1 234 0
 3943 0e88 BEFFFF00 		movl	$65535, %esi
 3943      00
 3944 0e8d BF010000 		movl	$1, %edi
 3944      00
 3945 0e92 E8A4FFFF 		call	_Z41__static_initialization_and_destruction_0ii
 3945      FF
 3946 0e97 5D       		popq	%rbp
 3947              		.cfi_def_cfa 7, 8
 3948 0e98 C3       		ret
 3949              		.cfi_endproc
 3950              	.LFE2451:
 3952              		.section	.init_array,"aw"
 3953              		.align 8
 3954 0000 00000000 		.quad	_GLOBAL__sub_I__ZN9RowVectorC2EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 3954      00000000 
 3955              		.section	.rodata
 3956 01c8 00000000 		.align 32
 3956      00000000 
 3956      00000000 
 3956      00000000 
 3956      00000000 
 3959              	_ZZN9RowVectorplERKS_E19__PRETTY_FUNCTION__:
 3960 01e0 526F7756 		.string	"RowVector RowVector::operator+(const RowVector&)"
 3960      6563746F 
 3960      7220526F 
 3960      77566563 
 3960      746F723A 
 3961 0211 00000000 		.align 32
 3961      00000000 
 3961      00000000 
 3961      000000
 3964              	_ZZN9RowVectormlERKS_E19__PRETTY_FUNCTION__:
 3965 0220 636F6E73 		.string	"const double RowVector::operator*(const RowVector&)"
 3965      7420646F 
 3965      75626C65 
 3965      20526F77 
 3965      56656374 
 3966 0254 00000000 		.align 8
 3967              	.LC13:
 3968 0258 00000000 		.long	0
 3969 025c 0000F03F 		.long	1072693248
 3970              		.align 8
 3971              	.LC14:
 3972 0260 00000000 		.long	0
 3973 0264 00000040 		.long	1073741824
 3974              		.align 8
 3975              	.LC19:
 3976 0268 00000000 		.long	0
 3977 026c 0000E03F 		.long	1071644672
 3978              		.align 8
 3979              	.LC23:
 3980 0270 00000000 		.long	0
 3981 0274 0000F0BF 		.long	-1074790400
 3982              		.text
 3983              	.Letext0:
 3984              		.file 13 "/usr/include/c++/7/bits/basic_string.h"
 3985              		.file 14 "/usr/include/c++/7/bits/basic_string.tcc"
 3986              		.file 15 "/usr/include/c++/7/bits/stringfwd.h"
 3987              		.file 16 "/usr/include/c++/7/cstdint"
 3988              		.file 17 "/usr/include/c++/7/new"
 3989              		.file 18 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
 3990              		.file 19 "/usr/include/c++/7/bits/exception_ptr.h"
 3991              		.file 20 "/usr/include/c++/7/type_traits"
 3992              		.file 21 "/usr/include/c++/7/cwchar"
 3993              		.file 22 "/usr/include/c++/7/bits/stl_pair.h"
 3994              		.file 23 "/usr/include/c++/7/bits/stl_iterator_base_types.h"
 3995              		.file 24 "/usr/include/c++/7/debug/debug.h"
 3996              		.file 25 "/usr/include/c++/7/bits/char_traits.h"
 3997              		.file 26 "/usr/include/c++/7/clocale"
 3998              		.file 27 "/usr/include/c++/7/cstdlib"
 3999              		.file 28 "/usr/include/c++/7/cstdio"
 4000              		.file 29 "/usr/include/c++/7/initializer_list"
 4001              		.file 30 "/usr/include/c++/7/system_error"
 4002              		.file 31 "/usr/include/c++/7/bits/ios_base.h"
 4003              		.file 32 "/usr/include/c++/7/cwctype"
 4004              		.file 33 "/usr/include/c++/7/iosfwd"
 4005              		.file 34 "/usr/include/c++/7/bits/stl_iterator_base_funcs.h"
 4006              		.file 35 "/usr/include/c++/7/bits/move.h"
 4007              		.file 36 "/usr/include/c++/7/bits/predefined_ops.h"
 4008              		.file 37 "/usr/include/c++/7/ext/numeric_traits.h"
 4009              		.file 38 "/usr/include/c++/7/ext/alloc_traits.h"
 4010              		.file 39 "/usr/include/c++/7/ext/type_traits.h"
 4011              		.file 40 "/usr/include/x86_64-linux-gnu/bits/types.h"
 4012              		.file 41 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
 4013              		.file 42 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
 4014              		.file 43 "/usr/include/stdint.h"
 4015              		.file 44 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
 4016              		.file 45 "<built-in>"
 4017              		.file 46 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
 4018              		.file 47 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
 4019              		.file 48 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
 4020              		.file 49 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
 4021              		.file 50 "/usr/include/x86_64-linux-gnu/bits/libio.h"
 4022              		.file 51 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
 4023              		.file 52 "/usr/include/wchar.h"
 4024              		.file 53 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
 4025              		.file 54 "/usr/include/locale.h"
 4026              		.file 55 "/usr/include/time.h"
 4027              		.file 56 "/usr/include/x86_64-linux-gnu/c++/7/bits/atomic_word.h"
 4028              		.file 57 "/usr/include/stdlib.h"
 4029              		.file 58 "/usr/include/x86_64-linux-gnu/bits/_G_config.h"
 4030              		.file 59 "/usr/include/stdio.h"
 4031              		.file 60 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
 4032              		.file 61 "/usr/include/errno.h"
 4033              		.file 62 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
 4034              		.file 63 "/usr/include/wctype.h"
 23682              		.align 8
 23685              	DW.ref.__gxx_personality_v0:
 23686 0000 00000000 		.quad	__gxx_personality_v0
 23686      00000000 
 23687              		.hidden	__dso_handle
 23688              		.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
 23689              		.section	.note.GNU-stack,"",@progbits
