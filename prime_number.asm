include emu8086.inc

org 100h

.data

.code
mov ax,@data
mov ds,ax 

mov al, 23    
mov bl, 2

check:
    mov ah, 0
    mov dl, al
    div bl          
    cmp ah,0
    je notP    
    inc bl
    cmp bl, al
    jl check

printn "Prime"
jmp stp 
  
notP:
printn
print "not Prime"


stp:

ret
