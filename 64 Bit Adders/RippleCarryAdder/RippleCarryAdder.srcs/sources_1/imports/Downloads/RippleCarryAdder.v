`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2020 02:11:53 PM
// Design Name: 
// Module Name: RippleCarryAdder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: this may help! http://yue-guo.com/project/design/adders/
// 
//////////////////////////////////////////////////////////////////////////////////


module RippleCarryAdder(x, y, C, S);
input [63:0]x,y;
output [63:0]S;
output C;
wire [63:0]carry;


fullAdder_ FA1(S[0],carry[0],x[0],y[0],0);
fullAdder_ FA2(S[1],carry[1],x[1],y[1],carry[0]);
fullAdder_ FA3(S[2],carry[2],x[2],y[2],carry[1]);
fullAdder_ FA4(S[3],carry[3],x[3],y[3],carry[2]);
fullAdder_ FA5(S[4],carry[4],x[4],y[4],carry[3]);
fullAdder_ FA6(S[5],carry[5],x[5],y[5],carry[4]);
fullAdder_ FA7(S[6],carry[6],x[6],y[6],carry[5]);
fullAdder_ FA8(S[7],carry[7],x[7],y[7],carry[6]);
fullAdder_ FA9(S[8],carry[8],x[8],y[8],carry[7]);
fullAdder_ FA10(S[9],carry[9],x[9],y[9],carry[8]);
fullAdder_ FA11(S[10],carry[10],x[10],y[10],carry[9]);
fullAdder_ FA12(S[11],carry[11],x[11],y[11],carry[10]);
fullAdder_ FA13(S[12],carry[12],x[12],y[12],carry[11]);
fullAdder_ FA14(S[13],carry[13],x[13],y[13],carry[12]);
fullAdder_ FA15(S[14],carry[14],x[14],y[14],carry[13]);
fullAdder_ FA16(S[15],carry[15],x[15],y[15],carry[14]);
fullAdder_ FA17(S[16],carry[16],x[16],y[16],carry[15]);
fullAdder_ FA18(S[17],carry[17],x[17],y[17],carry[16]);
fullAdder_ FA19(S[18],carry[18],x[18],y[18],carry[17]);
fullAdder_ FA20(S[19],carry[19],x[19],y[19],carry[18]);
fullAdder_ FA21(S[20],carry[20],x[20],y[20],carry[19]);
fullAdder_ FA22(S[21],carry[21],x[21],y[21],carry[20]);
fullAdder_ FA23(S[22],carry[22],x[022],y[22],carry[21]);
fullAdder_ FA24(S[23],carry[23],x[023],y[23],carry[22]);
fullAdder_ FA25(S[24],carry[24],x[024],y[24],carry[23]);
fullAdder_ FA26(S[25],carry[25],x[025],y[25],carry[24]);
fullAdder_ FA27(S[26],carry[26],x[026],y[26],carry[25]);
fullAdder_ FA28(S[27],carry[27],x[27],y[27],carry[26]);
fullAdder_ FA29(S[28],carry[28],x[28],y[28],carry[27]);
fullAdder_ FA30(S[29],carry[29],x[29],y[29],carry[28]);
fullAdder_ FA31(S[30],carry[30],x[30],y[30],carry[29]);
fullAdder_ FA32(S[31],carry[31],x[31],y[31],carry[30]);
fullAdder_ FA33(S[32],carry[32],x[32],y[32],carry[31]);
fullAdder_ FA34(S[33],carry[33],x[33],y[33],carry[32]);
fullAdder_ FA35(S[34],carry[34],x[34],y[34],carry[33]);
fullAdder_ FA36(S[35],carry[35],x[35],y[35],carry[34]);
fullAdder_ FA37(S[36],carry[36],x[36],y[36],carry[35]);
fullAdder_ FA38(S[37],carry[37],x[037],y[37],carry[36]);
fullAdder_ FA39(S[38],carry[38],x[038],y[38],carry[37]);
fullAdder_ FA40(S[39],carry[39],x[039],y[39],carry[38]);
fullAdder_ FA41(S[40],carry[40],x[040],y[40],carry[39]);
fullAdder_ FA42(S[41],carry[41],x[041],y[41],carry[40]);
fullAdder_ FA43(S[42],carry[42],x[42],y[42],carry[41]);
fullAdder_ FA44(S[43],carry[43],x[043],y[43],carry[42]);
fullAdder_ FA45(S[44],carry[44],x[044],y[44],carry[43]);
fullAdder_ FA46(S[45],carry[45],x[045],y[45],carry[44]);
fullAdder_ FA47(S[46],carry[46],x[046],y[46],carry[45]);
fullAdder_ FA48(S[47],carry[47],x[047],y[47],carry[46]);
fullAdder_ FA49(S[48],carry[48],x[048],y[48],carry[47]);
fullAdder_ FA50(S[49],carry[49],x[049],y[049],carry[48]);
fullAdder_ FA51(S[50],carry[50],x[050],y[050],carry[49]);
fullAdder_ FA52(S[51],carry[51],x[51],y[51],carry[50]);
fullAdder_ FA53(S[52],carry[52],x[52],y[52],carry[51]);
fullAdder_ FA54(S[53],carry[53],x[53],y[53],carry[52]);
fullAdder_ FA55(S[54],carry[54],x[54],y[54],carry[53]);
fullAdder_ FA56(S[55],carry[55],x[55],y[55],carry[54]);
fullAdder_ FA57(S[56],carry[56],x[56],y[056],carry[55]);
fullAdder_ FA58(S[57],carry[57],x[57],y[57],carry[56]);
fullAdder_ FA59(S[58],carry[58],x[58],y[58],carry[57]);
fullAdder_ FA60(S[59],carry[59],x[59],y[59],carry[58]);
fullAdder_ FA61(S[60],carry[60],x[60],y[60],carry[59]);
fullAdder_ FA62(S[61],carry[61],x[61],y[61],carry[60]);
fullAdder_ FA63(S[62],carry[62],x[62],y[62],carry[61]);
fullAdder_ FA64(S[63],C,x[63],y[63],carry[62]);
endmodule
