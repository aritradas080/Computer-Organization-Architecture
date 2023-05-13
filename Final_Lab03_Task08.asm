org 100h   
.Model SMALL
.STACK 100H
.DATA   
    MSG DB "INPUT A CHARACTER : $"  
    CHAR DB '*'
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
    
    
    MOV AL,033H;VALUE SET
    
    CMP AL,032H
    JGE TAKE_USER_INPUT_PRINT  
    JL CHECK_SECOND
    
    CHECK_SECOND:
    CMP AL,039H
    JLE TAKE_USER_INPUT_PRINT
    JG ELSE
    
    TAKE_USER_INPUT_PRINT:
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    ;new line
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    JMP END
    
    ELSE:
    CMP AL,'*'
    JE PRINT_C
    JNE PRINT_N
    
    PRINT_C:
    MOV AH,2
    MOV DL,'c'
    INT 21H
    JMP END
    
    PRINT_N:
    MOV AH,2
    MOV DL,'n'
    INT 21H
    JMP END
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN 
