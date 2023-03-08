.model small 
.data 
message1 db 'First string: $' 
message2 db 0ah,0dh,'Second string: $' 
message3 db 0ah,0dh,'The sum of symbols: $' 
FullData STRUC 
one db 72 dup(36)
two db 36 dup(36)
three db 36 dup(36)
FullData ENDS
FD FullData 72 dup(<>) 
.stack 256h 
summa db ?
string db 10 dup ('$')
len_string = $ - string
.code 

INPUT proc near
Xor di,di 
Inc si
m1: 
mov ah,0 
Int 16h 
cmp al,0 
Jne m3 
jmp m1
m3: 
cmp al,13 
Je quit 
m4: 
cmp al,33 
Jle m1 
mov bx[di],al 
Inc di 
mov ah,2 
mov dl,al 
Int 21h 
loop m1 
quit: 
Ret 
INPUT endp 

MESSAGE proc near 
push ax 
push cx 
mov ah,09h 
Int 21h 
pop cx 
pop ax 
Ret 
MESSAGE endp
 
main: 
mov ax,@data 
mov ds,ax 

Lea dx,message1 ;?????? ????? ?????? ??????
call MESSAGE 
xor si,si  ;???????
Lea bx,FD.three 
mov cx,36
;mov dx,1 
call INPUT 

Lea dx,message2 ;?????? ????? ?????? ??????
call MESSAGE 
Lea bx,FD.two  
mov cx,36 
;Xor dx,dx 
call INPUT

mov cx,si ; ?????? ???????? ?????????7 ???? ??
;mov ch, 36 
;mov ah,FD.three 
Xor si,si 
Xor di,di 
here: 
mov al,offset FD.two[si] 
mov ah,offset FD.three[si] 
mov offset FD.one[si],ax 
;add di,2 
Inc si 
loop here 
Lea dx,message3 
call MESSAGE 
Lea dx,FD 
call MESSAGE 
mov ax,4c00h 
Int 21h 
end main 
