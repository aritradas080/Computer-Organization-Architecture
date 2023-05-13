
.Model SMALL
.STACK 100H
.DATA   
    
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax  
   
    
   MOV BL,5
   MOV CL,3
   ADD BL,CL
   ADD BL,48
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
  
    
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN 