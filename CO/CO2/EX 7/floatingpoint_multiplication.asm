; EXPERIMENT 07 - Floating-Point Multiplication
; 8086/8087 real-mode assembly (MASM/TASM-style instruction syntax)
; Input:
;   [2500H..2503H] = 12.5  (IEEE-754 single: 41480000H)
;   [2504H..2507H] =  2.5  (IEEE-754 single: 40200000H)
; Output:
;   [2518H..251BH] = 31.25 (IEEE-754 single: 41FA0000H)
;
; Load this code at offset 1200H. Ensure the simulator supports an 8087.

        ORG 1200H
        FINIT
        FLD     DWORD PTR [2500H]
        FMUL    DWORD PTR [2504H]
        FSTP    DWORD PTR [2518H]
        HLT
