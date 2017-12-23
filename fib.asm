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