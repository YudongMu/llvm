	.file	"multiply.c"
	.text
	.globl	mult                            # -- Begin function mult
	.p2align	4
	.type	mult,@function
mult:                                   # @mult
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$5, -12(%rbp)
	movl	$3, -8(%rbp)
	movl	-12(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	mult, .Lfunc_end0-mult
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 21.0.0git"
	.section	".note.GNU-stack","",@progbits
