	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_enhanceBlueMatrix      ## -- Begin function enhanceBlueMatrix
	.p2align	4, 0x90
_enhanceBlueMatrix:                     ## @enhanceBlueMatrix
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%r14
Lcfi0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
Lcfi1:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
Lcfi2:
	.cfi_def_cfa_offset 80
Lcfi3:
	.cfi_offset %rbx, -24
Lcfi4:
	.cfi_offset %r14, -16
	movq	%rdi, 24(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdi, 16(%rsp)
	movq	$0, 8(%rsp)
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_5:                                 ## %merge
                                        ##   in Loop: Header=BB0_1 Depth=1
	incq	8(%rsp)
LBB0_1:                                 ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movq	8(%rsp), %rax
	movq	24(%rsp), %rcx
	cmpq	(%rcx), %rax
	jge	LBB0_6
## BB#2:                                ## %while_body
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	$0, (%rsp)
	jmp	LBB0_3
	.p2align	4, 0x90
LBB0_4:                                 ## %while_body5
                                        ##   in Loop: Header=BB0_3 Depth=2
	movq	16(%rsp), %r14
	movq	8(%r14), %rbx
	imulq	8(%rsp), %rbx
	addq	(%rsp), %rbx
	shlq	$5, %rbx
	movl	$32, %edi
	callq	_malloc
	movq	16(%r14,%rbx), %rcx
	movq	24(%r14,%rbx), %rdx
	movq	32(%r14,%rbx), %rsi
	movq	40(%r14,%rbx), %rdi
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	%rax, 32(%rsp)
	movq	16(%rax), %rcx
	addq	40(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	movq	%rcx, 16(%rax)
	movq	16(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	8(%rax), %rdx
	imulq	8(%rsp), %rdx
	addq	(%rsp), %rdx
	shlq	$5, %rdx
	movq	(%rcx), %rsi
	movq	8(%rcx), %rdi
	movq	16(%rcx), %rbx
	movq	24(%rcx), %rcx
	movq	%rsi, 16(%rax,%rdx)
	movq	%rdi, 24(%rax,%rdx)
	movq	%rbx, 32(%rax,%rdx)
	movq	%rcx, 40(%rax,%rdx)
	incq	(%rsp)
LBB0_3:                                 ## %while4
                                        ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rsp), %rax
	movq	24(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jl	LBB0_4
	jmp	LBB0_5
LBB0_6:                                 ## %merge59
	movq	16(%rsp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_enhanceGreenMatrix     ## -- Begin function enhanceGreenMatrix
	.p2align	4, 0x90
_enhanceGreenMatrix:                    ## @enhanceGreenMatrix
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%r14
Lcfi5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
Lcfi6:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
Lcfi7:
	.cfi_def_cfa_offset 80
Lcfi8:
	.cfi_offset %rbx, -24
Lcfi9:
	.cfi_offset %r14, -16
	movq	%rdi, 24(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdi, 16(%rsp)
	movq	$0, 8(%rsp)
	jmp	LBB1_1
	.p2align	4, 0x90
LBB1_5:                                 ## %merge
                                        ##   in Loop: Header=BB1_1 Depth=1
	incq	8(%rsp)
LBB1_1:                                 ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	movq	8(%rsp), %rax
	movq	24(%rsp), %rcx
	cmpq	(%rcx), %rax
	jge	LBB1_6
## BB#2:                                ## %while_body
                                        ##   in Loop: Header=BB1_1 Depth=1
	movq	$0, (%rsp)
	jmp	LBB1_3
	.p2align	4, 0x90
LBB1_4:                                 ## %while_body5
                                        ##   in Loop: Header=BB1_3 Depth=2
	movq	16(%rsp), %r14
	movq	8(%r14), %rbx
	imulq	8(%rsp), %rbx
	addq	(%rsp), %rbx
	shlq	$5, %rbx
	movl	$32, %edi
	callq	_malloc
	movq	16(%r14,%rbx), %rcx
	movq	24(%r14,%rbx), %rdx
	movq	32(%r14,%rbx), %rsi
	movq	40(%r14,%rbx), %rdi
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	%rax, 32(%rsp)
	movq	8(%rax), %rcx
	addq	40(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	movq	%rcx, 8(%rax)
	movq	16(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	8(%rax), %rdx
	imulq	8(%rsp), %rdx
	addq	(%rsp), %rdx
	shlq	$5, %rdx
	movq	(%rcx), %rsi
	movq	8(%rcx), %rdi
	movq	16(%rcx), %rbx
	movq	24(%rcx), %rcx
	movq	%rsi, 16(%rax,%rdx)
	movq	%rdi, 24(%rax,%rdx)
	movq	%rbx, 32(%rax,%rdx)
	movq	%rcx, 40(%rax,%rdx)
	incq	(%rsp)
LBB1_3:                                 ## %while4
                                        ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rsp), %rax
	movq	24(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jl	LBB1_4
	jmp	LBB1_5
LBB1_6:                                 ## %merge59
	movq	16(%rsp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_enhanceRedMatrix       ## -- Begin function enhanceRedMatrix
	.p2align	4, 0x90
_enhanceRedMatrix:                      ## @enhanceRedMatrix
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%r14
Lcfi10:
	.cfi_def_cfa_offset 16
	pushq	%rbx
Lcfi11:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
Lcfi12:
	.cfi_def_cfa_offset 80
Lcfi13:
	.cfi_offset %rbx, -24
Lcfi14:
	.cfi_offset %r14, -16
	movq	%rdi, 24(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdi, 16(%rsp)
	movq	$0, 8(%rsp)
	jmp	LBB2_1
	.p2align	4, 0x90
LBB2_5:                                 ## %merge
                                        ##   in Loop: Header=BB2_1 Depth=1
	incq	8(%rsp)
LBB2_1:                                 ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	movq	8(%rsp), %rax
	movq	24(%rsp), %rcx
	cmpq	(%rcx), %rax
	jge	LBB2_6
## BB#2:                                ## %while_body
                                        ##   in Loop: Header=BB2_1 Depth=1
	movq	$0, (%rsp)
	jmp	LBB2_3
	.p2align	4, 0x90
LBB2_4:                                 ## %while_body5
                                        ##   in Loop: Header=BB2_3 Depth=2
	movq	16(%rsp), %r14
	movq	8(%r14), %rbx
	imulq	8(%rsp), %rbx
	addq	(%rsp), %rbx
	shlq	$5, %rbx
	movl	$32, %edi
	callq	_malloc
	movq	16(%r14,%rbx), %rcx
	movq	24(%r14,%rbx), %rdx
	movq	32(%r14,%rbx), %rsi
	movq	40(%r14,%rbx), %rdi
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	%rax, 32(%rsp)
	movq	(%rax), %rcx
	addq	40(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	movq	%rcx, (%rax)
	movq	16(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	8(%rax), %rdx
	imulq	8(%rsp), %rdx
	addq	(%rsp), %rdx
	shlq	$5, %rdx
	movq	(%rcx), %rsi
	movq	8(%rcx), %rdi
	movq	16(%rcx), %rbx
	movq	24(%rcx), %rcx
	movq	%rsi, 16(%rax,%rdx)
	movq	%rdi, 24(%rax,%rdx)
	movq	%rbx, 32(%rax,%rdx)
	movq	%rcx, 40(%rax,%rdx)
	incq	(%rsp)
LBB2_3:                                 ## %while4
                                        ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rsp), %rax
	movq	24(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jl	LBB2_4
	jmp	LBB2_5
LBB2_6:                                 ## %merge59
	movq	16(%rsp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_enhanceBlue            ## -- Begin function enhanceBlue
	.p2align	4, 0x90
_enhanceBlue:                           ## @enhanceBlue
	.cfi_startproc
## BB#0:                                ## %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	16(%rdi), %rax
	movq	%rax, -16(%rsp)
	addq	%rsi, %rax
	movq	%rax, -32(%rsp)
	cmpq	$254, %rax
	jle	LBB3_2
## BB#1:                                ## %then
	movq	$255, -32(%rsp)
LBB3_2:                                 ## %merge
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	-24(%rsp), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_enhanceGreen           ## -- Begin function enhanceGreen
	.p2align	4, 0x90
_enhanceGreen:                          ## @enhanceGreen
	.cfi_startproc
## BB#0:                                ## %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, -16(%rsp)
	addq	%rsi, %rax
	movq	%rax, -32(%rsp)
	cmpq	$254, %rax
	jle	LBB4_2
## BB#1:                                ## %then
	movq	$255, -32(%rsp)
LBB4_2:                                 ## %merge
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	-24(%rsp), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_enhanceRed             ## -- Begin function enhanceRed
	.p2align	4, 0x90
_enhanceRed:                            ## @enhanceRed
	.cfi_startproc
## BB#0:                                ## %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	addq	%rsi, %rax
	movq	%rax, -32(%rsp)
	cmpq	$254, %rax
	jle	LBB5_2
## BB#1:                                ## %then
	movq	$255, -32(%rsp)
LBB5_2:                                 ## %merge
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_subtractIntMatrix      ## -- Begin function subtractIntMatrix
	.p2align	4, 0x90
_subtractIntMatrix:                     ## @subtractIntMatrix
	.cfi_startproc
## BB#0:                                ## %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	%rdi, -16(%rsp)
	movq	$0, -32(%rsp)
	jmp	LBB6_1
	.p2align	4, 0x90
LBB6_5:                                 ## %merge
                                        ##   in Loop: Header=BB6_1 Depth=1
	incq	-32(%rsp)
LBB6_1:                                 ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_3 Depth 2
	movq	-32(%rsp), %rax
	movq	-24(%rsp), %rcx
	cmpq	(%rcx), %rax
	jge	LBB6_6
## BB#2:                                ## %while_body
                                        ##   in Loop: Header=BB6_1 Depth=1
	movq	$0, -40(%rsp)
	jmp	LBB6_3
	.p2align	4, 0x90
LBB6_4:                                 ## %while_body5
                                        ##   in Loop: Header=BB6_3 Depth=2
	movq	-16(%rsp), %r8
	movq	-24(%rsp), %rcx
	movq	-32(%rsp), %rdx
	movq	-40(%rsp), %rsi
	movq	8(%rcx), %rdi
	imulq	%rdx, %rdi
	leaq	2(%rdi,%rsi), %rdi
	movq	(%rcx,%rdi,8), %rcx
	movq	-8(%rsp), %rdi
	movq	8(%rdi), %rax
	imulq	%rdx, %rax
	leaq	2(%rax,%rsi), %rax
	subq	(%rdi,%rax,8), %rcx
	imulq	8(%r8), %rdx
	leaq	2(%rdx,%rsi), %rax
	movq	%rcx, (%r8,%rax,8)
	incq	-40(%rsp)
LBB6_3:                                 ## %while4
                                        ##   Parent Loop BB6_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-40(%rsp), %rax
	movq	-24(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jl	LBB6_4
	jmp	LBB6_5
LBB6_6:                                 ## %merge40
	movq	-16(%rsp), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_addIntMatrix           ## -- Begin function addIntMatrix
	.p2align	4, 0x90
_addIntMatrix:                          ## @addIntMatrix
	.cfi_startproc
## BB#0:                                ## %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	%rdi, -16(%rsp)
	movq	$0, -32(%rsp)
	jmp	LBB7_1
	.p2align	4, 0x90
LBB7_5:                                 ## %merge
                                        ##   in Loop: Header=BB7_1 Depth=1
	incq	-32(%rsp)
LBB7_1:                                 ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_3 Depth 2
	movq	-32(%rsp), %rax
	movq	-24(%rsp), %rcx
	cmpq	(%rcx), %rax
	jge	LBB7_6
## BB#2:                                ## %while_body
                                        ##   in Loop: Header=BB7_1 Depth=1
	movq	$0, -40(%rsp)
	jmp	LBB7_3
	.p2align	4, 0x90
LBB7_4:                                 ## %while_body5
                                        ##   in Loop: Header=BB7_3 Depth=2
	movq	-16(%rsp), %r8
	movq	-24(%rsp), %rcx
	movq	-32(%rsp), %rdx
	movq	-40(%rsp), %rsi
	movq	8(%rcx), %rdi
	imulq	%rdx, %rdi
	leaq	2(%rdi,%rsi), %rdi
	movq	(%rcx,%rdi,8), %rcx
	movq	-8(%rsp), %rdi
	movq	8(%rdi), %rax
	imulq	%rdx, %rax
	leaq	2(%rax,%rsi), %rax
	addq	(%rdi,%rax,8), %rcx
	imulq	8(%r8), %rdx
	leaq	2(%rdx,%rsi), %rax
	movq	%rcx, (%r8,%rax,8)
	incq	-40(%rsp)
LBB7_3:                                 ## %while4
                                        ##   Parent Loop BB7_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-40(%rsp), %rax
	movq	-24(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jl	LBB7_4
	jmp	LBB7_5
LBB7_6:                                 ## %merge40
	movq	-16(%rsp), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_subtractPixel          ## -- Begin function subtractPixel
	.p2align	4, 0x90
_subtractPixel:                         ## @subtractPixel
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbx
Lcfi15:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
Lcfi16:
	.cfi_def_cfa_offset 48
Lcfi17:
	.cfi_offset %rbx, -16
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movl	$32, %edi
	callq	_malloc
	movq	%rax, %rbx
	movq	$0, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	%rbx, 8(%rsp)
	movq	24(%rsp), %rax
	movq	(%rax), %rdi
	movq	16(%rsp), %rax
	subq	(%rax), %rdi
	callq	_abs
	movq	%rax, (%rbx)
	movq	8(%rsp), %rbx
	movq	24(%rsp), %rax
	movq	8(%rax), %rdi
	movq	16(%rsp), %rax
	subq	8(%rax), %rdi
	callq	_abs
	movq	%rax, 8(%rbx)
	movq	8(%rsp), %rbx
	movq	24(%rsp), %rax
	movq	16(%rax), %rdi
	movq	16(%rsp), %rax
	subq	16(%rax), %rdi
	callq	_abs
	movq	%rax, 16(%rbx)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rax
	movq	24(%rax), %rsi
	movq	24(%rsp), %rax
	movq	24(%rax), %rdi
	callq	_max
	movq	%rax, 24(%rbx)
	movq	8(%rsp), %rax
	addq	$32, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_grayscale              ## -- Begin function grayscale
	.p2align	4, 0x90
_grayscale:                             ## @grayscale
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%r15
Lcfi18:
	.cfi_def_cfa_offset 16
	pushq	%r14
Lcfi19:
	.cfi_def_cfa_offset 24
	pushq	%rbx
Lcfi20:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
Lcfi21:
	.cfi_def_cfa_offset 80
Lcfi22:
	.cfi_offset %rbx, -32
Lcfi23:
	.cfi_offset %r14, -24
Lcfi24:
	.cfi_offset %r15, -16
	movq	%rdi, 16(%rsp)
	movq	%rdi, 24(%rsp)
	movq	$0, 8(%rsp)
	movabsq	$6148914691236517206, %r14 ## imm = 0x5555555555555556
	jmp	LBB9_1
	.p2align	4, 0x90
LBB9_5:                                 ## %merge
                                        ##   in Loop: Header=BB9_1 Depth=1
	incq	8(%rsp)
LBB9_1:                                 ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_3 Depth 2
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	cmpq	(%rcx), %rax
	jge	LBB9_6
## BB#2:                                ## %while_body
                                        ##   in Loop: Header=BB9_1 Depth=1
	movq	$0, (%rsp)
	jmp	LBB9_3
	.p2align	4, 0x90
LBB9_4:                                 ## %while_body4
                                        ##   in Loop: Header=BB9_3 Depth=2
	movq	16(%rsp), %r15
	movq	8(%r15), %rbx
	imulq	8(%rsp), %rbx
	addq	(%rsp), %rbx
	shlq	$5, %rbx
	movl	$32, %edi
	callq	_malloc
	movq	16(%r15,%rbx), %rcx
	movq	24(%r15,%rbx), %rdx
	movq	32(%r15,%rbx), %rsi
	movq	40(%r15,%rbx), %rdi
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	%rax, 32(%rsp)
	movq	(%rax), %rcx
	addq	8(%rax), %rcx
	addq	16(%rax), %rcx
	movq	%rcx, %rax
	imulq	%r14
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	movq	%rax, 40(%rsp)
	movq	24(%rsp), %rbx
	movl	$32, %edi
	callq	_malloc
	movq	40(%rsp), %rcx
	movq	32(%rsp), %rdx
	movq	24(%rdx), %rdx
	movq	%rcx, (%rax)
	movq	%rcx, 8(%rax)
	movq	%rcx, 16(%rax)
	movq	%rdx, 24(%rax)
	movq	8(%rbx), %rax
	imulq	8(%rsp), %rax
	addq	(%rsp), %rax
	shlq	$5, %rax
	movq	%rcx, 16(%rbx,%rax)
	movq	%rcx, 24(%rbx,%rax)
	movq	%rcx, 32(%rbx,%rax)
	movq	%rdx, 40(%rbx,%rax)
	incq	(%rsp)
LBB9_3:                                 ## %while3
                                        ##   Parent Loop BB9_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rsp), %rax
	movq	16(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jl	LBB9_4
	jmp	LBB9_5
LBB9_6:                                 ## %merge71
	movq	24(%rsp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_addPixel               ## -- Begin function addPixel
	.p2align	4, 0x90
_addPixel:                              ## @addPixel
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%rbx
Lcfi25:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
Lcfi26:
	.cfi_def_cfa_offset 48
Lcfi27:
	.cfi_offset %rbx, -16
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movl	$32, %edi
	callq	_malloc
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	16(%rsp), %rdx
	addq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movq	8(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	8(%rcx), %rcx
	movq	16(%rsp), %rdx
	addq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	16(%rcx), %rcx
	movq	16(%rsp), %rdx
	addq	16(%rdx), %rcx
	movq	%rcx, 16(%rax)
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rax
	movq	24(%rax), %rsi
	movq	24(%rsp), %rax
	movq	24(%rax), %rdi
	callq	_max
	movq	%rax, 24(%rbx)
	movq	8(%rsp), %rax
	addq	$32, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_matrixAnd              ## -- Begin function matrixAnd
	.p2align	4, 0x90
_matrixAnd:                             ## @matrixAnd
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%r15
Lcfi28:
	.cfi_def_cfa_offset 16
	pushq	%r14
Lcfi29:
	.cfi_def_cfa_offset 24
	pushq	%rbx
Lcfi30:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
Lcfi31:
	.cfi_def_cfa_offset 80
Lcfi32:
	.cfi_offset %rbx, -32
Lcfi33:
	.cfi_offset %r14, -24
Lcfi34:
	.cfi_offset %r15, -16
	movq	%rdi, 24(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdi, 32(%rsp)
	movq	$0, 16(%rsp)
	jmp	LBB11_1
	.p2align	4, 0x90
LBB11_7:                                ## %merge131
                                        ##   in Loop: Header=BB11_1 Depth=1
	incq	16(%rsp)
LBB11_1:                                ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB11_3 Depth 2
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	cmpq	(%rcx), %rax
	jge	LBB11_8
## BB#2:                                ## %while_body
                                        ##   in Loop: Header=BB11_1 Depth=1
	movq	$0, 8(%rsp)
	jmp	LBB11_3
	.p2align	4, 0x90
LBB11_6:                                ## %else
                                        ##   in Loop: Header=BB11_3 Depth=2
	movq	32(%rsp), %rbx
	movl	$32, %edi
	callq	_malloc
	movq	$255, (%rax)
	movq	$255, 8(%rax)
	movq	$255, 16(%rax)
	movq	$255, 24(%rax)
	movq	8(%rbx), %rax
	imulq	16(%rsp), %rax
	addq	8(%rsp), %rax
	shlq	$5, %rax
	movq	$255, 16(%rbx,%rax)
	movq	$255, 24(%rbx,%rax)
	movq	$255, 32(%rbx,%rax)
	movq	$255, 40(%rbx,%rax)
	incq	8(%rsp)
LBB11_3:                                ## %while4
                                        ##   Parent Loop BB11_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	8(%rsp), %rax
	movq	24(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jge	LBB11_7
## BB#4:                                ## %while_body5
                                        ##   in Loop: Header=BB11_3 Depth=2
	movq	40(%rsp), %r15
	movq	8(%r15), %rbx
	imulq	16(%rsp), %rbx
	addq	8(%rsp), %rbx
	shlq	$5, %rbx
	movl	$32, %edi
	callq	_malloc
	movq	%rax, %r14
	movq	16(%r15,%rbx), %rax
	movq	24(%r15,%rbx), %rcx
	movq	32(%r15,%rbx), %rdx
	movq	40(%r15,%rbx), %rsi
	movq	%rax, (%r14)
	movq	%rcx, 8(%r14)
	movq	%rdx, 16(%r14)
	movq	%rsi, 24(%r14)
	movq	24(%rsp), %r15
	movq	8(%r15), %rbx
	imulq	16(%rsp), %rbx
	addq	8(%rsp), %rbx
	shlq	$5, %rbx
	movl	$32, %edi
	callq	_malloc
	movq	16(%r15,%rbx), %rcx
	movq	24(%r15,%rbx), %rdx
	movq	32(%r15,%rbx), %rsi
	movq	40(%r15,%rbx), %rdi
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_pixelEquality
	testb	$1, %al
	je	LBB11_6
## BB#5:                                ## %then
                                        ##   in Loop: Header=BB11_3 Depth=2
	movq	32(%rsp), %r14
	movq	24(%rsp), %r15
	movq	8(%r15), %rbx
	imulq	16(%rsp), %rbx
	addq	8(%rsp), %rbx
	shlq	$5, %rbx
	movl	$32, %edi
	callq	_malloc
	movq	16(%r15,%rbx), %rcx
	movq	24(%r15,%rbx), %rdx
	movq	32(%r15,%rbx), %rsi
	movq	40(%r15,%rbx), %rdi
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	8(%r14), %rax
	imulq	16(%rsp), %rax
	addq	8(%rsp), %rax
	shlq	$5, %rax
	movq	%rcx, 16(%r14,%rax)
	movq	%rdx, 24(%r14,%rax)
	movq	%rsi, 32(%r14,%rax)
	movq	%rdi, 40(%r14,%rax)
	incq	8(%rsp)
	jmp	LBB11_3
LBB11_8:                                ## %merge139
	movq	32(%rsp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_pixelEquality          ## -- Begin function pixelEquality
	.p2align	4, 0x90
_pixelEquality:                         ## @pixelEquality
	.cfi_startproc
## BB#0:                                ## %entry
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	jne	LBB12_5
## BB#1:                                ## %entry
	movq	8(%rsi), %rax
	cmpq	%rax, 8(%rdi)
	jne	LBB12_5
## BB#2:                                ## %entry
	movq	16(%rsi), %rax
	cmpq	%rax, 16(%rdi)
	jne	LBB12_5
## BB#3:                                ## %entry
	movq	24(%rsi), %rax
	cmpq	%rax, 24(%rdi)
	jne	LBB12_5
## BB#4:                                ## %then
	movb	$1, %al
	retq
LBB12_5:                                ## %else
	xorl	%eax, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_flipPixelMatrixV       ## -- Begin function flipPixelMatrixV
	.p2align	4, 0x90
_flipPixelMatrixV:                      ## @flipPixelMatrixV
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%r15
Lcfi35:
	.cfi_def_cfa_offset 16
	pushq	%r14
Lcfi36:
	.cfi_def_cfa_offset 24
	pushq	%rbx
Lcfi37:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
Lcfi38:
	.cfi_def_cfa_offset 80
Lcfi39:
	.cfi_offset %rbx, -32
Lcfi40:
	.cfi_offset %r14, -24
Lcfi41:
	.cfi_offset %r15, -16
	movq	%rdi, 40(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, 32(%rsp)
	movq	%rdi, 16(%rsp)
	movq	$0, 8(%rsp)
	jmp	LBB13_1
	.p2align	4, 0x90
LBB13_5:                                ## %merge
                                        ##   in Loop: Header=BB13_1 Depth=1
	incq	8(%rsp)
LBB13_1:                                ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB13_3 Depth 2
	movq	8(%rsp), %rax
	cmpq	32(%rsp), %rax
	jge	LBB13_6
## BB#2:                                ## %while_body
                                        ##   in Loop: Header=BB13_1 Depth=1
	movq	$0, (%rsp)
	jmp	LBB13_3
	.p2align	4, 0x90
LBB13_4:                                ## %while_body9
                                        ##   in Loop: Header=BB13_3 Depth=2
	movq	16(%rsp), %r14
	movq	40(%rsp), %r15
	movq	24(%rsp), %rbx
	decq	%rbx
	subq	(%rsp), %rbx
	imulq	8(%r15), %rbx
	addq	8(%rsp), %rbx
	shlq	$5, %rbx
	movl	$32, %edi
	callq	_malloc
	movq	16(%r15,%rbx), %rcx
	movq	24(%r15,%rbx), %rdx
	movq	32(%r15,%rbx), %rsi
	movq	40(%r15,%rbx), %rdi
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	8(%r14), %rax
	imulq	(%rsp), %rax
	addq	8(%rsp), %rax
	shlq	$5, %rax
	movq	%rcx, 16(%r14,%rax)
	movq	%rdx, 24(%r14,%rax)
	movq	%rsi, 32(%r14,%rax)
	movq	%rdi, 40(%r14,%rax)
	incq	(%rsp)
LBB13_3:                                ## %while8
                                        ##   Parent Loop BB13_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rsp), %rax
	cmpq	24(%rsp), %rax
	jl	LBB13_4
	jmp	LBB13_5
LBB13_6:                                ## %merge55
	movq	16(%rsp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_flipIntMatrixV         ## -- Begin function flipIntMatrixV
	.p2align	4, 0x90
_flipIntMatrixV:                        ## @flipIntMatrixV
	.cfi_startproc
## BB#0:                                ## %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -24(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	%rdi, -32(%rsp)
	movq	$0, -40(%rsp)
	jmp	LBB14_1
	.p2align	4, 0x90
LBB14_5:                                ## %merge
                                        ##   in Loop: Header=BB14_1 Depth=1
	incq	-40(%rsp)
LBB14_1:                                ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_3 Depth 2
	movq	-40(%rsp), %rax
	cmpq	-16(%rsp), %rax
	jge	LBB14_6
## BB#2:                                ## %while_body
                                        ##   in Loop: Header=BB14_1 Depth=1
	movq	$0, -48(%rsp)
	jmp	LBB14_3
	.p2align	4, 0x90
LBB14_4:                                ## %while_body9
                                        ##   in Loop: Header=BB14_3 Depth=2
	movq	-32(%rsp), %rax
	movq	-8(%rsp), %rcx
	movq	-24(%rsp), %rdx
	decq	%rdx
	movq	-48(%rsp), %rsi
	subq	%rsi, %rdx
	movq	-40(%rsp), %rdi
	imulq	8(%rcx), %rdx
	leaq	2(%rdx,%rdi), %rdx
	movq	(%rcx,%rdx,8), %rcx
	imulq	8(%rax), %rsi
	leaq	2(%rsi,%rdi), %rdx
	movq	%rcx, (%rax,%rdx,8)
	incq	-48(%rsp)
LBB14_3:                                ## %while8
                                        ##   Parent Loop BB14_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-48(%rsp), %rax
	cmpq	-24(%rsp), %rax
	jl	LBB14_4
	jmp	LBB14_5
LBB14_6:                                ## %merge34
	movq	-32(%rsp), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_flipPixelMatrixH       ## -- Begin function flipPixelMatrixH
	.p2align	4, 0x90
_flipPixelMatrixH:                      ## @flipPixelMatrixH
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%r15
Lcfi42:
	.cfi_def_cfa_offset 16
	pushq	%r14
Lcfi43:
	.cfi_def_cfa_offset 24
	pushq	%rbx
Lcfi44:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
Lcfi45:
	.cfi_def_cfa_offset 80
Lcfi46:
	.cfi_offset %rbx, -32
Lcfi47:
	.cfi_offset %r14, -24
Lcfi48:
	.cfi_offset %r15, -16
	movq	%rdi, 40(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	%rdi, 16(%rsp)
	movq	$0, 8(%rsp)
	jmp	LBB15_1
	.p2align	4, 0x90
LBB15_5:                                ## %merge
                                        ##   in Loop: Header=BB15_1 Depth=1
	incq	8(%rsp)
LBB15_1:                                ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB15_3 Depth 2
	movq	8(%rsp), %rax
	cmpq	32(%rsp), %rax
	jge	LBB15_6
## BB#2:                                ## %while_body
                                        ##   in Loop: Header=BB15_1 Depth=1
	movq	$0, (%rsp)
	jmp	LBB15_3
	.p2align	4, 0x90
LBB15_4:                                ## %while_body9
                                        ##   in Loop: Header=BB15_3 Depth=2
	movq	16(%rsp), %r14
	movq	40(%rsp), %r15
	movq	8(%r15), %rbx
	movq	24(%rsp), %rax
	decq	%rax
	subq	(%rsp), %rax
	imulq	8(%rsp), %rbx
	addq	%rax, %rbx
	shlq	$5, %rbx
	movl	$32, %edi
	callq	_malloc
	movq	16(%r15,%rbx), %rcx
	movq	24(%r15,%rbx), %rdx
	movq	32(%r15,%rbx), %rsi
	movq	40(%r15,%rbx), %rdi
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	8(%r14), %rax
	imulq	8(%rsp), %rax
	addq	(%rsp), %rax
	shlq	$5, %rax
	movq	%rcx, 16(%r14,%rax)
	movq	%rdx, 24(%r14,%rax)
	movq	%rsi, 32(%r14,%rax)
	movq	%rdi, 40(%r14,%rax)
	incq	(%rsp)
LBB15_3:                                ## %while8
                                        ##   Parent Loop BB15_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rsp), %rax
	cmpq	24(%rsp), %rax
	jl	LBB15_4
	jmp	LBB15_5
LBB15_6:                                ## %merge55
	movq	16(%rsp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_flipIntMatrixH         ## -- Begin function flipIntMatrixH
	.p2align	4, 0x90
_flipIntMatrixH:                        ## @flipIntMatrixH
	.cfi_startproc
## BB#0:                                ## %entry
	movq	%rdi, -8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, -24(%rsp)
	movq	%rdi, -32(%rsp)
	movq	$0, -40(%rsp)
	jmp	LBB16_1
	.p2align	4, 0x90
LBB16_5:                                ## %merge
                                        ##   in Loop: Header=BB16_1 Depth=1
	incq	-40(%rsp)
LBB16_1:                                ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB16_3 Depth 2
	movq	-40(%rsp), %rax
	cmpq	-16(%rsp), %rax
	jge	LBB16_6
## BB#2:                                ## %while_body
                                        ##   in Loop: Header=BB16_1 Depth=1
	movq	$0, -48(%rsp)
	jmp	LBB16_3
	.p2align	4, 0x90
LBB16_4:                                ## %while_body9
                                        ##   in Loop: Header=BB16_3 Depth=2
	movq	-32(%rsp), %r8
	movq	-8(%rsp), %rcx
	movq	-40(%rsp), %rdx
	movq	-24(%rsp), %rsi
	decq	%rsi
	movq	-48(%rsp), %rdi
	subq	%rdi, %rsi
	movq	8(%rcx), %rax
	imulq	%rdx, %rax
	addq	%rsi, %rax
	movq	16(%rcx,%rax,8), %rax
	imulq	8(%r8), %rdx
	addq	%rdi, %rdx
	movq	%rax, 16(%r8,%rdx,8)
	incq	-48(%rsp)
LBB16_3:                                ## %while8
                                        ##   Parent Loop BB16_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-48(%rsp), %rax
	cmpq	-24(%rsp), %rax
	jl	LBB16_4
	jmp	LBB16_5
LBB16_6:                                ## %merge34
	movq	-32(%rsp), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_cropIntMatrix          ## -- Begin function cropIntMatrix
	.p2align	4, 0x90
_cropIntMatrix:                         ## @cropIntMatrix
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%r14
Lcfi49:
	.cfi_def_cfa_offset 16
	pushq	%rbx
Lcfi50:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
Lcfi51:
	.cfi_def_cfa_offset 96
Lcfi52:
	.cfi_offset %rbx, -24
Lcfi53:
	.cfi_offset %r14, -16
	movq	%r8, %r14
	movq	%rdx, %rbx
	movq	%rdi, 56(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rbx, 48(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%r14, 40(%rsp)
	subq	%rsi, %rbx
	subq	%rcx, %r14
	movl	%r14d, %eax
	imull	%ebx, %eax
	leal	16(,%rax,8), %edi
	callq	_malloc
	movq	%rbx, (%rax)
	movq	%r14, 8(%rax)
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 8(%rsp)
	jmp	LBB17_1
	.p2align	4, 0x90
LBB17_5:                                ## %merge
                                        ##   in Loop: Header=BB17_1 Depth=1
	incq	8(%rsp)
LBB17_1:                                ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB17_3 Depth 2
	movq	8(%rsp), %rax
	cmpq	48(%rsp), %rax
	jge	LBB17_6
## BB#2:                                ## %while_body
                                        ##   in Loop: Header=BB17_1 Depth=1
	movq	24(%rsp), %rax
	movq	%rax, (%rsp)
	jmp	LBB17_3
	.p2align	4, 0x90
LBB17_4:                                ## %while_body15
                                        ##   in Loop: Header=BB17_3 Depth=2
	movq	16(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	(%rsp), %rsi
	movq	8(%rcx), %rdi
	imulq	%rdx, %rdi
	addq	%rsi, %rdi
	movq	16(%rcx,%rdi,8), %rcx
	subq	32(%rsp), %rdx
	subq	24(%rsp), %rsi
	imulq	8(%rax), %rdx
	addq	%rsi, %rdx
	movq	%rcx, 16(%rax,%rdx,8)
	incq	(%rsp)
LBB17_3:                                ## %while14
                                        ##   Parent Loop BB17_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rsp), %rax
	cmpq	40(%rsp), %rax
	jl	LBB17_4
	jmp	LBB17_5
LBB17_6:                                ## %merge43
	movq	16(%rsp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_cropPixelMatrix        ## -- Begin function cropPixelMatrix
	.p2align	4, 0x90
_cropPixelMatrix:                       ## @cropPixelMatrix
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%r15
Lcfi54:
	.cfi_def_cfa_offset 16
	pushq	%r14
Lcfi55:
	.cfi_def_cfa_offset 24
	pushq	%rbx
Lcfi56:
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
Lcfi57:
	.cfi_def_cfa_offset 112
Lcfi58:
	.cfi_offset %rbx, -32
Lcfi59:
	.cfi_offset %r14, -24
Lcfi60:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rdx, %rbx
	movq	%rdi, 64(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rbx, 56(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%r14, 48(%rsp)
	subq	%rsi, %rbx
	subq	%rcx, %r14
	movl	%r14d, %edi
	imull	%ebx, %edi
	shll	$5, %edi
	orl	$16, %edi
	callq	_malloc
	movq	%rbx, (%rax)
	movq	%r14, 8(%rax)
	movq	%rax, 24(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 16(%rsp)
	jmp	LBB18_1
	.p2align	4, 0x90
LBB18_5:                                ## %merge
                                        ##   in Loop: Header=BB18_1 Depth=1
	incq	16(%rsp)
LBB18_1:                                ## %while
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB18_3 Depth 2
	movq	16(%rsp), %rax
	cmpq	56(%rsp), %rax
	jge	LBB18_6
## BB#2:                                ## %while_body
                                        ##   in Loop: Header=BB18_1 Depth=1
	movq	32(%rsp), %rax
	movq	%rax, 8(%rsp)
	jmp	LBB18_3
	.p2align	4, 0x90
LBB18_4:                                ## %while_body16
                                        ##   in Loop: Header=BB18_3 Depth=2
	movq	24(%rsp), %r14
	movq	64(%rsp), %r15
	movq	8(%r15), %rbx
	imulq	16(%rsp), %rbx
	addq	8(%rsp), %rbx
	shlq	$5, %rbx
	movl	$32, %edi
	callq	_malloc
	movq	16(%r15,%rbx), %rcx
	movq	24(%r15,%rbx), %rdx
	movq	32(%r15,%rbx), %rsi
	movq	40(%r15,%rbx), %rdi
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	16(%rsp), %rax
	subq	40(%rsp), %rax
	movq	8(%rsp), %rbx
	subq	32(%rsp), %rbx
	imulq	8(%r14), %rax
	addq	%rbx, %rax
	shlq	$5, %rax
	movq	%rcx, 16(%r14,%rax)
	movq	%rdx, 24(%r14,%rax)
	movq	%rsi, 32(%r14,%rax)
	movq	%rdi, 40(%r14,%rax)
	incq	8(%rsp)
LBB18_3:                                ## %while15
                                        ##   Parent Loop BB18_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	8(%rsp), %rax
	cmpq	48(%rsp), %rax
	jl	LBB18_4
	jmp	LBB18_5
LBB18_6:                                ## %merge68
	movq	24(%rsp), %rax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_abs                    ## -- Begin function abs
	.p2align	4, 0x90
_abs:                                   ## @abs
	.cfi_startproc
## BB#0:                                ## %entry
	movq	%rdi, -8(%rsp)
	testq	%rdi, %rdi
	jle	LBB19_2
## BB#1:                                ## %then
	movq	-8(%rsp), %rax
	retq
LBB19_2:                                ## %else
	xorl	%eax, %eax
	subq	-8(%rsp), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_max                    ## -- Begin function max
	.p2align	4, 0x90
_max:                                   ## @max
	.cfi_startproc
## BB#0:                                ## %entry
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	cmpq	%rsi, %rdi
	jge	LBB20_2
## BB#1:                                ## %then
	movq	-16(%rsp), %rax
	retq
LBB20_2:                                ## %else
	movq	-8(%rsp), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_decrement              ## -- Begin function decrement
	.p2align	4, 0x90
_decrement:                             ## @decrement
	.cfi_startproc
## BB#0:                                ## %entry
	movq	%rdi, -8(%rsp)
	leaq	-1(%rdi), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_increment              ## -- Begin function increment
	.p2align	4, 0x90
_increment:                             ## @increment
	.cfi_startproc
## BB#0:                                ## %entry
	movq	%rdi, -8(%rsp)
	leaq	1(%rdi), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:                                ## %entry
	pushq	%r14
Lcfi61:
	.cfi_def_cfa_offset 16
	pushq	%rbx
Lcfi62:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
Lcfi63:
	.cfi_def_cfa_offset 48
Lcfi64:
	.cfi_offset %rbx, -24
Lcfi65:
	.cfi_offset %r14, -16
	leaq	L_strptr(%rip), %rdi
	xorl	%eax, %eax
	callq	_read_img
	movq	%rax, (%rsp)
	leaq	L_strptr.48(%rip), %rdi
	xorl	%eax, %eax
	callq	_read_img
	movq	%rax, 16(%rsp)
	movq	(%rsp), %rbx
	movl	$32, %edi
	callq	_malloc
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rdx
	movq	32(%rbx), %rsi
	movq	40(%rbx), %rdi
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	%rax, 8(%rsp)
	movq	(%rax), %rsi
	leaq	L_fmt.46(%rip), %r14
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movq	16(%rsp), %rbx
	movl	$32, %edi
	callq	_malloc
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rdx
	movq	32(%rbx), %rsi
	movq	40(%rbx), %rdi
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	%rax, 8(%rsp)
	movq	(%rax), %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movq	(%rsp), %rax
	movq	(%rax), %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movq	(%rsp), %rax
	movq	8(%rax), %rsi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_fmt:                                  ## @fmt
	.asciz	"%d\n"

L_fmt.1:                                ## @fmt.1
	.asciz	"%s\n"

L_fmt.2:                                ## @fmt.2
	.asciz	"%d\n"

L_fmt.3:                                ## @fmt.3
	.asciz	"%s\n"

L_fmt.4:                                ## @fmt.4
	.asciz	"%d\n"

L_fmt.5:                                ## @fmt.5
	.asciz	"%s\n"

L_fmt.6:                                ## @fmt.6
	.asciz	"%d\n"

L_fmt.7:                                ## @fmt.7
	.asciz	"%s\n"

L_fmt.8:                                ## @fmt.8
	.asciz	"%d\n"

L_fmt.9:                                ## @fmt.9
	.asciz	"%s\n"

L_fmt.10:                               ## @fmt.10
	.asciz	"%d\n"

L_fmt.11:                               ## @fmt.11
	.asciz	"%s\n"

L_fmt.12:                               ## @fmt.12
	.asciz	"%d\n"

L_fmt.13:                               ## @fmt.13
	.asciz	"%s\n"

L_fmt.14:                               ## @fmt.14
	.asciz	"%d\n"

L_fmt.15:                               ## @fmt.15
	.asciz	"%s\n"

L_fmt.16:                               ## @fmt.16
	.asciz	"%d\n"

L_fmt.17:                               ## @fmt.17
	.asciz	"%s\n"

L_fmt.18:                               ## @fmt.18
	.asciz	"%d\n"

L_fmt.19:                               ## @fmt.19
	.asciz	"%s\n"

L_fmt.20:                               ## @fmt.20
	.asciz	"%d\n"

L_fmt.21:                               ## @fmt.21
	.asciz	"%s\n"

L_fmt.22:                               ## @fmt.22
	.asciz	"%d\n"

L_fmt.23:                               ## @fmt.23
	.asciz	"%s\n"

L_fmt.24:                               ## @fmt.24
	.asciz	"%d\n"

L_fmt.25:                               ## @fmt.25
	.asciz	"%s\n"

L_fmt.26:                               ## @fmt.26
	.asciz	"%d\n"

L_fmt.27:                               ## @fmt.27
	.asciz	"%s\n"

L_fmt.28:                               ## @fmt.28
	.asciz	"%d\n"

L_fmt.29:                               ## @fmt.29
	.asciz	"%s\n"

L_fmt.30:                               ## @fmt.30
	.asciz	"%d\n"

L_fmt.31:                               ## @fmt.31
	.asciz	"%s\n"

L_fmt.32:                               ## @fmt.32
	.asciz	"%d\n"

L_fmt.33:                               ## @fmt.33
	.asciz	"%s\n"

L_fmt.34:                               ## @fmt.34
	.asciz	"%d\n"

L_fmt.35:                               ## @fmt.35
	.asciz	"%s\n"

L_fmt.36:                               ## @fmt.36
	.asciz	"%d\n"

L_fmt.37:                               ## @fmt.37
	.asciz	"%s\n"

L_fmt.38:                               ## @fmt.38
	.asciz	"%d\n"

L_fmt.39:                               ## @fmt.39
	.asciz	"%s\n"

L_fmt.40:                               ## @fmt.40
	.asciz	"%d\n"

L_fmt.41:                               ## @fmt.41
	.asciz	"%s\n"

L_fmt.42:                               ## @fmt.42
	.asciz	"%d\n"

L_fmt.43:                               ## @fmt.43
	.asciz	"%s\n"

L_fmt.44:                               ## @fmt.44
	.asciz	"%d\n"

L_fmt.45:                               ## @fmt.45
	.asciz	"%s\n"

L_fmt.46:                               ## @fmt.46
	.asciz	"%d\n"

L_fmt.47:                               ## @fmt.47
	.asciz	"%s\n"

L_strptr:                               ## @strptr
	.asciz	"test.png"

L_strptr.48:                            ## @strptr.48
	.asciz	"test.jpg"


.subsections_via_symbols
