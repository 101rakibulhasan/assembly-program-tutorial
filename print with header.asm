INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 200H
.DATA


    
.CODE
    ;CODE SEGMENT
    
    MAIN PROC
       ;PRINT
       
       PRINTN "HELLO YES"
       PRINT "BYE YES"
       
       
       
       MOV AH, 4CH
       INT 21H
        
    MAIN ENDP
    
    
    
END MAIN
