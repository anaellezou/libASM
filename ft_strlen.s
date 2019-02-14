section .text
	global _ft_strlen

_ft_strlen:
	push rdi
	cld
	mov rcx, -1
	mov rax, 0
	repne scasb
	mov rax, -2
	sub rax, rcx
	pop rdi
	ret