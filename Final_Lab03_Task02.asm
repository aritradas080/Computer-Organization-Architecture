org 100h   
.Model SMALL
.STACK 100H
.DATA   
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
    
    MOV CL,031H
    MOV DL,032H
    
    CMP CL,033H
    JL CHECK_1
    JG END
    JE END

CHECK_1:
CMP DL,033H
JL DISPLAY
JG END
JE END


DISPLAY:
MOV AH,2
MOV DL,'b'
INT 21H
JMP END
    
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN  













