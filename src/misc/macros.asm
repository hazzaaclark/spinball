;----------------------------------------------------------
;         SONIC THE HEDGEHOG SPINBALL DECOMPILATION
;                   (C) HARRY CLARK 2023
;----------------------------------------------------------

;----------------------------------------------------------
;     THIS FILE DEFINES THE MACROS FOR ARGUMENTS AND
;                  AND THEIR HANDLERS
;----------------------------------------------------------

NULL_ARG:       MACRO
ARG_VALUE:      EQU 1

@LOOP\@         DC.B 1, %ARG_VALUE, 0
                DC.B 1, %ARG_VALUE, \2
				BNE.S @LOOP\@

				ENDM 

;----------------------------------------------------------
;                       END OF FILE
;----------------------------------------------------------
