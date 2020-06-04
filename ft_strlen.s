section .text
global ft_strlen

ft_strlen:
	mov	rax, 0

comp:
	cmp	byte [rdi + rax], 0
	je	end
	inc	rax
	jmp	comp

end:
	ret
