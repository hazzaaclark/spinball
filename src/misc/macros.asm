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


ENABLE_VSRAM:         EQU           0
VSRAM_ADDR:           EQU           3

SUPPORT_VSRAM:      MACRO

@LOOP\@             if ENABLE_VSRAM = 1
                    DC.B $2A3F + VSRAM_ADDR << 3, $20                     ;; ASSUME THE LENGTH OF THE
					                                  ;; VSRAM CONSTANT, ACCESS THE ADDRESS IN PROPORTION TO THAT

                    else 
					
                    DC.L $20202020                    ;; ENABLE THE VSRAM ACCORDINGLY
                    DC.L $20202020                    ;; AND DEFINE WHICH ADDRESS IT SHOULD
                    DC.B "       "                    ;; EXECUTE IT'S RUNTIME AT
                    BNE.S @LOOP\@

	            ENDM


;----------------------------------------------------------
;                       END OF FILE
;----------------------------------------------------------
