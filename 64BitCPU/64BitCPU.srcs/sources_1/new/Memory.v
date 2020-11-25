`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2020 04:39:03 PM
// Design Name: 
// Module Name: Memory
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


module Memory(Addr,WriteData,ReadData,MemWrite,MemtoReg,CLK, WriteReg);
reg[63:0] Memory[63:0];
input wire [63:0]Addr,WriteData;
output wire [63:0]ReadData;
input wire MemWrite,MemtoReg,CLK;
output reg [63:0] WriteReg;
assign ReadData = Memory[Addr];
always @(posedge CLK)begin
    if(MemWrite)
        Memory[Addr] <= WriteData;
        
    case(MemtoReg)
        1'b0: begin
        WriteReg <= Addr;
        end
        1'b1: begin
        WriteReg <= ReadData;
        end
    endcase
end
endmodule
