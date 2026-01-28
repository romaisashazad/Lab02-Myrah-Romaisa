.text
.globl main

main:
    li x1, 10        # loop runs 10 times
    li x22, 0        # i starts at 0
    li x23, 0        # sum starts at 0
    li x2, 0         # array position starts at 0

L1:
    sw x22, 0x200(x2)  # put i in array
    addi x22, x22, 1   # i goes up by 1
    addi x2, x2, 4     # move to next spot
    blt x22, x1, L1    # do again if i < 10

    li x2, 0         # go back to start of array
    li x22, 0        # i back to 0

L2:
    lw x24, 0x200(x2)  # get array value
    add x23, x23, x24  # add to total sum
    addi x22, x22, 1   # i goes up by 1
    addi x2, x2, 4     # move to next spot
    blt x22, x1, L2    # do again if i < 10

end:
    j end           # stoping here 