ORG 07C00H
MOV AX,CS
MOV DS,AX
MOV ES,AX
;B G
CALL SHOW
JMP $
;D SHOW
SHOW:
;///
; MOV AH,13H
; MOV BH,0
; MOV AL,01H
; MOV CX,25
; MOV DH,0
; MOV DL,0
;///
MOV AX,MESSAGE
MOV BP,AX
;///
MOV AX,1301H
MOV BX,000CH
MOV CX,25
MOV DL,0
MOV DH,0
;///
INT 10H
RET
;D MESSAGE
MESSAGE:DB "Hello, welcome to JFA OS."
TIMES 510-($-$$) DB 0
DW 0XAA55