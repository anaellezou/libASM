section .text
	global _ft_isalpha

_ft_isalpha:
	cmp rdi, 65
	jl false
	cmp rdi, 122
	jg false
	cmp rdi, 91
	je false
	cmp rdi, 92
	je false
	cmp rdi, 93
	je false
	cmp rdi, 94
	je false
	cmp rdi, 95
	je false
	cmp rdi, 96
	je false
	jmp true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret
