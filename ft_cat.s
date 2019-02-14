section .bss
	buffer resb 4096

extern _ft_bzero

section .text
	global _ft_cat

_ft_cat:
	mov r8, rdi
; b = 16
; mov a, b
; b == 16, a == 16
read:
	mov rax, 0x2000003
	mov rdi, r8
	lea rsi, [rel buffer]
	mov rdx, 4096
	syscall
	jc ret_error
	cmp rax, 0
	je finish
	mov r9, rax
	jmp write
write:
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel buffer]
	mov rdx, r9
	syscall
	jc ret_caca
bzero:
	lea rdi, [rel buffer]
	mov rsi, 4096
	call _ft_bzero
	jmp read
ret_error:
	mov rax, 1
	ret
ret_caca:
	mov rax, 2
	ret
finish:
	mov rax, 0
	ret
