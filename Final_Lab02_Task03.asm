
org 100h   
.Model SMALL
.STACK 100H
.DATA   
     
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
      
    MOV AX,2
    MOV BX,3
    MOV CX,4  
    
    CMP AX,BX
    JL  ZERO_IN_AX  
    JG CHECK_1
    
CHECK_1:
CMP BX,CX
JL ZER0_IN_BX
JG ZERO_IN_CX

    
ZERO_IN_AX:
MOV AX,030H
JMP END

ZER0_IN_BX:
MOV BX,030H
JMP END

ZERO_IN_CX:
MOV CX,030H
JMP END
    
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN  
