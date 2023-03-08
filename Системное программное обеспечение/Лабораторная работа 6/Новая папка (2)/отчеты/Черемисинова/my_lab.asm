	.386
	
	.model flat
	
	extrn	GetCursorPos:DWORD
	extrn	MessageBoxA:DWORD
	extrn	ExitProcess:DWORD
	
	.code
_start:

	push	offset p
	call	GetCursorPos

	mov eax, 0
	mov ax, word ptr p.X
	lea esi, buf
	add esi, 5

	call ToString

	mov eax,0
	mov ax, word ptr p.Y
	lea esi, buf
	add esi, 10

	call ToString

	push	40h
	push	offset cap
	push	offset buf
	push	0
	call	MessageBoxA
	push	0
	call	ExitProcess


	ToString proc
		xor dx, dx
		;dec edi
		;mov byte ptr [edi], 0
		mov bx, 10
@z:		div bx
		add dl, 30h
		;dec edi
		mov byte ptr [esi], dl
		dec esi
		xor dx, dx
		test ax, ax
		jnz @z
		ret
	ToString endp


	.data	

	Point STRUC
		X dd ?
		Y dd ?
	Point ENDS

	p Point 1 dup(<>)

	buf db 11 dup (' '), 0

	cap db 'GetCursorPosition', 0
		
	end	_start