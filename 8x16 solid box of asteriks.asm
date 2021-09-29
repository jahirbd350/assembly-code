.MODEL SMALL
.STACK 100H
.DATA
SOLIDBOX DB "****************",0DH,0AH,'$'
.CODE

MAIN PROC
    MOV AX, @DATA ; initialize DS
    MOV DS, AX
    LEA DX, SOLIDBOX ; load the string
    MOV AH, 9h 
    INT 21H
    INT 21H ; display the string 10 times
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    MOV AH, 4CH ; return control to DOS
    INT 21H
MAIN ENDP
END MAIN
    