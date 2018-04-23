	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_max
	.p2align	4, 0x90
_max:                                   ## @max
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %esi
	cmpl	-12(%rbp), %esi
	jle	LBB0_2
## BB#1:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB0_3
LBB0_2:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB0_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_min
	.p2align	4, 0x90
_min:                                   ## @min
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %esi
	cmpl	-12(%rbp), %esi
	jge	LBB1_2
## BB#1:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB1_3
LBB1_2:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB1_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.globl	_ccc                    ## @ccc
	.p2align	2
_ccc:
	.long	123                     ## 0x7b

	.globl	_ddd                    ## @ddd
	.p2align	2
_ddd:
	.long	444                     ## 0x1bc


.subsections_via_symbols
