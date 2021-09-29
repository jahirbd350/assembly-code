.MODEL SMALL
.STACK 100H
.DATA
    MGS1 DB "'Enter two digits whose sum is less than 10(x+y<10)'", 13,10, '$'
    MGS2 DB ,13,1O,"Enter 1st Digit: $"
    MGS3 DB ,13,10,"Enter 2nd Digit: $" 
    MGS4 DB ,13,10,"The Sum of digits is = $"
    NUM1 DB ?
    NUM2 DB ?
    RESULT DB ?, '$'
.CODE 
MAIN PROC 
    MOV AX, @DATA ;Initialize DATA Segment
    MOV DS, AX
    MOV AH,9     ; Display Message1
    MOV DX, OFFSET MGS1    ; Load Effective Address Dx, Message
    INT 21H
    MOV AH,9     ; Display Message2
    MOV DX, OFFSET MGS2    ; Load Effective Address Dx, Message
    INT 21H
    MOV AH,1     ;Reading digit from user
    INT 21H 
    SUB AL,30H
    MOV NUM2,AL 
    MOV AH,9     ; Display Message3
    MOV DX, OFFSET MGS3    ; Load Effective Address Dx, Message
    INT 21H
    MOV AH,1 ;Reading digit from user
    INT 21H 
    SUB AL,30H 
    MOV NUM1,AL 
    MOV AL,NUM1 ;Add NUM1 and NUM2
    ADD AL,NUM2 
    ADD AL,30h ;Move value into Result
    MOV Result,AL 
    MOV AH,9     ; Display Message4
    MOV DX, OFFSET MGS4    ; Load Effective Address Dx, Message
    INT 21H
    MOV DX, OFFSET Result ;Load and display msg4
    MOV AH,9
    INT 21H 
    MOV AX, 4CH ; Control Return to DOS
    INT 21H
MAIN ENDP
END MAIN

