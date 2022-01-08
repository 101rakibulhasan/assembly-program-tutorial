.MODEL SMALL
.STACK 200H
.DATA
   A DB ?
   B DB ? 
    
.CODE
    ;CODE SEGMENT
    
    MAIN PROC
       
       MOV BL , 53 ;5
       MOV BH , 55 ; 7
       
       XCHG BH , BL
       
       
       MOV AH , 2
       MOV DL , BL
       INT 21H
       
       
       MOV AH, 4CH
       INT 21H
        
    MAIN ENDP
    
    
    
END MAIN
