INCLUDE Irvine32.inc

.data
arrayB BYTE 60, 70, 80
arrayW WORD 150, 250, 350
arrayD DWORD 600, 1200, 1800

.code
main PROC
mov esi, 2
mov al, arrayB[esi*TYPE arrayB]
mov esi, 0
add al, arrayB[esi*TYPE arrayB]

mov esi, 2
mov bx, arrayW[esi*TYPE arrayW]
mov esi, 0
add bx, arrayW[esi*TYPE arrayW]

mov esi, 2
mov ecx, arrayD[esi*TYPE arrayD]
mov esi, 0
add ecx, arrayD[esi*TYPE arrayD]

call Dumpregs
exit 
main ENDP
END main