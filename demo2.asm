org 100h   
.Model SMALL
.STACK 100H
.DATA   
    msg1 db "First input : $"
    msg2 db "Second input : $"    
    msg3 db "Total output : $"
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
    
    ;first string print
    lea dx,msg1
    MOV AH,9
    INT 21H 
    ;first number
    MOV BH,1
    MOV AH,2
    MOV DL,BH 
    ADD DL,48
    INT 21H 
    ;new line    
    MOV AH,2   
    MOV DL,0AH
    INT 21H 
    ;starting point of the new line
    MOV AH,2
    MOV DL,0DH
    INT 21H
          
    ;second string print
    lea dx,msg2
    MOV AH,9
    INT 21H  
    ;second number  
    lea dx,msg2       
    MOV CH,2
    MOV AH,2
    MOV DL,CH
    ADD DL,48
    INT 21H
    ;new line
    MOV AH,2   
    MOV DL,0AH
    INT 21H
    ;starting point of the new line
    MOV AH,2
    MOV DL,0DH
    INT 21H     
    
    ;Ouput
    ;third string print
    lea dx,msg3
    MOV AH,9
    INT 21H 
    
    ADD BH,CH
    MOV AH,2
    MOV DL,BH
    ADD DL,48
    INT 21H
    
    
    
END MAIN

ret




