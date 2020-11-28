`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2020 05:50:01 PM
// Design Name: 
// Module Name: Registers
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


//*********************************************************************************
//  This File has been verified to work as intended via DM_TB.v
//  Input: a 64-bit address to read from Data memory defined in this file, a 64-bit
//  data input to write data to memory, a Read flag which allows the data to be read,
//  a Write flag which allows data to be written, and a clock.
//  Output: When the Read flag is high, the output will be the value of the memory
//  as it was on the clock's rising edge.
//  As of 11/27/2020 by Jeffrey Blanda
//*********************************************************************************


module DataMemory(
input wire[63:0] Address,
input wire[63:0] WriteData,
input wire MemWrite,
input wire MemRead,
output reg[63:0] DataRead,
input wire CLK
    );
reg[63:0] Memory[63:0];

always @(posedge CLK) begin
if (MemWrite == 1'b1)
    Memory[Address] <= WriteData;
if (MemRead == 1'b1)
    DataRead <= Memory[Address];
end
    
    
    
    
endmodule