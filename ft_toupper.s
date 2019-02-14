section .text
	global _ft_toupper

_ft_toupper:
	cmp rdi, 97
	jl no_change
	cmp rdi, 122
	jg no_change
	jmp upper_case

no_change:
	mov rax, rdi
	ret

upper_case:
	sub rdi, 32
	mov rax, rdi
	ret
