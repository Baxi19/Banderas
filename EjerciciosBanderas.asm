;Macro para imprimir un mensaje 
Macro imprime mensaje 
        	push ax
	        push dx
	        mov ah,09
        	lea dx, mensaje
        	int 21h
	        pop dx
	        pop ax
ENDM
;************************************************************************************
.stack          ; segmento de pila
          db      100h dup (?)        ; reserva 256 bytes 
.data    
         Instrucciones dw '  ',0ah,0dh
        dw '                                                                ',0ah,0dh
        dw '                                                                ',0ah,0dh
        dw '           ==================================================== ',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh                                        
        dw '          ||        Instituto Tecnologico de Costa Rica       ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||        Ingenieria En Computacion                 ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||        Randald Villegas Brenes                   ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||        Sede San Carlos                           ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||        1: Bandera de Costa Rica                  ||',0ah,0dh 
        dw '          ||        2: Bandera de Alemania                    ||',0ah,0dh 
        dw '          ||        3: Bandera de Mexico                      ||',0ah,0dh 
        dw '          ||        4: Bandera de Francia                     ||',0ah,0dh
        dw '          ||        5: Bandera de Holanda                     ||',0ah,0dh 
        dw '          ||        0: Salir                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||        Selecione una opcion para empezar         ||',0ah,0dh
        dw '           ====================================================',0ah,0dh
        dw '$',0ah,0dh           
                
        numero db 1 dup(?),"$"
        mensajeCR   db      'Bandera de Costa Rica$' ; el $ indica el fin.
        mensajeAl   db      'Bandera de Alemania  $' ; el $ indica el fin.  
        mensajeMX   db      'Bandera de Mexico    $' ; el $ indica el fin.
        mensajeF    db      'Bandera de Francia   $' ; el $ indica el fin.
        mensajeH    db      'Bandera de Holanda   $' ; el $ indica el fin.
.code 
        mov     ax,@data
        mov     ds,ax
        
INICIO:         
        imprime instrucciones
          
       
        mov ah,1              ;Esperamos que se digite una tecla
        Int 21h               ;Salidas o entradas Teclado
    
        mov bl,al             ;Se mueve el valor recibido del teclado
        mov si,0              ;a una variable para ser comparado con las posibles entradas
        mov numero[si], bl 
         
COMPARACION:       
        cmp numero,31h          ;Comparamos con 1 
        je  call costarica    
        
        cmp numero,32h          ;Comparamos con 2 
        je  call Alemania     
    
        cmp numero,33h          ;Comparamos con 3
        je  call mexico       
    
        cmp numero,34h          ;Comparamos con 4    
        je  call Francia     
        
        cmp numero,35h          ;Comparamos con 5 
        je  call Holanda     
        
        cmp numero,30h          ;Comparamos con 5 
        je  salir        
       
        jmp inicio
        ret
        
        
        
;-----------------------------------------------------------------------------------------------------------------        
CostaRica proc near:

         ;Azul
         mov ah, 06h 
         mov bh, 9fh   ;cambia el color de letra y fondo
         mov cx,0000h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,054fh  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)
                                                           
         ;Blanco
         mov ah, 06h 
         mov bh, 0ffh   ;cambia el color de letra y fondo
         mov cx,0500h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,0a4fh  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)                                                           
         
          
         ;Rojo
         mov ah, 06h 
         mov bh, 4fh   ;cambia el color de letra y fondo
         mov cx,0a00h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,0f4fh  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)                                                           
         
         ;Blanco
         mov ah, 06h 
         mov bh, 0ffh   ;cambia el color de letra y fondo
         mov cx,0f00h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,144fh  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)                                                           
         
         ;Azul
         mov ah, 06h 
         mov bh, 9fh   ;cambia el color de letra y fondo
         mov cx,1400h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,194fh  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)
         
         
          
         lea     dx,mensajeCR
         mov     ah,9h
         int     21h   ; saca el mensaje por pantalla  
         
         mov ah,1              ;Esperamos que se digite una tecla
         Int 21h    
         ret
endp         
;-----------------------------------------------------------------------------------------------------------------
Alemania proc near:

         ;Celeste
         mov ah, 06h 
         mov bh, 9fh   ;cambia el color de letra y fondo
         mov cx,0000h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,084fh  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)
                                                           
         ;Blanco
         mov ah, 06h 
         mov bh, 0ffh   ;cambia el color de letra y fondo
         mov cx,0800h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,114fh  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)                                                           
         
        
         ;celeste
         mov ah, 06h 
         mov bh, 9fh   ;cambia el color de letra y fondo
         mov cx,1100h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,194fh  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)
         
         
          
         lea     dx,mensajeAl
         mov     ah,9h
         int     21h   ; saca el mensaje por pantalla  
         
         
         mov ah,1              ;Esperamos que se digite una tecla
         Int 21h    
         ret 
endp  
;-----------------------------------------------------------------------------------------------------------------
Mexico proc near:

         ;Verde
         mov ah, 06h 
         mov bh, 2fh   ;cambia el color de letra y fondo
         mov cx,0000h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,191ah  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)
                                                           
         ;Blanco
         mov ah, 06h 
         mov bh, 0ffh  ;cambia el color de letra y fondo
         mov cx,001bh  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,1936h  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)                                                           
         
        
         ;Rojo
         mov ah, 06h 
         mov bh, 4fh   ;cambia el color, de letra y fondo
         mov cx,0037h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,194fh  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)                                                           
         
         
          
         lea     dx,mensajemx
         mov     ah,9h
         int     21h   ; saca el mensaje por pantalla     
         
         
         mov ah,1              ;Esperamos que se digite una tecla
         Int 21h    
         ret
endp
;-----------------------------------------------------------------------------------------------------------------
Francia proc near:

         ;Azul
         mov ah, 06h 
         mov bh, 9fh   ;cambia el color de letra y fondo
         mov cx,0000h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,191ah  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)
                                                           
         ;Blanco
         mov ah, 06h 
         mov bh, 0ffh  ;cambia el color de letra y fondo
         mov cx,001bh  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,1936h  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)                                                           
         
        
         ;Rojo
         mov ah, 06h 
         mov bh, 4fh   ;cambia el color, de letra y fondo
         mov cx,0037h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,194fh  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)                                                           
         
         
          
         lea     dx,mensajef
         mov     ah,9h
         int     21h   ; saca el mensaje por pantalla 
         
         
         mov ah,1              ;Esperamos que se digite una tecla
         Int 21h    
         ret  
endp
;-----------------------------------------------------------------------------------------------------------------
Holanda proc near:

         ;Rojo
         mov ah, 06h 
         mov bh, 4fh   ;cambia el color de letra y fondo
         mov cx,0000h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,084fh  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)
                                                           
         ;Blanco
         mov ah, 06h 
         mov bh, 0ffh   ;cambia el color de letra y fondo
         mov cx,0800h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,114fh  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)                                                           
         
        
         ;Azul
         mov ah, 06h 
         mov bh, 9fh   ;cambia el color de letra y fondo
         mov cx,1100h  ;dond inicia en fila y columna a colorear     fila de inicio,columna de inicio
         mov dx,194fh  ;hasta que fila y columna llega coloreando    fila donde termino y columna donde se termina
         int 10h       ;hasta fila 25(18h), columna 80(4Fh)
         
         
          
         lea     dx,mensajeH
         mov     ah,9h
         int     21h   ; saca el mensaje por pantalla  
         
         
         mov ah,1              ;Esperamos que se digite una tecla
         Int 21h    
         ret 
endp  

;-----------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------------


    
salir:    
    mov ax,4c00h
    int 21h
         
         
         
        