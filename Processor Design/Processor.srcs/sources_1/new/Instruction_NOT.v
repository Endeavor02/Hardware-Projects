module Instruction_NOT(AC, CLK);
input CLK;
input wire AC;
/*
always @ (posedge CLK) begin
AC <= ~AC;
end
*/
endmodule
//This was not used as the function is simple enough to be carried out in the main program. It would be more confusing to do it here.