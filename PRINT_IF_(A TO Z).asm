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
    MOV BL,AL
    
    CMP BL,041H  ;'A' CAN ALSO BE WRITTEN
    JGE CHECK 
    JL END
    
    CHECK:
    CMP BL,5AH; 'Z' CAN ALSO BE WRITTEN
    JLE DISPLAY 
    JG END
    
    DISPLAY:
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
END:  
    
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN  