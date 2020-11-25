`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2020 04:55:15 PM
// Design Name: 
// Module Name: CPUTB
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


module CPUTB;
reg [63:0]Addr,WriteData;
wire [63:0]ReadData;
reg MemWrite,MemtoReg;
wire [63:0] WriteReg;
reg CLK;

CPU cpu(.CLK(CLK));
Memory mem(.Addr(Addr),.WriteData(WriteData),.ReadData(ReadData),.MemWrite(MemWrite),.MemtoReg(MemtoReg),.CLK(CLK),.WriteReg(WriteReg));

initial begin
//initiate memory
CLK=0;
MemWrite = 1;
Addr = 'h00000000;
WriteData = 'h00000000;
#1;
CLK=1;
#1;
CLK=0;
Addr = 'h00000001;
WriteData = 'h00000001;
#1;
CLK=1;
#1;
CLK=0;
end

endmodule
