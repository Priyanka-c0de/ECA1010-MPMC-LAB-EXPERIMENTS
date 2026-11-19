
ORG 100H

; Install INT 40H vector
MOV AX, CS
MOV BX, AX
MOV AX, 0000H
MOV ES, AX

MOV WORD PTR ES:[0100H], OFFSET ISR
MOV WORD PTR ES:[0102H], BX

; Initialize stack
MOV SP, 0FFEH
STI

; Array input
MOV SI, 2800H
MOV CX, 0005H

INT 40H

; Store result
MOV [2810H], AX

; Store flags after interrupt
PUSHF
POP WORD PTR [2814H]

HLT

; Interrupt Service Routine
ISR:
PUSH BX
PUSH CX
PUSH SI
PUSHF

POP WORD PTR [2812H]

MOV AX, 0000H
MOV BH, 00H

NEXT:
MOV BL, [SI]
ADD AX, BX
INC SI
LOOP NEXT

POP SI
POP CX
POP BX

IRET
