org 100h   
.Model SMALL
.STACK 100H
.DATA 
    MSG1 DB "ENTER ANYTHING : $"
    MSG2 DB "DO YOU WANT TO DO THE SAME THING AGAIN: $" 
     
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    ;NEW LINE PRINT  
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H 
    
    MOV AH,2
    MOV DL,BL
    INT 21H  
    
    ;NEW LINE PRINT
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H 
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    
    ;NEW LINE PRINT
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H 
    
    
    ;Y OR y INPUT
    MOV AH,1
    INT 21H
    MOV CL,AL 
    
    CMP CL,059H 
    MOV AH,2
    MOV DX,0AH
    INT 21H
    MOV AH,2
    MOV DX,0DH
    INT 21H
    JE DO_AGAIN
    JMP CHECK
    
CHECK:
CMP CL,079H
JE DO_AGAIN 
JG END
JL END

    
DO_AGAIN: 
LEA DX,MSG1
MOV AH,9
INT 21H
    
MOV AH,1
INT 21H
MOV BL,AL
;NEW LINE PRINT  
    
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
    
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN  




