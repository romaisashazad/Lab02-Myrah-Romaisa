.text
.globl main

main:
    li x5, 5
    li x6, 5
    li x10, 0x300
    li x7, 0

L1:
    bge x7, x5, done
    li x29, 0

L2:
    bge x29, x6, next
    slli t0, x29, 2
    add t1, x10, t0
    add t2, x7, x29
    sw t2, 0(t1)
    addi x29, x29, 1
    j L2

next:
    addi x7, x7, 1
    j L1

done:
    j done