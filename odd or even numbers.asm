.model small
.stack 100h
.data     

.code
main proc     
    mov ah,1
    int 21h
    
    sub al,48
    
    cmp al,2
    je even:
    
    cmp al,4
    je even: 
    
    cmp al,1
    je odd:
    
    cmp al,3
    je odd:
    
    odd:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h    
    mov dl,'o'
    int 21h
    .exit
             
             
    even:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h    
    mov dl,'e'
    int 21h
    
    main endp
end main
    
    