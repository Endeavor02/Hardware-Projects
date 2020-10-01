module Processor(CLK, reset, IR, MD, AC, PC, MA, MEM_BUS_READ, MEM_BUS_WRITE);
input CLK, reset;
output reg [15:0]IR, MD, AC;
output reg [11:0]PC, MA;
input wire MEM_BUS_READ;
output wire MEM_BUS_WRITE;



//############################
// Each clock cycle, execute commands.
//############################
always @ (posedge CLK) begin

//If 


end
endmodule