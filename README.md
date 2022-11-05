# RISC-V-Architecture
Single cycle RISC V processor architecture with I, S, R, BEQ type instructions modeled in verilog (structural modeling) and simulated on Vivado
![processor 1](https://user-images.githubusercontent.com/75924049/199700395-5ba8ecbf-2206-4ccd-802e-96227d483c77.png)

![processor 2](https://user-images.githubusercontent.com/75924049/199700472-021bcdf1-27f9-4c32-8b30-7b4a160a6eeb.png)

The first 4 instructions are the R type instructions with the answer being stored in register number 4 of the register file
The next inmstruction is the I type instruction with the value being written to the 9th register of the data memory
The next instrucyion is the S type instruction with the data gain being stored in the 4th regidter of the register file
The next instruction is BEQ instruction with the program counterjumping 2 instructions if the values in the last and second last registers are equal 
