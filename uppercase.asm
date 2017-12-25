section .data
num dw 50

section .text
	mov	ecx, num
	mov	al, []
	cmp	al, 'a'
	jb	L1
	cmp	al, 'z'
	ja	L1
	sub	a1, 32

L1:	ret
