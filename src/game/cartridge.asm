;----------------------------------------------------------
;         SONIC THE HEDGEHOG SPINBALL DECOMPILATION
;                   (C) HARRY CLARK 2023
;----------------------------------------------------------

;----------------------------------------------------------
;
;      THIS FILE PERTAINS TO THE DEFINITIONS
;           OF THE CARTRIDGE INFORMATION 
;
;      THESE DEFINES HELP WITH COROUTINES SUCH AS
;            REGION CHECKING AND THE SUCH

;----------------------------------------------------------

.SECTION: CARTRIDGE

CARTRIDGE:          MACRO

CONSOLE:            DC.B 'SEGA GENESIS         '
COPYRIGHT:          DC.B '(C) SEGA 1993.SEP    '
TITLE:              DC.B 'SONIC SPINBALL       '
COUNTRY_CODE_US:    DC.B 'U                    '
COUNTRY_CODE_JP:    DC.W $2A3F, DC.B 'J        ' 

                    ENDM

;; SET THE CARTRIDGE ENTRY POINT BY DEFINING A CONSTANT LONG
;; THAT WHEN INITIALISED, IT WILL CORRESPOND WITH THE RAM
;; READ AND WRITE

.SECTION: SET_CARTRIDGE

SET_CARTRIDGE:      MACRO

CART_START:         DC.L 0

CART_ENTRY_POINT:   DC.L $FFFFF
                    DC.L $FF0000
                    DC.L $FFFFF

CART_ENTRY_INIT:    DC.L $20202020
 
                     ENDM

;----------------------------------------------------------
;                       END OF FILE
;----------------------------------------------------------
