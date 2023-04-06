org 100h   
.Model SMALL
.STACK 100H
.DATA 
    
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax   
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    ;MOV BL,066H
    MOV CL,020H
    ADD BL,CL 
    
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