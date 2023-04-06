org 100h   
.Model SMALL
.STACK 100H
.DATA 
     MSG DB "PROVIDE USER INPUT : $"
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax 
    
    LEA DX,MSG
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    SUB CL,030H
    
    MOV BL,08AH
    SHL BL,CL
    
    MOV AH,2
    MOV DX,0AH
    INT 21H    
    
    MOV AH,2
    MOV DX,0DH
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN 