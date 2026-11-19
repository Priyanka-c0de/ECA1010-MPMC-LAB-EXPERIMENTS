
        ORG 1000H
        FINIT
        FLD     DWORD PTR [2500H]
        FADD    DWORD PTR [2504H]
        FSTP    DWORD PTR [2510H]
        HLT
