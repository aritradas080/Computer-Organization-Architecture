org 100h   
.Model SMALL
.STACK 100H
.DATA   
    ;string inputs
    MSG1 DB "A$"
    MSG2 DB "R$"
    MSG3 DB "I$"
    MSG4 DB "T$"
    MSG5 DB "R$"
    MSG6 DB "A$"
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax 
    
    ;FIRST CHARACTER    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    ;SECOND CHARACTER
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    ;THIRD CHARACTER
    LEA DX,MSG3
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H 
    
    ;FOURTH CHARACTER
    LEA DX,MSG4
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    ;FIFTH CHARACTER
    LEA DX,MSG5
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H   
    
    ;SIXTH CHARACTER
    LEA DX,MSG6
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    
END MAIN

ret




