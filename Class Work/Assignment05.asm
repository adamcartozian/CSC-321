;Adam Cartozian
mov 0x20, #0x01
mov 0x21, #0x02
mov 0x22, #0x03
mov 0x23, #0x02
mov 0x24, #0x01
mov R0, #0x05

mov R1, #0x20 ;set left bound
mov A, R0
add A, #0x20
dec A
mov R0, A ;set right bound

LOOP:
if:
mov A, R1
CLR C
subb A, R0
JNC ISPAL ;jump if r0<r1

mov A, @R1 ;move value of left bound to a
mov B, @R0 ;move value of right bound to b
cjne A, B, NOTPAL ;compare values

inc R1
dec R0

jmp loop

ISPAL:
mov R1, #0x01
jmp END

NOTPAL:
mov R1, #0x00
jmp END

END:
NOP