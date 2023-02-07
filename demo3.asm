org 100h   
.Model SMALL
.STACK 100H
.DATA   
    ;string inputs
    msg1 db "1st input : $"
    msg2 db "2nd input : $"    
    msg3 db "Total output : $"
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax 
         
    ;first string
    LEA DX,msg1
    MOV AH,9
    INT 21H  
    ;first input as output
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
     
    ;take first input
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    ;second string 
    LEA DX,msg2
    MOV AH,9
    INT 21H 
    ;second input as output
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    ;take second input
    MOV AH,1
    INT 21H
    MOV CL,AL 
    
     
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    ;total output
    LEA DX,msg3
    MOV AH,9
    INT 21H  
    ;NEW LINE
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    ;SUM
    ADD BL,CL
    SUB BL,48
    MOV AH,2
    MOV DL,BL
    INT 21H
    
END MAIN

ret




