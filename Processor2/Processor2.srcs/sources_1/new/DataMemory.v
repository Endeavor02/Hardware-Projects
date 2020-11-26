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


module DataMemory(
input wire[63:0] Address,
input wire[63:0] WriteData,
input wire MemWrite,
input wire MemRead,
output reg[63:0] DataRead,
input wire CLK
    );
reg Memory[63:0];

always @(posedge CLK) begin
if (MemWrite == 1'b1)
    Memory[Address] <= WriteData;
if (MemRead == 1'b1)
    DataRead <= Memory[Address];
end
    
    
    
    
endmodule