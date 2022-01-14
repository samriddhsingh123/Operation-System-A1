extern func_C
section .data
	abc db "  Entered function B in file B.asm", 10 
section .bss
	X resb 8
section .text
	global func_b
func_b:
	mov [X], rdi	
	mov rax, 1
	mov rdi, 1
	mov rsi, X
	mov rdx, 18
	syscall 

	mov rax, 1
	mov rdi, 1
	mov rsi, abc
	mov rdx, 30
	syscall

	pop rax
	pop rax
	lea rax, [rel func_C]
	push rax
	ret
