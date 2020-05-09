; P = Q + R + S
;let Q=2, R=4,S=5


	       AREA  SimpleAddData,DATA,READONLY
			   
P           SPACE         4
Q            DCD          2
R            DCD          6
S            DCD          5

             AREA SimpleEqu,CODE,READONLY
				 ENTRY
				 EXPORT  __main
__main
                
				 LDR R0,Q
				 LDR R1,R
				 LDR R3,S
				 
				 ADD R4,R0,R1
				 ADD R4,R4,R3
				 
STOP            B            STOP
            END
					 
					 
				 
			   