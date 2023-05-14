org 100h   
.Model SMALL
.STACK 100H
.DATA  
       M1 DB "Input : $"
       M2 DB "Addition : $" 
       M3 DB "First Number : $"
       M4 DB "Second Number : $"
     
.CODE
MAIN PROC 
    MOV ax,@data
    MOV ds,ax   
    
    Lea dx,M1
    mov ah,9
    int 21h
    
    Mov ah,2
    Mov dl,10
    int 21h
    
    Mov ah,2
    Mov dl,13
    int 21h
    
    Mov ah,1
    int 21h
    
    cmp al,061h
    jge Input
    jl END
    cmp al,7Ah
    jle Input
    jG END
    
    Mov ah,2
    Mov dx,10
    int 21h
    
    Mov ah,2
    Mov dx,10
    int 21h
    
    Mov ah,2
    mov dx,13
    int 21h 
    
    Input:
    Lea dx,M3
    mov ah,9
    int 21h
    
    Mov ah,1
    int 21h
    Mov bl,al
    
    Mov ah,2
    Mov dl,10
    int 21h
    
    Mov ah,2
    Mov dl,13
    int 21h
    
    Lea dx,M4
    mov ah,9
    int 21h 
    
    Mov ah,1
    int 21h
    Mov cl,al
    
    Mov ah,2
    Mov dl,10
    int 21h
    
    Mov ah,2
    Mov dl,13
    int 21h
    
    SUM: 
    
    Lea dx,M2
    Mov ah,9
    int 21h
    
    Add bl,cl 
    SUB bl,48
    
    Mov ah,2
    Mov dx,bx
    Int 21h  
    
    
     
    
END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN