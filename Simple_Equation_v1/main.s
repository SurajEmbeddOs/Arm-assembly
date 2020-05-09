 ;p=q+r+s
 ;let q=5,r=6,s=8
 
Q            EQU              2
R            EQU			  6
S            EQU              8

            AREA SimpleEqu,CODE ,READONLY
				ENTRY
			EXPORT  __main

__main
                      MOV R0,#Q
					  MOV R1,#R
					  MOV R3,#S
					  
					  ADD R0,R0,R1
					  ADD R0,R0,R3
STOP                         B          STOP
                   END
					  