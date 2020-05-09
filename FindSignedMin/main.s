
COUNT       RN        R0
MAX         RN        R1
POINTER     RN        R2
NEXT        RN        R3


		  AREA  myData,DATA,READONLY

MYDATA    DCD  64,68,66,32,70
	
	     AREA mycode,CODE,READONLY
		 ENTRY
         EXPORT  __main

__main                            
          MOV     COUNT,#5
		  MOV     MAX,#0
		  LDR     POINTER,=MYDATA
		  
AGAIN	  LDR  	  NEXT,[POINTER]
		  CMP     MAX,NEXT
		  BHS     LOOP
		  MOV     MAX,NEXT
		  
		  
LOOP      ADD     POINTER,POINTER,#4
          SUBS     COUNT,COUNT,#1
		  BNE     AGAIN
		  
Stop      B       Stop	  
		  END