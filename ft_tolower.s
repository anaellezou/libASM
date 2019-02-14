section .text
	global _ft_tolower

_ft_tolower:
	cmp rdi, 65
	jl no_change
	cmp rdi, 90
	jg no_change
	jmp lower_case

no_change:
	mov rax, rdi
	ret

lower_case:
	add rdi, 32
	mov rax, rdi
	ret
