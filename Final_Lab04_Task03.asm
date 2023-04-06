org 100h   
.Model SMALL
.STACK 100H
.DATA 
    RESULT DB ?
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
    
    MOV AL,04H;00000100
    MOV BL,14H;00010100
    OR AL,BL  ;00010100
    MOV RESULT,AL 
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN 