INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 200H
.DATA


    
.CODE
    ;CODE SEGMENT
    
    MAIN PROC
       
       INC BX ; BX = BX+1
       DEC BX ; BX = BX - 1
       
       MOV CX , 5
       MOV BX , 0 ; initialize
       
       ;FOR (INT BX = 0 ;BX < CX ; BX++)
       
       
       START:
       
       
       CMP BX , CX 
       JE LAST
       PRINTN "HERE"
       
       
       INC BX
       JNE START
       
       LAST:
       PRINTN "DONE"
       ;JMP START     ;jump to start  call
       
       MOV AH, 4CH
       INT 21H
        
    MAIN ENDP
    
    
    
END MAIN
