org 100h   
.Model SMALL
.STACK 100H
.DATA 
     
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax 
    
    MOV BL,08AH;138
    SHR BL,1
    
    MOV AH,2
    MOV DX,0AH
    INT 21H    
    
    MOV AH,2
    MOV DX,0DH
    INT 21H
    
    MOV AH,2
    MOV DL,BL;E-->69
    INT 21H
    
    
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN 