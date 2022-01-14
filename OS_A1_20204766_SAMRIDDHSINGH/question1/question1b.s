	.file	"question1b.c"
	.text
	.globl	FA1
	.bss
	.align 8
	.type	FA1, @object
	.size	FA1, 8
FA1:
	.zero	8
	.globl	FA2
	.align 8
	.type	FA2, @object
	.size	FA2, 8
FA2:
	.zero	8
	.globl	FA3
	.align 8
	.type	FA3, @object
	.size	FA3, 8
FA3:
	.zero	8
	.globl	FA4
	.align 8
	.type	FA4, @object
	.size	FA4, 8
FA4:
	.zero	8
	.globl	FA5
	.align 8
	.type	FA5, @object
	.size	FA5, 8
FA5:
	.zero	8
	.globl	FA6
	.align 8
	.type	FA6, @object
	.size	FA6, 8
FA6:
	.zero	8
	.section	.rodata
.LC1:
	.string	"student_record.csv"
.LC2:
	.string	"Can't open file"
.LC3:
	.string	"Section A"
.LC4:
	.string	","
.LC5:
	.string	"Average of assignment1:  %f \n"
.LC6:
	.string	"Average of assignment2:  %f \n"
.LC7:
	.string	"Average of assignment3:  %f \n"
.LC8:
	.string	"Average of assignment4:  %f \n"
.LC9:
	.string	"Average of assignment5:  %f \n"
.LC10:
	.string	"Average of assignment6:  %f \n"
	.text
	.globl	Average_SecA
	.type	Average_SecA, @function
Average_SecA:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$100160, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -100120(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -100112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -100104(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -100096(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -100088(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -100080(%rbp)
	movl	$0, -100156(%rbp)
	movl	$0, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -100148(%rbp)
	cmpl	$0, -100148(%rbp)
	jne	.L2
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L16
.L2:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L4
.L14:
	movl	$0, -100152(%rbp)
	leaq	-100016(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	jmp	.L5
.L13:
	movq	-100072(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	jne	.L6
	movq	-100072(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$1, %rax
	jne	.L6
	addl	$1, -100156(%rbp)
	addl	$1, -100152(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	jmp	.L5
.L6:
	cmpl	$1, -100152(%rbp)
	jne	.L7
	movq	-100072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -100124(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-100124(%rbp), %xmm0
	movsd	-100120(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -100120(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	addl	$1, -100152(%rbp)
	jmp	.L5
.L7:
	cmpl	$2, -100152(%rbp)
	jne	.L8
	movq	-100072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -100128(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-100128(%rbp), %xmm0
	movsd	-100112(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -100112(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	addl	$1, -100152(%rbp)
	jmp	.L5
.L8:
	cmpl	$3, -100152(%rbp)
	jne	.L9
	movq	-100072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -100132(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-100132(%rbp), %xmm0
	movsd	-100104(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -100104(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	addl	$1, -100152(%rbp)
	jmp	.L5
.L9:
	cmpl	$4, -100152(%rbp)
	jne	.L10
	movq	-100072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -100136(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-100136(%rbp), %xmm0
	movsd	-100096(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -100096(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	addl	$1, -100152(%rbp)
	jmp	.L5
.L10:
	cmpl	$5, -100152(%rbp)
	jne	.L11
	movq	-100072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -100140(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-100140(%rbp), %xmm0
	movsd	-100088(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -100088(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	addl	$1, -100152(%rbp)
	jmp	.L5
.L11:
	cmpl	$6, -100152(%rbp)
	jne	.L12
	movq	-100072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -100144(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-100144(%rbp), %xmm0
	movsd	-100080(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -100080(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	movl	$0, -100152(%rbp)
	jmp	.L5
.L12:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
.L5:
	cmpq	$0, -100072(%rbp)
	jne	.L13
.L4:
	leaq	-100016(%rbp), %rcx
	movl	-100148(%rbp), %eax
	movl	$100000, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	testq	%rax, %rax
	jne	.L14
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-100156(%rbp), %xmm1
	movsd	-100120(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -100064(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-100156(%rbp), %xmm1
	movsd	-100112(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -100056(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-100156(%rbp), %xmm1
	movsd	-100104(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -100048(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-100156(%rbp), %xmm1
	movsd	-100096(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -100040(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-100156(%rbp), %xmm1
	movsd	-100088(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -100032(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-100156(%rbp), %xmm1
	movsd	-100080(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -100024(%rbp)
	movq	-100064(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-100056(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-100048(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-100040(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-100032(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-100024(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	movsd	FA1(%rip), %xmm0
	addsd	-100064(%rbp), %xmm0
	movsd	%xmm0, FA1(%rip)
	movsd	FA2(%rip), %xmm0
	addsd	-100056(%rbp), %xmm0
	movsd	%xmm0, FA2(%rip)
	movsd	FA3(%rip), %xmm0
	addsd	-100048(%rbp), %xmm0
	movsd	%xmm0, FA3(%rip)
	movsd	FA4(%rip), %xmm0
	addsd	-100040(%rbp), %xmm0
	movsd	%xmm0, FA4(%rip)
	movsd	FA5(%rip), %xmm0
	addsd	-100032(%rbp), %xmm0
	movsd	%xmm0, FA5(%rip)
	movsd	FA6(%rip), %xmm0
	addsd	-100024(%rbp), %xmm0
	movsd	%xmm0, FA6(%rip)
	movl	-100148(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
.L16:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Average_SecA, .-Average_SecA
	.section	.rodata
.LC11:
	.string	"Section B"
	.text
	.globl	Average_SecB
	.type	Average_SecB, @function
Average_SecB:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$100160, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -100120(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -100112(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -100104(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -100096(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -100088(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -100080(%rbp)
	movl	$0, -100160(%rbp)
	movl	$0, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -100152(%rbp)
	cmpl	$0, -100152(%rbp)
	jne	.L18
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L34
.L18:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -100148(%rbp)
	cmpl	$0, -100148(%rbp)
	jne	.L22
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L34
.L32:
	movl	$0, -100156(%rbp)
	leaq	-100016(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	jmp	.L23
.L31:
	movq	-100072(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	jne	.L24
	movq	-100072(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$1, %rax
	jne	.L24
	addl	$1, -100160(%rbp)
	addl	$1, -100156(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	jmp	.L23
.L24:
	cmpl	$1, -100156(%rbp)
	jne	.L25
	movq	-100072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -100124(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-100124(%rbp), %xmm0
	movsd	-100120(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -100120(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	addl	$1, -100156(%rbp)
	jmp	.L23
.L25:
	cmpl	$2, -100156(%rbp)
	jne	.L26
	movq	-100072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -100128(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-100128(%rbp), %xmm0
	movsd	-100112(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -100112(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	addl	$1, -100156(%rbp)
	jmp	.L23
.L26:
	cmpl	$3, -100156(%rbp)
	jne	.L27
	movq	-100072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -100132(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-100132(%rbp), %xmm0
	movsd	-100104(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -100104(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	addl	$1, -100156(%rbp)
	jmp	.L23
.L27:
	cmpl	$4, -100156(%rbp)
	jne	.L28
	movq	-100072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -100136(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-100136(%rbp), %xmm0
	movsd	-100096(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -100096(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	addl	$1, -100156(%rbp)
	jmp	.L23
.L28:
	cmpl	$5, -100156(%rbp)
	jne	.L29
	movq	-100072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -100140(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-100140(%rbp), %xmm0
	movsd	-100088(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -100088(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	addl	$1, -100156(%rbp)
	jmp	.L23
.L29:
	cmpl	$6, -100156(%rbp)
	jne	.L30
	movq	-100072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -100144(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-100144(%rbp), %xmm0
	movsd	-100080(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -100080(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
	movl	$0, -100156(%rbp)
	jmp	.L23
.L30:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -100072(%rbp)
.L23:
	cmpq	$0, -100072(%rbp)
	jne	.L31
.L22:
	leaq	-100016(%rbp), %rcx
	movl	-100148(%rbp), %eax
	movl	$100000, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	testq	%rax, %rax
	jne	.L32
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-100160(%rbp), %xmm1
	movsd	-100120(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -100064(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-100160(%rbp), %xmm1
	movsd	-100112(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -100056(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-100160(%rbp), %xmm1
	movsd	-100104(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -100048(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-100160(%rbp), %xmm1
	movsd	-100096(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -100040(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-100160(%rbp), %xmm1
	movsd	-100088(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -100032(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-100160(%rbp), %xmm1
	movsd	-100080(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -100024(%rbp)
	movq	-100064(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-100056(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-100048(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-100040(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-100032(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-100024(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	movsd	FA1(%rip), %xmm0
	addsd	-100064(%rbp), %xmm0
	movsd	%xmm0, FA1(%rip)
	movsd	FA2(%rip), %xmm0
	addsd	-100056(%rbp), %xmm0
	movsd	%xmm0, FA2(%rip)
	movsd	FA3(%rip), %xmm0
	addsd	-100048(%rbp), %xmm0
	movsd	%xmm0, FA3(%rip)
	movsd	FA4(%rip), %xmm0
	addsd	-100040(%rbp), %xmm0
	movsd	%xmm0, FA4(%rip)
	movsd	FA5(%rip), %xmm0
	addsd	-100032(%rbp), %xmm0
	movsd	%xmm0, FA5(%rip)
	movsd	FA6(%rip), %xmm0
	addsd	-100024(%rbp), %xmm0
	movsd	%xmm0, FA6(%rip)
	movl	-100148(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
.L34:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L33
	call	__stack_chk_fail@PLT
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Average_SecB, .-Average_SecB
	.section	.rodata
.LC12:
	.string	"Average of both section:\n "
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-16(%rbp), %rax
	movl	$0, %ecx
	leaq	Average_SecA(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create@PLT
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join@PLT
	leaq	-16(%rbp), %rax
	movl	$0, %ecx
	leaq	Average_SecB(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create@PLT
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movsd	FA1(%rip), %xmm0
	movsd	.LC13(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movsd	FA2(%rip), %xmm0
	movsd	.LC13(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movsd	FA3(%rip), %xmm0
	movsd	.LC13(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movsd	FA4(%rip), %xmm0
	movsd	.LC13(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movsd	FA5(%rip), %xmm0
	movsd	.LC13(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movsd	FA6(%rip), %xmm0
	movsd	.LC13(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L37
	call	__stack_chk_fail@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC13:
	.long	0
	.long	1073741824
	.ident	"GCC: (GNU) 11.1.0"
	.section	.note.GNU-stack,"",@progbits
