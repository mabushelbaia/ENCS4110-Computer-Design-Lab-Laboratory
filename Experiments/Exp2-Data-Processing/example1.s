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
	MOV R0, #7 ; x = 7
	MUL R1, R0, R0 ; R1 = x^2
	MOV R4, #5
	MUL R1, R1, R4
	MOV R5, #6
	MUL R2, R0, R5 ; R2 = 6x
	SUB R3, R1, R2 ; R3 = 5x^2 - 6x
	ADD R3, R3, #8 ; R3 = 5x^2 - 6x + 8
	ALIGN
STOP    
    B STOP
    END        
