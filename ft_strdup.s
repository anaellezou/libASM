section .text
	global _ft_strdup

extern _ft_strlen
extern _malloc

_ft_strdup:
	push rdi
	call _ft_strlen
	inc rax
	push rax
	mov rdi, rax
	call _malloc
	mov rdi, rax
	pop rcx
	pop rsi
	cld
	rep movsb
put_zero:
	mov byte [rdi], 0
	ret
