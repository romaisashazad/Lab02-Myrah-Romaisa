.text
.globl main

main:
    li x25, 0x200  # base address

    li x22, 0 # i = 0
    li x24, 10 # x24 = loop limit is 10

    loop1:
        bge x22, x24, endloop1 # if i > 10 loop exits

        slli x10, x22, 2 # x10 = i * 4

        # Calculating the address for a[i]
        # address = 0x200 + (i * 4)
        add x10, x10, x25 

        # storing the value of i into a[i]
        sw x22, 0(x10) 

        # increment i
        addi x22, x22, 1

        j loop1
    
    endloop1:
        


