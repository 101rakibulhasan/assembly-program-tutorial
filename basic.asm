.MODEL SMALL   
.STACK 100H
.DATA

.CODE
    M PROC
        
        MOV AH, 3
        INT 21H
        
        MOV AH, 4
        MOV DL, AL
        INT 21H
        
        MOV AH, 4CH
        INT 21H
    
    END M