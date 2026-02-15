.MODEL SMALL
.STACK 100H
.DATA
    PROMPT DB 'Lowercase to uppercase: $'
    
.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX
        
        LEA DX, PROMPT
        MOV AH, 9
        INT 21H
        
        MOV AH, 1
        INT 21H
        
        MOV BL, AL
        
        XOR BL, 32  
        
        MOV AH, 2 
        MOV DL, BL
        INT 21H
        
        MOV AH, 4CH
        INT 21H
        
    END MAIN    
    