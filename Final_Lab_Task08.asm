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
    MOV BL, AL; input
    
    MOV CL,061H
    MOV DL,062H
    
    CMP CL,BL
    JE ADDITION
    JNE CHECK
    
ADDITION:
MOV AL,2
MOV BL,3
ADD AL,BL
ADD AL,48

MOV AH,2
MOV DL,AL
INT 21H

JMP END

CHECK:  
CMP BL,DL
JE SUBTRACTION
JNE END


SUBTRACTION:
MOV AL,2
MOV BL,3
SUB BL,AL
ADD BL,48

MOV AH,2
MOV DL,BL
INT 21H

JMP END 


    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN  