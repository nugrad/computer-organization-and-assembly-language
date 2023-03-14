INCLUDE Irvine32.inc

.data

DifferentInputs proto,x:word,y:word,z:word

.code

;main funtion starting
main proc
mov eax,0


invoke DifferentInputs, 1,7,43
call dumpregs

invoke DifferentInputs, 2,5,340
call dumpregs

invoke DifferentInputs, 3,7,6
call dumpregs

invoke DifferentInputs, 10,12,03
call dumpregs

invoke DifferentInputs, 40,1,5
call dumpregs
exit
main ENDP

DifferentInputs proc,x:word,y:word,z:word
mov ax,x
mov bx,y
mov cx,z
cmp ax,bx

je j2
cmp ax,cx
je j2
cmp bx,cx
je j2
mov ax,1

jmp j1
j2:
mov ax,0
j1:
;value returned
ret 

DifferentInputs endp
END main