section .text
	global _ft_strcat

_ft_strcat:
	push rdi
	push rsi
	cmp rdi, 0
	je exit
	cmp rsi, 0
	je exit
	mov al, 0
	mov rcx, -1
	cld
	repne scasb
	dec rdi

copy:
	cmp byte [rsi], 0
	je end
	movsb
	jmp copy

end:
	movsb

exit:
	pop rsi
	pop rdi
	mov rax, rdi
	ret
