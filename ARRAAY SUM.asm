.MODEL SMALL
.STACK 100H
.DATA
    PROMPT DB 'The Array Elements are: $'
    RESULT DB 0DH,0AH,'The sum of the array is $' 
    ARRAY DB 10,20,30,40,50,60,70,80,90,100
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        LEA DX, PROMPT
        MOV AH, 9
        INT 21H
        
        MOV BX, 10
        MOV CX, BX
        LEA SI, ARRAY
        
        @LOOP:
            XOR AH, AH
            MOV AL, [SI]
            
            CALL OUTDEC
            
            INC SI
            
            MOV AH,2
            MOV DL, 20H
            INT 21H
        LOOP @LOOP
        
        LEA DX, RESULT
        MOV AH, 9
        INT 21H
        
        LEA SI, ARRAY
        
        CALL SUM
        CALL OUTDEC
        
        MOV AH, 4CH
        INT 21H
    ENDP MAIN
    
    OUTDEC PROC
        PUSH BX
        PUSH CX
        PUSH DX
        
        CMP AX, 0
        JGE @START
        
        PUSH AX
        
        MOV AH, 2
        MOV DL, '-'
        INT 21H
        
        POP AX
        
        NEG AX
        
        @START:
        XOR CX, CX
        MOV BX, 10
        
        @OUTPUT:
            XOR DX, DX
            DIV BX
            PUSH DX
            INC CX
            OR AX, AX
        JNE @OUTPUT
        
        MOV AH, 2
        
        @DISPLAY:
            POP DX
            OR DL, 30H
            INT 21H
        LOOP @DISPLAY
        
        POP DX
        POP CX
        POP BX 
        RET
    ENDP OUTDEC
    
    SUM PROC
        PUSH CX
        PUSH DX
        
        XOR AX,AX
        XOR DX, DX
        XOR CX, BX
        
        @SUM:
            MOV DL, [SI]
            ADD AX ,DX
            INC SI
        LOOP @SUM
           
           
        POP DX
        POP CX
        
        RET
    ENDP SUM
    
END MAIN