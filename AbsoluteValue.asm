org 100h   
.Model SMALL
.STACK 100H
.DATA   
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
    
    MOV AX,-5
    
    CMP AX,0
    JL CHANGE
    
    CHANGE:
    NEG AX
    ADD AX,48
    
    MOV AH,2
    MOV DX,AX
    INT 21H
    
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN 