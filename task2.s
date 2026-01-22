.text
.globl main

main:
li x22, 10 # b = 10
li x23, 3 # c = 3
li x20, 2 # x = 2
li x21, 0 # a = 0

li x5, 1 # storing value 1
beq x20, x5, case1 # checking if x == 1

li x5, 2 # storing value 2
beq x20, x5, case2 # checking if x == 2

li x5, 3 # storing value 3
beq x20, x5, case3 # checking if x == 3

li x5, 4 # storing value 4
beq x20, x5, case4 # checking if x == 4

j default

case1:
    # a = b + c
    add x21, x22, x23 
    beq x0, x0, end

case2:
    # a = b - c
    sub x21, x22, x23
    beq x0, x0, end

case3: 
    # a = b * 2
    slli x21, x22, 1 # multiply by 2 --> shift left by 1
    beq x0, x0, end

case4:
    # a = b / 2
    srai x21, x22, 1 # divide by 2--> shift right by 1
    beq x0, x0, end

default:
    # a = 0
    li x21, 0 

end:
    j end
