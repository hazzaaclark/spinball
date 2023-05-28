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
COUNTRY_CODE:       DC.B 'U                    '

                    ENDM

