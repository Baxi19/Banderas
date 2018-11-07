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
        dw '          ||                                                  ||',0ah,0dh
        dw '           ====================================================',0ah,0dh
        dw '$',0ah,0dh           
                
        numero db 1 dup(?),"$"
        mensajeCR   db      'Bandera de Costa Rica$' ; el $ indica el fin.
        mensajeAl   db      'Bandera de Alemania  $' ; el $ indica el fin.  
        mensajeMX   db      'Bandera de Mexico    $' ; el $ indica el fin.
        mensajeF    db      'Bandera de Francia   $' ; el $ indica el fin.
        mensajeH    db      'Bandera de Holanda   $' ; el $ indica el fin.  
        mensajeB    db      '                     Gracias por utilizar el programa!!   $' ; el $ indica el fin.
        espacio db 10,13,'$'
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
         mov bh, 9fh   ;cambia fondo y el color de letra
         mov cx,0000h  ;Inicio Fila,Columna
         mov dx,054fh  ;Final Fila,Columna
         int 10h       
                                                           
         ;Blanco
         mov ah, 06h 
         mov bh, 0ffh  ;cambia fondo y el color de letra
         mov cx,0500h  ;Inicio Fila,Columna
         mov dx,0a4fh  ;Final Fila,Columna
         int 10h                                                                
         
          
         ;Rojo
         mov ah, 06h 
         mov bh, 4fh   ;cambia fondo y el color de letra
         mov cx,0a00h  ;Inicio Fila,Columna
         mov dx,0f4fh  ;Final Fila,Columna
         int 10h                                                                 
         
         ;Blanco
         mov ah, 06h 
         mov bh, 0ffh  ;cambia fondo y el color de letra
         mov cx,0f00h  ;Inicio Fila,Columna
         mov dx,144fh  ;Final Fila,Columna
         int 10h                                                                  
         
         ;Azul
         mov ah, 06h 
         mov bh, 9fh   ;cambia fondo y el color de letra
         mov cx,1400h  ;Inicio Fila,Columna
         mov dx,194fh  ;Final Fila,Columna
         int 10h       
         
         imprime mensajeCR;saca el mensaje por pantalla 
             
         mov ah,1      ;Esperamos que se digite una tecla
         Int 21h    
         ret
endp         
;-----------------------------------------------------------------------------------------------------------------
Alemania proc near:

         ;Celeste
         mov ah, 06h 
         mov bh, 9fh   ;cambia fondo y el color de letra
         mov cx,0000h  ;Inicio Fila,Columna
         mov dx,084fh  ;Final Fila,Columna
         int 10h       
                                                           
         ;Blanco
         mov ah, 06h 
         mov bh, 0ffh  ;cambia fondo y el color de letra
         mov cx,0800h  ;Inicio Fila,Columna
         mov dx,114fh  ;Final Fila,Columna
         int 10h       
         
        
         ;celeste
         mov ah, 06h 
         mov bh, 9fh   ;cambia fondo y el color de letra
         mov cx,1100h  ;Inicio Fila,Columna
         mov dx,194fh  ;Final Fila,Columna
         int 10h       
         
         
          
         imprime mensajeAl
         
         mov ah,1      ;Esperamos que se digite una tecla
         Int 21h    
         ret 
endp  
;-----------------------------------------------------------------------------------------------------------------
Mexico proc near:

         ;Verde
         mov ah, 06h 
         mov bh, 2fh   ;cambia fondo y el color de letra
         mov cx,0000h  ;Inicio Fila,Columna
         mov dx,191ah  ;Final Fila,Columna
         int 10h       
                                                           
         ;Blanco
         mov ah, 06h 
         mov bh, 0ffh  ;cambia fondo y el color de letra
         mov cx,001bh  ;Inicio Fila,Columna
         mov dx,1936h  ;Final Fila,Columna
         int 10h       
         
        
         ;Rojo
         mov ah, 06h 
         mov bh, 4fh   ;cambia fondo y el color de letra
         mov cx,0037h  ;Inicio Fila,Columna
         mov dx,194fh  ;Final Fila,Columna
         int 10h       
         
         
          
         imprime mensajemx
         
         
         mov ah,1      ;Esperamos que se digite una tecla
         Int 21h    
         ret
endp
;-----------------------------------------------------------------------------------------------------------------
Francia proc near:

         ;Azul
         mov ah, 06h 
         mov bh, 9fh   ;cambia fondo y el color de letra
         mov cx,0000h  ;Inicio Fila,Columna
         mov dx,191ah  ;Final Fila,Columna
         int 10h       
                                                           
         ;Blanco
         mov ah, 06h 
         mov bh, 0ffh  ;cambia fondo y el color de letra
         mov cx,001bh  ;Inicio Fila,Columna
         mov dx,1936h  ;Final Fila,Columna
         int 10h       
         
        
         ;Rojo
         mov ah, 06h 
         mov bh, 4fh   ;cambia fondo y el color de letra
         mov cx,0037h  ;Inicio Fila,Columna
         mov dx,194fh  ;Final Fila,Columna
         int 10h       
         
         imprime mensajef
         
         mov ah,1      ;Esperamos que se digite una tecla
         Int 21h    
         ret  
endp
;-----------------------------------------------------------------------------------------------------------------
Holanda proc near:

         ;Rojo
         mov ah, 06h 
         mov bh, 4fh   ;cambia el color de letra y fondo
         mov cx,0000h  ;Inicio Fila,Columna
         mov dx,084fh  ;Final Fila,Columna
         int 10h       
                                                           
         ;Blanco
         mov ah, 06h 
         mov bh, 0ffh  ;cambia el color de letra y fondo
         mov cx,0800h  ;Inicio Fila,Columna
         mov dx,114fh  ;Final Fila,Columna
         int 10h      
         
        
         ;Azul
         mov ah, 06h 
         mov bh, 9fh   ;cambia el color de letra y fondo
         mov cx,1100h  ;Inicio Fila,Columna
         mov dx,194fh  ;Final Fila,Columna
         int 10h       
         
         imprime mensajeH
         
         mov ah,1      ;Esperamos que se digite una tecla
         Int 21h    
         ret 
endp  

;-----------------------------------------------------------------------------------------------------------------
salir:
    mov cx,23h
    ciclo:
        imprime espacio 
    loop ciclo
    imprime mensajeB
    
    mov  ax, 4C00h
    int  21h
         
;-----------------------------------------------------------------------------------------------------------------         
        