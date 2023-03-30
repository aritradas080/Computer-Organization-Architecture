.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AX,7
    MOV BX,6
    MOV CX,5
    CMP AX,BX
  
     
     CMP AX,BX
     JB LABEL 
     
     CMP BX,CX
     JB LABEL2
     MOV CX,0
     JMP END_IF
     
     
     
   
    
    LABEL:
    MOV AX,0
    JMP END_IF
    
    LABEL2:
    MOV BX,0
    JMP END_IF
    END_IF:
    INT 21H
    
    MAIN ENDP
END MAIN



