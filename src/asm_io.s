section .text
    global print_string
    global read_string

print_string:
    mov ah, 0x0E       ; Set AH register to 0x0E for BIOS interrupt (print character)

.print_loop:
    lodsb              ; Load the byte from DS:SI into AL and increment SI
    or al, al          ; Check if AL is zero (end of string)
    jz .print_end      ; If zero, end of string

    mov bx, 0x00       ; Set BH register to 0x00 (display page)
    int 0x10           ; Call BIOS interrupt 0x10 (video services)

    jmp .print_loop    ; Continue printing

.print_end:
    ret

read_string:
    mov si, di         ; Store DI register value in SI
    xor bx, bx         ; Clear BX register

.read_loop:
    mov ah, 0x00       ; Set AH register to 0x00 for BIOS interrupt (read keyboard input)
    int 0x16           ; Call BIOS interrupt 0x16 (keyboard services)

    mov [di], al       ; Store the character read in the buffer array
    mov ah, 0x0E       ; Set AH register to 0x0E for BIOS interrupt (print character)

    cmp al, 0x0D       ; Check if Enter key is pressed
    je .read_end       ; If Enter key, end of string

    mov bx, 0x00       ; Set BH register to 0x00 (display page)
    int 0x10           ; Call BIOS interrupt 0x10 (video services)

    inc di             ; Increment DI to move to the next character

    jmp .read_loop     ; Continue reading

.read_end:
    xor al, al         ; Set AL to zero (null terminator)
    mov [di], al       ; Store null terminator in the buffer array

    ret

