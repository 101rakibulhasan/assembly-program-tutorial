.MODEL SMALL
.STACK 200H
.DATA
    
    
.CODE
    ;CODE SEGMENT
    
    MAIN PROC
       
       
       MOV AH ,1 ;function call: get input
       INT 21H
       
       ;the input is stored in "AL" register
       
       MOV AH ,2 ;print
       MOV DL , AL
       INT 21H 
       
       MOV AH, 4CH
       INT 21H
        
    MAIN ENDP
    
    
    
END MAIN
