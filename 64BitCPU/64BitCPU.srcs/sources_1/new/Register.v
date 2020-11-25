`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2020 03:33:17 PM
// Design Name: 
// Module Name: Register
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


module Register(write,writedata,num1,num2,writereg,readdata1,readdata2,CLK);
input wire write;
input wire [15:0]num1,num2,writereg;
output wire [63:0]readdata1,readdata2;
input wire [63:0]writedata;
input wire CLK;
reg[63:0] registers[15:0];
//Read Register Section (Async)
assign readdata1 = registers[num1];
assign readdata2 = registers[num2];
    
always @(posedge CLK) begin
//Write Register Section (Sync)
    if(write == 1'b1)
        registers[writereg] <= writedata;
end
endmodule
