;TEST ODD/EVEN

.MODEL SMALL 
.DATA
    M1 DB   'ODD$'
    M2 DB   'EVEN$' 
    M3 DB 'NOT A NUMBER$'
     
    
.CODE
MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    MOV DL,0DH
    MOV AH,2
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    CMP BH,'0'
    JNGE L2
    CMP BH,'9' 
    JNLE L2
    
    TEST BH,01H
    JZ L1    
    
    LEA DX,M1
    MOV AH,9
    INT 21H
    JMP EXIT
    
L1:
    LEA DX,M2 
    MOV AH,9
    INT 21H
    JMP EXIT   

L2:  
    LEA DX,M3
    MOV AH,9
    INT 21H
    
EXIT:
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN




