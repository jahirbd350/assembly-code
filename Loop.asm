.model small
.stack 100h
.data
    b db 0

.code
main proc
    mov ax,@data
    mov ds,ax
     
    add b,48
    
    print:
    mov ah,2
    mov dl,'*'
    int 21h   
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    inc b    
    cmp b,53
    je exit:
    loop print:
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main
