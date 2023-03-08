.386
.model flat

extrn GetKeyboardLayoutNameA:DWORD
extrn MessageBoxA:DWORD
extrn ExitProcess:DWORD

.code
_start:
push offset LongPath
call GetKeyboardLayoutNameA

push 40h
push offset App
push offset LongPath
push 0
call MessageBoxA

push 0
call ExitProcess

.data

App db 'Zakladka',0
LongPath db 300 dup(0)

end _start