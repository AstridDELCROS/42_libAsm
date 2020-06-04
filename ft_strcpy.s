section .text
global ft_strcpy

ft_strcpy:
	mov	rax, 0
	mov	rcx, 0

cpy:
	cmp	byte [rsi + rcx], 0
	jz	end
	mov	dl, [rsi + rcx]
	mov	[rdi + rcx], dl
	inc	rcx
	jmp	cpy

end:
	mov	dl, 0
	mov	[rdi + rcx], dl
	mov	rax, rdi
	ret
