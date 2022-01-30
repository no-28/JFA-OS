    org 07c00h    ;加载到7c00处
    mov ax, cs
    mov ds, ax
    mov es, ax
    call showstr
    jmp $
message:
    db "Hello, welcome to JFA OS v1.0."
showstr:
    mov ax, message
    mov bp, ax
    mov cx, 30
    mov ax, 01301h
    mov bx, 000ch
    mov dl, 0
    int 10h
    ret
times 510-($-$$) db 0
dw 0xaa55