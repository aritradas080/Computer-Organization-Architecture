org 100h   
.Model SMALL
.STACK 100H
.DATA   
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
    
    MOV BL,2
    ADD BL,48 
    
    MOV AH,2
    MOV DL,BL
    INT 21H
               
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    MOV CL,3
    ADD CL,48 
    
    MOV AH,2
    MOV DL,CL
    INT 21H

    
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN   
