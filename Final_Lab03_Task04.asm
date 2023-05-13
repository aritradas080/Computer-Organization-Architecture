org 100h   
.Model SMALL
.STACK 100H
.DATA    
   
 
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
    
    MOV CX,30
    
    MOV BX,'A'
    
    PRINT:
    MOV AH,2
    MOV DX,BX
    INT 21H
    DEC CX
    JG PRINT
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN  















