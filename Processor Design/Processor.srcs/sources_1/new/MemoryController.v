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
//input wire [15:0]insert;
input wire [11:0]MA; //in the requirements we are told that the Memory Address register is 12 bits long, so I must accomidate for that.
reg[15:0] memory[15:0];
input wire [15:0]MEM_BUS_WRITE;
output reg [15:0]MEM_BUS_READ;

//initial memory values
initial begin
memory[0] = 16'b0000000000000000;
memory[1] = 16'b0000000000000000;
memory[2] = 16'b0000000000000000;
memory[3] = 16'b0000000000000000;
memory[4] = 16'b0000000000000000;
memory[5] = 16'b0000000000000000;
memory[6] = 16'b0000000000000000;
memory[7] = 16'b0000000000000000;
memory[8] = 16'b0000000000000000;
memory[9] = 16'b0000000000000000;
memory[10] = 16'b0000000000000000;
memory[11] = 16'b0000000000000000;
memory[12] = 16'b0000000000000000;
memory[13] = 16'b0000000000000000;
memory[14] = 16'b0000000000000000;
memory[15] = 16'b0000000000000000;
end

always @(posedge CLK) begin
MEM_BUS_READ = memory[MA];
    if (MEM_BUS_CONTROL == 1)
        memory[MA] <= MEM_BUS_WRITE;
end

endmodule
