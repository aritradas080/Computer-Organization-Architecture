.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AX,5
    MOV BX,6
    MOV CX,7
    CMP AX,BX
    JB LOOP1
     
    CMP BX,CX
    JB LOOP1
    MOV DX,1
    JMP END_IF
    
    LOOP1:
    MOV DX,0
    JMP END_IF
    END_IF:
    INT 21H
    
    MAIN ENDP
END MAIN
