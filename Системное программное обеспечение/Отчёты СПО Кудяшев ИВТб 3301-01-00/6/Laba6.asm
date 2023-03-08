.386
.model flat

extrn GetLongPathNameA:DWORD
extrn MessageBoxA:DWORD
extrn ExitProcess:DWORD

.code
_start:

push bufSize
push offset LongPath
push offset ShortPath
call GetLongPathNameA

push 40h
push offset App
push offset LongPath
push 0
call MessageBoxA

push 0
call ExitProcess

.data

App	db	'Program', 0
bufSize dw 300
ShortPath db 'C:\FPC\REALLY~1.TXT',0
LongPath db 300 dup(0)

end _start