get_input: ;; TODO:Add Commands
   mov ax, 0
   int 0x16
   cmp al, 27
   je clear_scr
   cmp al, 9
   je echo1
   mov ah, 0x0e
   int 0x10
   jmp get_input

clear_scr:
   mov ah, 0x00 ;; Set the graphical mode
   mov al, 0x02
   int 0x10
   mov ah, 0x0B ;; Change the colour of the background
   mov bh, 0x00
   mov bl, 0x01
   int 0x10
   jmp get_input

echo1:
   mov ah, 0x0B ;; Change the colour of the background
   mov bh, 0x00
   mov bl, 0x05
   int 0x10
   jmp get_input
