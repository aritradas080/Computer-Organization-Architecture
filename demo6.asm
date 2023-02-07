org 100h
.MODEL SMALL
.STACK 100H
.DATA 
    MSG1 DB "FIRST NUMBER : $"
    MSG2 DB "SECOND NUMBER : $"
    MSG3 DB "FINAL OUTPUT : $" 
    A DB 2
    B DB 3
    SUM DB ?

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    MOV BL,A
    
    MOV AH,2
    ADD BL,48
    MOV DL,BL
    INT 21H  
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H 
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    MOV CL,B
    
    MOV AH,2
    ADD CL,48
    MOV DL,CL
    INT 21H   
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    ADD BL,CL
    MOV SUM,BL
    
    MOV AH,2
    MOV DL,SUM 
    ;ADD DL,48 
    SUB DL,48
    INT 21H   
    
    
;TO SHOW THE INPUTS
;WE HAVE TO ADD 48
;THEN WE NEED TO SUBTRACT 48 DURING OUTPUT/DISPLAY
;WITHOUT SHOWING INPUTS
;WE DON'T NEED TO ADD 48 PREVIOUSLY
;SO, DURING OUTPUT SHOWING,WE NEED TO ADD 48  