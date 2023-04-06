org 100h   
.Model SMALL
.STACK 100H
.DATA 
    RESULT DB ?
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax 
    
    MOV AH,1
    INT 21H
    
    
    MOV BL,05H
    
    CMP AL,'c'
    JE CLEAR
    CMP AL,'s'
    JE SET
    CMP AL,'o'
    JE COMPLEMENT
    
    
    CLEAR:
    MOV CL,04H;musk for clear
    AND BL,CL
    MOV RESULT,BL
    JMP END
    
    SET:
    MOV CL,03H;musk for set
    OR BL,CL
    MOV RESULT,BL
    JMP END
    
    COMPLEMENT:
    MOV CL,0FH;musk for complement
    XOR BL,CL
    MOV RESULT,BL
    JMP END
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN  