    PRESERVE8
    THUMB
    AREA  RESET, DATA, READONLY
    EXPORT __Vectors
__Vectors
    DCD 0x20001000 
    DCD Reset_Handler
	ALIGN
SUMP DCD SUM
NUM1 DCD 5
NUM2 DCD 7
	AREA MYDATA, DATA, READWRITE
SUM DCD 0
    AREA MYCODE, CODE, READONLY
    ENTRY
    EXPORT Reset_Handler
Reset_Handler
	LDR R1, NUM1
	LDR R2, NUM2
	MOV R0, #0
	ADD R0, R1, R2
	SUBS R0, R0, #1
	LSLS R3, R0, #2 ; Logical shift left by 2 bits with flag update
	LDR R4, SUMP
	STR R3, [R4]
	LDR R6, [R4]
	ALIGN

STOP    
    B STOP
    END   