	.file	"question1a.c"
	.text
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
	.string	"Average of assignment5:  %f \n"
.LC9:
	.string	"Average of assignment6:  %f \n"
.LC10:
	.string	"Section B"
.LC11:
	.string	"Average of assignment4:  %f \n"
	.align 8
.LC12:
	.string	"Forking failed no file started: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1048832, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -1048752(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -1048744(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -1048736(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -1048728(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -1048720(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -1048712(%rbp)
	movl	$0, -1048828(%rbp)
	call	fork@PLT
	movl	%eax, -1048816(%rbp)
	cmpl	$0, -1048816(%rbp)
	jne	.L2
	movl	$0, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -1048812(%rbp)
	cmpl	$0, -1048812(%rbp)
	jne	.L3
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L2
.L3:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L4
.L14:
	movl	$0, -1048824(%rbp)
	leaq	-1048592(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -1048704(%rbp)
	jmp	.L5
.L13:
	movq	-1048704(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	jne	.L6
	movq	-1048704(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$1, %rax
	jne	.L6
	addl	$1, -1048828(%rbp)
	addl	$1, -1048824(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048704(%rbp)
	jmp	.L5
.L6:
	cmpl	$1, -1048824(%rbp)
	jne	.L7
	movq	-1048704(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1048788(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-1048788(%rbp), %xmm0
	movsd	-1048752(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1048752(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048704(%rbp)
	addl	$1, -1048824(%rbp)
	jmp	.L5
.L7:
	cmpl	$2, -1048824(%rbp)
	jne	.L8
	movq	-1048704(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1048792(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-1048792(%rbp), %xmm0
	movsd	-1048744(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1048744(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048704(%rbp)
	addl	$1, -1048824(%rbp)
	jmp	.L5
.L8:
	cmpl	$3, -1048824(%rbp)
	jne	.L9
	movq	-1048704(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1048796(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-1048796(%rbp), %xmm0
	movsd	-1048736(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1048736(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048704(%rbp)
	addl	$1, -1048824(%rbp)
	jmp	.L5
.L9:
	cmpl	$4, -1048824(%rbp)
	jne	.L10
	movq	-1048704(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1048800(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-1048800(%rbp), %xmm0
	movsd	-1048728(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1048728(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048704(%rbp)
	addl	$1, -1048824(%rbp)
	jmp	.L5
.L10:
	cmpl	$5, -1048824(%rbp)
	jne	.L11
	movq	-1048704(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1048804(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-1048804(%rbp), %xmm0
	movsd	-1048720(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1048720(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048704(%rbp)
	addl	$1, -1048824(%rbp)
	jmp	.L5
.L11:
	cmpl	$6, -1048824(%rbp)
	jne	.L12
	movq	-1048704(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1048808(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-1048808(%rbp), %xmm0
	movsd	-1048712(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1048712(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048704(%rbp)
	movl	$0, -1048824(%rbp)
	jmp	.L5
.L12:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048704(%rbp)
.L5:
	cmpq	$0, -1048704(%rbp)
	jne	.L13
.L4:
	leaq	-1048592(%rbp), %rcx
	movl	-1048812(%rbp), %eax
	movl	$100000, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	testq	%rax, %rax
	jne	.L14
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-1048828(%rbp), %xmm1
	movsd	-1048752(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1048688(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-1048828(%rbp), %xmm1
	movsd	-1048744(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1048680(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-1048828(%rbp), %xmm1
	movsd	-1048736(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1048672(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-1048828(%rbp), %xmm1
	movsd	-1048728(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1048664(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-1048828(%rbp), %xmm1
	movsd	-1048720(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1048656(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-1048828(%rbp), %xmm1
	movsd	-1048712(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1048648(%rbp)
	movq	-1048688(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-1048680(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-1048672(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-1048664(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-1048656(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-1048648(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	-1048812(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
.L2:
	cmpl	$0, -1048816(%rbp)
	jle	.L15
	leaq	-1048832(%rbp), %rcx
	movl	-1048816(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	waitpid@PLT
	movl	%eax, -1048784(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -1048780(%rbp)
	cmpl	$0, -1048780(%rbp)
	jne	.L18
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L17
.L28:
	movl	$0, -1048820(%rbp)
	leaq	-1048592(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -1048696(%rbp)
	jmp	.L19
.L27:
	movq	-1048696(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	jne	.L20
	movq	-1048696(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$1, %rax
	jne	.L20
	addl	$1, -1048828(%rbp)
	addl	$1, -1048820(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048696(%rbp)
	jmp	.L19
.L20:
	cmpl	$1, -1048820(%rbp)
	jne	.L21
	movq	-1048696(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1048756(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-1048756(%rbp), %xmm0
	movsd	-1048752(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1048752(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048696(%rbp)
	addl	$1, -1048820(%rbp)
	jmp	.L19
.L21:
	cmpl	$2, -1048820(%rbp)
	jne	.L22
	movq	-1048696(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1048760(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-1048760(%rbp), %xmm0
	movsd	-1048744(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1048744(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048696(%rbp)
	addl	$1, -1048820(%rbp)
	jmp	.L19
.L22:
	cmpl	$3, -1048820(%rbp)
	jne	.L23
	movq	-1048696(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1048764(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-1048764(%rbp), %xmm0
	movsd	-1048736(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1048736(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048696(%rbp)
	addl	$1, -1048820(%rbp)
	jmp	.L19
.L23:
	cmpl	$4, -1048820(%rbp)
	jne	.L24
	movq	-1048696(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1048768(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-1048768(%rbp), %xmm0
	movsd	-1048728(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1048728(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048696(%rbp)
	addl	$1, -1048820(%rbp)
	jmp	.L19
.L24:
	cmpl	$5, -1048820(%rbp)
	jne	.L25
	movq	-1048696(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1048772(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-1048772(%rbp), %xmm0
	movsd	-1048720(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1048720(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048696(%rbp)
	addl	$1, -1048820(%rbp)
	jmp	.L19
.L25:
	cmpl	$6, -1048820(%rbp)
	jne	.L26
	movq	-1048696(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1048776(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-1048776(%rbp), %xmm0
	movsd	-1048712(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1048712(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048696(%rbp)
	movl	$0, -1048820(%rbp)
	jmp	.L19
.L26:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1048696(%rbp)
.L19:
	cmpq	$0, -1048696(%rbp)
	jne	.L27
.L18:
	leaq	-1048592(%rbp), %rcx
	movl	-1048780(%rbp), %eax
	movl	$1048576, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	testq	%rax, %rax
	jne	.L28
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-1048828(%rbp), %xmm1
	movsd	-1048752(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1048640(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-1048828(%rbp), %xmm1
	movsd	-1048744(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1048632(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-1048828(%rbp), %xmm1
	movsd	-1048736(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1048624(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-1048828(%rbp), %xmm1
	movsd	-1048728(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1048616(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-1048828(%rbp), %xmm1
	movsd	-1048720(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1048608(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-1048828(%rbp), %xmm1
	movsd	-1048712(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1048600(%rbp)
	movq	-1048640(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-1048632(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-1048624(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-1048616(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-1048608(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-1048600(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	-1048780(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	jmp	.L17
.L15:
	cmpl	$0, -1048816(%rbp)
	jns	.L17
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L17:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.1.0"
	.section	.note.GNU-stack,"",@progbits
