       MOV SI,1150H
       MOV DI,1250H
       MOV CX,0005H
       STORE:MOVSB
       LOOP STORE
       HLT