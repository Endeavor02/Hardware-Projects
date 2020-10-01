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


module MemoryController(MEM_BUS_READ, MEM_BUS_WRITE);
reg [15:0]memory;
input wire MEM_BUS_WRITE;
output wire MEM_BUS_READ;
endmodule
