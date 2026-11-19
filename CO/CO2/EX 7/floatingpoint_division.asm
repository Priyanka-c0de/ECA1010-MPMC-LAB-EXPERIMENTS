; EXPERIMENT 07 - Floating-Point Division
; 8086/8087 real-mode assembly (MASM/TASM-style instruction syntax)
; Input:
;   [2500H..2503H] = 12.5  (IEEE-754 single: 41480000H)
;   [2504H..2507H] =  2.5  (IEEE-754 single: 40200000H)
; Output:
;   [251CH..251FH] = 5.0   (IEEE-754 single: 40A00000H)
;
; Load this code at offset 1300H. Ensure the simulator supports an 8087.

        ORG 1300H
        FINIT
        FLD     DWORD PTR [2500H]
        FDIV    DWORD PTR [2504H]
        FSTP    DWORD PTR [251CH]
        HLT
