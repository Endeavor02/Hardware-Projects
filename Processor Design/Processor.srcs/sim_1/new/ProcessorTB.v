`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 04:02:53 PM
// Design Name: 
// Module Name: ProcessorTB
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


module ProcessorTB;


reg CLK, reset;
wire [15:0]IR, MD, AC;
wire [11:0]PC, MA;
Processor TB(.CLK(CLK), .reset(reset), .IR(IR), .MD(MD), .AC(AC), .PC(PC), .MA(MA));
initial begin
CLK = 1;
reset = 0;
#1;
CLK = 0;
#1;
CLK = 1;
#1;
CLK = 0;
#1;
CLK = 1;
#1;
CLK = 0;
#1;
end
endmodule
