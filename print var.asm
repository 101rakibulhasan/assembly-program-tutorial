.MODEL SMALL
.STACK 200H
.DATA
    
    ;db = define byte
    ;dw = define what 
    
    NUM DB 54
    CHAR DB "G"
    MSG DB "die yes lmao $"
    
    
.CODE
    ;CODE SEGMENT
    
    MAIN PROC
         ;Instruction Destination, Source
        MOV AX , @DATA
        MOV DS , AX       ;IMPORT
        
        MOV AH , 2 
        MOV DL , NUM
        INT 21H
        
        ;new line
        MOV AH , 2
        MOV DL , 0AH
        INT 21H
        MOV DL , 0DH
        INT 21H
        ;new line
        
        MOV DL , CHAR
        INT 21H
        
        ;new line
        MOV AH , 2
        MOV DL , 0AH
        INT 21H
        MOV DL , 0DH
        INT 21H
        ;new line
        
        MOV AH , 9
        LEA DX , MSG
        INT 21H
        
        MOV AH , 4CH  ;end main function
        INT 21H
        
    MAIN ENDP
    
    
    
END MAIN
