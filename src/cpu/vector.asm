;----------------------------------------------------------
;         SONIC THE HEDGEHOG SPINBALL DECOMPILATION
;                   (C) HARRY CLARK 2023
;----------------------------------------------------------


;----------------------------------------------------------
; 
;    THIS FILE IS FOR DEFINING THE M68K'S VECTOR TABLE
;
;----------------------------------------------------------

.SECTION: VECTORS

VECTORS:

;; GENERAL PURPOSE CPU READ AND WRITE FUNCTIONS

ORG              $10000000
DC.L             ENTRY_POINT 
DC.L             BUS_ERROR 
DC.L             STACK_ERROR
DC.L             ADDRESS_ERROR
DC.L             ILLEGAL_INSTRUCTION

;; MATHEMATICAL EXCEPTION HANDLERS

DC.L             ZERO_DIV
DC.L             CHECK_EXC
DC.L             TRAP_V_EXC
DC.L             PRIVILAGE_EXC
DC.L             TRACE_EXC

;; INTERLACE NAME TABLE

DC.L             INTERLACE_A_MODE
DC.L             INTERLACE_B_MODE
DC.L             INTERLACE_F_MODE

;; THE TRAPS ON THE M68K ARE THE MICRO-PROCESSOR'S WAY OF
;; HANDLING EXCEPTIONS 

.SECTION: TRAPS

TRAPS:

DC.L             TRAP_00
DC.L             TRAP_01
DC.L             TRAP_02
DC.L             TRAP_03
DC.L             TRAP_04
DC.L             TRAP_05
DC.L             TRAP_06
DC.L             TRAP_07
DC.L             TRAP_08
DC.L             TRAP_09
DC.L             TRAP_10
DC.L             TRAP_11
DC.L             TRAP_12
DC.L             TRAP_13
DC.L             TRAP_14
DC.L             TRAP_15