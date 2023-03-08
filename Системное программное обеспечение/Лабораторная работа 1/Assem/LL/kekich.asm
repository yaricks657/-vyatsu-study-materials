.model small
.data
message1 db 0ah,0dh, 'First string: $ '
message2 db 0ah,0dh, 'Second string: $ '
message3 db 0ah,0dh, 'The sum of symbols: $ '
mas db 10 dup(36)
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
mov ds,ax
lea dx,message1
call Message
mov cx,10
call Input

lea dx,message2
call Message
mov cx,10
call Input

lea dx,message3
call Message
mov cx,di ;??? ?????????? ????? ??????? ????? ? ??? ??????????
xor si,si
m5:
mov offset mas[si],di
inc si
loop m5
lea dx,mas
;push ax
;push cx
;mov ah,09h
Int 21h
;pop cx
;pop ax
mov ax,4c00h
Int 21h
end main