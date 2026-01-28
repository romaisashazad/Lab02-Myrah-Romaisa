.text
.globl main

main:
    li x25, 0x200  # Array base address 
    
    # Creating save[] = {5, 4, 3, 2} 
    li x5, 5
    sw x5, 0(x25)        # save[0] = 5
    li x5, 4
    sw x5, 4(x25)        # save[1] = 4  
    li x5, 3
    sw x5, 8(x25)        # save[2] = 3
    li x5, 2
    sw x5, 12(x25)       # save[3] = 2
    
    # Initialize
    li x22, 0            # i = 0
    li x24, 5            # k = 5
 

Loop:
    slli x10, x22, 2    # x10 = i * 4
    add x10, x10, x25   # x10 is the address of save[i]
    lw x9, 0(x10)       # x9 = save[i]
    
    bne x9, x24, Exit   # if save[i] != k we will exit
    
    addi x22, x22, 1    # i = i + 1
    beq x0, x0, Loop   # going back to the loop
    
Exit:
    
end:
    j end