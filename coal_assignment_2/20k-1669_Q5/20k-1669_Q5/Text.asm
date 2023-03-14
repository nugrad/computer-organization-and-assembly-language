INCLUDE Irvine32.inc
.data
range  DWORD ?
userinput BYTE "Enter the range : ",0
.code
main PROC
mov edx,OFFSET userinput
call WriteString
call Readint
mov ebx, eax
mov ecx, eax

 



L1:
mov range, ecx
mov eax, ebx

L2:

call WriteDec
dec eax
Loop L2
mov ecx,range

call Crlf
Loop L1
call DumpRegs
exit
main ENDP
END main