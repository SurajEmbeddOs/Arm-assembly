

RAM1_ADR        EQU   0x20000000
RAM2_ADR        EQU   0x20000100	
	
				AREA mycode,CODE,READONLY
				ENTRY
                EXPORT  __main

__main

                BL     FILL
				BL     COPY
				
Stop            B 	   Stop	

FILL            LDR    R1,=RAM1_ADR
                MOV    R0,#10
                LDR    R2,=0xdeadbeef
				
L1              STR    R2,[R1]
                ADD    R1,R1,#4
                SUBS   R0,R0,#1
                BNE    L1
                BX     LR 

COPY            LDR     R1,=RAM1_ADR
                LDR     R2,=RAM2_ADR
			    MOV     R3,#10

L2              LDR     R4,[R1]
			    STR     R4,[R2] 
			    ADD     R1,R1,#4
			    ADD     R2,R2,#4
			    SUBS    R0,R0,#1
			    BNE     L2
			    BX      LR
			   
			    END
				   
				   
				   
				   
               
				