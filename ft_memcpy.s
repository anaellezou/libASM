section .text
	global _ft_memcpy

_ft_memcpy:
	push rdi
	cmp rdx, 0
	je return
	mov rcx, rdx
	cld
	rep movsb
return:
	pop rax
	ret
