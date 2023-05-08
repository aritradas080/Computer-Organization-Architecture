mov bx,0
mov cl, 4
mov ah, 1

Input_:
int 21h
cmp al, 13
je end_of_taking_Input
cmp al, 41h
jge letter_input

; for digit
and al, 0FH
jmp shift_

letter_input:
sub al,37h


shift_: 

shl bx, cl
or bl, al
jmp Input_  

end_of_taking_input:

output_1:
MOV AH,2
MOV DL, 10
INT 21H
MOV DL, 13
INT 21H
mov cx, 4
mov ah, 2   

output_2:
mov dl, bh
shr dl, 4
shl bx, 4
cmp dl, 10
jge letter_output
add dl, 48
int 21h 
jmp end_of_output

letter_output:
add dl, 55
int 21h  

end_of_output:
loop output_2

