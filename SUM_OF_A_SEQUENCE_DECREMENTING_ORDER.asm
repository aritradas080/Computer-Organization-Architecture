org 100h   
.Model SMALL
.STACK 100H
.DATA 
    A DW 10
    SUM DW ?
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
    
    ;10+9+8+7+6+5+4+3+2+1 
    
    MOV CX,10
    
    MOV BX,0 
    
    SUM_LOOP:
    ADD BX,A
    DEC A 
    DEC CX
    JG SUM_LOOP
    JE PRINT
    
    PRINT:
    MOV SUM,BX
    MOV AH,2
    MOV DX,SUM
    INT 21H
    JMP END
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN  