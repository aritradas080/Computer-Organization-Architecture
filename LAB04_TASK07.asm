.MODEL SMALL 
.STACK 100H 
.DATA 

 
.CODE 
MAIN PROC 

    MOV AX,@DATA 
    MOV DS,AX 

    MOV AL,030H
    
    M
      
    EXIT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN





    





