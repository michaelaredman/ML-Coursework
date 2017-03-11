	.const
	.align 3
LC0:
	.ascii "Matrix is numerically singular!"
LC1:
	.ascii "Matrix inversion failed!"
	.text
	.globl ___cluster_MOD_inv
___cluster_MOD_inv:
LFB0:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$456, %rsp
LCFI2:
	movq	%rdi, -456(%rbp)
	movq	%rsi, -464(%rbp)
	movq	-464(%rbp), %rax
	movq	24(%rax), %rbx
	testq	%rbx, %rbx
	jne	L3
	movl	$1, %ebx
L3:
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-464(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-464(%rbp), %rax
	movq	48(%rax), %r12
	movq	-464(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-464(%rbp), %rax
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	%r12, %rax
	imulq	-72(%rbp), %rax
	movq	%rbx, %rdx
	negq	%rdx
	subq	%r12, %rdx
	movq	%rdx, %r15
	movq	%rax, %r13
	movl	$0, %r14d
	movq	-456(%rbp), %rax
	movq	24(%rax), %r13
	testq	%r13, %r13
	jne	L5
	movl	$1, %r13d
L5:
	movq	-456(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	$538, -432(%rbp)
	movq	$1, -416(%rbp)
	movq	%rdx, -408(%rbp)
	movq	%rbx, -424(%rbp)
	movq	$1, -392(%rbp)
	movq	%rax, -384(%rbp)
	movq	%r12, -400(%rbp)
	movq	$0, -448(%rbp)
	movq	$-1, -440(%rbp)
	leaq	-448(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -88(%rbp)
	movq	-456(%rbp), %rax
	movq	48(%rax), %r14
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	$538, -352(%rbp)
	movq	$1, -336(%rbp)
	movq	%rdx, -328(%rbp)
	movq	%rbx, -344(%rbp)
	movq	$1, -312(%rbp)
	movq	%rax, -304(%rbp)
	movq	%r12, -320(%rbp)
	movq	$0, -368(%rbp)
	movq	$-1, -360(%rbp)
	leaq	-368(%rbp), %rax
	movq	64(%rax), %rdx
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -96(%rbp)
	movq	%r14, %rax
	imulq	-96(%rbp), %rax
	movq	%r13, %rdx
	negq	%rdx
	subq	%r14, %rdx
	movq	%rdx, -472(%rbp)
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	$538, -272(%rbp)
	movq	$1, -256(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rbx, -264(%rbp)
	movq	$1, -232(%rbp)
	movq	%rax, -224(%rbp)
	movq	%r12, -240(%rbp)
	movq	$0, -288(%rbp)
	movq	$-1, -280(%rbp)
	leaq	-288(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %r8
	movl	$0, %r9d
	salq	$2, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	$538, -192(%rbp)
	movq	$1, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rbx, -184(%rbp)
	movq	$1, -152(%rbp)
	movq	%rax, -144(%rbp)
	movq	%r12, -160(%rbp)
	movq	$0, -208(%rbp)
	movq	$-1, -200(%rbp)
	leaq	-208(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, -496(%rbp)
	movq	$0, -488(%rbp)
	salq	$3, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movl	$1, %eax
L9:
	cmpq	%rdi, %rax
	jg	L6
	movq	%rax, %rdx
	imulq	%r12, %rdx
	leaq	(%rdx,%r15), %r10
	movq	%rax, %rdx
	imulq	%r14, %rdx
	movq	-472(%rbp), %rcx
	leaq	(%rdx,%rcx), %r11
	movl	$1, %edx
L8:
	cmpq	%rsi, %rdx
	jg	L7
	movq	%rdx, %rcx
	imulq	%r13, %rcx
	leaq	(%rcx,%r11), %r8
	movq	%rdx, %rcx
	imulq	%rbx, %rcx
	leaq	(%rcx,%r10), %r9
	movq	-56(%rbp), %rcx
	movsd	(%rcx,%r9,8), %xmm0
	movq	-80(%rbp), %rcx
	movsd	%xmm0, (%rcx,%r8,8)
	addq	$1, %rdx
	jmp	L8
L7:
	addq	$1, %rax
	jmp	L9
L6:
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	$538, -352(%rbp)
	movq	$1, -336(%rbp)
	movq	%rdx, -328(%rbp)
	movq	%rbx, -344(%rbp)
	movq	$1, -312(%rbp)
	movq	%rax, -304(%rbp)
	movq	%r12, -320(%rbp)
	movq	$0, -368(%rbp)
	movq	$-1, -360(%rbp)
	leaq	-368(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -296(%rbp)
	leaq	-292(%rbp), %r8
	movq	-112(%rbp), %rdi
	leaq	-296(%rbp), %rcx
	movq	-80(%rbp), %rdx
	leaq	-296(%rbp), %rsi
	leaq	-296(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	_dgetrf_
	movl	-292(%rbp), %eax
	testl	%eax, %eax
	je	L10
	movl	$31, %esi
	leaq	LC0(%rip), %rdi
	call	__gfortran_stop_string
L10:
	leaq	-296(%rbp), %r9
	movq	-128(%rbp), %r8
	movq	-112(%rbp), %rcx
	leaq	-296(%rbp), %rdx
	movq	-80(%rbp), %rsi
	leaq	-296(%rbp), %rax
	subq	$8, %rsp
	leaq	-292(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_dgetri_
	addq	$16, %rsp
	movl	-292(%rbp), %eax
	testl	%eax, %eax
	je	L11
	movl	$24, %esi
	leaq	LC1(%rip), %rdi
	call	__gfortran_stop_string
L11:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	nop
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI3:
	ret
LFE0:
	.globl ___cluster_MOD_comb_cov
___cluster_MOD_comb_cov:
LFB1:
	pushq	%rbp
LCFI4:
	movq	%rsp, %rbp
LCFI5:
	pushq	%rbx
	subq	$72, %rsp
LCFI6:
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	___cluster_MOD_sin_cov
	movq	%xmm0, %rbx
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	___cluster_MOD_se_cov
	movq	%xmm0, %rax
	movq	%rbx, %xmm0
	movq	%rax, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
LCFI7:
	ret
LFE1:
	.globl ___cluster_MOD_sin_cov
___cluster_MOD_sin_cov:
LFB2:
	pushq	%rbp
LCFI8:
	movq	%rsp, %rbp
LCFI9:
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm3
	movsd	%xmm3, -56(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0
	divsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	_sin
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0
	divsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	_sin
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-64(%rbp), %xmm0
	movsd	LC2(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	_exp
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
LCFI10:
	ret
LFE2:
	.globl ___cluster_MOD_se_cov
___cluster_MOD_se_cov:
LFB3:
	pushq	%rbp
LCFI11:
	movq	%rsp, %rbp
LCFI12:
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm3
	movsd	%xmm3, -56(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm2
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1
	divsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	LC2(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	_exp
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
LCFI13:
	ret
LFE3:
	.globl ___cluster_MOD_k_matrix_simple
___cluster_MOD_k_matrix_simple:
LFB4:
	pushq	%rbp
LCFI14:
	movq	%rsp, %rbp
LCFI15:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp
LCFI16:
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	-240(%rbp), %rax
	movq	24(%rax), %rbx
	testq	%rbx, %rbx
	jne	L20
	movl	$1, %ebx
L20:
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-240(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	%rbx, %rax
	imulq	-72(%rbp), %rax
	movq	%rbx, %rcx
	negq	%rcx
	movq	%rcx, -272(%rbp)
	movq	%rax, %r11
	movl	$0, %r12d
	movq	-248(%rbp), %rax
	movq	24(%rax), %r12
	testq	%r12, %r12
	jne	L22
	movl	$1, %r12d
L22:
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-248(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	%r12, %rax
	imulq	-88(%rbp), %rax
	movq	%r12, %rsi
	negq	%rsi
	movq	%rsi, -280(%rbp)
	movq	%rax, %r13
	movl	$0, %r14d
	movq	-232(%rbp), %rax
	movq	24(%rax), %r13
	testq	%r13, %r13
	jne	L24
	movl	$1, %r13d
L24:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	$537, -208(%rbp)
	movq	$1, -192(%rbp)
	movq	%rax, -184(%rbp)
	movq	%rbx, -200(%rbp)
	movq	$0, -224(%rbp)
	movq	$-1, -216(%rbp)
	leaq	-224(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -104(%rbp)
	movq	-232(%rbp), %rax
	movq	48(%rax), %r14
	movq	-88(%rbp), %rax
	movq	$537, -160(%rbp)
	movq	$1, -144(%rbp)
	movq	%rax, -136(%rbp)
	movq	%r12, -152(%rbp)
	movq	$0, -176(%rbp)
	movq	$-1, -168(%rbp)
	leaq	-176(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -112(%rbp)
	movq	%r14, %rax
	imulq	-112(%rbp), %rax
	movq	%r13, %rdx
	negq	%rdx
	subq	%r14, %rdx
	movq	%rdx, -288(%rbp)
	movq	%rax, %r9
	movl	$0, %r10d
	movq	-72(%rbp), %rax
	movq	$537, -160(%rbp)
	movq	$1, -144(%rbp)
	movq	%rax, -136(%rbp)
	movq	%rbx, -152(%rbp)
	movq	$0, -176(%rbp)
	movq	$-1, -168(%rbp)
	leaq	-176(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -116(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -160(%rbp)
	movq	$1, -144(%rbp)
	movq	%rax, -136(%rbp)
	movq	%r12, -152(%rbp)
	movq	$0, -176(%rbp)
	movq	$-1, -168(%rbp)
	leaq	-176(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -120(%rbp)
	movl	-116(%rbp), %r15d
	movl	$1, -52(%rbp)
	cmpl	%r15d, -52(%rbp)
	jg	L29
L28:
	movl	-120(%rbp), %eax
	movl	%eax, -292(%rbp)
	movl	$1, -56(%rbp)
	cmpl	%eax, -56(%rbp)
	jg	L26
L27:
	movl	-56(%rbp), %eax
	cltq
	imulq	%r14, %rax
	movq	-288(%rbp), %rdi
	leaq	(%rax,%rdi), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r13, %rax
	addq	%rdx, %rax
	movq	%rax, -304(%rbp)
	movl	-56(%rbp), %eax
	cltq
	imulq	%r12, %rax
	addq	-280(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-52(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	-272(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	___cluster_MOD_se_cov
	movq	%xmm0, %rdx
	movq	-96(%rbp), %rax
	movq	-304(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movl	-292(%rbp), %eax
	cmpl	%eax, -56(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -56(%rbp)
	testl	%eax, %eax
	jne	L26
	jmp	L27
L26:
	cmpl	%r15d, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -52(%rbp)
	testl	%eax, %eax
	jne	L29
	jmp	L28
L29:
	nop
	addq	$264, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI17:
	ret
LFE4:
	.globl ___cluster_MOD_k_matrix
___cluster_MOD_k_matrix:
LFB5:
	pushq	%rbp
LCFI18:
	movq	%rsp, %rbp
LCFI19:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp
LCFI20:
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-240(%rbp), %rax
	movq	24(%rax), %rbx
	testq	%rbx, %rbx
	jne	L32
	movl	$1, %ebx
L32:
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-240(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	%rbx, %rax
	imulq	-72(%rbp), %rax
	movq	%rbx, %rcx
	negq	%rcx
	movq	%rcx, -280(%rbp)
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-248(%rbp), %rax
	movq	24(%rax), %r14
	testq	%r14, %r14
	jne	L34
	movl	$1, %r14d
L34:
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-248(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	%r14, %rax
	imulq	-88(%rbp), %rax
	movq	%r14, %rsi
	negq	%rsi
	movq	%rsi, -288(%rbp)
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-232(%rbp), %rax
	movq	24(%rax), %r12
	testq	%r12, %r12
	jne	L36
	movl	$1, %r12d
L36:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	$537, -208(%rbp)
	movq	$1, -192(%rbp)
	movq	%rax, -184(%rbp)
	movq	%rbx, -200(%rbp)
	movq	$0, -224(%rbp)
	movq	$-1, -216(%rbp)
	leaq	-224(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -104(%rbp)
	movq	-232(%rbp), %rax
	movq	48(%rax), %r13
	movq	-88(%rbp), %rax
	movq	$537, -160(%rbp)
	movq	$1, -144(%rbp)
	movq	%rax, -136(%rbp)
	movq	%r14, -152(%rbp)
	movq	$0, -176(%rbp)
	movq	$-1, -168(%rbp)
	leaq	-176(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -112(%rbp)
	movq	%r13, %rax
	imulq	-112(%rbp), %rax
	movq	%r12, %rdx
	negq	%rdx
	subq	%r13, %rdx
	movq	%rdx, -296(%rbp)
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-72(%rbp), %rax
	movq	$537, -160(%rbp)
	movq	$1, -144(%rbp)
	movq	%rax, -136(%rbp)
	movq	%rbx, -152(%rbp)
	movq	$0, -176(%rbp)
	movq	$-1, -168(%rbp)
	leaq	-176(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -116(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -160(%rbp)
	movq	$1, -144(%rbp)
	movq	%rax, -136(%rbp)
	movq	%r14, -152(%rbp)
	movq	$0, -176(%rbp)
	movq	$-1, -168(%rbp)
	leaq	-176(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -120(%rbp)
	movl	-116(%rbp), %r15d
	movl	$1, -52(%rbp)
	cmpl	%r15d, -52(%rbp)
	jg	L41
L40:
	movl	-120(%rbp), %eax
	movl	%eax, -300(%rbp)
	movl	$1, -56(%rbp)
	cmpl	%eax, -56(%rbp)
	jg	L38
L39:
	movl	-56(%rbp), %eax
	cltq
	imulq	%r13, %rax
	movq	-296(%rbp), %rdi
	leaq	(%rax,%rdi), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	%r12, %rax
	addq	%rdx, %rax
	movq	%rax, -312(%rbp)
	movl	-56(%rbp), %eax
	cltq
	imulq	%r14, %rax
	addq	-288(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-52(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	-280(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %r10
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	-256(%rbp), %rsi
	movq	16(%rbp), %r9
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%r10, %rdi
	call	___cluster_MOD_comb_cov
	movq	%xmm0, %rdx
	movq	-96(%rbp), %rax
	movq	-312(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movl	-300(%rbp), %eax
	cmpl	%eax, -56(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -56(%rbp)
	testl	%eax, %eax
	jne	L38
	jmp	L39
L38:
	cmpl	%r15d, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -52(%rbp)
	testl	%eax, %eax
	jne	L41
	jmp	L40
L41:
	nop
	addq	$280, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI21:
	ret
LFE5:
	.globl ___cluster_MOD_kernal_simple
___cluster_MOD_kernal_simple:
LFB6:
	pushq	%rbp
LCFI22:
	movq	%rsp, %rbp
LCFI23:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1336, %rsp
LCFI24:
	movq	%rdi, -1144(%rbp)
	movq	%rsi, -1152(%rbp)
	movq	%rdx, -1160(%rbp)
	movq	%rcx, -1168(%rbp)
	movq	%r8, -1176(%rbp)
	movq	%r9, -1184(%rbp)
	movq	-1160(%rbp), %rax
	movq	24(%rax), %r12
	testq	%r12, %r12
	jne	L44
	movl	$1, %r12d
L44:
	movq	-1160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-1160(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-1160(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	%r12, %rax
	imulq	-72(%rbp), %rax
	movq	%r12, %rbx
	negq	%rbx
	movq	%rbx, -1208(%rbp)
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-1144(%rbp), %rax
	movq	24(%rax), %rbx
	testq	%rbx, %rbx
	jne	L46
	movl	$1, %ebx
L46:
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-1144(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-1144(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	%rbx, %rax
	imulq	-88(%rbp), %rax
	movq	%rbx, %rcx
	negq	%rcx
	movq	%rcx, -1216(%rbp)
	movq	%rax, %r13
	movl	$0, %r14d
	movq	-72(%rbp), %rax
	movq	$537, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rax, -776(%rbp)
	movq	%r12, -792(%rbp)
	movq	$0, -816(%rbp)
	movq	$-1, -808(%rbp)
	leaq	-816(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -1200(%rbp)
	movq	$0, -1192(%rbp)
	movq	-1152(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -1200(%rbp)
	testq	%rax, %rax
	jne	L48
	movq	$1, -1200(%rbp)
L48:
	movq	-1152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-1152(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-1152(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	movq	-1200(%rbp), %rdi
	movq	%rdi, %rax
	imulq	-112(%rbp), %rax
	negq	%rdi
	movq	%rdi, -1320(%rbp)
	movq	%rax, -1232(%rbp)
	movq	$0, -1224(%rbp)
	movq	-72(%rbp), %rax
	movq	$537, -880(%rbp)
	movq	$1, -864(%rbp)
	movq	%rax, -856(%rbp)
	movq	%r12, -872(%rbp)
	movq	$0, -896(%rbp)
	movq	$-1, -888(%rbp)
	leaq	-896(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rsi
	movq	%rsi, -1328(%rbp)
	movq	-72(%rbp), %rax
	movq	$537, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rax, -776(%rbp)
	movq	%r12, -792(%rbp)
	movq	$0, -816(%rbp)
	movq	$-1, -808(%rbp)
	leaq	-816(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -128(%rbp)
	movq	%rsi, %rax
	imulq	-128(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -1248(%rbp)
	movq	$0, -1240(%rbp)
	movq	%rsi, %rax
	notq	%rax
	movq	%rax, -1336(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -672(%rbp)
	movq	$1, -656(%rbp)
	movq	%rax, -648(%rbp)
	movq	%rbx, -664(%rbp)
	movq	$0, -688(%rbp)
	movq	$-1, -680(%rbp)
	leaq	-688(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %r15
	movq	-88(%rbp), %rax
	movq	$537, -720(%rbp)
	movq	$1, -704(%rbp)
	movq	%rax, -696(%rbp)
	movq	%rbx, -712(%rbp)
	movq	$0, -736(%rbp)
	movq	$-1, -728(%rbp)
	leaq	-736(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -144(%rbp)
	movq	%r15, %rax
	imulq	-144(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1264(%rbp)
	movq	$0, -1256(%rbp)
	leaq	0(,%rdx,8), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -152(%rbp)
	movq	%r15, -1272(%rbp)
	movq	%r15, %rax
	notq	%rax
	movq	%rax, -1280(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -576(%rbp)
	movq	$1, -560(%rbp)
	movq	%rax, -552(%rbp)
	movq	%rbx, -568(%rbp)
	movq	$0, -592(%rbp)
	movq	$-1, -584(%rbp)
	leaq	-592(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %r13
	cmovns	%rax, %r13
	movq	-88(%rbp), %rax
	movq	$537, -624(%rbp)
	movq	$1, -608(%rbp)
	movq	%rax, -600(%rbp)
	movq	%rbx, -616(%rbp)
	movq	$0, -640(%rbp)
	movq	$-1, -632(%rbp)
	leaq	-640(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -168(%rbp)
	movq	%r13, %rdi
	imulq	-168(%rbp), %rdi
	movq	%rdi, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1296(%rbp)
	movq	$0, -1288(%rbp)
	leaq	0(,%rdx,8), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -176(%rbp)
	movq	%r13, %rcx
	notq	%rcx
	movq	%rcx, -1232(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -480(%rbp)
	movq	$1, -464(%rbp)
	movq	%rax, -456(%rbp)
	movq	%rbx, -472(%rbp)
	movq	$0, -496(%rbp)
	movq	$-1, -488(%rbp)
	leaq	-496(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rsi
	cmovns	%rax, %rsi
	movq	%rsi, %r15
	movq	%r15, -1248(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -528(%rbp)
	movq	$1, -512(%rbp)
	movq	%rax, -504(%rbp)
	movq	%rbx, -520(%rbp)
	movq	$0, -544(%rbp)
	movq	$-1, -536(%rbp)
	leaq	-544(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -192(%rbp)
	movq	%r15, %rcx
	imulq	-192(%rbp), %rcx
	movq	%rcx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1312(%rbp)
	movq	$0, -1304(%rbp)
	leaq	0(,%rdx,8), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -200(%rbp)
	movq	%r15, %rsi
	notq	%rsi
	movq	%rsi, -1264(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -384(%rbp)
	movq	$1, -368(%rbp)
	movq	%rax, -360(%rbp)
	movq	%rbx, -376(%rbp)
	movq	$0, -400(%rbp)
	movq	$-1, -392(%rbp)
	leaq	-400(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %r14
	cmovns	%rax, %r14
	movq	-72(%rbp), %rax
	movq	$537, -432(%rbp)
	movq	$1, -416(%rbp)
	movq	%rax, -408(%rbp)
	movq	%r12, -424(%rbp)
	movq	$0, -448(%rbp)
	movq	$-1, -440(%rbp)
	leaq	-448(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -216(%rbp)
	movq	%r14, %rsi
	imulq	-216(%rbp), %rsi
	movq	%rsi, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1360(%rbp)
	movq	$0, -1352(%rbp)
	leaq	0(,%rdx,8), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -224(%rbp)
	movq	%r14, %rcx
	notq	%rcx
	movq	%rcx, -1296(%rbp)
	movq	-72(%rbp), %rax
	movq	$537, -288(%rbp)
	movq	$1, -272(%rbp)
	movq	%rax, -264(%rbp)
	movq	%r12, -280(%rbp)
	movq	$0, -304(%rbp)
	movq	$-1, -296(%rbp)
	leaq	-304(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %r15
	cmovns	%rax, %r15
	movq	-72(%rbp), %rax
	movq	$537, -336(%rbp)
	movq	$1, -320(%rbp)
	movq	%rax, -312(%rbp)
	movq	%r12, -328(%rbp)
	movq	$0, -352(%rbp)
	movq	$-1, -344(%rbp)
	leaq	-352(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -240(%rbp)
	movq	%r15, %rdi
	imulq	-240(%rbp), %rdi
	movq	%rdi, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1376(%rbp)
	movq	$0, -1368(%rbp)
	leaq	0(,%rdx,8), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -248(%rbp)
	movq	%r15, %rsi
	notq	%rsi
	movq	%rsi, -1312(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rax, -776(%rbp)
	movq	%rbx, -792(%rbp)
	movq	$0, -816(%rbp)
	movq	$-1, -808(%rbp)
	leaq	-816(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -252(%rbp)
	movq	-72(%rbp), %rax
	movq	$537, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rax, -776(%rbp)
	movq	%r12, -792(%rbp)
	movq	$0, -816(%rbp)
	movq	$-1, -808(%rbp)
	leaq	-816(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -256(%rbp)
	movq	-136(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	$538, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rax, -776(%rbp)
	movq	$1, -792(%rbp)
	movq	$1, -760(%rbp)
	movq	%rdx, -752(%rbp)
	movq	-1272(%rbp), %rax
	movq	%rax, -768(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	-1280(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -960(%rbp)
	movq	$1, -944(%rbp)
	movq	%rax, -936(%rbp)
	movq	%rbx, -952(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -976(%rbp)
	movq	-1216(%rbp), %rdi
	movq	%rdi, %rax
	movq	%rax, -968(%rbp)
	leaq	-976(%rbp), %r9
	movq	-88(%rbp), %rax
	movq	$537, -880(%rbp)
	movq	$1, -864(%rbp)
	movq	%rax, -856(%rbp)
	movq	%rbx, -872(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	%rdi, -1216(%rbp)
	movq	%rdi, %rax
	movq	%rax, -888(%rbp)
	leaq	-896(%rbp), %rsi
	movq	-1176(%rbp), %rdx
	movq	-1184(%rbp), %rax
	leaq	-816(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%r9, %rsi
	call	___cluster_MOD_k_matrix_simple
	movq	-232(%rbp), %rax
	movq	-240(%rbp), %rdx
	movq	$538, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rax, -776(%rbp)
	movq	$1, -792(%rbp)
	movq	$1, -760(%rbp)
	movq	%rdx, -752(%rbp)
	movq	%r15, -768(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	-1312(%rbp), %rsi
	movq	%rsi, -808(%rbp)
	movq	-72(%rbp), %rax
	movq	$537, -960(%rbp)
	movq	$1, -944(%rbp)
	movq	%rax, -936(%rbp)
	movq	%r12, -952(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -976(%rbp)
	movq	-1208(%rbp), %rsi
	movq	%rsi, -968(%rbp)
	leaq	-976(%rbp), %r9
	movq	-72(%rbp), %rax
	movq	$537, -880(%rbp)
	movq	$1, -864(%rbp)
	movq	%rax, -856(%rbp)
	movq	%r12, -872(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	%rsi, -1208(%rbp)
	movq	%rsi, -888(%rbp)
	leaq	-896(%rbp), %rsi
	movq	-1176(%rbp), %rdx
	movq	-1184(%rbp), %rax
	leaq	-816(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%r9, %rsi
	call	___cluster_MOD_k_matrix_simple
	movq	-208(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	$538, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rax, -776(%rbp)
	movq	$1, -792(%rbp)
	movq	$1, -760(%rbp)
	movq	%rdx, -752(%rbp)
	movq	%r14, -768(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	-1296(%rbp), %rcx
	movq	%rcx, -808(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -960(%rbp)
	movq	$1, -944(%rbp)
	movq	%rax, -936(%rbp)
	movq	%rbx, -952(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -976(%rbp)
	movq	-1216(%rbp), %rax
	movq	%rax, -968(%rbp)
	leaq	-976(%rbp), %r9
	movq	-72(%rbp), %rax
	movq	$537, -880(%rbp)
	movq	$1, -864(%rbp)
	movq	%rax, -856(%rbp)
	movq	%r12, -872(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	-1208(%rbp), %rsi
	movq	%rsi, -888(%rbp)
	leaq	-896(%rbp), %rsi
	movq	-1176(%rbp), %rdx
	movq	-1184(%rbp), %rax
	leaq	-816(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%r9, %rsi
	call	___cluster_MOD_k_matrix_simple
	movq	-136(%rbp), %r11
	movq	-144(%rbp), %r10
	movl	$1, %edi
L52:
	cmpq	%r10, %rdi
	jg	L49
	movq	-1272(%rbp), %rax
	imulq	%rdi, %rax
	movq	-1280(%rbp), %rbx
	leaq	(%rax,%rbx), %r9
	movq	%rdi, %rax
	imulq	%r13, %rax
	movq	-1232(%rbp), %rbx
	leaq	(%rax,%rbx), %r8
	movl	$1, %ecx
L51:
	cmpq	%r11, %rcx
	jg	L50
	leaq	(%rcx,%r8), %rsi
	leaq	(%rcx,%r9), %rdx
	movq	-152(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	-176(%rbp), %rax
	movsd	%xmm0, (%rax,%rsi,8)
	addq	$1, %rcx
	jmp	L51
L50:
	addq	$1, %rdi
	jmp	L52
L49:
	movl	-252(%rbp), %ecx
	movl	$1, -52(%rbp)
	cmpl	%ecx, -52(%rbp)
	jg	L53
L54:
	movl	-52(%rbp), %eax
	cltq
	imulq	%r13, %rax
	movq	-1232(%rbp), %rbx
	leaq	(%rax,%rbx), %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rsi
	movl	-52(%rbp), %eax
	cltq
	imulq	%r13, %rax
	leaq	(%rax,%rbx), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-176(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	movq	-1168(%rbp), %rax
	movsd	(%rax), %xmm2
	movq	-1168(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movq	-176(%rbp), %rax
	movsd	%xmm0, (%rax,%rsi,8)
	cmpl	%ecx, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -52(%rbp)
	testl	%eax, %eax
	jne	L53
	jmp	L54
L53:
	movq	-184(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	$538, -880(%rbp)
	movq	$1, -864(%rbp)
	movq	%rdx, -856(%rbp)
	movq	$1, -872(%rbp)
	movq	$1, -840(%rbp)
	movq	%rax, -832(%rbp)
	movq	-1248(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rax, -848(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	-1264(%rbp), %r12
	movq	%r12, %rax
	movq	%rax, -888(%rbp)
	movq	-160(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	$538, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rdx, -776(%rbp)
	movq	$1, -792(%rbp)
	movq	$1, -760(%rbp)
	movq	%rax, -752(%rbp)
	movq	%r13, -768(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	-1232(%rbp), %rax
	movq	%rax, -808(%rbp)
	leaq	-816(%rbp), %rdx
	leaq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	___cluster_MOD_inv
	movq	-96(%rbp), %rax
	movq	$537, -1120(%rbp)
	movq	$1, -1104(%rbp)
	movq	%rax, -1096(%rbp)
	movq	$1, -1112(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	$-1, -1128(%rbp)
	movq	-216(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	$538, -960(%rbp)
	movq	$1, -920(%rbp)
	movq	%rdx, -912(%rbp)
	movq	$1, -928(%rbp)
	movq	$1, -944(%rbp)
	movq	%rax, -936(%rbp)
	movq	%r14, -952(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -976(%rbp)
	movq	-1296(%rbp), %r13
	movq	%r13, %rax
	movq	%rax, -968(%rbp)
	leaq	-976(%rbp), %rsi
	movq	-184(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	$538, -880(%rbp)
	movq	$1, -864(%rbp)
	movq	%rdx, -856(%rbp)
	movq	$1, -872(%rbp)
	movq	$1, -840(%rbp)
	movq	%rax, -832(%rbp)
	movq	%rbx, -1248(%rbp)
	movq	%rbx, %rax
	movq	%rax, -848(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	%r12, -1264(%rbp)
	movq	%r12, %rcx
	movq	%rcx, -888(%rbp)
	leaq	-896(%rbp), %rax
	movq	$538, -800(%rbp)
	movq	$0, -816(%rbp)
	movq	$0, -808(%rbp)
	leaq	-816(%rbp), %rdi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	call	__gfortran_matmul_r8
	leaq	-816(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	$537, -1040(%rbp)
	movq	$1, -1024(%rbp)
	movq	%rax, -1016(%rbp)
	movq	-1200(%rbp), %rdi
	movq	%rdi, -1032(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -1056(%rbp)
	movq	-1320(%rbp), %rdi
	movq	%rdi, -1048(%rbp)
	leaq	-1056(%rbp), %rdx
	leaq	-1136(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	__gfortran_matmul_r8
	movq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movq	-232(%rbp), %rbx
	movq	-240(%rbp), %r12
	movq	-216(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	$538, -1120(%rbp)
	movq	$1, -1080(%rbp)
	movq	%rdx, -1072(%rbp)
	movq	$1, -1088(%rbp)
	movq	$1, -1104(%rbp)
	movq	%rax, -1096(%rbp)
	movq	%r14, -1112(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	%r13, %rdi
	movq	%rdi, -1128(%rbp)
	leaq	-1136(%rbp), %r13
	movq	-184(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	$538, -1040(%rbp)
	movq	$1, -1024(%rbp)
	movq	%rdx, -1016(%rbp)
	movq	$1, -1032(%rbp)
	movq	$1, -1000(%rbp)
	movq	%rax, -992(%rbp)
	movq	-1248(%rbp), %rax
	movq	%rax, -1008(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -1056(%rbp)
	movq	-1264(%rbp), %rax
	movq	%rax, -1048(%rbp)
	leaq	-1056(%rbp), %rsi
	movq	-208(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	$538, -960(%rbp)
	movq	$1, -944(%rbp)
	movq	%rdx, -936(%rbp)
	movq	$1, -952(%rbp)
	movq	$1, -920(%rbp)
	movq	%rax, -912(%rbp)
	movq	%r14, -928(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -976(%rbp)
	movq	%rdi, %rax
	movq	%rax, -968(%rbp)
	leaq	-976(%rbp), %rdx
	movq	$538, -880(%rbp)
	movq	$0, -896(%rbp)
	movq	$0, -888(%rbp)
	leaq	-896(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	__gfortran_matmul_r8
	leaq	-896(%rbp), %r14
	subq	$1, %rbx
	subq	$1, %r12
	movq	$538, -800(%rbp)
	movq	$1, -792(%rbp)
	movq	$0, -784(%rbp)
	movq	%rbx, -776(%rbp)
	leaq	1(%rbx), %rax
	testq	%rax, %rax
	setle	%al
	movzbl	%al, %ecx
	leaq	1(%rbx), %rax
	movq	%rax, -768(%rbp)
	movq	$0, -760(%rbp)
	movq	%r12, -752(%rbp)
	leaq	1(%r12), %rdx
	testq	%rdx, %rdx
	setle	%dl
	movzbl	%dl, %edx
	leaq	1(%r12), %rsi
	imulq	%rsi, %rax
	xorl	$1, %ecx
	xorl	$1, %edx
	andl	%ecx, %edx
	testl	%edx, %edx
	je	L55
	salq	$3, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	jmp	L56
L55:
	movl	$1, %eax
L56:
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -816(%rbp)
	movq	$0, -808(%rbp)
	leaq	-816(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	__gfortran_matmul_r8
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movl	$0, %edx
L60:
	cmpq	%r12, %rdx
	jg	L57
	leaq	1(%rdx), %rax
	imulq	%r15, %rax
	movq	-1312(%rbp), %rcx
	leaq	(%rax,%rcx), %r9
	movq	-768(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, %rdi
	leaq	1(%rdx), %rax
	imulq	-1328(%rbp), %rax
	movq	-1336(%rbp), %rcx
	leaq	(%rax,%rcx), %r10
	movl	$0, %eax
L59:
	cmpq	%rbx, %rax
	jg	L58
	leaq	1(%rax), %rcx
	leaq	(%rcx,%r10), %r8
	leaq	1(%rax), %rcx
	leaq	(%rcx,%r9), %rsi
	movq	-248(%rbp), %rcx
	movsd	(%rcx,%rsi,8), %xmm0
	movq	-816(%rbp), %rcx
	leaq	(%rax,%rdi), %rsi
	movsd	(%rcx,%rsi,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	24(%rbp), %rcx
	movsd	%xmm0, (%rcx,%r8,8)
	addq	$1, %rax
	jmp	L59
L58:
	addq	$1, %rdx
	jmp	L60
L57:
	movq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	nop
	addq	$1336, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI25:
	ret
LFE6:
	.globl ___cluster_MOD_kernal
___cluster_MOD_kernal:
LFB7:
	pushq	%rbp
LCFI26:
	movq	%rsp, %rbp
LCFI27:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1336, %rsp
LCFI28:
	movq	%rdi, -1144(%rbp)
	movq	%rsi, -1152(%rbp)
	movq	%rdx, -1160(%rbp)
	movq	%rcx, -1168(%rbp)
	movq	%r8, -1176(%rbp)
	movq	%r9, -1184(%rbp)
	movq	-1160(%rbp), %rax
	movq	24(%rax), %r12
	testq	%r12, %r12
	jne	L63
	movl	$1, %r12d
L63:
	movq	-1160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-1160(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-1160(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	%r12, %rax
	imulq	-72(%rbp), %rax
	movq	%r12, %rbx
	negq	%rbx
	movq	%rbx, -1208(%rbp)
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-1144(%rbp), %rax
	movq	24(%rax), %rbx
	testq	%rbx, %rbx
	jne	L65
	movl	$1, %ebx
L65:
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-1144(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-1144(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	%rbx, %rax
	imulq	-88(%rbp), %rax
	movq	%rbx, %rdi
	negq	%rdi
	movq	%rdi, -1216(%rbp)
	movq	%rax, %r13
	movl	$0, %r14d
	movq	-72(%rbp), %rax
	movq	$537, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rax, -776(%rbp)
	movq	%r12, -792(%rbp)
	movq	$0, -816(%rbp)
	movq	$-1, -808(%rbp)
	leaq	-816(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -1200(%rbp)
	movq	$0, -1192(%rbp)
	movq	-1152(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -1200(%rbp)
	testq	%rax, %rax
	jne	L67
	movq	$1, -1200(%rbp)
L67:
	movq	-1152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-1152(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-1152(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	movq	-1200(%rbp), %rcx
	movq	%rcx, %rax
	imulq	-112(%rbp), %rax
	negq	%rcx
	movq	%rcx, -1320(%rbp)
	movq	%rax, -1232(%rbp)
	movq	$0, -1224(%rbp)
	movq	-72(%rbp), %rax
	movq	$537, -880(%rbp)
	movq	$1, -864(%rbp)
	movq	%rax, -856(%rbp)
	movq	%r12, -872(%rbp)
	movq	$0, -896(%rbp)
	movq	$-1, -888(%rbp)
	leaq	-896(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rsi
	movq	%rsi, -1328(%rbp)
	movq	-72(%rbp), %rax
	movq	$537, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rax, -776(%rbp)
	movq	%r12, -792(%rbp)
	movq	$0, -816(%rbp)
	movq	$-1, -808(%rbp)
	leaq	-816(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -128(%rbp)
	movq	%rsi, %rax
	imulq	-128(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -1248(%rbp)
	movq	$0, -1240(%rbp)
	movq	%rsi, %rax
	notq	%rax
	movq	%rax, -1336(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -672(%rbp)
	movq	$1, -656(%rbp)
	movq	%rax, -648(%rbp)
	movq	%rbx, -664(%rbp)
	movq	$0, -688(%rbp)
	movq	$-1, -680(%rbp)
	leaq	-688(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %r15
	movq	-88(%rbp), %rax
	movq	$537, -720(%rbp)
	movq	$1, -704(%rbp)
	movq	%rax, -696(%rbp)
	movq	%rbx, -712(%rbp)
	movq	$0, -736(%rbp)
	movq	$-1, -728(%rbp)
	leaq	-736(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -144(%rbp)
	movq	%r15, %rax
	imulq	-144(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1264(%rbp)
	movq	$0, -1256(%rbp)
	leaq	0(,%rdx,8), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -152(%rbp)
	movq	%r15, -1272(%rbp)
	movq	%r15, %rax
	notq	%rax
	movq	%rax, -1280(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -576(%rbp)
	movq	$1, -560(%rbp)
	movq	%rax, -552(%rbp)
	movq	%rbx, -568(%rbp)
	movq	$0, -592(%rbp)
	movq	$-1, -584(%rbp)
	leaq	-592(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %r13
	cmovns	%rax, %r13
	movq	-88(%rbp), %rax
	movq	$537, -624(%rbp)
	movq	$1, -608(%rbp)
	movq	%rax, -600(%rbp)
	movq	%rbx, -616(%rbp)
	movq	$0, -640(%rbp)
	movq	$-1, -632(%rbp)
	leaq	-640(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -168(%rbp)
	movq	%r13, %rsi
	imulq	-168(%rbp), %rsi
	movq	%rsi, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1296(%rbp)
	movq	$0, -1288(%rbp)
	leaq	0(,%rdx,8), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -176(%rbp)
	movq	%r13, %rdi
	notq	%rdi
	movq	%rdi, -1232(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -480(%rbp)
	movq	$1, -464(%rbp)
	movq	%rax, -456(%rbp)
	movq	%rbx, -472(%rbp)
	movq	$0, -496(%rbp)
	movq	$-1, -488(%rbp)
	leaq	-496(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %rsi
	cmovns	%rax, %rsi
	movq	%rsi, %r15
	movq	%r15, -1248(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -528(%rbp)
	movq	$1, -512(%rbp)
	movq	%rax, -504(%rbp)
	movq	%rbx, -520(%rbp)
	movq	$0, -544(%rbp)
	movq	$-1, -536(%rbp)
	leaq	-544(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -192(%rbp)
	movq	%r15, %rdi
	imulq	-192(%rbp), %rdi
	movq	%rdi, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1312(%rbp)
	movq	$0, -1304(%rbp)
	leaq	0(,%rdx,8), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -200(%rbp)
	movq	%r15, %rsi
	notq	%rsi
	movq	%rsi, -1264(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -384(%rbp)
	movq	$1, -368(%rbp)
	movq	%rax, -360(%rbp)
	movq	%rbx, -376(%rbp)
	movq	$0, -400(%rbp)
	movq	$-1, -392(%rbp)
	leaq	-400(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %r14
	cmovns	%rax, %r14
	movq	-72(%rbp), %rax
	movq	$537, -432(%rbp)
	movq	$1, -416(%rbp)
	movq	%rax, -408(%rbp)
	movq	%r12, -424(%rbp)
	movq	$0, -448(%rbp)
	movq	$-1, -440(%rbp)
	leaq	-448(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -216(%rbp)
	movq	%r14, %rcx
	imulq	-216(%rbp), %rcx
	movq	%rcx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1360(%rbp)
	movq	$0, -1352(%rbp)
	leaq	0(,%rdx,8), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -224(%rbp)
	movq	%r14, %rdi
	notq	%rdi
	movq	%rdi, -1296(%rbp)
	movq	-72(%rbp), %rax
	movq	$537, -288(%rbp)
	movq	$1, -272(%rbp)
	movq	%rax, -264(%rbp)
	movq	%r12, -280(%rbp)
	movq	$0, -304(%rbp)
	movq	$-1, -296(%rbp)
	leaq	-304(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	movq	%rdx, %r15
	cmovns	%rax, %r15
	movq	-72(%rbp), %rax
	movq	$537, -336(%rbp)
	movq	$1, -320(%rbp)
	movq	%rax, -312(%rbp)
	movq	%r12, -328(%rbp)
	movq	$0, -352(%rbp)
	movq	$-1, -344(%rbp)
	leaq	-352(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -240(%rbp)
	movq	%r15, %rsi
	imulq	-240(%rbp), %rsi
	movq	%rsi, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1376(%rbp)
	movq	$0, -1368(%rbp)
	leaq	0(,%rdx,8), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -248(%rbp)
	movq	%r15, %rcx
	notq	%rcx
	movq	%rcx, -1312(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rax, -776(%rbp)
	movq	%rbx, -792(%rbp)
	movq	$0, -816(%rbp)
	movq	$-1, -808(%rbp)
	leaq	-816(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -252(%rbp)
	movq	-72(%rbp), %rax
	movq	$537, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rax, -776(%rbp)
	movq	%r12, -792(%rbp)
	movq	$0, -816(%rbp)
	movq	$-1, -808(%rbp)
	leaq	-816(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -256(%rbp)
	movq	-136(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	$538, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rax, -776(%rbp)
	movq	$1, -792(%rbp)
	movq	$1, -760(%rbp)
	movq	%rdx, -752(%rbp)
	movq	-1272(%rbp), %rax
	movq	%rax, -768(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	-1280(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -960(%rbp)
	movq	$1, -944(%rbp)
	movq	%rax, -936(%rbp)
	movq	%rbx, -952(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -976(%rbp)
	movq	-1216(%rbp), %rsi
	movq	%rsi, %rax
	movq	%rax, -968(%rbp)
	leaq	-976(%rbp), %r11
	movq	-88(%rbp), %rax
	movq	$537, -880(%rbp)
	movq	$1, -864(%rbp)
	movq	%rax, -856(%rbp)
	movq	%rbx, -872(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	%rsi, -1216(%rbp)
	movq	%rsi, %rax
	movq	%rax, -888(%rbp)
	leaq	-896(%rbp), %r10
	movq	-1176(%rbp), %rsi
	movq	-1184(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	leaq	-816(%rbp), %rdi
	subq	$8, %rsp
	pushq	%rax
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rsi, %rcx
	movq	%r10, %rdx
	movq	%r11, %rsi
	call	___cluster_MOD_k_matrix
	addq	$16, %rsp
	movq	-232(%rbp), %rax
	movq	-240(%rbp), %rdx
	movq	$538, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rax, -776(%rbp)
	movq	$1, -792(%rbp)
	movq	$1, -760(%rbp)
	movq	%rdx, -752(%rbp)
	movq	%r15, -768(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	-1312(%rbp), %rcx
	movq	%rcx, -808(%rbp)
	movq	-72(%rbp), %rax
	movq	$537, -960(%rbp)
	movq	$1, -944(%rbp)
	movq	%rax, -936(%rbp)
	movq	%r12, -952(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -976(%rbp)
	movq	-1208(%rbp), %rcx
	movq	%rcx, -968(%rbp)
	leaq	-976(%rbp), %r11
	movq	-72(%rbp), %rax
	movq	$537, -880(%rbp)
	movq	$1, -864(%rbp)
	movq	%rax, -856(%rbp)
	movq	%r12, -872(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	%rcx, -1208(%rbp)
	movq	%rcx, -888(%rbp)
	leaq	-896(%rbp), %r10
	movq	-1176(%rbp), %rsi
	movq	-1184(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	leaq	-816(%rbp), %rdi
	subq	$8, %rsp
	pushq	%rax
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rsi, %rcx
	movq	%r10, %rdx
	movq	%r11, %rsi
	call	___cluster_MOD_k_matrix
	addq	$16, %rsp
	movq	-208(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	$538, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rax, -776(%rbp)
	movq	$1, -792(%rbp)
	movq	$1, -760(%rbp)
	movq	%rdx, -752(%rbp)
	movq	%r14, -768(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	-1296(%rbp), %rdi
	movq	%rdi, -808(%rbp)
	movq	-88(%rbp), %rax
	movq	$537, -960(%rbp)
	movq	$1, -944(%rbp)
	movq	%rax, -936(%rbp)
	movq	%rbx, -952(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -976(%rbp)
	movq	-1216(%rbp), %rax
	movq	%rax, -968(%rbp)
	leaq	-976(%rbp), %r11
	movq	-72(%rbp), %rax
	movq	$537, -880(%rbp)
	movq	$1, -864(%rbp)
	movq	%rax, -856(%rbp)
	movq	%r12, -872(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	-1208(%rbp), %rcx
	movq	%rcx, -888(%rbp)
	leaq	-896(%rbp), %r10
	movq	-1176(%rbp), %rsi
	movq	-1184(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	leaq	-816(%rbp), %rdi
	subq	$8, %rsp
	pushq	%rax
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rsi, %rcx
	movq	%r10, %rdx
	movq	%r11, %rsi
	call	___cluster_MOD_k_matrix
	addq	$16, %rsp
	movq	-136(%rbp), %r11
	movq	-144(%rbp), %r10
	movl	$1, %edi
L71:
	cmpq	%r10, %rdi
	jg	L68
	movq	-1272(%rbp), %rax
	imulq	%rdi, %rax
	movq	-1280(%rbp), %rbx
	leaq	(%rax,%rbx), %r9
	movq	%rdi, %rax
	imulq	%r13, %rax
	movq	-1232(%rbp), %rbx
	leaq	(%rax,%rbx), %r8
	movl	$1, %ecx
L70:
	cmpq	%r11, %rcx
	jg	L69
	leaq	(%rcx,%r8), %rsi
	leaq	(%rcx,%r9), %rdx
	movq	-152(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	-176(%rbp), %rax
	movsd	%xmm0, (%rax,%rsi,8)
	addq	$1, %rcx
	jmp	L70
L69:
	addq	$1, %rdi
	jmp	L71
L68:
	movl	-252(%rbp), %ecx
	movl	$1, -52(%rbp)
	cmpl	%ecx, -52(%rbp)
	jg	L72
L73:
	movl	-52(%rbp), %eax
	cltq
	imulq	%r13, %rax
	movq	-1232(%rbp), %rbx
	leaq	(%rax,%rbx), %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rsi
	movl	-52(%rbp), %eax
	cltq
	imulq	%r13, %rax
	leaq	(%rax,%rbx), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-176(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	movq	-1168(%rbp), %rax
	movsd	(%rax), %xmm2
	movq	-1168(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movq	-176(%rbp), %rax
	movsd	%xmm0, (%rax,%rsi,8)
	cmpl	%ecx, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -52(%rbp)
	testl	%eax, %eax
	jne	L72
	jmp	L73
L72:
	movq	-184(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	$538, -880(%rbp)
	movq	$1, -864(%rbp)
	movq	%rdx, -856(%rbp)
	movq	$1, -872(%rbp)
	movq	$1, -840(%rbp)
	movq	%rax, -832(%rbp)
	movq	-1248(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rax, -848(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	-1264(%rbp), %r12
	movq	%r12, %rax
	movq	%rax, -888(%rbp)
	movq	-160(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	$538, -800(%rbp)
	movq	$1, -784(%rbp)
	movq	%rdx, -776(%rbp)
	movq	$1, -792(%rbp)
	movq	$1, -760(%rbp)
	movq	%rax, -752(%rbp)
	movq	%r13, -768(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	-1232(%rbp), %rax
	movq	%rax, -808(%rbp)
	leaq	-816(%rbp), %rdx
	leaq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	___cluster_MOD_inv
	movq	-96(%rbp), %rax
	movq	$537, -1120(%rbp)
	movq	$1, -1104(%rbp)
	movq	%rax, -1096(%rbp)
	movq	$1, -1112(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	$-1, -1128(%rbp)
	movq	-216(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	$538, -960(%rbp)
	movq	$1, -920(%rbp)
	movq	%rdx, -912(%rbp)
	movq	$1, -928(%rbp)
	movq	$1, -944(%rbp)
	movq	%rax, -936(%rbp)
	movq	%r14, -952(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -976(%rbp)
	movq	-1296(%rbp), %r13
	movq	%r13, %rax
	movq	%rax, -968(%rbp)
	leaq	-976(%rbp), %rsi
	movq	-184(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	$538, -880(%rbp)
	movq	$1, -864(%rbp)
	movq	%rdx, -856(%rbp)
	movq	$1, -872(%rbp)
	movq	$1, -840(%rbp)
	movq	%rax, -832(%rbp)
	movq	%rbx, -1248(%rbp)
	movq	%rbx, %rax
	movq	%rax, -848(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	%r12, -1264(%rbp)
	movq	%r12, %rdi
	movq	%rdi, -888(%rbp)
	leaq	-896(%rbp), %rax
	movq	$538, -800(%rbp)
	movq	$0, -816(%rbp)
	movq	$0, -808(%rbp)
	leaq	-816(%rbp), %rdi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	call	__gfortran_matmul_r8
	leaq	-816(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	$537, -1040(%rbp)
	movq	$1, -1024(%rbp)
	movq	%rax, -1016(%rbp)
	movq	-1200(%rbp), %rcx
	movq	%rcx, -1032(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -1056(%rbp)
	movq	-1320(%rbp), %rcx
	movq	%rcx, -1048(%rbp)
	leaq	-1056(%rbp), %rdx
	leaq	-1136(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	__gfortran_matmul_r8
	movq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movq	-232(%rbp), %rbx
	movq	-240(%rbp), %r12
	movq	-216(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	$538, -1120(%rbp)
	movq	$1, -1080(%rbp)
	movq	%rdx, -1072(%rbp)
	movq	$1, -1088(%rbp)
	movq	$1, -1104(%rbp)
	movq	%rax, -1096(%rbp)
	movq	%r14, -1112(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	%r13, %rcx
	movq	%rcx, %rsi
	movq	%rsi, -1128(%rbp)
	leaq	-1136(%rbp), %r13
	movq	-184(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	$538, -1040(%rbp)
	movq	$1, -1024(%rbp)
	movq	%rdx, -1016(%rbp)
	movq	$1, -1032(%rbp)
	movq	$1, -1000(%rbp)
	movq	%rax, -992(%rbp)
	movq	-1248(%rbp), %rax
	movq	%rax, -1008(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -1056(%rbp)
	movq	-1264(%rbp), %rax
	movq	%rax, -1048(%rbp)
	leaq	-1056(%rbp), %rsi
	movq	-208(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	$538, -960(%rbp)
	movq	$1, -944(%rbp)
	movq	%rdx, -936(%rbp)
	movq	$1, -952(%rbp)
	movq	$1, -920(%rbp)
	movq	%rax, -912(%rbp)
	movq	%r14, -928(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -976(%rbp)
	movq	%rcx, %rax
	movq	%rax, -968(%rbp)
	leaq	-976(%rbp), %rdx
	movq	$538, -880(%rbp)
	movq	$0, -896(%rbp)
	movq	$0, -888(%rbp)
	leaq	-896(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	__gfortran_matmul_r8
	leaq	-896(%rbp), %r14
	subq	$1, %rbx
	subq	$1, %r12
	movq	$538, -800(%rbp)
	movq	$1, -792(%rbp)
	movq	$0, -784(%rbp)
	movq	%rbx, -776(%rbp)
	leaq	1(%rbx), %rax
	testq	%rax, %rax
	setle	%al
	movzbl	%al, %ecx
	leaq	1(%rbx), %rax
	movq	%rax, -768(%rbp)
	movq	$0, -760(%rbp)
	movq	%r12, -752(%rbp)
	leaq	1(%r12), %rdx
	testq	%rdx, %rdx
	setle	%dl
	movzbl	%dl, %edx
	leaq	1(%r12), %rsi
	imulq	%rsi, %rax
	xorl	$1, %ecx
	xorl	$1, %edx
	andl	%ecx, %edx
	testl	%edx, %edx
	je	L74
	salq	$3, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	jmp	L75
L74:
	movl	$1, %eax
L75:
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -816(%rbp)
	movq	$0, -808(%rbp)
	leaq	-816(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	__gfortran_matmul_r8
	movq	-896(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movl	$0, %edx
L79:
	cmpq	%r12, %rdx
	jg	L76
	leaq	1(%rdx), %rax
	imulq	%r15, %rax
	movq	-1312(%rbp), %rdi
	leaq	(%rax,%rdi), %r9
	movq	-768(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, %rdi
	leaq	1(%rdx), %rax
	imulq	-1328(%rbp), %rax
	movq	-1336(%rbp), %rcx
	leaq	(%rax,%rcx), %r10
	movl	$0, %eax
L78:
	cmpq	%rbx, %rax
	jg	L77
	leaq	1(%rax), %rcx
	leaq	(%rcx,%r10), %r8
	leaq	1(%rax), %rcx
	leaq	(%rcx,%r9), %rsi
	movq	-248(%rbp), %rcx
	movsd	(%rcx,%rsi,8), %xmm0
	movq	-816(%rbp), %rcx
	leaq	(%rax,%rdi), %rsi
	movsd	(%rcx,%rsi,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	40(%rbp), %rcx
	movsd	%xmm0, (%rcx,%r8,8)
	addq	$1, %rax
	jmp	L78
L77:
	addq	$1, %rdx
	jmp	L79
L76:
	movq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	nop
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI29:
	ret
LFE7:
	.globl ___cluster_MOD_sigma_update
___cluster_MOD_sigma_update:
LFB8:
	pushq	%rbp
LCFI30:
	movq	%rsp, %rbp
LCFI31:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$808, %rsp
LCFI32:
	movq	%rdi, -696(%rbp)
	movq	%rsi, -704(%rbp)
	movq	%rdx, -712(%rbp)
	movq	%rcx, -720(%rbp)
	movq	-704(%rbp), %rax
	movq	24(%rax), %rbx
	testq	%rbx, %rbx
	jne	L82
	movl	$1, %ebx
L82:
	movq	-704(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-704(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-704(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	-704(%rbp), %rax
	movq	48(%rax), %r12
	movq	-704(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-704(%rbp), %rax
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	%r12, %rax
	imulq	-88(%rbp), %rax
	movq	%rbx, %rdx
	negq	%rdx
	subq	%r12, %rdx
	movq	%rdx, -784(%rbp)
	movq	%rax, %r8
	movl	$0, %r9d
	movq	-696(%rbp), %rax
	movq	24(%rax), %r15
	testq	%r15, %r15
	jne	L84
	movl	$1, %r15d
L84:
	movq	-696(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-696(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-696(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-696(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, -736(%rbp)
	movq	-696(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-696(%rbp), %rax
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	movq	%rsi, %rdx
	imulq	-112(%rbp), %rdx
	movq	%r15, %rax
	negq	%rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	subq	%rax, %rcx
	movq	%rcx, -808(%rbp)
	movq	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-712(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -728(%rbp)
	testq	%rax, %rax
	jne	L86
	movq	$1, -728(%rbp)
L86:
	movq	-712(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-712(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-712(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	movq	-712(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, -744(%rbp)
	movq	-712(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-712(%rbp), %rax
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	movq	%rdi, %rdx
	imulq	-136(%rbp), %rdx
	movq	-728(%rbp), %rax
	negq	%rax
	movq	%rax, %rsi
	movq	%rdi, %rax
	subq	%rax, %rsi
	movq	%rsi, -752(%rbp)
	movq	%rdx, %rax
	movq	%rax, %r13
	movl	$0, %r14d
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	$538, -672(%rbp)
	movq	$1, -656(%rbp)
	movq	%rdx, -648(%rbp)
	movq	%rbx, -664(%rbp)
	movq	$1, -632(%rbp)
	movq	%rax, -624(%rbp)
	movq	%r12, -640(%rbp)
	movq	$0, -688(%rbp)
	movq	$-1, -680(%rbp)
	leaq	-688(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rsi
	movq	%rsi, -816(%rbp)
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	$538, -592(%rbp)
	movq	$1, -576(%rbp)
	movq	%rax, -568(%rbp)
	movq	%rbx, -584(%rbp)
	movq	$1, -552(%rbp)
	movq	%rdx, -544(%rbp)
	movq	%r12, -560(%rbp)
	movq	$0, -608(%rbp)
	movq	$-1, -600(%rbp)
	leaq	-608(%rbp), %rax
	movq	64(%rax), %rdx
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -152(%rbp)
	movq	%rsi, %rax
	imulq	-152(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rcx
	movq	%rcx, -824(%rbp)
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	$538, -512(%rbp)
	movq	$1, -496(%rbp)
	movq	%rax, -488(%rbp)
	movq	%rbx, -504(%rbp)
	movq	$1, -472(%rbp)
	movq	%rdx, -464(%rbp)
	movq	%r12, -480(%rbp)
	movq	$0, -528(%rbp)
	movq	$-1, -520(%rbp)
	leaq	-528(%rbp), %rax
	movq	64(%rax), %rdx
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -160(%rbp)
	movq	%rcx, %rax
	imulq	-160(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -768(%rbp)
	movq	$0, -760(%rbp)
	movq	%rsi, %rax
	notq	%rax
	movq	%rcx, %rdx
	subq	%rdx, %rax
	movq	%rax, -832(%rbp)
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	$538, -272(%rbp)
	movq	$1, -256(%rbp)
	movq	%rax, -248(%rbp)
	movq	%r15, -264(%rbp)
	movq	$1, -232(%rbp)
	movq	%rdx, -224(%rbp)
	movq	-736(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$0, -288(%rbp)
	movq	$-1, -280(%rbp)
	leaq	-288(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %r14
	movq	%r14, -768(%rbp)
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	$538, -352(%rbp)
	movq	$1, -336(%rbp)
	movq	%rax, -328(%rbp)
	movq	%rbx, -344(%rbp)
	movq	$1, -312(%rbp)
	movq	%rdx, -304(%rbp)
	movq	%r12, -320(%rbp)
	movq	$0, -368(%rbp)
	movq	$-1, -360(%rbp)
	leaq	-368(%rbp), %rax
	movq	64(%rax), %rdx
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -176(%rbp)
	movq	%r14, %rax
	imulq	-176(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %r13
	movq	%r13, -776(%rbp)
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	$538, -432(%rbp)
	movq	$1, -416(%rbp)
	movq	%rax, -408(%rbp)
	movq	%rbx, -424(%rbp)
	movq	$1, -392(%rbp)
	movq	%rdx, -384(%rbp)
	movq	%r12, -400(%rbp)
	movq	$0, -448(%rbp)
	movq	$-1, -440(%rbp)
	leaq	-448(%rbp), %rax
	movq	64(%rax), %rdx
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -184(%rbp)
	movq	%r13, %rax
	imulq	-184(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -800(%rbp)
	movq	$0, -792(%rbp)
	leaq	0(,%rdx,8), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -192(%rbp)
	movq	%r14, %rax
	notq	%rax
	movq	%rax, %rdi
	movq	%r13, %rdx
	subq	%rdx, %rdi
	movq	%rdi, -800(%rbp)
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	$538, -512(%rbp)
	movq	$1, -496(%rbp)
	movq	%rax, -488(%rbp)
	movq	%rbx, -504(%rbp)
	movq	$1, -472(%rbp)
	movq	%rdx, -464(%rbp)
	movq	%r12, -480(%rbp)
	movq	$0, -528(%rbp)
	movq	$-1, -520(%rbp)
	leaq	-528(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -196(%rbp)
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	$538, -512(%rbp)
	movq	$1, -496(%rbp)
	movq	%rax, -488(%rbp)
	movq	%rbx, -504(%rbp)
	movq	$1, -472(%rbp)
	movq	%rdx, -464(%rbp)
	movq	%r12, -480(%rbp)
	movq	$0, -528(%rbp)
	movq	$-1, -520(%rbp)
	leaq	-528(%rbp), %rax
	movq	64(%rax), %rdx
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -200(%rbp)
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	$538, -512(%rbp)
	movq	$1, -496(%rbp)
	movq	%rax, -488(%rbp)
	movq	%r15, -504(%rbp)
	movq	$1, -472(%rbp)
	movq	%rdx, -464(%rbp)
	movq	-736(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	$0, -528(%rbp)
	movq	$-1, -520(%rbp)
	leaq	-528(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -204(%rbp)
	movl	-196(%rbp), %eax
	movl	%eax, -836(%rbp)
	movl	$1, -60(%rbp)
	cmpl	%eax, -60(%rbp)
	jg	L87
L102:
	movl	-200(%rbp), %r8d
	movl	$1, -52(%rbp)
	cmpl	%r8d, -52(%rbp)
	jg	L88
L93:
	movl	-200(%rbp), %esi
	movl	$1, -56(%rbp)
	cmpl	%esi, -56(%rbp)
	jg	L89
L92:
	movl	-204(%rbp), %ecx
	movl	$1, -64(%rbp)
	cmpl	%ecx, -64(%rbp)
	jg	L90
L91:
	movl	-56(%rbp), %eax
	cltq
	imulq	-776(%rbp), %rax
	movq	-800(%rbp), %rdi
	leaq	(%rax,%rdi), %rdx
	movl	-52(%rbp), %eax
	cltq
	imulq	-768(%rbp), %rax
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rdi
	movl	-60(%rbp), %eax
	cltq
	imulq	-744(%rbp), %rax
	movq	-752(%rbp), %rdx
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	-728(%rbp), %rax
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	movl	-52(%rbp), %eax
	cltq
	movq	-736(%rbp), %r9
	movq	%r9, %rdx
	imulq	%rdx, %rax
	movq	-808(%rbp), %r11
	movq	%r11, %rdx
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%r15, %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movl	-52(%rbp), %eax
	cltq
	imulq	%r12, %rax
	movq	-784(%rbp), %r10
	movq	%r10, %rdx
	addq	%rax, %rdx
	movl	-60(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movl	-56(%rbp), %eax
	cltq
	movq	%r9, %rdx
	imulq	%rdx, %rax
	movq	%r11, %rdx
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	cltq
	imulq	%r15, %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	movl	-56(%rbp), %eax
	cltq
	imulq	%r12, %rax
	movq	%r10, %rdx
	addq	%rax, %rdx
	movl	-60(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-192(%rbp), %rax
	movsd	%xmm0, (%rax,%rdi,8)
	cmpl	%ecx, -64(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -64(%rbp)
	testl	%eax, %eax
	jne	L90
	jmp	L91
L90:
	cmpl	%esi, -56(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -56(%rbp)
	testl	%eax, %eax
	jne	L89
	jmp	L92
L89:
	cmpl	%r8d, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -52(%rbp)
	testl	%eax, %eax
	jne	L88
	jmp	L93
L88:
	movq	-176(%rbp), %rax
	movq	%rax, -848(%rbp)
	movq	-184(%rbp), %r14
	movq	-168(%rbp), %r13
	pxor	%xmm0, %xmm0
	movq	-128(%rbp), %rdi
	movl	-60(%rbp), %eax
	cltq
	imulq	-744(%rbp), %rax
	movq	-752(%rbp), %rcx
	leaq	(%rax,%rcx), %rsi
	movl	$1, %ecx
L95:
	cmpq	%rdi, %rcx
	jg	L94
	movq	-728(%rbp), %rax
	imulq	%rcx, %rax
	leaq	(%rax,%rsi), %rdx
	movq	-120(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	addq	$1, %rcx
	jmp	L95
L94:
	movsd	LC5(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movl	-60(%rbp), %eax
	cltq
	movq	-832(%rbp), %rsi
	leaq	(%rsi,%rax), %r11
	movl	$1, %edi
L101:
	cmpq	%r14, %rdi
	jg	L96
	movq	-776(%rbp), %rax
	imulq	%rdi, %rax
	movq	-800(%rbp), %rcx
	leaq	(%rax,%rcx), %r10
	movq	-824(%rbp), %rax
	imulq	%rdi, %rax
	leaq	(%rax,%r11), %r9
	movl	$1, %esi
L100:
	cmpq	-848(%rbp), %rsi
	jg	L97
	pxor	%xmm0, %xmm0
	movq	-768(%rbp), %rax
	imulq	%rsi, %rax
	leaq	(%rax,%r10), %r8
	movl	$1, %ecx
L99:
	cmpq	%r13, %rcx
	jg	L98
	leaq	(%rcx,%r8), %rdx
	movq	-192(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm2
	addsd	%xmm2, %xmm0
	addq	$1, %rcx
	jmp	L99
L98:
	movq	-816(%rbp), %rax
	imulq	%rsi, %rax
	leaq	(%rax,%r9), %rdx
	mulsd	%xmm1, %xmm0
	movq	-720(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	addq	$1, %rsi
	jmp	L100
L97:
	addq	$1, %rdi
	jmp	L101
L96:
	movl	-836(%rbp), %eax
	cmpl	%eax, -60(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -60(%rbp)
	testl	%eax, %eax
	jne	L87
	jmp	L102
L87:
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	nop
	addq	$808, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI33:
	ret
LFE8:
	.globl ___cluster_MOD_normalpdf
___cluster_MOD_normalpdf:
LFB9:
	pushq	%rbp
LCFI34:
	movq	%rsp, %rbp
LCFI35:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$376, %rsp
LCFI36:
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	%rcx, -384(%rbp)
	movq	-368(%rbp), %rax
	movq	24(%rax), %rbx
	testq	%rbx, %rbx
	jne	L105
	movl	$1, %ebx
L105:
	movq	-368(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-368(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-368(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	%rbx, %rax
	imulq	-64(%rbp), %rax
	movq	%rbx, %rdi
	negq	%rdi
	movq	%rdi, -392(%rbp)
	movq	%rax, -416(%rbp)
	movq	$0, -408(%rbp)
	movq	-360(%rbp), %rax
	movq	24(%rax), %r12
	testq	%r12, %r12
	jne	L107
	movl	$1, %r12d
L107:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-360(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	%r12, %rax
	imulq	-80(%rbp), %rax
	movq	%r12, %rdi
	negq	%rdi
	movq	%rdi, -416(%rbp)
	movq	%rax, %r13
	movl	$0, %r14d
	movq	-376(%rbp), %rax
	movq	24(%rax), %r14
	testq	%r14, %r14
	jne	L109
	movl	$1, %r14d
L109:
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-376(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-376(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-376(%rbp), %rax
	movq	48(%rax), %r15
	movq	-376(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-376(%rbp), %rax
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	%r15, %rax
	imulq	-104(%rbp), %rax
	movq	%r14, %rdx
	negq	%rdx
	subq	%r15, %rdx
	movq	%rdx, -400(%rbp)
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-64(%rbp), %rax
	movq	$537, -160(%rbp)
	movq	$1, -144(%rbp)
	movq	%rax, -136(%rbp)
	movq	%rbx, -152(%rbp)
	movq	$0, -176(%rbp)
	movq	$-1, -168(%rbp)
	leaq	-176(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %r8
	movl	$0, %r9d
	salq	$3, %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	$537, -336(%rbp)
	movq	$1, -320(%rbp)
	movq	%rax, -312(%rbp)
	movq	$1, -328(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	$-1, -344(%rbp)
	movq	-80(%rbp), %rax
	leaq	-1(%rax), %r13
	movq	$537, -288(%rbp)
	movq	$1, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	%r13, -264(%rbp)
	leaq	1(%r13), %rax
	testq	%rax, %rax
	setle	%al
	movzbl	%al, %eax
	leaq	1(%r13), %rdx
	testl	%eax, %eax
	je	L110
	movl	$1, %eax
	jmp	L111
L110:
	leaq	0(,%rdx,8), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
L111:
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -304(%rbp)
	movq	$0, -296(%rbp)
	movl	$0, %eax
L113:
	cmpq	%r13, %rax
	jg	L112
	movq	-304(%rbp), %rdx
	leaq	1(%rax), %rcx
	imulq	%r12, %rcx
	movq	-416(%rbp), %rsi
	addq	%rcx, %rsi
	movq	-72(%rbp), %rcx
	movsd	(%rcx,%rsi,8), %xmm0
	leaq	1(%rax), %rcx
	imulq	%rbx, %rcx
	movq	-392(%rbp), %rsi
	addq	%rcx, %rsi
	movq	-56(%rbp), %rcx
	movsd	(%rcx,%rsi,8), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	addq	$1, %rax
	jmp	L113
L112:
	leaq	-304(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	$538, -240(%rbp)
	movq	$1, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%r14, -232(%rbp)
	movq	$1, -200(%rbp)
	movq	%rax, -192(%rbp)
	movq	%r15, -208(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-400(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-352(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	__gfortran_matmul_r8
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	pxor	%xmm0, %xmm0
	movq	-80(%rbp), %rsi
	movl	$1, %eax
L115:
	cmpq	%rsi, %rax
	jg	L114
	leaq	-1(%rax), %rcx
	movq	-120(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm2
	movq	%rax, %rdx
	imulq	%r12, %rdx
	movq	-416(%rbp), %rdi
	leaq	(%rdx,%rdi), %rcx
	movq	-72(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm1
	movq	%rax, %rdx
	imulq	%rbx, %rdx
	movq	-392(%rbp), %rdi
	leaq	(%rdx,%rdi), %rcx
	movq	-56(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm3
	subsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	addq	$1, %rax
	jmp	L115
L114:
	movsd	LC3(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	LC2(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	_exp
	movq	%xmm0, %rax
	movq	-384(%rbp), %rdx
	movsd	(%rdx), %xmm0
	movq	%rax, %xmm4
	divsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	movsd	%xmm0, -184(%rbp)
	movsd	-184(%rbp), %xmm5
	movsd	%xmm5, -392(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	movq	-392(%rbp), %rax
	movq	%rax, %xmm0
	addq	$376, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI37:
	ret
LFE9:
	.cstring
	.align 3
LC7:
	.ascii "Integer overflow when calculating the amount of memory to allocate\0"
LC8:
	.ascii "probs\0"
	.align 3
LC9:
	.ascii "Attempting to allocate already allocated variable '%s'\0"
	.align 3
LC10:
	.ascii "At line 33 of file expectation.f90\0"
	.align 3
LC11:
	.ascii "Allocation would exceed memory limit\0"
	.text
	.globl ___cluster_MOD_tmatrix
___cluster_MOD_tmatrix:
LFB10:
	pushq	%rbp
LCFI38:
	movq	%rsp, %rbp
LCFI39:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$728, %rsp
LCFI40:
	movq	%rdi, -568(%rbp)
	movq	%rsi, -576(%rbp)
	movq	%rdx, -584(%rbp)
	movq	%rcx, -592(%rbp)
	movq	%r8, -600(%rbp)
	movq	%r9, -608(%rbp)
	movq	-568(%rbp), %rax
	movq	24(%rax), %r14
	testq	%r14, %r14
	jne	L119
	movl	$1, %r14d
L119:
	movq	-568(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-568(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-568(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	-568(%rbp), %rax
	movq	48(%rax), %r15
	movq	-568(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-568(%rbp), %rax
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	%r15, %rdx
	imulq	-80(%rbp), %rdx
	movq	%r14, %rax
	negq	%rax
	subq	%r15, %rax
	movq	%rax, -664(%rbp)
	movq	%rdx, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	-576(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -616(%rbp)
	testq	%rax, %rax
	jne	L121
	movq	$1, -616(%rbp)
L121:
	movq	-576(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-576(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-576(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-616(%rbp), %rdi
	movq	%rdi, %rax
	imulq	-96(%rbp), %rax
	negq	%rdi
	movq	%rdi, -672(%rbp)
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-584(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -624(%rbp)
	testq	%rax, %rax
	jne	L123
	movq	$1, -624(%rbp)
L123:
	movq	-584(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-584(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-584(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	movq	-584(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rbx
	movq	%rbx, -680(%rbp)
	movq	-584(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-584(%rbp), %rax
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	movq	%rbx, %rdx
	imulq	-120(%rbp), %rdx
	movq	-624(%rbp), %rax
	negq	%rax
	movq	%rax, %rdi
	movq	%rbx, %rax
	subq	%rax, %rdi
	movq	%rdi, -688(%rbp)
	movq	%rdx, %rax
	movq	%rax, -640(%rbp)
	movq	$0, -632(%rbp)
	movq	-592(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -640(%rbp)
	testq	%rax, %rax
	jne	L125
	movq	$1, -640(%rbp)
L125:
	movq	-592(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-592(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-592(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	movq	-592(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rsi
	movq	%rsi, -696(%rbp)
	movq	-592(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-592(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	movq	%rdi, -704(%rbp)
	movq	-592(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-592(%rbp), %rax
	movq	80(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	movq	%rdi, %rdx
	imulq	-152(%rbp), %rdx
	movq	-640(%rbp), %rax
	negq	%rax
	movq	%rsi, %rbx
	subq	%rbx, %rax
	movq	%rax, %rbx
	movq	%rdi, %rax
	subq	%rax, %rbx
	movq	%rbx, -712(%rbp)
	movq	%rdx, %rax
	movq	%rax, -656(%rbp)
	movq	$0, -648(%rbp)
	movq	-600(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -656(%rbp)
	testq	%rax, %rax
	jne	L127
	movq	$1, -656(%rbp)
L127:
	movq	-600(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-600(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-600(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	movq	-656(%rbp), %rsi
	movq	%rsi, %rax
	imulq	-168(%rbp), %rax
	negq	%rsi
	movq	%rsi, -720(%rbp)
	movq	%rax, -736(%rbp)
	movq	$0, -728(%rbp)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	$538, -448(%rbp)
	movq	$1, -432(%rbp)
	movq	%rax, -424(%rbp)
	movq	%r14, -440(%rbp)
	movq	$1, -408(%rbp)
	movq	%rdx, -400(%rbp)
	movq	%r15, -416(%rbp)
	movq	$0, -464(%rbp)
	movq	$-1, -456(%rbp)
	leaq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rbx
	movq	%rbx, -736(%rbp)
	movq	-96(%rbp), %rax
	movq	$537, -496(%rbp)
	movq	$1, -480(%rbp)
	movq	%rax, -472(%rbp)
	movq	-616(%rbp), %r13
	movq	%r13, %rax
	movq	%rax, -488(%rbp)
	movq	$0, -512(%rbp)
	movq	$-1, -504(%rbp)
	leaq	-512(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -184(%rbp)
	movq	%rbx, %rax
	imulq	-184(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, -752(%rbp)
	movq	$0, -744(%rbp)
	movq	%rbx, %rax
	notq	%rax
	movq	%rax, -752(%rbp)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	$538, -288(%rbp)
	movq	$1, -272(%rbp)
	movq	%rax, -264(%rbp)
	movq	%r14, -280(%rbp)
	movq	$1, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	%r15, -256(%rbp)
	movq	$0, -304(%rbp)
	movq	$-1, -296(%rbp)
	leaq	-304(%rbp), %rax
	movq	64(%rax), %rdx
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	cltq
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -768(%rbp)
	movq	$0, -760(%rbp)
	leaq	0(,%rdx,8), %rax
	movl	$1, %edx
	testq	%rax, %rax
	cmove	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -200(%rbp)
	movq	$0, -384(%rbp)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	$538, -448(%rbp)
	movq	$1, -432(%rbp)
	movq	%rax, -424(%rbp)
	movq	%r14, -440(%rbp)
	movq	$1, -408(%rbp)
	movq	%rdx, -400(%rbp)
	movq	%r15, -416(%rbp)
	movq	$0, -464(%rbp)
	movq	$-1, -456(%rbp)
	leaq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -204(%rbp)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	$538, -448(%rbp)
	movq	$1, -432(%rbp)
	movq	%rax, -424(%rbp)
	movq	%r14, -440(%rbp)
	movq	$1, -408(%rbp)
	movq	%rdx, -400(%rbp)
	movq	%r15, -416(%rbp)
	movq	$0, -464(%rbp)
	movq	$-1, -456(%rbp)
	leaq	-464(%rbp), %rax
	movq	64(%rax), %rdx
	movq	56(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -208(%rbp)
	movq	-96(%rbp), %rax
	movq	$537, -448(%rbp)
	movq	$1, -432(%rbp)
	movq	%rax, -424(%rbp)
	movq	%r13, %rax
	movq	%rax, -440(%rbp)
	movq	$0, -464(%rbp)
	movq	$-1, -456(%rbp)
	leaq	-464(%rbp), %rax
	movq	40(%rax), %rdx
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movl	%eax, -212(%rbp)
	movsd	LC6(%rip), %xmm0
	movsd	%xmm0, -224(%rbp)
	movl	$0, %eax
	cmpl	$0, -204(%rbp)
	cmovns	-204(%rbp), %eax
	movslq	%eax, %rbx
	testq	%rbx, %rbx
	je	L128
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rbx
	testq	%rax, %rax
	jg	L129
	movl	$1, %esi
	jmp	L131
L129:
	movl	$0, %esi
	jmp	L131
L128:
	movl	$0, %esi
L131:
	movl	$0, %eax
	cmpl	$0, -212(%rbp)
	cmovns	-212(%rbp), %eax
	movslq	%eax, %rcx
	testq	%rcx, %rcx
	je	L132
	movabsq	$9223372036854775807, %rax
	cqto
	idivq	%rcx
	cmpq	%rbx, %rax
	jge	L133
	movl	$1, %eax
	jmp	L135
L133:
	movl	$0, %eax
	jmp	L135
L132:
	movl	$0, %eax
L135:
	addl	%eax, %esi
	imulq	%rbx, %rcx
	movq	%rcx, %rdx
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, %rdx
	jbe	L136
	movl	$1, %eax
	jmp	L137
L136:
	movl	$0, %eax
L137:
	addl	%eax, %esi
	movq	%rbx, %r12
	notq	%r12
	cmpl	$0, -204(%rbp)
	setle	%al
	movzbl	%al, %edx
	cmpl	$0, -212(%rbp)
	setle	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	L138
	movl	$0, %edx
	jmp	L139
L138:
	movq	%rcx, %rax
	leaq	0(,%rax,8), %rdx
L139:
	testl	%esi, %esi
	je	L140
	leaq	LC7(%rip), %rdi
	movl	$0, %eax
	call	__gfortran_runtime_error
L140:
	movq	-384(%rbp), %rax
	testq	%rax, %rax
	je	L141
	leaq	LC8(%rip), %rdx
	leaq	LC9(%rip), %rsi
	leaq	LC10(%rip), %rdi
	movl	$0, %eax
	call	__gfortran_runtime_error_at
L141:
	movl	$1, %eax
	testq	%rdx, %rdx
	cmovne	%rdx, %rax
	movq	%rax, %rdi
	call	_malloc
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	testq	%rax, %rax
	jne	L142
	leaq	LC11(%rip), %rdi
	call	__gfortran_os_error
L142:
	movq	$538, -368(%rbp)
	movq	$1, -352(%rbp)
	movl	-204(%rbp), %eax
	cltq
	movq	%rax, -344(%rbp)
	movq	$1, -360(%rbp)
	movq	$1, -328(%rbp)
	movl	-212(%rbp), %eax
	cltq
	movq	%rax, -320(%rbp)
	movq	%rbx, -336(%rbp)
	movq	%r12, -376(%rbp)
	movl	-204(%rbp), %eax
	movl	%eax, -768(%rbp)
	movl	$1, -52(%rbp)
	cmpl	%eax, -52(%rbp)
	jg	L143
L148:
	movq	-80(%rbp), %r8
	movl	-52(%rbp), %eax
	cltq
	imulq	%r14, %rax
	movq	-664(%rbp), %rsi
	leaq	(%rax,%rsi), %rdi
	movl	$1, %ecx
L145:
	cmpq	%r8, %rcx
	jg	L144
	leaq	-1(%rcx), %rsi
	movq	%rcx, %rax
	imulq	%r15, %rax
	leaq	(%rax,%rdi), %rdx
	movq	-64(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm0
	movq	-200(%rbp), %rax
	movsd	%xmm0, (%rax,%rsi,8)
	addq	$1, %rcx
	jmp	L145
L144:
	movl	-212(%rbp), %r13d
	movl	$1, -56(%rbp)
	cmpl	%r13d, -56(%rbp)
	jg	L146
L147:
	movq	-192(%rbp), %rax
	movq	$537, -544(%rbp)
	movq	$1, -528(%rbp)
	movq	%rax, -520(%rbp)
	movq	$1, -536(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	$-1, -552(%rbp)
	movq	-120(%rbp), %rdx
	movl	-56(%rbp), %eax
	movslq	%eax, %rcx
	movq	$537, -496(%rbp)
	movq	$1, -480(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-680(%rbp), %rax
	movq	%rax, -488(%rbp)
	leaq	-1(%rcx), %rax
	movq	-624(%rbp), %rdi
	imulq	%rdi, %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -512(%rbp)
	leaq	-1(%rcx), %rax
	imulq	%rdi, %rax
	addq	-688(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	-144(%rbp), %rdx
	movq	-152(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rsi
	movq	$538, -448(%rbp)
	movq	$1, -432(%rbp)
	movq	%rdx, -424(%rbp)
	movq	-696(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	$1, -408(%rbp)
	movq	%rcx, -400(%rbp)
	movq	-704(%rbp), %rax
	movq	%rax, -416(%rbp)
	leaq	-1(%rsi), %rax
	movq	-640(%rbp), %rbx
	imulq	%rbx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -464(%rbp)
	leaq	-1(%rsi), %rax
	imulq	%rbx, %rax
	addq	-712(%rbp), %rax
	movq	%rax, -456(%rbp)
	movq	-384(%rbp), %r12
	movq	-376(%rbp), %rcx
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-336(%rbp), %rax
	imulq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rbx
	movl	-56(%rbp), %eax
	cltq
	imulq	-656(%rbp), %rax
	addq	-720(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-160(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-464(%rbp), %rdx
	leaq	-512(%rbp), %rsi
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	___cluster_MOD_normalpdf
	movq	%xmm0, %rax
	movq	%rax, (%r12,%rbx,8)
	cmpl	%r13d, -56(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -56(%rbp)
	testl	%eax, %eax
	jne	L146
	jmp	L147
L146:
	movl	-768(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -52(%rbp)
	testl	%eax, %eax
	jne	L143
	jmp	L148
L143:
	movl	-204(%rbp), %r9d
	movl	$1, -52(%rbp)
	cmpl	%r9d, -52(%rbp)
	jg	L149
L156:
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %eax
	cltq
	imulq	%r14, %rax
	movq	-664(%rbp), %rbx
	leaq	(%rax,%rbx), %r8
	movl	$1, %eax
L151:
	cmpq	%rdi, %rax
	jg	L150
	leaq	-1(%rax), %rcx
	movq	%rax, %rdx
	imulq	%r15, %rdx
	leaq	(%rdx,%r8), %rsi
	movq	-64(%rbp), %rdx
	movsd	(%rdx,%rsi,8), %xmm0
	movq	-200(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
	addq	$1, %rax
	jmp	L151
L150:
	movl	-212(%rbp), %r8d
	movl	$1, -56(%rbp)
	cmpl	%r8d, -56(%rbp)
	jg	L152
L155:
	pxor	%xmm0, %xmm0
	movq	-96(%rbp), %r11
	movq	-384(%rbp), %rsi
	movq	-376(%rbp), %rcx
	movq	-328(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rax), %r10
	movq	-336(%rbp), %rdi
	leaq	(%rcx,%rdx), %rbx
	movl	$1, %ecx
L154:
	cmpq	%r11, %rcx
	jg	L153
	movq	-616(%rbp), %rax
	imulq	%rcx, %rax
	movq	-672(%rbp), %rdx
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movsd	(%rax,%rdx,8), %xmm2
	leaq	(%rcx,%r10), %rax
	imulq	%rdi, %rax
	addq	%rbx, %rax
	movsd	(%rsi,%rax,8), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	addq	$1, %rcx
	jmp	L154
L153:
	movl	-56(%rbp), %eax
	cltq
	imulq	-736(%rbp), %rax
	movq	-752(%rbp), %rbx
	leaq	(%rax,%rbx), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movl	-56(%rbp), %eax
	cltq
	imulq	-616(%rbp), %rax
	movq	-672(%rbp), %rdi
	leaq	(%rax,%rdi), %rcx
	movq	-88(%rbp), %rax
	movsd	(%rax,%rcx,8), %xmm2
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rsi
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rdi
	movq	-336(%rbp), %rcx
	imulq	%rdi, %rcx
	addq	%rcx, %rsi
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rsi, %rcx
	movsd	(%rax,%rcx,8), %xmm1
	mulsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	-608(%rbp), %rax
	movsd	%xmm0, (%rax,%rdx,8)
	cmpl	%r8d, -56(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -56(%rbp)
	testl	%eax, %eax
	jne	L152
	jmp	L155
L152:
	cmpl	%r9d, -52(%rbp)
	sete	%al
	movzbl	%al, %eax
	addl	$1, -52(%rbp)
	testl	%eax, %eax
	jne	L149
	jmp	L156
L149:
	movq	-384(%rbp), %rax
	testq	%rax, %rax
	je	L157
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	_free
L157:
	movq	$0, -384(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	_free
	nop
	addq	$728, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
LCFI41:
	ret
LFE10:
	.literal16
	.align 4
LC2:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.literal8
	.align 3
LC3:
	.long	0
	.long	1071644672
	.align 3
LC5:
	.long	0
	.long	1072693248
	.align 3
LC6:
	.long	1610612736
	.long	1074340347
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB0-.
	.set L$set$2,LFE0-LFB0
	.quad L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB0
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$7,LEFDE3-LASFDE3
	.long L$set$7
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB1-.
	.set L$set$8,LFE1-LFB1
	.quad L$set$8
	.byte	0
	.byte	0x4
	.set L$set$9,LCFI4-LFB1
	.long L$set$9
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$10,LCFI5-LCFI4
	.long L$set$10
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$11,LCFI6-LCFI5
	.long L$set$11
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$12,LCFI7-LCFI6
	.long L$set$12
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$13,LEFDE5-LASFDE5
	.long L$set$13
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB2-.
	.set L$set$14,LFE2-LFB2
	.quad L$set$14
	.byte	0
	.byte	0x4
	.set L$set$15,LCFI8-LFB2
	.long L$set$15
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$16,LCFI9-LCFI8
	.long L$set$16
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$17,LCFI10-LCFI9
	.long L$set$17
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$18,LEFDE7-LASFDE7
	.long L$set$18
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB3-.
	.set L$set$19,LFE3-LFB3
	.quad L$set$19
	.byte	0
	.byte	0x4
	.set L$set$20,LCFI11-LFB3
	.long L$set$20
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$21,LCFI12-LCFI11
	.long L$set$21
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$22,LCFI13-LCFI12
	.long L$set$22
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$23,LEFDE9-LASFDE9
	.long L$set$23
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB4-.
	.set L$set$24,LFE4-LFB4
	.quad L$set$24
	.byte	0
	.byte	0x4
	.set L$set$25,LCFI14-LFB4
	.long L$set$25
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$26,LCFI15-LCFI14
	.long L$set$26
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$27,LCFI16-LCFI15
	.long L$set$27
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$28,LCFI17-LCFI16
	.long L$set$28
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$29,LEFDE11-LASFDE11
	.long L$set$29
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB5-.
	.set L$set$30,LFE5-LFB5
	.quad L$set$30
	.byte	0
	.byte	0x4
	.set L$set$31,LCFI18-LFB5
	.long L$set$31
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$32,LCFI19-LCFI18
	.long L$set$32
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$33,LCFI20-LCFI19
	.long L$set$33
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$34,LCFI21-LCFI20
	.long L$set$34
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$35,LEFDE13-LASFDE13
	.long L$set$35
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB6-.
	.set L$set$36,LFE6-LFB6
	.quad L$set$36
	.byte	0
	.byte	0x4
	.set L$set$37,LCFI22-LFB6
	.long L$set$37
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$38,LCFI23-LCFI22
	.long L$set$38
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$39,LCFI24-LCFI23
	.long L$set$39
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$40,LCFI25-LCFI24
	.long L$set$40
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$41,LEFDE15-LASFDE15
	.long L$set$41
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB7-.
	.set L$set$42,LFE7-LFB7
	.quad L$set$42
	.byte	0
	.byte	0x4
	.set L$set$43,LCFI26-LFB7
	.long L$set$43
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$44,LCFI27-LCFI26
	.long L$set$44
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$45,LCFI28-LCFI27
	.long L$set$45
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$46,LCFI29-LCFI28
	.long L$set$46
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$47,LEFDE17-LASFDE17
	.long L$set$47
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB8-.
	.set L$set$48,LFE8-LFB8
	.quad L$set$48
	.byte	0
	.byte	0x4
	.set L$set$49,LCFI30-LFB8
	.long L$set$49
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$50,LCFI31-LCFI30
	.long L$set$50
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$51,LCFI32-LCFI31
	.long L$set$51
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$52,LCFI33-LCFI32
	.long L$set$52
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$53,LEFDE19-LASFDE19
	.long L$set$53
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB9-.
	.set L$set$54,LFE9-LFB9
	.quad L$set$54
	.byte	0
	.byte	0x4
	.set L$set$55,LCFI34-LFB9
	.long L$set$55
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$56,LCFI35-LCFI34
	.long L$set$56
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$57,LCFI36-LCFI35
	.long L$set$57
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$58,LCFI37-LCFI36
	.long L$set$58
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$59,LEFDE21-LASFDE21
	.long L$set$59
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB10-.
	.set L$set$60,LFE10-LFB10
	.quad L$set$60
	.byte	0
	.byte	0x4
	.set L$set$61,LCFI38-LFB10
	.long L$set$61
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$62,LCFI39-LCFI38
	.long L$set$62
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$63,LCFI40-LCFI39
	.long L$set$63
	.byte	0x8f
	.byte	0x3
	.byte	0x8e
	.byte	0x4
	.byte	0x8d
	.byte	0x5
	.byte	0x8c
	.byte	0x6
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$64,LCFI41-LCFI40
	.long L$set$64
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE21:
	.subsections_via_symbols
