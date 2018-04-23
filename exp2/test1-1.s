	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	_ccc@GOTPCREL(%rip), %rax
	movl	$0, -4(%rbp)
	movl	_aaa(%rip), %edi
	movl	(%rax), %esi
	movb	$0, %al
	callq	_max
	movq	_ddd@GOTPCREL(%rip), %rcx
	movl	%eax, -8(%rbp)
	movl	_bbb(%rip), %edi
	movl	(%rcx), %esi
	movb	$0, %al
	callq	_min
	leaq	L_.str(%rip), %rdi
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %esi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	movl	-12(%rbp), %esi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	xorl	%esi, %esi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.globl	_aaa                    ## @aaa
	.p2align	2
_aaa:
	.long	111                     ## 0x6f

	.globl	_bbb                    ## @bbb
	.p2align	2
_bbb:
	.long	222                     ## 0xde

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"eee :%d\n"

L_.str.1:                               ## @.str.1
	.asciz	"fff :%d\n"


.subsections_via_symbols
