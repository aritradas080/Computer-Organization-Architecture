.MODEL SMALL
.CODE
MAIN PROC
    MOV CX,8
    MOV AL, 11110000B
    
REVERSE:

    SHL AL,1
    RCR BL,1
    LOOP REVERSE
    ;MOV AL,BL

    MOV CX,8
     
L1:    
    SHL BL,1
    JC L2
    MOV DL,'0'
    MOV AH,2
    INT 21H  
    LOOP L1
    JMP EXIT
L2:  
    MOV DL,'1'
    MOV AH,2
    INT 21H       
    LOOP L1
EXIT:      
    MOV AH,4CH
    INT 21H
   
MAIN ENDP
END MAIN