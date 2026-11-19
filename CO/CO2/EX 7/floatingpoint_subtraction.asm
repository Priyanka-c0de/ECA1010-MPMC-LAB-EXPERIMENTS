; EXPERIMENT 07 - Floating-Point Subtraction
; 8086/8087 real-mode assembly (MASM/TASM-style instruction syntax)
; Input:
;   [2500H..2503H] = 12.5  (IEEE-754 single: 41480000H)
;   [2504H..2507H] =  2.5  (IEEE-754 single: 40200000H)
; Output:
;   [2514H..2517H] = 10.0  (IEEE-754 single: 41200000H)
;
; Load this code at offset 1100H. Ensure the simulator supports an 8087.

        ORG 1100H
        FINIT
        FLD     DWORD PTR [2500H]
        FSUB    DWORD PTR [2504H]
        FSTP    DWORD PTR [2514H]
        HLT
