.MODEL SMALL
.STACK 200H
.DATA
    ;all variable will bw declared
    
.CODE
    ;CODE SEGMENT
    
    MAIN PROC
         ;Instruction Destination, Source
        MOV BH , 4
        MOV BL , 5
        
        ADD BH,BL ; BH = BH + BL
        
        
        
        MOV AH , 4CH  ;end main function
        INT 2LH
        
    MAIN ENDP
    
    
    
END MAIN
