
    global  _main
    extern  _printf

    section .text
_main:
    push    message
    call    _printf
    add     esp, 4
	
	;mov	m,1
	push	m
	call	_printf
	add	esp,4
	push	'1'
	call	_printf
	add	esp,4
    ret
message:
    db  'Hello, World', 10, 0
	
	section .bss
	
	m resb 1