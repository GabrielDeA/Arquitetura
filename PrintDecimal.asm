
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
            
.DATA
d1 dw 655
.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX   
     
    
    mov ax,d1      
     
    
    CALL PRINT     
                    
                  
    MOV AH,4CH
    INT 21H
 
MAIN ENDP
PRINT PROC          
     
    
    mov cx,0
    mov dx,0
    label1:
       
        cmp ax,0
        je print1     
         
        
        mov bx,10       
         
        
        div bx                 
         
        
        push dx             
         
        
        inc cx             
         
        
        xor dx,dx
        jmp label1
    print1:
        
        
        cmp cx,0
        je exit
         
        
        pop dx
         
        
        
        add dx,48
         
        
        
        mov ah,02h
        int 21h
         
        
        dec cx
        jmp print1
exit:
ret
PRINT ENDP
END MAIN

ret




