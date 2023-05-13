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
    MOV BL, AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CL, AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H 
    
    SUB BL,CL
    ADD BL,48
    
    
   MOV AH,2
   MOV DL,BL
   INT 21H
    
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN