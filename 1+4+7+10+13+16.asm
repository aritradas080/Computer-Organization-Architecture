org 100h   
.Model SMALL
.STACK 100H
.DATA 
    A DW 1
    SUM DW ?
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
    
    ;1+4+7+10+13+16
    
    MOV CX,6
    
    MOV BX,0 
    
    SUM_LOOP:
    ADD BX,A
    ADD A,3 
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
