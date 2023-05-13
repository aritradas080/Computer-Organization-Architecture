Org 100h   
.Model SMALL
.STACK 100H
.DATA   
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
    
    MOV AH,1
    INT 21H
    MOV BL, AL; input
    
    MOV CL,061H
    MOV DL,062H
    
    CMP CL,BL
    JE PRINT_ONE 
    JNE PRINT_TWO
 
    

PRINT_ONE: 
MOV AH,2
MOV DL,1
ADD DL,48
INT 21H
JMP END

PRINT_TWO:
CMP DL,BL
JE CHECK  
JNE END

CHECK:
MOV AH,2
MOV DL,2
ADD DL,48
INT 21H 
JMP END
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN 