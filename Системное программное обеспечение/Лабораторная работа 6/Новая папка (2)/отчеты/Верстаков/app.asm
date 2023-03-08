.386
.model flat

extrn GetSystemWindowsDirectoryA:DWORD
extrn MessageBoxA:DWORD
extrn ExitProcess:DWORD

.code
_start:

	push bufSize
	push offset lpBuffer
	call GetSystemWindowsDirectoryA

	push 40h
	push offset App
	push offset lpBuffer
	push 0
	call MessageBoxA

	push 0
	call ExitProcess

.data

lpBuffer db 300 dup(0)
bufSize dw 300

App db "6", 0

end _start