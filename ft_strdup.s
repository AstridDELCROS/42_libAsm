section .text
	global	ft_strdup
	extern	ft_strlen
	extern	malloc
	extern	ft_strcpy

ft_strdup:
	call	ft_strlen
	inc	rax
	push	rdi
	mov	rdi, rax
	call	malloc
	cmp	rax, 0
	je	return
	pop	rdi
	mov	rsi, rdi
	mov	rdi, rax
	call	ft_strcpy

return:
	ret
