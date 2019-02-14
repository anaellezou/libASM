section .text
	global _ft_memset

_ft_memset:
	push rdi
	mov rcx, rdx
	mov al, sil
	cld
	rep stosb
	pop rax
	ret
