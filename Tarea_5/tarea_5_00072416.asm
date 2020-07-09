org 100h

section .main 

        call graphic_mode
        xor si, si
        xor di, di

             
        mov bx, 150d
        mov si, 95d
        mov di, 25d
        call v_line

        mov si, 225d
        mov di, 25d
        call v_line

        mov bx, 225d
        mov si, 96d
        mov di, 25d
        call h_line
   
        mov bx, 150d
        mov si, 135d
        mov di, 95d
        call v_line

        mov si, 185d
        mov di, 95d
        call v_line

        mov bx, 136d
        mov si, 95d
        mov di, 150d
        call h_line

        mov bx, 226d
        mov si, 185d
        mov di, 150d
        call h_line

        mov bx, 186d
        mov si, 135d
        mov di, 95d
        call h_line

        ;cuadrado interno
        mov bx, 185d
        mov si, 135d
        mov di, 45d
        call h_line

        mov si, 135d
        mov di, 75d
        call h_line

        mov bx, 75d
        mov si, 135d
        mov di, 45d
        call v_line

        mov si, 185d
        mov di, 45d
        call v_line

        call kb_entry
        int 20h        

	
graphic_mode:    mov ah, 00h
            mov al, 13h
            int 10h
            ret

pixel:      mov ah, 0Ch
            mov al, 1010b
            int 10h
            ret

h_line:
lupi_h:     mov cx, 0d ; Columna 
            add cx, si
            mov	dx, di ; Fila
            call pixel
            inc si
            cmp si, bx
            jne lupi_h
            ret

v_line:
lupi_v:     mov cx, si 
            mov dx, 0d
            add dx, di
            call pixel
            inc di
            cmp di, bx
            jne lupi_v
            ret

kb_entry:   mov ah, 00h
            int 16h
            ret

