section .text
	global	ft_write
	extern	__errno_location

ft_write:
	mov	rax, 1
	mov	rbx, rdi
	mov	rcx, rsi
	syscall
	cmp	rax, 0
	jl	syscall_err
	ret

syscall_err:
	neg	rax
	mov	rdx, rax
	call	__errno_location
	mov	rax, -0x1
	ret
