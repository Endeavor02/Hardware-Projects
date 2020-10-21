`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 02:01:15 PM
// Design Name: 
// Module Name: MemoryController
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MemoryController(MEM_BUS_READ, MEM_BUS_WRITE, CLK, MA, MEM_BUS_CONTROL);
input CLK;
input wire MEM_BUS_CONTROL;
input wire [11:0]MA; //in the requirements we are told that the Memory Address register is 12 bits long, so I must accomidate for that.
reg[15:0] memory[15:0];
input wire [15:0]MEM_BUS_WRITE;
output reg [15:0]MEM_BUS_READ;

//initial memory values
initial begin
memory[0] = 16'b0010111111111111; //ADC FFF to the accumulator
memory[1] = 16'b0110000000000000; //INCA, Incrament Accululator
memory[2] = 16'b0000000000000000; //NOT, Inverts Accumulator
memory[3] = 16'b1000000000001011; //STA, Stores Accumulator into memory 11 (0xB)
memory[4] = 16'b1011000000001011; //LDA, Loads Accumulator from memory 11 (0xB)
memory[5] = 16'b0000000000000000; //NOT
memory[6] = 16'b0000000000000000; //NOT
memory[7] = 16'b0000000000000000; //NOT
memory[8] = 16'b0000000000000000; //NOT
memory[9] = 16'b0000000000000000; //NOT
memory[10] = 16'b0101000000001111; //JPA, Jump to Memory 15 (0xE)
memory[11] = 16'b0000000000000000;
memory[12] = 16'b0000000000000000;
memory[13] = 16'b0000000000000000;
memory[14] = 16'b0000000000000000;
memory[15] = 16'b0101000000000000; //JPA, Jump to Memory 0 (0x0)
MEM_BUS_READ <= memory[0]; //set initial value
/*
ASSEMBLY CODE FOR ABOVE:
main_   ADC #0xFFF
        INCA
        NOT
        STA #0xB
        LDA #0xB
        NOT
        NOT
        NOT
        NOT
        NOT
        JPA reset
reset   jpa main_
*/
end

always @(negedge CLK) begin
MEM_BUS_READ = memory[MA];
    if (MEM_BUS_CONTROL == 1'b1)
        memory[MA] <= MEM_BUS_WRITE;
end

endmodule
