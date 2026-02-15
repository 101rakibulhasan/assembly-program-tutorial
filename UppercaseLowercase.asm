.MODEL SMALL
.STACK 100H
.DATA
    PROMPT DB 'Uppercase to lowercase: $'
     
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
        
        ADD BL, 32
        
        MOV AH, 2
        MOV DL, Bl
        INT 21H 
        
        
        MOV AH, 4CH
        INT 21H
    
    END MAIN