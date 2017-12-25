<<<<<<< HEAD
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

=======
section .data
num1: dd 1, 1
total: dd 0
msg :  dd "sum=%d",10,0

    section .text
        extern _printf
        global _main
    _main:
        push ebp
        mov ebp,esp
        mov ebx,num1 ;point bx to first number
        mov ecx,11     ;load count of numbers in ecx
        mov eax,0       ;initialize sum to zero
    loop:
		mov eax, [ebx+4]
		add eax, [ebx]
        mov [ebx+4],eax
        sub eax,[ebx]
        mov [ebx],eax
		sub ecx,1
        jnz loop
		
        mov eax, [ebx+4]
		mov  [total],eax
        push dword [total]

        push msg
        call _printf
        mov esp,ebp
        pop ebp

        ret
>>>>>>> f55675b1fe70102e70c0140a29391b011516e268
