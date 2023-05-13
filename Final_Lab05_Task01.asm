org 100h   
.Model SMALL
.STACK 100H
.DATA  

     MSG1 DB "BINARY FORMAT : $" 
     MSG2 DB "TOTAL NUMBER OF 1'S : $"
     RESULT DW ?
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax   
    
    MOV CX,8 
    
    ;USER INPUT
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,030H
    
    MOV AH,2
    MOV DX,0AH
    INT 21H
    
    MOV AH,2
    MOV DX,0DH
    INT 21H
    
    ;MOV BX,005H 
    
    ;MESSAGE
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    SHIFTING:
    ROL BL,1 
    DEC CX
    JG CHECK
    JL ONES
    
    CHECK:
    JC PRINT_ONE
    JNC PRINT_ZERO
    
    PRINT_ONE:  
    MOV AH,2
    MOV DX,'1'
    INT 21H 
    INC RESULT
    CMP CX,8
    JL SHIFTING
    
    
    PRINT_ZERO:
    MOV AH,2
    MOV DX,'0'
    INT 21H 
    CMP CX,8
    JL SHIFTING
    
    
    ONES:  
    MOV AH,2
    MOV DX,0AH
    INT 21H
    MOV AH,2
    MOV DX,0DH
    INT 21H
    
    ; MSG 2
    LEA DX,MSG2
    MOV AH,9
    INT 21H

     
    MOV AH,2  
    MOV DX,RESULT
    ADD DX,48
    INT 21H
     
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN
