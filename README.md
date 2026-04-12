Imagine RIT 2026 - BAPS Processor
Authors : Bobby Orbin, Anthony Rosati, Seth Taylor

TO-DO: (Week of 3/22/26)
    -Anthony
        - structural MUX (after opcode optimization)

    -Bobby
        - register file done

    -Seth
        - partial functionality of ALU operations
        - hardware research



Section 1 - ALU Infrastructure

Bit Composition

16-bit Instruction

Opcode: 7-bit

Rdest: 3-bit

Rx: 3-bit (or immediate)

Ry: 3-bit (or immediate)



These bits are extra for large immediates

Section 2 - Register Info

    *8 16-bit registers
 

 Section 2: Memory Architecture

    This project utilizes an Arduino Uno R4 Wifi for its memoruy allocation. 



Inputs for game: (10 things, 3 levels of difficulty)


    -- easy
    * 1 + 5 = 5
        00000001 + 00000101 = 00000110 

    * 5 + 5 = 10
        00000110 + 00000110 = 00001010   

    * 20 - 3 = 17
        00010100 - 00000011 = 00010001 

    -- medium
    * 5 and 6 = 6
        00000101 - 00000110 = 00000100

    * 11 or 127 = 127
        00001011 or 01111111 = 01111111

    

    -- hard
    * 100 xor 24 = 124
        01100100 xor 00011000 = 01111110  


HARDWARE:

    - WIRE COLOR CODING

        --Full Adder/Subtractor
            -Red: Carry bit(s)
            -Blue: B Input
            -Yellow: A Input
            -Black: Sum Output    

    - FIRST 4-bit adder:
        -(notation is (XOR pin => FADDER pin) )
        - 1Y => B1
        - 3Y => B2
        - 2T => B4 
        - 4Y => B3  
 