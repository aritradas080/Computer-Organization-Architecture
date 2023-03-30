org 100h   
.Model SMALL
.STACK 100H
.DATA   
    ;string inputs
    MSG DB "ARITRA DAS$"
   
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax 
         
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    ;MOV AH,4CH
    
    
END MAIN

ret




