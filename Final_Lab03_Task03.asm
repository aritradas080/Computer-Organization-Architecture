org 100h   
.Model SMALL
.STACK 100H
.DATA   
     MSG1 DB "SUM VALUE : $"
     MSG2 DB "SUB VALUE : $" 
     A DB 2
     B DB 3
     C DB 4
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
    
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    CMP BL,031H
    JE CHECK_SUM 
    JL CHAR_PRINT
    
    CMP BL,032H
    JE CHECK_SUB 
    
    CMP BL,033H
    JE DISPLAY_INPUT
    JG CHAR_PRINT
    
    
    CHECK_SUM: 
    
    ;new line
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H 
    
    ;msg print
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    ;new line
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    MOV BL,A
    MOV CL,B
    ADD BL,CL
    ADD BL,48
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP END
    
    CHECK_SUB: 
    
    ;new line
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    ;msg print
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    ;new line
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    MOV BL,C
    MOV CL,B
    SUB BL,CL
    ADD BL,48
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP END
    
    DISPLAY_INPUT:
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
    
    CHAR_PRINT:
    ;new line
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H 
    
    MOV AH,2  
    MOV DL,'/'
    INT 21H
    JMP END
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN  














