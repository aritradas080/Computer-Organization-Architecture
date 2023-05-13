org 100h   
.Model SMALL
.STACK 100H
.DATA   
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
    
    ;MOV CX,030H
    
    TAKE_INPUT:
    
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    
    CMP BL,0DH
    JNE TAKE_INPUT
    JE END
    
    
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN 
