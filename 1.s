assume cs:code,ds:data
data segment
   array dw 35,53,69,99,66,3,17     
   count dw ($-array)/2     

data ends


code segment     
    start:mov ax,data
          mov es,ax   
          mov ds,ax   
          
    retry:cmp count,1    
          je exit
          dec count
          mov cx,count
          mov si,offset array
          cld
    next1:lodsw
          cmp ax,[si]
          jle next2      
          xchg ax,[si]
          xchg ax,[si-2]
          
    next2:loop next1
          jmp short retry   
          
     exit:mov ax,4c00h  
          int 21h
     code ends
end start
