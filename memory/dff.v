module dff(out, in, clk);
	output reg out;
	input in;
	input clk;	

	always @(negedge clk)
		out <= in;
	
endmodule
