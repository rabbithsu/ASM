global	start

section .text
start:
	push	dword 4
	mov	eax, 0x47
	mov	[m], eax
	push	dword m 
	push	dword 1
	sub	esp, 4
	xor	eax, eax
	mov	eax, 4
	int	0x80
	add	esp, 16

	push	dword 0
	mov	eax, 1
	sub	esp, 12
	int	0x80

section .data
msg	db	10
section .bss
m	resb	1

