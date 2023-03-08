.386
.model flat

extrn Beep:DWORD
extrn MessageBoxA:DWORD
extrn ExitProcess:DWORD

.code
_start:
push dwDuration
push dwFreq
call Beep

push 40h
push offset App
push offset LongPath
push 0
call MessageBoxA

push 0
call ExitProcess

.data

App db 'Beep',0
dwDuration dw 500
dwFreq dw 300
LongPath db 'Ok_Beep',0

end _start