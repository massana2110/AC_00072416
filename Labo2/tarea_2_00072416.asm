;Desarrollo Ejercicio 1
org 100h;

;limpiamos el registro
mov ax, 0d
;guardamos las notas
add ax, 7d
add ax, 2d
add ax, 4d
add ax, 1d
add ax, 6d

mov cl, 5d
;obtenemos el promedio
div cl

;loop para escribir en memoria dinamicamente
mov di, 0d ;di: apuntador para contar
mov cx, 11d
mov bx, [length]
move:
    mov bh, [comment+di]
    mov [di+200h], bh
    inc di
    loop move

;Desarrollo Ejercicio 2
mov bx, 2d ;inicia la serie
mov cx, 10d
mov ax, 2h
mov di, 0d

karanavairus: 
    mul bx
    mov [di+210h], al
    inc di
    cmp ax, 255d 
    ja karanavairus2
    loop karanavairus

karanavairus2:
    mov [di+210h], ah
    inc di
    jmp karanavairus
    
;Desarrollo Ejercicio 3

int 20h 

section .data
    comment db "Me recupero"
    length equ $-comment

