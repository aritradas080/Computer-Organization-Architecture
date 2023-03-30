.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h
    mov dl,al
    cmp dl,'A'
    jge jump
    jmp exit
    jump:
    cmp dl,'Z'
    jle jumpe
    jmp exit
    jumpe:
    
    mov ah,2
    jmp exit
    exit:
    int 21h
    


MAIN ENDP
END MAIN