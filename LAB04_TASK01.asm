.model small
.stack 100h 
.data
.code
main proc
    mov al,-3
    
    cmp al,0
    jl loop_
    jmp end
    loop_:
    mov bx,-1
    end:
    int 21h
    
    
    
     
    
    
    main endp
end main 
ret




