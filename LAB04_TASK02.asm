.model small
.stack 100h 
.data
.code
main proc
    mov al,-3
    
    cmp al,0
    jl loop1
    jmp loop2
    loop1:
    mov ah,0ffh
    jmp end_if
    loop2:
    mov ah,0
    jmp end_if
    end_if:
    int 21h
    
    
    
     
    
    
    main endp
end main 