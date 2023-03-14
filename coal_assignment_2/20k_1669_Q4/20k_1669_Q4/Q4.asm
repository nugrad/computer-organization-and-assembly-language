INCLUDE Irvine32.inc
.data
a dword 100
b dword 200
varc dword 0
cont dword ?

.code
main PROC

mov ecx, 5
L1:
mov cont, ecx
mov eax, b
add eax, a
call writedec
mov b, eax
call crlf
mov ecx, 5

L2:
	dec a
	add varc, 10
loop L2
mov eax, a
call writedec

mov eax, varc
call writedec
call crlf

mov ecx, cont
loop L1

exit
main ENDP


END main