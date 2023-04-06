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
    
    AND AL, 1H 
    
    CMP AL, 0H
    JE EVEN
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    MOV AH,2
    MOV DL, 'o'
    INT 21H
    JMP END
EVEN:

    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    MOV AH,2
    MOV DL, 'e'
    INT 21H

END:
    MOV AH, 4Ch
    INT 21h

MAIN ENDP
