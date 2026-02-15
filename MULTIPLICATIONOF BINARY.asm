.MODEL SMALL
.STACK 100H
.DATA
    PROMPT_1 DB 'Enter the first binary number: $'   
    PROMPT_2 DB 'Enter the second binary number: $'
    PROMPT_3 DB 'Result: $'
    
    VALUE_1 DB ?
    VALUE_2 DB ?
    
.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX
        
        LEA DX, PROMPT_1
        MOV AH, 9
        INT 21H
        
        CALL READ_BINARY_NUMBER
        
        MOV VALUE_1, DL
        
        CALL NEXT_LINE  
        
        LEA DX, PROMPT_2
        MOV AH,9 
        INT 21H
        
        CALL READ_BINARY_NUMBER
        
        MOV VALUE_2, DL 
        
        CALL NEXT_LINE
        
        LEA DX, PROMPT_3
        MOV AH, 9
        INT 21H
        
        CALL MULTIPLY
        
        MOV BX, DX
        
        CALL DISPLAY_BINARY_NUMBER
        
        
        
        
        
    ENDP MAIN
    
    READ_BINARY_NUMBER PROC
        MOV CX ,8
        XOR DL, DL
        MOV AH, 1
        
        @LOOP_1:
            INT 21H
            
            CMP AL, 0DH
            JE @END
            AND AL, 0FH
            SHL DL, 1
            OR DL, AL
        LOOP @LOOP_1
        
        @END:
        RET
    ENDP READ_BINARY_NUMBER
    
    NEXT_LINE PROC
        PUSH AX
        PUSH DX
        
        MOV AH, 2
        MOV DL , 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H
        
        POP DX
        POP AX
        RET
    ENDP NEXT_LINE
    
    MULTIPLY PROC
        XOR DX, DX
        XOR BX, BX
        XOR AX, AX
        
        MOV CX, 8
        
        
        MOV AL, VALUE_1
        MOV BL, VALUE_2
        
        @LOOP_3:
            TEST BX, 1
            JZ @NEXT
            
            ADD DX, AX
            
            @NEXT:
                SHL AX, 1
                SHR BX, 1
                
        JNZ @LOOP_3
        
        RET
        
    ENDP MULTIPLY    
    
    DISPLAY_BINARY_NUMBER PROC
        MOV CX, 16
        MOV AH, 2
        
        @LOOP_2:
            SHL BX, 1
            JC @ONE
            
            MOV DL, 30H
            JMP @DISPLAY
            
            @ONE:
                MOV DL, 31H
                
            @DISPLAY:
                INT 21H
        LOOP @LOOP_2
        RET
    ENDP DISPLAY_BINARY_NUMBER
    
    
END MAIN