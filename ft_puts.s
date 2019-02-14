section .text
	global _ft_puts

extern _ft_strlen

_ft_puts:
	cmp rdi, 0
	je ret_NULL
	mov r8, rdi
	call _ft_strlen
	mov rdx, rax
	mov rax, 0x2000004
	mov rsi, r8
	mov rdi, 1
	syscall
	jc ret_error
	lea rsi, [rel msg]
	mov rdx, msg.len
	mov rax, 0x2000004
	mov rdi, 1
	syscall
	jc ret_error
	jmp ret_success

ret_NULL:
	mov rax, 0
	ret

ret_success:
	mov rax, 10
	ret

ret_error:
	mov rax, -1
	ret

section .data
msg: db "", 10
.len: equ $ - msg
