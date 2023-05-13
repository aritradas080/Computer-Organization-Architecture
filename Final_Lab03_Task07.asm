org 100h   
.Model SMALL
.STACK 100H
.DATA   
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
    
    MOV CX,5
    
    INPUT:
    MOV AH,1
    INT 21H
    MOV BL,AL
    DEC CX
    JG INPUT
    JE END
    
    
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN 
