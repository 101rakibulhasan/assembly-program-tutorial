.MODEL SMALL
.STACK 200H
.DATA
    ;all variable will bw declared
    ;BH BL  ; 8 bit Register
    ;BX 16 Bit Register
    
     NUM DB 'd' ;100 in ascii
     NUM2 DB ?
     CHAR DB 'H'
     STR DB "Yes" 
     CHAR DB ?
    
    
.CODE
    ;CODE SEGMENT
    
    MAIN PROC
         ;Instruction Destination, Source
        MOV AX , @DATA
        MOV DS , AX
        
        
        
        MOV AH , 4CH  ;end main function
        INT 2LH
        
    MAIN ENDP
    
    
    
END MAIN
