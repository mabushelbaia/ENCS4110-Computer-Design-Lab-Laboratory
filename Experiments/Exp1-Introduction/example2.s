    PRESERVE8
    THUMB
    AREA  RESET, DATA, READONLY
    EXPORT __Vectors
__Vectors
    DCD 0x20001000 
    DCD Reset_Handler
    ALIGN
    AREA MYCODE, CODE, READONLY
    ENTRY
    EXPORT Reset_Handler
Reset_Handler
	MOV R2, #0x76; Move the 8-bit Hex number 76 to the low portion of R2
	MOV R2, #0x7654; Move the 16-bit Hex number 7654 to the low portion of R2
	MOVT R2, #0x7654; Move the 16-bit Hex number 7654 to the high portion of R2
	MOV32 R2, #0x76543210 ; Move the 32-bit Hex number 76543210 to the R2
	LDR R2, = 0x76543210 ; Load R2 with the 32-bit Hex number 76543210
	ADD R1, R2, R3 ; R1 = R2 + R3
	ADDS R1, R2, R3 ; R1 = R2 + R3, and FLAGs are updated
	SUB R1, R2, R3 ; R1 = R2 - R3
	SUBS R1, R2, R3 ; R1 = R2 - R3, and FLAGs are updated
	B LABEL 
LABEL
STOP    
    B STOP
    END      