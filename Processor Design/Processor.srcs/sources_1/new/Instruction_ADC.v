module Instruction_ADC(x,y, s);
input wire [11:0]x,y;
wire [11:0]c;
output wire [11:0]s;
fullAdder_ FA1(s[0],c[0],x[0],y[0],0);
fullAdder_ FA2(s[1],c[1],x[1],y[1],c[0]);
fullAdder_ FA3(s[2],c[2],x[2],y[2],c[1]);
fullAdder_ FA4(s[3],c[3],x[3],y[3],c[2]);
fullAdder_ FA5(s[4],c[4],x[4],y[4],c[3]);
fullAdder_ FA6(s[5],c[5],x[5],y[5],c[4]);
fullAdder_ FA7(s[6],c[6],x[6],y[6],c[5]);
fullAdder_ FA8(s[7],c[7],x[7],y[7],c[6]);
fullAdder_ FA9(s[8],c[8],x[8],y[8],c[7]);
fullAdder_ FA10(s[9],c[9],x[9],y[9],c[8]);
fullAdder_ FA11(s[10],c[10],x[10],y[10],c[9]);
fullAdder_ FA12(s[11],c[11],x[11],y[11],c[10]);
endmodule