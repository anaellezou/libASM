section .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, 0x20
	jb false
	cmp rdi, 0x7e
	jg false
	jmp true
false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret
