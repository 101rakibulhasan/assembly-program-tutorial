.MODEL SMALL
.STACK 200H
.DATA
   A DB ?
   B DB ? 
    
.CODE
    ;CODE SEGMENT
    
    MAIN PROC
        
       
       MOV AH , 1
       INT 21H
       
       
       MOV A , AL
       SUB A , 48
       INT 21H
       
       MOV B , AL
       SUB B , 48
       
       
       MOV BH , A
       ADD BH , B
       ADD BH , 48
       
       MOV AH , 2
       MOV DL , BH
       INT 21H
       
       
       MOV AH, 4CH
       INT 21H
        
    MAIN ENDP
    
    
    
END MAIN
