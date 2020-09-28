module Processor(CLK, reset, IR, MD, AC, PC, MA);
input CLK, reset;
output reg [15:0]IR, MD, AC;
output reg [11:0]PC, MA;



//############################
// Each clock cycle, execute commands.
//############################
always @ (posedge CLK) begin

//If 


end
endmodule