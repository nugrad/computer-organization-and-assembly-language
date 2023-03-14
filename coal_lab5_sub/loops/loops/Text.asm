INCLUDE Irvine32.inc


.data

dash0 byte    '                     _____________________________',0

dash1 byte    '                     |                           |',0

wellcome byte '                     |        WELLCOME TO        |',0

menu byte     '                     | PARKING MANAGEMENT SYSTEM |',0

dash2 byte    '                     |___________________________|',0

menu1 byte    '                     Press 1 For Rickshaw Entry Price = 200',0

menu2 byte    '                     Press 2 For Car Entry Price = 300',0

menu3 byte    '                     Press 3 For Bus Entry Price = 400',0

menu4 byte    '                     Press 4 To Show The Records',0

menu5 byte    '                     Press 5 To Delete All The Records',0

menu6 byte    '                     Press 6 To Exit',0

msg0 byte     ' Please Select a key from Menu : ',0

msg1 byte     ' Parking Is Full!',0

msg2 byte     ' Wrong input!',0

msg3 byte     ' Car',0

msg4 byte     ' Bus',0

msg5 byte     ' Record',0

msg6 byte     ' There is more space',0

msg7 byte     ' The Total Amount For All VEHICLES = ',0

msg8 byte     ' The Total Number Of VEHICLES Parked = ',0

msg9 byte     ' The Total Number Of RICKSHAWS Parked = ',0

msg10 byte    ' The Total Number Of CARS Parked = ',0

msg11 byte    ' The Total Number Of BUSES Parked = ',0

msg12 byte    ' All Records Deleted Successfully! ',0

entry byte    ' Entry Successfully Done!',0

amount dword 0

count dword 0


amr byte      ' The Total Amount For RICKSHAWS = ',0

am1 dword ?

amc byte      ' The Total Amount For CARS = ',0

am2 dword ?

amb byte      ' The Total Amount For BUSES = ',0

am3 dword ?


r dword 0

cc dword 0

b dword 0


.code

main proc

mov eax,0


call crlf

call crlf

call crlf

call crlf

mov edx, offset dash0

call writestring

call crlf

mov edx, offset dash1

call writestring

call crlf

mov edx, offset wellcome

call writestring

call crlf

mov edx, offset dash1

call writestring

call crlf

mov edx, offset menu

call writestring

call crlf

mov edx, offset dash2

call writestring

call crlf

call crlf


while_::  

call crlf

             ;Menu

call waitmsg

call clrscr

call crlf

call crlf

mov edx, offset dash0

call writestring

call crlf

call crlf


mov edx,offset menu

call writestring

call crlf

mov edx, offset dash0

call writestring

call crlf

call crlf




mov edx,offset menu1

call writestring

call crlf



mov edx,offset menu2

call writestring

call crlf



mov edx,offset menu3

call writestring

call crlf



mov edx,offset menu4

call writestring

call crlf



mov edx,offset menu5

call writestring

call crlf



mov edx,offset menu6

call writestring

call crlf



    ;userinput


call crlf

mov edx,offset msg0

call writestring

call readint

call crlf

call crlf



cmp eax,1

je rikshw

cmp eax,2

je car

cmp eax,3

je bus

cmp eax,4

je rec

cmp eax,5

je del

cmp eax,6

je end_



mov edx,offset msg2

call writestring

call crlf


jmp while_



rikshw:

call rikshaw

loop rikshw


car:

call caar

loop car


rec:

call recrd

loop rec


del:

call delt

loop del


bus:

call buss

loop bus



end_::


exit

main endp

loop end_





rikshaw proc

cmp count,8

jle rikshw1

mov edx,offset msg1

call writestring

call crlf




jmp while_

jmp end_


rikshw1:

mov eax,200

add am1,eax

add amount, eax

mov dx,0 ; remainder is 0

mov bx,10 

mov cx,0

l2:

        div bx

        push dx

        mov dx,0

        mov ah,0

        inc cx

        cmp ax,0

        jne l2

   

l3:

        ;pop dx

		

		      

loop l3


;add am1,eax

;mov eax ,am1

;call writedec


inc count

;mov dx,count

inc r


mov edx, offset entry

call writestring

call crlf


jmp while_

jmp end_

rikshaw endp


caar proc

cmp count,8

jle car1

mov edx,offset msg1

call writestring

call crlf



jmp while_

jmp end_


car1:

mov eax,300

add am2,eax

add amount, eax

mov dx,0

mov bx,10

mov cx,0

l22:

        div bx

        push dx

        mov dx,0

        mov ah,0

        inc cx

        cmp ax,0

       jne l22

   

l33:

        ;pop dx

        

loop l33



inc count

inc cc


mov edx, offset entry

call writestring

call crlf


jmp while_

jmp end_


caar  endp




buss proc

cmp count,8

jle bus1

mov edx,offset msg1

call writestring

call crlf


jmp while_

jmp end_


bus1:

mov eax,400

add am3,eax

add amount, eax

mov dx,0

mov bx,10

mov cx,0

l222:

        div bx

        push dx

        mov dx,0

        mov ah,0

        inc cx

        cmp ax,0

       jne l222

   

l333:

       ; pop dx

    

loop l333

;mov am3,amount


inc count

inc b


mov edx, offset entry

call writestring

call crlf


jmp while_

jmp end_


buss  endp


recrd proc

call crlf



mov dx,0

mov bx,10

mov cx,0

totalpush:

        div bx

        push dx

        mov dx,0

      ;  mov ah,0

        inc cx

        cmp ax,0

       jne totalpush

   

totalprint:

        ;pop dx

     

loop totalprint


;vehicle total

mov edx,offset msg8

call writestring


mov eax,count

call writedec

call crlf



;rikshaw total

mov edx,offset msg9

call writestring



mov eax,r

call writedec

call crlf


;car total

mov edx,offset msg10

call writestring


mov eax,cc

call writedec

call crlf



;bus total

mov edx,offset msg11

call writestring

mov eax, b

call writedec

call crlf



; prints the rickshaw amount

mov edx,offset amr

call writestring

mov eax, am1

call writedec

call crlf



; prints the car amount

mov edx,offset amc

call writestring

mov eax, am2

call writedec

call crlf



; prints the bus amount

mov edx,offset amb
exit
END main