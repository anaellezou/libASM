section .text
	global _ft_bzero

_ft_bzero:
	mov rdx, 0
	push rdi

loop:
	cmp rdx, rsi
	je return
	cmp byte [rdi], 0
	jne change_char
	jmp iteration

change_char:
	mov byte [rdi], 0
	jmp iteration

iteration:
	inc rdi
	inc rdx
	jmp loop

return:
	pop rax
	ret
