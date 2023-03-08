.386
.MODEL flat,C
;.STACK
.DATA
h dq ?
i dq ?
;b dq ?
;a dq ?
s dq ?
tga dq ?
tgb dq ?
sum dq ?
;n dd ?
two dq 2.0
one dq 1.0
log2e dq 1.442695041
.CODE
PUBLIC sinn 
sinn PROC b:qword, a:qword, n:qword, nn:dword, arg:qword
fld b
fld a
fsin
fxch
fsin
fadd
fdiv two ;(sin(a) + sin(b)) / 2
fst s
finit
fld b
fld a
fsub
fld n
fdiv ;(b - a) / n
fst h
mov ecx,nn
fld one
fst i
metka:
fxch
fmul i
fadd a
fsin
fadd s
fst s; s=sin(a+i*h)
fld i
fadd one
fst i
finit
fld h
fld i
loop metka
finit
fld h
fld s
fmul
fld arg
fmul
ret 
sinn ENDP

coss PROC b:qword, a:qword, n:qword, nn:dword, arg:qword
fld b
fld a
fcos
fxch
fcos
fadd
fdiv two ;(sin(a) + sin(b)) / 2
fst s
finit
fld b
fld a
fsub
fld n
fdiv ;(b - a) / n
fst h
mov ecx,nn
fld one
fst i
metka:
fxch
fmul i
fadd a
fcos
fadd s
fst s; s=sin(a+i*h)
fld i
fadd one
fst i
finit
fld h
fld i
loop metka
finit
fld h
fld s
fmul
fld arg
fmul
ret 
coss ENDP

tgg PROC b:qword, a:qword, n:qword, nn:dword, arg:qword
;fld b
fld a
fptan
fxch
fst tga
fld b
fptan
fxch
fst tgb
;fxch
;fcos
fld tga
fld tgb
fadd
fdiv two ;(sin(a) + sin(b)) / 2
fst s
finit
fld b
fld a
fsub
fld n
fdiv ;(b - a) / n
fst h
mov ecx,nn
fld one
fst i
metka:
fxch
fmul i
fadd a
fptan
fxch
fadd s
fst s; s=sin(a+i*h)
fld i
fadd one
fst i
finit
fld h
fld i
loop metka
finit
fld h
fld s
fmul
fld arg
fmul
ret 
tgg ENDP

ctgg PROC b:qword, a:qword, n:qword, nn:dword, arg:qword
fld a
fld a
fsin
fxch
fcos
fxch;???
fdiv
;fst tga
fld b
fld b
fsin
fxch
fcos
fxch;???
fdiv
fadd
fdiv two ;(sin(a) + sin(b)) / 2
fst s
finit
fld b
fld a
fsub
fld n
fdiv ;(b - a) / n
fst h
mov ecx,nn
fld one
fst i
metka:
fxch
fmul i
fadd a
fst tga
fcos
fld tga
fsin
;fxch
fdiv
fadd s
fst s; s=sin(a+i*h)
fld i
fadd one
fst i
finit
fld h
fld i
loop metka
finit
fld h
fld s
fmul
fld arg
fmul
ret 
ctgg ENDP

xx PROC b:qword, a:qword, n:qword, nn:dword, arg:qword
fld b
fld a
fadd
fdiv two ;(sin(a) + sin(b)) / 2
fst s
finit
fld b
fld a
fsub
fld n
fdiv ;(b - a) / n
fst h
mov ecx,nn
fld one
fst i
metka:
fxch
fmul i
fadd a
fadd s
fst s; s=sin(a+i*h)
fld i
fadd one
fst i
finit
fld h
fld i
loop metka
finit
fld h
fld s
fmul
fld arg
fmul
ret 
xx ENDP

x22 PROC b:qword, a:qword, n:qword, nn:dword, arg:qword
fld b
fld a
fmul a
fxch
fmul b
fadd
fdiv two ;(sin(a) + sin(b)) / 2
fst s
finit
fld b
fld a
fsub
fld n
fdiv ;(b - a) / n
fst h
mov ecx,nn
fld one
fst i
metka:
fxch
fmul i
fadd a
fst sum
fmul sum
fadd s
fst s; s=sin(a+i*h)
fld i
fadd one
fst i
finit
fld h
fld i
loop metka
finit
fld h
fld s
fmul
fld arg
fmul
ret 
x22 ENDP

lnxx PROC b:qword, a:qword, n:qword, nn:dword, arg:qword
fld one
fld a
fyl2x 
fdiv log2e
fld one
fld b
fyl2x
fdiv log2e
fadd
fdiv two ;(sin(a) + sin(b)) / 2
fst s
finit
fld b
fld a
fsub
fld n
fdiv ;(b - a) / n
fst h
mov ecx,nn
fld one
fst i
metka:
fxch
fmul i
fadd a
fld one
fxch
fyl2x
fdiv log2e
fadd s
fst s; s=sin(a+i*h)
fld i
fadd one
fst i
finit
fld h
fld i
loop metka
finit
fld h
fld s
fmul
fld arg
fmul
ret 
lnxx ENDP
END
