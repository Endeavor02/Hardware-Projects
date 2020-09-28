`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2020 11:55:19 PM
// Design Name: 
// Module Name: SixtyFourBit
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


module SixtyFourBit(x,y,c,s);
output [63:0]s;
input c;
input [63:0]x,y;
wire [30:0]carry;
//Since we're using 2-bit look ahead we need 32.
TwoBitLookAhead C1(x[0],x[1],y[0],y[1],0,carry[0],s[0],s[1]);
TwoBitLookAhead C2(x[2],x[3],y[2],y[3],carry[0],carry[1],s[2],s[3]);
TwoBitLookAhead C3(x[4],x[5],y[4],y[5],carry[1],carry[2],s[4],s[5]);
TwoBitLookAhead C4(x[6],x[7],y[6],y[7],carry[2],carry[3],s[6],s[7]);
TwoBitLookAhead C5(x[8],x[9],y[8],y[9],carry[3],carry[4],s[8],s[9]);
TwoBitLookAhead C6(x[10],x[11],y[10],y[11],carry[4],carry[5],s[10],s[11]);
TwoBitLookAhead C7(x[12],x[13],y[12],y[13],carry[5],carry[6],s[12],s[13]);
TwoBitLookAhead C8(x[14],x[15],y[14],y[15],carry[6],carry[7],s[14],s[15]);
TwoBitLookAhead C9(x[16],x[17],y[16],y[17],carry[7],carry[8],s[16],s[17]);
TwoBitLookAhead C10(x[18],x[19],y[18],y[19],carry[8],carry[9],s[18],s[19]);
TwoBitLookAhead C11(x[20],x[21],y[20],y[21],carry[9],carry[10],s[20],s[21]);
TwoBitLookAhead C12(x[22],x[23],y[22],y[23],carry[10],carry[11],s[22],s[23]);
TwoBitLookAhead C13(x[24],x[25],y[24],y[25],carry[11],carry[12],s[24],s[25]);
TwoBitLookAhead C14(x[26],x[27],y[26],y[27],carry[12],carry[13],s[26],s[27]);
TwoBitLookAhead C15(x[28],x[29],y[28],y[29],carry[13],carry[14],s[28],s[29]);
TwoBitLookAhead C16(x[30],x[31],y[30],y[31],carry[14],carry[15],s[30],s[31]);
TwoBitLookAhead C17(x[32],x[33],y[32],y[33],carry[15],carry[16],s[32],s[33]);
TwoBitLookAhead C18(x[34],x[35],y[34],y[35],carry[16],carry[17],s[34],s[35]);
TwoBitLookAhead C19(x[36],x[37],y[36],y[37],carry[17],carry[18],s[36],s[37]);
TwoBitLookAhead C20(x[38],x[39],y[38],y[39],carry[18],carry[19],s[38],s[39]);
TwoBitLookAhead C21(x[40],x[41],y[40],y[41],carry[19],carry[20],s[40],s[41]);
TwoBitLookAhead C22(x[42],x[43],y[42],y[43],carry[20],carry[21],s[42],s[43]);
TwoBitLookAhead C23(x[44],x[45],y[44],y[45],carry[21],carry[22],s[44],s[45]);
TwoBitLookAhead C24(x[46],x[47],y[46],y[47],carry[22],carry[23],s[46],s[47]);
TwoBitLookAhead C25(x[48],x[49],y[48],y[49],carry[23],carry[24],s[48],s[49]);
TwoBitLookAhead C26(x[50],x[51],y[50],y[51],carry[24],carry[25],s[50],s[51]);
TwoBitLookAhead C27(x[52],x[53],y[52],y[53],carry[25],carry[26],s[52],s[53]);
TwoBitLookAhead C28(x[54],x[55],y[54],y[55],carry[26],carry[27],s[54],s[55]);
TwoBitLookAhead C29(x[56],x[57],y[56],y[57],carry[27],carry[28],s[56],s[57]);
TwoBitLookAhead C30(x[58],x[59],y[58],y[59],carry[28],carry[29],s[58],s[59]);
TwoBitLookAhead C31(x[60],x[61],y[60],y[61],carry[29],carry[30],s[60],s[61]);
TwoBitLookAhead C32(x[62],x[63],y[62],y[63],carry[30],c,s[62],s[63]);
endmodule
