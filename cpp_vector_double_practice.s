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
  13              		.text
  14              		.align 2
  15              		.globl	_ZN9RowVectorD2Ev
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
  30:cpp_vector_double_practice.cpp ****         ~ RowVector();
  31:cpp_vector_double_practice.cpp **** 
  32:cpp_vector_double_practice.cpp ****         // Default arguments
  33:cpp_vector_double_practice.cpp ****         // If the function could not find the argument in the call, it uses the default value.
  34:cpp_vector_double_practice.cpp ****         RowVector(const uint32_t n, const double *values=NULL, std::string new_name="None");
  35:cpp_vector_double_practice.cpp **** 
  36:cpp_vector_double_practice.cpp ****         // Instead of implementing another constructor, reusing an existing one
  37:cpp_vector_double_practice.cpp ****         // c++ 11 or later
  38:cpp_vector_double_practice.cpp ****         RowVector(const uint32_t n, std::string new_name="None");
  39:cpp_vector_double_practice.cpp **** 
  40:cpp_vector_double_practice.cpp ****         RowVector(const RowVector & other);
  41:cpp_vector_double_practice.cpp **** 
  42:cpp_vector_double_practice.cpp ****         double & operator [] (const uint32_t i);
  43:cpp_vector_double_practice.cpp **** 
  44:cpp_vector_double_practice.cpp ****         const std::string get_name();
  45:cpp_vector_double_practice.cpp **** 
  46:cpp_vector_double_practice.cpp ****         RowVector operator + (const RowVector & other);
  47:cpp_vector_double_practice.cpp **** 
  48:cpp_vector_double_practice.cpp ****         RowVector operator * (const double a);
  49:cpp_vector_double_practice.cpp **** 
  50:cpp_vector_double_practice.cpp ****         const double operator * (const RowVector & other);
  51:cpp_vector_double_practice.cpp **** 
  52:cpp_vector_double_practice.cpp ****         void show();
  53:cpp_vector_double_practice.cpp **** };
  54:cpp_vector_double_practice.cpp **** 
  55:cpp_vector_double_practice.cpp **** 
  56:cpp_vector_double_practice.cpp **** RowVector::~ RowVector(){
  20              		.loc 1 56 0
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
  57:cpp_vector_double_practice.cpp **** #ifdef LOG
  58:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "~ RowVector()" << '\n';
  32              		.loc 1 58 0
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
  56:cpp_vector_double_practice.cpp **** #ifdef LOG
  50              		.loc 1 56 0
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
  59:cpp_vector_double_practice.cpp **** #endif
  60:cpp_vector_double_practice.cpp **** }
  59              		.loc 1 60 0
  60 0074 90       		nop
  61 0075 C9       		leave
  62              		.cfi_def_cfa 7, 8
  63 0076 C3       		ret
  64              		.cfi_endproc
  65              	.LFE1842:
  66              		.globl	__gxx_personality_v0
  67              		.section	.gcc_except_table,"a",@progbits
  68              	.LLSDA1842:
  69 0000 FF       		.byte	0xff
  70 0001 FF       		.byte	0xff
  71 0002 01       		.byte	0x1
  72 0003 00       		.uleb128 .LLSDACSE1842-.LLSDACSB1842
  73              	.LLSDACSB1842:
  74              	.LLSDACSE1842:
  75              		.text
  77              		.globl	_ZN9RowVectorD1Ev
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
  86              		.text
  87 0077 90       		.align 2
  88              		.globl	_ZN9RowVectorC2EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
  90              	_ZN9RowVectorC2EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
  91              	.LFB1845:
  61:cpp_vector_double_practice.cpp **** 
  62:cpp_vector_double_practice.cpp **** 
  63:cpp_vector_double_practice.cpp **** RowVector::RowVector(const uint32_t n, const double *values, std::string new_name){
  92              		.loc 1 63 0
  93              		.cfi_startproc
  94              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
  95              		.cfi_lsda 0x1b,.LLSDA1845
  96 0078 55       		pushq	%rbp
  97              		.cfi_def_cfa_offset 16
  98              		.cfi_offset 6, -16
  99 0079 4889E5   		movq	%rsp, %rbp
 100              		.cfi_def_cfa_register 6
 101 007c 53       		pushq	%rbx
 102 007d 4883EC38 		subq	$56, %rsp
 103              		.cfi_offset 3, -24
 104 0081 48897DD8 		movq	%rdi, -40(%rbp)
 105 0085 8975D4   		movl	%esi, -44(%rbp)
 106 0088 488955C8 		movq	%rdx, -56(%rbp)
 107 008c 48894DC0 		movq	%rcx, -64(%rbp)
 108              	.LBB3:
 109              		.loc 1 63 0
 110 0090 488B45D8 		movq	-40(%rbp), %rax
 111 0094 4889C7   		movq	%rax, %rdi
 112 0097 E8000000 		call	_ZNSt6vectorIdSaIdEEC1Ev
 112      00
 113 009c 488B45D8 		movq	-40(%rbp), %rax
 114 00a0 4883C018 		addq	$24, %rax
 115 00a4 4889C7   		movq	%rax, %rdi
 116 00a7 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
 116      00
 117              	.LBB4:
  64:cpp_vector_double_practice.cpp **** #ifdef LOG
  65:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' 
 118              		.loc 1 65 0
 119 00ac BE5B0000 		movl	$91, %esi
 119      00
 120 00b1 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 120      000000
 121              	.LEHB0:
 122 00b8 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 122      00
 123 00bd 4889C2   		movq	%rax, %rdx
 124 00c0 488B45D8 		movq	-40(%rbp), %rax
 125 00c4 4889C6   		movq	%rax, %rsi
 126 00c7 4889D7   		movq	%rdx, %rdi
 127 00ca E8000000 		call	_ZNSolsEPKv@PLT
 127      00
  66:cpp_vector_double_practice.cpp ****     << "RowVector(" << n << ", " << values << ", " << new_name << ")\n";
 128              		.loc 1 66 0 discriminator 1
 129 00cf BE5D0000 		movl	$93, %esi
 129      00
 130 00d4 4889C7   		movq	%rax, %rdi
 131 00d7 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 131      00
 132              		.loc 1 66 0 is_stmt 0 discriminator 2
 133 00dc 488D3500 		leaq	.LC1(%rip), %rsi
 133      000000
 134 00e3 4889C7   		movq	%rax, %rdi
 135 00e6 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 135      00
 136              		.loc 1 66 0 discriminator 1
 137 00eb 4889C2   		movq	%rax, %rdx
 138 00ee 8B45D4   		movl	-44(%rbp), %eax
 139 00f1 89C6     		movl	%eax, %esi
 140 00f3 4889D7   		movq	%rdx, %rdi
 141 00f6 E8000000 		call	_ZNSolsEj@PLT
 141      00
 142              		.loc 1 66 0 discriminator 2
 143 00fb 488D3500 		leaq	.LC2(%rip), %rsi
 143      000000
 144 0102 4889C7   		movq	%rax, %rdi
 145 0105 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 145      00
 146              		.loc 1 66 0 discriminator 3
 147 010a 4889C2   		movq	%rax, %rdx
 148 010d 488B45C8 		movq	-56(%rbp), %rax
 149 0111 4889C6   		movq	%rax, %rsi
 150 0114 4889D7   		movq	%rdx, %rdi
 151 0117 E8000000 		call	_ZNSolsEPKv@PLT
 151      00
 152              		.loc 1 66 0 discriminator 4
 153 011c 488D3500 		leaq	.LC2(%rip), %rsi
 153      000000
 154 0123 4889C7   		movq	%rax, %rdi
 155 0126 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 155      00
 156              		.loc 1 66 0 discriminator 5
 157 012b 4889C2   		movq	%rax, %rdx
 158 012e 488B45C0 		movq	-64(%rbp), %rax
 159 0132 4889C6   		movq	%rax, %rsi
 160 0135 4889D7   		movq	%rdx, %rdi
 161 0138 E8000000 		call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5
 161      00
 162              		.loc 1 66 0 discriminator 6
 163 013d 488D3500 		leaq	.LC3(%rip), %rsi
 163      000000
 164 0144 4889C7   		movq	%rax, %rdi
 165 0147 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 165      00
  67:cpp_vector_double_practice.cpp **** #endif
  68:cpp_vector_double_practice.cpp ****     columns.resize(n);
 166              		.loc 1 68 0 is_stmt 1
 167 014c 488B45D8 		movq	-40(%rbp), %rax
 168 0150 8B55D4   		movl	-44(%rbp), %edx
 169 0153 4889D6   		movq	%rdx, %rsi
 170 0156 4889C7   		movq	%rax, %rdi
 171 0159 E8000000 		call	_ZNSt6vectorIdSaIdEE6resizeEm
 171      00
 172              	.LBB5:
  69:cpp_vector_double_practice.cpp **** 
  70:cpp_vector_double_practice.cpp ****     // If initial values available, copy
  71:cpp_vector_double_practice.cpp ****     if (values){
 173              		.loc 1 71 0
 174 015e 48837DC8 		cmpq	$0, -56(%rbp)
 174      00
 175 0163 7456     		je	.L3
 176              	.LBB6:
 177              	.LBB7:
  72:cpp_vector_double_practice.cpp ****         for (uint32_t i = 0; columns.size() > i; ++i){
 178              		.loc 1 72 0
 179 0165 C745E800 		movl	$0, -24(%rbp)
 179      000000
 180              	.L5:
 181              		.loc 1 72 0 is_stmt 0 discriminator 3
 182 016c 488B45D8 		movq	-40(%rbp), %rax
 183 0170 4889C7   		movq	%rax, %rdi
 184 0173 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 184      00
 185 0178 4889C2   		movq	%rax, %rdx
 186 017b 8B45E8   		movl	-24(%rbp), %eax
 187 017e 4839C2   		cmpq	%rax, %rdx
 188 0181 0F97C0   		seta	%al
 189 0184 84C0     		testb	%al, %al
 190 0186 7476     		je	.L6
  73:cpp_vector_double_practice.cpp ****             columns[i] = values[i];
 191              		.loc 1 73 0 is_stmt 1 discriminator 2
 192 0188 8B45E8   		movl	-24(%rbp), %eax
 193 018b 488D14C5 		leaq	0(,%rax,8), %rdx
 193      00000000 
 194 0193 488B45C8 		movq	-56(%rbp), %rax
 195 0197 488D1C02 		leaq	(%rdx,%rax), %rbx
 196 019b 8B55E8   		movl	-24(%rbp), %edx
 197 019e 488B45D8 		movq	-40(%rbp), %rax
 198 01a2 4889D6   		movq	%rdx, %rsi
 199 01a5 4889C7   		movq	%rax, %rdi
 200 01a8 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 200      00
 201 01ad F20F1003 		movsd	(%rbx), %xmm0
 202 01b1 F20F1100 		movsd	%xmm0, (%rax)
  72:cpp_vector_double_practice.cpp ****         for (uint32_t i = 0; columns.size() > i; ++i){
 203              		.loc 1 72 0 discriminator 2
 204 01b5 8345E801 		addl	$1, -24(%rbp)
 205 01b9 EBB1     		jmp	.L5
 206              	.L3:
 207              	.LBE7:
 208              	.LBE6:
 209              	.LBB8:
 210              	.LBB9:
  74:cpp_vector_double_practice.cpp ****         }
  75:cpp_vector_double_practice.cpp ****     }
  76:cpp_vector_double_practice.cpp ****     // If no initial values, set all values zero
  77:cpp_vector_double_practice.cpp ****     else{
  78:cpp_vector_double_practice.cpp ****         for (uint32_t i = 0; columns.size() > i; ++i){
 211              		.loc 1 78 0
 212 01bb C745EC00 		movl	$0, -20(%rbp)
 212      000000
 213              	.L7:
 214              		.loc 1 78 0 is_stmt 0 discriminator 3
 215 01c2 488B45D8 		movq	-40(%rbp), %rax
 216 01c6 4889C7   		movq	%rax, %rdi
 217 01c9 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 217      00
 218 01ce 4889C2   		movq	%rax, %rdx
 219 01d1 8B45EC   		movl	-20(%rbp), %eax
 220 01d4 4839C2   		cmpq	%rax, %rdx
 221 01d7 0F97C0   		seta	%al
 222 01da 84C0     		testb	%al, %al
 223 01dc 7420     		je	.L6
  79:cpp_vector_double_practice.cpp ****             columns[i] = 0.0;
 224              		.loc 1 79 0 is_stmt 1 discriminator 2
 225 01de 8B55EC   		movl	-20(%rbp), %edx
 226 01e1 488B45D8 		movq	-40(%rbp), %rax
 227 01e5 4889D6   		movq	%rdx, %rsi
 228 01e8 4889C7   		movq	%rax, %rdi
 229 01eb E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 229      00
 230 01f0 660FEFC0 		pxor	%xmm0, %xmm0
 231 01f4 F20F1100 		movsd	%xmm0, (%rax)
  78:cpp_vector_double_practice.cpp ****             columns[i] = 0.0;
 232              		.loc 1 78 0 discriminator 2
 233 01f8 8345EC01 		addl	$1, -20(%rbp)
 234 01fc EBC4     		jmp	.L7
 235              	.L6:
 236              	.LBE9:
 237              	.LBE8:
 238              	.LBE5:
  80:cpp_vector_double_practice.cpp ****         }
  81:cpp_vector_double_practice.cpp ****     }
  82:cpp_vector_double_practice.cpp **** 
  83:cpp_vector_double_practice.cpp ****     name = new_name;
 239              		.loc 1 83 0
 240 01fe 488B45D8 		movq	-40(%rbp), %rax
 241 0202 488D5018 		leaq	24(%rax), %rdx
 242 0206 488B45C0 		movq	-64(%rbp), %rax
 243 020a 4889C6   		movq	%rax, %rsi
 244 020d 4889D7   		movq	%rdx, %rdi
 245 0210 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
 245      00
 246              	.LEHE0:
 247              	.LBE4:
 248              	.LBE3:
  84:cpp_vector_double_practice.cpp **** }
 249              		.loc 1 84 0
 250 0215 EB2A     		jmp	.L10
 251              	.L9:
 252 0217 4889C3   		movq	%rax, %rbx
 253              	.LBB10:
  63:cpp_vector_double_practice.cpp **** #ifdef LOG
 254              		.loc 1 63 0
 255 021a 488B45D8 		movq	-40(%rbp), %rax
 256 021e 4883C018 		addq	$24, %rax
 257 0222 4889C7   		movq	%rax, %rdi
 258 0225 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 258      00
 259 022a 488B45D8 		movq	-40(%rbp), %rax
 260 022e 4889C7   		movq	%rax, %rdi
 261 0231 E8000000 		call	_ZNSt6vectorIdSaIdEED1Ev
 261      00
 262 0236 4889D8   		movq	%rbx, %rax
 263 0239 4889C7   		movq	%rax, %rdi
 264              	.LEHB1:
 265 023c E8000000 		call	_Unwind_Resume@PLT
 265      00
 266              	.LEHE1:
 267              	.L10:
 268              	.LBE10:
 269              		.loc 1 84 0
 270 0241 4883C438 		addq	$56, %rsp
 271 0245 5B       		popq	%rbx
 272 0246 5D       		popq	%rbp
 273              		.cfi_def_cfa 7, 8
 274 0247 C3       		ret
 275              		.cfi_endproc
 276              	.LFE1845:
 277              		.section	.gcc_except_table
 278              	.LLSDA1845:
 279 0004 FF       		.byte	0xff
 280 0005 FF       		.byte	0xff
 281 0006 01       		.byte	0x1
 282 0007 0B       		.uleb128 .LLSDACSE1845-.LLSDACSB1845
 283              	.LLSDACSB1845:
 284 0008 40       		.uleb128 .LEHB0-.LFB1845
 285 0009 DD02     		.uleb128 .LEHE0-.LEHB0
 286 000b 9F03     		.uleb128 .L9-.LFB1845
 287 000d 00       		.uleb128 0
 288 000e C403     		.uleb128 .LEHB1-.LFB1845
 289 0010 05       		.uleb128 .LEHE1-.LEHB1
 290 0011 00       		.uleb128 0
 291 0012 00       		.uleb128 0
 292              	.LLSDACSE1845:
 293              		.text
 295              		.globl	_ZN9RowVectorC1EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 296              		.set	_ZN9RowVectorC1EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,_ZN9RowVectorC2EjPKd
 297              		.align 2
 298              		.globl	_ZN9RowVectorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 300              	_ZN9RowVectorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
 301              	.LFB1848:
  85:cpp_vector_double_practice.cpp **** 
  86:cpp_vector_double_practice.cpp **** 
  87:cpp_vector_double_practice.cpp **** RowVector::RowVector(const uint32_t n, std::string new_name) : RowVector(n, NULL, new_name){
 302              		.loc 1 87 0
 303              		.cfi_startproc
 304              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 305              		.cfi_lsda 0x1b,.LLSDA1848
 306 0248 55       		pushq	%rbp
 307              		.cfi_def_cfa_offset 16
 308              		.cfi_offset 6, -16
 309 0249 4889E5   		movq	%rsp, %rbp
 310              		.cfi_def_cfa_register 6
 311 024c 53       		pushq	%rbx
 312 024d 4883EC58 		subq	$88, %rsp
 313              		.cfi_offset 3, -24
 314 0251 48897DB8 		movq	%rdi, -72(%rbp)
 315 0255 8975B4   		movl	%esi, -76(%rbp)
 316 0258 488955A8 		movq	%rdx, -88(%rbp)
 317              		.loc 1 87 0
 318 025c 64488B04 		movq	%fs:40, %rax
 318      25280000 
 318      00
 319 0265 488945E8 		movq	%rax, -24(%rbp)
 320 0269 31C0     		xorl	%eax, %eax
 321              	.LBB11:
 322 026b 488B55A8 		movq	-88(%rbp), %rdx
 323 026f 488D45C0 		leaq	-64(%rbp), %rax
 324 0273 4889D6   		movq	%rdx, %rsi
 325 0276 4889C7   		movq	%rax, %rdi
 326              	.LEHB2:
 327 0279 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
 327      00
 328              	.LEHE2:
 329 027e 488D55C0 		leaq	-64(%rbp), %rdx
 330 0282 8B75B4   		movl	-76(%rbp), %esi
 331 0285 488B45B8 		movq	-72(%rbp), %rax
 332 0289 4889D1   		movq	%rdx, %rcx
 333 028c BA000000 		movl	$0, %edx
 333      00
 334 0291 4889C7   		movq	%rax, %rdi
 335              	.LEHB3:
 336 0294 E8000000 		call	_ZN9RowVectorC1EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 336      00
 337              	.LEHE3:
 338              		.loc 1 87 0 is_stmt 0 discriminator 2
 339 0299 488D45C0 		leaq	-64(%rbp), %rax
 340 029d 4889C7   		movq	%rax, %rdi
 341 02a0 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 341      00
  88:cpp_vector_double_practice.cpp **** #ifdef LOG
  89:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "RowVector(" << n << ", " << new_name << ")\n";
 342              		.loc 1 89 0 is_stmt 1 discriminator 2
 343 02a5 BE5B0000 		movl	$91, %esi
 343      00
 344 02aa 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 344      000000
 345              	.LEHB4:
 346 02b1 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 346      00
 347 02b6 4889C2   		movq	%rax, %rdx
 348 02b9 488B45B8 		movq	-72(%rbp), %rax
 349 02bd 4889C6   		movq	%rax, %rsi
 350 02c0 4889D7   		movq	%rdx, %rdi
 351 02c3 E8000000 		call	_ZNSolsEPKv@PLT
 351      00
 352              		.loc 1 89 0 is_stmt 0 discriminator 1
 353 02c8 BE5D0000 		movl	$93, %esi
 353      00
 354 02cd 4889C7   		movq	%rax, %rdi
 355 02d0 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 355      00
 356              		.loc 1 89 0 discriminator 2
 357 02d5 488D3500 		leaq	.LC1(%rip), %rsi
 357      000000
 358 02dc 4889C7   		movq	%rax, %rdi
 359 02df E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 359      00
 360              		.loc 1 89 0 discriminator 3
 361 02e4 4889C2   		movq	%rax, %rdx
 362 02e7 8B45B4   		movl	-76(%rbp), %eax
 363 02ea 89C6     		movl	%eax, %esi
 364 02ec 4889D7   		movq	%rdx, %rdi
 365 02ef E8000000 		call	_ZNSolsEj@PLT
 365      00
 366              		.loc 1 89 0 discriminator 4
 367 02f4 488D3500 		leaq	.LC2(%rip), %rsi
 367      000000
 368 02fb 4889C7   		movq	%rax, %rdi
 369 02fe E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 369      00
 370              		.loc 1 89 0 discriminator 5
 371 0303 4889C2   		movq	%rax, %rdx
 372 0306 488B45A8 		movq	-88(%rbp), %rax
 373 030a 4889C6   		movq	%rax, %rsi
 374 030d 4889D7   		movq	%rdx, %rdi
 375 0310 E8000000 		call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5
 375      00
 376              		.loc 1 89 0 discriminator 6
 377 0315 488D3500 		leaq	.LC3(%rip), %rsi
 377      000000
 378 031c 4889C7   		movq	%rax, %rdi
 379 031f E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 379      00
 380              	.LEHE4:
 381              	.LBE11:
  90:cpp_vector_double_practice.cpp **** #endif
  91:cpp_vector_double_practice.cpp **** }
 382              		.loc 1 91 0 is_stmt 1
 383 0324 EB34     		jmp	.L17
 384              	.L15:
 385 0326 4889C3   		movq	%rax, %rbx
 386              	.LBB12:
  87:cpp_vector_double_practice.cpp **** #ifdef LOG
 387              		.loc 1 87 0
 388 0329 488D45C0 		leaq	-64(%rbp), %rax
 389 032d 4889C7   		movq	%rax, %rdi
 390 0330 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 390      00
 391 0335 4889D8   		movq	%rbx, %rax
 392 0338 4889C7   		movq	%rax, %rdi
 393              	.LEHB5:
 394 033b E8000000 		call	_Unwind_Resume@PLT
 394      00
 395              	.L16:
 396 0340 4889C3   		movq	%rax, %rbx
 397 0343 488B45B8 		movq	-72(%rbp), %rax
 398 0347 4889C7   		movq	%rax, %rdi
 399 034a E8000000 		call	_ZN9RowVectorD1Ev
 399      00
 400 034f 4889D8   		movq	%rbx, %rax
 401 0352 4889C7   		movq	%rax, %rdi
 402 0355 E8000000 		call	_Unwind_Resume@PLT
 402      00
 403              	.LEHE5:
 404              	.L17:
 405              	.LBE12:
 406              		.loc 1 91 0
 407 035a 488B45E8 		movq	-24(%rbp), %rax
 408 035e 64483304 		xorq	%fs:40, %rax
 408      25280000 
 408      00
 409 0367 7405     		je	.L14
 410 0369 E8000000 		call	__stack_chk_fail@PLT
 410      00
 411              	.L14:
 412 036e 4883C458 		addq	$88, %rsp
 413 0372 5B       		popq	%rbx
 414 0373 5D       		popq	%rbp
 415              		.cfi_def_cfa 7, 8
 416 0374 C3       		ret
 417              		.cfi_endproc
 418              	.LFE1848:
 419              		.section	.gcc_except_table
 420              	.LLSDA1848:
 421 0013 FF       		.byte	0xff
 422 0014 FF       		.byte	0xff
 423 0015 01       		.byte	0x1
 424 0016 13       		.uleb128 .LLSDACSE1848-.LLSDACSB1848
 425              	.LLSDACSB1848:
 426 0017 31       		.uleb128 .LEHB2-.LFB1848
 427 0018 05       		.uleb128 .LEHE2-.LEHB2
 428 0019 00       		.uleb128 0
 429 001a 00       		.uleb128 0
 430 001b 4C       		.uleb128 .LEHB3-.LFB1848
 431 001c 05       		.uleb128 .LEHE3-.LEHB3
 432 001d DE01     		.uleb128 .L15-.LFB1848
 433 001f 00       		.uleb128 0
 434 0020 69       		.uleb128 .LEHB4-.LFB1848
 435 0021 73       		.uleb128 .LEHE4-.LEHB4
 436 0022 F801     		.uleb128 .L16-.LFB1848
 437 0024 00       		.uleb128 0
 438 0025 F301     		.uleb128 .LEHB5-.LFB1848
 439 0027 1F       		.uleb128 .LEHE5-.LEHB5
 440 0028 00       		.uleb128 0
 441 0029 00       		.uleb128 0
 442              	.LLSDACSE1848:
 443              		.text
 445              		.globl	_ZN9RowVectorC1EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 446              		.set	_ZN9RowVectorC1EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,_ZN9RowVectorC2EjNSt7__
 447              		.section	.rodata
 448              	.LC5:
 449 0020 3200     		.string	"2"
 450              		.text
 451 0375 90       		.align 2
 452              		.globl	_ZN9RowVectorC2ERKS_
 454              	_ZN9RowVectorC2ERKS_:
 455              	.LFB1851:
  92:cpp_vector_double_practice.cpp **** 
  93:cpp_vector_double_practice.cpp **** 
  94:cpp_vector_double_practice.cpp **** RowVector::RowVector(const RowVector & other){
 456              		.loc 1 94 0
 457              		.cfi_startproc
 458              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 459              		.cfi_lsda 0x1b,.LLSDA1851
 460 0376 55       		pushq	%rbp
 461              		.cfi_def_cfa_offset 16
 462              		.cfi_offset 6, -16
 463 0377 4889E5   		movq	%rsp, %rbp
 464              		.cfi_def_cfa_register 6
 465 037a 53       		pushq	%rbx
 466 037b 4883EC28 		subq	$40, %rsp
 467              		.cfi_offset 3, -24
 468 037f 48897DD8 		movq	%rdi, -40(%rbp)
 469 0383 488975D0 		movq	%rsi, -48(%rbp)
 470              	.LBB13:
 471              		.loc 1 94 0
 472 0387 488B45D8 		movq	-40(%rbp), %rax
 473 038b 4889C7   		movq	%rax, %rdi
 474 038e E8000000 		call	_ZNSt6vectorIdSaIdEEC1Ev
 474      00
 475 0393 488B45D8 		movq	-40(%rbp), %rax
 476 0397 4883C018 		addq	$24, %rax
 477 039b 4889C7   		movq	%rax, %rdi
 478 039e E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
 478      00
 479              	.LBB14:
  95:cpp_vector_double_practice.cpp **** #ifdef LOG
  96:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "RowVector(" << & other << ")\n";
 480              		.loc 1 96 0
 481 03a3 BE5B0000 		movl	$91, %esi
 481      00
 482 03a8 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 482      000000
 483              	.LEHB6:
 484 03af E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 484      00
 485 03b4 4889C2   		movq	%rax, %rdx
 486 03b7 488B45D8 		movq	-40(%rbp), %rax
 487 03bb 4889C6   		movq	%rax, %rsi
 488 03be 4889D7   		movq	%rdx, %rdi
 489 03c1 E8000000 		call	_ZNSolsEPKv@PLT
 489      00
 490              		.loc 1 96 0 is_stmt 0 discriminator 1
 491 03c6 BE5D0000 		movl	$93, %esi
 491      00
 492 03cb 4889C7   		movq	%rax, %rdi
 493 03ce E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 493      00
 494              		.loc 1 96 0 discriminator 2
 495 03d3 488D3500 		leaq	.LC1(%rip), %rsi
 495      000000
 496 03da 4889C7   		movq	%rax, %rdi
 497 03dd E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 497      00
 498              		.loc 1 96 0 discriminator 3
 499 03e2 4889C2   		movq	%rax, %rdx
 500 03e5 488B45D0 		movq	-48(%rbp), %rax
 501 03e9 4889C6   		movq	%rax, %rsi
 502 03ec 4889D7   		movq	%rdx, %rdi
 503 03ef E8000000 		call	_ZNSolsEPKv@PLT
 503      00
 504              		.loc 1 96 0 discriminator 4
 505 03f4 488D3500 		leaq	.LC3(%rip), %rsi
 505      000000
 506 03fb 4889C7   		movq	%rax, %rdi
 507 03fe E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 507      00
  97:cpp_vector_double_practice.cpp **** #endif
  98:cpp_vector_double_practice.cpp ****     // https://codereview.stackexchange.com/questions/149669/c-operator-overloading-for-matrix-oper
  99:cpp_vector_double_practice.cpp ****     // http://www.cplusplus.com/reference/vector/vector/resize/
 100:cpp_vector_double_practice.cpp ****     columns.resize(other.columns.size());
 508              		.loc 1 100 0 is_stmt 1
 509 0403 488B5DD8 		movq	-40(%rbp), %rbx
 510 0407 488B45D0 		movq	-48(%rbp), %rax
 511 040b 4889C7   		movq	%rax, %rdi
 512 040e E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 512      00
 513 0413 4889C6   		movq	%rax, %rsi
 514 0416 4889DF   		movq	%rbx, %rdi
 515 0419 E8000000 		call	_ZNSt6vectorIdSaIdEE6resizeEm
 515      00
 516              	.LBB15:
 101:cpp_vector_double_practice.cpp ****     for(uint32_t i=0; columns.size() > i; ++i){
 517              		.loc 1 101 0
 518 041e C745EC00 		movl	$0, -20(%rbp)
 518      000000
 519              	.L20:
 520              		.loc 1 101 0 is_stmt 0 discriminator 3
 521 0425 488B45D8 		movq	-40(%rbp), %rax
 522 0429 4889C7   		movq	%rax, %rdi
 523 042c E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 523      00
 524 0431 4889C2   		movq	%rax, %rdx
 525 0434 8B45EC   		movl	-20(%rbp), %eax
 526 0437 4839C2   		cmpq	%rax, %rdx
 527 043a 0F97C0   		seta	%al
 528 043d 84C0     		testb	%al, %al
 529 043f 7435     		je	.L19
 102:cpp_vector_double_practice.cpp ****         columns[i] = other.columns[i];
 530              		.loc 1 102 0 is_stmt 1 discriminator 2
 531 0441 8B55EC   		movl	-20(%rbp), %edx
 532 0444 488B45D0 		movq	-48(%rbp), %rax
 533 0448 4889D6   		movq	%rdx, %rsi
 534 044b 4889C7   		movq	%rax, %rdi
 535 044e E8000000 		call	_ZNKSt6vectorIdSaIdEEixEm
 535      00
 536 0453 4889C3   		movq	%rax, %rbx
 537 0456 8B55EC   		movl	-20(%rbp), %edx
 538 0459 488B45D8 		movq	-40(%rbp), %rax
 539 045d 4889D6   		movq	%rdx, %rsi
 540 0460 4889C7   		movq	%rax, %rdi
 541 0463 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 541      00
 542 0468 F20F1003 		movsd	(%rbx), %xmm0
 543 046c F20F1100 		movsd	%xmm0, (%rax)
 101:cpp_vector_double_practice.cpp ****     for(uint32_t i=0; columns.size() > i; ++i){
 544              		.loc 1 101 0 discriminator 2
 545 0470 8345EC01 		addl	$1, -20(%rbp)
 546 0474 EBAF     		jmp	.L20
 547              	.L19:
 548              	.LBE15:
 103:cpp_vector_double_practice.cpp ****     }
 104:cpp_vector_double_practice.cpp **** 
 105:cpp_vector_double_practice.cpp ****     // Copy name of the other one
 106:cpp_vector_double_practice.cpp ****     name = other.name;
 549              		.loc 1 106 0
 550 0476 488B45D0 		movq	-48(%rbp), %rax
 551 047a 488D5018 		leaq	24(%rax), %rdx
 552 047e 488B45D8 		movq	-40(%rbp), %rax
 553 0482 4883C018 		addq	$24, %rax
 554 0486 4889D6   		movq	%rdx, %rsi
 555 0489 4889C7   		movq	%rax, %rdi
 556 048c E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_@PLT
 556      00
 107:cpp_vector_double_practice.cpp ****     // Then append
 108:cpp_vector_double_practice.cpp ****     name.append("2");
 557              		.loc 1 108 0
 558 0491 488B45D8 		movq	-40(%rbp), %rax
 559 0495 4883C018 		addq	$24, %rax
 560 0499 488D3500 		leaq	.LC5(%rip), %rsi
 560      000000
 561 04a0 4889C7   		movq	%rax, %rdi
 562 04a3 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@PLT
 562      00
 563              	.LEHE6:
 564              	.LBE14:
 565              	.LBE13:
 109:cpp_vector_double_practice.cpp **** }
 566              		.loc 1 109 0
 567 04a8 EB2A     		jmp	.L23
 568              	.L22:
 569 04aa 4889C3   		movq	%rax, %rbx
 570              	.LBB16:
  94:cpp_vector_double_practice.cpp **** #ifdef LOG
 571              		.loc 1 94 0
 572 04ad 488B45D8 		movq	-40(%rbp), %rax
 573 04b1 4883C018 		addq	$24, %rax
 574 04b5 4889C7   		movq	%rax, %rdi
 575 04b8 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 575      00
 576 04bd 488B45D8 		movq	-40(%rbp), %rax
 577 04c1 4889C7   		movq	%rax, %rdi
 578 04c4 E8000000 		call	_ZNSt6vectorIdSaIdEED1Ev
 578      00
 579 04c9 4889D8   		movq	%rbx, %rax
 580 04cc 4889C7   		movq	%rax, %rdi
 581              	.LEHB7:
 582 04cf E8000000 		call	_Unwind_Resume@PLT
 582      00
 583              	.LEHE7:
 584              	.L23:
 585              	.LBE16:
 586              		.loc 1 109 0
 587 04d4 4883C428 		addq	$40, %rsp
 588 04d8 5B       		popq	%rbx
 589 04d9 5D       		popq	%rbp
 590              		.cfi_def_cfa 7, 8
 591 04da C3       		ret
 592              		.cfi_endproc
 593              	.LFE1851:
 594              		.section	.gcc_except_table
 595              	.LLSDA1851:
 596 002a FF       		.byte	0xff
 597 002b FF       		.byte	0xff
 598 002c 01       		.byte	0x1
 599 002d 0B       		.uleb128 .LLSDACSE1851-.LLSDACSB1851
 600              	.LLSDACSB1851:
 601 002e 39       		.uleb128 .LEHB6-.LFB1851
 602 002f F901     		.uleb128 .LEHE6-.LEHB6
 603 0031 B402     		.uleb128 .L22-.LFB1851
 604 0033 00       		.uleb128 0
 605 0034 D902     		.uleb128 .LEHB7-.LFB1851
 606 0036 05       		.uleb128 .LEHE7-.LEHB7
 607 0037 00       		.uleb128 0
 608 0038 00       		.uleb128 0
 609              	.LLSDACSE1851:
 610              		.text
 612              		.globl	_ZN9RowVectorC1ERKS_
 613              		.set	_ZN9RowVectorC1ERKS_,_ZN9RowVectorC2ERKS_
 614              		.section	.rodata
 615              	.LC6:
 616 0022 646F7562 		.string	"double & operator [] ("
 616      6C652026 
 616      206F7065 
 616      7261746F 
 616      72205B5D 
 617              		.text
 618 04db 90       		.align 2
 619              		.globl	_ZN9RowVectorixEj
 621              	_ZN9RowVectorixEj:
 622              	.LFB1853:
 110:cpp_vector_double_practice.cpp **** 
 111:cpp_vector_double_practice.cpp **** 
 112:cpp_vector_double_practice.cpp **** double & RowVector::operator [] (const uint32_t i){
 623              		.loc 1 112 0
 624              		.cfi_startproc
 625 04dc 55       		pushq	%rbp
 626              		.cfi_def_cfa_offset 16
 627              		.cfi_offset 6, -16
 628 04dd 4889E5   		movq	%rsp, %rbp
 629              		.cfi_def_cfa_register 6
 630 04e0 4883EC10 		subq	$16, %rsp
 631 04e4 48897DF8 		movq	%rdi, -8(%rbp)
 632 04e8 8975F4   		movl	%esi, -12(%rbp)
 113:cpp_vector_double_practice.cpp **** #ifdef LOG
 114:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "double & operator [] (" << i << ")\n";
 633              		.loc 1 114 0
 634 04eb BE5B0000 		movl	$91, %esi
 634      00
 635 04f0 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 635      000000
 636 04f7 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 636      00
 637 04fc 4889C2   		movq	%rax, %rdx
 638 04ff 488B45F8 		movq	-8(%rbp), %rax
 639 0503 4889C6   		movq	%rax, %rsi
 640 0506 4889D7   		movq	%rdx, %rdi
 641 0509 E8000000 		call	_ZNSolsEPKv@PLT
 641      00
 642 050e BE5D0000 		movl	$93, %esi
 642      00
 643 0513 4889C7   		movq	%rax, %rdi
 644 0516 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 644      00
 645 051b 488D3500 		leaq	.LC6(%rip), %rsi
 645      000000
 646 0522 4889C7   		movq	%rax, %rdi
 647 0525 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 647      00
 648 052a 4889C2   		movq	%rax, %rdx
 649 052d 8B45F4   		movl	-12(%rbp), %eax
 650 0530 89C6     		movl	%eax, %esi
 651 0532 4889D7   		movq	%rdx, %rdi
 652 0535 E8000000 		call	_ZNSolsEj@PLT
 652      00
 653 053a 488D3500 		leaq	.LC3(%rip), %rsi
 653      000000
 654 0541 4889C7   		movq	%rax, %rdi
 655 0544 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 655      00
 115:cpp_vector_double_practice.cpp **** #endif
 116:cpp_vector_double_practice.cpp ****     // Return reference; otherwise, unable to assign
 117:cpp_vector_double_practice.cpp ****     return columns[i];
 656              		.loc 1 117 0
 657 0549 8B55F4   		movl	-12(%rbp), %edx
 658 054c 488B45F8 		movq	-8(%rbp), %rax
 659 0550 4889D6   		movq	%rdx, %rsi
 660 0553 4889C7   		movq	%rax, %rdi
 661 0556 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 661      00
 118:cpp_vector_double_practice.cpp **** }
 662              		.loc 1 118 0
 663 055b C9       		leave
 664              		.cfi_def_cfa 7, 8
 665 055c C3       		ret
 666              		.cfi_endproc
 667              	.LFE1853:
 669              		.section	.rodata
 670              	.LC7:
 671 0039 766F6964 		.string	"void show()\n"
 671      2073686F 
 671      7728290A 
 671      00
 672              		.text
 673 055d 90       		.align 2
 674              		.globl	_ZN9RowVector8get_nameB5cxx11Ev
 676              	_ZN9RowVector8get_nameB5cxx11Ev:
 677              	.LFB1854:
 119:cpp_vector_double_practice.cpp **** 
 120:cpp_vector_double_practice.cpp **** 
 121:cpp_vector_double_practice.cpp **** const std::string RowVector::get_name(){
 678              		.loc 1 121 0
 679              		.cfi_startproc
 680 055e 55       		pushq	%rbp
 681              		.cfi_def_cfa_offset 16
 682              		.cfi_offset 6, -16
 683 055f 4889E5   		movq	%rsp, %rbp
 684              		.cfi_def_cfa_register 6
 685 0562 4883EC10 		subq	$16, %rsp
 686 0566 48897DF8 		movq	%rdi, -8(%rbp)
 687 056a 488975F0 		movq	%rsi, -16(%rbp)
 122:cpp_vector_double_practice.cpp **** #ifdef LOG
 123:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "void show()\n";
 688              		.loc 1 123 0
 689 056e BE5B0000 		movl	$91, %esi
 689      00
 690 0573 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 690      000000
 691 057a E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 691      00
 692 057f 4889C2   		movq	%rax, %rdx
 693 0582 488B45F0 		movq	-16(%rbp), %rax
 694 0586 4889C6   		movq	%rax, %rsi
 695 0589 4889D7   		movq	%rdx, %rdi
 696 058c E8000000 		call	_ZNSolsEPKv@PLT
 696      00
 697 0591 BE5D0000 		movl	$93, %esi
 697      00
 698 0596 4889C7   		movq	%rax, %rdi
 699 0599 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 699      00
 700 059e 488D3500 		leaq	.LC7(%rip), %rsi
 700      000000
 701 05a5 4889C7   		movq	%rax, %rdi
 702 05a8 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 702      00
 124:cpp_vector_double_practice.cpp **** #endif
 125:cpp_vector_double_practice.cpp ****     // Return constant; to prevent change
 126:cpp_vector_double_practice.cpp ****     return name;
 703              		.loc 1 126 0
 704 05ad 488B45F0 		movq	-16(%rbp), %rax
 705 05b1 488D5018 		leaq	24(%rax), %rdx
 706 05b5 488B45F8 		movq	-8(%rbp), %rax
 707 05b9 4889D6   		movq	%rdx, %rsi
 708 05bc 4889C7   		movq	%rax, %rdi
 709 05bf E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
 709      00
 127:cpp_vector_double_practice.cpp **** }
 710              		.loc 1 127 0
 711 05c4 488B45F8 		movq	-8(%rbp), %rax
 712 05c8 C9       		leave
 713              		.cfi_def_cfa 7, 8
 714 05c9 C3       		ret
 715              		.cfi_endproc
 716              	.LFE1854:
 718              		.section	.rodata
 719              	.LC8:
 720 0046 526F7756 		.string	"RowVector operator + ("
 720      6563746F 
 720      72206F70 
 720      65726174 
 720      6F72202B 
 721 005d 000000   		.align 8
 722              	.LC9:
 723 0060 6370705F 		.string	"cpp_vector_double_practice.cpp"
 723      76656374 
 723      6F725F64 
 723      6F75626C 
 723      655F7072 
 724 007f 00       		.align 8
 725              	.LC10:
 726 0080 636F6C75 		.string	"columns.size() == other.columns.size()"
 726      6D6E732E 
 726      73697A65 
 726      2829203D 
 726      3D206F74 
 727              		.text
 728              		.align 2
 729              		.globl	_ZN9RowVectorplERKS_
 731              	_ZN9RowVectorplERKS_:
 732              	.LFB1855:
 128:cpp_vector_double_practice.cpp **** 
 129:cpp_vector_double_practice.cpp **** 
 130:cpp_vector_double_practice.cpp **** RowVector RowVector::operator + (const RowVector & other){
 733              		.loc 1 130 0
 734              		.cfi_startproc
 735              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 736              		.cfi_lsda 0x1b,.LLSDA1855
 737 05ca 55       		pushq	%rbp
 738              		.cfi_def_cfa_offset 16
 739              		.cfi_offset 6, -16
 740 05cb 4889E5   		movq	%rsp, %rbp
 741              		.cfi_def_cfa_register 6
 742 05ce 53       		pushq	%rbx
 743 05cf 4883EC38 		subq	$56, %rsp
 744              		.cfi_offset 3, -24
 745 05d3 48897DD8 		movq	%rdi, -40(%rbp)
 746 05d7 488975D0 		movq	%rsi, -48(%rbp)
 747 05db 488955C8 		movq	%rdx, -56(%rbp)
 748              		.loc 1 130 0
 749 05df 64488B04 		movq	%fs:40, %rax
 749      25280000 
 749      00
 750 05e8 488945E8 		movq	%rax, -24(%rbp)
 751 05ec 31C0     		xorl	%eax, %eax
 131:cpp_vector_double_practice.cpp **** #ifdef LOG
 132:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "RowVector operator + (" << & other << ")\n";
 752              		.loc 1 132 0
 753 05ee BE5B0000 		movl	$91, %esi
 753      00
 754 05f3 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 754      000000
 755              	.LEHB8:
 756 05fa E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 756      00
 757 05ff 4889C2   		movq	%rax, %rdx
 758 0602 488B45D0 		movq	-48(%rbp), %rax
 759 0606 4889C6   		movq	%rax, %rsi
 760 0609 4889D7   		movq	%rdx, %rdi
 761 060c E8000000 		call	_ZNSolsEPKv@PLT
 761      00
 762 0611 BE5D0000 		movl	$93, %esi
 762      00
 763 0616 4889C7   		movq	%rax, %rdi
 764 0619 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 764      00
 765 061e 488D3500 		leaq	.LC8(%rip), %rsi
 765      000000
 766 0625 4889C7   		movq	%rax, %rdi
 767 0628 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 767      00
 768 062d 4889C2   		movq	%rax, %rdx
 769 0630 488B45C8 		movq	-56(%rbp), %rax
 770 0634 4889C6   		movq	%rax, %rsi
 771 0637 4889D7   		movq	%rdx, %rdi
 772 063a E8000000 		call	_ZNSolsEPKv@PLT
 772      00
 773 063f 488D3500 		leaq	.LC3(%rip), %rsi
 773      000000
 774 0646 4889C7   		movq	%rax, %rdi
 775 0649 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 775      00
 133:cpp_vector_double_practice.cpp **** #endif
 134:cpp_vector_double_practice.cpp ****     // Check size
 135:cpp_vector_double_practice.cpp ****     assert(columns.size() == other.columns.size());
 776              		.loc 1 135 0
 777 064e 488B45D0 		movq	-48(%rbp), %rax
 778 0652 4889C7   		movq	%rax, %rdi
 779 0655 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 779      00
 780 065a 4889C3   		movq	%rax, %rbx
 781 065d 488B45C8 		movq	-56(%rbp), %rax
 782 0661 4889C7   		movq	%rax, %rdi
 783 0664 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 783      00
 784 0669 4839C3   		cmpq	%rax, %rbx
 785 066c 741F     		je	.L29
 786              		.loc 1 135 0 is_stmt 0 discriminator 1
 787 066e 488D0D00 		leaq	_ZZN9RowVectorplERKS_E19__PRETTY_FUNCTION__(%rip), %rcx
 787      000000
 788 0675 BA870000 		movl	$135, %edx
 788      00
 789 067a 488D3500 		leaq	.LC9(%rip), %rsi
 789      000000
 790 0681 488D3D00 		leaq	.LC10(%rip), %rdi
 790      000000
 791 0688 E8000000 		call	__assert_fail@PLT
 791      00
 792              	.L29:
 136:cpp_vector_double_practice.cpp **** 
 137:cpp_vector_double_practice.cpp ****     // Make a new vector to return
 138:cpp_vector_double_practice.cpp ****     RowVector temp(other);
 793              		.loc 1 138 0 is_stmt 1
 794 068d 488B55C8 		movq	-56(%rbp), %rdx
 795 0691 488B45D8 		movq	-40(%rbp), %rax
 796 0695 4889D6   		movq	%rdx, %rsi
 797 0698 4889C7   		movq	%rax, %rdi
 798 069b E8000000 		call	_ZN9RowVectorC1ERKS_
 798      00
 799              	.LEHE8:
 800              	.LBB17:
 139:cpp_vector_double_practice.cpp **** 
 140:cpp_vector_double_practice.cpp ****     // Element loop
 141:cpp_vector_double_practice.cpp ****     for (uint32_t i=0; columns.size() > i; ++i){
 801              		.loc 1 141 0
 802 06a0 C745E400 		movl	$0, -28(%rbp)
 802      000000
 803              	.L31:
 804              		.loc 1 141 0 is_stmt 0 discriminator 2
 805 06a7 488B45D0 		movq	-48(%rbp), %rax
 806 06ab 4889C7   		movq	%rax, %rdi
 807 06ae E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 807      00
 808 06b3 4889C2   		movq	%rax, %rdx
 809 06b6 8B45E4   		movl	-28(%rbp), %eax
 810 06b9 4839C2   		cmpq	%rax, %rdx
 811 06bc 0F97C0   		seta	%al
 812 06bf 84C0     		testb	%al, %al
 813 06c1 7459     		je	.L36
 142:cpp_vector_double_practice.cpp ****         temp[i] += columns[i];
 814              		.loc 1 142 0 is_stmt 1
 815 06c3 8B55E4   		movl	-28(%rbp), %edx
 816 06c6 488B45D0 		movq	-48(%rbp), %rax
 817 06ca 4889D6   		movq	%rdx, %rsi
 818 06cd 4889C7   		movq	%rax, %rdi
 819 06d0 E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 819      00
 820 06d5 F20F1008 		movsd	(%rax), %xmm1
 821 06d9 F20F114D 		movsd	%xmm1, -64(%rbp)
 821      C0
 822 06de 8B55E4   		movl	-28(%rbp), %edx
 823 06e1 488B45D8 		movq	-40(%rbp), %rax
 824 06e5 89D6     		movl	%edx, %esi
 825 06e7 4889C7   		movq	%rax, %rdi
 826              	.LEHB9:
 827 06ea E8000000 		call	_ZN9RowVectorixEj
 827      00
 828              	.LEHE9:
 829              		.loc 1 142 0 is_stmt 0 discriminator 1
 830 06ef F20F1000 		movsd	(%rax), %xmm0
 831 06f3 F20F5845 		addsd	-64(%rbp), %xmm0
 831      C0
 832 06f8 F20F1100 		movsd	%xmm0, (%rax)
 141:cpp_vector_double_practice.cpp ****         temp[i] += columns[i];
 833              		.loc 1 141 0 is_stmt 1 discriminator 1
 834 06fc 8345E401 		addl	$1, -28(%rbp)
 835 0700 EBA5     		jmp	.L31
 836              	.L35:
 837 0702 4889C3   		movq	%rax, %rbx
 838              	.LBE17:
 839 0705 488B45D8 		movq	-40(%rbp), %rax
 840 0709 4889C7   		movq	%rax, %rdi
 841 070c E8000000 		call	_ZN9RowVectorD1Ev
 841      00
 842 0711 4889D8   		movq	%rbx, %rax
 843 0714 4889C7   		movq	%rax, %rdi
 844              	.LEHB10:
 845 0717 E8000000 		call	_Unwind_Resume@PLT
 845      00
 846              	.LEHE10:
 847              	.L36:
 143:cpp_vector_double_practice.cpp ****     }
 144:cpp_vector_double_practice.cpp **** 
 145:cpp_vector_double_practice.cpp ****     // Returning a temporary image
 146:cpp_vector_double_practice.cpp ****     return temp;
 848              		.loc 1 146 0
 849 071c 90       		nop
 147:cpp_vector_double_practice.cpp **** }
 850              		.loc 1 147 0
 851 071d 488B45D8 		movq	-40(%rbp), %rax
 852 0721 488B4DE8 		movq	-24(%rbp), %rcx
 853 0725 6448330C 		xorq	%fs:40, %rcx
 853      25280000 
 853      00
 854 072e 7405     		je	.L34
 855 0730 E8000000 		call	__stack_chk_fail@PLT
 855      00
 856              	.L34:
 857 0735 4883C438 		addq	$56, %rsp
 858 0739 5B       		popq	%rbx
 859 073a 5D       		popq	%rbp
 860              		.cfi_def_cfa 7, 8
 861 073b C3       		ret
 862              		.cfi_endproc
 863              	.LFE1855:
 864              		.section	.gcc_except_table
 865              	.LLSDA1855:
 866 0039 FF       		.byte	0xff
 867 003a FF       		.byte	0xff
 868 003b 01       		.byte	0x1
 869 003c 10       		.uleb128 .LLSDACSE1855-.LLSDACSB1855
 870              	.LLSDACSB1855:
 871 003d 30       		.uleb128 .LEHB8-.LFB1855
 872 003e A601     		.uleb128 .LEHE8-.LEHB8
 873 0040 00       		.uleb128 0
 874 0041 00       		.uleb128 0
 875 0042 A002     		.uleb128 .LEHB9-.LFB1855
 876 0044 05       		.uleb128 .LEHE9-.LEHB9
 877 0045 B802     		.uleb128 .L35-.LFB1855
 878 0047 00       		.uleb128 0
 879 0048 CD02     		.uleb128 .LEHB10-.LFB1855
 880 004a 05       		.uleb128 .LEHE10-.LEHB10
 881 004b 00       		.uleb128 0
 882 004c 00       		.uleb128 0
 883              	.LLSDACSE1855:
 884              		.text
 886              		.section	.rodata
 887              	.LC11:
 888 00a7 526F7756 		.string	"RowVector operator * ("
 888      6563746F 
 888      72206F70 
 888      65726174 
 888      6F72202A 
 889              		.text
 890              		.align 2
 891              		.globl	_ZN9RowVectormlEd
 893              	_ZN9RowVectormlEd:
 894              	.LFB1856:
 148:cpp_vector_double_practice.cpp **** 
 149:cpp_vector_double_practice.cpp **** 
 150:cpp_vector_double_practice.cpp **** RowVector RowVector::operator * (const double a){
 895              		.loc 1 150 0
 896              		.cfi_startproc
 897 073c 55       		pushq	%rbp
 898              		.cfi_def_cfa_offset 16
 899              		.cfi_offset 6, -16
 900 073d 4889E5   		movq	%rsp, %rbp
 901              		.cfi_def_cfa_register 6
 902 0740 4883EC50 		subq	$80, %rsp
 903 0744 48897DC8 		movq	%rdi, -56(%rbp)
 904 0748 488975C0 		movq	%rsi, -64(%rbp)
 905 074c F20F1145 		movsd	%xmm0, -72(%rbp)
 905      B8
 906              		.loc 1 150 0
 907 0751 64488B04 		movq	%fs:40, %rax
 907      25280000 
 907      00
 908 075a 488945F8 		movq	%rax, -8(%rbp)
 909 075e 31C0     		xorl	%eax, %eax
 151:cpp_vector_double_practice.cpp **** #ifdef LOG
 152:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "RowVector operator * (" << a << ")\n";
 910              		.loc 1 152 0
 911 0760 BE5B0000 		movl	$91, %esi
 911      00
 912 0765 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 912      000000
 913 076c E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 913      00
 914 0771 4889C2   		movq	%rax, %rdx
 915 0774 488B45C0 		movq	-64(%rbp), %rax
 916 0778 4889C6   		movq	%rax, %rsi
 917 077b 4889D7   		movq	%rdx, %rdi
 918 077e E8000000 		call	_ZNSolsEPKv@PLT
 918      00
 919 0783 BE5D0000 		movl	$93, %esi
 919      00
 920 0788 4889C7   		movq	%rax, %rdi
 921 078b E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 921      00
 922 0790 488D3500 		leaq	.LC11(%rip), %rsi
 922      000000
 923 0797 4889C7   		movq	%rax, %rdi
 924 079a E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 924      00
 925 079f 4889C2   		movq	%rax, %rdx
 926 07a2 488B45B8 		movq	-72(%rbp), %rax
 927 07a6 488945B0 		movq	%rax, -80(%rbp)
 928 07aa F20F1045 		movsd	-80(%rbp), %xmm0
 928      B0
 929 07af 4889D7   		movq	%rdx, %rdi
 930 07b2 E8000000 		call	_ZNSolsEd@PLT
 930      00
 931 07b7 488D3500 		leaq	.LC3(%rip), %rsi
 931      000000
 932 07be 4889C7   		movq	%rax, %rdi
 933 07c1 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 933      00
 153:cpp_vector_double_practice.cpp **** #endif
 154:cpp_vector_double_practice.cpp **** 
 155:cpp_vector_double_practice.cpp ****     // Make a new vector to return
 156:cpp_vector_double_practice.cpp ****     RowVector temp(*this);
 934              		.loc 1 156 0
 935 07c6 488B55C0 		movq	-64(%rbp), %rdx
 936 07ca 488B45C8 		movq	-56(%rbp), %rax
 937 07ce 4889D6   		movq	%rdx, %rsi
 938 07d1 4889C7   		movq	%rax, %rdi
 939 07d4 E8000000 		call	_ZN9RowVectorC1ERKS_
 939      00
 940              	.LBB18:
 157:cpp_vector_double_practice.cpp **** 
 158:cpp_vector_double_practice.cpp ****     // Element loop in `for each` style
 159:cpp_vector_double_practice.cpp ****     // c++ 11 or later
 160:cpp_vector_double_practice.cpp ****     for (auto & element : temp.columns){
 941              		.loc 1 160 0
 942 07d9 488B45C8 		movq	-56(%rbp), %rax
 943 07dd 488945E8 		movq	%rax, -24(%rbp)
 944 07e1 488B45E8 		movq	-24(%rbp), %rax
 945 07e5 4889C7   		movq	%rax, %rdi
 946 07e8 E8000000 		call	_ZNSt6vectorIdSaIdEE5beginEv
 946      00
 947 07ed 488945D8 		movq	%rax, -40(%rbp)
 948 07f1 488B45E8 		movq	-24(%rbp), %rax
 949 07f5 4889C7   		movq	%rax, %rdi
 950 07f8 E8000000 		call	_ZNSt6vectorIdSaIdEE3endEv
 950      00
 951 07fd 488945E0 		movq	%rax, -32(%rbp)
 952              	.L39:
 953              		.loc 1 160 0 is_stmt 0 discriminator 3
 954 0801 488D55E0 		leaq	-32(%rbp), %rdx
 955 0805 488D45D8 		leaq	-40(%rbp), %rax
 956 0809 4889D6   		movq	%rdx, %rsi
 957 080c 4889C7   		movq	%rax, %rdi
 958 080f E8000000 		call	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
 958      00
 959 0814 84C0     		testb	%al, %al
 960 0816 7433     		je	.L42
 961              		.loc 1 160 0 discriminator 2
 962 0818 488D45D8 		leaq	-40(%rbp), %rax
 963 081c 4889C7   		movq	%rax, %rdi
 964 081f E8000000 		call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
 964      00
 965 0824 488945F0 		movq	%rax, -16(%rbp)
 161:cpp_vector_double_practice.cpp ****         element *= a;
 966              		.loc 1 161 0 is_stmt 1 discriminator 2
 967 0828 488B45F0 		movq	-16(%rbp), %rax
 968 082c F20F1000 		movsd	(%rax), %xmm0
 969 0830 F20F5945 		mulsd	-72(%rbp), %xmm0
 969      B8
 970 0835 488B45F0 		movq	-16(%rbp), %rax
 971 0839 F20F1100 		movsd	%xmm0, (%rax)
 160:cpp_vector_double_practice.cpp ****         element *= a;
 972              		.loc 1 160 0 discriminator 2
 973 083d 488D45D8 		leaq	-40(%rbp), %rax
 974 0841 4889C7   		movq	%rax, %rdi
 975 0844 E8000000 		call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
 975      00
 976 0849 EBB6     		jmp	.L39
 977              	.L42:
 978              	.LBE18:
 162:cpp_vector_double_practice.cpp ****     }
 163:cpp_vector_double_practice.cpp **** 
 164:cpp_vector_double_practice.cpp ****     // Returning a temporary image
 165:cpp_vector_double_practice.cpp ****     return temp;
 979              		.loc 1 165 0
 980 084b 90       		nop
 166:cpp_vector_double_practice.cpp **** }
 981              		.loc 1 166 0
 982 084c 488B45C8 		movq	-56(%rbp), %rax
 983 0850 488B4DF8 		movq	-8(%rbp), %rcx
 984 0854 6448330C 		xorq	%fs:40, %rcx
 984      25280000 
 984      00
 985 085d 7405     		je	.L41
 986 085f E8000000 		call	__stack_chk_fail@PLT
 986      00
 987              	.L41:
 988 0864 C9       		leave
 989              		.cfi_def_cfa 7, 8
 990 0865 C3       		ret
 991              		.cfi_endproc
 992              	.LFE1856:
 994              		.align 2
 995              		.globl	_ZN9RowVectormlERKS_
 997              	_ZN9RowVectormlERKS_:
 998              	.LFB1857:
 167:cpp_vector_double_practice.cpp **** 
 168:cpp_vector_double_practice.cpp **** 
 169:cpp_vector_double_practice.cpp **** const double RowVector::operator * (const RowVector & other){
 999              		.loc 1 169 0
 1000              		.cfi_startproc
 1001 0866 55       		pushq	%rbp
 1002              		.cfi_def_cfa_offset 16
 1003              		.cfi_offset 6, -16
 1004 0867 4889E5   		movq	%rsp, %rbp
 1005              		.cfi_def_cfa_register 6
 1006 086a 53       		pushq	%rbx
 1007 086b 4883EC38 		subq	$56, %rsp
 1008              		.cfi_offset 3, -24
 1009 086f 48897DD8 		movq	%rdi, -40(%rbp)
 1010 0873 488975D0 		movq	%rsi, -48(%rbp)
 170:cpp_vector_double_practice.cpp **** #ifdef LOG
 171:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "RowVector operator * (" << & other << ")\n";
 1011              		.loc 1 171 0
 1012 0877 BE5B0000 		movl	$91, %esi
 1012      00
 1013 087c 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1013      000000
 1014 0883 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1014      00
 1015 0888 4889C2   		movq	%rax, %rdx
 1016 088b 488B45D8 		movq	-40(%rbp), %rax
 1017 088f 4889C6   		movq	%rax, %rsi
 1018 0892 4889D7   		movq	%rdx, %rdi
 1019 0895 E8000000 		call	_ZNSolsEPKv@PLT
 1019      00
 1020 089a BE5D0000 		movl	$93, %esi
 1020      00
 1021 089f 4889C7   		movq	%rax, %rdi
 1022 08a2 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1022      00
 1023 08a7 488D3500 		leaq	.LC11(%rip), %rsi
 1023      000000
 1024 08ae 4889C7   		movq	%rax, %rdi
 1025 08b1 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1025      00
 1026 08b6 4889C2   		movq	%rax, %rdx
 1027 08b9 488B45D0 		movq	-48(%rbp), %rax
 1028 08bd 4889C6   		movq	%rax, %rsi
 1029 08c0 4889D7   		movq	%rdx, %rdi
 1030 08c3 E8000000 		call	_ZNSolsEPKv@PLT
 1030      00
 1031 08c8 488D3500 		leaq	.LC3(%rip), %rsi
 1031      000000
 1032 08cf 4889C7   		movq	%rax, %rdi
 1033 08d2 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1033      00
 172:cpp_vector_double_practice.cpp **** #endif
 173:cpp_vector_double_practice.cpp **** 
 174:cpp_vector_double_practice.cpp ****     // Check size
 175:cpp_vector_double_practice.cpp ****     assert(columns.size() == other.columns.size());
 1034              		.loc 1 175 0
 1035 08d7 488B45D8 		movq	-40(%rbp), %rax
 1036 08db 4889C7   		movq	%rax, %rdi
 1037 08de E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1037      00
 1038 08e3 4889C3   		movq	%rax, %rbx
 1039 08e6 488B45D0 		movq	-48(%rbp), %rax
 1040 08ea 4889C7   		movq	%rax, %rdi
 1041 08ed E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1041      00
 1042 08f2 4839C3   		cmpq	%rax, %rbx
 1043 08f5 741F     		je	.L44
 1044              		.loc 1 175 0 is_stmt 0 discriminator 1
 1045 08f7 488D0D00 		leaq	_ZZN9RowVectormlERKS_E19__PRETTY_FUNCTION__(%rip), %rcx
 1045      000000
 1046 08fe BAAF0000 		movl	$175, %edx
 1046      00
 1047 0903 488D3500 		leaq	.LC9(%rip), %rsi
 1047      000000
 1048 090a 488D3D00 		leaq	.LC10(%rip), %rdi
 1048      000000
 1049 0911 E8000000 		call	__assert_fail@PLT
 1049      00
 1050              	.L44:
 176:cpp_vector_double_practice.cpp **** 
 177:cpp_vector_double_practice.cpp ****     double dot_product = 0.0;
 1051              		.loc 1 177 0 is_stmt 1
 1052 0916 660FEFC0 		pxor	%xmm0, %xmm0
 1053 091a F20F1145 		movsd	%xmm0, -24(%rbp)
 1053      E8
 1054              	.LBB19:
 178:cpp_vector_double_practice.cpp **** 
 179:cpp_vector_double_practice.cpp ****     // Element loop
 180:cpp_vector_double_practice.cpp ****     for (uint32_t i = 0; columns.size() > i; ++i){
 1055              		.loc 1 180 0
 1056 091f C745E400 		movl	$0, -28(%rbp)
 1056      000000
 1057              	.L46:
 1058              		.loc 1 180 0 is_stmt 0 discriminator 3
 1059 0926 488B45D8 		movq	-40(%rbp), %rax
 1060 092a 4889C7   		movq	%rax, %rdi
 1061 092d E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1061      00
 1062 0932 4889C2   		movq	%rax, %rdx
 1063 0935 8B45E4   		movl	-28(%rbp), %eax
 1064 0938 4839C2   		cmpq	%rax, %rdx
 1065 093b 0F97C0   		seta	%al
 1066 093e 84C0     		testb	%al, %al
 1067 0940 744A     		je	.L45
 181:cpp_vector_double_practice.cpp ****         dot_product += columns[i] * other.columns[i];
 1068              		.loc 1 181 0 is_stmt 1 discriminator 2
 1069 0942 8B55E4   		movl	-28(%rbp), %edx
 1070 0945 488B45D8 		movq	-40(%rbp), %rax
 1071 0949 4889D6   		movq	%rdx, %rsi
 1072 094c 4889C7   		movq	%rax, %rdi
 1073 094f E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 1073      00
 1074 0954 F20F1010 		movsd	(%rax), %xmm2
 1075 0958 F20F1155 		movsd	%xmm2, -56(%rbp)
 1075      C8
 1076 095d 8B55E4   		movl	-28(%rbp), %edx
 1077 0960 488B45D0 		movq	-48(%rbp), %rax
 1078 0964 4889D6   		movq	%rdx, %rsi
 1079 0967 4889C7   		movq	%rax, %rdi
 1080 096a E8000000 		call	_ZNKSt6vectorIdSaIdEEixEm
 1080      00
 1081 096f F20F1000 		movsd	(%rax), %xmm0
 1082 0973 F20F5945 		mulsd	-56(%rbp), %xmm0
 1082      C8
 1083 0978 F20F104D 		movsd	-24(%rbp), %xmm1
 1083      E8
 1084 097d F20F58C1 		addsd	%xmm1, %xmm0
 1085 0981 F20F1145 		movsd	%xmm0, -24(%rbp)
 1085      E8
 180:cpp_vector_double_practice.cpp ****         dot_product += columns[i] * other.columns[i];
 1086              		.loc 1 180 0 discriminator 2
 1087 0986 8345E401 		addl	$1, -28(%rbp)
 1088 098a EB9A     		jmp	.L46
 1089              	.L45:
 1090              	.LBE19:
 182:cpp_vector_double_practice.cpp ****     }
 183:cpp_vector_double_practice.cpp **** 
 184:cpp_vector_double_practice.cpp ****     // Returning a temporary image
 185:cpp_vector_double_practice.cpp ****     return dot_product;
 1091              		.loc 1 185 0
 1092 098c F20F1045 		movsd	-24(%rbp), %xmm0
 1092      E8
 186:cpp_vector_double_practice.cpp **** }
 1093              		.loc 1 186 0
 1094 0991 4883C438 		addq	$56, %rsp
 1095 0995 5B       		popq	%rbx
 1096 0996 5D       		popq	%rbp
 1097              		.cfi_def_cfa 7, 8
 1098 0997 C3       		ret
 1099              		.cfi_endproc
 1100              	.LFE1857:
 1102              		.section	.rodata
 1103              	.LC12:
 1104 00be 5D203D20 		.string	"] = "
 1104      00
 1105              		.text
 1106              		.align 2
 1107              		.globl	_ZN9RowVector4showEv
 1109              	_ZN9RowVector4showEv:
 1110              	.LFB1858:
 187:cpp_vector_double_practice.cpp **** 
 188:cpp_vector_double_practice.cpp **** 
 189:cpp_vector_double_practice.cpp **** void RowVector::show(){
 1111              		.loc 1 189 0
 1112              		.cfi_startproc
 1113 0998 55       		pushq	%rbp
 1114              		.cfi_def_cfa_offset 16
 1115              		.cfi_offset 6, -16
 1116 0999 4889E5   		movq	%rsp, %rbp
 1117              		.cfi_def_cfa_register 6
 1118 099c 53       		pushq	%rbx
 1119 099d 4883EC28 		subq	$40, %rsp
 1120              		.cfi_offset 3, -24
 1121 09a1 48897DD8 		movq	%rdi, -40(%rbp)
 190:cpp_vector_double_practice.cpp **** #ifdef LOG
 191:cpp_vector_double_practice.cpp ****     std::cout << '[' << &columns << ']' << "void show()\n";
 1122              		.loc 1 191 0
 1123 09a5 BE5B0000 		movl	$91, %esi
 1123      00
 1124 09aa 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1124      000000
 1125 09b1 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1125      00
 1126 09b6 4889C2   		movq	%rax, %rdx
 1127 09b9 488B45D8 		movq	-40(%rbp), %rax
 1128 09bd 4889C6   		movq	%rax, %rsi
 1129 09c0 4889D7   		movq	%rdx, %rdi
 1130 09c3 E8000000 		call	_ZNSolsEPKv@PLT
 1130      00
 1131 09c8 BE5D0000 		movl	$93, %esi
 1131      00
 1132 09cd 4889C7   		movq	%rax, %rdi
 1133 09d0 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1133      00
 1134 09d5 488D3500 		leaq	.LC7(%rip), %rsi
 1134      000000
 1135 09dc 4889C7   		movq	%rax, %rdi
 1136 09df E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1136      00
 1137              	.LBB20:
 192:cpp_vector_double_practice.cpp **** #endif
 193:cpp_vector_double_practice.cpp ****     for (uint32_t i=0; columns.size()> i; ++i){
 1138              		.loc 1 193 0
 1139 09e4 C745EC00 		movl	$0, -20(%rbp)
 1139      000000
 1140              	.L50:
 1141              		.loc 1 193 0 is_stmt 0 discriminator 3
 1142 09eb 488B45D8 		movq	-40(%rbp), %rax
 1143 09ef 4889C7   		movq	%rax, %rdi
 1144 09f2 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1144      00
 1145 09f7 4889C2   		movq	%rax, %rdx
 1146 09fa 8B45EC   		movl	-20(%rbp), %eax
 1147 09fd 4839C2   		cmpq	%rax, %rdx
 1148 0a00 0F97C0   		seta	%al
 1149 0a03 84C0     		testb	%al, %al
 1150 0a05 0F848200 		je	.L51
 1150      0000
 194:cpp_vector_double_practice.cpp ****         std::cout << name << '[' << i << "] = " << columns[i] << '\n';
 1151              		.loc 1 194 0 is_stmt 1 discriminator 2
 1152 0a0b 488B45D8 		movq	-40(%rbp), %rax
 1153 0a0f 4883C018 		addq	$24, %rax
 1154 0a13 4889C6   		movq	%rax, %rsi
 1155 0a16 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1155      000000
 1156 0a1d E8000000 		call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5
 1156      00
 1157 0a22 BE5B0000 		movl	$91, %esi
 1157      00
 1158 0a27 4889C7   		movq	%rax, %rdi
 1159 0a2a E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1159      00
 1160 0a2f 4889C2   		movq	%rax, %rdx
 1161 0a32 8B45EC   		movl	-20(%rbp), %eax
 1162 0a35 89C6     		movl	%eax, %esi
 1163 0a37 4889D7   		movq	%rdx, %rdi
 1164 0a3a E8000000 		call	_ZNSolsEj@PLT
 1164      00
 1165 0a3f 488D3500 		leaq	.LC12(%rip), %rsi
 1165      000000
 1166 0a46 4889C7   		movq	%rax, %rdi
 1167 0a49 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1167      00
 1168 0a4e 4889C3   		movq	%rax, %rbx
 1169 0a51 8B55EC   		movl	-20(%rbp), %edx
 1170 0a54 488B45D8 		movq	-40(%rbp), %rax
 1171 0a58 4889D6   		movq	%rdx, %rsi
 1172 0a5b 4889C7   		movq	%rax, %rdi
 1173 0a5e E8000000 		call	_ZNSt6vectorIdSaIdEEixEm
 1173      00
 1174 0a63 488B00   		movq	(%rax), %rax
 1175 0a66 488945D0 		movq	%rax, -48(%rbp)
 1176 0a6a F20F1045 		movsd	-48(%rbp), %xmm0
 1176      D0
 1177 0a6f 4889DF   		movq	%rbx, %rdi
 1178 0a72 E8000000 		call	_ZNSolsEd@PLT
 1178      00
 1179 0a77 BE0A0000 		movl	$10, %esi
 1179      00
 1180 0a7c 4889C7   		movq	%rax, %rdi
 1181 0a7f E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1181      00
 193:cpp_vector_double_practice.cpp ****         std::cout << name << '[' << i << "] = " << columns[i] << '\n';
 1182              		.loc 1 193 0 discriminator 2
 1183 0a84 8345EC01 		addl	$1, -20(%rbp)
 1184 0a88 E95EFFFF 		jmp	.L50
 1184      FF
 1185              	.L51:
 1186              	.LBE20:
 195:cpp_vector_double_practice.cpp ****     }
 196:cpp_vector_double_practice.cpp **** }
 1187              		.loc 1 196 0
 1188 0a8d 90       		nop
 1189 0a8e 4883C428 		addq	$40, %rsp
 1190 0a92 5B       		popq	%rbx
 1191 0a93 5D       		popq	%rbp
 1192              		.cfi_def_cfa 7, 8
 1193 0a94 C3       		ret
 1194              		.cfi_endproc
 1195              	.LFE1858:
 1197              		.section	.rodata
 1198 00c3 00000000 		.align 8
 1198      00
 1199              	.LC15:
 1200 00c8 526F7756 		.string	"RowVector row (2u, s, \"row\");\n"
 1200      6563746F 
 1200      7220726F 
 1200      77202832 
 1200      752C2073 
 1201              	.LC16:
 1202 00e7 726F7700 		.string	"row"
 1203              	.LC17:
 1204 00eb 526F7756 		.string	"RowVector another_row (row);\n"
 1204      6563746F 
 1204      7220616E 
 1204      6F746865 
 1204      725F726F 
 1205              	.LC18:
 1206 0109 616E6F74 		.string	"another_row[1] += 0.5;\n"
 1206      6865725F 
 1206      726F775B 
 1206      315D202B 
 1206      3D20302E 
 1207 0121 00000000 		.align 8
 1207      000000
 1208              	.LC20:
 1209 0128 526F7756 		.string	"RowVector row_plus_another(row + another_row);\n"
 1209      6563746F 
 1209      7220726F 
 1209      775F706C 
 1209      75735F61 
 1210              	.LC21:
 1211 0158 526F7756 		.string	"RowVector zeros(3);\n"
 1211      6563746F 
 1211      72207A65 
 1211      726F7328 
 1211      33293B0A 
 1212              	.LC22:
 1213 016d 7A65726F 		.string	"zeros"
 1213      7300
 1214              	.LC24:
 1215 0173 6F727468 		.string	"ortho"
 1215      6F00
 1216              	.LC25:
 1217 0179 646F7562 		.string	"double dot = row * ortho;\n"
 1217      6C652064 
 1217      6F74203D 
 1217      20726F77 
 1217      202A206F 
 1218              	.LC26:
 1219 0194 646F7420 		.string	"dot  = "
 1219      203D2000 
 1220              	.LC27:
 1221 019c 646F7420 		.string	"dot = row * row;\n"
 1221      3D20726F 
 1221      77202A20 
 1221      726F773B 
 1221      0A00
 1222              		.text
 1223              		.globl	main
 1225              	main:
 1226              	.LFB1859:
 197:cpp_vector_double_practice.cpp **** 
 198:cpp_vector_double_practice.cpp **** 
 199:cpp_vector_double_practice.cpp **** int32_t main(int32_t argn, char *argv[]){
 1227              		.loc 1 199 0
 1228              		.cfi_startproc
 1229              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 1230              		.cfi_lsda 0x1b,.LLSDA1859
 1231 0a95 55       		pushq	%rbp
 1232              		.cfi_def_cfa_offset 16
 1233              		.cfi_offset 6, -16
 1234 0a96 4889E5   		movq	%rsp, %rbp
 1235              		.cfi_def_cfa_register 6
 1236 0a99 53       		pushq	%rbx
 1237 0a9a 4881ECB8 		subq	$440, %rsp
 1237      010000
 1238              		.cfi_offset 3, -24
 1239 0aa1 89BD5CFE 		movl	%edi, -420(%rbp)
 1239      FFFF
 1240 0aa7 4889B550 		movq	%rsi, -432(%rbp)
 1240      FEFFFF
 1241              		.loc 1 199 0
 1242 0aae 64488B04 		movq	%fs:40, %rax
 1242      25280000 
 1242      00
 1243 0ab7 488945E8 		movq	%rax, -24(%rbp)
 1244 0abb 31C0     		xorl	%eax, %eax
 200:cpp_vector_double_practice.cpp **** 	double s[] = {1.0, 2.0};
 1245              		.loc 1 200 0
 1246 0abd F20F1005 		movsd	.LC13(%rip), %xmm0
 1246      00000000 
 1247 0ac5 F20F1185 		movsd	%xmm0, -400(%rbp)
 1247      70FEFFFF 
 1248 0acd F20F1005 		movsd	.LC14(%rip), %xmm0
 1248      00000000 
 1249 0ad5 F20F1185 		movsd	%xmm0, -392(%rbp)
 1249      78FEFFFF 
 201:cpp_vector_double_practice.cpp **** 
 202:cpp_vector_double_practice.cpp ****     std::cout << "RowVector row (2u, s, \"row\");\n";
 1250              		.loc 1 202 0
 1251 0add 488D3500 		leaq	.LC15(%rip), %rsi
 1251      000000
 1252 0ae4 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1252      000000
 1253              	.LEHB11:
 1254 0aeb E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1254      00
 1255              	.LEHE11:
 203:cpp_vector_double_practice.cpp **** 	RowVector row (2u, s, "row");
 1256              		.loc 1 203 0
 1257 0af0 488D8567 		leaq	-409(%rbp), %rax
 1257      FEFFFF
 1258 0af7 4889C7   		movq	%rax, %rdi
 1259 0afa E8000000 		call	_ZNSaIcEC1Ev@PLT
 1259      00
 1260 0aff 488D9567 		leaq	-409(%rbp), %rdx
 1260      FEFFFF
 1261 0b06 488D45B0 		leaq	-80(%rbp), %rax
 1262 0b0a 488D3500 		leaq	.LC16(%rip), %rsi
 1262      000000
 1263 0b11 4889C7   		movq	%rax, %rdi
 1264              	.LEHB12:
 1265 0b14 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
 1265      00
 1266              	.LEHE12:
 1267              		.loc 1 203 0 is_stmt 0 discriminator 1
 1268 0b19 488D4DB0 		leaq	-80(%rbp), %rcx
 1269 0b1d 488D9570 		leaq	-400(%rbp), %rdx
 1269      FEFFFF
 1270 0b24 488D85B0 		leaq	-336(%rbp), %rax
 1270      FEFFFF
 1271 0b2b BE020000 		movl	$2, %esi
 1271      00
 1272 0b30 4889C7   		movq	%rax, %rdi
 1273              	.LEHB13:
 1274 0b33 E8000000 		call	_ZN9RowVectorC1EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 1274      00
 1275              	.LEHE13:
 1276 0b38 488D45B0 		leaq	-80(%rbp), %rax
 1277 0b3c 4889C7   		movq	%rax, %rdi
 1278 0b3f E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1278      00
 1279 0b44 488D8567 		leaq	-409(%rbp), %rax
 1279      FEFFFF
 1280 0b4b 4889C7   		movq	%rax, %rdi
 1281 0b4e E8000000 		call	_ZNSaIcED1Ev@PLT
 1281      00
 204:cpp_vector_double_practice.cpp **** 
 205:cpp_vector_double_practice.cpp ****     row.show();
 1282              		.loc 1 205 0 is_stmt 1
 1283 0b53 488D85B0 		leaq	-336(%rbp), %rax
 1283      FEFFFF
 1284 0b5a 4889C7   		movq	%rax, %rdi
 1285              	.LEHB14:
 1286 0b5d E8000000 		call	_ZN9RowVector4showEv
 1286      00
 206:cpp_vector_double_practice.cpp **** 
 207:cpp_vector_double_practice.cpp ****     std::cout << "RowVector another_row (row);\n";
 1287              		.loc 1 207 0
 1288 0b62 488D3500 		leaq	.LC17(%rip), %rsi
 1288      000000
 1289 0b69 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1289      000000
 1290 0b70 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1290      00
 208:cpp_vector_double_practice.cpp **** 	RowVector another_row (row);
 1291              		.loc 1 208 0
 1292 0b75 488D95B0 		leaq	-336(%rbp), %rdx
 1292      FEFFFF
 1293 0b7c 488D85F0 		leaq	-272(%rbp), %rax
 1293      FEFFFF
 1294 0b83 4889D6   		movq	%rdx, %rsi
 1295 0b86 4889C7   		movq	%rax, %rdi
 1296 0b89 E8000000 		call	_ZN9RowVectorC1ERKS_
 1296      00
 1297              	.LEHE14:
 209:cpp_vector_double_practice.cpp ****     row.show();
 1298              		.loc 1 209 0
 1299 0b8e 488D85B0 		leaq	-336(%rbp), %rax
 1299      FEFFFF
 1300 0b95 4889C7   		movq	%rax, %rdi
 1301              	.LEHB15:
 1302 0b98 E8000000 		call	_ZN9RowVector4showEv
 1302      00
 210:cpp_vector_double_practice.cpp ****     another_row.show();
 1303              		.loc 1 210 0
 1304 0b9d 488D85F0 		leaq	-272(%rbp), %rax
 1304      FEFFFF
 1305 0ba4 4889C7   		movq	%rax, %rdi
 1306 0ba7 E8000000 		call	_ZN9RowVector4showEv
 1306      00
 211:cpp_vector_double_practice.cpp **** 
 212:cpp_vector_double_practice.cpp ****     std::cout << "another_row[1] += 0.5;\n";
 1307              		.loc 1 212 0
 1308 0bac 488D3500 		leaq	.LC18(%rip), %rsi
 1308      000000
 1309 0bb3 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1309      000000
 1310 0bba E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1310      00
 213:cpp_vector_double_practice.cpp ****     another_row[1] += 0.5;
 1311              		.loc 1 213 0
 1312 0bbf 488D85F0 		leaq	-272(%rbp), %rax
 1312      FEFFFF
 1313 0bc6 BE010000 		movl	$1, %esi
 1313      00
 1314 0bcb 4889C7   		movq	%rax, %rdi
 1315 0bce E8000000 		call	_ZN9RowVectorixEj
 1315      00
 1316 0bd3 F20F1008 		movsd	(%rax), %xmm1
 1317 0bd7 F20F1005 		movsd	.LC19(%rip), %xmm0
 1317      00000000 
 1318 0bdf F20F58C1 		addsd	%xmm1, %xmm0
 1319 0be3 F20F1100 		movsd	%xmm0, (%rax)
 214:cpp_vector_double_practice.cpp ****     row.show();
 1320              		.loc 1 214 0
 1321 0be7 488D85B0 		leaq	-336(%rbp), %rax
 1321      FEFFFF
 1322 0bee 4889C7   		movq	%rax, %rdi
 1323 0bf1 E8000000 		call	_ZN9RowVector4showEv
 1323      00
 215:cpp_vector_double_practice.cpp ****     another_row.show();
 1324              		.loc 1 215 0
 1325 0bf6 488D85F0 		leaq	-272(%rbp), %rax
 1325      FEFFFF
 1326 0bfd 4889C7   		movq	%rax, %rdi
 1327 0c00 E8000000 		call	_ZN9RowVector4showEv
 1327      00
 216:cpp_vector_double_practice.cpp **** 
 217:cpp_vector_double_practice.cpp ****     std::cout << "RowVector row_plus_another(row + another_row);\n";
 1328              		.loc 1 217 0
 1329 0c05 488D3500 		leaq	.LC20(%rip), %rsi
 1329      000000
 1330 0c0c 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1330      000000
 1331 0c13 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1331      00
 218:cpp_vector_double_practice.cpp ****     RowVector row_plus_another(row + another_row);
 1332              		.loc 1 218 0
 1333 0c18 488D8530 		leaq	-208(%rbp), %rax
 1333      FFFFFF
 1334 0c1f 488D95F0 		leaq	-272(%rbp), %rdx
 1334      FEFFFF
 1335 0c26 488D8DB0 		leaq	-336(%rbp), %rcx
 1335      FEFFFF
 1336 0c2d 4889CE   		movq	%rcx, %rsi
 1337 0c30 4889C7   		movq	%rax, %rdi
 1338 0c33 E8000000 		call	_ZN9RowVectorplERKS_
 1338      00
 1339              	.LEHE15:
 219:cpp_vector_double_practice.cpp ****     row.show();
 1340              		.loc 1 219 0
 1341 0c38 488D85B0 		leaq	-336(%rbp), %rax
 1341      FEFFFF
 1342 0c3f 4889C7   		movq	%rax, %rdi
 1343              	.LEHB16:
 1344 0c42 E8000000 		call	_ZN9RowVector4showEv
 1344      00
 220:cpp_vector_double_practice.cpp ****     another_row.show();
 1345              		.loc 1 220 0
 1346 0c47 488D85F0 		leaq	-272(%rbp), %rax
 1346      FEFFFF
 1347 0c4e 4889C7   		movq	%rax, %rdi
 1348 0c51 E8000000 		call	_ZN9RowVector4showEv
 1348      00
 221:cpp_vector_double_practice.cpp ****     row_plus_another.show();
 1349              		.loc 1 221 0
 1350 0c56 488D8530 		leaq	-208(%rbp), %rax
 1350      FFFFFF
 1351 0c5d 4889C7   		movq	%rax, %rdi
 1352 0c60 E8000000 		call	_ZN9RowVector4showEv
 1352      00
 222:cpp_vector_double_practice.cpp **** 
 223:cpp_vector_double_practice.cpp ****     std::cout << "RowVector zeros(3);\n";
 1353              		.loc 1 223 0
 1354 0c65 488D3500 		leaq	.LC21(%rip), %rsi
 1354      000000
 1355 0c6c 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1355      000000
 1356 0c73 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1356      00
 1357              	.LEHE16:
 224:cpp_vector_double_practice.cpp **** 	RowVector zeros(3u, "zeros");
 1358              		.loc 1 224 0
 1359 0c78 488D8567 		leaq	-409(%rbp), %rax
 1359      FEFFFF
 1360 0c7f 4889C7   		movq	%rax, %rdi
 1361 0c82 E8000000 		call	_ZNSaIcEC1Ev@PLT
 1361      00
 1362 0c87 488D9567 		leaq	-409(%rbp), %rdx
 1362      FEFFFF
 1363 0c8e 488D45B0 		leaq	-80(%rbp), %rax
 1364 0c92 488D3500 		leaq	.LC22(%rip), %rsi
 1364      000000
 1365 0c99 4889C7   		movq	%rax, %rdi
 1366              	.LEHB17:
 1367 0c9c E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
 1367      00
 1368              	.LEHE17:
 1369              		.loc 1 224 0 is_stmt 0 discriminator 1
 1370 0ca1 488D55B0 		leaq	-80(%rbp), %rdx
 1371 0ca5 488D8570 		leaq	-144(%rbp), %rax
 1371      FFFFFF
 1372 0cac BE030000 		movl	$3, %esi
 1372      00
 1373 0cb1 4889C7   		movq	%rax, %rdi
 1374              	.LEHB18:
 1375 0cb4 E8000000 		call	_ZN9RowVectorC1EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 1375      00
 1376              	.LEHE18:
 1377 0cb9 488D45B0 		leaq	-80(%rbp), %rax
 1378 0cbd 4889C7   		movq	%rax, %rdi
 1379 0cc0 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1379      00
 1380 0cc5 488D8567 		leaq	-409(%rbp), %rax
 1380      FEFFFF
 1381 0ccc 4889C7   		movq	%rax, %rdi
 1382 0ccf E8000000 		call	_ZNSaIcED1Ev@PLT
 1382      00
 225:cpp_vector_double_practice.cpp ****     row.show();
 1383              		.loc 1 225 0 is_stmt 1
 1384 0cd4 488D85B0 		leaq	-336(%rbp), %rax
 1384      FEFFFF
 1385 0cdb 4889C7   		movq	%rax, %rdi
 1386              	.LEHB19:
 1387 0cde E8000000 		call	_ZN9RowVector4showEv
 1387      00
 226:cpp_vector_double_practice.cpp ****     another_row.show();
 1388              		.loc 1 226 0
 1389 0ce3 488D85F0 		leaq	-272(%rbp), %rax
 1389      FEFFFF
 1390 0cea 4889C7   		movq	%rax, %rdi
 1391 0ced E8000000 		call	_ZN9RowVector4showEv
 1391      00
 227:cpp_vector_double_practice.cpp ****     row_plus_another.show();
 1392              		.loc 1 227 0
 1393 0cf2 488D8530 		leaq	-208(%rbp), %rax
 1393      FFFFFF
 1394 0cf9 4889C7   		movq	%rax, %rdi
 1395 0cfc E8000000 		call	_ZN9RowVector4showEv
 1395      00
 228:cpp_vector_double_practice.cpp ****     zeros.show();
 1396              		.loc 1 228 0
 1397 0d01 488D8570 		leaq	-144(%rbp), %rax
 1397      FFFFFF
 1398 0d08 4889C7   		movq	%rax, %rdi
 1399 0d0b E8000000 		call	_ZN9RowVector4showEv
 1399      00
 1400              	.LEHE19:
 229:cpp_vector_double_practice.cpp **** 
 230:cpp_vector_double_practice.cpp ****     double t[] = {2.0, -1.0};
 1401              		.loc 1 230 0
 1402 0d10 F20F1005 		movsd	.LC14(%rip), %xmm0
 1402      00000000 
 1403 0d18 F20F1185 		movsd	%xmm0, -384(%rbp)
 1403      80FEFFFF 
 1404 0d20 F20F1005 		movsd	.LC23(%rip), %xmm0
 1404      00000000 
 1405 0d28 F20F1185 		movsd	%xmm0, -376(%rbp)
 1405      88FEFFFF 
 231:cpp_vector_double_practice.cpp **** 	RowVector ortho (2u, t, "ortho");
 1406              		.loc 1 231 0
 1407 0d30 488D8567 		leaq	-409(%rbp), %rax
 1407      FEFFFF
 1408 0d37 4889C7   		movq	%rax, %rdi
 1409 0d3a E8000000 		call	_ZNSaIcEC1Ev@PLT
 1409      00
 1410 0d3f 488D9567 		leaq	-409(%rbp), %rdx
 1410      FEFFFF
 1411 0d46 488D8590 		leaq	-368(%rbp), %rax
 1411      FEFFFF
 1412 0d4d 488D3500 		leaq	.LC24(%rip), %rsi
 1412      000000
 1413 0d54 4889C7   		movq	%rax, %rdi
 1414              	.LEHB20:
 1415 0d57 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
 1415      00
 1416              	.LEHE20:
 1417              		.loc 1 231 0 is_stmt 0 discriminator 1
 1418 0d5c 488D8D90 		leaq	-368(%rbp), %rcx
 1418      FEFFFF
 1419 0d63 488D9580 		leaq	-384(%rbp), %rdx
 1419      FEFFFF
 1420 0d6a 488D45B0 		leaq	-80(%rbp), %rax
 1421 0d6e BE020000 		movl	$2, %esi
 1421      00
 1422 0d73 4889C7   		movq	%rax, %rdi
 1423              	.LEHB21:
 1424 0d76 E8000000 		call	_ZN9RowVectorC1EjPKdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
 1424      00
 1425              	.LEHE21:
 1426 0d7b 488D8590 		leaq	-368(%rbp), %rax
 1426      FEFFFF
 1427 0d82 4889C7   		movq	%rax, %rdi
 1428 0d85 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1428      00
 1429 0d8a 488D8567 		leaq	-409(%rbp), %rax
 1429      FEFFFF
 1430 0d91 4889C7   		movq	%rax, %rdi
 1431 0d94 E8000000 		call	_ZNSaIcED1Ev@PLT
 1431      00
 232:cpp_vector_double_practice.cpp ****     double dot = row * ortho;
 1432              		.loc 1 232 0 is_stmt 1
 1433 0d99 488D55B0 		leaq	-80(%rbp), %rdx
 1434 0d9d 488D85B0 		leaq	-336(%rbp), %rax
 1434      FEFFFF
 1435 0da4 4889D6   		movq	%rdx, %rsi
 1436 0da7 4889C7   		movq	%rax, %rdi
 1437              	.LEHB22:
 1438 0daa E8000000 		call	_ZN9RowVectormlERKS_
 1438      00
 1439 0daf 66480F7E 		movq	%xmm0, %rax
 1439      C0
 1440 0db4 48898568 		movq	%rax, -408(%rbp)
 1440      FEFFFF
 233:cpp_vector_double_practice.cpp ****     std::cout << "double dot = row * ortho;\n";
 1441              		.loc 1 233 0
 1442 0dbb 488D3500 		leaq	.LC25(%rip), %rsi
 1442      000000
 1443 0dc2 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1443      000000
 1444 0dc9 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1444      00
 234:cpp_vector_double_practice.cpp ****     std::cout << "dot  = " << dot << '\n';
 1445              		.loc 1 234 0
 1446 0dce 488D3500 		leaq	.LC26(%rip), %rsi
 1446      000000
 1447 0dd5 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1447      000000
 1448 0ddc E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1448      00
 1449 0de1 4889C2   		movq	%rax, %rdx
 1450 0de4 488B8568 		movq	-408(%rbp), %rax
 1450      FEFFFF
 1451 0deb 48898548 		movq	%rax, -440(%rbp)
 1451      FEFFFF
 1452 0df2 F20F1085 		movsd	-440(%rbp), %xmm0
 1452      48FEFFFF 
 1453 0dfa 4889D7   		movq	%rdx, %rdi
 1454 0dfd E8000000 		call	_ZNSolsEd@PLT
 1454      00
 1455              		.loc 1 234 0 is_stmt 0 discriminator 1
 1456 0e02 BE0A0000 		movl	$10, %esi
 1456      00
 1457 0e07 4889C7   		movq	%rax, %rdi
 1458 0e0a E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1458      00
 235:cpp_vector_double_practice.cpp **** 
 236:cpp_vector_double_practice.cpp ****     std::cout << "dot = row * row;\n";
 1459              		.loc 1 236 0 is_stmt 1
 1460 0e0f 488D3500 		leaq	.LC27(%rip), %rsi
 1460      000000
 1461 0e16 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1461      000000
 1462 0e1d E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1462      00
 237:cpp_vector_double_practice.cpp ****     dot = row * row;
 1463              		.loc 1 237 0
 1464 0e22 488D95B0 		leaq	-336(%rbp), %rdx
 1464      FEFFFF
 1465 0e29 488D85B0 		leaq	-336(%rbp), %rax
 1465      FEFFFF
 1466 0e30 4889D6   		movq	%rdx, %rsi
 1467 0e33 4889C7   		movq	%rax, %rdi
 1468 0e36 E8000000 		call	_ZN9RowVectormlERKS_
 1468      00
 1469 0e3b 66480F7E 		movq	%xmm0, %rax
 1469      C0
 1470 0e40 48898568 		movq	%rax, -408(%rbp)
 1470      FEFFFF
 238:cpp_vector_double_practice.cpp ****     std::cout << "dot  = " << dot << '\n';
 1471              		.loc 1 238 0
 1472 0e47 488D3500 		leaq	.LC26(%rip), %rsi
 1472      000000
 1473 0e4e 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1473      000000
 1474 0e55 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
 1474      00
 1475              		.loc 1 238 0 is_stmt 0 discriminator 1
 1476 0e5a 4889C2   		movq	%rax, %rdx
 1477 0e5d 488B8568 		movq	-408(%rbp), %rax
 1477      FEFFFF
 1478 0e64 48898548 		movq	%rax, -440(%rbp)
 1478      FEFFFF
 1479 0e6b F20F1085 		movsd	-440(%rbp), %xmm0
 1479      48FEFFFF 
 1480 0e73 4889D7   		movq	%rdx, %rdi
 1481 0e76 E8000000 		call	_ZNSolsEd@PLT
 1481      00
 1482 0e7b BE0A0000 		movl	$10, %esi
 1482      00
 1483 0e80 4889C7   		movq	%rax, %rdi
 1484 0e83 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
 1484      00
 1485              	.LEHE22:
 231:cpp_vector_double_practice.cpp ****     double dot = row * ortho;
 1486              		.loc 1 231 0 is_stmt 1
 1487 0e88 488D45B0 		leaq	-80(%rbp), %rax
 1488 0e8c 4889C7   		movq	%rax, %rdi
 1489 0e8f E8000000 		call	_ZN9RowVectorD1Ev
 1489      00
 224:cpp_vector_double_practice.cpp ****     row.show();
 1490              		.loc 1 224 0
 1491 0e94 488D8570 		leaq	-144(%rbp), %rax
 1491      FFFFFF
 1492 0e9b 4889C7   		movq	%rax, %rdi
 1493 0e9e E8000000 		call	_ZN9RowVectorD1Ev
 1493      00
 218:cpp_vector_double_practice.cpp ****     row.show();
 1494              		.loc 1 218 0
 1495 0ea3 488D8530 		leaq	-208(%rbp), %rax
 1495      FFFFFF
 1496 0eaa 4889C7   		movq	%rax, %rdi
 1497 0ead E8000000 		call	_ZN9RowVectorD1Ev
 1497      00
 208:cpp_vector_double_practice.cpp ****     row.show();
 1498              		.loc 1 208 0
 1499 0eb2 488D85F0 		leaq	-272(%rbp), %rax
 1499      FEFFFF
 1500 0eb9 4889C7   		movq	%rax, %rdi
 1501 0ebc E8000000 		call	_ZN9RowVectorD1Ev
 1501      00
 203:cpp_vector_double_practice.cpp **** 
 1502              		.loc 1 203 0
 1503 0ec1 488D85B0 		leaq	-336(%rbp), %rax
 1503      FEFFFF
 1504 0ec8 4889C7   		movq	%rax, %rdi
 1505 0ecb E8000000 		call	_ZN9RowVectorD1Ev
 1505      00
 239:cpp_vector_double_practice.cpp **** 
 240:cpp_vector_double_practice.cpp **** }
 1506              		.loc 1 240 0
 1507 0ed0 B8000000 		movl	$0, %eax
 1507      00
 1508 0ed5 488B4DE8 		movq	-24(%rbp), %rcx
 1509 0ed9 6448330C 		xorq	%fs:40, %rcx
 1509      25280000 
 1509      00
 1510 0ee2 0F84EF00 		je	.L65
 1510      0000
 1511 0ee8 E9E50000 		jmp	.L77
 1511      00
 1512              	.L67:
 1513 0eed 4889C3   		movq	%rax, %rbx
 1514 0ef0 488D45B0 		leaq	-80(%rbp), %rax
 1515 0ef4 4889C7   		movq	%rax, %rdi
 1516 0ef7 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1516      00
 1517 0efc EB03     		jmp	.L55
 1518              	.L66:
 1519 0efe 4889C3   		movq	%rax, %rbx
 1520              	.L55:
 1521 0f01 488D8567 		leaq	-409(%rbp), %rax
 1521      FEFFFF
 1522 0f08 4889C7   		movq	%rax, %rdi
 1523 0f0b E8000000 		call	_ZNSaIcED1Ev@PLT
 1523      00
 1524 0f10 4889D8   		movq	%rbx, %rax
 1525 0f13 4889C7   		movq	%rax, %rdi
 1526              	.LEHB23:
 1527 0f16 E8000000 		call	_Unwind_Resume@PLT
 1527      00
 1528              	.L72:
 1529 0f1b 4889C3   		movq	%rax, %rbx
 1530 0f1e 488D45B0 		leaq	-80(%rbp), %rax
 1531 0f22 4889C7   		movq	%rax, %rdi
 1532 0f25 E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1532      00
 1533 0f2a EB03     		jmp	.L57
 1534              	.L71:
 1535 0f2c 4889C3   		movq	%rax, %rbx
 1536              	.L57:
 1537 0f2f 488D8567 		leaq	-409(%rbp), %rax
 1537      FEFFFF
 1538 0f36 4889C7   		movq	%rax, %rdi
 1539 0f39 E8000000 		call	_ZNSaIcED1Ev@PLT
 1539      00
 1540 0f3e EB50     		jmp	.L58
 1541              	.L75:
 1542 0f40 4889C3   		movq	%rax, %rbx
 1543 0f43 488D8590 		leaq	-368(%rbp), %rax
 1543      FEFFFF
 1544 0f4a 4889C7   		movq	%rax, %rdi
 1545 0f4d E8000000 		call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
 1545      00
 1546 0f52 EB03     		jmp	.L60
 1547              	.L74:
 1548 0f54 4889C3   		movq	%rax, %rbx
 1549              	.L60:
 1550 0f57 488D8567 		leaq	-409(%rbp), %rax
 1550      FEFFFF
 1551 0f5e 4889C7   		movq	%rax, %rdi
 1552 0f61 E8000000 		call	_ZNSaIcED1Ev@PLT
 1552      00
 1553 0f66 EB14     		jmp	.L61
 1554              	.L76:
 1555 0f68 4889C3   		movq	%rax, %rbx
 231:cpp_vector_double_practice.cpp ****     double dot = row * ortho;
 1556              		.loc 1 231 0
 1557 0f6b 488D45B0 		leaq	-80(%rbp), %rax
 1558 0f6f 4889C7   		movq	%rax, %rdi
 1559 0f72 E8000000 		call	_ZN9RowVectorD1Ev
 1559      00
 1560 0f77 EB03     		jmp	.L61
 1561              	.L73:
 1562 0f79 4889C3   		movq	%rax, %rbx
 1563              	.L61:
 224:cpp_vector_double_practice.cpp ****     row.show();
 1564              		.loc 1 224 0
 1565 0f7c 488D8570 		leaq	-144(%rbp), %rax
 1565      FFFFFF
 1566 0f83 4889C7   		movq	%rax, %rdi
 1567 0f86 E8000000 		call	_ZN9RowVectorD1Ev
 1567      00
 1568 0f8b EB03     		jmp	.L58
 1569              	.L70:
 1570 0f8d 4889C3   		movq	%rax, %rbx
 1571              	.L58:
 218:cpp_vector_double_practice.cpp ****     row.show();
 1572              		.loc 1 218 0
 1573 0f90 488D8530 		leaq	-208(%rbp), %rax
 1573      FFFFFF
 1574 0f97 4889C7   		movq	%rax, %rdi
 1575 0f9a E8000000 		call	_ZN9RowVectorD1Ev
 1575      00
 1576 0f9f EB03     		jmp	.L63
 1577              	.L69:
 1578 0fa1 4889C3   		movq	%rax, %rbx
 1579              	.L63:
 208:cpp_vector_double_practice.cpp ****     row.show();
 1580              		.loc 1 208 0
 1581 0fa4 488D85F0 		leaq	-272(%rbp), %rax
 1581      FEFFFF
 1582 0fab 4889C7   		movq	%rax, %rdi
 1583 0fae E8000000 		call	_ZN9RowVectorD1Ev
 1583      00
 1584 0fb3 EB03     		jmp	.L64
 1585              	.L68:
 1586 0fb5 4889C3   		movq	%rax, %rbx
 1587              	.L64:
 203:cpp_vector_double_practice.cpp **** 
 1588              		.loc 1 203 0
 1589 0fb8 488D85B0 		leaq	-336(%rbp), %rax
 1589      FEFFFF
 1590 0fbf 4889C7   		movq	%rax, %rdi
 1591 0fc2 E8000000 		call	_ZN9RowVectorD1Ev
 1591      00
 1592 0fc7 4889D8   		movq	%rbx, %rax
 1593 0fca 4889C7   		movq	%rax, %rdi
 1594 0fcd E8000000 		call	_Unwind_Resume@PLT
 1594      00
 1595              	.LEHE23:
 1596              	.L77:
 1597              		.loc 1 240 0
 1598 0fd2 E8000000 		call	__stack_chk_fail@PLT
 1598      00
 1599              	.L65:
 1600 0fd7 4881C4B8 		addq	$440, %rsp
 1600      010000
 1601 0fde 5B       		popq	%rbx
 1602 0fdf 5D       		popq	%rbp
 1603              		.cfi_def_cfa 7, 8
 1604 0fe0 C3       		ret
 1605              		.cfi_endproc
 1606              	.LFE1859:
 1607              		.section	.gcc_except_table
 1608              	.LLSDA1859:
 1609 004d FF       		.byte	0xff
 1610 004e FF       		.byte	0xff
 1611 004f 01       		.byte	0x1
 1612 0050 4D       		.uleb128 .LLSDACSE1859-.LLSDACSB1859
 1613              	.LLSDACSB1859:
 1614 0051 56       		.uleb128 .LEHB11-.LFB1859
 1615 0052 05       		.uleb128 .LEHE11-.LEHB11
 1616 0053 00       		.uleb128 0
 1617 0054 00       		.uleb128 0
 1618 0055 7F       		.uleb128 .LEHB12-.LFB1859
 1619 0056 05       		.uleb128 .LEHE12-.LEHB12
 1620 0057 E908     		.uleb128 .L66-.LFB1859
 1621 0059 00       		.uleb128 0
 1622 005a 9E01     		.uleb128 .LEHB13-.LFB1859
 1623 005c 05       		.uleb128 .LEHE13-.LEHB13
 1624 005d D808     		.uleb128 .L67-.LFB1859
 1625 005f 00       		.uleb128 0
 1626 0060 C801     		.uleb128 .LEHB14-.LFB1859
 1627 0062 31       		.uleb128 .LEHE14-.LEHB14
 1628 0063 A00A     		.uleb128 .L68-.LFB1859
 1629 0065 00       		.uleb128 0
 1630 0066 8302     		.uleb128 .LEHB15-.LFB1859
 1631 0068 A001     		.uleb128 .LEHE15-.LEHB15
 1632 006a 8C0A     		.uleb128 .L69-.LFB1859
 1633 006c 00       		.uleb128 0
 1634 006d AD03     		.uleb128 .LEHB16-.LFB1859
 1635 006f 36       		.uleb128 .LEHE16-.LEHB16
 1636 0070 F809     		.uleb128 .L70-.LFB1859
 1637 0072 00       		.uleb128 0
 1638 0073 8704     		.uleb128 .LEHB17-.LFB1859
 1639 0075 05       		.uleb128 .LEHE17-.LEHB17
 1640 0076 9709     		.uleb128 .L71-.LFB1859
 1641 0078 00       		.uleb128 0
 1642 0079 9F04     		.uleb128 .LEHB18-.LFB1859
 1643 007b 05       		.uleb128 .LEHE18-.LEHB18
 1644 007c 8609     		.uleb128 .L72-.LFB1859
 1645 007e 00       		.uleb128 0
 1646 007f C904     		.uleb128 .LEHB19-.LFB1859
 1647 0081 32       		.uleb128 .LEHE19-.LEHB19
 1648 0082 E409     		.uleb128 .L73-.LFB1859
 1649 0084 00       		.uleb128 0
 1650 0085 C205     		.uleb128 .LEHB20-.LFB1859
 1651 0087 05       		.uleb128 .LEHE20-.LEHB20
 1652 0088 BF09     		.uleb128 .L74-.LFB1859
 1653 008a 00       		.uleb128 0
 1654 008b E105     		.uleb128 .LEHB21-.LFB1859
 1655 008d 05       		.uleb128 .LEHE21-.LEHB21
 1656 008e AB09     		.uleb128 .L75-.LFB1859
 1657 0090 00       		.uleb128 0
 1658 0091 9506     		.uleb128 .LEHB22-.LFB1859
 1659 0093 DE01     		.uleb128 .LEHE22-.LEHB22
 1660 0095 D309     		.uleb128 .L76-.LFB1859
 1661 0097 00       		.uleb128 0
 1662 0098 8109     		.uleb128 .LEHB23-.LFB1859
 1663 009a BC01     		.uleb128 .LEHE23-.LEHB23
 1664 009c 00       		.uleb128 0
 1665 009d 00       		.uleb128 0
 1666              	.LLSDACSE1859:
 1667              		.text
 1669              		.section	.text._ZNSt6vectorIdSaIdEEC2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5Ev,comdat
 1670              		.align 2
 1671              		.weak	_ZNSt6vectorIdSaIdEEC2Ev
 1673              	_ZNSt6vectorIdSaIdEEC2Ev:
 1674              	.LFB2098:
 1675              		.file 2 "/usr/include/c++/7/bits/stl_vector.h"
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
 1676              		.loc 2 259 0
 1677              		.cfi_startproc
 1678              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 1679              		.cfi_lsda 0x1b,.LLSDA2098
 1680 0000 55       		pushq	%rbp
 1681              		.cfi_def_cfa_offset 16
 1682              		.cfi_offset 6, -16
 1683 0001 4889E5   		movq	%rsp, %rbp
 1684              		.cfi_def_cfa_register 6
 1685 0004 4883EC10 		subq	$16, %rsp
 1686 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1687              	.LBB21:
 260:/usr/include/c++/7/bits/stl_vector.h **** #if __cplusplus >= 201103L
 261:/usr/include/c++/7/bits/stl_vector.h ****       noexcept(is_nothrow_default_constructible<_Alloc>::value)
 262:/usr/include/c++/7/bits/stl_vector.h **** #endif
 263:/usr/include/c++/7/bits/stl_vector.h ****       : _Base() { }
 1688              		.loc 2 263 0
 1689 000c 488B45F8 		movq	-8(%rbp), %rax
 1690 0010 4889C7   		movq	%rax, %rdi
 1691 0013 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEEC2Ev
 1691      00
 1692              	.LBE21:
 1693 0018 90       		nop
 1694 0019 C9       		leave
 1695              		.cfi_def_cfa 7, 8
 1696 001a C3       		ret
 1697              		.cfi_endproc
 1698              	.LFE2098:
 1699              		.section	.gcc_except_table
 1700              	.LLSDA2098:
 1701 009e FF       		.byte	0xff
 1702 009f FF       		.byte	0xff
 1703 00a0 01       		.byte	0x1
 1704 00a1 00       		.uleb128 .LLSDACSE2098-.LLSDACSB2098
 1705              	.LLSDACSB2098:
 1706              	.LLSDACSE2098:
 1707              		.section	.text._ZNSt6vectorIdSaIdEEC2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5Ev,comdat
 1709              		.weak	_ZNSt6vectorIdSaIdEEC1Ev
 1710              		.set	_ZNSt6vectorIdSaIdEEC1Ev,_ZNSt6vectorIdSaIdEEC2Ev
 1711              		.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
 1712              		.align 2
 1713              		.weak	_ZNSt6vectorIdSaIdEED2Ev
 1715              	_ZNSt6vectorIdSaIdEED2Ev:
 1716              	.LFB2101:
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
 1717              		.loc 2 433 0
 1718              		.cfi_startproc
 1719              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 1720              		.cfi_lsda 0x1b,.LLSDA2101
 1721 0000 55       		pushq	%rbp
 1722              		.cfi_def_cfa_offset 16
 1723              		.cfi_offset 6, -16
 1724 0001 4889E5   		movq	%rsp, %rbp
 1725              		.cfi_def_cfa_register 6
 1726 0004 4883EC10 		subq	$16, %rsp
 1727 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1728              	.LBB22:
 434:/usr/include/c++/7/bits/stl_vector.h ****       { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 435:/usr/include/c++/7/bits/stl_vector.h **** 		      _M_get_Tp_allocator()); }
 1729              		.loc 2 435 0
 1730 000c 488B45F8 		movq	-8(%rbp), %rax
 1731 0010 4889C7   		movq	%rax, %rdi
 1732 0013 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 1732      00
 1733 0018 4889C2   		movq	%rax, %rdx
 434:/usr/include/c++/7/bits/stl_vector.h ****       { std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
 1734              		.loc 2 434 0
 1735 001b 488B45F8 		movq	-8(%rbp), %rax
 1736 001f 488B4808 		movq	8(%rax), %rcx
 1737 0023 488B45F8 		movq	-8(%rbp), %rax
 1738 0027 488B00   		movq	(%rax), %rax
 1739 002a 4889CE   		movq	%rcx, %rsi
 1740 002d 4889C7   		movq	%rax, %rdi
 1741 0030 E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 1741      00
 1742              		.loc 2 435 0
 1743 0035 488B45F8 		movq	-8(%rbp), %rax
 1744 0039 4889C7   		movq	%rax, %rdi
 1745 003c E8000000 		call	_ZNSt12_Vector_baseIdSaIdEED2Ev
 1745      00
 1746              	.LBE22:
 1747 0041 90       		nop
 1748 0042 C9       		leave
 1749              		.cfi_def_cfa 7, 8
 1750 0043 C3       		ret
 1751              		.cfi_endproc
 1752              	.LFE2101:
 1753              		.section	.gcc_except_table
 1754              	.LLSDA2101:
 1755 00a2 FF       		.byte	0xff
 1756 00a3 FF       		.byte	0xff
 1757 00a4 01       		.byte	0x1
 1758 00a5 00       		.uleb128 .LLSDACSE2101-.LLSDACSB2101
 1759              	.LLSDACSB2101:
 1760              	.LLSDACSE2101:
 1761              		.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
 1763              		.weak	_ZNSt6vectorIdSaIdEED1Ev
 1764              		.set	_ZNSt6vectorIdSaIdEED1Ev,_ZNSt6vectorIdSaIdEED2Ev
 1765              		.section	.text._ZNSt6vectorIdSaIdEE6resizeEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE6resizeEm,comdat
 1766              		.align 2
 1767              		.weak	_ZNSt6vectorIdSaIdEE6resizeEm
 1769              	_ZNSt6vectorIdSaIdEE6resizeEm:
 1770              	.LFB2112:
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
 1771              		.loc 2 689 0
 1772              		.cfi_startproc
 1773 0000 55       		pushq	%rbp
 1774              		.cfi_def_cfa_offset 16
 1775              		.cfi_offset 6, -16
 1776 0001 4889E5   		movq	%rsp, %rbp
 1777              		.cfi_def_cfa_register 6
 1778 0004 4883EC10 		subq	$16, %rsp
 1779 0008 48897DF8 		movq	%rdi, -8(%rbp)
 1780 000c 488975F0 		movq	%rsi, -16(%rbp)
 690:/usr/include/c++/7/bits/stl_vector.h ****       {
 691:/usr/include/c++/7/bits/stl_vector.h **** 	if (__new_size > size())
 1781              		.loc 2 691 0
 1782 0010 488B45F8 		movq	-8(%rbp), %rax
 1783 0014 4889C7   		movq	%rax, %rdi
 1784 0017 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1784      00
 1785 001c 483945F0 		cmpq	%rax, -16(%rbp)
 1786 0020 0F97C0   		seta	%al
 1787 0023 84C0     		testb	%al, %al
 1788 0025 742A     		je	.L81
 692:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_default_append(__new_size - size());
 1789              		.loc 2 692 0
 1790 0027 488B45F8 		movq	-8(%rbp), %rax
 1791 002b 4889C7   		movq	%rax, %rdi
 1792 002e E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1792      00
 1793 0033 4889C2   		movq	%rax, %rdx
 1794 0036 488B45F0 		movq	-16(%rbp), %rax
 1795 003a 4829D0   		subq	%rdx, %rax
 1796 003d 4889C2   		movq	%rax, %rdx
 1797 0040 488B45F8 		movq	-8(%rbp), %rax
 1798 0044 4889D6   		movq	%rdx, %rsi
 1799 0047 4889C7   		movq	%rax, %rdi
 1800 004a E8000000 		call	_ZNSt6vectorIdSaIdEE17_M_default_appendEm
 1800      00
 693:/usr/include/c++/7/bits/stl_vector.h **** 	else if (__new_size < size())
 694:/usr/include/c++/7/bits/stl_vector.h **** 	  _M_erase_at_end(this->_M_impl._M_start + __new_size);
 695:/usr/include/c++/7/bits/stl_vector.h ****       }
 1801              		.loc 2 695 0
 1802 004f EB38     		jmp	.L83
 1803              	.L81:
 693:/usr/include/c++/7/bits/stl_vector.h **** 	else if (__new_size < size())
 1804              		.loc 2 693 0
 1805 0051 488B45F8 		movq	-8(%rbp), %rax
 1806 0055 4889C7   		movq	%rax, %rdi
 1807 0058 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 1807      00
 1808 005d 483945F0 		cmpq	%rax, -16(%rbp)
 1809 0061 0F92C0   		setb	%al
 1810 0064 84C0     		testb	%al, %al
 1811 0066 7421     		je	.L83
 694:/usr/include/c++/7/bits/stl_vector.h ****       }
 1812              		.loc 2 694 0
 1813 0068 488B45F8 		movq	-8(%rbp), %rax
 1814 006c 488B00   		movq	(%rax), %rax
 1815 006f 488B55F0 		movq	-16(%rbp), %rdx
 1816 0073 48C1E203 		salq	$3, %rdx
 1817 0077 4801C2   		addq	%rax, %rdx
 1818 007a 488B45F8 		movq	-8(%rbp), %rax
 1819 007e 4889D6   		movq	%rdx, %rsi
 1820 0081 4889C7   		movq	%rax, %rdi
 1821 0084 E8000000 		call	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd
 1821      00
 1822              	.L83:
 1823              		.loc 2 695 0
 1824 0089 90       		nop
 1825 008a C9       		leave
 1826              		.cfi_def_cfa 7, 8
 1827 008b C3       		ret
 1828              		.cfi_endproc
 1829              	.LFE2112:
 1831              		.section	.text._ZNKSt6vectorIdSaIdEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE4sizeEv,comdat
 1832              		.align 2
 1833              		.weak	_ZNKSt6vectorIdSaIdEE4sizeEv
 1835              	_ZNKSt6vectorIdSaIdEE4sizeEv:
 1836              	.LFB2113:
 670:/usr/include/c++/7/bits/stl_vector.h ****       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
 1837              		.loc 2 670 0
 1838              		.cfi_startproc
 1839 0000 55       		pushq	%rbp
 1840              		.cfi_def_cfa_offset 16
 1841              		.cfi_offset 6, -16
 1842 0001 4889E5   		movq	%rsp, %rbp
 1843              		.cfi_def_cfa_register 6
 1844 0004 48897DF8 		movq	%rdi, -8(%rbp)
 671:/usr/include/c++/7/bits/stl_vector.h **** 
 1845              		.loc 2 671 0
 1846 0008 488B45F8 		movq	-8(%rbp), %rax
 1847 000c 488B4008 		movq	8(%rax), %rax
 1848 0010 4889C2   		movq	%rax, %rdx
 1849 0013 488B45F8 		movq	-8(%rbp), %rax
 1850 0017 488B00   		movq	(%rax), %rax
 1851 001a 4829C2   		subq	%rax, %rdx
 1852 001d 4889D0   		movq	%rdx, %rax
 1853 0020 48C1F803 		sarq	$3, %rax
 1854 0024 5D       		popq	%rbp
 1855              		.cfi_def_cfa 7, 8
 1856 0025 C3       		ret
 1857              		.cfi_endproc
 1858              	.LFE2113:
 1860              		.section	.text._ZNSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNSt6vectorIdSaIdEEixEm,comdat
 1861              		.align 2
 1862              		.weak	_ZNSt6vectorIdSaIdEEixEm
 1864              	_ZNSt6vectorIdSaIdEEixEm:
 1865              	.LFB2114:
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
 1866              		.loc 2 795 0
 1867              		.cfi_startproc
 1868 0000 55       		pushq	%rbp
 1869              		.cfi_def_cfa_offset 16
 1870              		.cfi_offset 6, -16
 1871 0001 4889E5   		movq	%rsp, %rbp
 1872              		.cfi_def_cfa_register 6
 1873 0004 48897DF8 		movq	%rdi, -8(%rbp)
 1874 0008 488975F0 		movq	%rsi, -16(%rbp)
 796:/usr/include/c++/7/bits/stl_vector.h ****       {
 797:/usr/include/c++/7/bits/stl_vector.h **** 	__glibcxx_requires_subscript(__n);
 798:/usr/include/c++/7/bits/stl_vector.h **** 	return *(this->_M_impl._M_start + __n);
 1875              		.loc 2 798 0
 1876 000c 488B45F8 		movq	-8(%rbp), %rax
 1877 0010 488B00   		movq	(%rax), %rax
 1878 0013 488B55F0 		movq	-16(%rbp), %rdx
 1879 0017 48C1E203 		salq	$3, %rdx
 1880 001b 4801D0   		addq	%rdx, %rax
 799:/usr/include/c++/7/bits/stl_vector.h ****       }
 1881              		.loc 2 799 0
 1882 001e 5D       		popq	%rbp
 1883              		.cfi_def_cfa 7, 8
 1884 001f C3       		ret
 1885              		.cfi_endproc
 1886              	.LFE2114:
 1888              		.section	.text._ZNKSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNKSt6vectorIdSaIdEEixEm,comdat
 1889              		.align 2
 1890              		.weak	_ZNKSt6vectorIdSaIdEEixEm
 1892              	_ZNKSt6vectorIdSaIdEEixEm:
 1893              	.LFB2121:
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
 1894              		.loc 2 813 0
 1895              		.cfi_startproc
 1896 0000 55       		pushq	%rbp
 1897              		.cfi_def_cfa_offset 16
 1898              		.cfi_offset 6, -16
 1899 0001 4889E5   		movq	%rsp, %rbp
 1900              		.cfi_def_cfa_register 6
 1901 0004 48897DF8 		movq	%rdi, -8(%rbp)
 1902 0008 488975F0 		movq	%rsi, -16(%rbp)
 814:/usr/include/c++/7/bits/stl_vector.h ****       {
 815:/usr/include/c++/7/bits/stl_vector.h **** 	__glibcxx_requires_subscript(__n);
 816:/usr/include/c++/7/bits/stl_vector.h **** 	return *(this->_M_impl._M_start + __n);
 1903              		.loc 2 816 0
 1904 000c 488B45F8 		movq	-8(%rbp), %rax
 1905 0010 488B00   		movq	(%rax), %rax
 1906 0013 488B55F0 		movq	-16(%rbp), %rdx
 1907 0017 48C1E203 		salq	$3, %rdx
 1908 001b 4801D0   		addq	%rdx, %rax
 817:/usr/include/c++/7/bits/stl_vector.h ****       }
 1909              		.loc 2 817 0
 1910 001e 5D       		popq	%rbp
 1911              		.cfi_def_cfa 7, 8
 1912 001f C3       		ret
 1913              		.cfi_endproc
 1914              	.LFE2121:
 1916              		.section	.text._ZNSt6vectorIdSaIdEE5beginEv,"axG",@progbits,_ZNSt6vectorIdSaIdEE5beginEv,comdat
 1917              		.align 2
 1918              		.weak	_ZNSt6vectorIdSaIdEE5beginEv
 1920              	_ZNSt6vectorIdSaIdEE5beginEv:
 1921              	.LFB2124:
 563:/usr/include/c++/7/bits/stl_vector.h ****       { return iterator(this->_M_impl._M_start); }
 1922              		.loc 2 563 0
 1923              		.cfi_startproc
 1924 0000 55       		pushq	%rbp
 1925              		.cfi_def_cfa_offset 16
 1926              		.cfi_offset 6, -16
 1927 0001 4889E5   		movq	%rsp, %rbp
 1928              		.cfi_def_cfa_register 6
 1929 0004 4883EC20 		subq	$32, %rsp
 1930 0008 48897DE8 		movq	%rdi, -24(%rbp)
 563:/usr/include/c++/7/bits/stl_vector.h ****       { return iterator(this->_M_impl._M_start); }
 1931              		.loc 2 563 0
 1932 000c 64488B04 		movq	%fs:40, %rax
 1932      25280000 
 1932      00
 1933 0015 488945F8 		movq	%rax, -8(%rbp)
 1934 0019 31C0     		xorl	%eax, %eax
 564:/usr/include/c++/7/bits/stl_vector.h **** 
 1935              		.loc 2 564 0
 1936 001b 488B55E8 		movq	-24(%rbp), %rdx
 1937 001f 488D45F0 		leaq	-16(%rbp), %rax
 1938 0023 4889D6   		movq	%rdx, %rsi
 1939 0026 4889C7   		movq	%rax, %rdi
 1940 0029 E8000000 		call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
 1940      00
 1941 002e 488B45F0 		movq	-16(%rbp), %rax
 1942 0032 488B4DF8 		movq	-8(%rbp), %rcx
 1943 0036 6448330C 		xorq	%fs:40, %rcx
 1943      25280000 
 1943      00
 1944 003f 7405     		je	.L92
 1945 0041 E8000000 		call	__stack_chk_fail@PLT
 1945      00
 1946              	.L92:
 1947 0046 C9       		leave
 1948              		.cfi_def_cfa 7, 8
 1949 0047 C3       		ret
 1950              		.cfi_endproc
 1951              	.LFE2124:
 1953              		.section	.text._ZNSt6vectorIdSaIdEE3endEv,"axG",@progbits,_ZNSt6vectorIdSaIdEE3endEv,comdat
 1954              		.align 2
 1955              		.weak	_ZNSt6vectorIdSaIdEE3endEv
 1957              	_ZNSt6vectorIdSaIdEE3endEv:
 1958              	.LFB2125:
 581:/usr/include/c++/7/bits/stl_vector.h ****       { return iterator(this->_M_impl._M_finish); }
 1959              		.loc 2 581 0
 1960              		.cfi_startproc
 1961 0000 55       		pushq	%rbp
 1962              		.cfi_def_cfa_offset 16
 1963              		.cfi_offset 6, -16
 1964 0001 4889E5   		movq	%rsp, %rbp
 1965              		.cfi_def_cfa_register 6
 1966 0004 4883EC20 		subq	$32, %rsp
 1967 0008 48897DE8 		movq	%rdi, -24(%rbp)
 581:/usr/include/c++/7/bits/stl_vector.h ****       { return iterator(this->_M_impl._M_finish); }
 1968              		.loc 2 581 0
 1969 000c 64488B04 		movq	%fs:40, %rax
 1969      25280000 
 1969      00
 1970 0015 488945F8 		movq	%rax, -8(%rbp)
 1971 0019 31C0     		xorl	%eax, %eax
 582:/usr/include/c++/7/bits/stl_vector.h **** 
 1972              		.loc 2 582 0
 1973 001b 488B45E8 		movq	-24(%rbp), %rax
 1974 001f 488D5008 		leaq	8(%rax), %rdx
 1975 0023 488D45F0 		leaq	-16(%rbp), %rax
 1976 0027 4889D6   		movq	%rdx, %rsi
 1977 002a 4889C7   		movq	%rax, %rdi
 1978 002d E8000000 		call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
 1978      00
 1979 0032 488B45F0 		movq	-16(%rbp), %rax
 1980 0036 488B4DF8 		movq	-8(%rbp), %rcx
 1981 003a 6448330C 		xorq	%fs:40, %rcx
 1981      25280000 
 1981      00
 1982 0043 7405     		je	.L95
 1983 0045 E8000000 		call	__stack_chk_fail@PLT
 1983      00
 1984              	.L95:
 1985 004a C9       		leave
 1986              		.cfi_def_cfa 7, 8
 1987 004b C3       		ret
 1988              		.cfi_endproc
 1989              	.LFE2125:
 1991              		.section	.text._ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@pr
 1992              		.weak	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
 1994              	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
 1995              	.LFB2126:
 1996              		.file 3 "/usr/include/c++/7/bits/stl_iterator.h"
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
 1997              		.loc 3 880 0
 1998              		.cfi_startproc
 1999 0000 55       		pushq	%rbp
 2000              		.cfi_def_cfa_offset 16
 2001              		.cfi_offset 6, -16
 2002 0001 4889E5   		movq	%rsp, %rbp
 2003              		.cfi_def_cfa_register 6
 2004 0004 53       		pushq	%rbx
 2005 0005 4883EC18 		subq	$24, %rsp
 2006              		.cfi_offset 3, -24
 2007 0009 48897DE8 		movq	%rdi, -24(%rbp)
 2008 000d 488975E0 		movq	%rsi, -32(%rbp)
 881:/usr/include/c++/7/bits/stl_iterator.h **** 	       const __normal_iterator<_Iterator, _Container>& __rhs)
 882:/usr/include/c++/7/bits/stl_iterator.h ****     _GLIBCXX_NOEXCEPT
 883:/usr/include/c++/7/bits/stl_iterator.h ****     { return __lhs.base() != __rhs.base(); }
 2009              		.loc 3 883 0
 2010 0011 488B45E8 		movq	-24(%rbp), %rax
 2011 0015 4889C7   		movq	%rax, %rdi
 2012 0018 E8000000 		call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
 2012      00
 2013 001d 488B18   		movq	(%rax), %rbx
 2014 0020 488B45E0 		movq	-32(%rbp), %rax
 2015 0024 4889C7   		movq	%rax, %rdi
 2016 0027 E8000000 		call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
 2016      00
 2017 002c 488B00   		movq	(%rax), %rax
 2018 002f 4839C3   		cmpq	%rax, %rbx
 2019 0032 0F95C0   		setne	%al
 2020 0035 4883C418 		addq	$24, %rsp
 2021 0039 5B       		popq	%rbx
 2022 003a 5D       		popq	%rbp
 2023              		.cfi_def_cfa 7, 8
 2024 003b C3       		ret
 2025              		.cfi_endproc
 2026              	.LFE2126:
 2028              		.section	.text._ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv,"axG",@progbits,_ZN9__gnu
 2029              		.align 2
 2030              		.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
 2032              	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv:
 2033              	.LFB2127:
 800:/usr/include/c++/7/bits/stl_iterator.h ****       {
 2034              		.loc 3 800 0
 2035              		.cfi_startproc
 2036 0000 55       		pushq	%rbp
 2037              		.cfi_def_cfa_offset 16
 2038              		.cfi_offset 6, -16
 2039 0001 4889E5   		movq	%rsp, %rbp
 2040              		.cfi_def_cfa_register 6
 2041 0004 48897DF8 		movq	%rdi, -8(%rbp)
 802:/usr/include/c++/7/bits/stl_iterator.h **** 	return *this;
 2042              		.loc 3 802 0
 2043 0008 488B45F8 		movq	-8(%rbp), %rax
 2044 000c 488B00   		movq	(%rax), %rax
 2045 000f 488D5008 		leaq	8(%rax), %rdx
 2046 0013 488B45F8 		movq	-8(%rbp), %rax
 2047 0017 488910   		movq	%rdx, (%rax)
 803:/usr/include/c++/7/bits/stl_iterator.h ****       }
 2048              		.loc 3 803 0
 2049 001a 488B45F8 		movq	-8(%rbp), %rax
 804:/usr/include/c++/7/bits/stl_iterator.h **** 
 2050              		.loc 3 804 0
 2051 001e 5D       		popq	%rbp
 2052              		.cfi_def_cfa 7, 8
 2053 001f C3       		ret
 2054              		.cfi_endproc
 2055              	.LFE2127:
 2057              		.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv,"axG",@progbits,_ZNK9__g
 2058              		.align 2
 2059              		.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
 2061              	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv:
 2062              	.LFB2128:
 792:/usr/include/c++/7/bits/stl_iterator.h ****       { return *_M_current; }
 2063              		.loc 3 792 0
 2064              		.cfi_startproc
 2065 0000 55       		pushq	%rbp
 2066              		.cfi_def_cfa_offset 16
 2067              		.cfi_offset 6, -16
 2068 0001 4889E5   		movq	%rsp, %rbp
 2069              		.cfi_def_cfa_register 6
 2070 0004 48897DF8 		movq	%rdi, -8(%rbp)
 793:/usr/include/c++/7/bits/stl_iterator.h **** 
 2071              		.loc 3 793 0
 2072 0008 488B45F8 		movq	-8(%rbp), %rax
 2073 000c 488B00   		movq	(%rax), %rax
 2074 000f 5D       		popq	%rbp
 2075              		.cfi_def_cfa 7, 8
 2076 0010 C3       		ret
 2077              		.cfi_endproc
 2078              	.LFE2128:
 2080              		.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseId
 2081              		.align 2
 2082              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
 2084              	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev:
 2085              	.LFB2240:
  81:/usr/include/c++/7/bits/stl_vector.h ****       : public _Tp_alloc_type
 2086              		.loc 2 81 0
 2087              		.cfi_startproc
 2088 0000 55       		pushq	%rbp
 2089              		.cfi_def_cfa_offset 16
 2090              		.cfi_offset 6, -16
 2091 0001 4889E5   		movq	%rsp, %rbp
 2092              		.cfi_def_cfa_register 6
 2093 0004 4883EC10 		subq	$16, %rsp
 2094 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2095              	.LBB23:
  81:/usr/include/c++/7/bits/stl_vector.h ****       : public _Tp_alloc_type
 2096              		.loc 2 81 0
 2097 000c 488B45F8 		movq	-8(%rbp), %rax
 2098 0010 4889C7   		movq	%rax, %rdi
 2099 0013 E8000000 		call	_ZNSaIdED2Ev
 2099      00
 2100              	.LBE23:
 2101 0018 90       		nop
 2102 0019 C9       		leave
 2103              		.cfi_def_cfa 7, 8
 2104 001a C3       		ret
 2105              		.cfi_endproc
 2106              	.LFE2240:
 2108              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
 2109              		.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
 2110              		.section	.text._ZNSt12_Vector_baseIdSaIdEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5Ev,com
 2111              		.align 2
 2112              		.weak	_ZNSt12_Vector_baseIdSaIdEEC2Ev
 2114              	_ZNSt12_Vector_baseIdSaIdEEC2Ev:
 2115              	.LFB2242:
 126:/usr/include/c++/7/bits/stl_vector.h ****       : _M_impl() { }
 2116              		.loc 2 126 0
 2117              		.cfi_startproc
 2118 0000 55       		pushq	%rbp
 2119              		.cfi_def_cfa_offset 16
 2120              		.cfi_offset 6, -16
 2121 0001 4889E5   		movq	%rsp, %rbp
 2122              		.cfi_def_cfa_register 6
 2123 0004 4883EC10 		subq	$16, %rsp
 2124 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2125              	.LBB24:
 127:/usr/include/c++/7/bits/stl_vector.h **** 
 2126              		.loc 2 127 0
 2127 000c 488B45F8 		movq	-8(%rbp), %rax
 2128 0010 4889C7   		movq	%rax, %rdi
 2129 0013 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
 2129      00
 2130              	.LBE24:
 2131 0018 90       		nop
 2132 0019 C9       		leave
 2133              		.cfi_def_cfa 7, 8
 2134 001a C3       		ret
 2135              		.cfi_endproc
 2136              	.LFE2242:
 2138              		.weak	_ZNSt12_Vector_baseIdSaIdEEC1Ev
 2139              		.set	_ZNSt12_Vector_baseIdSaIdEEC1Ev,_ZNSt12_Vector_baseIdSaIdEEC2Ev
 2140              		.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,com
 2141              		.align 2
 2142              		.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
 2144              	_ZNSt12_Vector_baseIdSaIdEED2Ev:
 2145              	.LFB2245:
 161:/usr/include/c++/7/bits/stl_vector.h ****       { _M_deallocate(this->_M_impl._M_start, this->_M_impl._M_end_of_storage
 2146              		.loc 2 161 0
 2147              		.cfi_startproc
 2148              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 2149              		.cfi_lsda 0x1b,.LLSDA2245
 2150 0000 55       		pushq	%rbp
 2151              		.cfi_def_cfa_offset 16
 2152              		.cfi_offset 6, -16
 2153 0001 4889E5   		movq	%rsp, %rbp
 2154              		.cfi_def_cfa_register 6
 2155 0004 4883EC10 		subq	$16, %rsp
 2156 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2157              	.LBB25:
 162:/usr/include/c++/7/bits/stl_vector.h **** 		      - this->_M_impl._M_start); }
 2158              		.loc 2 162 0
 2159 000c 488B45F8 		movq	-8(%rbp), %rax
 2160 0010 488B4010 		movq	16(%rax), %rax
 163:/usr/include/c++/7/bits/stl_vector.h **** 
 2161              		.loc 2 163 0
 2162 0014 4889C2   		movq	%rax, %rdx
 2163 0017 488B45F8 		movq	-8(%rbp), %rax
 2164 001b 488B00   		movq	(%rax), %rax
 2165 001e 4829C2   		subq	%rax, %rdx
 2166 0021 4889D0   		movq	%rdx, %rax
 2167 0024 48C1F803 		sarq	$3, %rax
 162:/usr/include/c++/7/bits/stl_vector.h **** 		      - this->_M_impl._M_start); }
 2168              		.loc 2 162 0
 2169 0028 4889C2   		movq	%rax, %rdx
 2170 002b 488B45F8 		movq	-8(%rbp), %rax
 2171 002f 488B08   		movq	(%rax), %rcx
 2172 0032 488B45F8 		movq	-8(%rbp), %rax
 2173 0036 4889CE   		movq	%rcx, %rsi
 2174 0039 4889C7   		movq	%rax, %rdi
 2175 003c E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 2175      00
 163:/usr/include/c++/7/bits/stl_vector.h **** 
 2176              		.loc 2 163 0
 2177 0041 488B45F8 		movq	-8(%rbp), %rax
 2178 0045 4889C7   		movq	%rax, %rdi
 2179 0048 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
 2179      00
 2180              	.LBE25:
 2181 004d 90       		nop
 2182 004e C9       		leave
 2183              		.cfi_def_cfa 7, 8
 2184 004f C3       		ret
 2185              		.cfi_endproc
 2186              	.LFE2245:
 2187              		.section	.gcc_except_table
 2188              	.LLSDA2245:
 2189 00a6 FF       		.byte	0xff
 2190 00a7 FF       		.byte	0xff
 2191 00a8 01       		.byte	0x1
 2192 00a9 00       		.uleb128 .LLSDACSE2245-.LLSDACSB2245
 2193              	.LLSDACSB2245:
 2194              	.LLSDACSE2245:
 2195              		.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,com
 2197              		.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
 2198              		.set	_ZNSt12_Vector_baseIdSaIdEED1Ev,_ZNSt12_Vector_baseIdSaIdEED2Ev
 2199              		.section	.text._ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_b
 2200              		.align 2
 2201              		.weak	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2203              	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
 2204              	.LFB2247:
 115:/usr/include/c++/7/bits/stl_vector.h ****       { return *static_cast<_Tp_alloc_type*>(&this->_M_impl); }
 2205              		.loc 2 115 0
 2206              		.cfi_startproc
 2207 0000 55       		pushq	%rbp
 2208              		.cfi_def_cfa_offset 16
 2209              		.cfi_offset 6, -16
 2210 0001 4889E5   		movq	%rsp, %rbp
 2211              		.cfi_def_cfa_register 6
 2212 0004 48897DF8 		movq	%rdi, -8(%rbp)
 116:/usr/include/c++/7/bits/stl_vector.h **** 
 2213              		.loc 2 116 0
 2214 0008 488B45F8 		movq	-8(%rbp), %rax
 2215 000c 5D       		popq	%rbp
 2216              		.cfi_def_cfa 7, 8
 2217 000d C3       		ret
 2218              		.cfi_endproc
 2219              	.LFE2247:
 2221              		.section	.text._ZSt8_DestroyIPddEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPddEvT_S1_RSaIT0_E,c
 2222              		.weak	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 2224              	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E:
 2225              	.LFB2248:
 2226              		.file 4 "/usr/include/c++/7/bits/stl_construct.h"
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
 2227              		.loc 4 203 0
 2228              		.cfi_startproc
 2229 0000 55       		pushq	%rbp
 2230              		.cfi_def_cfa_offset 16
 2231              		.cfi_offset 6, -16
 2232 0001 4889E5   		movq	%rsp, %rbp
 2233              		.cfi_def_cfa_register 6
 2234 0004 4883EC20 		subq	$32, %rsp
 2235 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2236 000c 488975F0 		movq	%rsi, -16(%rbp)
 2237 0010 488955E8 		movq	%rdx, -24(%rbp)
 204:/usr/include/c++/7/bits/stl_construct.h **** 	     allocator<_Tp>&)
 205:/usr/include/c++/7/bits/stl_construct.h ****     {
 206:/usr/include/c++/7/bits/stl_construct.h ****       _Destroy(__first, __last);
 2238              		.loc 4 206 0
 2239 0014 488B55F0 		movq	-16(%rbp), %rdx
 2240 0018 488B45F8 		movq	-8(%rbp), %rax
 2241 001c 4889D6   		movq	%rdx, %rsi
 2242 001f 4889C7   		movq	%rax, %rdi
 2243 0022 E8000000 		call	_ZSt8_DestroyIPdEvT_S1_
 2243      00
 207:/usr/include/c++/7/bits/stl_construct.h ****     }
 2244              		.loc 4 207 0
 2245 0027 90       		nop
 2246 0028 C9       		leave
 2247              		.cfi_def_cfa 7, 8
 2248 0029 C3       		ret
 2249              		.cfi_endproc
 2250              	.LFE2248:
 2252              		.section	.rodata
 2253              	.LC28:
 2254 01ae 76656374 		.string	"vector::_M_default_append"
 2254      6F723A3A 
 2254      5F4D5F64 
 2254      65666175 
 2254      6C745F61 
 2255              		.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_
 2256              		.align 2
 2257              		.weak	_ZNSt6vectorIdSaIdEE17_M_default_appendEm
 2259              	_ZNSt6vectorIdSaIdEE17_M_default_appendEm:
 2260              	.LFB2251:
 2261              		.file 5 "/usr/include/c++/7/bits/vector.tcc"
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
 2262              		.loc 5 554 0
 2263              		.cfi_startproc
 2264              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 2265              		.cfi_lsda 0x1b,.LLSDA2251
 2266 0000 55       		pushq	%rbp
 2267              		.cfi_def_cfa_offset 16
 2268              		.cfi_offset 6, -16
 2269 0001 4889E5   		movq	%rsp, %rbp
 2270              		.cfi_def_cfa_register 6
 2271 0004 53       		pushq	%rbx
 2272 0005 4883EC38 		subq	$56, %rsp
 2273              		.cfi_offset 3, -24
 2274 0009 48897DC8 		movq	%rdi, -56(%rbp)
 2275 000d 488975C0 		movq	%rsi, -64(%rbp)
 2276              	.LBB26:
 555:/usr/include/c++/7/bits/vector.tcc ****     _M_default_append(size_type __n)
 556:/usr/include/c++/7/bits/vector.tcc ****     {
 557:/usr/include/c++/7/bits/vector.tcc ****       if (__n != 0)
 2277              		.loc 5 557 0
 2278 0011 48837DC0 		cmpq	$0, -64(%rbp)
 2278      00
 2279 0016 0F84E801 		je	.L116
 2279      0000
 2280              	.LBB27:
 2281              	.LBB28:
 558:/usr/include/c++/7/bits/vector.tcc **** 	{
 559:/usr/include/c++/7/bits/vector.tcc **** 	  if (size_type(this->_M_impl._M_end_of_storage
 2282              		.loc 5 559 0
 2283 001c 488B45C8 		movq	-56(%rbp), %rax
 2284 0020 488B4010 		movq	16(%rax), %rax
 560:/usr/include/c++/7/bits/vector.tcc **** 			- this->_M_impl._M_finish) >= __n)
 2285              		.loc 5 560 0
 2286 0024 4889C2   		movq	%rax, %rdx
 2287 0027 488B45C8 		movq	-56(%rbp), %rax
 2288 002b 488B4008 		movq	8(%rax), %rax
 2289 002f 4829C2   		subq	%rax, %rdx
 2290 0032 4889D0   		movq	%rdx, %rax
 2291 0035 48C1F803 		sarq	$3, %rax
 559:/usr/include/c++/7/bits/vector.tcc **** 			- this->_M_impl._M_finish) >= __n)
 2292              		.loc 5 559 0
 2293 0039 483945C0 		cmpq	%rax, -64(%rbp)
 2294 003d 7736     		ja	.L110
 561:/usr/include/c++/7/bits/vector.tcc **** 	    {
 562:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_finish =
 563:/usr/include/c++/7/bits/vector.tcc **** 		std::__uninitialized_default_n_a(this->_M_impl._M_finish,
 564:/usr/include/c++/7/bits/vector.tcc **** 						 __n, _M_get_Tp_allocator());
 2295              		.loc 5 564 0
 2296 003f 488B45C8 		movq	-56(%rbp), %rax
 2297 0043 4889C7   		movq	%rax, %rdi
 2298 0046 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2298      00
 2299 004b 4889C2   		movq	%rax, %rdx
 563:/usr/include/c++/7/bits/vector.tcc **** 						 __n, _M_get_Tp_allocator());
 2300              		.loc 5 563 0
 2301 004e 488B45C8 		movq	-56(%rbp), %rax
 2302 0052 488B4008 		movq	8(%rax), %rax
 2303 0056 488B4DC0 		movq	-64(%rbp), %rcx
 2304 005a 4889CE   		movq	%rcx, %rsi
 2305 005d 4889C7   		movq	%rax, %rdi
 2306              	.LEHB24:
 2307 0060 E8000000 		call	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
 2307      00
 2308 0065 4889C2   		movq	%rax, %rdx
 562:/usr/include/c++/7/bits/vector.tcc **** 		std::__uninitialized_default_n_a(this->_M_impl._M_finish,
 2309              		.loc 5 562 0
 2310 0068 488B45C8 		movq	-56(%rbp), %rax
 2311 006c 48895008 		movq	%rdx, 8(%rax)
 2312              	.LBE28:
 2313              	.LBE27:
 2314              	.LBE26:
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
 2315              		.loc 5 600 0
 2316 0070 E98F0100 		jmp	.L116
 2316      00
 2317              	.L110:
 2318              	.LBB35:
 2319              	.LBB33:
 2320              	.LBB31:
 2321              	.LBB29:
 568:/usr/include/c++/7/bits/vector.tcc **** 		_M_check_len(__n, "vector::_M_default_append");
 2322              		.loc 5 568 0
 2323 0075 488B4DC0 		movq	-64(%rbp), %rcx
 2324 0079 488B45C8 		movq	-56(%rbp), %rax
 2325 007d 488D1500 		leaq	.LC28(%rip), %rdx
 2325      000000
 2326 0084 4889CE   		movq	%rcx, %rsi
 2327 0087 4889C7   		movq	%rax, %rdi
 2328 008a E8000000 		call	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
 2328      00
 2329 008f 488945D8 		movq	%rax, -40(%rbp)
 570:/usr/include/c++/7/bits/vector.tcc **** 	      pointer __new_start(this->_M_allocate(__len));
 2330              		.loc 5 570 0
 2331 0093 488B45C8 		movq	-56(%rbp), %rax
 2332 0097 4889C7   		movq	%rax, %rdi
 2333 009a E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2333      00
 2334 009f 488945E0 		movq	%rax, -32(%rbp)
 571:/usr/include/c++/7/bits/vector.tcc **** 	      pointer __new_finish(__new_start);
 2335              		.loc 5 571 0
 2336 00a3 488B45C8 		movq	-56(%rbp), %rax
 2337 00a7 488B55D8 		movq	-40(%rbp), %rdx
 2338 00ab 4889D6   		movq	%rdx, %rsi
 2339 00ae 4889C7   		movq	%rax, %rdi
 2340 00b1 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
 2340      00
 2341              	.LEHE24:
 2342 00b6 488945E8 		movq	%rax, -24(%rbp)
 572:/usr/include/c++/7/bits/vector.tcc **** 	      __try
 2343              		.loc 5 572 0
 2344 00ba 488B45E8 		movq	-24(%rbp), %rax
 2345 00be 488945D0 		movq	%rax, -48(%rbp)
 578:/usr/include/c++/7/bits/vector.tcc **** 		  __new_finish =
 2346              		.loc 5 578 0
 2347 00c2 488B45C8 		movq	-56(%rbp), %rax
 2348 00c6 4889C7   		movq	%rax, %rdi
 2349 00c9 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2349      00
 2350 00ce 4889C1   		movq	%rax, %rcx
 577:/usr/include/c++/7/bits/vector.tcc **** 		     __new_start, _M_get_Tp_allocator());
 2351              		.loc 5 577 0
 2352 00d1 488B45C8 		movq	-56(%rbp), %rax
 2353 00d5 488B7008 		movq	8(%rax), %rsi
 2354 00d9 488B45C8 		movq	-56(%rbp), %rax
 2355 00dd 488B00   		movq	(%rax), %rax
 575:/usr/include/c++/7/bits/vector.tcc **** 		    = std::__uninitialized_move_if_noexcept_a
 2356              		.loc 5 575 0
 2357 00e0 488B55E8 		movq	-24(%rbp), %rdx
 2358 00e4 4889C7   		movq	%rax, %rdi
 2359              	.LEHB25:
 2360 00e7 E8000000 		call	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_
 2360      00
 2361 00ec 488945D0 		movq	%rax, -48(%rbp)
 581:/usr/include/c++/7/bits/vector.tcc **** 		}
 2362              		.loc 5 581 0
 2363 00f0 488B45C8 		movq	-56(%rbp), %rax
 2364 00f4 4889C7   		movq	%rax, %rdi
 2365 00f7 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2365      00
 2366 00fc 4889C2   		movq	%rax, %rdx
 579:/usr/include/c++/7/bits/vector.tcc **** 		    std::__uninitialized_default_n_a(__new_finish, __n,
 2367              		.loc 5 579 0
 2368 00ff 488B4DC0 		movq	-64(%rbp), %rcx
 2369 0103 488B45D0 		movq	-48(%rbp), %rax
 2370 0107 4889CE   		movq	%rcx, %rsi
 2371 010a 4889C7   		movq	%rax, %rdi
 2372 010d E8000000 		call	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
 2372      00
 2373              	.LEHE25:
 579:/usr/include/c++/7/bits/vector.tcc **** 		    std::__uninitialized_default_n_a(__new_finish, __n,
 2374              		.loc 5 579 0 is_stmt 0 discriminator 1
 2375 0112 488945D0 		movq	%rax, -48(%rbp)
 591:/usr/include/c++/7/bits/vector.tcc **** 	      _M_deallocate(this->_M_impl._M_start,
 2376              		.loc 5 591 0 is_stmt 1 discriminator 1
 2377 0116 488B45C8 		movq	-56(%rbp), %rax
 2378 011a 4889C7   		movq	%rax, %rdi
 2379 011d E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2379      00
 2380 0122 4889C2   		movq	%rax, %rdx
 590:/usr/include/c++/7/bits/vector.tcc **** 			    _M_get_Tp_allocator());
 2381              		.loc 5 590 0 discriminator 1
 2382 0125 488B45C8 		movq	-56(%rbp), %rax
 2383 0129 488B4808 		movq	8(%rax), %rcx
 2384 012d 488B45C8 		movq	-56(%rbp), %rax
 2385 0131 488B00   		movq	(%rax), %rax
 2386 0134 4889CE   		movq	%rcx, %rsi
 2387 0137 4889C7   		movq	%rax, %rdi
 2388              	.LEHB26:
 2389 013a E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 2389      00
 592:/usr/include/c++/7/bits/vector.tcc **** 			    this->_M_impl._M_end_of_storage
 2390              		.loc 5 592 0 discriminator 1
 2391 013f 488B45C8 		movq	-56(%rbp), %rax
 593:/usr/include/c++/7/bits/vector.tcc **** 			    - this->_M_impl._M_start);
 2392              		.loc 5 593 0 discriminator 1
 2393 0143 488B55C8 		movq	-56(%rbp), %rdx
 2394 0147 488B5210 		movq	16(%rdx), %rdx
 594:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_start = __new_start;
 2395              		.loc 5 594 0 discriminator 1
 2396 014b 4889D1   		movq	%rdx, %rcx
 2397 014e 488B55C8 		movq	-56(%rbp), %rdx
 2398 0152 488B12   		movq	(%rdx), %rdx
 2399 0155 4829D1   		subq	%rdx, %rcx
 2400 0158 4889CA   		movq	%rcx, %rdx
 2401 015b 48C1FA03 		sarq	$3, %rdx
 592:/usr/include/c++/7/bits/vector.tcc **** 			    this->_M_impl._M_end_of_storage
 2402              		.loc 5 592 0 discriminator 1
 2403 015f 4889D6   		movq	%rdx, %rsi
 2404 0162 488B55C8 		movq	-56(%rbp), %rdx
 2405 0166 488B0A   		movq	(%rdx), %rcx
 2406 0169 4889F2   		movq	%rsi, %rdx
 2407 016c 4889CE   		movq	%rcx, %rsi
 2408 016f 4889C7   		movq	%rax, %rdi
 2409 0172 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 2409      00
 2410              	.LEHE26:
 595:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_finish = __new_finish;
 2411              		.loc 5 595 0 discriminator 1
 2412 0177 488B45C8 		movq	-56(%rbp), %rax
 2413 017b 488B55E8 		movq	-24(%rbp), %rdx
 2414 017f 488910   		movq	%rdx, (%rax)
 596:/usr/include/c++/7/bits/vector.tcc **** 	      this->_M_impl._M_end_of_storage = __new_start + __len;
 2415              		.loc 5 596 0 discriminator 1
 2416 0182 488B45C8 		movq	-56(%rbp), %rax
 2417 0186 488B55D0 		movq	-48(%rbp), %rdx
 2418 018a 48895008 		movq	%rdx, 8(%rax)
 597:/usr/include/c++/7/bits/vector.tcc **** 	    }
 2419              		.loc 5 597 0 discriminator 1
 2420 018e 488B45D8 		movq	-40(%rbp), %rax
 2421 0192 488D14C5 		leaq	0(,%rax,8), %rdx
 2421      00000000 
 2422 019a 488B45E8 		movq	-24(%rbp), %rax
 2423 019e 4801C2   		addq	%rax, %rdx
 2424 01a1 488B45C8 		movq	-56(%rbp), %rax
 2425 01a5 48895010 		movq	%rdx, 16(%rax)
 2426              	.LBE29:
 2427              	.LBE31:
 2428              	.LBE33:
 2429              	.LBE35:
 2430              		.loc 5 600 0 discriminator 1
 2431 01a9 EB59     		jmp	.L116
 2432              	.L114:
 2433              	.LBB36:
 2434              	.LBB34:
 2435              	.LBB32:
 2436              	.LBB30:
 583:/usr/include/c++/7/bits/vector.tcc **** 		{
 2437              		.loc 5 583 0
 2438 01ab 4889C7   		movq	%rax, %rdi
 2439 01ae E8000000 		call	__cxa_begin_catch@PLT
 2439      00
 586:/usr/include/c++/7/bits/vector.tcc **** 		  _M_deallocate(__new_start, __len);
 2440              		.loc 5 586 0
 2441 01b3 488B45C8 		movq	-56(%rbp), %rax
 2442 01b7 4889C7   		movq	%rax, %rdi
 2443 01ba E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2443      00
 2444 01bf 4889C2   		movq	%rax, %rdx
 585:/usr/include/c++/7/bits/vector.tcc **** 				_M_get_Tp_allocator());
 2445              		.loc 5 585 0
 2446 01c2 488B4DD0 		movq	-48(%rbp), %rcx
 2447 01c6 488B45E8 		movq	-24(%rbp), %rax
 2448 01ca 4889CE   		movq	%rcx, %rsi
 2449 01cd 4889C7   		movq	%rax, %rdi
 2450              	.LEHB27:
 2451 01d0 E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 2451      00
 587:/usr/include/c++/7/bits/vector.tcc **** 		  __throw_exception_again;
 2452              		.loc 5 587 0
 2453 01d5 488B45C8 		movq	-56(%rbp), %rax
 2454 01d9 488B55D8 		movq	-40(%rbp), %rdx
 2455 01dd 488B4DE8 		movq	-24(%rbp), %rcx
 2456 01e1 4889CE   		movq	%rcx, %rsi
 2457 01e4 4889C7   		movq	%rax, %rdi
 2458 01e7 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 2458      00
 588:/usr/include/c++/7/bits/vector.tcc **** 		}
 2459              		.loc 5 588 0
 2460 01ec E8000000 		call	__cxa_rethrow@PLT
 2460      00
 2461              	.LEHE27:
 2462              	.L115:
 2463 01f1 4889C3   		movq	%rax, %rbx
 583:/usr/include/c++/7/bits/vector.tcc **** 		{
 2464              		.loc 5 583 0
 2465 01f4 E8000000 		call	__cxa_end_catch@PLT
 2465      00
 2466 01f9 4889D8   		movq	%rbx, %rax
 2467 01fc 4889C7   		movq	%rax, %rdi
 2468              	.LEHB28:
 2469 01ff E8000000 		call	_Unwind_Resume@PLT
 2469      00
 2470              	.LEHE28:
 2471              	.L116:
 2472              	.LBE30:
 2473              	.LBE32:
 2474              	.LBE34:
 2475              	.LBE36:
 2476              		.loc 5 600 0
 2477 0204 90       		nop
 2478 0205 4883C438 		addq	$56, %rsp
 2479 0209 5B       		popq	%rbx
 2480 020a 5D       		popq	%rbp
 2481              		.cfi_def_cfa 7, 8
 2482 020b C3       		ret
 2483              		.cfi_endproc
 2484              	.LFE2251:
 2485              		.section	.gcc_except_table
 2486 00aa 0000     		.align 4
 2487              	.LLSDA2251:
 2488 00ac FF       		.byte	0xff
 2489 00ad 9B       		.byte	0x9b
 2490 00ae 25       		.uleb128 .LLSDATT2251-.LLSDATTD2251
 2491              	.LLSDATTD2251:
 2492 00af 01       		.byte	0x1
 2493 00b0 1A       		.uleb128 .LLSDACSE2251-.LLSDACSB2251
 2494              	.LLSDACSB2251:
 2495 00b1 60       		.uleb128 .LEHB24-.LFB2251
 2496 00b2 56       		.uleb128 .LEHE24-.LEHB24
 2497 00b3 00       		.uleb128 0
 2498 00b4 00       		.uleb128 0
 2499 00b5 E701     		.uleb128 .LEHB25-.LFB2251
 2500 00b7 2B       		.uleb128 .LEHE25-.LEHB25
 2501 00b8 AB03     		.uleb128 .L114-.LFB2251
 2502 00ba 01       		.uleb128 0x1
 2503 00bb BA02     		.uleb128 .LEHB26-.LFB2251
 2504 00bd 3D       		.uleb128 .LEHE26-.LEHB26
 2505 00be 00       		.uleb128 0
 2506 00bf 00       		.uleb128 0
 2507 00c0 D003     		.uleb128 .LEHB27-.LFB2251
 2508 00c2 21       		.uleb128 .LEHE27-.LEHB27
 2509 00c3 F103     		.uleb128 .L115-.LFB2251
 2510 00c5 00       		.uleb128 0
 2511 00c6 FF03     		.uleb128 .LEHB28-.LFB2251
 2512 00c8 05       		.uleb128 .LEHE28-.LEHB28
 2513 00c9 00       		.uleb128 0
 2514 00ca 00       		.uleb128 0
 2515              	.LLSDACSE2251:
 2516 00cb 01       		.byte	0x1
 2517 00cc 00       		.byte	0
 2518 00cd 000000   		.align 4
 2519 00d0 00000000 		.long	0
 2520              	
 2521              	.LLSDATT2251:
 2522              		.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_
 2524              		.section	.text._ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd,"axG",@progbits,_ZNSt6vectorIdSaIdEE15_M_e
 2525              		.align 2
 2526              		.weak	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd
 2528              	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd:
 2529              	.LFB2252:
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
 2530              		.loc 2 1511 0
 2531              		.cfi_startproc
 2532              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 2533              		.cfi_lsda 0x1b,.LLSDA2252
 2534 0000 55       		pushq	%rbp
 2535              		.cfi_def_cfa_offset 16
 2536              		.cfi_offset 6, -16
 2537 0001 4889E5   		movq	%rsp, %rbp
 2538              		.cfi_def_cfa_register 6
 2539 0004 4883EC10 		subq	$16, %rsp
 2540 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2541 000c 488975F0 		movq	%rsi, -16(%rbp)
1512:/usr/include/c++/7/bits/stl_vector.h ****       {
1513:/usr/include/c++/7/bits/stl_vector.h **** 	std::_Destroy(__pos, this->_M_impl._M_finish, _M_get_Tp_allocator());
 2542              		.loc 2 1513 0
 2543 0010 488B45F8 		movq	-8(%rbp), %rax
 2544 0014 4889C7   		movq	%rax, %rdi
 2545 0017 E8000000 		call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 2545      00
 2546 001c 4889C2   		movq	%rax, %rdx
 2547 001f 488B45F8 		movq	-8(%rbp), %rax
 2548 0023 488B4808 		movq	8(%rax), %rcx
 2549 0027 488B45F0 		movq	-16(%rbp), %rax
 2550 002b 4889CE   		movq	%rcx, %rsi
 2551 002e 4889C7   		movq	%rax, %rdi
 2552 0031 E8000000 		call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
 2552      00
1514:/usr/include/c++/7/bits/stl_vector.h **** 	this->_M_impl._M_finish = __pos;
 2553              		.loc 2 1514 0
 2554 0036 488B45F8 		movq	-8(%rbp), %rax
 2555 003a 488B55F0 		movq	-16(%rbp), %rdx
 2556 003e 48895008 		movq	%rdx, 8(%rax)
1515:/usr/include/c++/7/bits/stl_vector.h ****       }
 2557              		.loc 2 1515 0
 2558 0042 90       		nop
 2559 0043 C9       		leave
 2560              		.cfi_def_cfa 7, 8
 2561 0044 C3       		ret
 2562              		.cfi_endproc
 2563              	.LFE2252:
 2564              		.section	.gcc_except_table
 2565              	.LLSDA2252:
 2566 00d4 FF       		.byte	0xff
 2567 00d5 FF       		.byte	0xff
 2568 00d6 01       		.byte	0x1
 2569 00d7 00       		.uleb128 .LLSDACSE2252-.LLSDACSB2252
 2570              	.LLSDACSB2252:
 2571              	.LLSDACSE2252:
 2572              		.section	.text._ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd,"axG",@progbits,_ZNSt6vectorIdSaIdEE15_M_e
 2574              		.section	.text._ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_,"axG",@progbits,_ZN9_
 2575              		.align 2
 2576              		.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
 2578              	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_:
 2579              	.LFB2266:
 779:/usr/include/c++/7/bits/stl_iterator.h ****       : _M_current(__i) { }
 2580              		.loc 3 779 0
 2581              		.cfi_startproc
 2582 0000 55       		pushq	%rbp
 2583              		.cfi_def_cfa_offset 16
 2584              		.cfi_offset 6, -16
 2585 0001 4889E5   		movq	%rsp, %rbp
 2586              		.cfi_def_cfa_register 6
 2587 0004 48897DF8 		movq	%rdi, -8(%rbp)
 2588 0008 488975F0 		movq	%rsi, -16(%rbp)
 2589              	.LBB37:
 780:/usr/include/c++/7/bits/stl_iterator.h **** 
 2590              		.loc 3 780 0
 2591 000c 488B45F0 		movq	-16(%rbp), %rax
 2592 0010 488B10   		movq	(%rax), %rdx
 2593 0013 488B45F8 		movq	-8(%rbp), %rax
 2594 0017 488910   		movq	%rdx, (%rax)
 2595              	.LBE37:
 2596 001a 90       		nop
 2597 001b 5D       		popq	%rbp
 2598              		.cfi_def_cfa 7, 8
 2599 001c C3       		ret
 2600              		.cfi_endproc
 2601              	.LFE2266:
 2603              		.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
 2604              		.set	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iterato
 2605              		.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv,"axG",@progbits,_ZNK9
 2606              		.align 2
 2607              		.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
 2609              	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv:
 2610              	.LFB2268:
 844:/usr/include/c++/7/bits/stl_iterator.h ****       { return _M_current; }
 2611              		.loc 3 844 0
 2612              		.cfi_startproc
 2613 0000 55       		pushq	%rbp
 2614              		.cfi_def_cfa_offset 16
 2615              		.cfi_offset 6, -16
 2616 0001 4889E5   		movq	%rsp, %rbp
 2617              		.cfi_def_cfa_register 6
 2618 0004 48897DF8 		movq	%rdi, -8(%rbp)
 845:/usr/include/c++/7/bits/stl_iterator.h ****     };
 2619              		.loc 3 845 0
 2620 0008 488B45F8 		movq	-8(%rbp), %rax
 2621 000c 5D       		popq	%rbp
 2622              		.cfi_def_cfa 7, 8
 2623 000d C3       		ret
 2624              		.cfi_endproc
 2625              	.LFE2268:
 2627              		.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseId
 2628              		.align 2
 2629              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
 2631              	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev:
 2632              	.LFB2296:
  88:/usr/include/c++/7/bits/stl_vector.h **** 	: _Tp_alloc_type(), _M_start(), _M_finish(), _M_end_of_storage()
 2633              		.loc 2 88 0
 2634              		.cfi_startproc
 2635 0000 55       		pushq	%rbp
 2636              		.cfi_def_cfa_offset 16
 2637              		.cfi_offset 6, -16
 2638 0001 4889E5   		movq	%rsp, %rbp
 2639              		.cfi_def_cfa_register 6
 2640 0004 4883EC10 		subq	$16, %rsp
 2641 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2642              	.LBB38:
  89:/usr/include/c++/7/bits/stl_vector.h **** 	{ }
 2643              		.loc 2 89 0
 2644 000c 488B45F8 		movq	-8(%rbp), %rax
 2645 0010 4889C7   		movq	%rax, %rdi
 2646 0013 E8000000 		call	_ZNSaIdEC2Ev
 2646      00
 2647 0018 488B45F8 		movq	-8(%rbp), %rax
 2648 001c 48C70000 		movq	$0, (%rax)
 2648      000000
 2649 0023 488B45F8 		movq	-8(%rbp), %rax
 2650 0027 48C74008 		movq	$0, 8(%rax)
 2650      00000000 
 2651 002f 488B45F8 		movq	-8(%rbp), %rax
 2652 0033 48C74010 		movq	$0, 16(%rax)
 2652      00000000 
 2653              	.LBE38:
  90:/usr/include/c++/7/bits/stl_vector.h **** 
 2654              		.loc 2 90 0
 2655 003b 90       		nop
 2656 003c C9       		leave
 2657              		.cfi_def_cfa 7, 8
 2658 003d C3       		ret
 2659              		.cfi_endproc
 2660              	.LFE2296:
 2662              		.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
 2663              		.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
 2664              		.section	.text._ZNSaIdED2Ev,"axG",@progbits,_ZNSaIdED5Ev,comdat
 2665              		.align 2
 2666              		.weak	_ZNSaIdED2Ev
 2668              	_ZNSaIdED2Ev:
 2669              	.LFB2299:
 2670              		.file 6 "/usr/include/c++/7/bits/allocator.h"
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
 2671              		.loc 6 139 0
 2672              		.cfi_startproc
 2673 0000 55       		pushq	%rbp
 2674              		.cfi_def_cfa_offset 16
 2675              		.cfi_offset 6, -16
 2676 0001 4889E5   		movq	%rsp, %rbp
 2677              		.cfi_def_cfa_register 6
 2678 0004 4883EC10 		subq	$16, %rsp
 2679 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2680              	.LBB39:
 2681              		.loc 6 139 0
 2682 000c 488B45F8 		movq	-8(%rbp), %rax
 2683 0010 4889C7   		movq	%rax, %rdi
 2684 0013 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdED2Ev
 2684      00
 2685              	.LBE39:
 2686 0018 90       		nop
 2687 0019 C9       		leave
 2688              		.cfi_def_cfa 7, 8
 2689 001a C3       		ret
 2690              		.cfi_endproc
 2691              	.LFE2299:
 2693              		.weak	_ZNSaIdED1Ev
 2694              		.set	_ZNSaIdED1Ev,_ZNSaIdED2Ev
 2695              		.section	.text._ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,"axG",@progbits,_ZNSt12_Vector_baseI
 2696              		.align 2
 2697              		.weak	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
 2699              	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm:
 2700              	.LFB2301:
 176:/usr/include/c++/7/bits/stl_vector.h ****       {
 2701              		.loc 2 176 0
 2702              		.cfi_startproc
 2703 0000 55       		pushq	%rbp
 2704              		.cfi_def_cfa_offset 16
 2705              		.cfi_offset 6, -16
 2706 0001 4889E5   		movq	%rsp, %rbp
 2707              		.cfi_def_cfa_register 6
 2708 0004 4883EC20 		subq	$32, %rsp
 2709 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2710 000c 488975F0 		movq	%rsi, -16(%rbp)
 2711 0010 488955E8 		movq	%rdx, -24(%rbp)
 179:/usr/include/c++/7/bits/stl_vector.h **** 	  _Tr::deallocate(_M_impl, __p, __n);
 2712              		.loc 2 179 0
 2713 0014 48837DF0 		cmpq	$0, -16(%rbp)
 2713      00
 2714 0019 7417     		je	.L125
 180:/usr/include/c++/7/bits/stl_vector.h ****       }
 2715              		.loc 2 180 0
 2716 001b 488B45F8 		movq	-8(%rbp), %rax
 2717 001f 488B55E8 		movq	-24(%rbp), %rdx
 2718 0023 488B4DF0 		movq	-16(%rbp), %rcx
 2719 0027 4889CE   		movq	%rcx, %rsi
 2720 002a 4889C7   		movq	%rax, %rdi
 2721 002d E8000000 		call	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
 2721      00
 2722              	.L125:
 181:/usr/include/c++/7/bits/stl_vector.h **** 
 2723              		.loc 2 181 0
 2724 0032 90       		nop
 2725 0033 C9       		leave
 2726              		.cfi_def_cfa 7, 8
 2727 0034 C3       		ret
 2728              		.cfi_endproc
 2729              	.LFE2301:
 2731              		.section	.text._ZSt8_DestroyIPdEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPdEvT_S1_,comdat
 2732              		.weak	_ZSt8_DestroyIPdEvT_S1_
 2734              	_ZSt8_DestroyIPdEvT_S1_:
 2735              	.LFB2302:
 127:/usr/include/c++/7/bits/stl_construct.h ****     {
 2736              		.loc 4 127 0
 2737              		.cfi_startproc
 2738 0000 55       		pushq	%rbp
 2739              		.cfi_def_cfa_offset 16
 2740              		.cfi_offset 6, -16
 2741 0001 4889E5   		movq	%rsp, %rbp
 2742              		.cfi_def_cfa_register 6
 2743 0004 4883EC10 		subq	$16, %rsp
 2744 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2745 000c 488975F0 		movq	%rsi, -16(%rbp)
 137:/usr/include/c++/7/bits/stl_construct.h ****     }
 2746              		.loc 4 137 0
 2747 0010 488B55F0 		movq	-16(%rbp), %rdx
 2748 0014 488B45F8 		movq	-8(%rbp), %rax
 2749 0018 4889D6   		movq	%rdx, %rsi
 2750 001b 4889C7   		movq	%rax, %rdi
 2751 001e E8000000 		call	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
 2751      00
 138:/usr/include/c++/7/bits/stl_construct.h **** 
 2752              		.loc 4 138 0
 2753 0023 90       		nop
 2754 0024 C9       		leave
 2755              		.cfi_def_cfa 7, 8
 2756 0025 C3       		ret
 2757              		.cfi_endproc
 2758              	.LFE2302:
 2760              		.section	.text._ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uni
 2761              		.weak	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
 2763              	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E:
 2764              	.LFB2304:
 2765              		.file 7 "/usr/include/c++/7/bits/stl_uninitialized.h"
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
 2766              		.loc 7 643 0
 2767              		.cfi_startproc
 2768 0000 55       		pushq	%rbp
 2769              		.cfi_def_cfa_offset 16
 2770              		.cfi_offset 6, -16
 2771 0001 4889E5   		movq	%rsp, %rbp
 2772              		.cfi_def_cfa_register 6
 2773 0004 4883EC20 		subq	$32, %rsp
 2774 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2775 000c 488975F0 		movq	%rsi, -16(%rbp)
 2776 0010 488955E8 		movq	%rdx, -24(%rbp)
 644:/usr/include/c++/7/bits/stl_uninitialized.h **** 				allocator<_Tp>&)
 645:/usr/include/c++/7/bits/stl_uninitialized.h ****     { return std::__uninitialized_default_n(__first, __n); }
 2777              		.loc 7 645 0
 2778 0014 488B55F0 		movq	-16(%rbp), %rdx
 2779 0018 488B45F8 		movq	-8(%rbp), %rax
 2780 001c 4889D6   		movq	%rdx, %rsi
 2781 001f 4889C7   		movq	%rax, %rdi
 2782 0022 E8000000 		call	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
 2782      00
 2783 0027 C9       		leave
 2784              		.cfi_def_cfa 7, 8
 2785 0028 C3       		ret
 2786              		.cfi_endproc
 2787              	.LFE2304:
 2789              		.section	.text._ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIdSaIdEE12_M_
 2790              		.align 2
 2791              		.weak	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
 2793              	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc:
 2794              	.LFB2305:
1497:/usr/include/c++/7/bits/stl_vector.h ****       {
 2795              		.loc 2 1497 0
 2796              		.cfi_startproc
 2797 0000 55       		pushq	%rbp
 2798              		.cfi_def_cfa_offset 16
 2799              		.cfi_offset 6, -16
 2800 0001 4889E5   		movq	%rsp, %rbp
 2801              		.cfi_def_cfa_register 6
 2802 0004 53       		pushq	%rbx
 2803 0005 4883EC48 		subq	$72, %rsp
 2804              		.cfi_offset 3, -24
 2805 0009 48897DC8 		movq	%rdi, -56(%rbp)
 2806 000d 488975C0 		movq	%rsi, -64(%rbp)
 2807 0011 488955B8 		movq	%rdx, -72(%rbp)
1497:/usr/include/c++/7/bits/stl_vector.h ****       {
 2808              		.loc 2 1497 0
 2809 0015 64488B04 		movq	%fs:40, %rax
 2809      25280000 
 2809      00
 2810 001e 488945E8 		movq	%rax, -24(%rbp)
 2811 0022 31C0     		xorl	%eax, %eax
1499:/usr/include/c++/7/bits/stl_vector.h **** 	  __throw_length_error(__N(__s));
 2812              		.loc 2 1499 0
 2813 0024 488B45C8 		movq	-56(%rbp), %rax
 2814 0028 4889C7   		movq	%rax, %rdi
 2815 002b E8000000 		call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 2815      00
 2816 0030 4889C3   		movq	%rax, %rbx
 2817 0033 488B45C8 		movq	-56(%rbp), %rax
 2818 0037 4889C7   		movq	%rax, %rdi
 2819 003a E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2819      00
 2820 003f 4829C3   		subq	%rax, %rbx
 2821 0042 4889DA   		movq	%rbx, %rdx
 2822 0045 488B45C0 		movq	-64(%rbp), %rax
 2823 0049 4839C2   		cmpq	%rax, %rdx
 2824 004c 0F92C0   		setb	%al
 2825 004f 84C0     		testb	%al, %al
 2826 0051 740C     		je	.L130
1500:/usr/include/c++/7/bits/stl_vector.h **** 
 2827              		.loc 2 1500 0
 2828 0053 488B45B8 		movq	-72(%rbp), %rax
 2829 0057 4889C7   		movq	%rax, %rdi
 2830 005a E8000000 		call	_ZSt20__throw_length_errorPKc@PLT
 2830      00
 2831              	.L130:
1502:/usr/include/c++/7/bits/stl_vector.h **** 	return (__len < size() || __len > max_size()) ? max_size() : __len;
 2832              		.loc 2 1502 0
 2833 005f 488B45C8 		movq	-56(%rbp), %rax
 2834 0063 4889C7   		movq	%rax, %rdi
 2835 0066 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2835      00
 2836 006b 4889C3   		movq	%rax, %rbx
 2837 006e 488B45C8 		movq	-56(%rbp), %rax
 2838 0072 4889C7   		movq	%rax, %rdi
 2839 0075 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2839      00
 2840 007a 488945D8 		movq	%rax, -40(%rbp)
 2841 007e 488D55C0 		leaq	-64(%rbp), %rdx
 2842 0082 488D45D8 		leaq	-40(%rbp), %rax
 2843 0086 4889D6   		movq	%rdx, %rsi
 2844 0089 4889C7   		movq	%rax, %rdi
 2845 008c E8000000 		call	_ZSt3maxImERKT_S2_S2_
 2845      00
 2846 0091 488B00   		movq	(%rax), %rax
 2847 0094 4801D8   		addq	%rbx, %rax
 2848 0097 488945E0 		movq	%rax, -32(%rbp)
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2849              		.loc 2 1503 0
 2850 009b 488B45C8 		movq	-56(%rbp), %rax
 2851 009f 4889C7   		movq	%rax, %rdi
 2852 00a2 E8000000 		call	_ZNKSt6vectorIdSaIdEE4sizeEv
 2852      00
 2853 00a7 483945E0 		cmpq	%rax, -32(%rbp)
 2854 00ab 7212     		jb	.L131
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2855              		.loc 2 1503 0 is_stmt 0 discriminator 2
 2856 00ad 488B45C8 		movq	-56(%rbp), %rax
 2857 00b1 4889C7   		movq	%rax, %rdi
 2858 00b4 E8000000 		call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 2858      00
 2859 00b9 483945E0 		cmpq	%rax, -32(%rbp)
 2860 00bd 760E     		jbe	.L132
 2861              	.L131:
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2862              		.loc 2 1503 0 discriminator 3
 2863 00bf 488B45C8 		movq	-56(%rbp), %rax
 2864 00c3 4889C7   		movq	%rax, %rdi
 2865 00c6 E8000000 		call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 2865      00
 2866 00cb EB04     		jmp	.L133
 2867              	.L132:
1503:/usr/include/c++/7/bits/stl_vector.h ****       }
 2868              		.loc 2 1503 0 discriminator 4
 2869 00cd 488B45E0 		movq	-32(%rbp), %rax
 2870              	.L133:
1504:/usr/include/c++/7/bits/stl_vector.h **** 
 2871              		.loc 2 1504 0 is_stmt 1 discriminator 6
 2872 00d1 488B4DE8 		movq	-24(%rbp), %rcx
 2873 00d5 6448330C 		xorq	%fs:40, %rcx
 2873      25280000 
 2873      00
 2874 00de 7405     		je	.L135
1504:/usr/include/c++/7/bits/stl_vector.h **** 
 2875              		.loc 2 1504 0 is_stmt 0
 2876 00e0 E8000000 		call	__stack_chk_fail@PLT
 2876      00
 2877              	.L135:
 2878 00e5 4883C448 		addq	$72, %rsp
 2879 00e9 5B       		popq	%rbx
 2880 00ea 5D       		popq	%rbp
 2881              		.cfi_def_cfa 7, 8
 2882 00eb C3       		ret
 2883              		.cfi_endproc
 2884              	.LFE2305:
 2886              		.section	.text._ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaI
 2887              		.align 2
 2888              		.weak	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
 2890              	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm:
 2891              	.LFB2306:
 169:/usr/include/c++/7/bits/stl_vector.h ****       {
 2892              		.loc 2 169 0 is_stmt 1
 2893              		.cfi_startproc
 2894 0000 55       		pushq	%rbp
 2895              		.cfi_def_cfa_offset 16
 2896              		.cfi_offset 6, -16
 2897 0001 4889E5   		movq	%rsp, %rbp
 2898              		.cfi_def_cfa_register 6
 2899 0004 4883EC10 		subq	$16, %rsp
 2900 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2901 000c 488975F0 		movq	%rsi, -16(%rbp)
 172:/usr/include/c++/7/bits/stl_vector.h ****       }
 2902              		.loc 2 172 0
 2903 0010 48837DF0 		cmpq	$0, -16(%rbp)
 2903      00
 2904 0015 7415     		je	.L137
 172:/usr/include/c++/7/bits/stl_vector.h ****       }
 2905              		.loc 2 172 0 is_stmt 0 discriminator 1
 2906 0017 488B45F8 		movq	-8(%rbp), %rax
 2907 001b 488B55F0 		movq	-16(%rbp), %rdx
 2908 001f 4889D6   		movq	%rdx, %rsi
 2909 0022 4889C7   		movq	%rax, %rdi
 2910 0025 E8000000 		call	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
 2910      00
 2911 002a EB05     		jmp	.L139
 2912              	.L137:
 172:/usr/include/c++/7/bits/stl_vector.h ****       }
 2913              		.loc 2 172 0 discriminator 2
 2914 002c B8000000 		movl	$0, %eax
 2914      00
 2915              	.L139:
 173:/usr/include/c++/7/bits/stl_vector.h **** 
 2916              		.loc 2 173 0 is_stmt 1 discriminator 5
 2917 0031 C9       		leave
 2918              		.cfi_def_cfa 7, 8
 2919 0032 C3       		ret
 2920              		.cfi_endproc
 2921              	.LFE2306:
 2923              		.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_,"axG",@progbits
 2924              		.weak	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_
 2926              	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_:
 2927              	.LFB2307:
 305:/usr/include/c++/7/bits/stl_uninitialized.h **** 				       _InputIterator __last,
 2928              		.loc 7 305 0
 2929              		.cfi_startproc
 2930 0000 55       		pushq	%rbp
 2931              		.cfi_def_cfa_offset 16
 2932              		.cfi_offset 6, -16
 2933 0001 4889E5   		movq	%rsp, %rbp
 2934              		.cfi_def_cfa_register 6
 2935 0004 53       		pushq	%rbx
 2936 0005 4883EC28 		subq	$40, %rsp
 2937              		.cfi_offset 3, -24
 2938 0009 48897DE8 		movq	%rdi, -24(%rbp)
 2939 000d 488975E0 		movq	%rsi, -32(%rbp)
 2940 0011 488955D8 		movq	%rdx, -40(%rbp)
 2941 0015 48894DD0 		movq	%rcx, -48(%rbp)
 311:/usr/include/c++/7/bits/stl_uninitialized.h **** 	 _GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__last), __result, __alloc);
 2942              		.loc 7 311 0
 2943 0019 488B45E0 		movq	-32(%rbp), %rax
 2944 001d 4889C7   		movq	%rax, %rdi
 2945 0020 E8000000 		call	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_
 2945      00
 2946 0025 4889C3   		movq	%rax, %rbx
 2947 0028 488B45E8 		movq	-24(%rbp), %rax
 2948 002c 4889C7   		movq	%rax, %rdi
 2949 002f E8000000 		call	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_
 2949      00
 2950 0034 4889C7   		movq	%rax, %rdi
 312:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 2951              		.loc 7 312 0
 2952 0037 488B55D0 		movq	-48(%rbp), %rdx
 2953 003b 488B45D8 		movq	-40(%rbp), %rax
 2954 003f 4889D1   		movq	%rdx, %rcx
 2955 0042 4889C2   		movq	%rax, %rdx
 2956 0045 4889DE   		movq	%rbx, %rsi
 2957 0048 E8000000 		call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E
 2957      00
 313:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 2958              		.loc 7 313 0
 2959 004d 4883C428 		addq	$40, %rsp
 2960 0051 5B       		popq	%rbx
 2961 0052 5D       		popq	%rbp
 2962              		.cfi_def_cfa 7, 8
 2963 0053 C3       		ret
 2964              		.cfi_endproc
 2965              	.LFE2307:
 2967              		.section	.text._ZNSaIdEC2Ev,"axG",@progbits,_ZNSaIdEC5Ev,comdat
 2968              		.align 2
 2969              		.weak	_ZNSaIdEC2Ev
 2971              	_ZNSaIdEC2Ev:
 2972              	.LFB2345:
 131:/usr/include/c++/7/bits/allocator.h **** 
 2973              		.loc 6 131 0
 2974              		.cfi_startproc
 2975 0000 55       		pushq	%rbp
 2976              		.cfi_def_cfa_offset 16
 2977              		.cfi_offset 6, -16
 2978 0001 4889E5   		movq	%rsp, %rbp
 2979              		.cfi_def_cfa_register 6
 2980 0004 4883EC10 		subq	$16, %rsp
 2981 0008 48897DF8 		movq	%rdi, -8(%rbp)
 2982              	.LBB40:
 131:/usr/include/c++/7/bits/allocator.h **** 
 2983              		.loc 6 131 0
 2984 000c 488B45F8 		movq	-8(%rbp), %rax
 2985 0010 4889C7   		movq	%rax, %rdi
 2986 0013 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
 2986      00
 2987              	.LBE40:
 2988 0018 90       		nop
 2989 0019 C9       		leave
 2990              		.cfi_def_cfa 7, 8
 2991 001a C3       		ret
 2992              		.cfi_endproc
 2993              	.LFE2345:
 2995              		.weak	_ZNSaIdEC1Ev
 2996              		.set	_ZNSaIdEC1Ev,_ZNSaIdEC2Ev
 2997              		.section	.text._ZN9__gnu_cxx13new_allocatorIdED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE
 2998              		.align 2
 2999              		.weak	_ZN9__gnu_cxx13new_allocatorIdED2Ev
 3001              	_ZN9__gnu_cxx13new_allocatorIdED2Ev:
 3002              	.LFB2348:
 3003              		.file 8 "/usr/include/c++/7/ext/new_allocator.h"
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
 3004              		.loc 8 86 0
 3005              		.cfi_startproc
 3006 0000 55       		pushq	%rbp
 3007              		.cfi_def_cfa_offset 16
 3008              		.cfi_offset 6, -16
 3009 0001 4889E5   		movq	%rsp, %rbp
 3010              		.cfi_def_cfa_register 6
 3011 0004 48897DF8 		movq	%rdi, -8(%rbp)
 3012              		.loc 8 86 0
 3013 0008 90       		nop
 3014 0009 5D       		popq	%rbp
 3015              		.cfi_def_cfa 7, 8
 3016 000a C3       		ret
 3017              		.cfi_endproc
 3018              	.LFE2348:
 3020              		.weak	_ZN9__gnu_cxx13new_allocatorIdED1Ev
 3021              		.set	_ZN9__gnu_cxx13new_allocatorIdED1Ev,_ZN9__gnu_cxx13new_allocatorIdED2Ev
 3022              		.section	.text._ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,"axG",@progbits,_ZNSt16allocator
 3023              		.weak	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
 3025              	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm:
 3026              	.LFB2350:
 3027              		.file 9 "/usr/include/c++/7/bits/alloc_traits.h"
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
 3028              		.loc 9 461 0
 3029              		.cfi_startproc
 3030 0000 55       		pushq	%rbp
 3031              		.cfi_def_cfa_offset 16
 3032              		.cfi_offset 6, -16
 3033 0001 4889E5   		movq	%rsp, %rbp
 3034              		.cfi_def_cfa_register 6
 3035 0004 4883EC20 		subq	$32, %rsp
 3036 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3037 000c 488975F0 		movq	%rsi, -16(%rbp)
 3038 0010 488955E8 		movq	%rdx, -24(%rbp)
 462:/usr/include/c++/7/bits/alloc_traits.h ****       { __a.deallocate(__p, __n); }
 3039              		.loc 9 462 0
 3040 0014 488B55E8 		movq	-24(%rbp), %rdx
 3041 0018 488B4DF0 		movq	-16(%rbp), %rcx
 3042 001c 488B45F8 		movq	-8(%rbp), %rax
 3043 0020 4889CE   		movq	%rcx, %rsi
 3044 0023 4889C7   		movq	%rax, %rdi
 3045 0026 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
 3045      00
 3046 002b 90       		nop
 3047 002c C9       		leave
 3048              		.cfi_def_cfa 7, 8
 3049 002d C3       		ret
 3050              		.cfi_endproc
 3051              	.LFE2350:
 3053              		.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxI
 3054              		.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
 3056              	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_:
 3057              	.LFB2351:
 117:/usr/include/c++/7/bits/stl_construct.h ****     };
 3058              		.loc 4 117 0
 3059              		.cfi_startproc
 3060 0000 55       		pushq	%rbp
 3061              		.cfi_def_cfa_offset 16
 3062              		.cfi_offset 6, -16
 3063 0001 4889E5   		movq	%rsp, %rbp
 3064              		.cfi_def_cfa_register 6
 3065 0004 48897DF8 		movq	%rdi, -8(%rbp)
 3066 0008 488975F0 		movq	%rsi, -16(%rbp)
 117:/usr/include/c++/7/bits/stl_construct.h ****     };
 3067              		.loc 4 117 0
 3068 000c 90       		nop
 3069 000d 5D       		popq	%rbp
 3070              		.cfi_def_cfa 7, 8
 3071 000e C3       		ret
 3072              		.cfi_endproc
 3073              	.LFE2351:
 3075              		.section	.text._ZSt25__uninitialized_default_nIPdmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_
 3076              		.weak	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
 3078              	_ZSt25__uninitialized_default_nIPdmET_S1_T0_:
 3079              	.LFB2352:
 574:/usr/include/c++/7/bits/stl_uninitialized.h ****     {
 3080              		.loc 7 574 0
 3081              		.cfi_startproc
 3082 0000 55       		pushq	%rbp
 3083              		.cfi_def_cfa_offset 16
 3084              		.cfi_offset 6, -16
 3085 0001 4889E5   		movq	%rsp, %rbp
 3086              		.cfi_def_cfa_register 6
 3087 0004 4883EC20 		subq	$32, %rsp
 3088 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3089 000c 488975E0 		movq	%rsi, -32(%rbp)
 579:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 3090              		.loc 7 579 0
 3091 0010 C645FF01 		movb	$1, -1(%rbp)
 583:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 3092              		.loc 7 583 0
 3093 0014 488B55E0 		movq	-32(%rbp), %rdx
 3094 0018 488B45E8 		movq	-24(%rbp), %rax
 3095 001c 4889D6   		movq	%rdx, %rsi
 3096 001f 4889C7   		movq	%rax, %rdi
 3097 0022 E8000000 		call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
 3097      00
 584:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 3098              		.loc 7 584 0
 3099 0027 C9       		leave
 3100              		.cfi_def_cfa 7, 8
 3101 0028 C3       		ret
 3102              		.cfi_endproc
 3103              	.LFE2352:
 3105              		.section	.text._ZNKSt6vectorIdSaIdEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE8max_sizeEv,c
 3106              		.align 2
 3107              		.weak	_ZNKSt6vectorIdSaIdEE8max_sizeEv
 3109              	_ZNKSt6vectorIdSaIdEE8max_sizeEv:
 3110              	.LFB2353:
 675:/usr/include/c++/7/bits/stl_vector.h ****       { return _Alloc_traits::max_size(_M_get_Tp_allocator()); }
 3111              		.loc 2 675 0
 3112              		.cfi_startproc
 3113 0000 55       		pushq	%rbp
 3114              		.cfi_def_cfa_offset 16
 3115              		.cfi_offset 6, -16
 3116 0001 4889E5   		movq	%rsp, %rbp
 3117              		.cfi_def_cfa_register 6
 3118 0004 4883EC10 		subq	$16, %rsp
 3119 0008 48897DF8 		movq	%rdi, -8(%rbp)
 676:/usr/include/c++/7/bits/stl_vector.h **** 
 3120              		.loc 2 676 0
 3121 000c 488B45F8 		movq	-8(%rbp), %rax
 3122 0010 4889C7   		movq	%rax, %rdi
 3123 0013 E8000000 		call	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 3123      00
 3124 0018 4889C7   		movq	%rax, %rdi
 3125 001b E8000000 		call	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
 3125      00
 3126 0020 C9       		leave
 3127              		.cfi_def_cfa 7, 8
 3128 0021 C3       		ret
 3129              		.cfi_endproc
 3130              	.LFE2353:
 3132              		.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
 3133              		.weak	_ZSt3maxImERKT_S2_S2_
 3135              	_ZSt3maxImERKT_S2_S2_:
 3136              	.LFB2354:
 3137              		.file 10 "/usr/include/c++/7/bits/stl_algobase.h"
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
 3138              		.loc 10 219 0
 3139              		.cfi_startproc
 3140 0000 55       		pushq	%rbp
 3141              		.cfi_def_cfa_offset 16
 3142              		.cfi_offset 6, -16
 3143 0001 4889E5   		movq	%rsp, %rbp
 3144              		.cfi_def_cfa_register 6
 3145 0004 48897DF8 		movq	%rdi, -8(%rbp)
 3146 0008 488975F0 		movq	%rsi, -16(%rbp)
 220:/usr/include/c++/7/bits/stl_algobase.h ****     {
 221:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 222:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_LessThanComparableConcept<_Tp>)
 223:/usr/include/c++/7/bits/stl_algobase.h ****       //return  __a < __b ? __b : __a;
 224:/usr/include/c++/7/bits/stl_algobase.h ****       if (__a < __b)
 3147              		.loc 10 224 0
 3148 000c 488B45F8 		movq	-8(%rbp), %rax
 3149 0010 488B10   		movq	(%rax), %rdx
 3150 0013 488B45F0 		movq	-16(%rbp), %rax
 3151 0017 488B00   		movq	(%rax), %rax
 3152 001a 4839C2   		cmpq	%rax, %rdx
 3153 001d 7306     		jnb	.L151
 225:/usr/include/c++/7/bits/stl_algobase.h **** 	return __b;
 3154              		.loc 10 225 0
 3155 001f 488B45F0 		movq	-16(%rbp), %rax
 3156 0023 EB04     		jmp	.L152
 3157              	.L151:
 226:/usr/include/c++/7/bits/stl_algobase.h ****       return __a;
 3158              		.loc 10 226 0
 3159 0025 488B45F8 		movq	-8(%rbp), %rax
 3160              	.L152:
 227:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3161              		.loc 10 227 0
 3162 0029 5D       		popq	%rbp
 3163              		.cfi_def_cfa 7, 8
 3164 002a C3       		ret
 3165              		.cfi_endproc
 3166              	.LFE2354:
 3168              		.section	.text._ZNSt16allocator_traitsISaIdEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_trai
 3169              		.weak	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
 3171              	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m:
 3172              	.LFB2355:
 435:/usr/include/c++/7/bits/alloc_traits.h ****       { return __a.allocate(__n); }
 3173              		.loc 9 435 0
 3174              		.cfi_startproc
 3175 0000 55       		pushq	%rbp
 3176              		.cfi_def_cfa_offset 16
 3177              		.cfi_offset 6, -16
 3178 0001 4889E5   		movq	%rsp, %rbp
 3179              		.cfi_def_cfa_register 6
 3180 0004 4883EC10 		subq	$16, %rsp
 3181 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3182 000c 488975F0 		movq	%rsi, -16(%rbp)
 436:/usr/include/c++/7/bits/alloc_traits.h **** 
 3183              		.loc 9 436 0
 3184 0010 488B4DF0 		movq	-16(%rbp), %rcx
 3185 0014 488B45F8 		movq	-8(%rbp), %rax
 3186 0018 BA000000 		movl	$0, %edx
 3186      00
 3187 001d 4889CE   		movq	%rcx, %rsi
 3188 0020 4889C7   		movq	%rax, %rdi
 3189 0023 E8000000 		call	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
 3189      00
 3190 0028 C9       		leave
 3191              		.cfi_def_cfa 7, 8
 3192 0029 C3       		ret
 3193              		.cfi_endproc
 3194              	.LFE2355:
 3196              		.section	.text._ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_,"axG",@progbit
 3197              		.weak	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_
 3199              	_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_:
 3200              	.LFB2356:
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
 3201              		.loc 3 1221 0
 3202              		.cfi_startproc
 3203 0000 55       		pushq	%rbp
 3204              		.cfi_def_cfa_offset 16
 3205              		.cfi_offset 6, -16
 3206 0001 4889E5   		movq	%rsp, %rbp
 3207              		.cfi_def_cfa_register 6
 3208 0004 4883EC20 		subq	$32, %rsp
 3209 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3210              		.loc 3 1221 0
 3211 000c 64488B04 		movq	%fs:40, %rax
 3211      25280000 
 3211      00
 3212 0015 488945F8 		movq	%rax, -8(%rbp)
 3213 0019 31C0     		xorl	%eax, %eax
1222:/usr/include/c++/7/bits/stl_iterator.h ****     { return _ReturnType(__i); }
 3214              		.loc 3 1222 0
 3215 001b 488B55E8 		movq	-24(%rbp), %rdx
 3216 001f 488D45F0 		leaq	-16(%rbp), %rax
 3217 0023 4889D6   		movq	%rdx, %rsi
 3218 0026 4889C7   		movq	%rax, %rdi
 3219 0029 E8000000 		call	_ZNSt13move_iteratorIPdEC1ES0_
 3219      00
 3220 002e 488B45F0 		movq	-16(%rbp), %rax
 3221 0032 488B4DF8 		movq	-8(%rbp), %rcx
 3222 0036 6448330C 		xorq	%fs:40, %rcx
 3222      25280000 
 3222      00
 3223 003f 7405     		je	.L157
 3224 0041 E8000000 		call	__stack_chk_fail@PLT
 3224      00
 3225              	.L157:
 3226 0046 C9       		leave
 3227              		.cfi_def_cfa 7, 8
 3228 0047 C3       		ret
 3229              		.cfi_endproc
 3230              	.LFE2356:
 3232              		.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E,"axG",@p
 3233              		.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E
 3235              	_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E:
 3236              	.LFB2357:
 287:/usr/include/c++/7/bits/stl_uninitialized.h **** 			   _ForwardIterator __result, allocator<_Tp>&)
 3237              		.loc 7 287 0
 3238              		.cfi_startproc
 3239 0000 55       		pushq	%rbp
 3240              		.cfi_def_cfa_offset 16
 3241              		.cfi_offset 6, -16
 3242 0001 4889E5   		movq	%rsp, %rbp
 3243              		.cfi_def_cfa_register 6
 3244 0004 4883EC20 		subq	$32, %rsp
 3245 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3246 000c 488975F0 		movq	%rsi, -16(%rbp)
 3247 0010 488955E8 		movq	%rdx, -24(%rbp)
 3248 0014 48894DE0 		movq	%rcx, -32(%rbp)
 289:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 3249              		.loc 7 289 0
 3250 0018 488B55E8 		movq	-24(%rbp), %rdx
 3251 001c 488B4DF0 		movq	-16(%rbp), %rcx
 3252 0020 488B45F8 		movq	-8(%rbp), %rax
 3253 0024 4889CE   		movq	%rcx, %rsi
 3254 0027 4889C7   		movq	%rax, %rdi
 3255 002a E8000000 		call	_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 3255      00
 3256 002f C9       		leave
 3257              		.cfi_def_cfa 7, 8
 3258 0030 C3       		ret
 3259              		.cfi_endproc
 3260              	.LFE2357:
 3262              		.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE
 3263              		.align 2
 3264              		.weak	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
 3266              	_ZN9__gnu_cxx13new_allocatorIdEC2Ev:
 3267              	.LFB2393:
  79:/usr/include/c++/7/ext/new_allocator.h **** 
 3268              		.loc 8 79 0
 3269              		.cfi_startproc
 3270 0000 55       		pushq	%rbp
 3271              		.cfi_def_cfa_offset 16
 3272              		.cfi_offset 6, -16
 3273 0001 4889E5   		movq	%rsp, %rbp
 3274              		.cfi_def_cfa_register 6
 3275 0004 48897DF8 		movq	%rdi, -8(%rbp)
  79:/usr/include/c++/7/ext/new_allocator.h **** 
 3276              		.loc 8 79 0
 3277 0008 90       		nop
 3278 0009 5D       		popq	%rbp
 3279              		.cfi_def_cfa 7, 8
 3280 000a C3       		ret
 3281              		.cfi_endproc
 3282              	.LFE2393:
 3284              		.weak	_ZN9__gnu_cxx13new_allocatorIdEC1Ev
 3285              		.set	_ZN9__gnu_cxx13new_allocatorIdEC1Ev,_ZN9__gnu_cxx13new_allocatorIdEC2Ev
 3286              		.section	.text._ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,"axG",@progbits,_ZN9__gnu_cxx13new_
 3287              		.align 2
 3288              		.weak	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
 3290              	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm:
 3291              	.LFB2395:
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
 3292              		.loc 8 116 0
 3293              		.cfi_startproc
 3294 0000 55       		pushq	%rbp
 3295              		.cfi_def_cfa_offset 16
 3296              		.cfi_offset 6, -16
 3297 0001 4889E5   		movq	%rsp, %rbp
 3298              		.cfi_def_cfa_register 6
 3299 0004 4883EC20 		subq	$32, %rsp
 3300 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3301 000c 488975F0 		movq	%rsi, -16(%rbp)
 3302 0010 488955E8 		movq	%rdx, -24(%rbp)
 117:/usr/include/c++/7/ext/new_allocator.h ****       {
 118:/usr/include/c++/7/ext/new_allocator.h **** #if __cpp_aligned_new
 119:/usr/include/c++/7/ext/new_allocator.h **** 	if (alignof(_Tp) > __STDCPP_DEFAULT_NEW_ALIGNMENT__)
 120:/usr/include/c++/7/ext/new_allocator.h **** 	  {
 121:/usr/include/c++/7/ext/new_allocator.h **** 	    ::operator delete(__p, std::align_val_t(alignof(_Tp)));
 122:/usr/include/c++/7/ext/new_allocator.h **** 	    return;
 123:/usr/include/c++/7/ext/new_allocator.h **** 	  }
 124:/usr/include/c++/7/ext/new_allocator.h **** #endif
 125:/usr/include/c++/7/ext/new_allocator.h **** 	::operator delete(__p);
 3303              		.loc 8 125 0
 3304 0014 488B45F0 		movq	-16(%rbp), %rax
 3305 0018 4889C7   		movq	%rax, %rdi
 3306 001b E8000000 		call	_ZdlPv@PLT
 3306      00
 126:/usr/include/c++/7/ext/new_allocator.h ****       }
 3307              		.loc 8 126 0
 3308 0020 90       		nop
 3309 0021 C9       		leave
 3310              		.cfi_def_cfa 7, 8
 3311 0022 C3       		ret
 3312              		.cfi_endproc
 3313              	.LFE2395:
 3315              		.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_,"axG",@p
 3316              		.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
 3318              	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_:
 3319              	.LFB2396:
 543:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
 3320              		.loc 7 543 0
 3321              		.cfi_startproc
 3322 0000 55       		pushq	%rbp
 3323              		.cfi_def_cfa_offset 16
 3324              		.cfi_offset 6, -16
 3325 0001 4889E5   		movq	%rsp, %rbp
 3326              		.cfi_def_cfa_register 6
 3327 0004 4883EC20 		subq	$32, %rsp
 3328 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3329 000c 488975E0 		movq	%rsi, -32(%rbp)
 543:/usr/include/c++/7/bits/stl_uninitialized.h ****         {
 3330              		.loc 7 543 0
 3331 0010 64488B04 		movq	%fs:40, %rax
 3331      25280000 
 3331      00
 3332 0019 488945F8 		movq	%rax, -8(%rbp)
 3333 001d 31C0     		xorl	%eax, %eax
 548:/usr/include/c++/7/bits/stl_uninitialized.h **** 	}
 3334              		.loc 7 548 0
 3335 001f 660FEFC0 		pxor	%xmm0, %xmm0
 3336 0023 F20F1145 		movsd	%xmm0, -16(%rbp)
 3336      F0
 3337 0028 488D55F0 		leaq	-16(%rbp), %rdx
 3338 002c 488B4DE0 		movq	-32(%rbp), %rcx
 3339 0030 488B45E8 		movq	-24(%rbp), %rax
 3340 0034 4889CE   		movq	%rcx, %rsi
 3341 0037 4889C7   		movq	%rax, %rdi
 3342 003a E8000000 		call	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
 3342      00
 549:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 3343              		.loc 7 549 0
 3344 003f 488B4DF8 		movq	-8(%rbp), %rcx
 3345 0043 6448330C 		xorq	%fs:40, %rcx
 3345      25280000 
 3345      00
 3346 004c 7405     		je	.L164
 3347 004e E8000000 		call	__stack_chk_fail@PLT
 3347      00
 3348              	.L164:
 3349 0053 C9       		leave
 3350              		.cfi_def_cfa 7, 8
 3351 0054 C3       		ret
 3352              		.cfi_endproc
 3353              	.LFE2396:
 3355              		.section	.text._ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_trai
 3356              		.weak	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
 3358              	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_:
 3359              	.LFB2397:
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
 3360              		.loc 9 495 0
 3361              		.cfi_startproc
 3362 0000 55       		pushq	%rbp
 3363              		.cfi_def_cfa_offset 16
 3364              		.cfi_offset 6, -16
 3365 0001 4889E5   		movq	%rsp, %rbp
 3366              		.cfi_def_cfa_register 6
 3367 0004 4883EC10 		subq	$16, %rsp
 3368 0008 48897DF8 		movq	%rdi, -8(%rbp)
 496:/usr/include/c++/7/bits/alloc_traits.h ****       { return __a.max_size(); }
 3369              		.loc 9 496 0
 3370 000c 488B45F8 		movq	-8(%rbp), %rax
 3371 0010 4889C7   		movq	%rax, %rdi
 3372 0013 E8000000 		call	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
 3372      00
 3373 0018 C9       		leave
 3374              		.cfi_def_cfa 7, 8
 3375 0019 C3       		ret
 3376              		.cfi_endproc
 3377              	.LFE2397:
 3379              		.section	.text._ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector
 3380              		.align 2
 3381              		.weak	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
 3383              	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
 3384              	.LFB2398:
 119:/usr/include/c++/7/bits/stl_vector.h ****       { return *static_cast<const _Tp_alloc_type*>(&this->_M_impl); }
 3385              		.loc 2 119 0
 3386              		.cfi_startproc
 3387 0000 55       		pushq	%rbp
 3388              		.cfi_def_cfa_offset 16
 3389              		.cfi_offset 6, -16
 3390 0001 4889E5   		movq	%rsp, %rbp
 3391              		.cfi_def_cfa_register 6
 3392 0004 48897DF8 		movq	%rdi, -8(%rbp)
 120:/usr/include/c++/7/bits/stl_vector.h **** 
 3393              		.loc 2 120 0
 3394 0008 488B45F8 		movq	-8(%rbp), %rax
 3395 000c 5D       		popq	%rbp
 3396              		.cfi_def_cfa 7, 8
 3397 000d C3       		ret
 3398              		.cfi_endproc
 3399              	.LFE2398:
 3401              		.section	.text._ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_al
 3402              		.align 2
 3403              		.weak	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
 3405              	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv:
 3406              	.LFB2399:
  99:/usr/include/c++/7/ext/new_allocator.h ****       {
 3407              		.loc 8 99 0
 3408              		.cfi_startproc
 3409 0000 55       		pushq	%rbp
 3410              		.cfi_def_cfa_offset 16
 3411              		.cfi_offset 6, -16
 3412 0001 4889E5   		movq	%rsp, %rbp
 3413              		.cfi_def_cfa_register 6
 3414 0004 4883EC20 		subq	$32, %rsp
 3415 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3416 000c 488975F0 		movq	%rsi, -16(%rbp)
 3417 0010 488955E8 		movq	%rdx, -24(%rbp)
 101:/usr/include/c++/7/ext/new_allocator.h **** 	  std::__throw_bad_alloc();
 3418              		.loc 8 101 0
 3419 0014 488B45F8 		movq	-8(%rbp), %rax
 3420 0018 4889C7   		movq	%rax, %rdi
 3421 001b E8000000 		call	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
 3421      00
 3422 0020 483945F0 		cmpq	%rax, -16(%rbp)
 3423 0024 0F97C0   		seta	%al
 3424 0027 84C0     		testb	%al, %al
 3425 0029 7405     		je	.L170
 102:/usr/include/c++/7/ext/new_allocator.h **** 
 3426              		.loc 8 102 0
 3427 002b E8000000 		call	_ZSt17__throw_bad_allocv@PLT
 3427      00
 3428              	.L170:
 111:/usr/include/c++/7/ext/new_allocator.h ****       }
 3429              		.loc 8 111 0
 3430 0030 488B45F0 		movq	-16(%rbp), %rax
 3431 0034 48C1E003 		salq	$3, %rax
 3432 0038 4889C7   		movq	%rax, %rdi
 3433 003b E8000000 		call	_Znwm@PLT
 3433      00
 112:/usr/include/c++/7/ext/new_allocator.h **** 
 3434              		.loc 8 112 0
 3435 0040 C9       		leave
 3436              		.cfi_def_cfa 7, 8
 3437 0041 C3       		ret
 3438              		.cfi_endproc
 3439              	.LFE2399:
 3441              		.section	.text._ZNSt13move_iteratorIPdEC2ES0_,"axG",@progbits,_ZNSt13move_iteratorIPdEC5ES0_,comda
 3442              		.align 2
 3443              		.weak	_ZNSt13move_iteratorIPdEC2ES0_
 3445              	_ZNSt13move_iteratorIPdEC2ES0_:
 3446              	.LFB2401:
1036:/usr/include/c++/7/bits/stl_iterator.h ****       : _M_current(__i) { }
 3447              		.loc 3 1036 0
 3448              		.cfi_startproc
 3449 0000 55       		pushq	%rbp
 3450              		.cfi_def_cfa_offset 16
 3451              		.cfi_offset 6, -16
 3452 0001 4889E5   		movq	%rsp, %rbp
 3453              		.cfi_def_cfa_register 6
 3454 0004 48897DF8 		movq	%rdi, -8(%rbp)
 3455 0008 488975F0 		movq	%rsi, -16(%rbp)
 3456              	.LBB41:
1037:/usr/include/c++/7/bits/stl_iterator.h **** 
 3457              		.loc 3 1037 0
 3458 000c 488B45F8 		movq	-8(%rbp), %rax
 3459 0010 488B55F0 		movq	-16(%rbp), %rdx
 3460 0014 488910   		movq	%rdx, (%rax)
 3461              	.LBE41:
 3462 0017 90       		nop
 3463 0018 5D       		popq	%rbp
 3464              		.cfi_def_cfa 7, 8
 3465 0019 C3       		ret
 3466              		.cfi_endproc
 3467              	.LFE2401:
 3469              		.weak	_ZNSt13move_iteratorIPdEC1ES0_
 3470              		.set	_ZNSt13move_iteratorIPdEC1ES0_,_ZNSt13move_iteratorIPdEC2ES0_
 3471              		.section	.text._ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt1
 3472              		.weak	_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 3474              	_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_:
 3475              	.LFB2403:
 115:/usr/include/c++/7/bits/stl_uninitialized.h **** 		       _ForwardIterator __result)
 3476              		.loc 7 115 0
 3477              		.cfi_startproc
 3478 0000 55       		pushq	%rbp
 3479              		.cfi_def_cfa_offset 16
 3480              		.cfi_offset 6, -16
 3481 0001 4889E5   		movq	%rsp, %rbp
 3482              		.cfi_def_cfa_register 6
 3483 0004 4883EC30 		subq	$48, %rsp
 3484 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3485 000c 488975E0 		movq	%rsi, -32(%rbp)
 3486 0010 488955D8 		movq	%rdx, -40(%rbp)
 128:/usr/include/c++/7/bits/stl_uninitialized.h **** #endif
 3487              		.loc 7 128 0
 3488 0014 C645FF01 		movb	$1, -1(%rbp)
 134:/usr/include/c++/7/bits/stl_uninitialized.h ****     }
 3489              		.loc 7 134 0
 3490 0018 488B55D8 		movq	-40(%rbp), %rdx
 3491 001c 488B4DE0 		movq	-32(%rbp), %rcx
 3492 0020 488B45E8 		movq	-24(%rbp), %rax
 3493 0024 4889CE   		movq	%rcx, %rsi
 3494 0027 4889C7   		movq	%rax, %rdi
 3495 002a E8000000 		call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_
 3495      00
 135:/usr/include/c++/7/bits/stl_uninitialized.h **** 
 3496              		.loc 7 135 0
 3497 002f C9       		leave
 3498              		.cfi_def_cfa 7, 8
 3499 0030 C3       		ret
 3500              		.cfi_endproc
 3501              	.LFE2403:
 3503              		.section	.text._ZSt6fill_nIPdmdET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPdmdET_S1_T0_RKT1_,comda
 3504              		.weak	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
 3506              	_ZSt6fill_nIPdmdET_S1_T0_RKT1_:
 3507              	.LFB2428:
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
 3508              		.loc 10 784 0
 3509              		.cfi_startproc
 3510 0000 55       		pushq	%rbp
 3511              		.cfi_def_cfa_offset 16
 3512              		.cfi_offset 6, -16
 3513 0001 4889E5   		movq	%rsp, %rbp
 3514              		.cfi_def_cfa_register 6
 3515 0004 4883EC20 		subq	$32, %rsp
 3516 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3517 000c 488975F0 		movq	%rsi, -16(%rbp)
 3518 0010 488955E8 		movq	%rdx, -24(%rbp)
 785:/usr/include/c++/7/bits/stl_algobase.h ****     {
 786:/usr/include/c++/7/bits/stl_algobase.h ****       // concept requirements
 787:/usr/include/c++/7/bits/stl_algobase.h ****       __glibcxx_function_requires(_OutputIteratorConcept<_OI, _Tp>)
 788:/usr/include/c++/7/bits/stl_algobase.h **** 
 789:/usr/include/c++/7/bits/stl_algobase.h ****       return _OI(std::__fill_n_a(std::__niter_base(__first), __n, __value));
 3519              		.loc 10 789 0
 3520 0014 488B45F8 		movq	-8(%rbp), %rax
 3521 0018 4889C7   		movq	%rax, %rdi
 3522 001b E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 3522      00
 3523 0020 4889C1   		movq	%rax, %rcx
 3524 0023 488B55E8 		movq	-24(%rbp), %rdx
 3525 0027 488B45F0 		movq	-16(%rbp), %rax
 3526 002b 4889C6   		movq	%rax, %rsi
 3527 002e 4889CF   		movq	%rcx, %rdi
 3528 0031 E8000000 		call	_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_
 3528      00
 790:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3529              		.loc 10 790 0
 3530 0036 C9       		leave
 3531              		.cfi_def_cfa 7, 8
 3532 0037 C3       		ret
 3533              		.cfi_endproc
 3534              	.LFE2428:
 3536              		.section	.text._ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_all
 3537              		.align 2
 3538              		.weak	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
 3540              	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv:
 3541              	.LFB2429:
 127:/usr/include/c++/7/ext/new_allocator.h **** 
 128:/usr/include/c++/7/ext/new_allocator.h ****       size_type
 129:/usr/include/c++/7/ext/new_allocator.h ****       max_size() const _GLIBCXX_USE_NOEXCEPT
 3542              		.loc 8 129 0
 3543              		.cfi_startproc
 3544 0000 55       		pushq	%rbp
 3545              		.cfi_def_cfa_offset 16
 3546              		.cfi_offset 6, -16
 3547 0001 4889E5   		movq	%rsp, %rbp
 3548              		.cfi_def_cfa_register 6
 3549 0004 48897DF8 		movq	%rdi, -8(%rbp)
 130:/usr/include/c++/7/ext/new_allocator.h ****       { return size_t(-1) / sizeof(_Tp); }
 3550              		.loc 8 130 0
 3551 0008 48B8FFFF 		movabsq	$2305843009213693951, %rax
 3551      FFFFFFFF 
 3551      FF1F
 3552 0012 5D       		popq	%rbp
 3553              		.cfi_def_cfa 7, 8
 3554 0013 C3       		ret
 3555              		.cfi_endproc
 3556              	.LFE2429:
 3558              		.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_
 3559              		.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_
 3561              	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_:
 3562              	.LFB2430:
  99:/usr/include/c++/7/bits/stl_uninitialized.h **** 		      _ForwardIterator __result)
 3563              		.loc 7 99 0
 3564              		.cfi_startproc
 3565 0000 55       		pushq	%rbp
 3566              		.cfi_def_cfa_offset 16
 3567              		.cfi_offset 6, -16
 3568 0001 4889E5   		movq	%rsp, %rbp
 3569              		.cfi_def_cfa_register 6
 3570 0004 4883EC20 		subq	$32, %rsp
 3571 0008 48897DF8 		movq	%rdi, -8(%rbp)
 3572 000c 488975F0 		movq	%rsi, -16(%rbp)
 3573 0010 488955E8 		movq	%rdx, -24(%rbp)
 101:/usr/include/c++/7/bits/stl_uninitialized.h ****     };
 3574              		.loc 7 101 0
 3575 0014 488B55E8 		movq	-24(%rbp), %rdx
 3576 0018 488B4DF0 		movq	-16(%rbp), %rcx
 3577 001c 488B45F8 		movq	-8(%rbp), %rax
 3578 0020 4889CE   		movq	%rcx, %rsi
 3579 0023 4889C7   		movq	%rax, %rdi
 3580 0026 E8000000 		call	_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 3580      00
 3581 002b C9       		leave
 3582              		.cfi_def_cfa 7, 8
 3583 002c C3       		ret
 3584              		.cfi_endproc
 3585              	.LFE2430:
 3587              		.section	.text._ZSt12__niter_baseIPdET_S1_,"axG",@progbits,_ZSt12__niter_baseIPdET_S1_,comdat
 3588              		.weak	_ZSt12__niter_baseIPdET_S1_
 3590              	_ZSt12__niter_baseIPdET_S1_:
 3591              	.LFB2439:
 277:/usr/include/c++/7/bits/stl_algobase.h ****     { return __it; }
 3592              		.loc 10 277 0
 3593              		.cfi_startproc
 3594 0000 55       		pushq	%rbp
 3595              		.cfi_def_cfa_offset 16
 3596              		.cfi_offset 6, -16
 3597 0001 4889E5   		movq	%rsp, %rbp
 3598              		.cfi_def_cfa_register 6
 3599 0004 48897DF8 		movq	%rdi, -8(%rbp)
 278:/usr/include/c++/7/bits/stl_algobase.h **** 
 3600              		.loc 10 278 0
 3601 0008 488B45F8 		movq	-8(%rbp), %rax
 3602 000c 5D       		popq	%rbp
 3603              		.cfi_def_cfa 7, 8
 3604 000d C3       		ret
 3605              		.cfi_endproc
 3606              	.LFE2439:
 3608              		.section	.text._ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6
 3609              		.weak	_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6
 3611              	_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS
 3612              	.LFB2440:
 749:/usr/include/c++/7/bits/stl_algobase.h ****     {
 3613              		.loc 10 749 0
 3614              		.cfi_startproc
 3615 0000 55       		pushq	%rbp
 3616              		.cfi_def_cfa_offset 16
 3617              		.cfi_offset 6, -16
 3618 0001 4889E5   		movq	%rsp, %rbp
 3619              		.cfi_def_cfa_register 6
 3620 0004 48897DE8 		movq	%rdi, -24(%rbp)
 3621 0008 488975E0 		movq	%rsi, -32(%rbp)
 3622 000c 488955D8 		movq	%rdx, -40(%rbp)
 751:/usr/include/c++/7/bits/stl_algobase.h ****       for (__decltype(__n + 0) __niter = __n;
 3623              		.loc 10 751 0
 3624 0010 488B45D8 		movq	-40(%rbp), %rax
 3625 0014 F20F1000 		movsd	(%rax), %xmm0
 3626 0018 F20F1145 		movsd	%xmm0, -8(%rbp)
 3626      F8
 3627              	.LBB42:
 752:/usr/include/c++/7/bits/stl_algobase.h **** 	   __niter > 0; --__niter, ++__first)
 3628              		.loc 10 752 0
 3629 001d 488B45E0 		movq	-32(%rbp), %rax
 3630 0021 488945F0 		movq	%rax, -16(%rbp)
 3631              	.L185:
 753:/usr/include/c++/7/bits/stl_algobase.h **** 	*__first = __tmp;
 3632              		.loc 10 753 0
 3633 0025 48837DF0 		cmpq	$0, -16(%rbp)
 3633      00
 3634 002a 7419     		je	.L184
 754:/usr/include/c++/7/bits/stl_algobase.h ****       return __first;
 3635              		.loc 10 754 0
 3636 002c 488B45E8 		movq	-24(%rbp), %rax
 3637 0030 F20F1045 		movsd	-8(%rbp), %xmm0
 3637      F8
 3638 0035 F20F1100 		movsd	%xmm0, (%rax)
 752:/usr/include/c++/7/bits/stl_algobase.h **** 	   __niter > 0; --__niter, ++__first)
 3639              		.loc 10 752 0
 3640 0039 48836DF0 		subq	$1, -16(%rbp)
 3640      01
 3641 003e 488345E8 		addq	$8, -24(%rbp)
 3641      08
 3642 0043 EBE0     		jmp	.L185
 3643              	.L184:
 3644              	.LBE42:
 755:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3645              		.loc 10 755 0
 3646 0045 488B45E8 		movq	-24(%rbp), %rax
 756:/usr/include/c++/7/bits/stl_algobase.h **** 
 3647              		.loc 10 756 0
 3648 0049 5D       		popq	%rbp
 3649              		.cfi_def_cfa 7, 8
 3650 004a C3       		ret
 3651              		.cfi_endproc
 3652              	.LFE2440:
 3654              		.section	.text._ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt4copyISt13move_i
 3655              		.weak	_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_
 3657              	_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_:
 3658              	.LFB2441:
 446:/usr/include/c++/7/bits/stl_algobase.h ****     {
 3659              		.loc 10 446 0
 3660              		.cfi_startproc
 3661 0000 55       		pushq	%rbp
 3662              		.cfi_def_cfa_offset 16
 3663              		.cfi_offset 6, -16
 3664 0001 4889E5   		movq	%rsp, %rbp
 3665              		.cfi_def_cfa_register 6
 3666 0004 53       		pushq	%rbx
 3667 0005 4883EC28 		subq	$40, %rsp
 3668              		.cfi_offset 3, -24
 3669 0009 48897DE8 		movq	%rdi, -24(%rbp)
 3670 000d 488975E0 		movq	%rsi, -32(%rbp)
 3671 0011 488955D8 		movq	%rdx, -40(%rbp)
 455:/usr/include/c++/7/bits/stl_algobase.h **** 	       __result));
 3672              		.loc 10 455 0
 3673 0015 488B45E0 		movq	-32(%rbp), %rax
 3674 0019 4889C7   		movq	%rax, %rdi
 3675 001c E8000000 		call	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
 3675      00
 3676 0021 4889C3   		movq	%rax, %rbx
 3677 0024 488B45E8 		movq	-24(%rbp), %rax
 3678 0028 4889C7   		movq	%rax, %rdi
 3679 002b E8000000 		call	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
 3679      00
 3680 0030 4889C1   		movq	%rax, %rcx
 456:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3681              		.loc 10 456 0
 3682 0033 488B45D8 		movq	-40(%rbp), %rax
 3683 0037 4889C2   		movq	%rax, %rdx
 3684 003a 4889DE   		movq	%rbx, %rsi
 3685 003d 4889CF   		movq	%rcx, %rdi
 3686 0040 E8000000 		call	_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_
 3686      00
 457:/usr/include/c++/7/bits/stl_algobase.h **** 
 3687              		.loc 10 457 0
 3688 0045 4883C428 		addq	$40, %rsp
 3689 0049 5B       		popq	%rbx
 3690 004a 5D       		popq	%rbp
 3691              		.cfi_def_cfa 7, 8
 3692 004b C3       		ret
 3693              		.cfi_endproc
 3694              	.LFE2441:
 3696              		.section	.text._ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"axG",
 3697              		.weak	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
 3699              	_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
 3700              	.LFB2444:
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
 3701              		.loc 3 1241 0
 3702              		.cfi_startproc
 3703 0000 55       		pushq	%rbp
 3704              		.cfi_def_cfa_offset 16
 3705              		.cfi_offset 6, -16
 3706 0001 4889E5   		movq	%rsp, %rbp
 3707              		.cfi_def_cfa_register 6
 3708 0004 4883EC10 		subq	$16, %rsp
 3709 0008 48897DF8 		movq	%rdi, -8(%rbp)
1242:/usr/include/c++/7/bits/stl_iterator.h ****     -> decltype(__miter_base(__it.base()))
1243:/usr/include/c++/7/bits/stl_iterator.h ****     { return __miter_base(__it.base()); }
 3710              		.loc 3 1243 0
 3711 000c 488D45F8 		leaq	-8(%rbp), %rax
 3712 0010 4889C7   		movq	%rax, %rdi
 3713 0013 E8000000 		call	_ZNKSt13move_iteratorIPdE4baseEv
 3713      00
 3714 0018 4889C7   		movq	%rax, %rdi
 3715 001b E8000000 		call	_ZSt12__miter_baseIPdET_S1_
 3715      00
 3716 0020 C9       		leave
 3717              		.cfi_def_cfa 7, 8
 3718 0021 C3       		ret
 3719              		.cfi_endproc
 3720              	.LFE2444:
 3722              		.section	.text._ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb
 3723              		.weak	_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_
 3725              	_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_:
 3726              	.LFB2445:
 420:/usr/include/c++/7/bits/stl_algobase.h ****     {
 3727              		.loc 10 420 0
 3728              		.cfi_startproc
 3729 0000 55       		pushq	%rbp
 3730              		.cfi_def_cfa_offset 16
 3731              		.cfi_offset 6, -16
 3732 0001 4889E5   		movq	%rsp, %rbp
 3733              		.cfi_def_cfa_register 6
 3734 0004 4154     		pushq	%r12
 3735 0006 53       		pushq	%rbx
 3736 0007 4883EC20 		subq	$32, %rsp
 3737              		.cfi_offset 12, -24
 3738              		.cfi_offset 3, -32
 3739 000b 48897DE8 		movq	%rdi, -24(%rbp)
 3740 000f 488975E0 		movq	%rsi, -32(%rbp)
 3741 0013 488955D8 		movq	%rdx, -40(%rbp)
 422:/usr/include/c++/7/bits/stl_algobase.h **** 					     std::__niter_base(__last),
 3742              		.loc 10 422 0
 3743 0017 488B45D8 		movq	-40(%rbp), %rax
 3744 001b 4889C7   		movq	%rax, %rdi
 3745 001e E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 3745      00
 3746 0023 4989C4   		movq	%rax, %r12
 3747 0026 488B45E0 		movq	-32(%rbp), %rax
 3748 002a 4889C7   		movq	%rax, %rdi
 3749 002d E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 3749      00
 3750 0032 4889C3   		movq	%rax, %rbx
 3751 0035 488B45E8 		movq	-24(%rbp), %rax
 3752 0039 4889C7   		movq	%rax, %rdi
 3753 003c E8000000 		call	_ZSt12__niter_baseIPdET_S1_
 3753      00
 424:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3754              		.loc 10 424 0
 3755 0041 4C89E2   		movq	%r12, %rdx
 3756 0044 4889DE   		movq	%rbx, %rsi
 3757 0047 4889C7   		movq	%rax, %rdi
 3758 004a E8000000 		call	_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_
 3758      00
 425:/usr/include/c++/7/bits/stl_algobase.h **** 
 3759              		.loc 10 425 0
 3760 004f 4883C420 		addq	$32, %rsp
 3761 0053 5B       		popq	%rbx
 3762 0054 415C     		popq	%r12
 3763 0056 5D       		popq	%rbp
 3764              		.cfi_def_cfa 7, 8
 3765 0057 C3       		ret
 3766              		.cfi_endproc
 3767              	.LFE2445:
 3769              		.section	.text._ZNKSt13move_iteratorIPdE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIPdE4baseEv,c
 3770              		.align 2
 3771              		.weak	_ZNKSt13move_iteratorIPdE4baseEv
 3773              	_ZNKSt13move_iteratorIPdE4baseEv:
 3774              	.LFB2446:
1045:/usr/include/c++/7/bits/stl_iterator.h ****       { return _M_current; }
 3775              		.loc 3 1045 0
 3776              		.cfi_startproc
 3777 0000 55       		pushq	%rbp
 3778              		.cfi_def_cfa_offset 16
 3779              		.cfi_offset 6, -16
 3780 0001 4889E5   		movq	%rsp, %rbp
 3781              		.cfi_def_cfa_register 6
 3782 0004 48897DF8 		movq	%rdi, -8(%rbp)
1046:/usr/include/c++/7/bits/stl_iterator.h **** 
 3783              		.loc 3 1046 0
 3784 0008 488B45F8 		movq	-8(%rbp), %rax
 3785 000c 488B00   		movq	(%rax), %rax
 3786 000f 5D       		popq	%rbp
 3787              		.cfi_def_cfa 7, 8
 3788 0010 C3       		ret
 3789              		.cfi_endproc
 3790              	.LFE2446:
 3792              		.section	.text._ZSt12__miter_baseIPdET_S1_,"axG",@progbits,_ZSt12__miter_baseIPdET_S1_,comdat
 3793              		.weak	_ZSt12__miter_baseIPdET_S1_
 3795              	_ZSt12__miter_baseIPdET_S1_:
 3796              	.LFB2447:
 3797              		.file 11 "/usr/include/c++/7/bits/cpp_type_traits.h"
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
 3798              		.loc 11 408 0
 3799              		.cfi_startproc
 3800 0000 55       		pushq	%rbp
 3801              		.cfi_def_cfa_offset 16
 3802              		.cfi_offset 6, -16
 3803 0001 4889E5   		movq	%rsp, %rbp
 3804              		.cfi_def_cfa_register 6
 3805 0004 48897DF8 		movq	%rdi, -8(%rbp)
 409:/usr/include/c++/7/bits/cpp_type_traits.h ****     { return __it; }
 3806              		.loc 11 409 0
 3807 0008 488B45F8 		movq	-8(%rbp), %rax
 3808 000c 5D       		popq	%rbp
 3809              		.cfi_def_cfa 7, 8
 3810 000d C3       		ret
 3811              		.cfi_endproc
 3812              	.LFE2447:
 3814              		.section	.text._ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb1E
 3815              		.weak	_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_
 3817              	_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_:
 3818              	.LFB2448:
 375:/usr/include/c++/7/bits/stl_algobase.h ****     {
 3819              		.loc 10 375 0
 3820              		.cfi_startproc
 3821 0000 55       		pushq	%rbp
 3822              		.cfi_def_cfa_offset 16
 3823              		.cfi_offset 6, -16
 3824 0001 4889E5   		movq	%rsp, %rbp
 3825              		.cfi_def_cfa_register 6
 3826 0004 4883EC30 		subq	$48, %rsp
 3827 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3828 000c 488975E0 		movq	%rsi, -32(%rbp)
 3829 0010 488955D8 		movq	%rdx, -40(%rbp)
 380:/usr/include/c++/7/bits/stl_algobase.h **** 	                     && __is_pointer<_II>::__value
 3830              		.loc 10 380 0
 3831 0014 C645FF01 		movb	$1, -1(%rbp)
 386:/usr/include/c++/7/bits/stl_algobase.h ****     }
 3832              		.loc 10 386 0
 3833 0018 488B55D8 		movq	-40(%rbp), %rdx
 3834 001c 488B4DE0 		movq	-32(%rbp), %rcx
 3835 0020 488B45E8 		movq	-24(%rbp), %rax
 3836 0024 4889CE   		movq	%rcx, %rsi
 3837 0027 4889C7   		movq	%rax, %rdi
 3838 002a E8000000 		call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
 3838      00
 387:/usr/include/c++/7/bits/stl_algobase.h **** 
 3839              		.loc 10 387 0
 3840 002f C9       		leave
 3841              		.cfi_def_cfa 7, 8
 3842 0030 C3       		ret
 3843              		.cfi_endproc
 3844              	.LFE2448:
 3846              		.section	.text._ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S
 3847              		.weak	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
 3849              	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_:
 3850              	.LFB2449:
 357:/usr/include/c++/7/bits/stl_algobase.h ****         {
 3851              		.loc 10 357 0
 3852              		.cfi_startproc
 3853 0000 55       		pushq	%rbp
 3854              		.cfi_def_cfa_offset 16
 3855              		.cfi_offset 6, -16
 3856 0001 4889E5   		movq	%rsp, %rbp
 3857              		.cfi_def_cfa_register 6
 3858 0004 4883EC30 		subq	$48, %rsp
 3859 0008 48897DE8 		movq	%rdi, -24(%rbp)
 3860 000c 488975E0 		movq	%rsi, -32(%rbp)
 3861 0010 488955D8 		movq	%rdx, -40(%rbp)
 366:/usr/include/c++/7/bits/stl_algobase.h **** 	  if (_Num)
 3862              		.loc 10 366 0
 3863 0014 488B55E0 		movq	-32(%rbp), %rdx
 3864 0018 488B45E8 		movq	-24(%rbp), %rax
 3865 001c 4829C2   		subq	%rax, %rdx
 3866 001f 4889D0   		movq	%rdx, %rax
 3867 0022 48C1F803 		sarq	$3, %rax
 3868 0026 488945F8 		movq	%rax, -8(%rbp)
 367:/usr/include/c++/7/bits/stl_algobase.h **** 	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
 3869              		.loc 10 367 0
 3870 002a 48837DF8 		cmpq	$0, -8(%rbp)
 3870      00
 3871 002f 741F     		je	.L200
 368:/usr/include/c++/7/bits/stl_algobase.h **** 	  return __result + _Num;
 3872              		.loc 10 368 0
 3873 0031 488B45F8 		movq	-8(%rbp), %rax
 3874 0035 488D14C5 		leaq	0(,%rax,8), %rdx
 3874      00000000 
 3875 003d 488B4DE8 		movq	-24(%rbp), %rcx
 3876 0041 488B45D8 		movq	-40(%rbp), %rax
 3877 0045 4889CE   		movq	%rcx, %rsi
 3878 0048 4889C7   		movq	%rax, %rdi
 3879 004b E8000000 		call	memmove@PLT
 3879      00
 3880              	.L200:
 369:/usr/include/c++/7/bits/stl_algobase.h **** 	}
 3881              		.loc 10 369 0
 3882 0050 488B45F8 		movq	-8(%rbp), %rax
 3883 0054 488D14C5 		leaq	0(,%rax,8), %rdx
 3883      00000000 
 3884 005c 488B45D8 		movq	-40(%rbp), %rax
 3885 0060 4801D0   		addq	%rdx, %rax
 370:/usr/include/c++/7/bits/stl_algobase.h ****     };
 3886              		.loc 10 370 0
 3887 0063 C9       		leave
 3888              		.cfi_def_cfa 7, 8
 3889 0064 C3       		ret
 3890              		.cfi_endproc
 3891              	.LFE2449:
 3893              		.text
 3895              	_Z41__static_initialization_and_destruction_0ii:
 3896              	.LFB2450:
 3897              		.loc 1 240 0
 3898              		.cfi_startproc
 3899 0fe1 55       		pushq	%rbp
 3900              		.cfi_def_cfa_offset 16
 3901              		.cfi_offset 6, -16
 3902 0fe2 4889E5   		movq	%rsp, %rbp
 3903              		.cfi_def_cfa_register 6
 3904 0fe5 4883EC10 		subq	$16, %rsp
 3905 0fe9 897DFC   		movl	%edi, -4(%rbp)
 3906 0fec 8975F8   		movl	%esi, -8(%rbp)
 3907              		.loc 1 240 0
 3908 0fef 837DFC01 		cmpl	$1, -4(%rbp)
 3909 0ff3 7532     		jne	.L204
 3910              		.loc 1 240 0 is_stmt 0 discriminator 1
 3911 0ff5 817DF8FF 		cmpl	$65535, -8(%rbp)
 3911      FF0000
 3912 0ffc 7529     		jne	.L204
 3913              		.file 12 "/usr/include/c++/7/iostream"
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
 3914              		.loc 12 74 0 is_stmt 1
 3915 0ffe 488D3D00 		leaq	_ZStL8__ioinit(%rip), %rdi
 3915      000000
 3916 1005 E8000000 		call	_ZNSt8ios_base4InitC1Ev@PLT
 3916      00
 3917 100a 488D1500 		leaq	__dso_handle(%rip), %rdx
 3917      000000
 3918 1011 488D3500 		leaq	_ZStL8__ioinit(%rip), %rsi
 3918      000000
 3919 1018 488B0500 		movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
 3919      000000
 3920 101f 4889C7   		movq	%rax, %rdi
 3921 1022 E8000000 		call	__cxa_atexit@PLT
 3921      00
 3922              	.L204:
 3923              		.loc 1 240 0
 3924 1027 90       		nop
 3925 1028 C9       		leave
 3926              		.cfi_def_cfa 7, 8
 3927 1029 C3       		ret
 3928              		.cfi_endproc
 3929              	.LFE2450:
 3932              	_GLOBAL__sub_I__ZN9RowVectorD2Ev:
 3933              	.LFB2451:
 3934              		.loc 1 240 0
 3935              		.cfi_startproc
 3936 102a 55       		pushq	%rbp
 3937              		.cfi_def_cfa_offset 16
 3938              		.cfi_offset 6, -16
 3939 102b 4889E5   		movq	%rsp, %rbp
 3940              		.cfi_def_cfa_register 6
 3941              		.loc 1 240 0
 3942 102e BEFFFF00 		movl	$65535, %esi
 3942      00
 3943 1033 BF010000 		movl	$1, %edi
 3943      00
 3944 1038 E8A4FFFF 		call	_Z41__static_initialization_and_destruction_0ii
 3944      FF
 3945 103d 5D       		popq	%rbp
 3946              		.cfi_def_cfa 7, 8
 3947 103e C3       		ret
 3948              		.cfi_endproc
 3949              	.LFE2451:
 3951              		.section	.init_array,"aw"
 3952              		.align 8
 3953 0000 00000000 		.quad	_GLOBAL__sub_I__ZN9RowVectorD2Ev
 3953      00000000 
 3954              		.section	.rodata
 3955 01c8 00000000 		.align 32
 3955      00000000 
 3955      00000000 
 3955      00000000 
 3955      00000000 
 3958              	_ZZN9RowVectorplERKS_E19__PRETTY_FUNCTION__:
 3959 01e0 526F7756 		.string	"RowVector RowVector::operator+(const RowVector&)"
 3959      6563746F 
 3959      7220526F 
 3959      77566563 
 3959      746F723A 
 3960 0211 00000000 		.align 32
 3960      00000000 
 3960      00000000 
 3960      000000
 3963              	_ZZN9RowVectormlERKS_E19__PRETTY_FUNCTION__:
 3964 0220 636F6E73 		.string	"const double RowVector::operator*(const RowVector&)"
 3964      7420646F 
 3964      75626C65 
 3964      20526F77 
 3964      56656374 
 3965 0254 00000000 		.align 8
 3966              	.LC13:
 3967 0258 00000000 		.long	0
 3968 025c 0000F03F 		.long	1072693248
 3969              		.align 8
 3970              	.LC14:
 3971 0260 00000000 		.long	0
 3972 0264 00000040 		.long	1073741824
 3973              		.align 8
 3974              	.LC19:
 3975 0268 00000000 		.long	0
 3976 026c 0000E03F 		.long	1071644672
 3977              		.align 8
 3978              	.LC23:
 3979 0270 00000000 		.long	0
 3980 0274 0000F0BF 		.long	-1074790400
 3981              		.text
 3982              	.Letext0:
 3983              		.file 13 "/usr/include/c++/7/bits/basic_string.h"
 3984              		.file 14 "/usr/include/c++/7/bits/basic_string.tcc"
 3985              		.file 15 "/usr/include/c++/7/bits/stringfwd.h"
 3986              		.file 16 "/usr/include/c++/7/cstdint"
 3987              		.file 17 "/usr/include/c++/7/new"
 3988              		.file 18 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
 3989              		.file 19 "/usr/include/c++/7/bits/exception_ptr.h"
 3990              		.file 20 "/usr/include/c++/7/type_traits"
 3991              		.file 21 "/usr/include/c++/7/cwchar"
 3992              		.file 22 "/usr/include/c++/7/bits/stl_pair.h"
 3993              		.file 23 "/usr/include/c++/7/bits/stl_iterator_base_types.h"
 3994              		.file 24 "/usr/include/c++/7/debug/debug.h"
 3995              		.file 25 "/usr/include/c++/7/bits/char_traits.h"
 3996              		.file 26 "/usr/include/c++/7/clocale"
 3997              		.file 27 "/usr/include/c++/7/cstdlib"
 3998              		.file 28 "/usr/include/c++/7/cstdio"
 3999              		.file 29 "/usr/include/c++/7/initializer_list"
 4000              		.file 30 "/usr/include/c++/7/system_error"
 4001              		.file 31 "/usr/include/c++/7/bits/ios_base.h"
 4002              		.file 32 "/usr/include/c++/7/cwctype"
 4003              		.file 33 "/usr/include/c++/7/iosfwd"
 4004              		.file 34 "/usr/include/c++/7/bits/stl_iterator_base_funcs.h"
 4005              		.file 35 "/usr/include/c++/7/bits/move.h"
 4006              		.file 36 "/usr/include/c++/7/bits/predefined_ops.h"
 4007              		.file 37 "/usr/include/c++/7/ext/numeric_traits.h"
 4008              		.file 38 "/usr/include/c++/7/ext/alloc_traits.h"
 4009              		.file 39 "/usr/include/c++/7/ext/type_traits.h"
 4010              		.file 40 "/usr/include/x86_64-linux-gnu/bits/types.h"
 4011              		.file 41 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
 4012              		.file 42 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
 4013              		.file 43 "/usr/include/stdint.h"
 4014              		.file 44 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
 4015              		.file 45 "<built-in>"
 4016              		.file 46 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
 4017              		.file 47 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
 4018              		.file 48 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
 4019              		.file 49 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
 4020              		.file 50 "/usr/include/x86_64-linux-gnu/bits/libio.h"
 4021              		.file 51 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
 4022              		.file 52 "/usr/include/wchar.h"
 4023              		.file 53 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
 4024              		.file 54 "/usr/include/locale.h"
 4025              		.file 55 "/usr/include/time.h"
 4026              		.file 56 "/usr/include/x86_64-linux-gnu/c++/7/bits/atomic_word.h"
 4027              		.file 57 "/usr/include/stdlib.h"
 4028              		.file 58 "/usr/include/x86_64-linux-gnu/bits/_G_config.h"
 4029              		.file 59 "/usr/include/stdio.h"
 4030              		.file 60 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
 4031              		.file 61 "/usr/include/errno.h"
 4032              		.file 62 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
 4033              		.file 63 "/usr/include/wctype.h"
 23675              		.align 8
 23678              	DW.ref.__gxx_personality_v0:
 23679 0000 00000000 		.quad	__gxx_personality_v0
 23679      00000000 
 23680              		.hidden	__dso_handle
 23681              		.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
 23682              		.section	.note.GNU-stack,"",@progbits
