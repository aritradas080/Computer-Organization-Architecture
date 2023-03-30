; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA
      MSG1 DB "?$"
      SUM DB ? 
      MSG2 DB "THE SUM OF$"
      MSG3 DB "AND$"
      MSG4 DB "IS$"  
      MSG5 DB " $"
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    ;FIRST STATEMENT
    LEA DX,MSG1
    MOV AH,9
    INT 21H
   
    
    MOV AH,1
    INT 21H
    MOV BL,AL
   
     
    ;SECOND STATEMENT    
    
    MOV AH,1
    INT 21H
    MOV CL,AL
      
    ;EXTEA
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    ;OUTPUT
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    LEA DX,MSG5
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    ;ADD DL,48
    INT 21H 
    
    LEA DX,MSG5
    MOV AH,9
    INT 21H
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H
    
    LEA DX,MSG5
    MOV AH,9
    INT 21H
   
    MOV AH,2
    MOV DL,CL
    INT 21H  
    
    LEA DX,MSG5
    MOV AH,9
    INT 21H
    
    LEA DX,MSG4
    MOV AH,9
    INT 21H
    
    LEA DX,MSG5
    MOV AH,9
    INT 21H
    
    ADD BL, CL
    MOV SUM,BL
    
    MOV AH,2
    MOV DL,SUM
    SUB DL,48
    INT 21H

ret




