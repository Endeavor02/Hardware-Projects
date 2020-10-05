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
wire MEM_BUS_CONTROL;
wire [15:0]IR; 
wire [15:0]MD, AC;
wire [11:0]PC, MA;
wire [15:0]MEM_BUS_READ;
wire [15:0]MEM_BUS_WRITE;
//reg [15:0] insert; //used to insert command into memory for the testbench
MemoryController mmc(.MEM_BUS_READ(MEM_BUS_READ), .MEM_BUS_WRITE(MEM_BUS_WRITE), .CLK(CLK), .MA(MA), .MEM_BUS_CONTROL(MEM_BUS_CONTROL));
Processor TB(
.CLK(CLK), 
.reset(reset), 
.IR(IR), 
.MD(MD), 
.AC(AC), 
.PC(PC), 
.MA(MA), 
.MEM_BUS_READ(MEM_BUS_READ), 
.MEM_BUS_WRITE(MEM_BUS_WRITE),
.MEM_BUS_CONTROL(MEM_BUS_CONTROL)
);
initial begin
reset = 0;
CLK =0;
#1
    for(integer i=0;i<64;i=i+1)
    begin
    CLK = 1;
    #1;
    CLK = 0;
    #1;
    end
end
endmodule
