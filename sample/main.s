;This is a simple code

        AREA SimpleProject,CODE,READONLY
			ENTRY
			EXPORT START
START

          MOV R0,#0x1234
		  MOV R1,#0x1234
		  
		  ADD R6,R0,R1

STOP         B         STOP

   END