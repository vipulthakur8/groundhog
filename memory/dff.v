module dff(out, in, clk);
	output reg out;
	input in;
	input clk;	

	always @(posedge clk)
		out <= in;
	
endmodule
