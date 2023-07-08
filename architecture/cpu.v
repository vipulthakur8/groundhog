module cpu(outM, addressM, writeM, pc, instruction, inM, reset);
	input [15:0] instruction;
	input [15:0] inM; 
	input reset; 

	output [15:0]outM;
	output [15:0]addressM;
	output writeM;
	output [15:0]pc;

	always @* begin
		if (reset) begin
		end
	end 
	
	
endmodule
