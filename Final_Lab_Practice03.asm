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
    JG POSITIVE  
    JE EQUALS
    JL NEGATIVE
    
POSITIVE:
MOV BX,1
JMP END

EQUALS:
MOV BX,0
JMP END

NEGATIVE:
MOV AX,1
NEG AX
MOV BX,AX
JMP END
   
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN  
