   1              		.file	"hello.cpp"
   2              		.text
   3              		.section	.rodata
   6              	_ZStL19piecewise_construct:
   7 0000 00       		.zero	1
   8              		.local	_ZStL8__ioinit
   9              		.comm	_ZStL8__ioinit,1,1
  10              	.LC0:
  11 0001 48656C6C 		.string	"Hello World!"
  11      6F20576F 
  11      726C6421 
  11      00
  12              		.text
  13              		.globl	main
  15              	main:
  16              	.LFB1493:
  17              		.cfi_startproc
  18 0000 55       		pushq	%rbp
  19              		.cfi_def_cfa_offset 16
  20              		.cfi_offset 6, -16
  21 0001 4889E5   		movq	%rsp, %rbp
  22              		.cfi_def_cfa_register 6
  23 0004 4883EC10 		subq	$16, %rsp
  24 0008 897DFC   		movl	%edi, -4(%rbp)
  25 000b 488975F0 		movq	%rsi, -16(%rbp)
  26 000f 488D3D00 		leaq	.LC0(%rip), %rdi
  26      000000
  27 0016 E8000000 		call	puts@PLT
  27      00
  28 001b 488D3500 		leaq	.LC0(%rip), %rsi
  28      000000
  29 0022 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
  29      000000
  30 0029 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
  30      00
  31 002e BE0A0000 		movl	$10, %esi
  31      00
  32 0033 4889C7   		movq	%rax, %rdi
  33 0036 E8000000 		call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
  33      00
  34 003b B8000000 		movl	$0, %eax
  34      00
  35 0040 C9       		leave
  36              		.cfi_def_cfa 7, 8
  37 0041 C3       		ret
  38              		.cfi_endproc
  39              	.LFE1493:
  42              	_Z41__static_initialization_and_destruction_0ii:
  43              	.LFB1978:
  44              		.cfi_startproc
  45 0042 55       		pushq	%rbp
  46              		.cfi_def_cfa_offset 16
  47              		.cfi_offset 6, -16
  48 0043 4889E5   		movq	%rsp, %rbp
  49              		.cfi_def_cfa_register 6
  50 0046 4883EC10 		subq	$16, %rsp
  51 004a 897DFC   		movl	%edi, -4(%rbp)
  52 004d 8975F8   		movl	%esi, -8(%rbp)
  53 0050 837DFC01 		cmpl	$1, -4(%rbp)
  54 0054 7532     		jne	.L5
  55 0056 817DF8FF 		cmpl	$65535, -8(%rbp)
  55      FF0000
  56 005d 7529     		jne	.L5
  57 005f 488D3D00 		leaq	_ZStL8__ioinit(%rip), %rdi
  57      000000
  58 0066 E8000000 		call	_ZNSt8ios_base4InitC1Ev@PLT
  58      00
  59 006b 488D1500 		leaq	__dso_handle(%rip), %rdx
  59      000000
  60 0072 488D3500 		leaq	_ZStL8__ioinit(%rip), %rsi
  60      000000
  61 0079 488B0500 		movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
  61      000000
  62 0080 4889C7   		movq	%rax, %rdi
  63 0083 E8000000 		call	__cxa_atexit@PLT
  63      00
  64              	.L5:
  65 0088 90       		nop
  66 0089 C9       		leave
  67              		.cfi_def_cfa 7, 8
  68 008a C3       		ret
  69              		.cfi_endproc
  70              	.LFE1978:
  73              	_GLOBAL__sub_I_main:
  74              	.LFB1979:
  75              		.cfi_startproc
  76 008b 55       		pushq	%rbp
  77              		.cfi_def_cfa_offset 16
  78              		.cfi_offset 6, -16
  79 008c 4889E5   		movq	%rsp, %rbp
  80              		.cfi_def_cfa_register 6
  81 008f BEFFFF00 		movl	$65535, %esi
  81      00
  82 0094 BF010000 		movl	$1, %edi
  82      00
  83 0099 E8A4FFFF 		call	_Z41__static_initialization_and_destruction_0ii
  83      FF
  84 009e 5D       		popq	%rbp
  85              		.cfi_def_cfa 7, 8
  86 009f C3       		ret
  87              		.cfi_endproc
  88              	.LFE1979:
  90              		.section	.init_array,"aw"
  91              		.align 8
  92 0000 00000000 		.quad	_GLOBAL__sub_I_main
  92      00000000 
  93              		.hidden	__dso_handle
  94              		.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
  95              		.section	.note.GNU-stack,"",@progbits
