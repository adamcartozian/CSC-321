; store array size N = 10 (0x0A)
; location 0x10 will hold the loop limit
mov 0x10, #0x0A
 
; the A register will hold values to be stored in the array
mov A, #0x01
; array will be at location 0x20, R0 will track it as the loop index counter
mov R0, #0x20

mov R6, #0x00
mov R7, #0x00
; start of loop
LOOP:
; if A != (0x10) then stay in loop
IF:
mov 0x01, A
mov B, #0x02
div AB
mov A, B
cjne A, #0x01, ELSE
inc R6
JMP ENDIF
ELSE:
inc R7
ENDIF:
mov A, 0x01 

cjne A, 0x10, CONTINUELOOP
jmp ENDLOOP
CONTINUELOOP:

; move the value in A to the array (indirect addressing)
mov @R0, A

; increment value to be stored
inc A
; increment loop index counter
inc R0

jmp LOOP
ENDLOOP:
; move the last value to the array 
MOV @R0, A





       
       
       
       
       
