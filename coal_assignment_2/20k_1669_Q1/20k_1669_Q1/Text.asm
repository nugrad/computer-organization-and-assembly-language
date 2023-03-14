INCLUDE Irvine32.inc

.data
 prompt BYTE "displayed: series :  ",0
.code
main PROC
mov edx,OFFSET prompt
call WriteString

mov eax ,0
mov ebx,0

call writedec
mov edx,1

call writedec
mov ecx,8

call Fibonacci     ; fibonacci procedure called

exit
main ENDP


Fibonacci PROC   ; fibonacci Procedure
L1:
mov eax,0
add eax,ebx
add eax,edx
mov ebx,edx
mov edx,eax
call Display     ; display procedure called
Loop L1
ret
exit
Fibonacci ENDP


Display PROC       ; display procedure
call writedec

ret
exit
Display ENDP








END main