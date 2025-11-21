include emu8086.inc

org 100h

.data
str1 db "madam$"
 
.code
mov ax,@data
mov ds,ax

lea si,str1
mov si,0

mov di,4
check1:
mov al,str1[si]
cmp al,str1[di]

jne not_palindome
 inc si
 dec di
 cmp si,5
jl check1

print "palindome"
jmp stp

not_palindome:

print "not_palindome"

stp:
ret
