.MODEL SMALL
.STACK 100H
.DATA   

.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
        
    MOV CX,9      
    MOV BX,'*'     
    
    PRINT:
    MOV AH,2
    MOV DX,BX
    INT 21H
    
    DEC CX
    JNZ PRINT      
    
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H 
    
    
    MOV CX,9
    PRINT_SECOND_LINE:
    MOV AH,2
    MOV DX,BX
    INT 21H
    
    DEC CX
    JNZ PRINT_SECOND_LINE  
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H 
    
    
    MOV CX,9
    PRINT_THIRD_LINE:
    MOV AH,2
    MOV DX,BX
    INT 21H
    
    DEC CX
    JNZ PRINT_THIRD_LINE  
    MOV AH,4CH
    INT 21h
    
MAIN ENDP
END MAIN