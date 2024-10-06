    PRESERVE8
    THUMB
    AREA  RESET, DATA, READONLY
    EXPORT __Vectors
__Vectors
    DCD 0x20001000 
    DCD Reset_Handler
    ALIGN
SUMP DCD SUM
N DCD 5
    AREA MYDATA, DATA, READWRITE
SUM DCD 0
    AREA MYCODE, CODE, READONLY
    ENTRY
    EXPORT Reset_Handler
Reset_Handler
    LDR R1, N ;Load count into R1
    MOV R0, #0 ;Clear accumulator R0
LOOP
    ADD R0, R0, R1 ;Add number into R0
    SUBS R1, R1, #1 ;Decrement loop counter R1
    BGT LOOP ;Branch back if not done
    LDR R3, SUMP ;Load address of SUM to R3
    STR R0, [R3] ;Store SUM
    LDR R4, [R3]
STOP
    B STOP
    END 