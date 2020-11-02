`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 02:11:37 PM
// Design Name: 
// Module Name: ADDER
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


module ADDER(x,y,z);
input wire [63:0]x,y;
output reg [63:0]z;
reg [62:0]C;
reg trashed;

FullAdder FA1(x[0],y[0],z[0],C[0],0);
FullAdder FA2(x[1],y[1],z[1],C[1],C[0]);
FullAdder FA3(x[2],y[2],z[2],C[2],C[1]);
FullAdder FA4(x[3],y[3],z[3],C[3],C[2]);
FullAdder FA5(x[4],y[4],z[4],C[4],C[3]);
FullAdder FA6(x[5],y[5],z[5],C[5],C[4]);
FullAdder FA7(x[6],y[6],z[6],C[6],C[5]);
FullAdder FA8(x[7],y[7],z[7],C[7],C[6]);
FullAdder FA9(x[8],y[8],z[8],C[8],C[7]);
FullAdder FA10(x[9],y[9],z[9],C[9],C[8]);
FullAdder FA11(x[10],y[10],z[10],C[10],C[9]);
FullAdder FA12(x[11],y[11],z[11],C[11],C[10]);
FullAdder FA13(x[12],y[12],z[12],C[12],C[11]);
FullAdder FA14(x[13],y[13],z[13],C[13],C[12]);
FullAdder FA15(x[14],y[14],z[14],C[14],C[13]);
FullAdder FA16(x[15],y[15],z[15],C[15],C[14]);
FullAdder FA17(x[16],y[16],z[16],C[16],C[15]);
FullAdder FA18(x[17],y[17],z[17],C[17],C[16]);
FullAdder FA19(x[18],y[18],z[18],C[18],C[17]);
FullAdder FA20(x[19],y[19],z[19],C[19],C[18]);
FullAdder FA21(x[20],y[20],z[20],C[20],C[19]);
FullAdder FA22(x[21],y[21],z[21],C[21],C[20]);
FullAdder FA23(x[22],y[22],z[22],C[22],C[21]);
FullAdder FA24(x[23],y[23],z[23],C[23],C[22]);
FullAdder FA25(x[24],y[24],z[24],C[24],C[23]);
FullAdder FA26(x[25],y[25],z[25],C[25],C[24]);
FullAdder FA27(x[26],y[26],z[26],C[26],C[25]);
FullAdder FA28(x[27],y[27],z[27],C[27],C[26]);
FullAdder FA29(x[28],y[28],z[28],C[28],C[27]);
FullAdder FA30(x[29],y[29],z[29],C[29],C[28]);
FullAdder FA31(x[30],y[30],z[30],C[30],C[29]);
FullAdder FA32(x[31],y[31],z[31],C[31],C[30]);
FullAdder FA33(x[32],y[32],z[32],C[32],C[31]);
FullAdder FA34(x[33],y[33],z[33],C[33],C[32]);
FullAdder FA35(x[34],y[34],z[34],C[34],C[33]);
FullAdder FA36(x[35],y[35],z[35],C[35],C[34]);
FullAdder FA37(x[36],y[36],z[36],C[36],C[35]);
FullAdder FA38(x[37],y[37],z[37],C[37],C[36]);
FullAdder FA39(x[38],y[38],z[38],C[38],C[37]);
FullAdder FA40(x[39],y[39],z[39],C[39],C[38]);
FullAdder FA41(x[40],y[40],z[40],C[40],C[39]);
FullAdder FA42(x[41],y[41],z[41],C[41],C[40]);
FullAdder FA43(x[42],y[42],z[42],C[42],C[41]);
FullAdder FA44(x[43],y[43],z[43],C[43],C[42]);
FullAdder FA45(x[44],y[44],z[44],C[44],C[43]);
FullAdder FA46(x[45],y[45],z[45],C[45],C[44]);
FullAdder FA47(x[46],y[46],z[46],C[46],C[45]);
FullAdder FA48(x[47],y[47],z[47],C[47],C[46]);
FullAdder FA49(x[48],y[48],z[48],C[48],C[47]);
FullAdder FA50(x[49],y[49],z[49],C[49],C[48]);
FullAdder FA51(x[50],y[50],z[50],C[50],C[49]);
FullAdder FA52(x[51],y[51],z[51],C[51],C[50]);
FullAdder FA53(x[52],y[52],z[52],C[52],C[51]);
FullAdder FA54(x[53],y[53],z[53],C[53],C[52]);
FullAdder FA55(x[54],y[54],z[54],C[54],C[53]);
FullAdder FA56(x[55],y[55],z[55],C[55],C[54]);
FullAdder FA57(x[56],y[56],z[56],C[56],C[55]);
FullAdder FA58(x[57],y[57],z[57],C[57],C[56]);
FullAdder FA59(x[58],y[58],z[58],C[58],C[57]);
FullAdder FA60(x[59],y[59],z[59],C[59],C[58]);
FullAdder FA61(x[60],y[60],z[60],C[60],C[59]);
FullAdder FA62(x[61],y[61],z[61],C[61],C[60]);
FullAdder FA63(x[62],y[62],z[62],C[62],C[61]);
FullAdder FA64(x[63],y[63],z[63],trashed,C[62]);



endmodule
