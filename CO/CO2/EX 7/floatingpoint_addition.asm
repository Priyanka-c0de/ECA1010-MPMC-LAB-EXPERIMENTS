; EXPERIMENT 07 - Floating-Point Addition
; 8086/8087 real-mode assembly (MASM/TASM-style instruction syntax)
; Input:
;   [2500H..2503H] = 12.5  (IEEE-754 single: 41480000H)
;   [2504H..2507H] =  2.5  (IEEE-754 single: 40200000H)
; Output:
;   [2510H..2513H] = 15.0  (IEEE-754 single: 41700000H)
;
; Load this code at offset 1000H. Ensure the simulator supports an 8087.

        ORG 1000H
        FINIT
        FLD     DWORD PTR [2500H]
        FADD    DWORD PTR [2504H]
        FSTP    DWORD PTR [2510H]
        HLT
