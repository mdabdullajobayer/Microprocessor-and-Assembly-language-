include emu8086.inc
org 100h

.data

.code 
mov ax,@data
mov ds,ax
mov cx,0
input:
mov ah,01h 
int 21h
cmp al,13
je output 
inc cx
mov bl,al
push bx  
jmp input

output:
printn  
show:
pop dx
mov ah,02h
int 21h
dec cx
cmp cx,0
jg show


ret
