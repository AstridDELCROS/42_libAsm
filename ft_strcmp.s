section	.text
global ft_strcmp

ft_strcmp:
	mov	al, byte [rdi]
	mov	bl, byte [rsi]
	cmp	al, 0
	je	calc
	cmp	bl, 0
	je	calc
	cmp	al, bl
	jne	calc
	inc	rsi
	inc	rdi
	jmp	ft_strcmp

calc:
	movzx	rax, al
	movzx	rdx, bl
	sub	rax, rdx
	jl	end1
	je	end2
	mov	rax, 1
	ret

end1:
	mov	rax, -1
	ret

end2:
	mov	rdx, 0
	ret
