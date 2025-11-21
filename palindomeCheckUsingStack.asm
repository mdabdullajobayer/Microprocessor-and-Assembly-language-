include emu8086.inc
org 100h

.data
str1 db "dhaka$"

.code 
mov ax,@data
mov ds,ax
mov si, 0
input:
mov al, str1[si]
cmp si,5
je done
push ax
inc si
jmp input

done:
mov si,0


output:
printn  
show:
pop ax
cmp al, str1[si] 
jne not_palindome
inc si
cmp si,5
jl show 

print "palindome"
jmp stp

not_palindome:

print "not_palindome"

stp: 

ret
