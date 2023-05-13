;COUNT '1' FROM BX REGISTER 

.MODEL SMALL 

     
    
.CODE
MAIN PROC 
    
    MOV BX,10101111B
    XOR AL,AL
	MOV CX,16
TOP:
	ROL BX,1
	JNC NEXT
    INC AL
NEXT:
	LOOP TOP 

    ADD AL,48
    MOV DL,AL
    MOV AH,2
    INT 21H
	    
EXIT:
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN




