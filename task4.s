.text
.globl main

main:
    li x5, 5
    li x6, 4
    li x7, 0
    li x10, 0x200

L1:
    bge x7, x5, end
    li x29, 0

L2:
    slli x31, x29, 2
    add x12, x7, x29
    add x13, x10, x31
    sw x12, 0(x13)
    addi x29, x29, 1
    blt x29, x6, L2

next:
    addi x7, x7, 1
    j L1

end:
    j end