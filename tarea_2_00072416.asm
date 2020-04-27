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
mov cx, [length]
move:
    mov bh, [comment+di]
    mov [di+200h], bh
    inc di
    loop move

    int 20h ; finaliza ejecucion 

comment db "Me recupero"
length equ $-comment
;Desarrollo Ejercicio 2


;Desarrollo Ejercicio 3




