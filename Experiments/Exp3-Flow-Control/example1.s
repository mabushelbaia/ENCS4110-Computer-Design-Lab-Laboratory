    PRESERVE8
    THUMB
    AREA  RESET, DATA, READONLY
    EXPORT __Vectors
__Vectors
    DCD 0x20001000 
    DCD Reset_Handler
    ALIGN
string1 DCB "Hello world!",0
    AREA MYCODE, CODE, READONLY
    ENTRY
    EXPORT Reset_Handler
Reset_Handler
    LDR R0, = string1 ; Load the address of string1 into the register R0
    MOV R1, #0 ; Initialize the counter counting the length of string1
loopCount
    LDRB R2, [R0] ; Load the character from the address R0 contains
    CMP R2, #0
    BEQ countDone   ; If it is zero...remember null terminated...
                    ; You are done with the string. The length is in R1.
    ADD R0, #1 ; Otherwise, increment index to the next character
    ADD R1, #1 ; increment the counter for length
    B loopCount
countDone
STOP
    B STOP
    END        