org 100h   
.Model SMALL
.STACK 100H
.DATA   
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax   
    
    MOV AL,042H
    
    CMP AL,041H
    JGE PUT_FIVE
    JL PUT_SIX
    
PUT_FIVE:
MOV CL,035H
JMP DISPLAY

PUT_SIX:
MOV CL,036H
JMP DISPLAY

DISPLAY:
MOV AH,2
MOV DL,CL
INT 21H
JMP END
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN  