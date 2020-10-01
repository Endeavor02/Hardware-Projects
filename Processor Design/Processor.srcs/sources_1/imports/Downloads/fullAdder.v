`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2020 02:12:51 PM
// Design Name: 
// Module Name: fullAdder
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


module fullAdder_(s, c, x, y ,z);

output s, c;
input x,y,z;
wire w1, w2, w3;
wire c;
halfAdder HA1(x,y,w1,w2);
halfAdder HA2(w2,z,w3,s);
or #1 or1(c, w3, w1);

endmodule

