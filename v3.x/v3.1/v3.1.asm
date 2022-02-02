ORG 07C00H
MOV AX,CS
MOV DS,AX
MOV ES,AX
CALL DSP
JMP $
MSG: DB "Hello, welcome to JFA-OS, a operating system that made by a middle school student who names Mu."
DSP:
MOV AX,MSG
MOV BP,AX
MOV AX,1301H
MOV BL,000CH
MOV CX,95
MOV DX,0
INT 10H
RET
TIMES 510-($-$$) DB 0
DW 0XAA55