.model small

.stack 100h

.data
    
    string db 10, 13, "Enter a letter: ", '$'  
    letter db ? 
    message1 db 10, 13, 10, 13, "Letter: ", '$'
    message2 db 10, 13, 10, 13, "My favorite number: ", '$'

.code

main proc far
    
    mov ax, @data
    mov ds, ax
    
    lea dx, string      ; Prompt user
    mov ah, 09h
    int 21h
    
    mov ah, 1h          ; Read character
    int 21h
    
    mov letter, al      ; Copy character to letter variable
    
    lea dx, message1    ; Print message1
    mov ah, 09h
    int 21h
    
    mov dl, letter      ; Copy character to dl   
                 
    mov ah, 2h          ; Print letter
    int 21h
    
    lea dx, message2    ; Print message 2
    mov ah, 09h
    int 21h
    
    mov dl, 8           ; Copy 8 to dl
    add dl, 48          ; Add 48 to dl (Decimal Conversion)
    
    mov ah, 2h          ; Print number
    int 21h
    
    mov ah, 4ch         ; Exit program
    int 21h
    
main endp

end main
    
    
