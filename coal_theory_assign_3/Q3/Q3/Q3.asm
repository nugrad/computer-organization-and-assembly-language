INCLUDE Irvine32.inc
TITLE “question 3”
.data
var byte 21 dup(?) ;
msg1 byte "Input your text: ",0
msg2 byte " after conversion: ",0
msg3 byte "decrypted : ",0

.code
main proc
;asking user for input
mov edx,offset msg1
call writestring
mov edx,offset var
mov ecx,sizeof msg1

call readstring
mov esi,edx
mov edx,offset msg2
call writestring

mov ecx, lengthof var
;loop
l1:
mov eax,[esi]
add eax,50
mov [esi],eax

call writechar
inc esi
loop l1
mov ecx, lengthof var
sub esi,lengthof var
call crlf
mov edx,offset msg3
call writestring
l2:
mov eax,[esi]
sub eax,50
mov [esi],eax
;output
call writechar
inc esi
loop l2
exit
main ENDP
END main