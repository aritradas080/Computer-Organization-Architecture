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
    
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN   
