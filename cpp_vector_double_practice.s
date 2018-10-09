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
  86              		.section	.text._ZN9RowVectorC2EjPKdPKc,"axG",@progbits,_ZN9RowVectorC5EjPKdPKc,comdat
  87              		.align 2
  88              		.weak	_ZN9RowVectorC2EjPKdPKc
  90              	_ZN9RowVectorC2EjPKdPKc:
  91              	.LFB1845:
  35:cpp_vector_double_practice.cpp **** 
  36:cpp_vector_double_practice.cpp ****         // Default arguments
  37:cpp_vector_double_practice.cpp ****         // If the function could not find the argument in the call, it uses the default value.
  38:cpp_vector_double_practice.cpp ****         RowVector(const uint32_t n, const double *values=NULL, const char *new_name="None"){
  92              		.loc 1 38 0
  93              		.cfi_startproc
  94              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
  95              		.cfi_lsda 0x1b,.LLSDA1845
  96 0000 55       		pushq	%rbp
  97              		.cfi_def_cfa_offset 16
  98              		.cfi_offset 6, -16
  99 0001 4889E5   		movq	%rsp, %rbp
 100              		.cfi_def_cfa_register 6
 101 0004 53       		pushq	%rbx
 102 0005 4883EC38 		subq	$56, %rsp
 103              		.cfi_offset 3, -24
 104 0009 48897DD8 		movq	%rdi, -40(%rbp)
 105 000d 8975D4   		movl	%esi, -44(%rbp)
 106 0010 488955C8 		movq	%rdx, -56(%rbp)
 107 0014 48894DC0 		movq	%rcx, -64(%rbp)
 108              	.LBB3:
 109              		.loc 1 38 0
 110 0018 488B45D8 		movq	-40(%rbp), %rax
 111 001c 4889C7   		movq	%rax, %rdi
 112 001f E8000000 		call	_ZNSt6vectorIdSaIdEEC1Ev
 112      00
 113 0024 488B45D8 		movq	-40(%rbp), %rax
 114 0028 4883C018 		addq	$24, %rax
 115 002c 4889C7   		movq	%rax, %rdi
 116 002f E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
 116      00
 117              	.LBB4:
  39:cpp_vector_double_practice.cpp **** #ifdef LOG
  40:cpp_vector_double_practice.cpp ****             std::cout << '[' << &columns << ']' 
 118              		.loc 1 40 0
 119 0034 BE5B0000 		movl	$91, %esi
 119      00
 120 0039 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 120      000000
 121              	.LEHB0:
 122 0040 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 122      00
 123 0045 4889C2   		movq	%rax, %rdx
 124 0048 488B45D8 		movq	-40(%rbp), %rax
 125 004c 4889C6   		movq	%rax, %rsi
 126 004f 4889D7   		movq	%rdx, %rdi
 127 0052 E8000000 		call	_ZNSolsEPKv@PLT
 127      00
  41:cpp_vector_double_practice.cpp ****             << "RowVector(" << n << ", " << values << ", " << new_name << ")\n";
 128              		.loc 1 41 0 discriminator 1
 129 0057 BE5D0000 		movl	$93, %esi
 129      00
 130 005c 4889C7   		movq	%rax, %rdi
 131 005f E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 131      00
 132              		.loc 1 41 0 is_stmt 0 discriminator 2
 133 0064 488D3500 		leaq	.LC1(%rip), %rsi
 133      000000
 134 006b 4889C7   		movq	%rax, %rdi
 135 006e E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 135      00
 136              		.loc 1 41 0 discriminator 1
 137 0073 4889C2   		movq	%rax, %rdx
 138 0076 8B45D4   		movl	-44(%rbp), %eax
 139 0079 89C6     		movl	%eax, %esi
 140 007b 4889D7   		movq	%rdx, %rdi
 141 007e E8000000 		call	_ZNSolsEj@PLT
 141      00
 142              		.loc 1 41 0 discriminator 2
 143 0083 488D3500 		leaq	.LC2(%rip), %rsi
 143      000000
 144 008a 4889C7   		movq	%rax, %rdi
 145 008d E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 145      00
 146              		.loc 1 41 0 discriminator 3
 147 0092 4889C2   		movq	%rax, %rdx
 148 0095 488B45C8 		movq	-56(%rbp), %rax
 149 0099 4889C6   		movq	%rax, %rsi
 150 009c 4889D7   		movq	%rdx, %rdi
 151 009f E8000000 		call	_ZNSolsEPKv@PLT
 151      00
 152              		.loc 1 41 0 discriminator 4
 153 00a4 488D3500 		leaq	.LC2(%rip), %rsi
 153      000000
 154 00ab 4889C7   		movq	%rax, %rdi
 155 00ae E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 155      00
 156              		.loc 1 41 0 discriminator 5
 157 00b3 4889C2   		movq	%rax, %rdx
 158 00b6 488B45C0 		movq	-64(%rbp), %rax
 159 00ba 4889C6   		movq	%rax, %rsi
 160 00bd 4889D7   		movq	%rdx, %rdi
 161 00c0 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 161      00
 162              		.loc 1 41 0 discriminator 6
 163 00c5 488D3500 		leaq	.LC3(%rip), %rsi
 163      000000
 164 00cc 4889C7   		movq	%rax, %rdi
 165 00cf E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 165      00
  42:cpp_vector_double_practice.cpp **** #endif
  43:cpp_vector_double_practice.cpp ****             columns.resize(n);
 166              		.loc 1 43 0 is_stmt 1
 167 00d4 488B45D8 		movq	-40(%rbp), %rax
 168 00d8 8B55D4   		movl	-44(%rbp), %edx
 169 00db 4889D6   		movq	%rdx, %rsi
 170 00de 4889C7   		movq	%rax, %rdi
 171 00e1 E8000000 		call	_ZNSt6vectorIdSaIdEE6resizeEm
 171      00
 172              	.LBB5:
  44:cpp_vector_double_practice.cpp **** 
  45:cpp_vector_double_practice.cpp ****             // If initial values available, copy
  46:cpp_vector_double_practice.cpp ****             if (values){
 173              		.loc 1 46 0
 174 00e6 48837DC8 		cmpq	$0, -56(%rbp)
 174      00
 175 00eb 7456     		je	.L3
 176              	.LBB6:
 177              	.LBB7:
  47:cpp_vector_double_practice.cpp ****                 for (uint32_t i = 0; columns.size() > i; ++i){
 178              		.loc 1 47 0
 179 00ed C745E800 		movl	$0, -24(%rbp)
 179      000000
 180              	.L5:
 181              		.loc 1 47 0 is_stmt 0 discriminator 3
 182 00f4 488B45D8 		movq	-40(%rbp), %rax
 183 00f8 4889C7   		movq	%rax, %rdi
 184 00fb E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 184      00
 185 0100 4889C2   		movq	%rax, %rdx
 186 0103 8B45E8   		movl	-24(%rbp), %eax
 187 0106 4839C2   		cmpq	%rax, %rdx
 188 0109 0F97C0   		seta	%al
 189 010c 84C0     		testb	%al, %al
 190 010e 7476     		je	.L6
  48:cpp_vector_double_practice.cpp ****                     columns[i] = values[i];
 191              		.loc 1 48 0 is_stmt 1 discriminator 2
 192 0110 8B45E8   		movl	-24(%rbp), %eax
 193 0113 488D14C5 		leaq	0(,%rax,8), %rdx
 193      00000000 
 194 011b 488B45C8 		movq	-56(%rbp), %rax
 195 011f 488D1C02 		leaq	(%rdx,%rax), %rbx
 196 0123 8B55E8   		movl	-24(%rbp), %edx
 197 0126 488B45D8 		movq	-40(%rbp), %rax
 198 012a 4889D6   		movq	%rdx, %rsi
 199 012d 4889C7   		movq	%rax, %rdi
 200 0130 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 200      00
 201 0135 F20F1003 		movsd	(%rbx), %xmm0
 202 0139 F20F1100 		movsd	%xmm0, (%rax)
  47:cpp_vector_double_practice.cpp ****                 for (uint32_t i = 0; columns.size() > i; ++i){
 203              		.loc 1 47 0 discriminator 2
 204 013d 8345E801 		addl	$1, -24(%rbp)
 205 0141 EBB1     		jmp	.L5
 206              	.L3:
 207              	.LBE7:
 208              	.LBE6:
 209              	.LBB8:
 210              	.LBB9:
  49:cpp_vector_double_practice.cpp ****                 }
  50:cpp_vector_double_practice.cpp ****             }
  51:cpp_vector_double_practice.cpp ****             // If no initial values, set all values zero
  52:cpp_vector_double_practice.cpp ****             else{
  53:cpp_vector_double_practice.cpp ****                 for (uint32_t i = 0; columns.size() > i; ++i){
 211              		.loc 1 53 0
 212 0143 C745EC00 		movl	$0, -20(%rbp)
 212      000000
 213              	.L7:
 214              		.loc 1 53 0 is_stmt 0 discriminator 3
 215 014a 488B45D8 		movq	-40(%rbp), %rax
 216 014e 4889C7   		movq	%rax, %rdi
 217 0151 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 217      00
 218 0156 4889C2   		movq	%rax, %rdx
 219 0159 8B45EC   		movl	-20(%rbp), %eax
 220 015c 4839C2   		cmpq	%rax, %rdx
 221 015f 0F97C0   		seta	%al
 222 0162 84C0     		testb	%al, %al
 223 0164 7420     		je	.L6
  54:cpp_vector_double_practice.cpp ****                     columns[i] = 0.0;
 224              		.loc 1 54 0 is_stmt 1 discriminator 2
 225 0166 8B55EC   		movl	-20(%rbp), %edx
 226 0169 488B45D8 		movq	-40(%rbp), %rax
 227 016d 4889D6   		movq	%rdx, %rsi
 228 0170 4889C7   		movq	%rax, %rdi
 229 0173 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 229      00
 230 0178 660FEFC0 		pxor	%xmm0, %xmm0
 231 017c F20F1100 		movsd	%xmm0, (%rax)
  53:cpp_vector_double_practice.cpp ****                     columns[i] = 0.0;
 232              		.loc 1 53 0 discriminator 2
 233 0180 8345EC01 		addl	$1, -20(%rbp)
 234 0184 EBC4     		jmp	.L7
 235              	.L6:
 236              	.LBE9:
 237              	.LBE8:
 238              	.LBE5:
  55:cpp_vector_double_practice.cpp ****                 }
  56:cpp_vector_double_practice.cpp ****             }
  57:cpp_vector_double_practice.cpp **** 
  58:cpp_vector_double_practice.cpp ****             name = new_name;
 239              		.loc 1 58 0
 240 0186 488B45D8 		movq	-40(%rbp), %rax
 241 018a 488D5018 		leaq	24(%rax), %rdx
 242 018e 488B45C0 		movq	-64(%rbp), %rax
 243 0192 4889C6   		movq	%rax, %rsi
 244 0195 4889D7   		movq	%rdx, %rdi
 245 0198 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc@PLT
 245      00
 246              	.LEHE0:
 247              	.LBE4:
 248              	.LBE3:
  59:cpp_vector_double_practice.cpp ****         }
 249              		.loc 1 59 0
 250 019d EB2A     		jmp	.L10
 251              	.L9:
 252 019f 4889C3   		movq	%rax, %rbx
 253              	.LBB10:
  38:cpp_vector_double_practice.cpp **** #ifdef LOG
 254              		.loc 1 38 0
 255 01a2 488B45D8 		movq	-40(%rbp), %rax
 256 01a6 4883C018 		addq	$24, %rax
 257 01aa 4889C7   		movq	%rax, %rdi
 258 01ad E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 258      00
 259 01b2 488B45D8 		movq	-40(%rbp), %rax
 260 01b6 4889C7   		movq	%rax, %rdi
 261 01b9 E8000000 		call	_ZNSt6vectorIdSaIdEED1Ev
 261      00
 262 01be 4889D8   		movq	%rbx, %rax
 263 01c1 4889C7   		movq	%rax, %rdi
 264              	.LEHB1:
 265 01c4 E8000000 		call	_Unwind_Resume@PLT
 265      00
 266              	.LEHE1:
 267              	.L10:
 268              	.LBE10:
 269              		.loc 1 59 0
 270 01c9 4883C438 		addq	$56, %rsp
 271 01cd 5B       		popq	%rbx
 272 01ce 5D       		popq	%rbp
 273              		.cfi_def_cfa 7, 8
 274 01cf C3       		ret
 275              		.cfi_endproc
 276              	.LFE1845:
 277              		.section	.gcc_except_table._ZN9RowVectorC2EjPKdPKc,"aG",@progbits,_ZN9RowVectorC5EjPKdPKc,comdat
 278              	.LLSDA1845:
 279 0000 FF       		.byte	0xff
 280 0001 FF       		.byte	0xff
 281 0002 01       		.byte	0x1
 282 0003 0B       		.uleb128 .LLSDACSE1845-.LLSDACSB1845
 283              	.LLSDACSB1845:
 284 0004 40       		.uleb128 .LEHB0-.LFB1845
 285 0005 DD02     		.uleb128 .LEHE0-.LEHB0
 286 0007 9F03     		.uleb128 .L9-.LFB1845
 287 0009 00       		.uleb128 0
 288 000a C403     		.uleb128 .LEHB1-.LFB1845
 289 000c 05       		.uleb128 .LEHE1-.LEHB1
 290 000d 00       		.uleb128 0
 291 000e 00       		.uleb128 0
 292              	.LLSDACSE1845:
 293              		.section	.text._ZN9RowVectorC2EjPKdPKc,"axG",@progbits,_ZN9RowVectorC5EjPKdPKc,comdat
 295              		.weak	_ZN9RowVectorC1EjPKdPKc
 296              		.set	_ZN9RowVectorC1EjPKdPKc,_ZN9RowVectorC2EjPKdPKc
 297              		.section	.text._ZN9RowVectorC2EjPKc,"axG",@progbits,_ZN9RowVectorC5EjPKc,comdat
 298              		.align 2
 299              		.weak	_ZN9RowVectorC2EjPKc
 301              	_ZN9RowVectorC2EjPKc:
 302              	.LFB1848:
  60:cpp_vector_double_practice.cpp **** 
  61:cpp_vector_double_practice.cpp ****         // Instead of implementing another constructor, reusing an existing one
  62:cpp_vector_double_practice.cpp ****         // c++ 11 or later
  63:cpp_vector_double_practice.cpp ****         RowVector(const uint32_t n, const char *new_name="None") : RowVector(n, NULL, new_name){
 303              		.loc 1 63 0
 304              		.cfi_startproc
 305 0000 55       		pushq	%rbp
 306              		.cfi_def_cfa_offset 16
 307              		.cfi_offset 6, -16
 308 0001 4889E5   		movq	%rsp, %rbp
 309              		.cfi_def_cfa_register 6
 310 0004 4883EC20 		subq	$32, %rsp
 311 0008 48897DF8 		movq	%rdi, -8(%rbp)
 312 000c 8975F4   		movl	%esi, -12(%rbp)
 313 000f 488955E8 		movq	%rdx, -24(%rbp)
 314              	.LBB11:
 315              		.loc 1 63 0
 316 0013 488B55E8 		movq	-24(%rbp), %rdx
 317 0017 8B75F4   		movl	-12(%rbp), %esi
 318 001a 488B45F8 		movq	-8(%rbp), %rax
 319 001e 4889D1   		movq	%rdx, %rcx
 320 0021 BA000000 		movl	$0, %edx
 320      00
 321 0026 4889C7   		movq	%rax, %rdi
 322 0029 E8000000 		call	_ZN9RowVectorC1EjPKdPKc
 322      00
 323              	.LBE11:
  64:cpp_vector_double_practice.cpp ****         }
 324              		.loc 1 64 0
 325 002e 90       		nop
 326 002f C9       		leave
 327              		.cfi_def_cfa 7, 8
 328 0030 C3       		ret
 329              		.cfi_endproc
 330              	.LFE1848:
 332              		.weak	_ZN9RowVectorC1EjPKc
 333              		.set	_ZN9RowVectorC1EjPKc,_ZN9RowVectorC2EjPKc
 334              		.section	.rodata
 335              	.LC5:
 336 0020 3200     		.string	"2"
 337              		.section	.text._ZN9RowVectorC2ERKS_,"axG",@progbits,_ZN9RowVectorC5ERKS_,comdat
 338              		.align 2
 339              		.weak	_ZN9RowVectorC2ERKS_
 341              	_ZN9RowVectorC2ERKS_:
 342              	.LFB1851:
  65:cpp_vector_double_practice.cpp **** 
  66:cpp_vector_double_practice.cpp ****         RowVector(const RowVector & other){
 343              		.loc 1 66 0
 344              		.cfi_startproc
 345              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 346              		.cfi_lsda 0x1b,.LLSDA1851
 347 0000 55       		pushq	%rbp
 348              		.cfi_def_cfa_offset 16
 349              		.cfi_offset 6, -16
 350 0001 4889E5   		movq	%rsp, %rbp
 351              		.cfi_def_cfa_register 6
 352 0004 53       		pushq	%rbx
 353 0005 4883EC28 		subq	$40, %rsp
 354              		.cfi_offset 3, -24
 355 0009 48897DD8 		movq	%rdi, -40(%rbp)
 356 000d 488975D0 		movq	%rsi, -48(%rbp)
 357              	.LBB12:
 358              		.loc 1 66 0
 359 0011 488B45D8 		movq	-40(%rbp), %rax
 360 0015 4889C7   		movq	%rax, %rdi
 361 0018 E8000000 		call	_ZNSt6vectorIdSaIdEEC1Ev
 361      00
 362 001d 488B45D8 		movq	-40(%rbp), %rax
 363 0021 4883C018 		addq	$24, %rax
 364 0025 4889C7   		movq	%rax, %rdi
 365 0028 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
 365      00
 366              	.LBB13:
  67:cpp_vector_double_practice.cpp ****             // https://codereview.stackexchange.com/questions/149669/c-operator-overloading-for-mat
  68:cpp_vector_double_practice.cpp ****             // http://www.cplusplus.com/reference/vector/vector/resize/
  69:cpp_vector_double_practice.cpp ****             columns.resize(other.columns.size());
 367              		.loc 1 69 0
 368 002d 488B5DD8 		movq	-40(%rbp), %rbx
 369 0031 488B45D0 		movq	-48(%rbp), %rax
 370 0035 4889C7   		movq	%rax, %rdi
 371 0038 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 371      00
 372 003d 4889C6   		movq	%rax, %rsi
 373 0040 4889DF   		movq	%rbx, %rdi
 374              	.LEHB2:
 375 0043 E8000000 		call	_ZNSt6vectorIdSaIdEE6resizeEm
 375      00
 376              	.LBB14:
  70:cpp_vector_double_practice.cpp ****             for(uint32_t i=0; columns.size() > i; ++i){
 377              		.loc 1 70 0
 378 0048 C745EC00 		movl	$0, -20(%rbp)
 378      000000
 379              	.L14:
 380              		.loc 1 70 0 is_stmt 0 discriminator 3
 381 004f 488B45D8 		movq	-40(%rbp), %rax
 382 0053 4889C7   		movq	%rax, %rdi
 383 0056 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 383      00
 384 005b 4889C2   		movq	%rax, %rdx
 385 005e 8B45EC   		movl	-20(%rbp), %eax
 386 0061 4839C2   		cmpq	%rax, %rdx
 387 0064 0F97C0   		seta	%al
 388 0067 84C0     		testb	%al, %al
 389 0069 7435     		je	.L13
  71:cpp_vector_double_practice.cpp ****                 columns[i] = other.columns[i];
 390              		.loc 1 71 0 is_stmt 1 discriminator 2
 391 006b 8B55EC   		movl	-20(%rbp), %edx
 392 006e 488B45D0 		movq	-48(%rbp), %rax
 393 0072 4889D6   		movq	%rdx, %rsi
 394 0075 4889C7   		movq	%rax, %rdi
 395 0078 E8000000 		call	_ZNKSt6vectorIdSaIdEEixEm
 395      00
 396 007d 4889C3   		movq	%rax, %rbx
 397 0080 8B55EC   		movl	-20(%rbp), %edx
 398 0083 488B45D8 		movq	-40(%rbp), %rax
 399 0087 4889D6   		movq	%rdx, %rsi
 400 008a 4889C7   		movq	%rax, %rdi
 401 008d E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 401      00
 402 0092 F20F1003 		movsd	(%rbx), %xmm0
 403 0096 F20F1100 		movsd	%xmm0, (%rax)
  70:cpp_vector_double_practice.cpp ****             for(uint32_t i=0; columns.size() > i; ++i){
 404              		.loc 1 70 0 discriminator 2
 405 009a 8345EC01 		addl	$1, -20(%rbp)
 406 009e EBAF     		jmp	.L14
 407              	.L13:
 408              	.LBE14:
  72:cpp_vector_double_practice.cpp ****             }
  73:cpp_vector_double_practice.cpp **** 
  74:cpp_vector_double_practice.cpp ****             // Copy name of the other one
  75:cpp_vector_double_practice.cpp ****             name = other.name;
 409              		.loc 1 75 0
 410 00a0 488B45D0 		movq	-48(%rbp), %rax
 411 00a4 488D5018 		leaq	24(%rax), %rdx
 412 00a8 488B45D8 		movq	-40(%rbp), %rax
 413 00ac 4883C018 		addq	$24, %rax
 414 00b0 4889D6   		movq	%rdx, %rsi
 415 00b3 4889C7   		movq	%rax, %rdi
 416 00b6 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
 416      00
  76:cpp_vector_double_practice.cpp ****             // Then append
  77:cpp_vector_double_practice.cpp ****             name.append("2");
 417              		.loc 1 77 0
 418 00bb 488B45D8 		movq	-40(%rbp), %rax
 419 00bf 4883C018 		addq	$24, %rax
 420 00c3 488D3500 		leaq	.LC5(%rip), %rsi
 420      000000
 421 00ca 4889C7   		movq	%rax, %rdi
 422 00cd E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@PLT
 422      00
 423              	.LEHE2:
 424              	.LBE13:
 425              	.LBE12:
  78:cpp_vector_double_practice.cpp ****         }
 426              		.loc 1 78 0
 427 00d2 EB2A     		jmp	.L17
 428              	.L16:
 429 00d4 4889C3   		movq	%rax, %rbx
 430              	.LBB15:
  66:cpp_vector_double_practice.cpp ****             // https://codereview.stackexchange.com/questions/149669/c-operator-overloading-for-mat
 431              		.loc 1 66 0
 432 00d7 488B45D8 		movq	-40(%rbp), %rax
 433 00db 4883C018 		addq	$24, %rax
 434 00df 4889C7   		movq	%rax, %rdi
 435 00e2 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 435      00
 436 00e7 488B45D8 		movq	-40(%rbp), %rax
 437 00eb 4889C7   		movq	%rax, %rdi
 438 00ee E8000000 		call	_ZNSt6vectorIdSaIdEED1Ev
 438      00
 439 00f3 4889D8   		movq	%rbx, %rax
 440 00f6 4889C7   		movq	%rax, %rdi
 441              	.LEHB3:
 442 00f9 E8000000 		call	_Unwind_Resume@PLT
 442      00
 443              	.LEHE3:
 444              	.L17:
 445              	.LBE15:
 446              		.loc 1 78 0
 447 00fe 4883C428 		addq	$40, %rsp
 448 0102 5B       		popq	%rbx
 449 0103 5D       		popq	%rbp
 450              		.cfi_def_cfa 7, 8
 451 0104 C3       		ret
 452              		.cfi_endproc
 453              	.LFE1851:
 454              		.section	.gcc_except_table._ZN9RowVectorC2ERKS_,"aG",@progbits,_ZN9RowVectorC5ERKS_,comdat
 455              	.LLSDA1851:
 456 0000 FF       		.byte	0xff
 457 0001 FF       		.byte	0xff
 458 0002 01       		.byte	0x1
 459 0003 0B       		.uleb128 .LLSDACSE1851-.LLSDACSB1851
 460              	.LLSDACSB1851:
 461 0004 43       		.uleb128 .LEHB2-.LFB1851
 462 0005 8F01     		.uleb128 .LEHE2-.LEHB2
 463 0007 D401     		.uleb128 .L16-.LFB1851
 464 0009 00       		.uleb128 0
 465 000a F901     		.uleb128 .LEHB3-.LFB1851
 466 000c 05       		.uleb128 .LEHE3-.LEHB3
 467 000d 00       		.uleb128 0
 468 000e 00       		.uleb128 0
 469              	.LLSDACSE1851:
 470              		.section	.text._ZN9RowVectorC2ERKS_,"axG",@progbits,_ZN9RowVectorC5ERKS_,comdat
 472              		.weak	_ZN9RowVectorC1ERKS_
 473              		.set	_ZN9RowVectorC1ERKS_,_ZN9RowVectorC2ERKS_
 474              		.section	.text._ZN9RowVectorixEj,"axG",@progbits,_ZN9RowVectorixEj,comdat
 475              		.align 2
 476              		.weak	_ZN9RowVectorixEj
 478              	_ZN9RowVectorixEj:
 479              	.LFB1853:
  79:cpp_vector_double_practice.cpp **** 
  80:cpp_vector_double_practice.cpp ****         double & operator [] (const uint32_t i){
 480              		.loc 1 80 0
 481              		.cfi_startproc
 482 0000 55       		pushq	%rbp
 483              		.cfi_def_cfa_offset 16
 484              		.cfi_offset 6, -16
 485 0001 4889E5   		movq	%rsp, %rbp
 486              		.cfi_def_cfa_register 6
 487 0004 4883EC10 		subq	$16, %rsp
 488 0008 48897DF8 		movq	%rdi, -8(%rbp)
 489 000c 8975F4   		movl	%esi, -12(%rbp)
  81:cpp_vector_double_practice.cpp ****             // Return reference; otherwise, unable to assign
  82:cpp_vector_double_practice.cpp ****             return columns[i];
 490              		.loc 1 82 0
 491 000f 8B55F4   		movl	-12(%rbp), %edx
 492 0012 488B45F8 		movq	-8(%rbp), %rax
 493 0016 4889D6   		movq	%rdx, %rsi
 494 0019 4889C7   		movq	%rax, %rdi
 495 001c E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 495      00
  83:cpp_vector_double_practice.cpp ****         }
 496              		.loc 1 83 0
 497 0021 C9       		leave
 498              		.cfi_def_cfa 7, 8
 499 0022 C3       		ret
 500              		.cfi_endproc
 501              	.LFE1853:
 503              		.section	.rodata
 504 0022 00000000 		.align 8
 504      0000
 505              	.LC6:
 506 0028 6370705F 		.string	"cpp_vector_double_practice.cpp"
 506      76656374 
 506      6F725F64 
 506      6F75626C 
 506      655F7072 
 507 0047 00       		.align 8
 508              	.LC7:
 509 0048 636F6C75 		.string	"columns.size() == other.columns.size()"
 509      6D6E732E 
 509      73697A65 
 509      2829203D 
 509      3D206F74 
 510              		.section	.text._ZN9RowVectorplERKS_,"axG",@progbits,_ZN9RowVectorplERKS_,comdat
 511              		.align 2
 512              		.weak	_ZN9RowVectorplERKS_
 514              	_ZN9RowVectorplERKS_:
 515              	.LFB1855:
  84:cpp_vector_double_practice.cpp **** 
  85:cpp_vector_double_practice.cpp ****         const std::string get_name(){
  86:cpp_vector_double_practice.cpp ****             // Return constant; to prevent change
  87:cpp_vector_double_practice.cpp ****             return name;
  88:cpp_vector_double_practice.cpp ****         }
  89:cpp_vector_double_practice.cpp **** 
  90:cpp_vector_double_practice.cpp ****         RowVector operator + (const RowVector & other){
 516              		.loc 1 90 0
 517              		.cfi_startproc
 518 0000 55       		pushq	%rbp
 519              		.cfi_def_cfa_offset 16
 520              		.cfi_offset 6, -16
 521 0001 4889E5   		movq	%rsp, %rbp
 522              		.cfi_def_cfa_register 6
 523 0004 53       		pushq	%rbx
 524 0005 4883EC38 		subq	$56, %rsp
 525              		.cfi_offset 3, -24
 526 0009 48897DD8 		movq	%rdi, -40(%rbp)
 527 000d 488975D0 		movq	%rsi, -48(%rbp)
 528 0011 488955C8 		movq	%rdx, -56(%rbp)
 529              		.loc 1 90 0
 530 0015 64488B04 		movq	%fs:40, %rax
 530      25280000 
 530      00
 531 001e 488945E8 		movq	%rax, -24(%rbp)
 532 0022 31C0     		xorl	%eax, %eax
  91:cpp_vector_double_practice.cpp ****             // Check size
  92:cpp_vector_double_practice.cpp ****             assert(columns.size() == other.columns.size());
 533              		.loc 1 92 0
 534 0024 488B45D0 		movq	-48(%rbp), %rax
 535 0028 4889C7   		movq	%rax, %rdi
 536 002b E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 536      00
 537 0030 4889C3   		movq	%rax, %rbx
 538 0033 488B45C8 		movq	-56(%rbp), %rax
 539 0037 4889C7   		movq	%rax, %rdi
 540 003a E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 540      00
 541 003f 4839C3   		cmpq	%rax, %rbx
 542 0042 741F     		je	.L21
 543              		.loc 1 92 0 is_stmt 0 discriminator 1
 544 0044 488D0D00 		leaq	_ZZN9RowVectorplERKS_E19__PRETTY_FUNCTION__(%rip), %rcx
 544      000000
 545 004b BA5C0000 		movl	$92, %edx
 545      00
 546 0050 488D3500 		leaq	.LC6(%rip), %rsi
 546      000000
 547 0057 488D3D00 		leaq	.LC7(%rip), %rdi
 547      000000
 548 005e E8000000 		call	__assert_fail@PLT
 548      00
 549              	.L21:
  93:cpp_vector_double_practice.cpp **** 
  94:cpp_vector_double_practice.cpp ****             // Make a new vector to return
  95:cpp_vector_double_practice.cpp ****             RowVector temp(other);
 550              		.loc 1 95 0 is_stmt 1
 551 0063 488B55C8 		movq	-56(%rbp), %rdx
 552 0067 488B45D8 		movq	-40(%rbp), %rax
 553 006b 4889D6   		movq	%rdx, %rsi
 554 006e 4889C7   		movq	%rax, %rdi
 555 0071 E8000000 		call	_ZN9RowVectorC1ERKS_
 555      00
 556              	.LBB16:
  96:cpp_vector_double_practice.cpp **** 
  97:cpp_vector_double_practice.cpp ****             // Element loop
  98:cpp_vector_double_practice.cpp ****             for (uint32_t i=0; columns.size() > i; ++i){
 557              		.loc 1 98 0
 558 0076 C745E400 		movl	$0, -28(%rbp)
 558      000000
 559              	.L23:
 560              		.loc 1 98 0 is_stmt 0 discriminator 3
 561 007d 488B45D0 		movq	-48(%rbp), %rax
 562 0081 4889C7   		movq	%rax, %rdi
 563 0084 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 563      00
 564 0089 4889C2   		movq	%rax, %rdx
 565 008c 8B45E4   		movl	-28(%rbp), %eax
 566 008f 4839C2   		cmpq	%rax, %rdx
 567 0092 0F97C0   		seta	%al
 568 0095 84C0     		testb	%al, %al
 569 0097 743F     		je	.L26
  99:cpp_vector_double_practice.cpp ****                 temp[i] += columns[i];
 570              		.loc 1 99 0 is_stmt 1 discriminator 2
 571 0099 8B55E4   		movl	-28(%rbp), %edx
 572 009c 488B45D0 		movq	-48(%rbp), %rax
 573 00a0 4889D6   		movq	%rdx, %rsi
 574 00a3 4889C7   		movq	%rax, %rdi
 575 00a6 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 575      00
 576 00ab F20F1008 		movsd	(%rax), %xmm1
 577 00af F20F114D 		movsd	%xmm1, -64(%rbp)
 577      C0
 578 00b4 8B55E4   		movl	-28(%rbp), %edx
 579 00b7 488B45D8 		movq	-40(%rbp), %rax
 580 00bb 89D6     		movl	%edx, %esi
 581 00bd 4889C7   		movq	%rax, %rdi
 582 00c0 E8000000 		call	_ZN9RowVectorixEj
 582      00
 583 00c5 F20F1000 		movsd	(%rax), %xmm0
 584 00c9 F20F5845 		addsd	-64(%rbp), %xmm0
 584      C0
 585 00ce F20F1100 		movsd	%xmm0, (%rax)
  98:cpp_vector_double_practice.cpp ****                 temp[i] += columns[i];
 586              		.loc 1 98 0 discriminator 2
 587 00d2 8345E401 		addl	$1, -28(%rbp)
 588 00d6 EBA5     		jmp	.L23
 589              	.L26:
 590              	.LBE16:
 100:cpp_vector_double_practice.cpp ****             }
 101:cpp_vector_double_practice.cpp **** 
 102:cpp_vector_double_practice.cpp ****             // Returning a temporary image
 103:cpp_vector_double_practice.cpp ****             return temp;
 591              		.loc 1 103 0
 592 00d8 90       		nop
 104:cpp_vector_double_practice.cpp ****         }
 593              		.loc 1 104 0
 594 00d9 488B45D8 		movq	-40(%rbp), %rax
 595 00dd 488B4DE8 		movq	-24(%rbp), %rcx
 596 00e1 6448330C 		xorq	%fs:40, %rcx
 596      25280000 
 596      00
 597 00ea 7405     		je	.L25
 598 00ec E8000000 		call	__stack_chk_fail@PLT
 598      00
 599              	.L25:
 600 00f1 4883C438 		addq	$56, %rsp
 601 00f5 5B       		popq	%rbx
 602 00f6 5D       		popq	%rbp
 603              		.cfi_def_cfa 7, 8
 604 00f7 C3       		ret
 605              		.cfi_endproc
 606              	.LFE1855:
 608              		.section	.text._ZN9RowVectormlERKS_,"axG",@progbits,_ZN9RowVectormlERKS_,comdat
 609              		.align 2
 610              		.weak	_ZN9RowVectormlERKS_
 612              	_ZN9RowVectormlERKS_:
 613              	.LFB1857:
 105:cpp_vector_double_practice.cpp **** 
 106:cpp_vector_double_practice.cpp ****         RowVector operator * (const double a){
 107:cpp_vector_double_practice.cpp **** 
 108:cpp_vector_double_practice.cpp ****             // Make a new vector to return
 109:cpp_vector_double_practice.cpp ****             RowVector temp(*this);
 110:cpp_vector_double_practice.cpp **** 
 111:cpp_vector_double_practice.cpp ****             // Element loop in `for each` style
 112:cpp_vector_double_practice.cpp ****             // c++ 11 or later
 113:cpp_vector_double_practice.cpp ****             for (auto & element : temp.columns){
 114:cpp_vector_double_practice.cpp ****                 element *= a;
 115:cpp_vector_double_practice.cpp ****             }
 116:cpp_vector_double_practice.cpp **** 
 117:cpp_vector_double_practice.cpp ****             // Returning a temporary image
 118:cpp_vector_double_practice.cpp ****             return temp;
 119:cpp_vector_double_practice.cpp ****         }
 120:cpp_vector_double_practice.cpp **** 
 121:cpp_vector_double_practice.cpp ****         const double operator * (const RowVector & other){
 614              		.loc 1 121 0
 615              		.cfi_startproc
 616 0000 55       		pushq	%rbp
 617              		.cfi_def_cfa_offset 16
 618              		.cfi_offset 6, -16
 619 0001 4889E5   		movq	%rsp, %rbp
 620              		.cfi_def_cfa_register 6
 621 0004 53       		pushq	%rbx
 622 0005 4883EC38 		subq	$56, %rsp
 623              		.cfi_offset 3, -24
 624 0009 48897DD8 		movq	%rdi, -40(%rbp)
 625 000d 488975D0 		movq	%rsi, -48(%rbp)
 122:cpp_vector_double_practice.cpp ****             // Check size
 123:cpp_vector_double_practice.cpp ****             assert(columns.size() == other.columns.size());
 626              		.loc 1 123 0
 627 0011 488B45D8 		movq	-40(%rbp), %rax
 628 0015 4889C7   		movq	%rax, %rdi
 629 0018 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 629      00
 630 001d 4889C3   		movq	%rax, %rbx
 631 0020 488B45D0 		movq	-48(%rbp), %rax
 632 0024 4889C7   		movq	%rax, %rdi
 633 0027 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 633      00
 634 002c 4839C3   		cmpq	%rax, %rbx
 635 002f 741F     		je	.L28
 636              		.loc 1 123 0 is_stmt 0 discriminator 1
 637 0031 488D0D00 		leaq	_ZZN9RowVectormlERKS_E19__PRETTY_FUNCTION__(%rip), %rcx
 637      000000
 638 0038 BA7B0000 		movl	$123, %edx
 638      00
 639 003d 488D3500 		leaq	.LC6(%rip), %rsi
 639      000000
 640 0044 488D3D00 		leaq	.LC7(%rip), %rdi
 640      000000
 641 004b E8000000 		call	__assert_fail@PLT
 641      00
 642              	.L28:
 124:cpp_vector_double_practice.cpp **** 
 125:cpp_vector_double_practice.cpp ****             double dot_product = 0.0;
 643              		.loc 1 125 0 is_stmt 1
 644 0050 660FEFC0 		pxor	%xmm0, %xmm0
 645 0054 F20F1145 		movsd	%xmm0, -24(%rbp)
 645      E8
 646              	.LBB17:
 126:cpp_vector_double_practice.cpp **** 
 127:cpp_vector_double_practice.cpp ****             // Element loop
 128:cpp_vector_double_practice.cpp ****             for (uint32_t i = 0; columns.size() > i; ++i){
 647              		.loc 1 128 0
 648 0059 C745E400 		movl	$0, -28(%rbp)
 648      000000
 649              	.L30:
 650              		.loc 1 128 0 is_stmt 0 discriminator 3
 651 0060 488B45D8 		movq	-40(%rbp), %rax
 652 0064 4889C7   		movq	%rax, %rdi
 653 0067 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 653      00
 654 006c 4889C2   		movq	%rax, %rdx
 655 006f 8B45E4   		movl	-28(%rbp), %eax
 656 0072 4839C2   		cmpq	%rax, %rdx
 657 0075 0F97C0   		seta	%al
 658 0078 84C0     		testb	%al, %al
 659 007a 744A     		je	.L29
 129:cpp_vector_double_practice.cpp ****                 dot_product += columns[i] * other.columns[i];
 660              		.loc 1 129 0 is_stmt 1 discriminator 2
 661 007c 8B55E4   		movl	-28(%rbp), %edx
 662 007f 488B45D8 		movq	-40(%rbp), %rax
 663 0083 4889D6   		movq	%rdx, %rsi
 664 0086 4889C7   		movq	%rax, %rdi
 665 0089 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 665      00
 666 008e F20F1010 		movsd	(%rax), %xmm2
 667 0092 F20F1155 		movsd	%xmm2, -56(%rbp)
 667      C8
 668 0097 8B55E4   		movl	-28(%rbp), %edx
 669 009a 488B45D0 		movq	-48(%rbp), %rax
 670 009e 4889D6   		movq	%rdx, %rsi
 671 00a1 4889C7   		movq	%rax, %rdi
 672 00a4 E8000000 		call	_ZNKSt6vectorIdSaIdEEixEm
 672      00
 673 00a9 F20F1000 		movsd	(%rax), %xmm0
 674 00ad F20F5945 		mulsd	-56(%rbp), %xmm0
 674      C8
 675 00b2 F20F104D 		movsd	-24(%rbp), %xmm1
 675      E8
 676 00b7 F20F58C1 		addsd	%xmm1, %xmm0
 677 00bb F20F1145 		movsd	%xmm0, -24(%rbp)
 677      E8
 128:cpp_vector_double_practice.cpp ****                 dot_product += columns[i] * other.columns[i];
 678              		.loc 1 128 0 discriminator 2
 679 00c0 8345E401 		addl	$1, -28(%rbp)
 680 00c4 EB9A     		jmp	.L30
 681              	.L29:
 682              	.LBE17:
 130:cpp_vector_double_practice.cpp ****             }
 131:cpp_vector_double_practice.cpp **** 
 132:cpp_vector_double_practice.cpp ****             // Returning a temporary image
 133:cpp_vector_double_practice.cpp ****             return dot_product;
 683              		.loc 1 133 0
 684 00c6 F20F1045 		movsd	-24(%rbp), %xmm0
 684      E8
 134:cpp_vector_double_practice.cpp ****         }
 685              		.loc 1 134 0
 686 00cb 4883C438 		addq	$56, %rsp
 687 00cf 5B       		popq	%rbx
 688 00d0 5D       		popq	%rbp
 689              		.cfi_def_cfa 7, 8
 690 00d1 C3       		ret
 691              		.cfi_endproc
 692              	.LFE1857:
 694              		.section	.rodata
 695              	.LC8:
 696 006f 5D203D20 		.string	"] = "
 696      00
 697              		.section	.text._ZN9RowVector4showEv,"axG",@progbits,_ZN9RowVector4showEv,comdat
 698              		.align 2
 699              		.weak	_ZN9RowVector4showEv
 701              	_ZN9RowVector4showEv:
 702              	.LFB1858:
 135:cpp_vector_double_practice.cpp **** 
 136:cpp_vector_double_practice.cpp ****         void show(){
 703              		.loc 1 136 0
 704              		.cfi_startproc
 705 0000 55       		pushq	%rbp
 706              		.cfi_def_cfa_offset 16
 707              		.cfi_offset 6, -16
 708 0001 4889E5   		movq	%rsp, %rbp
 709              		.cfi_def_cfa_register 6
 710 0004 53       		pushq	%rbx
 711 0005 4883EC28 		subq	$40, %rsp
 712              		.cfi_offset 3, -24
 713 0009 48897DD8 		movq	%rdi, -40(%rbp)
 714              	.LBB18:
 137:cpp_vector_double_practice.cpp ****             for (uint32_t i=0; columns.size()> i; ++i){
 715              		.loc 1 137 0
 716 000d C745EC00 		movl	$0, -20(%rbp)
 716      000000
 717              	.L34:
 718              		.loc 1 137 0 is_stmt 0 discriminator 3
 719 0014 488B45D8 		movq	-40(%rbp), %rax
 720 0018 4889C7   		movq	%rax, %rdi
 721 001b E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 721      00
 722 0020 4889C2   		movq	%rax, %rdx
 723 0023 8B45EC   		movl	-20(%rbp), %eax
 724 0026 4839C2   		cmpq	%rax, %rdx
 725 0029 0F97C0   		seta	%al
 726 002c 84C0     		testb	%al, %al
 727 002e 0F848200 		je	.L35
 727      0000
 138:cpp_vector_double_practice.cpp ****                 std::cout << name << '[' << i << "] = " << columns[i] << '\n';
 728              		.loc 1 138 0 is_stmt 1 discriminator 2
 729 0034 488B45D8 		movq	-40(%rbp), %rax
 730 0038 4883C018 		addq	$24, %rax
 731 003c 4889C6   		movq	%rax, %rsi
 732 003f 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 732      000000
 733 0046 E8000000 		call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5
 733      00
 734 004b BE5B0000 		movl	$91, %esi
 734      00
 735 0050 4889C7   		movq	%rax, %rdi
 736 0053 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 736      00
 737 0058 4889C2   		movq	%rax, %rdx
 738 005b 8B45EC   		movl	-20(%rbp), %eax
 739 005e 89C6     		movl	%eax, %esi
 740 0060 4889D7   		movq	%rdx, %rdi
 741 0063 E8000000 		call	_ZNSolsEj@PLT
 741      00
 742 0068 488D3500 		leaq	.LC8(%rip), %rsi
 742      000000
 743 006f 4889C7   		movq	%rax, %rdi
 744 0072 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 744      00
 745 0077 4889C3   		movq	%rax, %rbx
 746 007a 8B55EC   		movl	-20(%rbp), %edx
 747 007d 488B45D8 		movq	-40(%rbp), %rax
 748 0081 4889D6   		movq	%rdx, %rsi
 749 0084 4889C7   		movq	%rax, %rdi
 750 0087 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 750      00
 751 008c 488B00   		movq	(%rax), %rax
 752 008f 488945D0 		movq	%rax, -48(%rbp)
 753 0093 F20F1045 		movsd	-48(%rbp), %xmm0
 753      D0
 754 0098 4889DF   		movq	%rbx, %rdi
 755 009b E8000000 		call	_ZNSolsEd@PLT
 755      00
 756 00a0 BE0A0000 		movl	$10, %esi
 756      00
 757 00a5 4889C7   		movq	%rax, %rdi
 758 00a8 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 758      00
 137:cpp_vector_double_practice.cpp ****             for (uint32_t i=0; columns.size()> i; ++i){
 759              		.loc 1 137 0 discriminator 2
 760 00ad 8345EC01 		addl	$1, -20(%rbp)
 761 00b1 E95EFFFF 		jmp	.L34
 761      FF
 762              	.L35:
 763              	.LBE18:
 139:cpp_vector_double_practice.cpp ****             }
 140:cpp_vector_double_practice.cpp ****         }
 764              		.loc 1 140 0
 765 00b6 90       		nop
 766 00b7 4883C428 		addq	$40, %rsp
 767 00bb 5B       		popq	%rbx
 768 00bc 5D       		popq	%rbp
 769              		.cfi_def_cfa 7, 8
 770 00bd C3       		ret
 771              		.cfi_endproc
 772              	.LFE1858:
 774              		.section	.rodata
 775 0074 00000000 		.align 8
 776              	.LC11:
 777 0078 526F7756 		.string	"RowVector row (2u, s, \"row\");\n"
 777      6563746F 
 777      7220726F 
 777      77202832 
 777      752C2073 
 778              	.LC12:
 779 0097 726F7700 		.string	"row"
 780              	.LC13:
 781 009b 526F7756 		.string	"RowVector another_row (row);\n"
 781      6563746F 
 781      7220616E 
 781      6F746865 
 781      725F726F 
 782              	.LC14:
 783 00b9 616E6F74 		.string	"another_row[1] += 0.5;\n"
 783      6865725F 
 783      726F775B 
 783      315D202B 
 783      3D20302E 
 784 00d1 00000000 		.align 8
 784      000000
 785              	.LC16:
 786 00d8 526F7756 		.string	"RowVector row_plus_another(row + another_row);\n"
 786      6563746F 
 786      7220726F 
 786      775F706C 
 786      75735F61 
 787              	.LC17:
 788 0108 526F7756 		.string	"RowVector zeros(3);\n"
 788      6563746F 
 788      72207A65 
 788      726F7328 
 788      33293B0A 
 789              	.LC18:
 790 011d 7A65726F 		.string	"zeros"
 790      7300
 791              	.LC20:
 792 0123 6F727468 		.string	"ortho"
 792      6F00
 793              	.LC21:
 794 0129 646F7562 		.string	"double dot = row * ortho;\n"
 794      6C652064 
 794      6F74203D 
 794      20726F77 
 794      202A206F 
 795              	.LC22:
 796 0144 646F7420 		.string	"dot  = "
 796      203D2000 
 797              	.LC23:
 798 014c 646F7420 		.string	"dot = row * row;\n"
 798      3D20726F 
 798      77202A20 
 798      726F773B 
 798      0A00
 799              		.text
 800              		.globl	main
 802              	main:
 803              	.LFB1859:
 141:cpp_vector_double_practice.cpp **** };
 142:cpp_vector_double_practice.cpp **** 
 143:cpp_vector_double_practice.cpp **** 
 144:cpp_vector_double_practice.cpp **** int32_t main(int32_t argn, char *argv[]){
 804              		.loc 1 144 0
 805              		.cfi_startproc
 806              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 807              		.cfi_lsda 0x1b,.LLSDA1859
 808 0000 55       		pushq	%rbp
 809              		.cfi_def_cfa_offset 16
 810              		.cfi_offset 6, -16
 811 0001 4889E5   		movq	%rsp, %rbp
 812              		.cfi_def_cfa_register 6
 813 0004 53       		pushq	%rbx
 814 0005 4881EC98 		subq	$408, %rsp
 814      010000
 815              		.cfi_offset 3, -24
 816 000c 89BD7CFE 		movl	%edi, -388(%rbp)
 816      FFFF
 817 0012 4889B570 		movq	%rsi, -400(%rbp)
 817      FEFFFF
 818              		.loc 1 144 0
 819 0019 64488B04 		movq	%fs:40, %rax
 819      25280000 
 819      00
 820 0022 488945E8 		movq	%rax, -24(%rbp)
 821 0026 31C0     		xorl	%eax, %eax
 145:cpp_vector_double_practice.cpp **** 	double s[] = {1.0, 2.0};
 822              		.loc 1 145 0
 823 0028 F20F1005 		movsd	.LC9(%rip), %xmm0
 823      00000000 
 824 0030 F20F1185 		movsd	%xmm0, -368(%rbp)
 824      90FEFFFF 
 825 0038 F20F1005 		movsd	.LC10(%rip), %xmm0
 825      00000000 
 826 0040 F20F1185 		movsd	%xmm0, -360(%rbp)
 826      98FEFFFF 
 146:cpp_vector_double_practice.cpp **** 
 147:cpp_vector_double_practice.cpp ****     std::cout << "RowVector row (2u, s, \"row\");\n";
 827              		.loc 1 147 0
 828 0048 488D3500 		leaq	.LC11(%rip), %rsi
 828      000000
 829 004f 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 829      000000
 830              	.LEHB4:
 831 0056 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 831      00
 148:cpp_vector_double_practice.cpp **** 	RowVector row (2u, s, "row");
 832              		.loc 1 148 0
 833 005b 488D9590 		leaq	-368(%rbp), %rdx
 833      FEFFFF
 834 0062 488D85B0 		leaq	-336(%rbp), %rax
 834      FEFFFF
 835 0069 488D0D00 		leaq	.LC12(%rip), %rcx
 835      000000
 836 0070 BE020000 		movl	$2, %esi
 836      00
 837 0075 4889C7   		movq	%rax, %rdi
 838 0078 E8000000 		call	_ZN9RowVectorC1EjPKdPKc
 838      00
 839              	.LEHE4:
 149:cpp_vector_double_practice.cpp **** 
 150:cpp_vector_double_practice.cpp ****     row.show();
 840              		.loc 1 150 0
 841 007d 488D85B0 		leaq	-336(%rbp), %rax
 841      FEFFFF
 842 0084 4889C7   		movq	%rax, %rdi
 843              	.LEHB5:
 844 0087 E8000000 		call	_ZN9RowVector4showEv
 844      00
 151:cpp_vector_double_practice.cpp **** 
 152:cpp_vector_double_practice.cpp ****     std::cout << "RowVector another_row (row);\n";
 845              		.loc 1 152 0
 846 008c 488D3500 		leaq	.LC13(%rip), %rsi
 846      000000
 847 0093 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 847      000000
 848 009a E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 848      00
 153:cpp_vector_double_practice.cpp **** 	RowVector another_row (row);
 849              		.loc 1 153 0
 850 009f 488D95B0 		leaq	-336(%rbp), %rdx
 850      FEFFFF
 851 00a6 488D85F0 		leaq	-272(%rbp), %rax
 851      FEFFFF
 852 00ad 4889D6   		movq	%rdx, %rsi
 853 00b0 4889C7   		movq	%rax, %rdi
 854 00b3 E8000000 		call	_ZN9RowVectorC1ERKS_
 854      00
 855              	.LEHE5:
 154:cpp_vector_double_practice.cpp ****     row.show();
 856              		.loc 1 154 0
 857 00b8 488D85B0 		leaq	-336(%rbp), %rax
 857      FEFFFF
 858 00bf 4889C7   		movq	%rax, %rdi
 859              	.LEHB6:
 860 00c2 E8000000 		call	_ZN9RowVector4showEv
 860      00
 155:cpp_vector_double_practice.cpp ****     another_row.show();
 861              		.loc 1 155 0
 862 00c7 488D85F0 		leaq	-272(%rbp), %rax
 862      FEFFFF
 863 00ce 4889C7   		movq	%rax, %rdi
 864 00d1 E8000000 		call	_ZN9RowVector4showEv
 864      00
 156:cpp_vector_double_practice.cpp **** 
 157:cpp_vector_double_practice.cpp ****     std::cout << "another_row[1] += 0.5;\n";
 865              		.loc 1 157 0
 866 00d6 488D3500 		leaq	.LC14(%rip), %rsi
 866      000000
 867 00dd 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 867      000000
 868 00e4 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 868      00
 158:cpp_vector_double_practice.cpp ****     another_row[1] += 0.5;
 869              		.loc 1 158 0
 870 00e9 488D85F0 		leaq	-272(%rbp), %rax
 870      FEFFFF
 871 00f0 BE010000 		movl	$1, %esi
 871      00
 872 00f5 4889C7   		movq	%rax, %rdi
 873 00f8 E8000000 		call	_ZN9RowVectorixEj
 873      00
 874 00fd F20F1008 		movsd	(%rax), %xmm1
 875 0101 F20F1005 		movsd	.LC15(%rip), %xmm0
 875      00000000 
 876 0109 F20F58C1 		addsd	%xmm1, %xmm0
 877 010d F20F1100 		movsd	%xmm0, (%rax)
 159:cpp_vector_double_practice.cpp ****     row.show();
 878              		.loc 1 159 0
 879 0111 488D85B0 		leaq	-336(%rbp), %rax
 879      FEFFFF
 880 0118 4889C7   		movq	%rax, %rdi
 881 011b E8000000 		call	_ZN9RowVector4showEv
 881      00
 160:cpp_vector_double_practice.cpp ****     another_row.show();
 882              		.loc 1 160 0
 883 0120 488D85F0 		leaq	-272(%rbp), %rax
 883      FEFFFF
 884 0127 4889C7   		movq	%rax, %rdi
 885 012a E8000000 		call	_ZN9RowVector4showEv
 885      00
 161:cpp_vector_double_practice.cpp **** 
 162:cpp_vector_double_practice.cpp ****     std::cout << "RowVector row_plus_another(row + another_row);\n";
 886              		.loc 1 162 0
 887 012f 488D3500 		leaq	.LC16(%rip), %rsi
 887      000000
 888 0136 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 888      000000
 889 013d E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 889      00
 163:cpp_vector_double_practice.cpp ****     RowVector row_plus_another(row + another_row);
 890              		.loc 1 163 0
 891 0142 488D8530 		leaq	-208(%rbp), %rax
 891      FFFFFF
 892 0149 488D95F0 		leaq	-272(%rbp), %rdx
 892      FEFFFF
 893 0150 488D8DB0 		leaq	-336(%rbp), %rcx
 893      FEFFFF
 894 0157 4889CE   		movq	%rcx, %rsi
 895 015a 4889C7   		movq	%rax, %rdi
 896 015d E8000000 		call	_ZN9RowVectorplERKS_
 896      00
 897              	.LEHE6:
 164:cpp_vector_double_practice.cpp ****     row.show();
 898              		.loc 1 164 0
 899 0162 488D85B0 		leaq	-336(%rbp), %rax
 899      FEFFFF
 900 0169 4889C7   		movq	%rax, %rdi
 901              	.LEHB7:
 902 016c E8000000 		call	_ZN9RowVector4showEv
 902      00
 165:cpp_vector_double_practice.cpp ****     another_row.show();
 903              		.loc 1 165 0
 904 0171 488D85F0 		leaq	-272(%rbp), %rax
 904      FEFFFF
 905 0178 4889C7   		movq	%rax, %rdi
 906 017b E8000000 		call	_ZN9RowVector4showEv
 906      00
 166:cpp_vector_double_practice.cpp ****     row_plus_another.show();
 907              		.loc 1 166 0
 908 0180 488D8530 		leaq	-208(%rbp), %rax
 908      FFFFFF
 909 0187 4889C7   		movq	%rax, %rdi
 910 018a E8000000 		call	_ZN9RowVector4showEv
 910      00
 167:cpp_vector_double_practice.cpp **** 
 168:cpp_vector_double_practice.cpp ****     std::cout << "RowVector zeros(3);\n";
 911              		.loc 1 168 0
 912 018f 488D3500 		leaq	.LC17(%rip), %rsi
 912      000000
 913 0196 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 913      000000
 914 019d E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 914      00
 169:cpp_vector_double_practice.cpp **** 	RowVector zeros(3u, "zeros");
 915              		.loc 1 169 0
 916 01a2 488D8570 		leaq	-144(%rbp), %rax
 916      FFFFFF
 917 01a9 488D1500 		leaq	.LC18(%rip), %rdx
 917      000000
 918 01b0 BE030000 		movl	$3, %esi
 918      00
 919 01b5 4889C7   		movq	%rax, %rdi
 920 01b8 E8000000 		call	_ZN9RowVectorC1EjPKc
 920      00
 921              	.LEHE7:
 170:cpp_vector_double_practice.cpp ****     row.show();
 922              		.loc 1 170 0
 923 01bd 488D85B0 		leaq	-336(%rbp), %rax
 923      FEFFFF
 924 01c4 4889C7   		movq	%rax, %rdi
 925              	.LEHB8:
 926 01c7 E8000000 		call	_ZN9RowVector4showEv
 926      00
 171:cpp_vector_double_practice.cpp ****     another_row.show();
 927              		.loc 1 171 0
 928 01cc 488D85F0 		leaq	-272(%rbp), %rax
 928      FEFFFF
 929 01d3 4889C7   		movq	%rax, %rdi
 930 01d6 E8000000 		call	_ZN9RowVector4showEv
 930      00
 172:cpp_vector_double_practice.cpp ****     row_plus_another.show();
 931              		.loc 1 172 0
 932 01db 488D8530 		leaq	-208(%rbp), %rax
 932      FFFFFF
 933 01e2 4889C7   		movq	%rax, %rdi
 934 01e5 E8000000 		call	_ZN9RowVector4showEv
 934      00
 173:cpp_vector_double_practice.cpp ****     zeros.show();
 935              		.loc 1 173 0
 936 01ea 488D8570 		leaq	-144(%rbp), %rax
 936      FFFFFF
 937 01f1 4889C7   		movq	%rax, %rdi
 938 01f4 E8000000 		call	_ZN9RowVector4showEv
 938      00
 174:cpp_vector_double_practice.cpp **** 
 175:cpp_vector_double_practice.cpp ****     double t[] = {2.0, -1.0};
 939              		.loc 1 175 0
 940 01f9 F20F1005 		movsd	.LC10(%rip), %xmm0
 940      00000000 
 941 0201 F20F1185 		movsd	%xmm0, -352(%rbp)
 941      A0FEFFFF 
 942 0209 F20F1005 		movsd	.LC19(%rip), %xmm0
 942      00000000 
 943 0211 F20F1185 		movsd	%xmm0, -344(%rbp)
 943      A8FEFFFF 
 176:cpp_vector_double_practice.cpp **** 	RowVector ortho (2u, t, "ortho");
 944              		.loc 1 176 0
 945 0219 488D95A0 		leaq	-352(%rbp), %rdx
 945      FEFFFF
 946 0220 488D45B0 		leaq	-80(%rbp), %rax
 947 0224 488D0D00 		leaq	.LC20(%rip), %rcx
 947      000000
 948 022b BE020000 		movl	$2, %esi
 948      00
 949 0230 4889C7   		movq	%rax, %rdi
 950 0233 E8000000 		call	_ZN9RowVectorC1EjPKdPKc
 950      00
 951              	.LEHE8:
 177:cpp_vector_double_practice.cpp ****     double dot = row * ortho;
 952              		.loc 1 177 0
 953 0238 488D55B0 		leaq	-80(%rbp), %rdx
 954 023c 488D85B0 		leaq	-336(%rbp), %rax
 954      FEFFFF
 955 0243 4889D6   		movq	%rdx, %rsi
 956 0246 4889C7   		movq	%rax, %rdi
 957 0249 E8000000 		call	_ZN9RowVectormlERKS_
 957      00
 958 024e 66480F7E 		movq	%xmm0, %rax
 958      C0
 959 0253 48898588 		movq	%rax, -376(%rbp)
 959      FEFFFF
 178:cpp_vector_double_practice.cpp ****     std::cout << "double dot = row * ortho;\n";
 960              		.loc 1 178 0
 961 025a 488D3500 		leaq	.LC21(%rip), %rsi
 961      000000
 962 0261 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 962      000000
 963              	.LEHB9:
 964 0268 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 964      00
 179:cpp_vector_double_practice.cpp ****     std::cout << "dot  = " << dot << '\n';
 965              		.loc 1 179 0
 966 026d 488D3500 		leaq	.LC22(%rip), %rsi
 966      000000
 967 0274 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 967      000000
 968 027b E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 968      00
 969 0280 4889C2   		movq	%rax, %rdx
 970 0283 488B8588 		movq	-376(%rbp), %rax
 970      FEFFFF
 971 028a 48898568 		movq	%rax, -408(%rbp)
 971      FEFFFF
 972 0291 F20F1085 		movsd	-408(%rbp), %xmm0
 972      68FEFFFF 
 973 0299 4889D7   		movq	%rdx, %rdi
 974 029c E8000000 		call	_ZNSolsEd@PLT
 974      00
 975              		.loc 1 179 0 is_stmt 0 discriminator 1
 976 02a1 BE0A0000 		movl	$10, %esi
 976      00
 977 02a6 4889C7   		movq	%rax, %rdi
 978 02a9 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 978      00
 180:cpp_vector_double_practice.cpp **** 
 181:cpp_vector_double_practice.cpp ****     std::cout << "dot = row * row;\n";
 979              		.loc 1 181 0 is_stmt 1
 980 02ae 488D3500 		leaq	.LC23(%rip), %rsi
 980      000000
 981 02b5 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 981      000000
 982 02bc E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 982      00
 182:cpp_vector_double_practice.cpp ****     dot = row * row;
 983              		.loc 1 182 0
 984 02c1 488D95B0 		leaq	-336(%rbp), %rdx
 984      FEFFFF
 985 02c8 488D85B0 		leaq	-336(%rbp), %rax
 985      FEFFFF
 986 02cf 4889D6   		movq	%rdx, %rsi
 987 02d2 4889C7   		movq	%rax, %rdi
 988 02d5 E8000000 		call	_ZN9RowVectormlERKS_
 988      00
 989 02da 66480F7E 		movq	%xmm0, %rax
 989      C0
 990 02df 48898588 		movq	%rax, -376(%rbp)
 990      FEFFFF
 183:cpp_vector_double_practice.cpp ****     std::cout << "dot  = " << dot << '\n';
 991              		.loc 1 183 0
 992 02e6 488D3500 		leaq	.LC22(%rip), %rsi
 992      000000
 993 02ed 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 993      000000
 994 02f4 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 994      00
 995 02f9 4889C2   		movq	%rax, %rdx
 996 02fc 488B8588 		movq	-376(%rbp), %rax
 996      FEFFFF
 997 0303 48898568 		movq	%rax, -408(%rbp)
 997      FEFFFF
 998 030a F20F1085 		movsd	-408(%rbp), %xmm0
 998      68FEFFFF 
 999 0312 4889D7   		movq	%rdx, %rdi
 1000 0315 E8000000 		call	_ZNSolsEd@PLT
 1000      00
 1001              		.loc 1 183 0 is_stmt 0 discriminator 1
 1002 031a BE0A0000 		movl	$10, %esi
 1002      00
 1003 031f 4889C7   		movq	%rax, %rdi
 1004 0322 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1004      00
 1005              	.LEHE9:
 176:cpp_vector_double_practice.cpp ****     double dot = row * ortho;
 1006              		.loc 1 176 0 is_stmt 1
 1007 0327 488D45B0 		leaq	-80(%rbp), %rax
 1008 032b 4889C7   		movq	%rax, %rdi
 1009 032e E8000000 		call	_ZN9RowVectorD1Ev
 1009      00
 169:cpp_vector_double_practice.cpp ****     row.show();
 1010              		.loc 1 169 0
 1011 0333 488D8570 		leaq	-144(%rbp), %rax
 1011      FFFFFF
 1012 033a 4889C7   		movq	%rax, %rdi
 1013 033d E8000000 		call	_ZN9RowVectorD1Ev
 1013      00
 163:cpp_vector_double_practice.cpp ****     row.show();
 1014              		.loc 1 163 0
 1015 0342 488D8530 		leaq	-208(%rbp), %rax
 1015      FFFFFF
 1016 0349 4889C7   		movq	%rax, %rdi
 1017 034c E8000000 		call	_ZN9RowVectorD1Ev
 1017      00
 153:cpp_vector_double_practice.cpp ****     row.show();
 1018              		.loc 1 153 0
 1019 0351 488D85F0 		leaq	-272(%rbp), %rax
 1019      FEFFFF
 1020 0358 4889C7   		movq	%rax, %rdi
 1021 035b E8000000 		call	_ZN9RowVectorD1Ev
 1021      00
 148:cpp_vector_double_practice.cpp **** 
 1022              		.loc 1 148 0
 1023 0360 488D85B0 		leaq	-336(%rbp), %rax
 1023      FEFFFF
 1024 0367 4889C7   		movq	%rax, %rdi
 1025 036a E8000000 		call	_ZN9RowVectorD1Ev
 1025      00
 184:cpp_vector_double_practice.cpp **** 
 185:cpp_vector_double_practice.cpp **** }
 1026              		.loc 1 185 0
 1027 036f B8000000 		movl	$0, %eax
 1027      00
 1028 0374 488B4DE8 		movq	-24(%rbp), %rcx
 1029 0378 6448330C 		xorq	%fs:40, %rcx
 1029      25280000 
 1029      00
 1030 0381 7471     		je	.L43
 1031 0383 EB6A     		jmp	.L49
 1032              	.L48:
 1033 0385 4889C3   		movq	%rax, %rbx
 176:cpp_vector_double_practice.cpp ****     double dot = row * ortho;
 1034              		.loc 1 176 0
 1035 0388 488D45B0 		leaq	-80(%rbp), %rax
 1036 038c 4889C7   		movq	%rax, %rdi
 1037 038f E8000000 		call	_ZN9RowVectorD1Ev
 1037      00
 1038 0394 EB03     		jmp	.L39
 1039              	.L47:
 1040 0396 4889C3   		movq	%rax, %rbx
 1041              	.L39:
 169:cpp_vector_double_practice.cpp ****     row.show();
 1042              		.loc 1 169 0
 1043 0399 488D8570 		leaq	-144(%rbp), %rax
 1043      FFFFFF
 1044 03a0 4889C7   		movq	%rax, %rdi
 1045 03a3 E8000000 		call	_ZN9RowVectorD1Ev
 1045      00
 1046 03a8 EB03     		jmp	.L40
 1047              	.L46:
 1048 03aa 4889C3   		movq	%rax, %rbx
 1049              	.L40:
 163:cpp_vector_double_practice.cpp ****     row.show();
 1050              		.loc 1 163 0
 1051 03ad 488D8530 		leaq	-208(%rbp), %rax
 1051      FFFFFF
 1052 03b4 4889C7   		movq	%rax, %rdi
 1053 03b7 E8000000 		call	_ZN9RowVectorD1Ev
 1053      00
 1054 03bc EB03     		jmp	.L41
 1055              	.L45:
 1056 03be 4889C3   		movq	%rax, %rbx
 1057              	.L41:
 153:cpp_vector_double_practice.cpp ****     row.show();
 1058              		.loc 1 153 0
 1059 03c1 488D85F0 		leaq	-272(%rbp), %rax
 1059      FEFFFF
 1060 03c8 4889C7   		movq	%rax, %rdi
 1061 03cb E8000000 		call	_ZN9RowVectorD1Ev
 1061      00
 1062 03d0 EB03     		jmp	.L42
 1063              	.L44:
 1064 03d2 4889C3   		movq	%rax, %rbx
 1065              	.L42:
 148:cpp_vector_double_practice.cpp **** 
 1066              		.loc 1 148 0
 1067 03d5 488D85B0 		leaq	-336(%rbp), %rax
 1067      FEFFFF
 1068 03dc 4889C7   		movq	%rax, %rdi
 1069 03df E8000000 		call	_ZN9RowVectorD1Ev
 1069      00
 1070 03e4 4889D8   		movq	%rbx, %rax
 1071 03e7 4889C7   		movq	%rax, %rdi
 1072              	.LEHB10:
 1073 03ea E8000000 		call	_Unwind_Resume@PLT
 1073      00
 1074              	.LEHE10:
 1075              	.L49:
 1076              		.loc 1 185 0
 1077 03ef E8000000 		call	__stack_chk_fail@PLT
 1077      00
 1078              	.L43:
 1079 03f4 4881C498 		addq	$408, %rsp
 1079      010000
 1080 03fb 5B       		popq	%rbx
 1081 03fc 5D       		popq	%rbp
 1082              		.cfi_def_cfa 7, 8
 1083 03fd C3       		ret
 1084              		.cfi_endproc
 1085              	.LFE1859:
 1086              		.section	.gcc_except_table,"a",@progbits
 1087              	.LLSDA1859:
 1088 0000 FF       		.byte	0xff
 1089 0001 FF       		.byte	0xff
 1090 0002 01       		.byte	0x1
 1091 0003 29       		.uleb128 .LLSDACSE1859-.LLSDACSB1859
 1092              	.LLSDACSB1859:
 1093 0004 56       		.uleb128 .LEHB4-.LFB1859
 1094 0005 27       		.uleb128 .LEHE4-.LEHB4
 1095 0006 00       		.uleb128 0
 1096 0007 00       		.uleb128 0
 1097 0008 8701     		.uleb128 .LEHB5-.LFB1859
 1098 000a 31       		.uleb128 .LEHE5-.LEHB5
 1099 000b D207     		.uleb128 .L44-.LFB1859
 1100 000d 00       		.uleb128 0
 1101 000e C201     		.uleb128 .LEHB6-.LFB1859
 1102 0010 A001     		.uleb128 .LEHE6-.LEHB6
 1103 0012 BE07     		.uleb128 .L45-.LFB1859
 1104 0014 00       		.uleb128 0
 1105 0015 EC02     		.uleb128 .LEHB7-.LFB1859
 1106 0017 51       		.uleb128 .LEHE7-.LEHB7
 1107 0018 AA07     		.uleb128 .L46-.LFB1859
 1108 001a 00       		.uleb128 0
 1109 001b C703     		.uleb128 .LEHB8-.LFB1859
 1110 001d 71       		.uleb128 .LEHE8-.LEHB8
 1111 001e 9607     		.uleb128 .L47-.LFB1859
 1112 0020 00       		.uleb128 0
 1113 0021 E804     		.uleb128 .LEHB9-.LFB1859
 1114 0023 BF01     		.uleb128 .LEHE9-.LEHB9
 1115 0025 8507     		.uleb128 .L48-.LFB1859
 1116 0027 00       		.uleb128 0
 1117 0028 EA07     		.uleb128 .LEHB10-.LFB1859
 1118 002a 05       		.uleb128 .LEHE10-.LEHB10
 1119 002b 00       		.uleb128 0
 1120 002c 00       		.uleb128 0
 1121              	.LLSDACSE1859:
 1122              		.text
 1124              		.section	.text._ZNSt6vectorIdSaIdEEC2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5Ev,comdat
 1125              		.align 2
 1126              		.weak	_ZNSt6vectorIdSaIdEEC2Ev
 1128              	_ZNSt6vectorIdSaIdEEC2Ev:
 1129              	.LFB2098:
 1130              		.file 2 "/usr/include/c++/7/bits/stl_vector.h"
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
 1131              		.loc 2 259 0
 1132              		.cfi_startproc
 1133              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 1134              		.cfi_lsda 0x1b,.LLSDA2098
 1135 0000 55       		pushq	%rbp
 1136              		.cfi_def_cfa_offset 16
 1137              		.cfi_offset 6, -16
 1138 0001 4889E5   		movq	%rsp, %rbp
 1139              		.cfi_def_cfa_register 6
 1140 0004 4883EC10 		subq	$16, %rsp
 1141 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1142              	.LBB19:
 260:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 261:/usr/include/c++/7/bits/stl_vector.h ****       noexcept(is_nothrow_default_constructible<_Alloc>::value)
 262:/usr/include/c++/7/bits/stl_vector.h **** #endif
 263:/usr/include/c++/7/bits/stl_vector.h ****       : _Base() { }
 1143              		.loc 2 263 0
 1144 000c 488B45F8 		movq	-8(%rbp), %rax
 1145 0010 4889C7   		movq	%rax, %rdi
 1146 0013 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEEC2Ev
 1146      00
 1147              	.LBE19:
 1148 0018 90       		nop
 1149 0019 C9       		leave
 1150              		.cfi_def_cfa 7, 8
 1151 001a C3       		ret
 1152              		.cfi_endproc
 1153              	.LFE2098:
 1154              		.section	.gcc_except_table
 1155              	.LLSDA2098:
 1156 002d FF       		.byte	0xff
 1157 002e FF       		.byte	0xff
 1158 002f 01       		.byte	0x1
 1159 0030 00       		.uleb128 .LLSDACSE2098-.LLSDACSB2098
 1160              	.LLSDACSB2098:
 1161              	.LLSDACSE2098:
 1162              		.section	.text._ZNSt6vectorIdSaIdEEC2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5Ev,comdat
 1164              		.weak	_ZNSt6vectorIdSaIdEEC1Ev
 1165              		.set	_ZNSt6vectorIdSaIdEEC1Ev,_ZNSt6vectorIdSaIdEEC2Ev
 1166              		.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
 1167              		.align 2
 1168              		.weak	_ZNSt6vectorIdSaIdEED2Ev
 1170              	_ZNSt6vectorIdSaIdEED2Ev:
 1171              	.LFB2101:
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
 1172              		.loc 2 433 0
 1173              		.cfi_startproc
 1174              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 1175              		.cfi_lsda 0x1b,.LLSDA2101
 1176 0000 55       		pushq	%rbp
 1177              		.cfi_def_cfa_offset 16
 1178              		.cfi_offset 6, -16
 1179 0001 4889E5   		movq	%rsp, %rbp
 1180              		.cfi_def_cfa_register 6
 1181 0004 4883EC10 		subq	$16, %rsp
 1182 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1183              	.LBB20:
 434:/usr/include/c++/7/bits/stl_vector.h ****       { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 435:/usr/include/c++/7/bits/stl_vector.h **** 		      _M_get_Tp_allocator()); }
 1184              		.loc 2 435 0
 1185 000c 488B45F8 		movq	-8(%rbp), %rax
 1186 0010 4889C7   		movq	%rax, %rdi
 1187 0013 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 1187      00
 1188 0018 4889C2   		movq	%rax, %rdx
 434:/usr/include/c++/7/bits/stl_vector.h ****       { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 1189              		.loc 2 434 0
 1190 001b 488B45F8 		movq	-8(%rbp), %rax
 1191 001f 488B4808 		movq	8(%rax), %rcx
 1192 0023 488B45F8 		movq	-8(%rbp), %rax
 1193 0027 488B00   		movq	(%rax), %rax
 1194 002a 4889CE   		movq	%rcx, %rsi
 1195 002d 4889C7   		movq	%rax, %rdi
 1196 0030 E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 1196      00
 1197              		.loc 2 435 0
 1198 0035 488B45F8 		movq	-8(%rbp), %rax
 1199 0039 4889C7   		movq	%rax, %rdi
 1200 003c E8000000 		call	_ZNSt12_Vector_baseIdSaIdEED2Ev
 1200      00
 1201              	.LBE20:
 1202 0041 90       		nop
 1203 0042 C9       		leave
 1204              		.cfi_def_cfa 7, 8
 1205 0043 C3       		ret
 1206              		.cfi_endproc
 1207              	.LFE2101:
 1208              		.section	.gcc_except_table
 1209              	.LLSDA2101:
 1210 0031 FF       		.byte	0xff
 1211 0032 FF       		.byte	0xff
 1212 0033 01       		.byte	0x1
 1213 0034 00       		.uleb128 .LLSDACSE2101-.LLSDACSB2101
 1214              	.LLSDACSB2101:
 1215              	.LLSDACSE2101:
 1216              		.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
 1218              		.weak	_ZNSt6vectorIdSaIdEED1Ev
 1219              		.set	_ZNSt6vectorIdSaIdEED1Ev,_ZNSt6vectorIdSaIdEED2Ev
 1220              		.section	.text._ZNSt6vectorIdSaIdEE6resizeEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE6resizeEm,comdat
 1221              		.align 2
 1222              		.weak	_ZNSt6vectorIdSaIdEE6resizeEm
 1224              	_ZNSt6vectorIdSaIdEE6resizeEm:
 1225              	.LFB2111:
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
 1226              		.loc 2 689 0
 1227              		.cfi_startproc
 1228 0000 55       		pushq	%rbp
 1229              		.cfi_def_cfa_offset 16
 1230              		.cfi_offset 6, -16
 1231 0001 4889E5   		movq	%rsp, %rbp
 1232              		.cfi_def_cfa_register 6
 1233 0004 4883EC10 		subq	$16, %rsp
 1234 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1235 000c 488975F0 		movq	%rsi, -16(%rbp)
 690:/usr/include/c++/7/bits/stl_vector.h ****       {
 691:/usr/include/c++/7/bits/stl_vector.h **** 	if (__new_size > size())
 1236              		.loc 2 691 0
 1237 0010 488B45F8 		movq	-8(%rbp), %rax
 1238 0014 4889C7   		movq	%rax, %rdi
 1239 0017 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1239      00
 1240 001c 483945F0 		cmpq	%rax, -16(%rbp)
 1241 0020 0F97C0   		seta	%al
 1242 0023 84C0     		testb	%al, %al
 1243 0025 742A     		je	.L53
 692:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_default_append(__new_size - size());
 1244              		.loc 2 692 0
 1245 0027 488B45F8 		movq	-8(%rbp), %rax
 1246 002b 4889C7   		movq	%rax, %rdi
 1247 002e E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1247      00
 1248 0033 4889C2   		movq	%rax, %rdx
 1249 0036 488B45F0 		movq	-16(%rbp), %rax
 1250 003a 4829D0   		subq	%rdx, %rax
 1251 003d 4889C2   		movq	%rax, %rdx
 1252 0040 488B45F8 		movq	-8(%rbp), %rax
 1253 0044 4889D6   		movq	%rdx, %rsi
 1254 0047 4889C7   		movq	%rax, %rdi
 1255 004a E8000000 		call	_ZNSt6vectorIdSaIdEE17_M_default_appendEm
 1255      00
 693:/usr/include/c++/7/bits/stl_vector.h **** 	else if (__new_size < size())
 694:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
 695:/usr/include/c++/7/bits/stl_vector.h ****       }
 1256              		.loc 2 695 0
 1257 004f EB38     		jmp	.L55
 1258              	.L53:
 693:/usr/include/c++/7/bits/stl_vector.h **** 	else if (__new_size < size())
 1259              		.loc 2 693 0
 1260 0051 488B45F8 		movq	-8(%rbp), %rax
 1261 0055 4889C7   		movq	%rax, %rdi
 1262 0058 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1262      00
 1263 005d 483945F0 		cmpq	%rax, -16(%rbp)
 1264 0061 0F92C0   		setb	%al
 1265 0064 84C0     		testb	%al, %al
 1266 0066 7421     		je	.L55
 694:/usr/include/c++/7/bits/stl_vector.h ****       }
 1267              		.loc 2 694 0
 1268 0068 488B45F8 		movq	-8(%rbp), %rax
 1269 006c 488B00   		movq	(%rax), %rax
 1270 006f 488B55F0 		movq	-16(%rbp), %rdx
 1271 0073 48C1E203 		salq	$3, %rdx
 1272 0077 4801C2   		addq	%rax, %rdx
 1273 007a 488B45F8 		movq	-8(%rbp), %rax
 1274 007e 4889D6   		movq	%rdx, %rsi
 1275 0081 4889C7   		movq	%rax, %rdi
 1276 0084 E8000000 		call	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd
 1276      00
 1277              	.L55:
 1278              		.loc 2 695 0
 1279 0089 90       		nop
 1280 008a C9       		leave
 1281              		.cfi_def_cfa 7, 8
 1282 008b C3       		ret
 1283              		.cfi_endproc
 1284              	.LFE2111:
 1286              		.section	.text._ZNKSt6vectorIdSaIdEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE4sizeEv,comdat
 1287              		.align 2
 1288              		.weak	_ZNKSt6vectorIdSaIdEE4sizeEv
 1290              	_ZNKSt6vectorIdSaIdEE4sizeEv:
 1291              	.LFB2112:
 670:/usr/include/c++/7/bits/stl_vector.h ****       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
 1292              		.loc 2 670 0
 1293              		.cfi_startproc
 1294 0000 55       		pushq	%rbp
 1295              		.cfi_def_cfa_offset 16
 1296              		.cfi_offset 6, -16
 1297 0001 4889E5   		movq	%rsp, %rbp
 1298              		.cfi_def_cfa_register 6
 1299 0004 48897DF8 		movq	%rdi, -8(%rbp)
 671:/usr/include/c++/7/bits/stl_vector.h **** 
 1300              		.loc 2 671 0
 1301 0008 488B45F8 		movq	-8(%rbp), %rax
 1302 000c 488B4008 		movq	8(%rax), %rax
 1303 0010 4889C2   		movq	%rax, %rdx
 1304 0013 488B45F8 		movq	-8(%rbp), %rax
 1305 0017 488B00   		movq	(%rax), %rax
 1306 001a 4829C2   		subq	%rax, %rdx
 1307 001d 4889D0   		movq	%rdx, %rax
 1308 0020 48C1F803 		sarq	$3, %rax
 1309 0024 5D       		popq	%rbp
 1310              		.cfi_def_cfa 7, 8
 1311 0025 C3       		ret
 1312              		.cfi_endproc
 1313              	.LFE2112:
 1315              		.section	.text._ZNSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNSt6vectorIdSaIdEEixEm,comdat
 1316              		.align 2
 1317              		.weak	_ZNSt6vectorIdSaIdEEixEm
 1319              	_ZNSt6vectorIdSaIdEEixEm:
 1320              	.LFB2113:
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
 1321              		.loc 2 795 0
 1322              		.cfi_startproc
 1323 0000 55       		pushq	%rbp
 1324              		.cfi_def_cfa_offset 16
 1325              		.cfi_offset 6, -16
 1326 0001 4889E5   		movq	%rsp, %rbp
 1327              		.cfi_def_cfa_register 6
 1328 0004 48897DF8 		movq	%rdi, -8(%rbp)
 1329 0008 488975F0 		movq	%rsi, -16(%rbp)
 796:/usr/include/c++/7/bits/stl_vector.h ****       {
 797:/usr/include/c++/7/bits/stl_vector.h **** 	__glibcxx_requires_subscript(__n);
 798:/usr/include/c++/7/bits/stl_vector.h **** 	return *(this->_M_impl._M_start + __n);
 1330              		.loc 2 798 0
 1331 000c 488B45F8 		movq	-8(%rbp), %rax
 1332 0010 488B00   		movq	(%rax), %rax
 1333 0013 488B55F0 		movq	-16(%rbp), %rdx
 1334 0017 48C1E203 		salq	$3, %rdx
 1335 001b 4801D0   		addq	%rdx, %rax
 799:/usr/include/c++/7/bits/stl_vector.h ****       }
 1336              		.loc 2 799 0
 1337 001e 5D       		popq	%rbp
 1338              		.cfi_def_cfa 7, 8
 1339 001f C3       		ret
 1340              		.cfi_endproc
 1341              	.LFE2113:
 1343              		.section	.text._ZNKSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNKSt6vectorIdSaIdEEixEm,comdat
 1344              		.align 2
 1345              		.weak	_ZNKSt6vectorIdSaIdEEixEm
 1347              	_ZNKSt6vectorIdSaIdEEixEm:
 1348              	.LFB2114:
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
 1349              		.loc 2 813 0
 1350              		.cfi_startproc
 1351 0000 55       		pushq	%rbp
 1352              		.cfi_def_cfa_offset 16
 1353              		.cfi_offset 6, -16
 1354 0001 4889E5   		movq	%rsp, %rbp
 1355              		.cfi_def_cfa_register 6
 1356 0004 48897DF8 		movq	%rdi, -8(%rbp)
 1357 0008 488975F0 		movq	%rsi, -16(%rbp)
 814:/usr/include/c++/7/bits/stl_vector.h ****       {
 815:/usr/include/c++/7/bits/stl_vector.h **** 	__glibcxx_requires_subscript(__n);
 816:/usr/include/c++/7/bits/stl_vector.h **** 	return *(this->_M_impl._M_start + __n);
 1358              		.loc 2 816 0
 1359 000c 488B45F8 		movq	-8(%rbp), %rax
 1360 0010 488B00   		movq	(%rax), %rax
 1361 0013 488B55F0 		movq	-16(%rbp), %rdx
 1362 0017 48C1E203 		salq	$3, %rdx
 1363 001b 4801D0   		addq	%rdx, %rax
 817:/usr/include/c++/7/bits/stl_vector.h ****       }
 1364              		.loc 2 817 0
 1365 001e 5D       		popq	%rbp
 1366              		.cfi_def_cfa 7, 8
 1367 001f C3       		ret
 1368              		.cfi_endproc
 1369              	.LFE2114:
 1371              		.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseId
 1372              		.align 2
 1373              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
 1375              	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev:
 1376              	.LFB2237:
  81:/usr/include/c++/7/bits/stl_vector.h ****       : public _Tp_alloc_type
 1377              		.loc 2 81 0
 1378              		.cfi_startproc
 1379 0000 55       		pushq	%rbp
 1380              		.cfi_def_cfa_offset 16
 1381              		.cfi_offset 6, -16
 1382 0001 4889E5   		movq	%rsp, %rbp
 1383              		.cfi_def_cfa_register 6
 1384 0004 4883EC10 		subq	$16, %rsp
 1385 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1386              	.LBB21:
  81:/usr/include/c++/7/bits/stl_vector.h ****       : public _Tp_alloc_type
 1387              		.loc 2 81 0
 1388 000c 488B45F8 		movq	-8(%rbp), %rax
 1389 0010 4889C7   		movq	%rax, %rdi
 1390 0013 E8000000 		call	_ZNSaIdED2Ev
 1390      00
 1391              	.LBE21:
 1392 0018 90       		nop
 1393 0019 C9       		leave
 1394              		.cfi_def_cfa 7, 8
 1395 001a C3       		ret
 1396              		.cfi_endproc
 1397              	.LFE2237:
 1399              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
 1400              		.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
 1401              		.section	.text._ZNSt12_Vector_baseIdSaIdEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5Ev,com
 1402              		.align 2
 1403              		.weak	_ZNSt12_Vector_baseIdSaIdEEC2Ev
 1405              	_ZNSt12_Vector_baseIdSaIdEEC2Ev:
 1406              	.LFB2239:
 126:/usr/include/c++/7/bits/stl_vector.h ****       : _M_impl() { }
 1407              		.loc 2 126 0
 1408              		.cfi_startproc
 1409 0000 55       		pushq	%rbp
 1410              		.cfi_def_cfa_offset 16
 1411              		.cfi_offset 6, -16
 1412 0001 4889E5   		movq	%rsp, %rbp
 1413              		.cfi_def_cfa_register 6
 1414 0004 4883EC10 		subq	$16, %rsp
 1415 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1416              	.LBB22:
 127:/usr/include/c++/7/bits/stl_vector.h **** 
 1417              		.loc 2 127 0
 1418 000c 488B45F8 		movq	-8(%rbp), %rax
 1419 0010 4889C7   		movq	%rax, %rdi
 1420 0013 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
 1420      00
 1421              	.LBE22:
 1422 0018 90       		nop
 1423 0019 C9       		leave
 1424              		.cfi_def_cfa 7, 8
 1425 001a C3       		ret
 1426              		.cfi_endproc
 1427              	.LFE2239:
 1429              		.weak	_ZNSt12_Vector_baseIdSaIdEEC1Ev
 1430              		.set	_ZNSt12_Vector_baseIdSaIdEEC1Ev,_ZNSt12_Vector_baseIdSaIdEEC2Ev
 1431              		.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,com
 1432              		.align 2
 1433              		.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
 1435              	_ZNSt12_Vector_baseIdSaIdEED2Ev:
 1436              	.LFB2242:
 161:/usr/include/c++/7/bits/stl_vector.h ****       { _M_deallocate(this->_M_impl._M_start, this->_M_impl._M_end_of_storage
 1437              		.loc 2 161 0
 1438              		.cfi_startproc
 1439              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 1440              		.cfi_lsda 0x1b,.LLSDA2242
 1441 0000 55       		pushq	%rbp
 1442              		.cfi_def_cfa_offset 16
 1443              		.cfi_offset 6, -16
 1444 0001 4889E5   		movq	%rsp, %rbp
 1445              		.cfi_def_cfa_register 6
 1446 0004 4883EC10 		subq	$16, %rsp
 1447 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1448              	.LBB23:
 162:/usr/include/c++/7/bits/stl_vector.h **** 		      - this->_M_impl._M_start); }
 1449              		.loc 2 162 0
 1450 000c 488B45F8 		movq	-8(%rbp), %rax
 1451 0010 488B4010 		movq	16(%rax), %rax
 163:/usr/include/c++/7/bits/stl_vector.h **** 
 1452              		.loc 2 163 0
 1453 0014 4889C2   		movq	%rax, %rdx
 1454 0017 488B45F8 		movq	-8(%rbp), %rax
 1455 001b 488B00   		movq	(%rax), %rax
 1456 001e 4829C2   		subq	%rax, %rdx
 1457 0021 4889D0   		movq	%rdx, %rax
 1458 0024 48C1F803 		sarq	$3, %rax
 162:/usr/include/c++/7/bits/stl_vector.h **** 		      - this->_M_impl._M_start); }
 1459              		.loc 2 162 0
 1460 0028 4889C2   		movq	%rax, %rdx
 1461 002b 488B45F8 		movq	-8(%rbp), %rax
 1462 002f 488B08   		movq	(%rax), %rcx
 1463 0032 488B45F8 		movq	-8(%rbp), %rax
 1464 0036 4889CE   		movq	%rcx, %rsi
 1465 0039 4889C7   		movq	%rax, %rdi
 1466 003c E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 1466      00
 163:/usr/include/c++/7/bits/stl_vector.h **** 
 1467              		.loc 2 163 0
 1468 0041 488B45F8 		movq	-8(%rbp), %rax
 1469 0045 4889C7   		movq	%rax, %rdi
 1470 0048 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
 1470      00
 1471              	.LBE23:
 1472 004d 90       		nop
 1473 004e C9       		leave
 1474              		.cfi_def_cfa 7, 8
 1475 004f C3       		ret
 1476              		.cfi_endproc
 1477              	.LFE2242:
 1478              		.section	.gcc_except_table
 1479              	.LLSDA2242:
 1480 0035 FF       		.byte	0xff
 1481 0036 FF       		.byte	0xff
 1482 0037 01       		.byte	0x1
 1483 0038 00       		.uleb128 .LLSDACSE2242-.LLSDACSB2242
 1484              	.LLSDACSB2242:
 1485              	.LLSDACSE2242:
 1486              		.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,com
 1488              		.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
 1489              		.set	_ZNSt12_Vector_baseIdSaIdEED1Ev,_ZNSt12_Vector_baseIdSaIdEED2Ev
 1490              		.section	.text._ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_b
 1491              		.align 2
 1492              		.weak	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 1494              	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
 1495              	.LFB2244:
 115:/usr/include/c++/7/bits/stl_vector.h ****       { return *static_cast<_Tp_alloc_type*>(&this->_M_impl); }
 1496              		.loc 2 115 0
 1497              		.cfi_startproc
 1498 0000 55       		pushq	%rbp
 1499              		.cfi_def_cfa_offset 16
 1500              		.cfi_offset 6, -16
 1501 0001 4889E5   		movq	%rsp, %rbp
 1502              		.cfi_def_cfa_register 6
 1503 0004 48897DF8 		movq	%rdi, -8(%rbp)
 116:/usr/include/c++/7/bits/stl_vector.h **** 
 1504              		.loc 2 116 0
 1505 0008 488B45F8 		movq	-8(%rbp), %rax
 1506 000c 5D       		popq	%rbp
 1507              		.cfi_def_cfa 7, 8
 1508 000d C3       		ret
 1509              		.cfi_endproc
 1510              	.LFE2244:
 1512              		.section	.text._ZSt8_DestroyIPddEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPddEvT_S1_RSaIT0_E,c
 1513              		.weak	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 1515              	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E:
 1516              	.LFB2245:
 1517              		.file 3 "/usr/include/c++/7/bits/stl_construct.h"
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
 1518              		.loc 3 203 0
 1519              		.cfi_startproc
 1520 0000 55       		pushq	%rbp
 1521              		.cfi_def_cfa_offset 16
 1522              		.cfi_offset 6, -16
 1523 0001 4889E5   		movq	%rsp, %rbp
 1524              		.cfi_def_cfa_register 6
 1525 0004 4883EC20 		subq	$32, %rsp
 1526 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1527 000c 488975F0 		movq	%rsi, -16(%rbp)
 1528 0010 488955E8 		movq	%rdx, -24(%rbp)
 204:/usr/include/c++/7/bits/stl_construct.h **** 	     allocator<_Tp>&)
 205:/usr/include/c++/7/bits/stl_construct.h ****     {
 206:/usr/include/c++/7/bits/stl_construct.h ****       _Destroy(__first, __last);
 1529              		.loc 3 206 0
 1530 0014 488B55F0 		movq	-16(%rbp), %rdx
 1531 0018 488B45F8 		movq	-8(%rbp), %rax
 1532 001c 4889D6   		movq	%rdx, %rsi
 1533 001f 4889C7   		movq	%rax, %rdi
 1534 0022 E8000000 		call	_ZSt8_DestroyIPdEvT_S1_
 1534      00
 207:/usr/include/c++/7/bits/stl_construct.h ****     }
 1535              		.loc 3 207 0
 1536 0027 90       		nop
 1537 0028 C9       		leave
 1538              		.cfi_def_cfa 7, 8
 1539 0029 C3       		ret
 1540              		.cfi_endproc
 1541              	.LFE2245:
 1543              		.section	.rodata
 1544              	.LC24:
 1545 015e 76656374 		.string	"vector::_M_default_append"
 1545      6F723A3A 
 1545      5F4D5F64 
 1545      65666175 
 1545      6C745F61 
 1546              		.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_
 1547              		.align 2
 1548              		.weak	_ZNSt6vectorIdSaIdEE17_M_default_appendEm
 1550              	_ZNSt6vectorIdSaIdEE17_M_default_appendEm:
 1551              	.LFB2248:
 1552              		.file 4 "/usr/include/c++/7/bits/vector.tcc"
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
 1553              		.loc 4 554 0
 1554              		.cfi_startproc
 1555              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 1556              		.cfi_lsda 0x1b,.LLSDA2248
 1557 0000 55       		pushq	%rbp
 1558              		.cfi_def_cfa_offset 16
 1559              		.cfi_offset 6, -16
 1560 0001 4889E5   		movq	%rsp, %rbp
 1561              		.cfi_def_cfa_register 6
 1562 0004 53       		pushq	%rbx
 1563 0005 4883EC38 		subq	$56, %rsp
 1564              		.cfi_offset 3, -24
 1565 0009 48897DC8 		movq	%rdi, -56(%rbp)
 1566 000d 488975C0 		movq	%rsi, -64(%rbp)
 1567              	.LBB24:
 555:/usr/include/c++/7/bits/vector.tcc ****     _M_default_append(size_type __n)
 556:/usr/include/c++/7/bits/vector.tcc ****     {
 557:/usr/include/c++/7/bits/vector.tcc ****       if (__n != 0)
 1568              		.loc 4 557 0
 1569 0011 48837DC0 		cmpq	$0, -64(%rbp)
 1569      00
 1570 0016 0F84E801 		je	.L76
 1570      0000
 1571              	.LBB25:
 1572              	.LBB26:
 558:/usr/include/c++/7/bits/vector.tcc **** 	{
 559:/usr/include/c++/7/bits/vector.tcc **** 	  if (size_type(this->_M_impl._M_end_of_storage
 1573              		.loc 4 559 0
 1574 001c 488B45C8 		movq	-56(%rbp), %rax
 1575 0020 488B4010 		movq	16(%rax), %rax
 560:/usr/include/c++/7/bits/vector.tcc **** 			- this->_M_impl._M_finish) >= __n)
 1576              		.loc 4 560 0
 1577 0024 4889C2   		movq	%rax, %rdx
 1578 0027 488B45C8 		movq	-56(%rbp), %rax
 1579 002b 488B4008 		movq	8(%rax), %rax
 1580 002f 4829C2   		subq	%rax, %rdx
 1581 0032 4889D0   		movq	%rdx, %rax
 1582 0035 48C1F803 		sarq	$3, %rax
 559:/usr/include/c++/7/bits/vector.tcc **** 			- this->_M_impl._M_finish) >= __n)
 1583              		.loc 4 559 0
 1584 0039 483945C0 		cmpq	%rax, -64(%rbp)
 1585 003d 7736     		ja	.L70
 561:/usr/include/c++/7/bits/vector.tcc **** 	    {
 562:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_finish =
 563:/usr/include/c++/7/bits/vector.tcc **** 		std::__uninitialized_default_n_a(this->_M_impl._M_finish,
 564:/usr/include/c++/7/bits/vector.tcc **** 						 __n, _M_get_Tp_allocator());
 1586              		.loc 4 564 0
 1587 003f 488B45C8 		movq	-56(%rbp), %rax
 1588 0043 4889C7   		movq	%rax, %rdi
 1589 0046 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 1589      00
 1590 004b 4889C2   		movq	%rax, %rdx
 563:/usr/include/c++/7/bits/vector.tcc **** 						 __n, _M_get_Tp_allocator());
 1591              		.loc 4 563 0
 1592 004e 488B45C8 		movq	-56(%rbp), %rax
 1593 0052 488B4008 		movq	8(%rax), %rax
 1594 0056 488B4DC0 		movq	-64(%rbp), %rcx
 1595 005a 4889CE   		movq	%rcx, %rsi
 1596 005d 4889C7   		movq	%rax, %rdi
 1597              	.LEHB11:
 1598 0060 E8000000 		call	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
 1598      00
 1599 0065 4889C2   		movq	%rax, %rdx
 562:/usr/include/c++/7/bits/vector.tcc **** 		std::__uninitialized_default_n_a(this->_M_impl._M_finish,
 1600              		.loc 4 562 0
 1601 0068 488B45C8 		movq	-56(%rbp), %rax
 1602 006c 48895008 		movq	%rdx, 8(%rax)
 1603              	.LBE26:
 1604              	.LBE25:
 1605              	.LBE24:
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
 1606              		.loc 4 600 0
 1607 0070 E98F0100 		jmp	.L76
 1607      00
 1608              	.L70:
 1609              	.LBB33:
 1610              	.LBB31:
 1611              	.LBB29:
 1612              	.LBB27:
 568:/usr/include/c++/7/bits/vector.tcc **** 		_M_check_len(__n, "vector::_M_default_append");
 1613              		.loc 4 568 0
 1614 0075 488B4DC0 		movq	-64(%rbp), %rcx
 1615 0079 488B45C8 		movq	-56(%rbp), %rax
 1616 007d 488D1500 		leaq	.LC24(%rip), %rdx
 1616      000000
 1617 0084 4889CE   		movq	%rcx, %rsi
 1618 0087 4889C7   		movq	%rax, %rdi
 1619 008a E8000000 		call	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
 1619      00
 1620 008f 488945D8 		movq	%rax, -40(%rbp)
 570:/usr/include/c++/7/bits/vector.tcc **** 	      pointer __new_start(this->_M_allocate(__len));
 1621              		.loc 4 570 0
 1622 0093 488B45C8 		movq	-56(%rbp), %rax
 1623 0097 4889C7   		movq	%rax, %rdi
 1624 009a E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1624      00
 1625 009f 488945E0 		movq	%rax, -32(%rbp)
 571:/usr/include/c++/7/bits/vector.tcc **** 	      pointer __new_finish(__new_start);
 1626              		.loc 4 571 0
 1627 00a3 488B45C8 		movq	-56(%rbp), %rax
 1628 00a7 488B55D8 		movq	-40(%rbp), %rdx
 1629 00ab 4889D6   		movq	%rdx, %rsi
 1630 00ae 4889C7   		movq	%rax, %rdi
 1631 00b1 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
 1631      00
 1632              	.LEHE11:
 1633 00b6 488945E8 		movq	%rax, -24(%rbp)
 572:/usr/include/c++/7/bits/vector.tcc **** 	      __try
 1634              		.loc 4 572 0
 1635 00ba 488B45E8 		movq	-24(%rbp), %rax
 1636 00be 488945D0 		movq	%rax, -48(%rbp)
 578:/usr/include/c++/7/bits/vector.tcc **** 		  __new_finish =
 1637              		.loc 4 578 0
 1638 00c2 488B45C8 		movq	-56(%rbp), %rax
 1639 00c6 4889C7   		movq	%rax, %rdi
 1640 00c9 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 1640      00
 1641 00ce 4889C1   		movq	%rax, %rcx
 577:/usr/include/c++/7/bits/vector.tcc **** 		     __new_start, _M_get_Tp_allocator());
 1642              		.loc 4 577 0
 1643 00d1 488B45C8 		movq	-56(%rbp), %rax
 1644 00d5 488B7008 		movq	8(%rax), %rsi
 1645 00d9 488B45C8 		movq	-56(%rbp), %rax
 1646 00dd 488B00   		movq	(%rax), %rax
 575:/usr/include/c++/7/bits/vector.tcc **** 		    = std::__uninitialized_move_if_noexcept_a
 1647              		.loc 4 575 0
 1648 00e0 488B55E8 		movq	-24(%rbp), %rdx
 1649 00e4 4889C7   		movq	%rax, %rdi
 1650              	.LEHB12:
 1651 00e7 E8000000 		call	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_
 1651      00
 1652 00ec 488945D0 		movq	%rax, -48(%rbp)
 581:/usr/include/c++/7/bits/vector.tcc **** 		}
 1653              		.loc 4 581 0
 1654 00f0 488B45C8 		movq	-56(%rbp), %rax
 1655 00f4 4889C7   		movq	%rax, %rdi
 1656 00f7 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 1656      00
 1657 00fc 4889C2   		movq	%rax, %rdx
 579:/usr/include/c++/7/bits/vector.tcc **** 		    std::__uninitialized_default_n_a(__new_finish, __n,
 1658              		.loc 4 579 0
 1659 00ff 488B4DC0 		movq	-64(%rbp), %rcx
 1660 0103 488B45D0 		movq	-48(%rbp), %rax
 1661 0107 4889CE   		movq	%rcx, %rsi
 1662 010a 4889C7   		movq	%rax, %rdi
 1663 010d E8000000 		call	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
 1663      00
 1664              	.LEHE12:
 579:/usr/include/c++/7/bits/vector.tcc **** 		    std::__uninitialized_default_n_a(__new_finish, __n,
 1665              		.loc 4 579 0 is_stmt 0 discriminator 1
 1666 0112 488945D0 		movq	%rax, -48(%rbp)
 591:/usr/include/c++/7/bits/vector.tcc **** 	      _M_deallocate(this->_M_impl._M_start,
 1667              		.loc 4 591 0 is_stmt 1 discriminator 1
 1668 0116 488B45C8 		movq	-56(%rbp), %rax
 1669 011a 4889C7   		movq	%rax, %rdi
 1670 011d E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 1670      00
 1671 0122 4889C2   		movq	%rax, %rdx
 590:/usr/include/c++/7/bits/vector.tcc **** 			    _M_get_Tp_allocator());
 1672              		.loc 4 590 0 discriminator 1
 1673 0125 488B45C8 		movq	-56(%rbp), %rax
 1674 0129 488B4808 		movq	8(%rax), %rcx
 1675 012d 488B45C8 		movq	-56(%rbp), %rax
 1676 0131 488B00   		movq	(%rax), %rax
 1677 0134 4889CE   		movq	%rcx, %rsi
 1678 0137 4889C7   		movq	%rax, %rdi
 1679              	.LEHB13:
 1680 013a E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 1680      00
 592:/usr/include/c++/7/bits/vector.tcc **** 			    this->_M_impl._M_end_of_storage
 1681              		.loc 4 592 0 discriminator 1
 1682 013f 488B45C8 		movq	-56(%rbp), %rax
 593:/usr/include/c++/7/bits/vector.tcc **** 			    - this->_M_impl._M_start);
 1683              		.loc 4 593 0 discriminator 1
 1684 0143 488B55C8 		movq	-56(%rbp), %rdx
 1685 0147 488B5210 		movq	16(%rdx), %rdx
 594:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_start = __new_start;
 1686              		.loc 4 594 0 discriminator 1
 1687 014b 4889D1   		movq	%rdx, %rcx
 1688 014e 488B55C8 		movq	-56(%rbp), %rdx
 1689 0152 488B12   		movq	(%rdx), %rdx
 1690 0155 4829D1   		subq	%rdx, %rcx
 1691 0158 4889CA   		movq	%rcx, %rdx
 1692 015b 48C1FA03 		sarq	$3, %rdx
 592:/usr/include/c++/7/bits/vector.tcc **** 			    this->_M_impl._M_end_of_storage
 1693              		.loc 4 592 0 discriminator 1
 1694 015f 4889D6   		movq	%rdx, %rsi
 1695 0162 488B55C8 		movq	-56(%rbp), %rdx
 1696 0166 488B0A   		movq	(%rdx), %rcx
 1697 0169 4889F2   		movq	%rsi, %rdx
 1698 016c 4889CE   		movq	%rcx, %rsi
 1699 016f 4889C7   		movq	%rax, %rdi
 1700 0172 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 1700      00
 1701              	.LEHE13:
 595:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_finish = __new_finish;
 1702              		.loc 4 595 0 discriminator 1
 1703 0177 488B45C8 		movq	-56(%rbp), %rax
 1704 017b 488B55E8 		movq	-24(%rbp), %rdx
 1705 017f 488910   		movq	%rdx, (%rax)
 596:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_end_of_storage = __new_start + __len;
 1706              		.loc 4 596 0 discriminator 1
 1707 0182 488B45C8 		movq	-56(%rbp), %rax
 1708 0186 488B55D0 		movq	-48(%rbp), %rdx
 1709 018a 48895008 		movq	%rdx, 8(%rax)
 597:/usr/include/c++/7/bits/vector.tcc **** 	    }
 1710              		.loc 4 597 0 discriminator 1
 1711 018e 488B45D8 		movq	-40(%rbp), %rax
 1712 0192 488D14C5 		leaq	0(,%rax,8), %rdx
 1712      00000000 
 1713 019a 488B45E8 		movq	-24(%rbp), %rax
 1714 019e 4801C2   		addq	%rax, %rdx
 1715 01a1 488B45C8 		movq	-56(%rbp), %rax
 1716 01a5 48895010 		movq	%rdx, 16(%rax)
 1717              	.LBE27:
 1718              	.LBE29:
 1719              	.LBE31:
 1720              	.LBE33:
 1721              		.loc 4 600 0 discriminator 1
 1722 01a9 EB59     		jmp	.L76
 1723              	.L74:
 1724              	.LBB34:
 1725              	.LBB32:
 1726              	.LBB30:
 1727              	.LBB28:
 583:/usr/include/c++/7/bits/vector.tcc **** 		{
 1728              		.loc 4 583 0
 1729 01ab 4889C7   		movq	%rax, %rdi
 1730 01ae E8000000 		call	__cxa_begin_catch@PLT
 1730      00
 586:/usr/include/c++/7/bits/vector.tcc **** 		  _M_deallocate(__new_start, __len);
 1731              		.loc 4 586 0
 1732 01b3 488B45C8 		movq	-56(%rbp), %rax
 1733 01b7 4889C7   		movq	%rax, %rdi
 1734 01ba E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 1734      00
 1735 01bf 4889C2   		movq	%rax, %rdx
 585:/usr/include/c++/7/bits/vector.tcc **** 				_M_get_Tp_allocator());
 1736              		.loc 4 585 0
 1737 01c2 488B4DD0 		movq	-48(%rbp), %rcx
 1738 01c6 488B45E8 		movq	-24(%rbp), %rax
 1739 01ca 4889CE   		movq	%rcx, %rsi
 1740 01cd 4889C7   		movq	%rax, %rdi
 1741              	.LEHB14:
 1742 01d0 E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 1742      00
 587:/usr/include/c++/7/bits/vector.tcc **** 		  __throw_exception_again;
 1743              		.loc 4 587 0
 1744 01d5 488B45C8 		movq	-56(%rbp), %rax
 1745 01d9 488B55D8 		movq	-40(%rbp), %rdx
 1746 01dd 488B4DE8 		movq	-24(%rbp), %rcx
 1747 01e1 4889CE   		movq	%rcx, %rsi
 1748 01e4 4889C7   		movq	%rax, %rdi
 1749 01e7 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 1749      00
 588:/usr/include/c++/7/bits/vector.tcc **** 		}
 1750              		.loc 4 588 0
 1751 01ec E8000000 		call	__cxa_rethrow@PLT
 1751      00
 1752              	.LEHE14:
 1753              	.L75:
 1754 01f1 4889C3   		movq	%rax, %rbx
 583:/usr/include/c++/7/bits/vector.tcc **** 		{
 1755              		.loc 4 583 0
 1756 01f4 E8000000 		call	__cxa_end_catch@PLT
 1756      00
 1757 01f9 4889D8   		movq	%rbx, %rax
 1758 01fc 4889C7   		movq	%rax, %rdi
 1759              	.LEHB15:
 1760 01ff E8000000 		call	_Unwind_Resume@PLT
 1760      00
 1761              	.LEHE15:
 1762              	.L76:
 1763              	.LBE28:
 1764              	.LBE30:
 1765              	.LBE32:
 1766              	.LBE34:
 1767              		.loc 4 600 0
 1768 0204 90       		nop
 1769 0205 4883C438 		addq	$56, %rsp
 1770 0209 5B       		popq	%rbx
 1771 020a 5D       		popq	%rbp
 1772              		.cfi_def_cfa 7, 8
 1773 020b C3       		ret
 1774              		.cfi_endproc
 1775              	.LFE2248:
 1776              		.section	.gcc_except_table
 1777 0039 000000   		.align 4
 1778              	.LLSDA2248:
 1779 003c FF       		.byte	0xff
 1780 003d 9B       		.byte	0x9b
 1781 003e 25       		.uleb128 .LLSDATT2248-.LLSDATTD2248
 1782              	.LLSDATTD2248:
 1783 003f 01       		.byte	0x1
 1784 0040 1A       		.uleb128 .LLSDACSE2248-.LLSDACSB2248
 1785              	.LLSDACSB2248:
 1786 0041 60       		.uleb128 .LEHB11-.LFB2248
 1787 0042 56       		.uleb128 .LEHE11-.LEHB11
 1788 0043 00       		.uleb128 0
 1789 0044 00       		.uleb128 0
 1790 0045 E701     		.uleb128 .LEHB12-.LFB2248
 1791 0047 2B       		.uleb128 .LEHE12-.LEHB12
 1792 0048 AB03     		.uleb128 .L74-.LFB2248
 1793 004a 01       		.uleb128 0x1
 1794 004b BA02     		.uleb128 .LEHB13-.LFB2248
 1795 004d 3D       		.uleb128 .LEHE13-.LEHB13
 1796 004e 00       		.uleb128 0
 1797 004f 00       		.uleb128 0
 1798 0050 D003     		.uleb128 .LEHB14-.LFB2248
 1799 0052 21       		.uleb128 .LEHE14-.LEHB14
 1800 0053 F103     		.uleb128 .L75-.LFB2248
 1801 0055 00       		.uleb128 0
 1802 0056 FF03     		.uleb128 .LEHB15-.LFB2248
 1803 0058 05       		.uleb128 .LEHE15-.LEHB15
 1804 0059 00       		.uleb128 0
 1805 005a 00       		.uleb128 0
 1806              	.LLSDACSE2248:
 1807 005b 01       		.byte	0x1
 1808 005c 00       		.byte	0
 1809 005d 000000   		.align 4
 1810 0060 00000000 		.long	0
 1811              	
 1812              	.LLSDATT2248:
 1813              		.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_
 1815              		.section	.text._ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd,"axG",@progbits,_ZNSt6vectorIdSaIdEE15_M_e
 1816              		.align 2
 1817              		.weak	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd
 1819              	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd:
 1820              	.LFB2249:
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
 1821              		.loc 2 1511 0
 1822              		.cfi_startproc
 1823              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 1824              		.cfi_lsda 0x1b,.LLSDA2249
 1825 0000 55       		pushq	%rbp
 1826              		.cfi_def_cfa_offset 16
 1827              		.cfi_offset 6, -16
 1828 0001 4889E5   		movq	%rsp, %rbp
 1829              		.cfi_def_cfa_register 6
 1830 0004 4883EC10 		subq	$16, %rsp
 1831 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1832 000c 488975F0 		movq	%rsi, -16(%rbp)
1512:/usr/include/c++/7/bits/stl_vector.h ****       {
1513:/usr/include/c++/7/bits/stl_vector.h **** 	std::_Destroy(__pos, this->_M_impl._M_finish, _M_get_Tp_allocator());
 1833              		.loc 2 1513 0
 1834 0010 488B45F8 		movq	-8(%rbp), %rax
 1835 0014 4889C7   		movq	%rax, %rdi
 1836 0017 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 1836      00
 1837 001c 4889C2   		movq	%rax, %rdx
 1838 001f 488B45F8 		movq	-8(%rbp), %rax
 1839 0023 488B4808 		movq	8(%rax), %rcx
 1840 0027 488B45F0 		movq	-16(%rbp), %rax
 1841 002b 4889CE   		movq	%rcx, %rsi
 1842 002e 4889C7   		movq	%rax, %rdi
 1843 0031 E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 1843      00
1514:/usr/include/c++/7/bits/stl_vector.h **** 	this->_M_impl._M_finish = __pos;
 1844              		.loc 2 1514 0
 1845 0036 488B45F8 		movq	-8(%rbp), %rax
 1846 003a 488B55F0 		movq	-16(%rbp), %rdx
 1847 003e 48895008 		movq	%rdx, 8(%rax)
1515:/usr/include/c++/7/bits/stl_vector.h ****       }
 1848              		.loc 2 1515 0
 1849 0042 90       		nop
 1850 0043 C9       		leave
 1851              		.cfi_def_cfa 7, 8
 1852 0044 C3       		ret
 1853              		.cfi_endproc
 1854              	.LFE2249:
 1855              		.section	.gcc_except_table
 1856              	.LLSDA2249:
 1857 0064 FF       		.byte	0xff
 1858 0065 FF       		.byte	0xff
 1859 0066 01       		.byte	0x1
 1860 0067 00       		.uleb128 .LLSDACSE2249-.LLSDACSB2249
 1861              	.LLSDACSB2249:
 1862              	.LLSDACSE2249:
 1863              		.section	.text._ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd,"axG",@progbits,_ZNSt6vectorIdSaIdEE15_M_e
 1865              		.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseId
 1866              		.align 2
 1867              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
 1869              	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev:
 1870              	.LFB2293:
  88:/usr/include/c++/7/bits/stl_vector.h **** 	: _Tp_alloc_type(), _M_start(), _M_finish(), _M_end_of_storage()
 1871              		.loc 2 88 0
 1872              		.cfi_startproc
 1873 0000 55       		pushq	%rbp
 1874              		.cfi_def_cfa_offset 16
 1875              		.cfi_offset 6, -16
 1876 0001 4889E5   		movq	%rsp, %rbp
 1877              		.cfi_def_cfa_register 6
 1878 0004 4883EC10 		subq	$16, %rsp
 1879 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1880              	.LBB35:
  89:/usr/include/c++/7/bits/stl_vector.h **** 	{ }
 1881              		.loc 2 89 0
 1882 000c 488B45F8 		movq	-8(%rbp), %rax
 1883 0010 4889C7   		movq	%rax, %rdi
 1884 0013 E8000000 		call	_ZNSaIdEC2Ev
 1884      00
 1885 0018 488B45F8 		movq	-8(%rbp), %rax
 1886 001c 48C70000 		movq	$0, (%rax)
 1886      000000
 1887 0023 488B45F8 		movq	-8(%rbp), %rax
 1888 0027 48C74008 		movq	$0, 8(%rax)
 1888      00000000 
 1889 002f 488B45F8 		movq	-8(%rbp), %rax
 1890 0033 48C74010 		movq	$0, 16(%rax)
 1890      00000000 
 1891              	.LBE35:
  90:/usr/include/c++/7/bits/stl_vector.h **** 
 1892              		.loc 2 90 0
 1893 003b 90       		nop
 1894 003c C9       		leave
 1895              		.cfi_def_cfa 7, 8
 1896 003d C3       		ret
 1897              		.cfi_endproc
 1898              	.LFE2293:
 1900              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
 1901              		.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
 1902              		.section	.text._ZNSaIdED2Ev,"axG",@progbits,_ZNSaIdED5Ev,comdat
 1903              		.align 2
 1904              		.weak	_ZNSaIdED2Ev
 1906              	_ZNSaIdED2Ev:
 1907              	.LFB2296:
 1908              		.file 5 "/usr/include/c++/7/bits/allocator.h"
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
 1909              		.loc 5 139 0
 1910              		.cfi_startproc
 1911 0000 55       		pushq	%rbp
 1912              		.cfi_def_cfa_offset 16
 1913              		.cfi_offset 6, -16
 1914 0001 4889E5   		movq	%rsp, %rbp
 1915              		.cfi_def_cfa_register 6
 1916 0004 4883EC10 		subq	$16, %rsp
 1917 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1918              	.LBB36:
 1919              		.loc 5 139 0
 1920 000c 488B45F8 		movq	-8(%rbp), %rax
 1921 0010 4889C7   		movq	%rax, %rdi
 1922 0013 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdED2Ev
 1922      00
 1923              	.LBE36:
 1924 0018 90       		nop
 1925 0019 C9       		leave
 1926              		.cfi_def_cfa 7, 8
 1927 001a C3       		ret
 1928              		.cfi_endproc
 1929              	.LFE2296:
 1931              		.weak	_ZNSaIdED1Ev
 1932              		.set	_ZNSaIdED1Ev,_ZNSaIdED2Ev
 1933              		.section	.text._ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,"axG",@progbits,_ZNSt12_Vector_baseI
 1934              		.align 2
 1935              		.weak	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 1937              	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm:
 1938              	.LFB2298:
 176:/usr/include/c++/7/bits/stl_vector.h ****       {
 1939              		.loc 2 176 0
 1940              		.cfi_startproc
 1941 0000 55       		pushq	%rbp
 1942              		.cfi_def_cfa_offset 16
 1943              		.cfi_offset 6, -16
 1944 0001 4889E5   		movq	%rsp, %rbp
 1945              		.cfi_def_cfa_register 6
 1946 0004 4883EC20 		subq	$32, %rsp
 1947 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1948 000c 488975F0 		movq	%rsi, -16(%rbp)
 1949 0010 488955E8 		movq	%rdx, -24(%rbp)
 179:/usr/include/c++/7/bits/stl_vector.h **** 	  _Tr::deallocate(_M_impl, __p, __n);
 1950              		.loc 2 179 0
 1951 0014 48837DF0 		cmpq	$0, -16(%rbp)
 1951      00
 1952 0019 7417     		je	.L82
 180:/usr/include/c++/7/bits/stl_vector.h ****       }
 1953              		.loc 2 180 0
 1954 001b 488B45F8 		movq	-8(%rbp), %rax
 1955 001f 488B55E8 		movq	-24(%rbp), %rdx
 1956 0023 488B4DF0 		movq	-16(%rbp), %rcx
 1957 0027 4889CE   		movq	%rcx, %rsi
 1958 002a 4889C7   		movq	%rax, %rdi
 1959 002d E8000000 		call	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
 1959      00
 1960              	.L82:
 181:/usr/include/c++/7/bits/stl_vector.h **** 
 1961              		.loc 2 181 0
 1962 0032 90       		nop
 1963 0033 C9       		leave
 1964              		.cfi_def_cfa 7, 8
 1965 0034 C3       		ret
 1966              		.cfi_endproc
 1967              	.LFE2298:
 1969              		.section	.text._ZSt8_DestroyIPdEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPdEvT_S1_,comdat
 1970              		.weak	_ZSt8_DestroyIPdEvT_S1_
 1972              	_ZSt8_DestroyIPdEvT_S1_:
 1973              	.LFB2299:
 127:/usr/include/c++/7/bits/stl_construct.h ****     {
 1974              		.loc 3 127 0
 1975              		.cfi_startproc
 1976 0000 55       		pushq	%rbp
 1977              		.cfi_def_cfa_offset 16
 1978              		.cfi_offset 6, -16
 1979 0001 4889E5   		movq	%rsp, %rbp
 1980              		.cfi_def_cfa_register 6
 1981 0004 4883EC10 		subq	$16, %rsp
 1982 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1983 000c 488975F0 		movq	%rsi, -16(%rbp)
 137:/usr/include/c++/7/bits/stl_construct.h ****     }
 1984              		.loc 3 137 0
 1985 0010 488B55F0 		movq	-16(%rbp), %rdx
 1986 0014 488B45F8 		movq	-8(%rbp), %rax
 1987 0018 4889D6   		movq	%rdx, %rsi
 1988 001b 4889C7   		movq	%rax, %rdi
 1989 001e E8000000 		call	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
 1989      00
 138:/usr/include/c++/7/bits/stl_construct.h **** 
 1990              		.loc 3 138 0
 1991 0023 90       		nop
 1992 0024 C9       		leave
 1993              		.cfi_def_cfa 7, 8
 1994 0025 C3       		ret
 1995              		.cfi_endproc
 1996              	.LFE2299:
 1998              		.section	.text._ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uni
 1999              		.weak	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
 2001              	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E:
 2002              	.LFB2301:
 2003              		.file 6 "/usr/include/c++/7/bits/stl_uninitialized.h"
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
 2004              		.loc 6 643 0
 2005              		.cfi_startproc
 2006 0000 55       		pushq	%rbp
 2007              		.cfi_def_cfa_offset 16
 2008              		.cfi_offset 6, -16
 2009 0001 4889E5   		movq	%rsp, %rbp
 2010              		.cfi_def_cfa_register 6
 2011 0004 4883EC20 		subq	$32, %rsp
 2012 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2013 000c 488975F0 		movq	%rsi, -16(%rbp)
 2014 0010 488955E8 		movq	%rdx, -24(%rbp)
 644:/usr/include/c++/7/bits/stl_uninitialized.h **** 				allocator<_Tp>&)
 645:/usr/include/c++/7/bits/stl_uninitialized.h ****     { return std::__uninitialized_default_n(__first, __n); }
 2015              		.loc 6 645 0
 2016 0014 488B55F0 		movq	-16(%rbp), %rdx
 2017 0018 488B45F8 		movq	-8(%rbp), %rax
 2018 001c 4889D6   		movq	%rdx, %rsi
 2019 001f 4889C7   		movq	%rax, %rdi
 2020 0022 E8000000 		call	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
 2020      00
 2021 0027 C9       		leave
 2022              		.cfi_def_cfa 7, 8
 2023 0028 C3       		ret
 2024              		.cfi_endproc
 2025              	.LFE2301:
 2027              		.section	.text._ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIdSaIdEE12_M_
 2028              		.align 2
 2029              		.weak	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
 2031              	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc:
 2032              	.LFB2302:
1497:/usr/include/c++/7/bits/stl_vector.h ****       {
 2033              		.loc 2 1497 0
 2034              		.cfi_startproc
 2035 0000 55       		pushq	%rbp
 2036              		.cfi_def_cfa_offset 16
 2037              		.cfi_offset 6, -16
 2038 0001 4889E5   		movq	%rsp, %rbp
 2039              		.cfi_def_cfa_register 6
 2040 0004 53       		pushq	%rbx
 2041 0005 4883EC48 		subq	$72, %rsp
 2042              		.cfi_offset 3, -24
 2043 0009 48897DC8 		movq	%rdi, -56(%rbp)
 2044 000d 488975C0 		movq	%rsi, -64(%rbp)
 2045 0011 488955B8 		movq	%rdx, -72(%rbp)
1497:/usr/include/c++/7/bits/stl_vector.h ****       {
 2046              		.loc 2 1497 0
 2047 0015 64488B04 		movq	%fs:40, %rax
 2047      25280000 
 2047      00
 2048 001e 488945E8 		movq	%rax, -24(%rbp)
 2049 0022 31C0     		xorl	%eax, %eax
1499:/usr/include/c++/7/bits/stl_vector.h **** 	  __throw_length_error(__N(__s));
 2050              		.loc 2 1499 0
 2051 0024 488B45C8 		movq	-56(%rbp), %rax
 2052 0028 4889C7   		movq	%rax, %rdi
 2053 002b E8000000 		call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 2053      00
 2054 0030 4889C3   		movq	%rax, %rbx
 2055 0033 488B45C8 		movq	-56(%rbp), %rax
 2056 0037 4889C7   		movq	%rax, %rdi
 2057 003a E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2057      00
 2058 003f 4829C3   		subq	%rax, %rbx
 2059 0042 4889DA   		movq	%rbx, %rdx
 2060 0045 488B45C0 		movq	-64(%rbp), %rax
 2061 0049 4839C2   		cmpq	%rax, %rdx
 2062 004c 0F92C0   		setb	%al
 2063 004f 84C0     		testb	%al, %al
 2064 0051 740C     		je	.L87
1500:/usr/include/c++/7/bits/stl_vector.h **** 
 2065              		.loc 2 1500 0
 2066 0053 488B45B8 		movq	-72(%rbp), %rax
 2067 0057 4889C7   		movq	%rax, %rdi
 2068 005a E8000000 		call	_ZSt20__throw_length_errorPKc@PLT
 2068      00
 2069              	.L87:
1502:/usr/include/c++/7/bits/stl_vector.h **** 	return (__len < size() || __len > max_size()) ? max_size() : __len;
 2070              		.loc 2 1502 0
 2071 005f 488B45C8 		movq	-56(%rbp), %rax
 2072 0063 4889C7   		movq	%rax, %rdi
 2073 0066 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2073      00
 2074 006b 4889C3   		movq	%rax, %rbx
 2075 006e 488B45C8 		movq	-56(%rbp), %rax
 2076 0072 4889C7   		movq	%rax, %rdi
 2077 0075 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2077      00
 2078 007a 488945D8 		movq	%rax, -40(%rbp)
 2079 007e 488D55C0 		leaq	-64(%rbp), %rdx
 2080 0082 488D45D8 		leaq	-40(%rbp), %rax
 2081 0086 4889D6   		movq	%rdx, %rsi
 2082 0089 4889C7   		movq	%rax, %rdi
 2083 008c E8000000 		call	_ZSt3maxImERKT_S2_S2_
 2083      00
 2084 0091 488B00   		movq	(%rax), %rax
 2085 0094 4801D8   		addq	%rbx, %rax
 2086 0097 488945E0 		movq	%rax, -32(%rbp)
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2087              		.loc 2 1503 0
 2088 009b 488B45C8 		movq	-56(%rbp), %rax
 2089 009f 4889C7   		movq	%rax, %rdi
 2090 00a2 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2090      00
 2091 00a7 483945E0 		cmpq	%rax, -32(%rbp)
 2092 00ab 7212     		jb	.L88
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2093              		.loc 2 1503 0 is_stmt 0 discriminator 2
 2094 00ad 488B45C8 		movq	-56(%rbp), %rax
 2095 00b1 4889C7   		movq	%rax, %rdi
 2096 00b4 E8000000 		call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 2096      00
 2097 00b9 483945E0 		cmpq	%rax, -32(%rbp)
 2098 00bd 760E     		jbe	.L89
 2099              	.L88:
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2100              		.loc 2 1503 0 discriminator 3
 2101 00bf 488B45C8 		movq	-56(%rbp), %rax
 2102 00c3 4889C7   		movq	%rax, %rdi
 2103 00c6 E8000000 		call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 2103      00
 2104 00cb EB04     		jmp	.L90
 2105              	.L89:
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2106              		.loc 2 1503 0 discriminator 4
 2107 00cd 488B45E0 		movq	-32(%rbp), %rax
 2108              	.L90:
1504:/usr/include/c++/7/bits/stl_vector.h **** 
 2109              		.loc 2 1504 0 is_stmt 1 discriminator 6
 2110 00d1 488B4DE8 		movq	-24(%rbp), %rcx
 2111 00d5 6448330C 		xorq	%fs:40, %rcx
 2111      25280000 
 2111      00
 2112 00de 7405     		je	.L92
1504:/usr/include/c++/7/bits/stl_vector.h **** 
 2113              		.loc 2 1504 0 is_stmt 0
 2114 00e0 E8000000 		call	__stack_chk_fail@PLT
 2114      00
 2115              	.L92:
 2116 00e5 4883C448 		addq	$72, %rsp
 2117 00e9 5B       		popq	%rbx
 2118 00ea 5D       		popq	%rbp
 2119              		.cfi_def_cfa 7, 8
 2120 00eb C3       		ret
 2121              		.cfi_endproc
 2122              	.LFE2302:
 2124              		.section	.text._ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaI
 2125              		.align 2
 2126              		.weak	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
 2128              	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm:
 2129              	.LFB2303:
 169:/usr/include/c++/7/bits/stl_vector.h ****       {
 2130              		.loc 2 169 0 is_stmt 1
 2131              		.cfi_startproc
 2132 0000 55       		pushq	%rbp
 2133              		.cfi_def_cfa_offset 16
 2134              		.cfi_offset 6, -16
 2135 0001 4889E5   		movq	%rsp, %rbp
 2136              		.cfi_def_cfa_register 6
 2137 0004 4883EC10 		subq	$16, %rsp
 2138 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2139 000c 488975F0 		movq	%rsi, -16(%rbp)
 172:/usr/include/c++/7/bits/stl_vector.h ****       }
 2140              		.loc 2 172 0
 2141 0010 48837DF0 		cmpq	$0, -16(%rbp)
 2141      00
 2142 0015 7415     		je	.L94
 172:/usr/include/c++/7/bits/stl_vector.h ****       }
 2143              		.loc 2 172 0 is_stmt 0 discriminator 1
 2144 0017 488B45F8 		movq	-8(%rbp), %rax
 2145 001b 488B55F0 		movq	-16(%rbp), %rdx
 2146 001f 4889D6   		movq	%rdx, %rsi
 2147 0022 4889C7   		movq	%rax, %rdi
 2148 0025 E8000000 		call	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
 2148      00
 2149 002a EB05     		jmp	.L96
 2150              	.L94:
 172:/usr/include/c++/7/bits/stl_vector.h ****       }
 2151              		.loc 2 172 0 discriminator 2
 2152 002c B8000000 		movl	$0, %eax
 2152      00
 2153              	.L96:
 173:/usr/include/c++/7/bits/stl_vector.h **** 
 2154              		.loc 2 173 0 is_stmt 1 discriminator 5
 2155 0031 C9       		leave
 2156              		.cfi_def_cfa 7, 8
 2157 0032 C3       		ret
 2158              		.cfi_endproc
 2159              	.LFE2303:
 2161              		.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_,"axG",@progbits
 2162              		.weak	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_
 2164              	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_:
 2165              	.LFB2304:
 305:/usr/include/c++/7/bits/stl_uninitialized.h **** 				       _InputIterator __last,
 2166              		.loc 6 305 0
 2167              		.cfi_startproc
 2168 0000 55       		pushq	%rbp
 2169              		.cfi_def_cfa_offset 16
 2170              		.cfi_offset 6, -16
 2171 0001 4889E5   		movq	%rsp, %rbp
 2172              		.cfi_def_cfa_register 6
 2173 0004 53       		pushq	%rbx
 2174 0005 4883EC28 		subq	$40, %rsp
 2175              		.cfi_offset 3, -24
 2176 0009 48897DE8 		movq	%rdi, -24(%rbp)
 2177 000d 488975E0 		movq	%rsi, -32(%rbp)
 2178 0011 488955D8 		movq	%rdx, -40(%rbp)
 2179 0015 48894DD0 		movq	%rcx, -48(%rbp)
 311:/usr/include/c++/7/bits/stl_uninitialized.h **** 	 _GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__last), __result, __alloc);
 2180              		.loc 6 311 0
 2181 0019 488B45E0 		movq	-32(%rbp), %rax
 2182 001d 4889C7   		movq	%rax, %rdi
 2183 0020 E8000000 		call	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_
 2183      00
 2184 0025 4889C3   		movq	%rax, %rbx
 2185 0028 488B45E8 		movq	-24(%rbp), %rax
 2186 002c 4889C7   		movq	%rax, %rdi
 2187 002f E8000000 		call	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_
 2187      00
 2188 0034 4889C7   		movq	%rax, %rdi
 312:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 2189              		.loc 6 312 0
 2190 0037 488B55D0 		movq	-48(%rbp), %rdx
 2191 003b 488B45D8 		movq	-40(%rbp), %rax
 2192 003f 4889D1   		movq	%rdx, %rcx
 2193 0042 4889C2   		movq	%rax, %rdx
 2194 0045 4889DE   		movq	%rbx, %rsi
 2195 0048 E8000000 		call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E
 2195      00
 313:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 2196              		.loc 6 313 0
 2197 004d 4883C428 		addq	$40, %rsp
 2198 0051 5B       		popq	%rbx
 2199 0052 5D       		popq	%rbp
 2200              		.cfi_def_cfa 7, 8
 2201 0053 C3       		ret
 2202              		.cfi_endproc
 2203              	.LFE2304:
 2205              		.section	.text._ZNSaIdEC2Ev,"axG",@progbits,_ZNSaIdEC5Ev,comdat
 2206              		.align 2
 2207              		.weak	_ZNSaIdEC2Ev
 2209              	_ZNSaIdEC2Ev:
 2210              	.LFB2342:
 131:/usr/include/c++/7/bits/allocator.h **** 
 2211              		.loc 5 131 0
 2212              		.cfi_startproc
 2213 0000 55       		pushq	%rbp
 2214              		.cfi_def_cfa_offset 16
 2215              		.cfi_offset 6, -16
 2216 0001 4889E5   		movq	%rsp, %rbp
 2217              		.cfi_def_cfa_register 6
 2218 0004 4883EC10 		subq	$16, %rsp
 2219 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2220              	.LBB37:
 131:/usr/include/c++/7/bits/allocator.h **** 
 2221              		.loc 5 131 0
 2222 000c 488B45F8 		movq	-8(%rbp), %rax
 2223 0010 4889C7   		movq	%rax, %rdi
 2224 0013 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
 2224      00
 2225              	.LBE37:
 2226 0018 90       		nop
 2227 0019 C9       		leave
 2228              		.cfi_def_cfa 7, 8
 2229 001a C3       		ret
 2230              		.cfi_endproc
 2231              	.LFE2342:
 2233              		.weak	_ZNSaIdEC1Ev
 2234              		.set	_ZNSaIdEC1Ev,_ZNSaIdEC2Ev
 2235              		.section	.text._ZN9__gnu_cxx13new_allocatorIdED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE
 2236              		.align 2
 2237              		.weak	_ZN9__gnu_cxx13new_allocatorIdED2Ev
 2239              	_ZN9__gnu_cxx13new_allocatorIdED2Ev:
 2240              	.LFB2345:
 2241              		.file 7 "/usr/include/c++/7/ext/new_allocator.h"
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
 2242              		.loc 7 86 0
 2243              		.cfi_startproc
 2244 0000 55       		pushq	%rbp
 2245              		.cfi_def_cfa_offset 16
 2246              		.cfi_offset 6, -16
 2247 0001 4889E5   		movq	%rsp, %rbp
 2248              		.cfi_def_cfa_register 6
 2249 0004 48897DF8 		movq	%rdi, -8(%rbp)
 2250              		.loc 7 86 0
 2251 0008 90       		nop
 2252 0009 5D       		popq	%rbp
 2253              		.cfi_def_cfa 7, 8
 2254 000a C3       		ret
 2255              		.cfi_endproc
 2256              	.LFE2345:
 2258              		.weak	_ZN9__gnu_cxx13new_allocatorIdED1Ev
 2259              		.set	_ZN9__gnu_cxx13new_allocatorIdED1Ev,_ZN9__gnu_cxx13new_allocatorIdED2Ev
 2260              		.section	.text._ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,"axG",@progbits,_ZNSt16allocator
 2261              		.weak	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
 2263              	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm:
 2264              	.LFB2347:
 2265              		.file 8 "/usr/include/c++/7/bits/alloc_traits.h"
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
 2266              		.loc 8 461 0
 2267              		.cfi_startproc
 2268 0000 55       		pushq	%rbp
 2269              		.cfi_def_cfa_offset 16
 2270              		.cfi_offset 6, -16
 2271 0001 4889E5   		movq	%rsp, %rbp
 2272              		.cfi_def_cfa_register 6
 2273 0004 4883EC20 		subq	$32, %rsp
 2274 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2275 000c 488975F0 		movq	%rsi, -16(%rbp)
 2276 0010 488955E8 		movq	%rdx, -24(%rbp)
 462:/usr/include/c++/7/bits/alloc_traits.h ****       { __a.deallocate(__p, __n); }
 2277              		.loc 8 462 0
 2278 0014 488B55E8 		movq	-24(%rbp), %rdx
 2279 0018 488B4DF0 		movq	-16(%rbp), %rcx
 2280 001c 488B45F8 		movq	-8(%rbp), %rax
 2281 0020 4889CE   		movq	%rcx, %rsi
 2282 0023 4889C7   		movq	%rax, %rdi
 2283 0026 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
 2283      00
 2284 002b 90       		nop
 2285 002c C9       		leave
 2286              		.cfi_def_cfa 7, 8
 2287 002d C3       		ret
 2288              		.cfi_endproc
 2289              	.LFE2347:
 2291              		.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxI
 2292              		.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
 2294              	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_:
 2295              	.LFB2348:
 117:/usr/include/c++/7/bits/stl_construct.h ****     };
 2296              		.loc 3 117 0
 2297              		.cfi_startproc
 2298 0000 55       		pushq	%rbp
 2299              		.cfi_def_cfa_offset 16
 2300              		.cfi_offset 6, -16
 2301 0001 4889E5   		movq	%rsp, %rbp
 2302              		.cfi_def_cfa_register 6
 2303 0004 48897DF8 		movq	%rdi, -8(%rbp)
 2304 0008 488975F0 		movq	%rsi, -16(%rbp)
 117:/usr/include/c++/7/bits/stl_construct.h ****     };
 2305              		.loc 3 117 0
 2306 000c 90       		nop
 2307 000d 5D       		popq	%rbp
 2308              		.cfi_def_cfa 7, 8
 2309 000e C3       		ret
 2310              		.cfi_endproc
 2311              	.LFE2348:
 2313              		.section	.text._ZSt25__uninitialized_default_nIPdmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_
 2314              		.weak	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
 2316              	_ZSt25__uninitialized_default_nIPdmET_S1_T0_:
 2317              	.LFB2349:
 574:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 2318              		.loc 6 574 0
 2319              		.cfi_startproc
 2320 0000 55       		pushq	%rbp
 2321              		.cfi_def_cfa_offset 16
 2322              		.cfi_offset 6, -16
 2323 0001 4889E5   		movq	%rsp, %rbp
 2324              		.cfi_def_cfa_register 6
 2325 0004 4883EC20 		subq	$32, %rsp
 2326 0008 48897DE8 		movq	%rdi, -24(%rbp)
 2327 000c 488975E0 		movq	%rsi, -32(%rbp)
 579:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 2328              		.loc 6 579 0
 2329 0010 C645FF01 		movb	$1, -1(%rbp)
 583:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 2330              		.loc 6 583 0
 2331 0014 488B55E0 		movq	-32(%rbp), %rdx
 2332 0018 488B45E8 		movq	-24(%rbp), %rax
 2333 001c 4889D6   		movq	%rdx, %rsi
 2334 001f 4889C7   		movq	%rax, %rdi
 2335 0022 E8000000 		call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
 2335      00
 584:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 2336              		.loc 6 584 0
 2337 0027 C9       		leave
 2338              		.cfi_def_cfa 7, 8
 2339 0028 C3       		ret
 2340              		.cfi_endproc
 2341              	.LFE2349:
 2343              		.section	.text._ZNKSt6vectorIdSaIdEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE8max_sizeEv,c
 2344              		.align 2
 2345              		.weak	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 2347              	_ZNKSt6vectorIdSaIdEE8max_sizeEv:
 2348              	.LFB2350:
 675:/usr/include/c++/7/bits/stl_vector.h ****       { return _Alloc_traits::max_size(_M_get_Tp_allocator()); }
 2349              		.loc 2 675 0
 2350              		.cfi_startproc
 2351 0000 55       		pushq	%rbp
 2352              		.cfi_def_cfa_offset 16
 2353              		.cfi_offset 6, -16
 2354 0001 4889E5   		movq	%rsp, %rbp
 2355              		.cfi_def_cfa_register 6
 2356 0004 4883EC10 		subq	$16, %rsp
 2357 0008 48897DF8 		movq	%rdi, -8(%rbp)
 676:/usr/include/c++/7/bits/stl_vector.h **** 
 2358              		.loc 2 676 0
 2359 000c 488B45F8 		movq	-8(%rbp), %rax
 2360 0010 4889C7   		movq	%rax, %rdi
 2361 0013 E8000000 		call	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2361      00
 2362 0018 4889C7   		movq	%rax, %rdi
 2363 001b E8000000 		call	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
 2363      00
 2364 0020 C9       		leave
 2365              		.cfi_def_cfa 7, 8
 2366 0021 C3       		ret
 2367              		.cfi_endproc
 2368              	.LFE2350:
 2370              		.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
 2371              		.weak	_ZSt3maxImERKT_S2_S2_
 2373              	_ZSt3maxImERKT_S2_S2_:
 2374              	.LFB2351:
 2375              		.file 9 "/usr/include/c++/7/bits/stl_algobase.h"
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
 2376              		.loc 9 219 0
 2377              		.cfi_startproc
 2378 0000 55       		pushq	%rbp
 2379              		.cfi_def_cfa_offset 16
 2380              		.cfi_offset 6, -16
 2381 0001 4889E5   		movq	%rsp, %rbp
 2382              		.cfi_def_cfa_register 6
 2383 0004 48897DF8 		movq	%rdi, -8(%rbp)
 2384 0008 488975F0 		movq	%rsi, -16(%rbp)
 220:/usr/include/c++/7/bits/stl_algobase.h ****     {
 221:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 222:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_LessThanComparableConcept<_Tp>)
 223:/usr/include/c++/7/bits/stl_algobase.h ****       //return  __a < __b ? __b : __a;
 224:/usr/include/c++/7/bits/stl_algobase.h ****       if (__a < __b)
 2385              		.loc 9 224 0
 2386 000c 488B45F8 		movq	-8(%rbp), %rax
 2387 0010 488B10   		movq	(%rax), %rdx
 2388 0013 488B45F0 		movq	-16(%rbp), %rax
 2389 0017 488B00   		movq	(%rax), %rax
 2390 001a 4839C2   		cmpq	%rax, %rdx
 2391 001d 7306     		jnb	.L108
 225:/usr/include/c++/7/bits/stl_algobase.h **** 	return __b;
 2392              		.loc 9 225 0
 2393 001f 488B45F0 		movq	-16(%rbp), %rax
 2394 0023 EB04     		jmp	.L109
 2395              	.L108:
 226:/usr/include/c++/7/bits/stl_algobase.h ****       return __a;
 2396              		.loc 9 226 0
 2397 0025 488B45F8 		movq	-8(%rbp), %rax
 2398              	.L109:
 227:/usr/include/c++/7/bits/stl_algobase.h ****     }
 2399              		.loc 9 227 0
 2400 0029 5D       		popq	%rbp
 2401              		.cfi_def_cfa 7, 8
 2402 002a C3       		ret
 2403              		.cfi_endproc
 2404              	.LFE2351:
 2406              		.section	.text._ZNSt16allocator_traitsISaIdEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_trai
 2407              		.weak	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
 2409              	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m:
 2410              	.LFB2352:
 435:/usr/include/c++/7/bits/alloc_traits.h ****       { return __a.allocate(__n); }
 2411              		.loc 8 435 0
 2412              		.cfi_startproc
 2413 0000 55       		pushq	%rbp
 2414              		.cfi_def_cfa_offset 16
 2415              		.cfi_offset 6, -16
 2416 0001 4889E5   		movq	%rsp, %rbp
 2417              		.cfi_def_cfa_register 6
 2418 0004 4883EC10 		subq	$16, %rsp
 2419 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2420 000c 488975F0 		movq	%rsi, -16(%rbp)
 436:/usr/include/c++/7/bits/alloc_traits.h **** 
 2421              		.loc 8 436 0
 2422 0010 488B4DF0 		movq	-16(%rbp), %rcx
 2423 0014 488B45F8 		movq	-8(%rbp), %rax
 2424 0018 BA000000 		movl	$0, %edx
 2424      00
 2425 001d 4889CE   		movq	%rcx, %rsi
 2426 0020 4889C7   		movq	%rax, %rdi
 2427 0023 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
 2427      00
 2428 0028 C9       		leave
 2429              		.cfi_def_cfa 7, 8
 2430 0029 C3       		ret
 2431              		.cfi_endproc
 2432              	.LFE2352:
 2434              		.section	.text._ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_,"axG",@progbit
 2435              		.weak	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_
 2437              	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_:
 2438              	.LFB2353:
 2439              		.file 10 "/usr/include/c++/7/bits/stl_iterator.h"
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
 881:/usr/include/c++/7/bits/stl_iterator.h **** 	       const __normal_iterator<_Iterator, _Container>& __rhs)
 882:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 883:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() != __rhs.base(); }
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
 2440              		.loc 10 1221 0
 2441              		.cfi_startproc
 2442 0000 55       		pushq	%rbp
 2443              		.cfi_def_cfa_offset 16
 2444              		.cfi_offset 6, -16
 2445 0001 4889E5   		movq	%rsp, %rbp
 2446              		.cfi_def_cfa_register 6
 2447 0004 4883EC20 		subq	$32, %rsp
 2448 0008 48897DE8 		movq	%rdi, -24(%rbp)
 2449              		.loc 10 1221 0
 2450 000c 64488B04 		movq	%fs:40, %rax
 2450      25280000 
 2450      00
 2451 0015 488945F8 		movq	%rax, -8(%rbp)
 2452 0019 31C0     		xorl	%eax, %eax
1222:/usr/include/c++/7/bits/stl_iterator.h ****     { return _ReturnType(__i); }
 2453              		.loc 10 1222 0
 2454 001b 488B55E8 		movq	-24(%rbp), %rdx
 2455 001f 488D45F0 		leaq	-16(%rbp), %rax
 2456 0023 4889D6   		movq	%rdx, %rsi
 2457 0026 4889C7   		movq	%rax, %rdi
 2458 0029 E8000000 		call	_ZNSt13move_iteratorIPdEC1ES0_
 2458      00
 2459 002e 488B45F0 		movq	-16(%rbp), %rax
 2460 0032 488B4DF8 		movq	-8(%rbp), %rcx
 2461 0036 6448330C 		xorq	%fs:40, %rcx
 2461      25280000 
 2461      00
 2462 003f 7405     		je	.L114
 2463 0041 E8000000 		call	__stack_chk_fail@PLT
 2463      00
 2464              	.L114:
 2465 0046 C9       		leave
 2466              		.cfi_def_cfa 7, 8
 2467 0047 C3       		ret
 2468              		.cfi_endproc
 2469              	.LFE2353:
 2471              		.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E,"axG",@p
 2472              		.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E
 2474              	_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E:
 2475              	.LFB2354:
 287:/usr/include/c++/7/bits/stl_uninitialized.h **** 			   _ForwardIterator __result, allocator<_Tp>&)
 2476              		.loc 6 287 0
 2477              		.cfi_startproc
 2478 0000 55       		pushq	%rbp
 2479              		.cfi_def_cfa_offset 16
 2480              		.cfi_offset 6, -16
 2481 0001 4889E5   		movq	%rsp, %rbp
 2482              		.cfi_def_cfa_register 6
 2483 0004 4883EC20 		subq	$32, %rsp
 2484 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2485 000c 488975F0 		movq	%rsi, -16(%rbp)
 2486 0010 488955E8 		movq	%rdx, -24(%rbp)
 2487 0014 48894DE0 		movq	%rcx, -32(%rbp)
 289:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 2488              		.loc 6 289 0
 2489 0018 488B55E8 		movq	-24(%rbp), %rdx
 2490 001c 488B4DF0 		movq	-16(%rbp), %rcx
 2491 0020 488B45F8 		movq	-8(%rbp), %rax
 2492 0024 4889CE   		movq	%rcx, %rsi
 2493 0027 4889C7   		movq	%rax, %rdi
 2494 002a E8000000 		call	_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 2494      00
 2495 002f C9       		leave
 2496              		.cfi_def_cfa 7, 8
 2497 0030 C3       		ret
 2498              		.cfi_endproc
 2499              	.LFE2354:
 2501              		.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE
 2502              		.align 2
 2503              		.weak	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
 2505              	_ZN9__gnu_cxx13new_allocatorIdEC2Ev:
 2506              	.LFB2390:
  79:/usr/include/c++/7/ext/new_allocator.h **** 
 2507              		.loc 7 79 0
 2508              		.cfi_startproc
 2509 0000 55       		pushq	%rbp
 2510              		.cfi_def_cfa_offset 16
 2511              		.cfi_offset 6, -16
 2512 0001 4889E5   		movq	%rsp, %rbp
 2513              		.cfi_def_cfa_register 6
 2514 0004 48897DF8 		movq	%rdi, -8(%rbp)
  79:/usr/include/c++/7/ext/new_allocator.h **** 
 2515              		.loc 7 79 0
 2516 0008 90       		nop
 2517 0009 5D       		popq	%rbp
 2518              		.cfi_def_cfa 7, 8
 2519 000a C3       		ret
 2520              		.cfi_endproc
 2521              	.LFE2390:
 2523              		.weak	_ZN9__gnu_cxx13new_allocatorIdEC1Ev
 2524              		.set	_ZN9__gnu_cxx13new_allocatorIdEC1Ev,_ZN9__gnu_cxx13new_allocatorIdEC2Ev
 2525              		.section	.text._ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,"axG",@progbits,_ZN9__gnu_cxx13new_
 2526              		.align 2
 2527              		.weak	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
 2529              	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm:
 2530              	.LFB2392:
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
 2531              		.loc 7 116 0
 2532              		.cfi_startproc
 2533 0000 55       		pushq	%rbp
 2534              		.cfi_def_cfa_offset 16
 2535              		.cfi_offset 6, -16
 2536 0001 4889E5   		movq	%rsp, %rbp
 2537              		.cfi_def_cfa_register 6
 2538 0004 4883EC20 		subq	$32, %rsp
 2539 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2540 000c 488975F0 		movq	%rsi, -16(%rbp)
 2541 0010 488955E8 		movq	%rdx, -24(%rbp)
 117:/usr/include/c++/7/ext/new_allocator.h ****       {
 118:/usr/include/c++/7/ext/new_allocator.h **** #if __cpp_aligned_new
 119:/usr/include/c++/7/ext/new_allocator.h **** 	if (alignof(_Tp) > __STDCPP_DEFAULT_NEW_ALIGNMENT__)
 120:/usr/include/c++/7/ext/new_allocator.h **** 	  {
 121:/usr/include/c++/7/ext/new_allocator.h **** 	    ::operator delete(__p, std::align_val_t(alignof(_Tp)));
 122:/usr/include/c++/7/ext/new_allocator.h **** 	    return;
 123:/usr/include/c++/7/ext/new_allocator.h **** 	  }
 124:/usr/include/c++/7/ext/new_allocator.h **** #endif
 125:/usr/include/c++/7/ext/new_allocator.h **** 	::operator delete(__p);
 2542              		.loc 7 125 0
 2543 0014 488B45F0 		movq	-16(%rbp), %rax
 2544 0018 4889C7   		movq	%rax, %rdi
 2545 001b E8000000 		call	_ZdlPv@PLT
 2545      00
 126:/usr/include/c++/7/ext/new_allocator.h ****       }
 2546              		.loc 7 126 0
 2547 0020 90       		nop
 2548 0021 C9       		leave
 2549              		.cfi_def_cfa 7, 8
 2550 0022 C3       		ret
 2551              		.cfi_endproc
 2552              	.LFE2392:
 2554              		.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_,"axG",@p
 2555              		.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
 2557              	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_:
 2558              	.LFB2393:
 543:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
 2559              		.loc 6 543 0
 2560              		.cfi_startproc
 2561 0000 55       		pushq	%rbp
 2562              		.cfi_def_cfa_offset 16
 2563              		.cfi_offset 6, -16
 2564 0001 4889E5   		movq	%rsp, %rbp
 2565              		.cfi_def_cfa_register 6
 2566 0004 4883EC20 		subq	$32, %rsp
 2567 0008 48897DE8 		movq	%rdi, -24(%rbp)
 2568 000c 488975E0 		movq	%rsi, -32(%rbp)
 543:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
 2569              		.loc 6 543 0
 2570 0010 64488B04 		movq	%fs:40, %rax
 2570      25280000 
 2570      00
 2571 0019 488945F8 		movq	%rax, -8(%rbp)
 2572 001d 31C0     		xorl	%eax, %eax
 548:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 2573              		.loc 6 548 0
 2574 001f 660FEFC0 		pxor	%xmm0, %xmm0
 2575 0023 F20F1145 		movsd	%xmm0, -16(%rbp)
 2575      F0
 2576 0028 488D55F0 		leaq	-16(%rbp), %rdx
 2577 002c 488B4DE0 		movq	-32(%rbp), %rcx
 2578 0030 488B45E8 		movq	-24(%rbp), %rax
 2579 0034 4889CE   		movq	%rcx, %rsi
 2580 0037 4889C7   		movq	%rax, %rdi
 2581 003a E8000000 		call	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
 2581      00
 549:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 2582              		.loc 6 549 0
 2583 003f 488B4DF8 		movq	-8(%rbp), %rcx
 2584 0043 6448330C 		xorq	%fs:40, %rcx
 2584      25280000 
 2584      00
 2585 004c 7405     		je	.L121
 2586 004e E8000000 		call	__stack_chk_fail@PLT
 2586      00
 2587              	.L121:
 2588 0053 C9       		leave
 2589              		.cfi_def_cfa 7, 8
 2590 0054 C3       		ret
 2591              		.cfi_endproc
 2592              	.LFE2393:
 2594              		.section	.text._ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_trai
 2595              		.weak	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
 2597              	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_:
 2598              	.LFB2394:
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
 2599              		.loc 8 495 0
 2600              		.cfi_startproc
 2601 0000 55       		pushq	%rbp
 2602              		.cfi_def_cfa_offset 16
 2603              		.cfi_offset 6, -16
 2604 0001 4889E5   		movq	%rsp, %rbp
 2605              		.cfi_def_cfa_register 6
 2606 0004 4883EC10 		subq	$16, %rsp
 2607 0008 48897DF8 		movq	%rdi, -8(%rbp)
 496:/usr/include/c++/7/bits/alloc_traits.h ****       { return __a.max_size(); }
 2608              		.loc 8 496 0
 2609 000c 488B45F8 		movq	-8(%rbp), %rax
 2610 0010 4889C7   		movq	%rax, %rdi
 2611 0013 E8000000 		call	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
 2611      00
 2612 0018 C9       		leave
 2613              		.cfi_def_cfa 7, 8
 2614 0019 C3       		ret
 2615              		.cfi_endproc
 2616              	.LFE2394:
 2618              		.section	.text._ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector
 2619              		.align 2
 2620              		.weak	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2622              	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
 2623              	.LFB2395:
 119:/usr/include/c++/7/bits/stl_vector.h ****       { return *static_cast<const _Tp_alloc_type*>(&this->_M_impl); }
 2624              		.loc 2 119 0
 2625              		.cfi_startproc
 2626 0000 55       		pushq	%rbp
 2627              		.cfi_def_cfa_offset 16
 2628              		.cfi_offset 6, -16
 2629 0001 4889E5   		movq	%rsp, %rbp
 2630              		.cfi_def_cfa_register 6
 2631 0004 48897DF8 		movq	%rdi, -8(%rbp)
 120:/usr/include/c++/7/bits/stl_vector.h **** 
 2632              		.loc 2 120 0
 2633 0008 488B45F8 		movq	-8(%rbp), %rax
 2634 000c 5D       		popq	%rbp
 2635              		.cfi_def_cfa 7, 8
 2636 000d C3       		ret
 2637              		.cfi_endproc
 2638              	.LFE2395:
 2640              		.section	.text._ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_al
 2641              		.align 2
 2642              		.weak	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
 2644              	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv:
 2645              	.LFB2396:
  99:/usr/include/c++/7/ext/new_allocator.h ****       {
 2646              		.loc 7 99 0
 2647              		.cfi_startproc
 2648 0000 55       		pushq	%rbp
 2649              		.cfi_def_cfa_offset 16
 2650              		.cfi_offset 6, -16
 2651 0001 4889E5   		movq	%rsp, %rbp
 2652              		.cfi_def_cfa_register 6
 2653 0004 4883EC20 		subq	$32, %rsp
 2654 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2655 000c 488975F0 		movq	%rsi, -16(%rbp)
 2656 0010 488955E8 		movq	%rdx, -24(%rbp)
 101:/usr/include/c++/7/ext/new_allocator.h **** 	  std::__throw_bad_alloc();
 2657              		.loc 7 101 0
 2658 0014 488B45F8 		movq	-8(%rbp), %rax
 2659 0018 4889C7   		movq	%rax, %rdi
 2660 001b E8000000 		call	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
 2660      00
 2661 0020 483945F0 		cmpq	%rax, -16(%rbp)
 2662 0024 0F97C0   		seta	%al
 2663 0027 84C0     		testb	%al, %al
 2664 0029 7405     		je	.L127
 102:/usr/include/c++/7/ext/new_allocator.h **** 
 2665              		.loc 7 102 0
 2666 002b E8000000 		call	_ZSt17__throw_bad_allocv@PLT
 2666      00
 2667              	.L127:
 111:/usr/include/c++/7/ext/new_allocator.h ****       }
 2668              		.loc 7 111 0
 2669 0030 488B45F0 		movq	-16(%rbp), %rax
 2670 0034 48C1E003 		salq	$3, %rax
 2671 0038 4889C7   		movq	%rax, %rdi
 2672 003b E8000000 		call	_Znwm@PLT
 2672      00
 112:/usr/include/c++/7/ext/new_allocator.h **** 
 2673              		.loc 7 112 0
 2674 0040 C9       		leave
 2675              		.cfi_def_cfa 7, 8
 2676 0041 C3       		ret
 2677              		.cfi_endproc
 2678              	.LFE2396:
 2680              		.section	.text._ZNSt13move_iteratorIPdEC2ES0_,"axG",@progbits,_ZNSt13move_iteratorIPdEC5ES0_,comda
 2681              		.align 2
 2682              		.weak	_ZNSt13move_iteratorIPdEC2ES0_
 2684              	_ZNSt13move_iteratorIPdEC2ES0_:
 2685              	.LFB2398:
1036:/usr/include/c++/7/bits/stl_iterator.h ****       : _M_current(__i) { }
 2686              		.loc 10 1036 0
 2687              		.cfi_startproc
 2688 0000 55       		pushq	%rbp
 2689              		.cfi_def_cfa_offset 16
 2690              		.cfi_offset 6, -16
 2691 0001 4889E5   		movq	%rsp, %rbp
 2692              		.cfi_def_cfa_register 6
 2693 0004 48897DF8 		movq	%rdi, -8(%rbp)
 2694 0008 488975F0 		movq	%rsi, -16(%rbp)
 2695              	.LBB38:
1037:/usr/include/c++/7/bits/stl_iterator.h **** 
 2696              		.loc 10 1037 0
 2697 000c 488B45F8 		movq	-8(%rbp), %rax
 2698 0010 488B55F0 		movq	-16(%rbp), %rdx
 2699 0014 488910   		movq	%rdx, (%rax)
 2700              	.LBE38:
 2701 0017 90       		nop
 2702 0018 5D       		popq	%rbp
 2703              		.cfi_def_cfa 7, 8
 2704 0019 C3       		ret
 2705              		.cfi_endproc
 2706              	.LFE2398:
 2708              		.weak	_ZNSt13move_iteratorIPdEC1ES0_
 2709              		.set	_ZNSt13move_iteratorIPdEC1ES0_,_ZNSt13move_iteratorIPdEC2ES0_
 2710              		.section	.text._ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt1
 2711              		.weak	_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 2713              	_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_:
 2714              	.LFB2400:
 115:/usr/include/c++/7/bits/stl_uninitialized.h **** 		       _ForwardIterator __result)
 2715              		.loc 6 115 0
 2716              		.cfi_startproc
 2717 0000 55       		pushq	%rbp
 2718              		.cfi_def_cfa_offset 16
 2719              		.cfi_offset 6, -16
 2720 0001 4889E5   		movq	%rsp, %rbp
 2721              		.cfi_def_cfa_register 6
 2722 0004 4883EC30 		subq	$48, %rsp
 2723 0008 48897DE8 		movq	%rdi, -24(%rbp)
 2724 000c 488975E0 		movq	%rsi, -32(%rbp)
 2725 0010 488955D8 		movq	%rdx, -40(%rbp)
 128:/usr/include/c++/7/bits/stl_uninitialized.h **** #endif
 2726              		.loc 6 128 0
 2727 0014 C645FF01 		movb	$1, -1(%rbp)
 134:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 2728              		.loc 6 134 0
 2729 0018 488B55D8 		movq	-40(%rbp), %rdx
 2730 001c 488B4DE0 		movq	-32(%rbp), %rcx
 2731 0020 488B45E8 		movq	-24(%rbp), %rax
 2732 0024 4889CE   		movq	%rcx, %rsi
 2733 0027 4889C7   		movq	%rax, %rdi
 2734 002a E8000000 		call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_
 2734      00
 135:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 2735              		.loc 6 135 0
 2736 002f C9       		leave
 2737              		.cfi_def_cfa 7, 8
 2738 0030 C3       		ret
 2739              		.cfi_endproc
 2740              	.LFE2400:
 2742              		.section	.text._ZSt6fill_nIPdmdET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPdmdET_S1_T0_RKT1_,comda
 2743              		.weak	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
 2745              	_ZSt6fill_nIPdmdET_S1_T0_RKT1_:
 2746              	.LFB2425:
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
 2747              		.loc 9 784 0
 2748              		.cfi_startproc
 2749 0000 55       		pushq	%rbp
 2750              		.cfi_def_cfa_offset 16
 2751              		.cfi_offset 6, -16
 2752 0001 4889E5   		movq	%rsp, %rbp
 2753              		.cfi_def_cfa_register 6
 2754 0004 4883EC20 		subq	$32, %rsp
 2755 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2756 000c 488975F0 		movq	%rsi, -16(%rbp)
 2757 0010 488955E8 		movq	%rdx, -24(%rbp)
 785:/usr/include/c++/7/bits/stl_algobase.h ****     {
 786:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 787:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_OutputIteratorConcept<_OI, _Tp>)
 788:/usr/include/c++/7/bits/stl_algobase.h **** 
 789:/usr/include/c++/7/bits/stl_algobase.h ****       return _OI(std::__fill_n_a(std::__niter_base(__first), __n, __value));
 2758              		.loc 9 789 0
 2759 0014 488B45F8 		movq	-8(%rbp), %rax
 2760 0018 4889C7   		movq	%rax, %rdi
 2761 001b E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 2761      00
 2762 0020 4889C1   		movq	%rax, %rcx
 2763 0023 488B55E8 		movq	-24(%rbp), %rdx
 2764 0027 488B45F0 		movq	-16(%rbp), %rax
 2765 002b 4889C6   		movq	%rax, %rsi
 2766 002e 4889CF   		movq	%rcx, %rdi
 2767 0031 E8000000 		call	_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_
 2767      00
 790:/usr/include/c++/7/bits/stl_algobase.h ****     }
 2768              		.loc 9 790 0
 2769 0036 C9       		leave
 2770              		.cfi_def_cfa 7, 8
 2771 0037 C3       		ret
 2772              		.cfi_endproc
 2773              	.LFE2425:
 2775              		.section	.text._ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_all
 2776              		.align 2
 2777              		.weak	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
 2779              	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv:
 2780              	.LFB2426:
 127:/usr/include/c++/7/ext/new_allocator.h **** 
 128:/usr/include/c++/7/ext/new_allocator.h ****       size_type
 129:/usr/include/c++/7/ext/new_allocator.h ****       max_size() const _GLIBCXX_USE_NOEXCEPT
 2781              		.loc 7 129 0
 2782              		.cfi_startproc
 2783 0000 55       		pushq	%rbp
 2784              		.cfi_def_cfa_offset 16
 2785              		.cfi_offset 6, -16
 2786 0001 4889E5   		movq	%rsp, %rbp
 2787              		.cfi_def_cfa_register 6
 2788 0004 48897DF8 		movq	%rdi, -8(%rbp)
 130:/usr/include/c++/7/ext/new_allocator.h ****       { return size_t(-1) / sizeof(_Tp); }
 2789              		.loc 7 130 0
 2790 0008 48B8FFFF 		movabsq	$2305843009213693951, %rax
 2790      FFFFFFFF 
 2790      FF1F
 2791 0012 5D       		popq	%rbp
 2792              		.cfi_def_cfa 7, 8
 2793 0013 C3       		ret
 2794              		.cfi_endproc
 2795              	.LFE2426:
 2797              		.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_
 2798              		.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_
 2800              	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_:
 2801              	.LFB2427:
  99:/usr/include/c++/7/bits/stl_uninitialized.h **** 		      _ForwardIterator __result)
 2802              		.loc 6 99 0
 2803              		.cfi_startproc
 2804 0000 55       		pushq	%rbp
 2805              		.cfi_def_cfa_offset 16
 2806              		.cfi_offset 6, -16
 2807 0001 4889E5   		movq	%rsp, %rbp
 2808              		.cfi_def_cfa_register 6
 2809 0004 4883EC20 		subq	$32, %rsp
 2810 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2811 000c 488975F0 		movq	%rsi, -16(%rbp)
 2812 0010 488955E8 		movq	%rdx, -24(%rbp)
 101:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 2813              		.loc 6 101 0
 2814 0014 488B55E8 		movq	-24(%rbp), %rdx
 2815 0018 488B4DF0 		movq	-16(%rbp), %rcx
 2816 001c 488B45F8 		movq	-8(%rbp), %rax
 2817 0020 4889CE   		movq	%rcx, %rsi
 2818 0023 4889C7   		movq	%rax, %rdi
 2819 0026 E8000000 		call	_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 2819      00
 2820 002b C9       		leave
 2821              		.cfi_def_cfa 7, 8
 2822 002c C3       		ret
 2823              		.cfi_endproc
 2824              	.LFE2427:
 2826              		.section	.text._ZSt12__niter_baseIPdET_S1_,"axG",@progbits,_ZSt12__niter_baseIPdET_S1_,comdat
 2827              		.weak	_ZSt12__niter_baseIPdET_S1_
 2829              	_ZSt12__niter_baseIPdET_S1_:
 2830              	.LFB2436:
 277:/usr/include/c++/7/bits/stl_algobase.h ****     { return __it; }
 2831              		.loc 9 277 0
 2832              		.cfi_startproc
 2833 0000 55       		pushq	%rbp
 2834              		.cfi_def_cfa_offset 16
 2835              		.cfi_offset 6, -16
 2836 0001 4889E5   		movq	%rsp, %rbp
 2837              		.cfi_def_cfa_register 6
 2838 0004 48897DF8 		movq	%rdi, -8(%rbp)
 278:/usr/include/c++/7/bits/stl_algobase.h **** 
 2839              		.loc 9 278 0
 2840 0008 488B45F8 		movq	-8(%rbp), %rax
 2841 000c 5D       		popq	%rbp
 2842              		.cfi_def_cfa 7, 8
 2843 000d C3       		ret
 2844              		.cfi_endproc
 2845              	.LFE2436:
 2847              		.section	.text._ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6
 2848              		.weak	_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6
 2850              	_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS
 2851              	.LFB2437:
 749:/usr/include/c++/7/bits/stl_algobase.h ****     {
 2852              		.loc 9 749 0
 2853              		.cfi_startproc
 2854 0000 55       		pushq	%rbp
 2855              		.cfi_def_cfa_offset 16
 2856              		.cfi_offset 6, -16
 2857 0001 4889E5   		movq	%rsp, %rbp
 2858              		.cfi_def_cfa_register 6
 2859 0004 48897DE8 		movq	%rdi, -24(%rbp)
 2860 0008 488975E0 		movq	%rsi, -32(%rbp)
 2861 000c 488955D8 		movq	%rdx, -40(%rbp)
 751:/usr/include/c++/7/bits/stl_algobase.h ****       for (__decltype(__n + 0) __niter = __n;
 2862              		.loc 9 751 0
 2863 0010 488B45D8 		movq	-40(%rbp), %rax
 2864 0014 F20F1000 		movsd	(%rax), %xmm0
 2865 0018 F20F1145 		movsd	%xmm0, -8(%rbp)
 2865      F8
 2866              	.LBB39:
 752:/usr/include/c++/7/bits/stl_algobase.h **** 	   __niter > 0; --__niter, ++__first)
 2867              		.loc 9 752 0
 2868 001d 488B45E0 		movq	-32(%rbp), %rax
 2869 0021 488945F0 		movq	%rax, -16(%rbp)
 2870              	.L142:
 753:/usr/include/c++/7/bits/stl_algobase.h **** 	*__first = __tmp;
 2871              		.loc 9 753 0
 2872 0025 48837DF0 		cmpq	$0, -16(%rbp)
 2872      00
 2873 002a 7419     		je	.L141
 754:/usr/include/c++/7/bits/stl_algobase.h ****       return __first;
 2874              		.loc 9 754 0
 2875 002c 488B45E8 		movq	-24(%rbp), %rax
 2876 0030 F20F1045 		movsd	-8(%rbp), %xmm0
 2876      F8
 2877 0035 F20F1100 		movsd	%xmm0, (%rax)
 752:/usr/include/c++/7/bits/stl_algobase.h **** 	   __niter > 0; --__niter, ++__first)
 2878              		.loc 9 752 0
 2879 0039 48836DF0 		subq	$1, -16(%rbp)
 2879      01
 2880 003e 488345E8 		addq	$8, -24(%rbp)
 2880      08
 2881 0043 EBE0     		jmp	.L142
 2882              	.L141:
 2883              	.LBE39:
 755:/usr/include/c++/7/bits/stl_algobase.h ****     }
 2884              		.loc 9 755 0
 2885 0045 488B45E8 		movq	-24(%rbp), %rax
 756:/usr/include/c++/7/bits/stl_algobase.h **** 
 2886              		.loc 9 756 0
 2887 0049 5D       		popq	%rbp
 2888              		.cfi_def_cfa 7, 8
 2889 004a C3       		ret
 2890              		.cfi_endproc
 2891              	.LFE2437:
 2893              		.section	.text._ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt4copyISt13move_i
 2894              		.weak	_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 2896              	_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_:
 2897              	.LFB2438:
 446:/usr/include/c++/7/bits/stl_algobase.h ****     {
 2898              		.loc 9 446 0
 2899              		.cfi_startproc
 2900 0000 55       		pushq	%rbp
 2901              		.cfi_def_cfa_offset 16
 2902              		.cfi_offset 6, -16
 2903 0001 4889E5   		movq	%rsp, %rbp
 2904              		.cfi_def_cfa_register 6
 2905 0004 53       		pushq	%rbx
 2906 0005 4883EC28 		subq	$40, %rsp
 2907              		.cfi_offset 3, -24
 2908 0009 48897DE8 		movq	%rdi, -24(%rbp)
 2909 000d 488975E0 		movq	%rsi, -32(%rbp)
 2910 0011 488955D8 		movq	%rdx, -40(%rbp)
 455:/usr/include/c++/7/bits/stl_algobase.h **** 	       __result));
 2911              		.loc 9 455 0
 2912 0015 488B45E0 		movq	-32(%rbp), %rax
 2913 0019 4889C7   		movq	%rax, %rdi
 2914 001c E8000000 		call	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
 2914      00
 2915 0021 4889C3   		movq	%rax, %rbx
 2916 0024 488B45E8 		movq	-24(%rbp), %rax
 2917 0028 4889C7   		movq	%rax, %rdi
 2918 002b E8000000 		call	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
 2918      00
 2919 0030 4889C1   		movq	%rax, %rcx
 456:/usr/include/c++/7/bits/stl_algobase.h ****     }
 2920              		.loc 9 456 0
 2921 0033 488B45D8 		movq	-40(%rbp), %rax
 2922 0037 4889C2   		movq	%rax, %rdx
 2923 003a 4889DE   		movq	%rbx, %rsi
 2924 003d 4889CF   		movq	%rcx, %rdi
 2925 0040 E8000000 		call	_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_
 2925      00
 457:/usr/include/c++/7/bits/stl_algobase.h **** 
 2926              		.loc 9 457 0
 2927 0045 4883C428 		addq	$40, %rsp
 2928 0049 5B       		popq	%rbx
 2929 004a 5D       		popq	%rbp
 2930              		.cfi_def_cfa 7, 8
 2931 004b C3       		ret
 2932              		.cfi_endproc
 2933              	.LFE2438:
 2935              		.section	.text._ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"axG",
 2936              		.weak	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
 2938              	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
 2939              	.LFB2441:
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
 2940              		.loc 10 1241 0
 2941              		.cfi_startproc
 2942 0000 55       		pushq	%rbp
 2943              		.cfi_def_cfa_offset 16
 2944              		.cfi_offset 6, -16
 2945 0001 4889E5   		movq	%rsp, %rbp
 2946              		.cfi_def_cfa_register 6
 2947 0004 4883EC10 		subq	$16, %rsp
 2948 0008 48897DF8 		movq	%rdi, -8(%rbp)
1242:/usr/include/c++/7/bits/stl_iterator.h ****     -> decltype(__miter_base(__it.base()))
1243:/usr/include/c++/7/bits/stl_iterator.h ****     { return __miter_base(__it.base()); }
 2949              		.loc 10 1243 0
 2950 000c 488D45F8 		leaq	-8(%rbp), %rax
 2951 0010 4889C7   		movq	%rax, %rdi
 2952 0013 E8000000 		call	_ZNKSt13move_iteratorIPdE4baseEv
 2952      00
 2953 0018 4889C7   		movq	%rax, %rdi
 2954 001b E8000000 		call	_ZSt12__miter_baseIPdET_S1_
 2954      00
 2955 0020 C9       		leave
 2956              		.cfi_def_cfa 7, 8
 2957 0021 C3       		ret
 2958              		.cfi_endproc
 2959              	.LFE2441:
 2961              		.section	.text._ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb
 2962              		.weak	_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_
 2964              	_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_:
 2965              	.LFB2442:
 420:/usr/include/c++/7/bits/stl_algobase.h ****     {
 2966              		.loc 9 420 0
 2967              		.cfi_startproc
 2968 0000 55       		pushq	%rbp
 2969              		.cfi_def_cfa_offset 16
 2970              		.cfi_offset 6, -16
 2971 0001 4889E5   		movq	%rsp, %rbp
 2972              		.cfi_def_cfa_register 6
 2973 0004 4154     		pushq	%r12
 2974 0006 53       		pushq	%rbx
 2975 0007 4883EC20 		subq	$32, %rsp
 2976              		.cfi_offset 12, -24
 2977              		.cfi_offset 3, -32
 2978 000b 48897DE8 		movq	%rdi, -24(%rbp)
 2979 000f 488975E0 		movq	%rsi, -32(%rbp)
 2980 0013 488955D8 		movq	%rdx, -40(%rbp)
 422:/usr/include/c++/7/bits/stl_algobase.h **** 					     std::__niter_base(__last),
 2981              		.loc 9 422 0
 2982 0017 488B45D8 		movq	-40(%rbp), %rax
 2983 001b 4889C7   		movq	%rax, %rdi
 2984 001e E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 2984      00
 2985 0023 4989C4   		movq	%rax, %r12
 2986 0026 488B45E0 		movq	-32(%rbp), %rax
 2987 002a 4889C7   		movq	%rax, %rdi
 2988 002d E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 2988      00
 2989 0032 4889C3   		movq	%rax, %rbx
 2990 0035 488B45E8 		movq	-24(%rbp), %rax
 2991 0039 4889C7   		movq	%rax, %rdi
 2992 003c E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 2992      00
 424:/usr/include/c++/7/bits/stl_algobase.h ****     }
 2993              		.loc 9 424 0
 2994 0041 4C89E2   		movq	%r12, %rdx
 2995 0044 4889DE   		movq	%rbx, %rsi
 2996 0047 4889C7   		movq	%rax, %rdi
 2997 004a E8000000 		call	_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_
 2997      00
 425:/usr/include/c++/7/bits/stl_algobase.h **** 
 2998              		.loc 9 425 0
 2999 004f 4883C420 		addq	$32, %rsp
 3000 0053 5B       		popq	%rbx
 3001 0054 415C     		popq	%r12
 3002 0056 5D       		popq	%rbp
 3003              		.cfi_def_cfa 7, 8
 3004 0057 C3       		ret
 3005              		.cfi_endproc
 3006              	.LFE2442:
 3008              		.section	.text._ZNKSt13move_iteratorIPdE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIPdE4baseEv,c
 3009              		.align 2
 3010              		.weak	_ZNKSt13move_iteratorIPdE4baseEv
 3012              	_ZNKSt13move_iteratorIPdE4baseEv:
 3013              	.LFB2443:
1045:/usr/include/c++/7/bits/stl_iterator.h ****       { return _M_current; }
 3014              		.loc 10 1045 0
 3015              		.cfi_startproc
 3016 0000 55       		pushq	%rbp
 3017              		.cfi_def_cfa_offset 16
 3018              		.cfi_offset 6, -16
 3019 0001 4889E5   		movq	%rsp, %rbp
 3020              		.cfi_def_cfa_register 6
 3021 0004 48897DF8 		movq	%rdi, -8(%rbp)
1046:/usr/include/c++/7/bits/stl_iterator.h **** 
 3022              		.loc 10 1046 0
 3023 0008 488B45F8 		movq	-8(%rbp), %rax
 3024 000c 488B00   		movq	(%rax), %rax
 3025 000f 5D       		popq	%rbp
 3026              		.cfi_def_cfa 7, 8
 3027 0010 C3       		ret
 3028              		.cfi_endproc
 3029              	.LFE2443:
 3031              		.section	.text._ZSt12__miter_baseIPdET_S1_,"axG",@progbits,_ZSt12__miter_baseIPdET_S1_,comdat
 3032              		.weak	_ZSt12__miter_baseIPdET_S1_
 3034              	_ZSt12__miter_baseIPdET_S1_:
 3035              	.LFB2444:
 3036              		.file 11 "/usr/include/c++/7/bits/cpp_type_traits.h"
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
 3037              		.loc 11 408 0
 3038              		.cfi_startproc
 3039 0000 55       		pushq	%rbp
 3040              		.cfi_def_cfa_offset 16
 3041              		.cfi_offset 6, -16
 3042 0001 4889E5   		movq	%rsp, %rbp
 3043              		.cfi_def_cfa_register 6
 3044 0004 48897DF8 		movq	%rdi, -8(%rbp)
 409:/usr/include/c++/7/bits/cpp_type_traits.h ****     { return __it; }
 3045              		.loc 11 409 0
 3046 0008 488B45F8 		movq	-8(%rbp), %rax
 3047 000c 5D       		popq	%rbp
 3048              		.cfi_def_cfa 7, 8
 3049 000d C3       		ret
 3050              		.cfi_endproc
 3051              	.LFE2444:
 3053              		.section	.text._ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb1E
 3054              		.weak	_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_
 3056              	_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_:
 3057              	.LFB2445:
 375:/usr/include/c++/7/bits/stl_algobase.h ****     {
 3058              		.loc 9 375 0
 3059              		.cfi_startproc
 3060 0000 55       		pushq	%rbp
 3061              		.cfi_def_cfa_offset 16
 3062              		.cfi_offset 6, -16
 3063 0001 4889E5   		movq	%rsp, %rbp
 3064              		.cfi_def_cfa_register 6
 3065 0004 4883EC30 		subq	$48, %rsp
 3066 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3067 000c 488975E0 		movq	%rsi, -32(%rbp)
 3068 0010 488955D8 		movq	%rdx, -40(%rbp)
 380:/usr/include/c++/7/bits/stl_algobase.h **** 	                     && __is_pointer<_II>::__value
 3069              		.loc 9 380 0
 3070 0014 C645FF01 		movb	$1, -1(%rbp)
 386:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3071              		.loc 9 386 0
 3072 0018 488B55D8 		movq	-40(%rbp), %rdx
 3073 001c 488B4DE0 		movq	-32(%rbp), %rcx
 3074 0020 488B45E8 		movq	-24(%rbp), %rax
 3075 0024 4889CE   		movq	%rcx, %rsi
 3076 0027 4889C7   		movq	%rax, %rdi
 3077 002a E8000000 		call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
 3077      00
 387:/usr/include/c++/7/bits/stl_algobase.h **** 
 3078              		.loc 9 387 0
 3079 002f C9       		leave
 3080              		.cfi_def_cfa 7, 8
 3081 0030 C3       		ret
 3082              		.cfi_endproc
 3083              	.LFE2445:
 3085              		.section	.text._ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S
 3086              		.weak	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
 3088              	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_:
 3089              	.LFB2446:
 357:/usr/include/c++/7/bits/stl_algobase.h ****         {
 3090              		.loc 9 357 0
 3091              		.cfi_startproc
 3092 0000 55       		pushq	%rbp
 3093              		.cfi_def_cfa_offset 16
 3094              		.cfi_offset 6, -16
 3095 0001 4889E5   		movq	%rsp, %rbp
 3096              		.cfi_def_cfa_register 6
 3097 0004 4883EC30 		subq	$48, %rsp
 3098 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3099 000c 488975E0 		movq	%rsi, -32(%rbp)
 3100 0010 488955D8 		movq	%rdx, -40(%rbp)
 366:/usr/include/c++/7/bits/stl_algobase.h **** 	  if (_Num)
 3101              		.loc 9 366 0
 3102 0014 488B55E0 		movq	-32(%rbp), %rdx
 3103 0018 488B45E8 		movq	-24(%rbp), %rax
 3104 001c 4829C2   		subq	%rax, %rdx
 3105 001f 4889D0   		movq	%rdx, %rax
 3106 0022 48C1F803 		sarq	$3, %rax
 3107 0026 488945F8 		movq	%rax, -8(%rbp)
 367:/usr/include/c++/7/bits/stl_algobase.h **** 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
 3108              		.loc 9 367 0
 3109 002a 48837DF8 		cmpq	$0, -8(%rbp)
 3109      00
 3110 002f 741F     		je	.L157
 368:/usr/include/c++/7/bits/stl_algobase.h **** 	  return __result + _Num;
 3111              		.loc 9 368 0
 3112 0031 488B45F8 		movq	-8(%rbp), %rax
 3113 0035 488D14C5 		leaq	0(,%rax,8), %rdx
 3113      00000000 
 3114 003d 488B4DE8 		movq	-24(%rbp), %rcx
 3115 0041 488B45D8 		movq	-40(%rbp), %rax
 3116 0045 4889CE   		movq	%rcx, %rsi
 3117 0048 4889C7   		movq	%rax, %rdi
 3118 004b E8000000 		call	memmove@PLT
 3118      00
 3119              	.L157:
 369:/usr/include/c++/7/bits/stl_algobase.h **** 	}
 3120              		.loc 9 369 0
 3121 0050 488B45F8 		movq	-8(%rbp), %rax
 3122 0054 488D14C5 		leaq	0(,%rax,8), %rdx
 3122      00000000 
 3123 005c 488B45D8 		movq	-40(%rbp), %rax
 3124 0060 4801D0   		addq	%rdx, %rax
 370:/usr/include/c++/7/bits/stl_algobase.h ****     };
 3125              		.loc 9 370 0
 3126 0063 C9       		leave
 3127              		.cfi_def_cfa 7, 8
 3128 0064 C3       		ret
 3129              		.cfi_endproc
 3130              	.LFE2446:
 3132              		.text
 3134              	_Z41__static_initialization_and_destruction_0ii:
 3135              	.LFB2447:
 3136              		.loc 1 185 0
 3137              		.cfi_startproc
 3138 03fe 55       		pushq	%rbp
 3139              		.cfi_def_cfa_offset 16
 3140              		.cfi_offset 6, -16
 3141 03ff 4889E5   		movq	%rsp, %rbp
 3142              		.cfi_def_cfa_register 6
 3143 0402 4883EC10 		subq	$16, %rsp
 3144 0406 897DFC   		movl	%edi, -4(%rbp)
 3145 0409 8975F8   		movl	%esi, -8(%rbp)
 3146              		.loc 1 185 0
 3147 040c 837DFC01 		cmpl	$1, -4(%rbp)
 3148 0410 7532     		jne	.L161
 3149              		.loc 1 185 0 is_stmt 0 discriminator 1
 3150 0412 817DF8FF 		cmpl	$65535, -8(%rbp)
 3150      FF0000
 3151 0419 7529     		jne	.L161
 3152              		.file 12 "/usr/include/c++/7/iostream"
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
 3153              		.loc 12 74 0 is_stmt 1
 3154 041b 488D3D00 		leaq	_ZStL8__ioinit(%rip), %rdi
 3154      000000
 3155 0422 E8000000 		call	_ZNSt8ios_base4InitC1Ev@PLT
 3155      00
 3156 0427 488D1500 		leaq	__dso_handle(%rip), %rdx
 3156      000000
 3157 042e 488D3500 		leaq	_ZStL8__ioinit(%rip), %rsi
 3157      000000
 3158 0435 488B0500 		movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
 3158      000000
 3159 043c 4889C7   		movq	%rax, %rdi
 3160 043f E8000000 		call	__cxa_atexit@PLT
 3160      00
 3161              	.L161:
 3162              		.loc 1 185 0
 3163 0444 90       		nop
 3164 0445 C9       		leave
 3165              		.cfi_def_cfa 7, 8
 3166 0446 C3       		ret
 3167              		.cfi_endproc
 3168              	.LFE2447:
 3171              	_GLOBAL__sub_I_main:
 3172              	.LFB2448:
 3173              		.loc 1 185 0
 3174              		.cfi_startproc
 3175 0447 55       		pushq	%rbp
 3176              		.cfi_def_cfa_offset 16
 3177              		.cfi_offset 6, -16
 3178 0448 4889E5   		movq	%rsp, %rbp
 3179              		.cfi_def_cfa_register 6
 3180              		.loc 1 185 0
 3181 044b BEFFFF00 		movl	$65535, %esi
 3181      00
 3182 0450 BF010000 		movl	$1, %edi
 3182      00
 3183 0455 E8A4FFFF 		call	_Z41__static_initialization_and_destruction_0ii
 3183      FF
 3184 045a 5D       		popq	%rbp
 3185              		.cfi_def_cfa 7, 8
 3186 045b C3       		ret
 3187              		.cfi_endproc
 3188              	.LFE2448:
 3190              		.section	.init_array,"aw"
 3191              		.align 8
 3192 0000 00000000 		.quad	_GLOBAL__sub_I_main
 3192      00000000 
 3193              		.section	.rodata
 3194 0178 00000000 		.align 32
 3194      00000000 
 3197              	_ZZN9RowVectorplERKS_E19__PRETTY_FUNCTION__:
 3198 0180 526F7756 		.string	"RowVector RowVector::operator+(const RowVector&)"
 3198      6563746F 
 3198      7220526F 
 3198      77566563 
 3198      746F723A 
 3199 01b1 00000000 		.align 32
 3199      00000000 
 3199      00000000 
 3199      000000
 3202              	_ZZN9RowVectormlERKS_E19__PRETTY_FUNCTION__:
 3203 01c0 636F6E73 		.string	"const double RowVector::operator*(const RowVector&)"
 3203      7420646F 
 3203      75626C65 
 3203      20526F77 
 3203      56656374 
 3204 01f4 00000000 		.align 8
 3205              	.LC9:
 3206 01f8 00000000 		.long	0
 3207 01fc 0000F03F 		.long	1072693248
 3208              		.align 8
 3209              	.LC10:
 3210 0200 00000000 		.long	0
 3211 0204 00000040 		.long	1073741824
 3212              		.align 8
 3213              	.LC15:
 3214 0208 00000000 		.long	0
 3215 020c 0000E03F 		.long	1071644672
 3216              		.align 8
 3217              	.LC19:
 3218 0210 00000000 		.long	0
 3219 0214 0000F0BF 		.long	-1074790400
 3220              		.text
 3221              	.Letext0:
 3222              		.file 13 "/usr/include/c++/7/bits/basic_string.h"
 3223              		.file 14 "/usr/include/c++/7/bits/stringfwd.h"
 3224              		.file 15 "/usr/include/c++/7/cstdint"
 3225              		.file 16 "/usr/include/c++/7/new"
 3226              		.file 17 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
 3227              		.file 18 "/usr/include/c++/7/bits/exception_ptr.h"
 3228              		.file 19 "/usr/include/c++/7/type_traits"
 3229              		.file 20 "/usr/include/c++/7/cwchar"
 3230              		.file 21 "/usr/include/c++/7/bits/stl_pair.h"
 3231              		.file 22 "/usr/include/c++/7/debug/debug.h"
 3232              		.file 23 "/usr/include/c++/7/bits/char_traits.h"
 3233              		.file 24 "/usr/include/c++/7/clocale"
 3234              		.file 25 "/usr/include/c++/7/cstdlib"
 3235              		.file 26 "/usr/include/c++/7/cstdio"
 3236              		.file 27 "/usr/include/c++/7/initializer_list"
 3237              		.file 28 "/usr/include/c++/7/system_error"
 3238              		.file 29 "/usr/include/c++/7/bits/ios_base.h"
 3239              		.file 30 "/usr/include/c++/7/cwctype"
 3240              		.file 31 "/usr/include/c++/7/iosfwd"
 3241              		.file 32 "/usr/include/c++/7/bits/stl_iterator_base_types.h"
 3242              		.file 33 "/usr/include/c++/7/bits/move.h"
 3243              		.file 34 "/usr/include/c++/7/bits/predefined_ops.h"
 3244              		.file 35 "/usr/include/c++/7/ext/numeric_traits.h"
 3245              		.file 36 "/usr/include/c++/7/ext/alloc_traits.h"
 3246              		.file 37 "/usr/include/c++/7/ext/type_traits.h"
 3247              		.file 38 "/usr/include/x86_64-linux-gnu/bits/types.h"
 3248              		.file 39 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
 3249              		.file 40 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
 3250              		.file 41 "/usr/include/stdint.h"
 3251              		.file 42 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
 3252              		.file 43 "<built-in>"
 3253              		.file 44 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
 3254              		.file 45 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
 3255              		.file 46 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
 3256              		.file 47 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
 3257              		.file 48 "/usr/include/x86_64-linux-gnu/bits/libio.h"
 3258              		.file 49 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
 3259              		.file 50 "/usr/include/wchar.h"
 3260              		.file 51 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
 3261              		.file 52 "/usr/include/locale.h"
 3262              		.file 53 "/usr/include/time.h"
 3263              		.file 54 "/usr/include/x86_64-linux-gnu/c++/7/bits/atomic_word.h"
 3264              		.file 55 "/usr/include/stdlib.h"
 3265              		.file 56 "/usr/include/x86_64-linux-gnu/bits/_G_config.h"
 3266              		.file 57 "/usr/include/stdio.h"
 3267              		.file 58 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
 3268              		.file 59 "/usr/include/errno.h"
 3269              		.file 60 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
 3270              		.file 61 "/usr/include/wctype.h"
 21776              		.align 8
 21779              	DW.ref.__gxx_personality_v0:
 21780 0000 00000000 		.quad	__gxx_personality_v0
 21780      00000000 
 21781              		.hidden	__dso_handle
 21782              		.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
 21783              		.section	.note.GNU-stack,"",@progbits
