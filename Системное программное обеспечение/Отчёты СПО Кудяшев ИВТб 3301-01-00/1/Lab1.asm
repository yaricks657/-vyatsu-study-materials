.model small
.data
message1 db 0ah,0dh, 'First string: $ '
message2 db 0ah,0dh, 'Second string: $ '
message3 db 0ah,0dh, 'Symbols: $ '
message4 db 0ah,0dh, 'Both strings are empty $'
mas db 20, 0, 20 dup(36)
.stack 256h
.code

Message proc near
mov ah,09h
Int 21h
Ret
Message endp

Input proc near
m1:
mov ah,0
Int 16h
cmp al,0
Jne m3
jmp m1
m3:
cmp al,13
Je quit
cmp al,33
Jle m1
Inc di
mov ah,2
mov dl,al
Int 21h
loop m1
quit:
Ret
Input endp

main:
mov ax,@data
xor di,di
mov ds,ax
lea dx,message1
call Message
mov cx,10
call Input

lea dx,message2
call Message
mov cx,10
call Input

cmp di,0h
Je m6

lea dx,message3
call Message
mov cx,di
xor si,si
m5:
mov mas[si],'*'
inc si
loop m5
mov ah,09h
lea dx,mas
Int 21h
jmp m7
m6:
lea dx,message4
call Message
m7:
mov ax,4c00h
Int 21h
end main
