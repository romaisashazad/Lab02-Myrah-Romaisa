.text
.globl main

main:
    li x20, 4    # g = 4
    li x21, 5    # h = 5 
    li x22, 6    # i = 6
    li x23, 7    # j = 7 

    bne x22, x23, Else   # if i != j go to else
    add x19, x20, x21   # f = g + h
    beq x0, x0, Exit # if i == j, exit

    Else: 
        sub x19, x20, x21 # f = g - h

    Exit: 

end: 
    j end